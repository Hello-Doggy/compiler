		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 10
		sd %t, %0
		ld %2, %0
		li %t, 3
		rem %3, %2, %t
		mv a0, %3
		sd %3, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %7, %ret.addr
		mv a0, %7
		ld ra, %ra
		ret
		.size main, .-main
