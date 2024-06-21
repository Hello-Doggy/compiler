		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv t0, a0
		sd t0, %0
		j .L_main_10
.L_main_10:
		ld t0, %0
		li t1, 10
		slt t0, t1, t0
		bnez t0, .L_main_14
		j .L_main_17
.L_main_14:
		li t0, 10
		sd t0, %0
		j .L_main_17
.L_main_17:
		li t0, 0
		sd t0, %3
		j .L_main_20
.L_main_20:
		ld t0, %3
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_25
		j .L_main_34
.L_main_25:
		ld t0, %3
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%1
		add t0, t0, t1
		sd t0, %t0
		call getint
		ld t0, %t0
		mv t1, a0
		sd t1, ~t0
		ld t0, %3
		li t1, 1
		add t0, t0, t1
		sd t0, %3
		j .L_main_20
.L_main_34:
		call getint
		mv t0, a0
		sd t0, %2
		li t0, 0
		sd t0, %5
		ld t0, %0
		li t1, 1
		sub t0, t0, t1
		sd t0, %6
		j .L_main_42
.L_main_42:
		ld t0, %5
		ld t1, %6
		slt t0, t0, t1
		bnez t0, .L_main_47
		j .L_main_54
.L_main_47:
		ld t0, %5
		ld t1, %6
		add t0, t0, t1
		li t1, 2
		div t0, t0, t1
		sd t0, %3
		j .L_main_57
.L_main_54:
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_57:
		ld t0, %3
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%1
		add t0, t0, t1
		ld t0, ~t0
		ld t1, %2
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_main_64
		j .L_main_69
.L_main_64:
		ld t0, %3
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_69:
		j .L_main_73
.L_main_71:
		j .L_main_42
.L_main_73:
		ld t0, %3
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%1
		add t0, t0, t1
		ld t0, ~t0
		ld t1, %2
		slt t0, t1, t0
		bnez t0, .L_main_80
		j .L_main_85
.L_main_80:
		ld t0, %3
		li t1, 1
		sub t0, t0, t1
		sd t0, %6
		j .L_main_90
.L_main_85:
		ld t0, %3
		li t1, 1
		add t0, t0, t1
		sd t0, %5
		j .L_main_90
.L_main_90:
		j .L_main_71
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
