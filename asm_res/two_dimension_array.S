		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -224
		sd ra, 216(sp)
.L_main_entry:
		li t0, 0
		sd t0, 16(sp)
		j .L_main_6
.L_main_6:
		ld t0, 16(sp)
		li t1, 4
		slt t0, t0, t1
		bnez t0, .L_main_10
		j .L_main_13
.L_main_10:
		li t0, 0
		sd t0, 8(sp)
		j .L_main_16
.L_main_13:
		li t0, 0
		sd t0, 16(sp)
		j .L_main_34
.L_main_16:
		ld t0, 8(sp)
		li t1, 4
		slt t0, t0, t1
		bnez t0, .L_main_20
		j .L_main_29
.L_main_20:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 4
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 999
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 8(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_main_16
.L_main_29:
		ld t0, 16(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_main_6
.L_main_34:
		ld t0, 16(sp)
		li t1, 4
		slt t0, t0, t1
		bnez t0, .L_main_38
		j .L_main_47
.L_main_38:
		ld t0, 16(sp)
		ld t1, 16(sp)
		mv t0, t0
		li t2, 4
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 0
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 16(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_main_34
.L_main_47:
		li t0, 0
		li t1, 4
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 3
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 0
		li t1, 4
		mul t0, t0, t1
		li t1, 3
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 5
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 1
		li t1, 4
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 2
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 1
		li t1, 4
		mul t0, t0, t1
		li t1, 3
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 4
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
		li t1, 4
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 1
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 3
		li t1, 4
		mul t0, t0, t1
		li t1, 2
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		li t1, 2
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 0
		sd t0, 0(sp)
		j .L_main_62
.L_main_62:
		ld t0, 0(sp)
		li t1, 4
		slt t0, t0, t1
		bnez t0, .L_main_66
		j .L_main_69
.L_main_66:
		li t0, 0
		sd t0, 16(sp)
		j .L_main_87
.L_main_69:
		li t0, 0
		li t1, 4
		mul t0, t0, t1
		li t1, 3
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		li t0, 1
		li t1, 4
		mul t0, t0, t1
		li t1, 2
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		li t0, 2
		li t1, 4
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		li t0, 3
		li t1, 4
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 152(sp)
		j .L_main_exit
.L_main_87:
		ld t0, 16(sp)
		li t1, 4
		slt t0, t0, t1
		bnez t0, .L_main_91
		j .L_main_94
.L_main_91:
		li t0, 0
		sd t0, 8(sp)
		j .L_main_99
.L_main_94:
		ld t0, 0(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 0(sp)
		j .L_main_62
.L_main_99:
		ld t0, 8(sp)
		li t1, 4
		slt t0, t0, t1
		bnez t0, .L_main_103
		j .L_main_105
.L_main_103:
		j .L_main_110
.L_main_105:
		ld t0, 16(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_main_87
.L_main_110:
		ld t0, 16(sp)
		ld t1, 0(sp)
		mv t0, t0
		li t2, 4
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		ld t1, 0(sp)
		ld t2, 8(sp)
		mv t1, t1
		li t3, 4
		mul t1, t1, t3
		mv t2, t2
		add t1, t1, t2
		li t2, 8
		mul t1, t1, t2
		li t2, 24
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		add t0, t0, t1
		ld t1, 16(sp)
		ld t2, 8(sp)
		mv t1, t1
		li t3, 4
		mul t1, t1, t3
		mv t2, t2
		add t1, t1, t2
		li t2, 8
		mul t1, t1, t2
		li t2, 24
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		slt t0, t0, t1
		bnez t0, .L_main_126
		j .L_main_141
.L_main_126:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 4
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 24
		add t0, t0, t1
		ld t1, 16(sp)
		ld t2, 0(sp)
		mv t1, t1
		li t3, 4
		mul t1, t1, t3
		mv t2, t2
		add t1, t1, t2
		li t2, 8
		mul t1, t1, t2
		li t2, 24
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		ld t2, 0(sp)
		ld t3, 8(sp)
		mv t2, t2
		li t4, 4
		mul t2, t2, t4
		mv t3, t3
		add t2, t2, t3
		li t3, 8
		mul t2, t2, t3
		li t3, 24
		add t2, t2, t3
		add t2, t2, sp
		ld t2, 0(t2)
		add t1, t1, t2
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_main_141
.L_main_141:
		ld t0, 8(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_main_99
.L_main_exit:
		ld t0, 152(sp)
		mv a0, t0
		ld ra, 216(sp)
		addi sp, sp, 224
		ret
		.size main, .-main
