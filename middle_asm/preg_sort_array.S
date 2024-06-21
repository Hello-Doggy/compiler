		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 0
		sd t0, %2
		j .L_main_8
.L_main_8:
		ld t0, %2
		li t1, 5
		slt t0, t0, t1
		bnez t0, .L_main_12
		j .L_main_21
.L_main_12:
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%6
		add t0, t0, t1
		sd t0, %t0
		call getint
		ld t0, %t0
		mv t1, a0
		sd t1, ~t0
		ld t0, %2
		li t1, 1
		add t0, t0, t1
		sd t0, %2
		j .L_main_8
.L_main_21:
		li t0, 0
		sd t0, %2
		j .L_main_24
.L_main_24:
		ld t0, %2
		li t1, 4
		slt t0, t0, t1
		bnez t0, .L_main_28
		j .L_main_33
.L_main_28:
		ld t0, %2
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_36
.L_main_33:
		li t0, 0
		sd t0, %2
		j .L_main_77
.L_main_36:
		ld t0, %4
		li t1, 5
		slt t0, t0, t1
		bnez t0, .L_main_40
		j .L_main_42
.L_main_40:
		j .L_main_47
.L_main_42:
		ld t0, %2
		li t1, 1
		add t0, t0, t1
		sd t0, %2
		j .L_main_24
.L_main_47:
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%6
		add t0, t0, t1
		ld t0, ~t0
		ld t1, %4
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%6
		add t1, t1, t2
		ld t1, ~t1
		slt t0, t1, t0
		bnez t0, .L_main_56
		j .L_main_72
.L_main_56:
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%6
		add t0, t0, t1
		ld t0, ~t0
		sd t0, %5
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%6
		add t0, t0, t1
		ld t1, %4
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%6
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%6
		add t0, t0, t1
		ld t1, %5
		sd t1, ~t0
		j .L_main_72
.L_main_72:
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_36
.L_main_77:
		ld t0, %2
		li t1, 5
		slt t0, t0, t1
		bnez t0, .L_main_81
		j .L_main_91
.L_main_81:
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%6
		add t0, t0, t1
		ld t0, ~t0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, %2
		li t1, 1
		add t0, t0, t1
		sd t0, %2
		j .L_main_77
.L_main_91:
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
