		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv t0, a0
		sd t0, %0
		call getint
		mv t0, a0
		sd t0, %1
		ld t0, %0
		ld t1, %1
		div t0, t0, t1
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
