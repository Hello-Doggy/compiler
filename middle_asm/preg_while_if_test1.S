		.text
		.align 1
		.globl whileIf
		.type whileIf, @function
whileIf:
		sd ra, %ra
.L_whileIf_entry:
		li t0, 0
		sd t0, %0
		li t0, 0
		sd t0, %2
		j .L_whileIf_5
.L_whileIf_5:
		ld t0, %0
		li t1, 100
		slt t0, t0, t1
		bnez t0, .L_whileIf_9
		j .L_whileIf_11
.L_whileIf_9:
		j .L_whileIf_15
.L_whileIf_11:
		ld t0, %2
		sd t0, %ret.addr
		j .L_whileIf_exit
.L_whileIf_15:
		ld t0, %0
		li t1, 5
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_whileIf_19
		j .L_whileIf_22
.L_whileIf_19:
		li t0, 25
		sd t0, %2
		j .L_whileIf_24
.L_whileIf_22:
		j .L_whileIf_29
.L_whileIf_24:
		ld t0, %0
		li t1, 1
		add t0, t0, t1
		sd t0, %0
		j .L_whileIf_5
.L_whileIf_29:
		ld t0, %0
		li t1, 10
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_whileIf_33
		j .L_whileIf_36
.L_whileIf_33:
		li t0, 42
		sd t0, %2
		j .L_whileIf_41
.L_whileIf_36:
		ld t0, %0
		li t1, 2
		mul t0, t0, t1
		sd t0, %2
		j .L_whileIf_41
.L_whileIf_41:
		j .L_whileIf_24
.L_whileIf_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size whileIf, .-whileIf
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call whileIf
		mv t0, a0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
