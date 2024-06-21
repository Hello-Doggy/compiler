		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 10
		sd %t, %0
		li %t, 30
		sd %t, %1
		ld %4, %0
		li %t, 0
		li %t, 5
		sub %5, %t, %t
		sub %6, %4, %5
		ld %7, %1
		add %8, %6, %7
		li %t, 0
		li %t, 5
		sub %9, %t, %t
		add %10, %8, %9
		sd %10, %0
		ld %12, %0
		mv a0, %12
		sd %12, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %16, %ret.addr
		mv a0, %16
		ld ra, %ra
		ret
		.size main, .-main
