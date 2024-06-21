		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 2
		sd %t, %1
		li %t, 0
		li %t, 1
		sub %4, %t, %t
		sd %4, %3
		li %t, 1
		sd %t, %0
		j .L_main_8
.L_main_8:
		ld %9, %0
		ld %10, %1
		add %11, %9, %10
		bnez %11, .L_main_13
		j .L_main_16
.L_main_13:
		li %t, 3
		sd %t, %0
		j .L_main_16
.L_main_16:
		j .L_main_18
.L_main_18:
		ld %19, %3
		li %t, 0
		sub %20, %t, %19
		bnez %20, .L_main_22
		j .L_main_25
.L_main_22:
		li %t, 4
		sd %t, %1
		j .L_main_25
.L_main_25:
		ld %26, %0
		ld %27, %1
		add %28, %26, %27
		ld %29, %3
		add %30, %28, %29
		mv a0, %30
		sd %30, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %34, %ret.addr
		mv a0, %34
		ld ra, %ra
		ret
		.size main, .-main
