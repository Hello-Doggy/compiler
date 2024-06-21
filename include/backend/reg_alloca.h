#pragma once
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <regex>
#include <map>
#include "backend/macro_expansion.h"

using namespace std;

vector<string> reg_alloca(vector<string>& asmLines);
void process_line_reg(string vRegAsmLine, string tRegMap[], vector<string>& pRegAsmLines);
int alloca_reg_t(string tRegMap[], string v_reg);
int get_and_free_reg_t(string tRegMap[], string v_reg);
int get_reg_t(string tRegMap[], string v_reg);
void print_t_reg_map(string tRegMap[]);
