		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -120
		sd ra, 112(sp)
.L_main_entry:
		li t0, 0
		sd t0, 40(sp)
		li t0, 1
		sd t0, 32(sp)
		li t0, 0
		sd t0, 24(sp)
		li t0, 1
		sd t0, 16(sp)
		li t0, 2
		sd t0, 8(sp)
		li t0, 4
		sd t0, 0(sp)
		j .L_main_13
.L_main_13:
		ld t0, 32(sp)
		ld t1, 24(sp)
		mul t0, t0, t1
		ld t1, 16(sp)
		div t0, t0, t1
		ld t1, 0(sp)
		ld t2, 8(sp)
		add t1, t1, t2
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_main_24
		j .L_main_37
.L_main_24:
		ld t0, 32(sp)
		ld t1, 32(sp)
		ld t2, 24(sp)
		add t1, t1, t2
		mul t0, t0, t1
		ld t1, 16(sp)
		add t0, t0, t1
		ld t1, 8(sp)
		ld t2, 0(sp)
		add t1, t1, t2
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_main_50
		j .L_main_37
.L_main_37:
		ld t0, 32(sp)
		ld t1, 24(sp)
		ld t2, 16(sp)
		mul t1, t1, t2
		sub t0, t0, t1
		ld t1, 8(sp)
		ld t2, 32(sp)
		ld t3, 16(sp)
		div t2, t2, t3
		sub t1, t1, t2
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_main_50
		j .L_main_53
.L_main_50:
		li t0, 1
		sd t0, 40(sp)
		j .L_main_53
.L_main_53:
		ld t0, 40(sp)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 48(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 48(sp)
		mv a0, t0
		ld ra, 112(sp)
		addi sp, sp, 120
		ret
		.size main, .-main
