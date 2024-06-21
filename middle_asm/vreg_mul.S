		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 10
		sd %t, %0
		li %t, 5
		sd %t, %1
		ld %4, %0
		ld %5, %1
		mul %6, %4, %5
		mv a0, %6
		sd %6, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %10, %ret.addr
		mv a0, %10
		ld ra, %ra
		ret
		.size main, .-main
