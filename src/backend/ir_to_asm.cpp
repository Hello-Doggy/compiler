#include "backend/ir_to_asm.h"

int ir_to_asm(string ir_file, string asm_file) {
        ifstream inputFile(ir_file);
    if (!inputFile) {
        cerr << "Unable to open file input.acc" << endl;
        return -1;
    }

    vector<string> irLines;
    string line;
    while (getline(inputFile, line)) {
        irLines.push_back(line);
    }
    inputFile.close();

    map<string, map<string, int>> offsetTable;
    vector<string> vRegAsmLines = macro_expansion(irLines, offsetTable);
    vector<string> pRegAsmLines = reg_alloca(vRegAsmLines);
    vector<string> finalAsmLines = stack_alloca(pRegAsmLines, offsetTable);

    ofstream outputVReg("middle_asm/vreg_" + asm_file);
    if (!outputVReg) {
        cerr << "Unable to open file for writing" << endl;
        return -1;
    }

    for (const auto& asmLine : vRegAsmLines) {
        outputVReg << asmLine << endl;
    }

    outputVReg.close();

    ofstream outputPReg("middle_asm/preg_" + asm_file);
    if (!outputPReg) {
        cerr << "Unable to open file for writing" << endl;
        return -1;
    }

    for (const auto& asmLine : pRegAsmLines) {
        outputPReg << asmLine << endl;
    }

    outputPReg.close();

    ofstream outputAsm("asm_res/" + asm_file);
    if (!outputAsm) {
        cerr << "Unable to open file for writing" << endl;
        return -1;
    }

    for (const auto& asmLine : finalAsmLines) {
        outputAsm << asmLine << endl;
    }

    outputAsm.close();

    return 0;
}