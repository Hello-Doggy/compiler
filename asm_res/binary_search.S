		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -200
		sd ra, 192(sp)
.L_main_entry:
		call getint
		mv t0, a0
		sd t0, 120(sp)
		j .L_main_10
.L_main_10:
		ld t0, 120(sp)
		li t1, 10
		slt t0, t1, t0
		bnez t0, .L_main_14
		j .L_main_17
.L_main_14:
		li t0, 10
		sd t0, 120(sp)
		j .L_main_17
.L_main_17:
		li t0, 0
		sd t0, 24(sp)
		j .L_main_20
.L_main_20:
		ld t0, 24(sp)
		ld t1, 120(sp)
		slt t0, t0, t1
		bnez t0, .L_main_25
		j .L_main_34
.L_main_25:
		ld t0, 24(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 40
		add t0, t0, t1
		sd t0, 184(sp)
		call getint
		ld t0, 184(sp)
		mv t1, a0
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 24(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 24(sp)
		j .L_main_20
.L_main_34:
		call getint
		mv t0, a0
		sd t0, 32(sp)
		li t0, 0
		sd t0, 8(sp)
		ld t0, 120(sp)
		li t1, 1
		sub t0, t0, t1
		sd t0, 0(sp)
		j .L_main_42
.L_main_42:
		ld t0, 8(sp)
		ld t1, 0(sp)
		slt t0, t0, t1
		bnez t0, .L_main_47
		j .L_main_54
.L_main_47:
		ld t0, 8(sp)
		ld t1, 0(sp)
		add t0, t0, t1
		li t1, 2
		div t0, t0, t1
		sd t0, 24(sp)
		j .L_main_57
.L_main_54:
		li t0, 0
		sd t0, 128(sp)
		j .L_main_exit
.L_main_57:
		ld t0, 24(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 40
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		ld t1, 32(sp)
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_main_64
		j .L_main_69
.L_main_64:
		ld t0, 24(sp)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 128(sp)
		j .L_main_exit
.L_main_69:
		j .L_main_73
.L_main_71:
		j .L_main_42
.L_main_73:
		ld t0, 24(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 40
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		ld t1, 32(sp)
		slt t0, t1, t0
		bnez t0, .L_main_80
		j .L_main_85
.L_main_80:
		ld t0, 24(sp)
		li t1, 1
		sub t0, t0, t1
		sd t0, 0(sp)
		j .L_main_90
.L_main_85:
		ld t0, 24(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_main_90
.L_main_90:
		j .L_main_71
.L_main_exit:
		ld t0, 128(sp)
		mv a0, t0
		ld ra, 192(sp)
		addi sp, sp, 200
		ret
		.size main, .-main
