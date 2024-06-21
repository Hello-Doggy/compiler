#pragma once
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <regex>
#include <map>

#include "backend/macro_expansion.h"
#include "backend/reg_alloca.h"
#include "backend/stack_alloca.h"

using namespace std;

int ir_to_asm(string ir_file, string asm_file);