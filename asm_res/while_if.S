		.text
		.align 1
		.globl get_one
		.type get_one, @function
get_one:
		addi sp, sp, -80
		sd ra, 64(sp)
.L_get_one_entry:
		li t0, 1
		sd t0, 0(sp)
		j .L_get_one_exit
.L_get_one_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 80
		ret
		.size get_one, .-get_one
		.align 1
		.globl deepWhileBr
		.type deepWhileBr, @function
deepWhileBr:
		addi sp, sp, -112
		sd ra, 88(sp)
.L_deepWhileBr_entry:
		ld t0, 104(sp)
		ld t1, 96(sp)
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_deepWhileBr_12
.L_deepWhileBr_12:
		ld t0, 16(sp)
		li t1, 75
		slt t0, t0, t1
		bnez t0, .L_deepWhileBr_16
		j .L_deepWhileBr_19
.L_deepWhileBr_16:
		li t0, 42
		sd t0, 8(sp)
		j .L_deepWhileBr_23
.L_deepWhileBr_19:
		ld t0, 16(sp)
		sd t0, 24(sp)
		j .L_deepWhileBr_exit
.L_deepWhileBr_23:
		ld t0, 16(sp)
		li t1, 100
		slt t0, t0, t1
		bnez t0, .L_deepWhileBr_27
		j .L_deepWhileBr_33
.L_deepWhileBr_27:
		ld t0, 16(sp)
		ld t1, 8(sp)
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_deepWhileBr_35
.L_deepWhileBr_33:
		j .L_deepWhileBr_12
.L_deepWhileBr_35:
		ld t0, 16(sp)
		li t1, 99
		slt t0, t1, t0
		bnez t0, .L_deepWhileBr_39
		j .L_deepWhileBr_44
.L_deepWhileBr_39:
		ld t0, 8(sp)
		li t1, 2
		mul t0, t0, t1
		sd t0, 0(sp)
		j .L_deepWhileBr_46
.L_deepWhileBr_44:
		j .L_deepWhileBr_33
.L_deepWhileBr_46:
		li t0, 0
		mv a0, t0
		sd t0, -8(sp)
		call get_one
		mv t0, a0
		li t1, 1
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_deepWhileBr_50
		j .L_deepWhileBr_55
.L_deepWhileBr_50:
		ld t0, 0(sp)
		li t1, 2
		mul t0, t0, t1
		sd t0, 16(sp)
		j .L_deepWhileBr_55
.L_deepWhileBr_55:
		j .L_deepWhileBr_44
.L_deepWhileBr_exit:
		ld t0, 24(sp)
		mv a0, t0
		ld ra, 88(sp)
		addi sp, sp, 112
		ret
		.size deepWhileBr, .-deepWhileBr
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -80
		sd ra, 72(sp)
.L_main_entry:
		li t0, 2
		sd t0, 0(sp)
		ld t0, 0(sp)
		ld t1, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		mv a1, t1
		sd t1, -16(sp)
		call deepWhileBr
		mv t0, a0
		sd t0, 0(sp)
		ld t0, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 8(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 8(sp)
		mv a0, t0
		ld ra, 72(sp)
		addi sp, sp, 80
		ret
		.size main, .-main
