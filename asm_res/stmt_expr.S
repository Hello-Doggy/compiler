		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -96
		sd ra, 88(sp)
.L_main_entry:
		li t0, 10
		sd t0, 8(sp)
		li t0, 0
		sd t0, 0(sp)
		li t0, 1
		sd t0, 16(sp)
		j .L_main_7
.L_main_7:
		ld t0, 0(sp)
		ld t1, 8(sp)
		li t2, 1
		sub t1, t1, t2
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_main_13
		j .L_main_24
.L_main_13:
		ld t0, 0(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 0(sp)
		ld t0, 16(sp)
		li t1, 1
		add t0, t0, t1
		ld t1, 16(sp)
		ld t2, 16(sp)
		add t1, t1, t2
		sd t1, 16(sp)
		j .L_main_7
.L_main_24:
		ld t1, 16(sp)
		mv a0, t1
		sd t1, -8(sp)
		sd t0, 80(sp)
		call putint
		ld t0, 80(sp)
		li t1, 0
		sd t1, 24(sp)
		j .L_main_exit
.L_main_exit:
		ld t1, 24(sp)
		mv a0, t1
		ld ra, 88(sp)
		addi sp, sp, 96
		ret
		.size main, .-main
