#include "backend/stack_alloca.h"

using namespace std;

vector<string> stack_alloca(vector<string>& asmLines, map<string, map<string, int>>& offsetTable) {
    vector<string> finalAsmLines;
    map<string, int> staticFrameSize = get_static_frame_size(offsetTable);
    string now_func = "";
    int display_line = 0;
    for (string pRegAsmLine : asmLines) {
        cout << "-----------------------------------" << endl;
        cout << "input pReg ASM code:" << endl;
        cout << pRegAsmLine << endl;
        process_line_sp(pRegAsmLine, offsetTable, finalAsmLines, staticFrameSize, now_func);
        cout << "output final ASM code:" << endl;
        while(display_line < (int)finalAsmLines.size()) {
            cout << finalAsmLines[display_line++] << endl;
        }
        printTable(offsetTable);
        printStaticFrameSize(staticFrameSize);
    }
    
    return finalAsmLines;
}

void process_line_sp(string pRegAsmLine, map<string, map<string, int>>& offsetTable, vector<string>& asmLines, map<string, int>& staticFrameSize,
                    string& now_func) {

    if (pRegAsmLine[0] == '.') {
        asmLines.push_back(pRegAsmLine);
        return;
    }

    if (pRegAsmLine[0] != '\t') {
        if (offsetTable.count(pRegAsmLine.substr(0, pRegAsmLine.length()-1))) {
            now_func = pRegAsmLine.substr(0, pRegAsmLine.length()-1);
            asmLines.push_back(pRegAsmLine);
            asmLines.push_back("\t\taddi sp, sp, -" + to_string(staticFrameSize[now_func]));
            return;
        } else {
            asmLines.push_back(pRegAsmLine);
            return;
        }
    }

    vector<string> tokens = split(pRegAsmLine, ' ');
    if (tokens[0][2] == '.') {
        asmLines.push_back(pRegAsmLine);
        return;
    }

    string inst = tokens[0].substr(2);
    if (inst == "lw" || inst == "ld" || inst == "sw" || inst == "sd" || inst == "la") {
        if (tokens[2][0] == '%') {
            int offset = offsetTable[now_func][tokens[2]];
            tokens[2] = to_string(offset) + "(sp)";
        } else if (tokens[2][0] == '~') {
            tokens[2] = tokens[2].substr(1);
            asmLines.push_back("\t\tadd " + tokens[2] + ", " + tokens[2] + ", sp");
            tokens[2] = "0(" + tokens[2] + ")";
        } else if (tokens[2][0] == '@') {
            tokens[2] = tokens[2].substr(1);
        } else if (tokens[2][0] == '$') {
            tokens[2] = "0(" + tokens[2].substr(1) + ")";
        }
        asmLines.push_back(tokens[0] + " " + tokens[1] + ", " + tokens[2]);

    } else if (inst == "li" && tokens[2][0] == '~') {
        if (tokens[2][1] == '%') 
            tokens[2] = to_string(offsetTable[now_func][tokens[2].substr(1)]);
        else
            tokens[2] = to_string(staticFrameSize[now_func]);
        asmLines.push_back(tokens[0] + " " + tokens[1] + ", " + tokens[2]);

    } else if (inst == "ret" ) {
        asmLines.push_back("\t\taddi sp, sp, " + to_string(staticFrameSize[now_func]));
        asmLines.push_back(pRegAsmLine);

    } else {
        asmLines.push_back(pRegAsmLine);
    }

    return;
}

map<string, int> get_static_frame_size(map<string, map<string, int>>& offsetTable) {
    map<string, int> staticFrameSize;
    for (auto itr1 = offsetTable.begin(); itr1 != offsetTable.end(); itr1++) {
        int min = 0;
        for (auto itr2 = itr1->second.begin(); itr2 !=  itr1->second.end(); itr2++) {
            if (itr2->second < min) {
                min = itr2->second;
            }
        }
        for (auto itr2 = itr1->second.begin(); itr2 !=  itr1->second.end(); itr2++) {
            itr2->second -= min;
        }
        staticFrameSize[itr1->first] = -min;
    }
    return staticFrameSize;
}

void printStaticFrameSize(map<string, int>& staticFrameSize) {
    cout << "static frame size: " << endl;
    for (const auto& p : staticFrameSize)
        cout << p.first << ":" << p.second << ", ";
    cout << endl;
}
