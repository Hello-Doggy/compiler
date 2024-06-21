		.text
		.align 1
		.globl doubleWhile
		.type doubleWhile, @function
doubleWhile:
		sd ra, %ra
.L_doubleWhile_entry:
		li %t, 5
		sd %t, %0
		li %t, 7
		sd %t, %2
		j .L_doubleWhile_5
.L_doubleWhile_5:
		ld %6, %0
		li %t, 100
		slt %7, %6, %t
		bnez %7, .L_doubleWhile_9
		j .L_doubleWhile_14
.L_doubleWhile_9:
		ld %10, %0
		li %t, 30
		add %11, %10, %t
		sd %11, %0
		j .L_doubleWhile_18
.L_doubleWhile_14:
		ld %15, %2
		sd %15, %ret.addr
		j .L_doubleWhile_exit
.L_doubleWhile_18:
		ld %19, %2
		li %t, 100
		slt %20, %19, %t
		bnez %20, .L_doubleWhile_22
		j .L_doubleWhile_27
.L_doubleWhile_22:
		ld %23, %2
		li %t, 6
		add %24, %23, %t
		sd %24, %2
		j .L_doubleWhile_18
.L_doubleWhile_27:
		ld %28, %2
		li %t, 100
		sub %29, %28, %t
		sd %29, %2
		j .L_doubleWhile_5
.L_doubleWhile_exit:
		ld %32, %ret.addr
		mv a0, %32
		ld ra, %ra
		ret
		.size doubleWhile, .-doubleWhile
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call doubleWhile
		mv %0, a0
		mv a0, %0
		sd %0, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %4, %ret.addr
		mv a0, %4
		ld ra, %ra
		ret
		.size main, .-main
