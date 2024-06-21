#pragma once
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <regex>
#include <set>
#include <map>

using namespace std;

struct FuncInfo {
    vector<string> arg;
    vector<bool> arg_is_ptr;
    bool if_ret;
    FuncInfo(){}
    FuncInfo(vector<string> arg, vector<bool> arg_is_ptr, bool if_ret): 
            arg(arg), arg_is_ptr(arg_is_ptr), if_ret(if_ret){}
};


vector<string> split(const string& str, char delimiter);
vector<string> get_func_Args(const string& str);
vector<bool> get_arg_ptr_vec(const string& irLine);
void printTable(const map<string, map<string, int>>& offsetTable);
int getArgIdx(vector<string>& funcArgs, string arg);
void getIdxBounds(vector<string>& idxs, vector<int>& bounds, vector<string>& tokens);
string extractFunctionName(const string& input);
vector<string> macro_expansion(vector<string>& irLines, map<string, map<string, int>>& offsetTable);
void processIRLine(const vector<string>::iterator irLineIter, vector<string>& asmLines, map<string, map<string, int>>& offsetTable,
                    map<string, FuncInfo>& func_infos, int& count, int& sp_offset, string& now_func);
bool get_ret_type(string irLine);
map<string, FuncInfo> get_func_map(vector<string> irLines);
void print_func_infos(map<string, FuncInfo>& func_infos);
bool will_be_used(vector<string>::iterator irLineIter, string vreg);
