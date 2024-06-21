		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 0
		sd t0, %0
		li t0, 1
		sd t0, %2
		li t0, 0
		sd t0, %4
		li t0, 1
		sd t0, %6
		li t0, 2
		sd t0, %8
		li t0, 4
		sd t0, %10
		j .L_main_13
.L_main_13:
		ld t0, %2
		ld t1, %4
		mul t0, t0, t1
		ld t1, %6
		div t0, t0, t1
		ld t1, %10
		ld t2, %8
		add t1, t1, t2
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_main_24
		j .L_main_37
.L_main_24:
		ld t0, %2
		ld t1, %2
		ld t2, %4
		add t1, t1, t2
		mul t0, t0, t1
		ld t1, %6
		add t0, t0, t1
		ld t1, %8
		ld t2, %10
		add t1, t1, t2
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_main_50
		j .L_main_37
.L_main_37:
		ld t0, %2
		ld t1, %4
		ld t2, %6
		mul t1, t1, t2
		sub t0, t0, t1
		ld t1, %8
		ld t2, %2
		ld t3, %6
		div t2, t2, t3
		sub t1, t1, t2
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_main_50
		j .L_main_53
.L_main_50:
		li t0, 1
		sd t0, %0
		j .L_main_53
.L_main_53:
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
