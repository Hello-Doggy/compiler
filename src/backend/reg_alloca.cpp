#include "backend/reg_alloca.h"
#include "backend/macro_expansion.h"
using namespace std;

vector<string> reg_alloca(vector<string>& asmLines) {
    vector<string> pRegAsmLines;
    // vector<string> neededLines;
    string tRegMap[7] = {""};
    // preprocess(asmLines, neededLines);
    int display_line = 0;
    for (string asmLine : asmLines) {
        // cout << "-----------------------------------" << endl;
        // cout << "input vReg ASM code:" << endl;
        // cout << asmLine << endl;
        process_line_reg(asmLine, tRegMap, pRegAsmLines);
        // cout << "output pReg ASM code:" << endl;
        // while(display_line < (int)pRegAsmLines.size()) {
        //     cout << pRegAsmLines[display_line++] << endl;
        // }
        // print_t_reg_map(tRegMap);
    }
    return pRegAsmLines;
}

void process_line_reg(string asmLine, string tRegMap[], vector<string>& pRegAsmLines) {
    if (asmLine[0] != '\t') {
        pRegAsmLines.push_back(asmLine);
        return;
    }
    vector<string> tokens = split(asmLine, ' ');
    if (tokens[0][2] == '.') {
        pRegAsmLines.push_back(asmLine);
        return;
    }

    string inst = tokens[0].substr(2);
    if (inst == "ld" || inst == "li" || inst == "la") {
        if (inst == "ld") {
                if (tokens[1] == "ra") {
                    pRegAsmLines.push_back(asmLine);
                    return;
                }
                int res = get_reg_t(tRegMap, tokens[2]);
                if (res <= -1 || res >= 7) {
                    int reg = get_and_free_reg_t(tRegMap, "$" + tokens[2]);
                    if (reg > -1 && reg < 7) {
                        tokens[2] = "$t" + to_string(reg);
                    }
                } else {
                    int reg = get_and_free_reg_t(tRegMap, tokens[2]);
                    tokens[2] = "~t" + to_string(reg);
                }
        }
        int reg = alloca_reg_t(tRegMap, tokens[1]);
        if (reg > -1 && reg < 7) {
            tokens[1] = "t" + to_string(reg);
        }
        pRegAsmLines.push_back(tokens[0] + " " + tokens[1] + ", " + tokens[2]);
        return;

    } else if (inst == "sd" || inst == "bnez") {
        if (inst == "sd") {
            if (tokens[1] == "ra") {
                pRegAsmLines.push_back(asmLine);
                return;
            }
            if (tokens[2] == "0(%t)") {
                int reg = get_and_free_reg_t(tRegMap, "%t");
                if (reg > -1 && reg < 7) {
                    tokens[2] = "0(t" + to_string(reg) + ")";
                }
            } else {
                int res = get_reg_t(tRegMap, tokens[2]);
                if (res <= -1 || res >= 7) {
                    int reg = get_and_free_reg_t(tRegMap, "$" + tokens[2]);
                    if (reg > -1 && reg < 7) {
                        tokens[2] = "$t" + to_string(reg);
                    }
                } else {
                    int reg = get_and_free_reg_t(tRegMap, tokens[2]);
                    tokens[2] = "~t" + to_string(reg);
                }
            }
        }
        int reg = get_and_free_reg_t(tRegMap, tokens[1]);
        if (reg > -1 && reg < 7) {
            tokens[1] = "t" + to_string(reg);
        }
        pRegAsmLines.push_back(tokens[0] + " " + tokens[1] + ", " + tokens[2]);
        return;

    } else if (inst == "add" || inst == "sub" || inst == "mul" || inst == "div" ||
               inst == "rem" || inst == "xori" || inst == "or" || inst == "xor" ||
               inst == "slt") {
        int reg = get_and_free_reg_t(tRegMap, tokens[2]);
        if (reg > -1 && reg < 7)        
            tokens[2] = "t" + to_string(reg);
        reg = get_and_free_reg_t(tRegMap, tokens[3]);
        if (reg > -1 && reg < 7)        
            tokens[3] = "t" + to_string(reg);
        reg = alloca_reg_t(tRegMap, tokens[1]);
        if (reg > -1 && reg < 7)        
            tokens[1] = "t" + to_string(reg);
        pRegAsmLines.push_back(tokens[0] + " " + tokens[1] + ", " + tokens[2] + ", " + tokens[3]);
        return;

    } else if (inst == "seqz" || inst == "snez") {
        int reg = get_and_free_reg_t(tRegMap, tokens[2]);
        if (reg > -1 && reg < 7)        
            tokens[2] = "t" + to_string(reg);
        reg = alloca_reg_t(tRegMap, tokens[1]);
        if (reg > -1 && reg < 7)        
            tokens[1] = "t" + to_string(reg);
        pRegAsmLines.push_back(tokens[0] + " " + tokens[1] + ", " + tokens[2]);
        return;

    } else if (inst == "call") {
        for (int i = 0; i < 7; i++) {
            if (tRegMap[i] != "") {
                pRegAsmLines.push_back("\t\tsd t" + to_string(i) + ", %t" + to_string(i));
            }
        }
        pRegAsmLines.push_back(asmLine);
        for (int i = 0; i < 7; i++) {
            if (tRegMap[i] != "") {
                pRegAsmLines.push_back("\t\tld t" + to_string(i) + ", %t" + to_string(i));
            }
        }
        return;


    } else if (inst == "j") {
        pRegAsmLines.push_back(asmLine);
        return;

    } else if (inst == "mv") {
        int reg;
        if (tokens[1][0] == 'a')
            reg = get_reg_t(tRegMap, tokens[2]);
        else
            reg = get_and_free_reg_t(tRegMap, tokens[2]);
        if (reg > -1 && reg < 7)        
            tokens[2] = "t" + to_string(reg);
        reg = alloca_reg_t(tRegMap, tokens[1]);
        if (reg > -1 && reg < 7)        
            tokens[1] = "t" + to_string(reg);
        pRegAsmLines.push_back(tokens[0] + " " + tokens[1] + ", " + tokens[2]);
        return;
    } else if (inst == "ret") {
        print_t_reg_map(tRegMap);
        tRegMap[0] = "";
        pRegAsmLines.push_back(asmLine);
    } else {
        pRegAsmLines.push_back(asmLine);
        return;
    }

}

int alloca_reg_t(string tRegMap[], string v_reg) {
    if (v_reg[0] == 'a')
        return 7;
    for(int i = 0; i < 7; i++) {
        if (tRegMap[i] == "") {
            tRegMap[i] = v_reg;
            return i;
        }
    }
    return -1;
}

int get_and_free_reg_t(string tRegMap[], string v_reg) {
    if (v_reg[0] == 'a')
        return 7;
    for(int i = 0; i < 7; i++) {
        if (tRegMap[i] == v_reg) {
            tRegMap[i] = "";
            return i;
        }
    }
    return -1;
}

int get_reg_t(string tRegMap[], string v_reg) {
    if (v_reg[0] == 'a')
        return 7;
    for(int i = 0; i < 7; i++) {
        if (tRegMap[i] == v_reg) {
            return i;
        }
    }
    return -1;
}

void print_t_reg_map(string tRegMap[]) {
    cout << "t_reg_map: " << endl;
    for (int i = 0; i < 7; i++) {
        cout << "reg" << i << ": " << tRegMap[i] << " ";
    }
    cout << endl;
}