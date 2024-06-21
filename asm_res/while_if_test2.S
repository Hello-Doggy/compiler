		.text
		.align 1
		.globl ifWhile
		.type ifWhile, @function
ifWhile:
		addi sp, sp, -88
		sd ra, 80(sp)
.L_ifWhile_entry:
		li t0, 0
		sd t0, 8(sp)
		li t0, 3
		sd t0, 0(sp)
		j .L_ifWhile_5
.L_ifWhile_5:
		ld t0, 8(sp)
		li t1, 5
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_ifWhile_9
		j .L_ifWhile_11
.L_ifWhile_9:
		j .L_ifWhile_17
.L_ifWhile_11:
		j .L_ifWhile_31
.L_ifWhile_13:
		ld t0, 0(sp)
		sd t0, 16(sp)
		j .L_ifWhile_exit
.L_ifWhile_17:
		ld t0, 0(sp)
		li t1, 2
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_ifWhile_21
		j .L_ifWhile_26
.L_ifWhile_21:
		ld t0, 0(sp)
		li t1, 2
		add t0, t0, t1
		sd t0, 0(sp)
		j .L_ifWhile_17
.L_ifWhile_26:
		ld t0, 0(sp)
		li t1, 25
		add t0, t0, t1
		sd t0, 0(sp)
		j .L_ifWhile_13
.L_ifWhile_31:
		ld t0, 8(sp)
		li t1, 5
		slt t0, t0, t1
		bnez t0, .L_ifWhile_35
		j .L_ifWhile_43
.L_ifWhile_35:
		ld t0, 0(sp)
		li t1, 2
		mul t0, t0, t1
		sd t0, 0(sp)
		ld t0, 8(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_ifWhile_31
.L_ifWhile_43:
		j .L_ifWhile_13
.L_ifWhile_exit:
		ld t0, 16(sp)
		mv a0, t0
		ld ra, 80(sp)
		addi sp, sp, 88
		ret
		.size ifWhile, .-ifWhile
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -72
		sd ra, 64(sp)
.L_main_entry:
		call ifWhile
		mv t0, a0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 0(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 72
		ret
		.size main, .-main
