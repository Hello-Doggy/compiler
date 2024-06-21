		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 5
		sd t0, %0
		li t0, 5
		sd t0, %1
		li t0, 1
		sd t0, %2
		li t0, 0
		li t1, 2
		sub t0, t0, t1
		sd t0, %3
		li t0, 2
		sd t0, %4
		j .L_main_12
.L_main_12:
		ld t0, %3
		li t1, 1
		mul t0, t0, t1
		li t1, 2
		div t0, t0, t1
		li t1, 0
		slt t0, t0, t1
		bnez t0, .L_main_30
		j .L_main_18
.L_main_18:
		ld t0, %0
		ld t1, %1
		sub t0, t0, t1
		li t1, 0
		sub t0, t0, t1
		snez t0, t0
		bnez t0, .L_main_24
		j .L_main_34
.L_main_24:
		ld t0, %2
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
		ld t0, %4
		mv a0, t0
		sd t0, -8(sp)
		call putint
		j .L_main_34
.L_main_34:
		j .L_main_36
.L_main_36:
		ld t0, %3
		li t1, 2
		rem t0, t0, t1
		li t1, 67
		add t0, t0, t1
		li t1, 0
		slt t0, t0, t1
		bnez t0, .L_main_54
		j .L_main_42
.L_main_42:
		ld t0, %0
		ld t1, %1
		sub t0, t0, t1
		li t1, 0
		sub t0, t0, t1
		snez t0, t0
		bnez t0, .L_main_48
		j .L_main_59
.L_main_48:
		ld t0, %2
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
		sd t0, %4
		ld t0, %4
		mv a0, t0
		sd t0, -8(sp)
		call putint
		j .L_main_59
.L_main_59:
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
