		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 10
		sd t0, %0
		li t0, 30
		sd t0, %1
		ld t0, %0
		li t1, 0
		li t2, 5
		sub t1, t1, t2
		sub t0, t0, t1
		ld t1, %1
		add t0, t0, t1
		li t1, 0
		li t2, 5
		sub t1, t1, t2
		add t0, t0, t1
		sd t0, %0
		ld t0, %0
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
