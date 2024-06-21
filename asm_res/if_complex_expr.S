		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -112
		sd ra, 104(sp)
.L_main_entry:
		li t0, 5
		sd t0, 32(sp)
		li t0, 5
		sd t0, 24(sp)
		li t0, 1
		sd t0, 16(sp)
		li t0, 0
		li t1, 2
		sub t0, t0, t1
		sd t0, 8(sp)
		li t0, 2
		sd t0, 0(sp)
		j .L_main_12
.L_main_12:
		ld t0, 8(sp)
		li t1, 1
		mul t0, t0, t1
		li t1, 2
		div t0, t0, t1
		li t1, 0
		slt t0, t0, t1
		bnez t0, .L_main_30
		j .L_main_18
.L_main_18:
		ld t0, 32(sp)
		ld t1, 24(sp)
		sub t0, t0, t1
		li t1, 0
		sub t0, t0, t1
		snez t0, t0
		bnez t0, .L_main_24
		j .L_main_34
.L_main_24:
		ld t0, 16(sp)
		li t1, 3
		add t0, t0, t1
		li t1, 2
		rem t0, t0, t1
		li t1, 0
		sub t0, t0, t1
		snez t0, t0
		bnez t0, .L_main_30
		j .L_main_34
.L_main_30:
		ld t0, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		j .L_main_34
.L_main_34:
		j .L_main_36
.L_main_36:
		ld t0, 8(sp)
		li t1, 2
		rem t0, t0, t1
		li t1, 67
		add t0, t0, t1
		li t1, 0
		slt t0, t0, t1
		bnez t0, .L_main_54
		j .L_main_42
.L_main_42:
		ld t0, 32(sp)
		ld t1, 24(sp)
		sub t0, t0, t1
		li t1, 0
		sub t0, t0, t1
		snez t0, t0
		bnez t0, .L_main_48
		j .L_main_59
.L_main_48:
		ld t0, 16(sp)
		li t1, 2
		add t0, t0, t1
		li t1, 2
		rem t0, t0, t1
		li t1, 0
		sub t0, t0, t1
		snez t0, t0
		bnez t0, .L_main_54
		j .L_main_59
.L_main_54:
		li t0, 4
		sd t0, 0(sp)
		ld t0, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		j .L_main_59
.L_main_59:
		li t0, 0
		sd t0, 40(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 40(sp)
		mv a0, t0
		ld ra, 104(sp)
		addi sp, sp, 112
		ret
		.size main, .-main
