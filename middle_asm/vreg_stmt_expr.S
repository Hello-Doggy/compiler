		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 10
		sd %t, %1
		li %t, 0
		sd %t, %3
		li %t, 1
		sd %t, %0
		j .L_main_7
.L_main_7:
		ld %8, %3
		ld %9, %1
		li %t, 1
		sub %10, %9, %t
		slt %11, %10, %8
		xori %11, %11, 1
		bnez %11, .L_main_13
		j .L_main_24
.L_main_13:
		ld %14, %3
		li %t, 1
		add %15, %14, %t
		sd %15, %3
		ld %17, %0
		li %t, 1
		add %18, %17, %t
		ld %19, %0
		ld %20, %0
		add %21, %19, %20
		sd %21, %0
		j .L_main_7
.L_main_24:
		ld %25, %0
		mv a0, %25
		sd %25, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %29, %ret.addr
		mv a0, %29
		ld ra, %ra
		ret
		.size main, .-main
