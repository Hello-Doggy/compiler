		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 2
		sd t0, %1
		li t0, 0
		li t1, 1
		sub t0, t0, t1
		sd t0, %3
		li t0, 1
		sd t0, %0
		j .L_main_8
.L_main_8:
		ld t0, %0
		ld t1, %1
		add t0, t0, t1
		bnez t0, .L_main_13
		j .L_main_16
.L_main_13:
		li t0, 3
		sd t0, %0
		j .L_main_16
.L_main_16:
		j .L_main_18
.L_main_18:
		ld t0, %3
		li t1, 0
		sub t0, t1, t0
		bnez t0, .L_main_22
		j .L_main_25
.L_main_22:
		li t0, 4
		sd t0, %1
		j .L_main_25
.L_main_25:
		ld t0, %0
		ld t1, %1
		add t0, t0, t1
		ld t1, %3
		add t0, t0, t1
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
