#pragma once
#include <cstdint>
#include <type_traits>
#include <string>
#include <vector>

using namespace std;

enum MyType
{
    INT,
    VOID,
    ALL,
    FAIL // to show that Table.lookup didn't find var or func,
         // or type doesn't match
};

struct varType
{

    // actually only need INT, but can be 'VOID' to
    // represent that the function is void
    MyType type;

    // 0: scalar, >0: array
    int dimension;

    vector<int> dimension_size;

    varType(MyType type, int d) : type(type), dimension(d) {}
    varType(MyType type, int d, std::vector<int> d_size) : type(type), dimension(d_size.size()), dimension_size(d_size) {}
    varType(const varType& other): type(other.type), dimension(other.dimension), dimension_size(other.dimension_size) {}
    varType() {}
};

struct FuncType
{
    // input types
    std::vector<varType> inputType;

    // return type, here varType.type can be 'VOID'
    MyType returnType;
    FuncType(std::vector<varType> iT, MyType rT) : inputType(iT), returnType(rT) {}
    FuncType(const FuncType& other): inputType(other.inputType), returnType(other.returnType) {}
    FuncType(){}
};

enum OpType
{
#define OpcodeDefine(x, s) x,
#include "common/common.def"
};

enum NodeType
{
#define TreeNodeDefine(x) x,
#include "common/common.def"
};

struct Node;
using NodePtr = Node *;
struct TreeExpr;
using ExprPtr = TreeExpr *;
struct TreeType;

struct Node
{
    NodeType node_type;
    Node(NodeType type) : node_type(type) {}
    template <typename T>
    bool is()
    {
        return node_type == std::remove_pointer_t<T>::this_type;
    }
    template <typename T>
    T as()
    {
        if (is<T>())
            return static_cast<T>(this);
        return nullptr;
    }
    template <typename T>
    T as_unchecked() { return static_cast<T>(this); }
};

struct TreeExpr : public Node
{
    TreeExpr(NodeType type) : Node(type) {}
};

// Stmt node
struct TreeAssignStmt : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_AssignExpr;
    ExprPtr lhs, rhs;
    TreeAssignStmt(ExprPtr lhs, ExprPtr rhs) : TreeExpr(this_type), lhs(lhs), rhs(rhs) {}
};

struct TreeIfStmt : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_IfElseExpr;
    ExprPtr conditionExp, trueStmtNode, elseStmtNode;
    TreeIfStmt(ExprPtr a, ExprPtr b, ExprPtr c) : TreeExpr(this_type), conditionExp(a), trueStmtNode(b), elseStmtNode(c) {}
};

struct TreeWhileStmt : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_LoopExpr;
    ExprPtr conditionExp, trueStmtNode;
    TreeWhileStmt(ExprPtr a, ExprPtr b) : TreeExpr(this_type), conditionExp(a), trueStmtNode(b) {}
};

struct TreeWhileControlStmt : public TreeExpr
{
    constexpr static NodeType this_type = ND_LoopControlExpr;
    string controlType;
    TreeWhileControlStmt(string controlType) : TreeExpr(this_type), controlType(controlType) {}
};

struct TreeReturnStmt : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_ReturnExpr;
    ExprPtr returnExp;
    TreeReturnStmt(ExprPtr returnExp) : TreeExpr(this_type), returnExp(returnExp) {}
};

// Exp node
struct TreeUnaryExpr : public TreeExpr
{
    constexpr static NodeType this_type = ND_UnaryExpr;
    OpType op;
    ExprPtr operand;
    TreeUnaryExpr(OpType op, ExprPtr operand)
        : TreeExpr(this_type), op(op), operand(operand)
    {
    }
};

struct TreeBinaryExpr : public TreeExpr
{
    constexpr static NodeType this_type = ND_BinaryExpr;
    OpType op;
    ExprPtr lhs, rhs;
    TreeBinaryExpr(OpType op, ExprPtr lhs, ExprPtr rhs)
        : TreeExpr(this_type), op(op), lhs(lhs), rhs(rhs)
    {
    }
};

struct TreeFuncExpr : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_FuncExpr;
    std::string name;
    std::vector<ExprPtr> varNames;

    void append(ExprPtr x)
    {
        varNames.push_back(x);
    }
    TreeFuncExpr(string name, vector<ExprPtr> varNames) : TreeExpr(this_type), name(name), varNames(varNames) {}
};

struct TreeVarExpr : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_ValExpr;
    std::string name;
    std::vector<ExprPtr> index; // eg. a[1][2] means pushing 1 and 2 to vector
    TreeVarExpr(std::string name, std::vector<ExprPtr> index) : TreeExpr(this_type), name(name), index(index) {}
};

struct TreeNumber : public TreeExpr
{
    constexpr static NodeType this_type = ND_IntegerLiteral;
    int64_t value;
    void inc() { value++; }
    TreeNumber(int64_t value) : TreeExpr(this_type), value(value) {}
};

// other node
struct TreeRoot : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_Root;
    std::vector<ExprPtr> rootItems;
    void append(ExprPtr x)
    {
        rootItems.insert(rootItems.begin(), x);
    }
    TreeRoot(std::vector<ExprPtr> rootItems) : TreeExpr(this_type), rootItems(rootItems) {}
};

struct TreeVarDecl : public TreeExpr
{
    MyType type;
    std::vector<ExprPtr> assignStmtNodes;
    constexpr static NodeType this_type = ND_VarDecl;
    TreeVarDecl(MyType type, vector<ExprPtr> assignStmtNodes) : TreeExpr(this_type), type(type), assignStmtNodes(assignStmtNodes) {}
    void append(ExprPtr x)
    {
        assignStmtNodes.push_back(x);
    }
};

struct TreeBlock : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_Block;
    std::vector<ExprPtr> blockItems;
    TreeBlock(std::vector<ExprPtr> blockItems) : TreeExpr(this_type), blockItems(blockItems) {}
    void append(ExprPtr x)
    {
        blockItems.push_back(x);
    }
};

struct TreeFuncDef : public TreeExpr
{
    // TODO: complete your code here;
    constexpr static NodeType this_type = ND_FuncDef;
    std::string funcName;
    std::vector<std::pair<std::string, varType>> input_params;
    FuncType type;
    ExprPtr blockNode;
    TreeFuncDef(std::string funcName, std::vector<std::pair<std::string, varType>> input_params, MyType t, ExprPtr blockNode) : TreeExpr(this_type), funcName(funcName), input_params(input_params), blockNode(blockNode), type(std::vector<varType>{}, t)
    {
        for (int i = 0; i < input_params.size(); ++i)
        {
            type.inputType.push_back(input_params[i].second);
        }
    }
};

// A possible helper function dipatch based on the type of `TreeExpr`
void print_expr(ExprPtr exp, std::string prefix = "", std::string ident = "",int dep=1);