		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %1, 2
		li %t, 8
		mul %1, %1, %t
		li %t, ~%0
		add %1, %1, %t
		li %t, 4
		sd %t, %1
		li %3, 2
		li %t, 8
		mul %3, %3, %t
		li %t, ~%0
		add %3, %3, %t
		ld %4, %3
		mv a0, %4
		sd %4, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %8, %ret.addr
		mv a0, %8
		ld ra, %ra
		ret
		.size main, .-main
