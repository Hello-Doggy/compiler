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

vector<string> stack_alloca(vector<string>& pRegAsmLines, map<string, map<string, int>>& offsetTable);
void process_line_sp(string pRegAsmLine, map<string, map<string, int>>& offsetTable, 
                    vector<string>& asmLines, map<string, int>& staticFrameSize, string& now_func);
map<string, int> get_static_frame_size(map<string, map<string, int>>& offsetTable);
void printStaticFrameSize(map<string, int>& staticFrameSize);