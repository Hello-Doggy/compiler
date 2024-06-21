		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 10
		sd %t, %0
		li %t, 4
		sd %t, %1
		li %t, 2
		sd %t, %2
		li %t, 2
		sd %t, %3
		ld %9, %2
		ld %10, %0
		ld %11, %1
		mul %12, %10, %11
		add %13, %9, %12
		ld %14, %3
		sub %15, %13, %14
		sd %15, %8
		ld %17, %8
		mv a0, %17
		sd %17, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %21, %ret.addr
		mv a0, %21
		ld ra, %ra
		ret
		.size main, .-main
