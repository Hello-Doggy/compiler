		.text
		.align 1
		.globl f
		.type f, @function
f:
		sd ra, %ra
.L_f_entry:
		li t0, 10
		sd t0, %ret.addr
		j .L_f_exit
.L_f_exit:
		ld t0, %ret.addr
		mv a0, t0
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
		mv t0, a0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
