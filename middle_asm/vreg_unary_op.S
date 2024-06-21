		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 10
		sd %t, %0
		j .L_main_3
.L_main_3:
		ld %4, %0
		li %t, 0
		sub %5, %t, %4
		seqz %5, %5
		li %t, 0
		sub %6, %t, %5
		seqz %6, %6
		bnez %6, .L_main_8
		j .L_main_14
.L_main_8:
		li %t, 0
		li %t, 1
		sub %9, %t, %t
		li %t, 0
		sub %10, %t, %9
		li %t, 0
		sub %11, %t, %10
		sd %11, %0
		j .L_main_17
.L_main_14:
		li %t, 0
		sd %t, %0
		j .L_main_17
.L_main_17:
		ld %18, %0
		mv a0, %18
		sd %18, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %22, %ret.addr
		mv a0, %22
		ld ra, %ra
		ret
		.size main, .-main
