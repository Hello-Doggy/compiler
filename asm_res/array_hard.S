		.text
		.align 1
		.globl initW
		.type initW, @function
initW:
		addi sp, sp, -80
		sd ra, 64(sp)
.L_initW_entry:
		ld t0, 72(sp)
		li t1, 80
		add t0, t0, t1
		sd t0, 72(sp)
		li t0, 0
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 0
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 1
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 1
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 2
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 3
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 5
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 4
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 6
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 5
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 7
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 0
		sd t0, 0(sp)
		j .L_initW_exit
.L_initW_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 80
		ret
		.size initW, .-initW
		.align 1
		.globl initV
		.type initV, @function
initV:
		addi sp, sp, -80
		sd ra, 64(sp)
.L_initV_entry:
		ld t0, 72(sp)
		li t1, 80
		add t0, t0, t1
		sd t0, 72(sp)
		li t0, 0
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 0
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 1
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 1
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 6
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 3
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 18
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 4
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 22
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 5
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 28
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 0
		sd t0, 0(sp)
		j .L_initV_exit
.L_initV_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 80
		ret
		.size initV, .-initV
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -776
		sd ra, 768(sp)
.L_main_entry:
		li t0, 656
		mv a0, t0
		sd t0, -8(sp)
		call initW
		li t0, 608
		mv a0, t0
		sd t0, -8(sp)
		call initV
		li t0, 0
		sd t0, 24(sp)
		j .L_main_11
.L_main_11:
		ld t0, 24(sp)
		li t1, 6
		slt t0, t0, t1
		bnez t0, .L_main_15
		j .L_main_18
.L_main_15:
		li t0, 0
		sd t0, 16(sp)
		j .L_main_21
.L_main_18:
		li t0, 1
		sd t0, 8(sp)
		j .L_main_39
.L_main_21:
		ld t0, 16(sp)
		li t1, 12
		slt t0, t0, t1
		bnez t0, .L_main_25
		j .L_main_34
.L_main_25:
		ld t0, 24(sp)
		ld t1, 16(sp)
		mv t0, t0
		li t2, 12
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 32
		add t0, t0, t1
		li t1, 0
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 16(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_main_21
.L_main_34:
		ld t0, 24(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 24(sp)
		j .L_main_11
.L_main_39:
		ld t0, 8(sp)
		li t1, 6
		slt t0, t0, t1
		bnez t0, .L_main_43
		j .L_main_46
.L_main_43:
		li t0, 1
		sd t0, 0(sp)
		j .L_main_52
.L_main_46:
		li t0, 5
		li t1, 12
		mul t0, t0, t1
		li t1, 11
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 32
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 704(sp)
		j .L_main_exit
.L_main_52:
		ld t0, 0(sp)
		li t1, 12
		slt t0, t0, t1
		bnez t0, .L_main_56
		j .L_main_58
.L_main_56:
		j .L_main_63
.L_main_58:
		ld t0, 8(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_main_39
.L_main_63:
		ld t0, 0(sp)
		ld t1, 8(sp)
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, 656
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		slt t0, t0, t1
		bnez t0, .L_main_70
		j .L_main_81
.L_main_70:
		ld t0, 8(sp)
		ld t1, 0(sp)
		mv t0, t0
		li t2, 12
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 32
		add t0, t0, t1
		ld t1, 8(sp)
		li t2, 1
		sub t1, t1, t2
		ld t2, 0(sp)
		mv t1, t1
		li t3, 12
		mul t1, t1, t3
		mv t2, t2
		add t1, t1, t2
		li t2, 8
		mul t1, t1, t2
		li t2, 32
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_main_83
.L_main_81:
		j .L_main_88
.L_main_83:
		ld t0, 0(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 0(sp)
		j .L_main_52
.L_main_88:
		ld t0, 8(sp)
		li t1, 1
		sub t0, t0, t1
		ld t1, 0(sp)
		mv t0, t0
		li t2, 12
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 32
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		ld t1, 8(sp)
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, 608
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		ld t2, 8(sp)
		li t3, 1
		sub t2, t2, t3
		ld t3, 0(sp)
		ld t4, 8(sp)
		mv t4, t4
		li t5, 8
		mul t4, t4, t5
		li t5, 656
		add t4, t4, t5
		add t4, t4, sp
		ld t4, 0(t4)
		sub t3, t3, t4
		mv t2, t2
		li t4, 12
		mul t2, t2, t4
		mv t3, t3
		add t2, t2, t3
		li t3, 8
		mul t2, t2, t3
		li t3, 32
		add t2, t2, t3
		add t2, t2, sp
		ld t2, 0(t2)
		add t1, t1, t2
		slt t0, t1, t0
		bnez t0, .L_main_109
		j .L_main_120
.L_main_109:
		ld t0, 8(sp)
		ld t1, 0(sp)
		mv t0, t0
		li t2, 12
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 32
		add t0, t0, t1
		ld t1, 8(sp)
		li t2, 1
		sub t1, t1, t2
		ld t2, 0(sp)
		mv t1, t1
		li t3, 12
		mul t1, t1, t3
		mv t2, t2
		add t1, t1, t2
		li t2, 8
		mul t1, t1, t2
		li t2, 32
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_main_139
.L_main_120:
		ld t0, 8(sp)
		ld t1, 0(sp)
		mv t0, t0
		li t2, 12
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 32
		add t0, t0, t1
		ld t1, 8(sp)
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, 608
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		ld t2, 8(sp)
		li t3, 1
		sub t2, t2, t3
		ld t3, 0(sp)
		ld t4, 8(sp)
		mv t4, t4
		li t5, 8
		mul t4, t4, t5
		li t5, 656
		add t4, t4, t5
		add t4, t4, sp
		ld t4, 0(t4)
		sub t3, t3, t4
		mv t2, t2
		li t4, 12
		mul t2, t2, t4
		mv t3, t3
		add t2, t2, t3
		li t3, 8
		mul t2, t2, t3
		li t3, 32
		add t2, t2, t3
		add t2, t2, sp
		ld t2, 0(t2)
		add t1, t1, t2
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_main_139
.L_main_139:
		j .L_main_83
.L_main_exit:
		ld t0, 704(sp)
		mv a0, t0
		ld ra, 768(sp)
		addi sp, sp, 776
		ret
		.size main, .-main
