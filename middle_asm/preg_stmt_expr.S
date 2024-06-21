		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 10
		sd t0, %1
		li t0, 0
		sd t0, %3
		li t0, 1
		sd t0, %0
		j .L_main_7
.L_main_7:
		ld t0, %3
		ld t1, %1
		li t2, 1
		sub t1, t1, t2
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_main_13
		j .L_main_24
.L_main_13:
		ld t0, %3
		li t1, 1
		add t0, t0, t1
		sd t0, %3
		ld t0, %0
		li t1, 1
		add t0, t0, t1
		ld t1, %0
		ld t2, %0
		add t1, t1, t2
		sd t1, %0
		j .L_main_7
.L_main_24:
		ld t1, %0
		mv a0, t1
		sd t1, -8(sp)
		sd t0, %t0
		call putint
		ld t0, %t0
		li t1, 0
		sd t1, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t1, %ret.addr
		mv a0, t1
		ld ra, %ra
		ret
		.size main, .-main
