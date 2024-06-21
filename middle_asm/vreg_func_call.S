		.text
		.align 1
		.globl f
		.type f, @function
f:
		sd ra, %ra
.L_f_entry:
		li %t, 10
		sd %t, %ret.addr
		j .L_f_exit
.L_f_exit:
		ld %2, %ret.addr
		mv a0, %2
		ld ra, %ra
		ret
		.size f, .-f
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call f
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
