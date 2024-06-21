		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv %2, a0
		sd %2, %0
		call getint
		mv %4, a0
		sd %4, %1
		ld %6, %0
		ld %7, %1
		add %8, %6, %7
		mv a0, %8
		sd %8, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %12, %ret.addr
		mv a0, %12
		ld ra, %ra
		ret
		.size main, .-main
