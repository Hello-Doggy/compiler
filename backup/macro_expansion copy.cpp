#include "backend/macro_expansion.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <regex>
#include <set>
#include <algorithm>

using namespace std;

bool starts_with(const std::string& str, const std::string& prefix) {
    return str.rfind(prefix, 0) == 0;
}

vector<string> macro_expansion(vector<string>& irLines, map<string, map<string, int>>& offsetTable) {

    vector<string> vRegAsmLines;
    vector<string> funcArgs;
    vector<bool> isPtr;
    // set<string> loadedVar;
    int sp_offset = 0;
    int count = 0;
    map<string, FuncInfo> func_infos = get_func_map(irLines);
    // print_ret_map(if_fn_ret);
    
    int display_line = 0;
    string now_func = "";
    for (vector<string>::iterator irLineIter =  irLines.begin(); irLineIter != irLines.end(); ++irLineIter) {
        // cout << "-----------------------------------" << endl;
        // cout << "input IR code:" << endl;
        // cout << irLine << endl;
        processIRLine(irLineIter, vRegAsmLines, offsetTable, func_infos, count, 
                        sp_offset, now_func);
        // cout << "output vReg ASM code:" << endl;
        // while(display_line < (int)vRegAsmLines.size()) {
        //     cout << vRegAsmLines[display_line++] << endl;
        // }
        // printTable(offsetTable);
    }
    vRegAsmLines.push_back("\t\t.size " + now_func + ", .-" + now_func);

    return vRegAsmLines;
}

