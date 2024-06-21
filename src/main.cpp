#include "ast/ast.h"
#include "sa/sa.h"
#include "ir/ir.h"
#include "backend/ir_to_asm.h"
#include <iostream>
#include <fmt/core.h>
#include <cstdlib>

extern int yyparse();

TreeRoot *root;
extern FILE *yyin;
// extern int semantic_analysis(TreeRoot *root);
string getFileName(const string& path);

int main(int argc, char **argv)
{
    yyin = fopen(argv[1], "r");
    string name = getFileName(argv[1]);
    name = name.substr(0, name.length()-3);

    fmt::print("Start parsing!\n");
    root = new TreeRoot(std::vector<ExprPtr>{});
    int result = yyparse();
    if (result != 0) return result;
    fmt::print("\nParse finish!\n");
    print_expr(root, "","",1);
    result = semantic_analysis(root);
    if (result != 0) return result;
    cout << "passing semantic analysis" << endl;
    ir_translate(root, "ir_res/" + name + ".acc");
    // ir_translate(root, argv[2], true);  // debug version
    ir_to_asm("ir_res/" + name + ".acc", name + ".S");
    string command = "clang -nostdlib -nostdinc -static -target riscv64-unknown-linux-elf -march=rv64im -mabi=lp64 -fuse-ld=lld asm_res/" +
                    name + ".S -o exe/" + name + " -L ../sysy-runtime-lib-master/build/ -lsysy";
    system(command.c_str());
    return result;
}

string getFileName(const string& path) {
    size_t pos = path.find_last_of("/\\");
    if (pos == std::string::npos) {
        return path; 
    }
    return path.substr(pos + 1);
}
