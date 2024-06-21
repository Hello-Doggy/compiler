# README

#### Get Source

```bash
git clone https://github.com/Hello-Doggy/compiler.git
```


#### Build

```bash
cmake -B build          # create & generate build configs under `build/` directory
cmake --build build     # build target in `build/` directory
```

#### Test

```bash
build/complier test/filename.sy
```

* 会自动生成中间代码`filename.acc`，位于`ir_res/`
* 会自动生成汇编代码`filename.S`，位于`asm_res/`
* 会自动生成可执行文件`filename`，位于`exe/`
* 输入下面指令运行可执行文件进行测试

```bash
qemu-riscv64-static exe/filename
```



#### 1 指令选择

`src/backend/macro_expansion`

* 整个lab4统一用sp实现，没有用到fp，所有变量都保存在栈中，也就不需要callee-saved寄存器

* 实现了最简单的 "macro expansion" 风格的指令选择

* 遍历`filename.acc`，生成`vreg_filename.S`，即对应的虚拟寄存器版本

* 通过两张表分别记录函数的信息和在栈中的”偏移信息“

  * 在这一步的生成结果中并不会在函数开头加上`addi sp, sp, -framesize`类似的指令，因为再遍历ir指令的过程中还没法确认函数需要的栈空间的大小，所以”偏移信息“记录的都是负值，每有一个局部变量就-4并存入表，对应指南中的下面这段话

    > 一种可能的解决的方法是，一个抽象的结构代替栈上的地址，例如给需要存在在栈上所有的“物体”编号，这样就可以使用“物体”编号加上单个“物体”内偏移量的二元组编码，等到指令选择结束后再统一把这个编码翻译成底层的 `sp/fp` 加上偏移量的方式

* 对于函数之间的传参，我统一用栈实现
  * 为了确保能正确调用运行时库，所以尽管我统一用栈实现，但我还是会把参数传给`a0,a1,..(根据参数数量)`
  * 我会把需要传的参数通过caller存放在callee函数栈帧的开头，因为这样caller可以通过`-8(sp),-16(sp)`这样的方式实现而不容易出错。
  * 因为原先的ir代码会自动load传入参数中的标量并store到栈，lab4中对于callee来说就不再需要翻译开头的store了，因为caller已经帮我们store到栈上了
* 对于指针（数组）的传输，我统一用传地址实现
  * 对于callee来说，输入的参数其实都是标量，但我可以通过函数信息表来确认是地址还是值
  * 我们在caller中传输给callee的地址是相对于caller的sp的偏移，但因为callee的sp会在开头减去callee的sp，所以我们要在callee中把传入的地址重新加上callee的sp，使得offset(callee_sp)指向caller中正确的位置
  * 对于特殊情况，比如全局变量数组作为参数传给callee，我们需要先将全局变量减去caller的sp，统一成局部变量的地址表示传给callee
* 对于函数调用的返回值
  * 我们一方面需要判断函数是否有返回值，另一方面需要检查返回值是否在后续有用到
  * 如果都满足，则需要从`a0`mv出来，反之则不需要
  * “检查返回值是否在后续有用到”是为了防止有的函数有返回值但不赋值，比如对于一个有返回值的函数，这两种调用都有可能，`a = check();`和`check();`。这在ir代码中并不会区分，但是如果无脑的mv到一个临时寄存器中，可能会在寄存器分配中一直占用某个物理寄存器而导致寄存器不够。

* 其他细节太多了，说不过来了(x



#### 2 寄存器分配

`src/backend/reg_alloca`

* 因为我们是用栈保存局部变量，所以我们只需要考虑`t0-t6`的临时寄存器的分配

* 我们会和指令选择遍历ir代码一样，遍历指令选择生成的`vreg_filename.S`生成`preg_filename.S`
* 我们会用一个数组来记录对应的`t0,t1,...`否用于某个虚拟寄存器
* 我们会在遍历的过程中根据指令的类型和参数来判断某个物理寄存器是否用完或是否需要，依此来更新我们的寄存器数组，并决定释放或分配某个物理寄存器
* 除此以外，我们还会借助这个寄存器数组来判断ld的地址是否是`offset`产生的计算结果，还是某个局部或全局变量的地址
* 同样，我们同样需要根据这个寄存器数组来判断是否需要在函数调用前保存某些寄存器到栈上（caller-saved)



#### 3 栈帧管理

`src/backend/stack_alloca`

* 大部分的栈帧操作其实在前两步就顺便完成了，这一步是用来将我们之前记录的偏移量重新“转化”一下
* 我们对原先的偏移表进行处理，计算每个函数最终需要的栈帧大小`frame_size`，并将负的偏移值转换成正的相对于`sp-frame_size`后的sp的正偏移值，在函数的开头和结尾分别加上`addi sp, sp, -frame_size`, `addi sp, sp, frame_size`
* 我们遍历寄存器分配生成的`preg_filename.S`，将其中地址相关的信息替换成最终的偏移量或者绝对地址，生成`filename.S`