// Function to process a line of IR code and convert it to RISC-V assembly
void processIRLine(const vector<string>::iterator irLineIter, vector<string>& asmLines, map<string, map<string, int>>& offsetTable, 
                    map<string, FuncInfo>& func_infos, int& count, int& sp_offset, string& now_func) {
    string irLine = *irLineIter;
    vector<string> tokens = split(irLine, ' ');

    if (tokens.empty()) return;

    if (tokens[0][0] == '@') {
        string var = tokens[0].substr(1);
        int num = stoi(tokens[4]);
        asmLines.push_back("\t\t.global " + var);
        asmLines.push_back("\t\t.bss");
        asmLines.push_back(num > 1? "\t\t.align 3": "\t\t.align 2");
        asmLines.push_back("\t\t.type " + var + ", @object");
        asmLines.push_back("\t\t.size " + var + ", " + to_string(4 * num));
        asmLines.push_back(var + ":");
        asmLines.push_back("\t\t.zero " + to_string(4 * num));

    } else if (tokens[0] == "fn") {
        if (irLine[irLine.length() - 1] == ';') {
            return;
        } else {
            // print_func_infos(func_infos);
            if (now_func == "")
                asmLines.push_back("\t\t.text");
            else
                asmLines.push_back("\t\t.size " + now_func + ", .-" + now_func);
            string func_name = extractFunctionName(irLine);
            now_func = func_name;
            asmLines.push_back("\t\t.align 1");
            asmLines.push_back("\t\t.globl " + func_name);
            asmLines.push_back("\t\t.type " + func_name + ", @function");
            asmLines.push_back(func_name + ":");
            asmLines.push_back("\t\tsd ra, %ra");
            offsetTable[now_func] = map<string, int>();
            sp_offset = 0;
            for (int i = 0; i < func_infos[now_func].arg.size(); i++) {
                sp_offset -= 4;
            }
            sp_offset -= 8;
            offsetTable[now_func]["%ra"] = sp_offset;
            for (int i = 0; i < 7; i++) {
                sp_offset -= 8;
                offsetTable[now_func]["%t" + to_string(i)] = sp_offset;
            }
            count = 0;
        }

    } else if (tokens[0][0] == '%') {
        asmLines.push_back(".L_" + now_func + "_" + irLine.substr(1));

    } else if (tokens[0] == "let") {

        if (tokens[3] == "alloca") {
            if (count < func_infos[now_func].arg.size()) {
                offsetTable[now_func][tokens[1]] = sp_offset;
                if (func_infos[now_func].arg_is_ptr[count]) {
                    asmLines.push_back("\t\tlw %t, " + tokens[1]);
                    asmLines.push_back("\t\tli %tt, ~fs");
                    asmLines.push_back("\t\tadd %ttt, %t, %tt");
                    asmLines.push_back("\t\tsw %ttt, " + tokens[1]);
                }
                offsetTable[now_func][tokens[1]] = -4 * (count + 1);
                count++;
            } else {
                int alloc_num = stoi(tokens[5]);
                string alloc_type = tokens[4];
                sp_offset -= 4 * alloc_num;
                offsetTable[now_func][tokens[1]] = sp_offset;
            }

        } else if (tokens[3] == "store") {
            string src = tokens[4];
            string dst = tokens[5];
            if (src[0] == '#') {
                // do nothing, caller has already store for callee
            } else if (src[0] == '%') {
                if (dst[0] == '@') {
                    asmLines.push_back("\t\tla %t, " + dst);
                    asmLines.push_back("\t\tsw " + src + ", 0(%t)");
                } else {
                    asmLines.push_back("\t\tsw " + src + ", " + dst); 
                }
            } else {
                if (dst[0] == '@') {
                    asmLines.push_back("\t\tla %t, " + dst);
                    asmLines.push_back("\t\tli %tt, " + src);
                    asmLines.push_back("\t\tsw %tt, 0(%t)");
                } else {
                    asmLines.push_back("\t\tli %t, " + src);
                    asmLines.push_back("\t\tsw %t, " + dst); 
                }
            }

            if (dst[0] == '@') {

            }

        } else if (tokens[3] == "load") {
            string dst = tokens[1];
            string src = tokens[4];
            asmLines.push_back("\t\tlw " + dst + ", " + src); 
            // loadedVar.insert(dst);s

        } else if (tokens[3] == "add" || tokens[3] == "sub" || tokens[3] == "mul" || tokens[3] == "div" || tokens[3] == "rem" ||
                   tokens[3] == "and" || tokens[3] == "or" || tokens[3] == "xor" || 
                   tokens[3] == "lt" || tokens[3] == "gt" || tokens[3] == "le" || tokens[3] == "ge" ||
                   tokens[3] == "eq" || tokens[3] == "ne") {
            string dst = tokens[1];
            string e1 = tokens[4];
            string e2 = tokens[5];
            if (e1[0] != '%' && e1[0] != '#') {
                asmLines.push_back("\t\tli %t, " + e1);
                e1 = "%t";
            } else if (e1[0] == '#'){
                // e1 = "a" + to_string(getArgIdx(funcArgs, e1.substr(1)));
            }

            if (e2[0] != '%' && e2[0] != '#') {
                asmLines.push_back("\t\tli %t, " + e2);
                e2 = "%t";
            } else if (e2[0] == '#') {
                // e2 = "a" + to_string(getArgIdx(funcArgs, e2.substr(1)));
            }

            if (tokens[3] == "add") {
                asmLines.push_back("\t\tadd " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "sub") {
                asmLines.push_back("\t\tsub " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "mul") {
                asmLines.push_back("\t\tmul " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "div") {
                asmLines.push_back("\t\tdiv " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "rem") {
                asmLines.push_back("\t\trem " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "and") {
                asmLines.push_back("\t\tand " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "or") {
                asmLines.push_back("\t\tor " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "xor") {
                asmLines.push_back("\t\txor " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "lt") {
                asmLines.push_back("\t\tslt " + dst + ", " + e1 + ", " + e2);
            } else if (tokens[3] == "gt") {
                asmLines.push_back("\t\tslt " + dst + ", " + e2 + ", " + e1);
            } else if (tokens[3] == "le") {
                asmLines.push_back("\t\tslt " + dst + ", " + e2 + ", " + e1);
                asmLines.push_back("\t\txori " + dst + ", " + dst + ", 1");
            } else if (tokens[3] == "ge") {
                asmLines.push_back("\t\tslt " + dst + ", " + e1 + ", " + e2);
                asmLines.push_back("\t\txori " + dst + ", " + dst + ", 1");
            } else if (tokens[3] == "eq") {
                asmLines.push_back("\t\tsub " + dst + ", " + e1 + ", " + e2);
                asmLines.push_back("\t\tseqz " + dst + ", " + dst);
            } else if (tokens[3] == "ne") {
                asmLines.push_back("\t\tsub " + dst + ", " + e1 + ", " + e2);
                asmLines.push_back("\t\tsnez " + dst + ", " + dst);
            }

            // if (e1[0] == '%')
            //     loadedVar.erase(e1);
            // if (e2[0] == '%')
            //     loadedVar.erase(e2);
            
            // sp_offset -= 4;
            // asmLines.push_back("\t\tsw " + dst + ", " + to_string(sp_offset) + "(sp)");
            // offsetTable.push_back(Object(dst, sp_offset));
         

        } else if (tokens[3] == "offset") {
            string dst = tokens[1];
            string src = tokens[5];
            vector<string> idxs;
            vector<int> bounds;
            getIdxBounds(idxs, bounds, tokens);


            if (idxs[0][0] == '%' || idxs[0][0] == '#') {
                asmLines.push_back("\t\tmv " + dst + ", " + idxs[0]);
            } else {
                asmLines.push_back("\t\tli " + dst + ", " + idxs[0]);
            }

            for (int i = 1; i < (int)idxs.size(); i++) {
                asmLines.push_back("\t\tli %b, " + to_string(bounds[i]));
                asmLines.push_back("\t\tmul " + dst + ", " + dst + ", %b");
                if (idxs[i][0] == '%' || idxs[i][0] == '#') {
                    asmLines.push_back("\t\tmv %t, " + idxs[i]);
                } else {
                    asmLines.push_back("\t\tli %t, " + idxs[i]);
                }
                asmLines.push_back("\t\tadd " + dst + ", " + dst + ", %t");
            }
            asmLines.push_back("\t\tli %t, 4");
            asmLines.push_back("\t\tmul " + dst + ", " + dst + ", %t");
            if (src[0] == '@') {
                asmLines.push_back("\t\tla %t, " + src);
                asmLines.push_back("\t\tadd $" + dst + ", " + dst + ", %t");

            // if it is array from caller
            } else if (offsetTable[now_func][src] > offsetTable[now_func]["%ra"]) {
                asmLines.push_back("\t\tlw %t, " + src);
                asmLines.push_back("\t\tadd " + dst + ", " + dst + ", %t");
            } else {
                asmLines.push_back("\t\tli %t, ~" + src);
                asmLines.push_back("\t\tadd " + dst + ", " + dst + ", %t");
            }

        } else if (tokens[3] == "call") {
            string dst = tokens[1];
            string func = tokens[4].substr(1);
            for (int i = 5; i < (int)tokens.size(); i++) {
                if (tokens[i][0] != '%') {
                    if (tokens[i][0] == '@') {
                        // if is array
                        if (func_infos[func].arg_is_ptr[i-5]) {
                            asmLines.push_back("\t\tla %t, " + tokens[i]);
                            asmLines.push_back("\t\tsub %t, %t, sp");
                            if (i-5 < 8) {
                                asmLines.push_back("\t\tmv a" + to_string(i-5) + ", %t");
                            }
                            asmLines.push_back("\t\tsw %t, -" + to_string(4 * (i- 4)) + "(sp)");  
                        } else {
                            if (i-5 < 8) {
                                asmLines.push_back("\t\tmv a" + to_string(i-5) + ", " + tokens[i]);
                            }
                            asmLines.push_back("\t\tsw " + tokens[i] + ", -" + to_string(4 * (i- 4)) + "(sp)");
                        }

                    } else {
                        asmLines.push_back("\t\tli %t, " + tokens[i]);
                        if (i-5 < 8) {
                            asmLines.push_back("\t\tmv a" + to_string(i-5) + ", %t");
                        }
                        asmLines.push_back("\t\tsw %t, -" + to_string(4 * (i- 4)) + "(sp)");                        
                    }

                // if it is an array
                } else if (func_infos[func].arg_is_ptr[i-5]) {
                    // if it has been calculated
                    if (!offsetTable[now_func].count(tokens[i])) {
                        if (i-5 < 8) {
                            asmLines.push_back("\t\tmv a" + to_string(i-5) + ", " + tokens[i]);
                        }
                        asmLines.push_back("\t\tsw " + tokens[i] + ", -" + to_string(4 * (i- 4)) + "(sp)");
                    
                    // if it is from caller 
                    } else if (offsetTable[now_func][tokens[i]] > offsetTable[now_func]["%ra"]) {
                        asmLines.push_back("\t\tlw %t, " + tokens[i]);
                        if (i-5 < 8) {
                            asmLines.push_back("\t\tmv a" + to_string(i-5) + ", %t");
                        }
                        asmLines.push_back("\t\tsw %t, -" + to_string(4 * (i- 4)) + "(sp)");
                    
                    // if it is from callee
                    } else {
                        asmLines.push_back("\t\tli %t, ~" + tokens[i]);
                        if (i-5 < 8) {
                            asmLines.push_back("\t\tmv a" + to_string(i-5) + ", %t");
                        }
                        asmLines.push_back("\t\tsw %t, -" + to_string(4 * (i- 4)) + "(sp)");
                    }

                } else {
                    if (i-5 < 8) {
                        asmLines.push_back("\t\tmv a" + to_string(i-5) + ", " + tokens[i]);
                    }
                    asmLines.push_back("\t\tsw " + tokens[i] + ", -" + to_string(4 * (i- 4)) + "(sp)");
                }
            }

            asmLines.push_back("\t\tcall " + func);    // Call function
            if (func_infos[func].if_ret && will_be_used(irLineIter, dst))
                asmLines.push_back("\t\tmv " + dst + ", a0");       // Move result to %t

        } 

    } else if (tokens[0] == "jmp") {
        string label = ".L_" + now_func + "_" + tokens[2].substr(1);
        asmLines.push_back("\t\tj " + label);  // Jump to label

    } else if (tokens[0] == "br") {
        string cond = tokens[1];
        string label1 = ".L_" + now_func + "_" + tokens[3].substr(1);
        string label2 = ".L_" + now_func + "_" + tokens[5].substr(1);

        asmLines.push_back("\t\tbnez " + cond + ", " + label1); 
        asmLines.push_back("\t\tj " + label2); 

    } else if (tokens[0] == "ret") {
        string src = tokens[1];
        if (src != "()") {
            asmLines.push_back("\t\tmv a0, " + src);   // Move return value to a0
        }
        asmLines.push_back("\t\tld ra, %ra");
        asmLines.push_back("\t\tret");             // Return
    }
}

// Function to split a string by a delimiter
vector<string> split(const string& str, char delimiter) {
    vector<string> tokens;
    string token;
    istringstream tokenStream(str);
    while (getline(tokenStream, token, delimiter)) {
        if (token != "") {
            if (token[token.length()-1] == ',')
                token = token.substr(0, token.length()-1);
            tokens.push_back(token);
        }
    }
    return tokens;
}


string extractFunctionName(const string& input) {
    regex functionRegex(R"(@([a-zA-Z_][a-zA-Z_0-9]*)\s*\()");
    smatch match;
    if (regex_search(input, match, functionRegex)) {
        return match[1].str();
    }
    return "";
}

vector<string> get_func_Args(const string& str) {
    std::vector<std::string> results;

    std::regex pattern(R"(#(\w+):\s*\w+\*?)");
    std::smatch match;

    std::string::const_iterator searchStart(str.cbegin());
    while (regex_search(searchStart, str.cend(), match, pattern)) {
        // match[1] contains the variable name (e.g., "a", "len")
        results.push_back(match[1].str());
        searchStart = match.suffix().first;
    }

    return results;
}

vector<bool> get_arg_ptr_vec(const string& irLine) {
    vector<bool> isPtrVec;
    int num = count(irLine.begin(), irLine.end(), '#');
    vector<string> tokens = split(irLine, ' ');
    for (int i = 0; i < num; i++) {
        if (tokens[2*(i+1)].length() == 3)
            isPtrVec.push_back(false);
        else
            isPtrVec.push_back(true);
    }
    return isPtrVec;
}

int getArgIdx(vector<string>& funcArgs, string arg) {
    for (int i = 0; i < (int)funcArgs.size(); i++) {
        if (arg == funcArgs[i])
            return i;
    }
    return -1;
}

void getIdxBounds(vector<string>& idxs, vector<int>& bounds, vector<string>& tokens) {
    int dimension = ((int)tokens.size() - 6) / 3;
    for (int i = 0; i < dimension; i++) {
        idxs.push_back(tokens[6+3*i].substr(1));
        if (tokens[8+3*i][0] == 'n')
            bounds.push_back(0);
        else
            bounds.push_back(stoi(tokens[8+3*i].substr(0, tokens[8+3*i].length() - 1)));
    }
}

void printTable(const map<string, map<string, int>>& offsetTable) {
    cout << "offset Table: " << endl;
    for (const auto& t: offsetTable) {
        cout << t.first << " | ";
        for (const auto& pair: t.second)
            cout << pair.first << ":" << pair.second << ", ";
        cout << endl;
    }
}


bool get_ret_type(string irLine) {
    vector<string> tokens = split(irLine, ' ');
    if (tokens[tokens.size() - 2] == "()" || tokens[tokens.size() - 1] == "();")
        return false;
    else
        return true;
}


map<string, FuncInfo> get_func_map(vector<string> irLines) {
    map<string, FuncInfo> func_map;
    for (string irLine: irLines) {
        if (irLine.substr(0, 2) == "fn") {
            func_map[extractFunctionName(irLine)] = FuncInfo(get_func_Args(irLine), get_arg_ptr_vec(irLine), get_ret_type(irLine));
        }   
    }
    return func_map;
}

void print_func_infos(map<string, FuncInfo>& func_infos) {
    cout << "******** func infos *********" << endl;
    for (auto pair: func_infos) {
        cout << pair.first << ": ";
        vector<bool> is_ptr = pair.second.arg_is_ptr;
        if (is_ptr.size() != 0) {
            for (int i = 0; i < is_ptr.size(); i++) {
                if (i != is_ptr.size()-1)
                    cout << (is_ptr[i]? "i32*, " : "i32, ");
                else
                    cout << (is_ptr[i]? "i32* -> " : "i32 -> ");
            }
        } else {
            cout << "() -> ";
        }
        if (pair.second.if_ret)
            cout << "i32" << endl;
        else
            cout << "()" << endl;
    }
    cout << "****************************" << endl;
}

bool will_be_used(vector<string>::iterator irLineIter, string vreg) {
    irLineIter++;
    string irLine = *irLineIter;
    while (irLine.substr(2, 3) != "ret") {
        auto res = irLine.find(vreg);
        if(res != string::npos) {
            int idx = (int)res;
            if (idx + vreg.length() == irLine.length() ||
                irLine[idx + vreg.length()] == ',' || 
                irLine[idx + vreg.length()] == ' ')
                return true;
        }
        irLineIter++;
        irLine = *irLineIter;
    } 
    return false;
}


