		.text
		.align 1
		.globl factorial
		.type factorial, @function
factorial:
		addi sp, sp, -88
		sd ra, 72(sp)
.L_factorial_entry:
		li t0, 1
		sd t0, 0(sp)
		j .L_factorial_5
.L_factorial_5:
		ld t0, 80(sp)
		li t1, 1
		slt t0, t1, t0
		bnez t0, .L_factorial_9
		j .L_factorial_18
.L_factorial_9:
		ld t0, 0(sp)
		ld t1, 80(sp)
		mul t0, t0, t1
		sd t0, 0(sp)
		ld t0, 80(sp)
		li t1, 1
		sub t0, t0, t1
		sd t0, 80(sp)
		j .L_factorial_5
.L_factorial_18:
		ld t0, 0(sp)
		sd t0, 8(sp)
		j .L_factorial_exit
.L_factorial_exit:
		ld t0, 8(sp)
		mv a0, t0
		ld ra, 72(sp)
		addi sp, sp, 88
		ret
		.size factorial, .-factorial
		.align 1
		.globl cal_combiniation
		.type cal_combiniation, @function
cal_combiniation:
		addi sp, sp, -88
		sd ra, 64(sp)
.L_cal_combiniation_entry:
		ld t0, 80(sp)
		mv a0, t0
		sd t0, -8(sp)
		call factorial
		mv t0, a0
		ld t1, 72(sp)
		mv a0, t1
		sd t1, -8(sp)
		sd t0, 56(sp)
		call factorial
		ld t0, 56(sp)
		mv t1, a0
		ld t2, 80(sp)
		ld t3, 72(sp)
		sub t2, t2, t3
		mv a0, t2
		sd t2, -8(sp)
		sd t0, 56(sp)
		sd t1, 48(sp)
		call factorial
		ld t0, 56(sp)
		ld t1, 48(sp)
		mv t2, a0
		mul t1, t1, t2
		div t0, t0, t1
		sd t0, 0(sp)
		j .L_cal_combiniation_exit
.L_cal_combiniation_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 88
		ret
		.size cal_combiniation, .-cal_combiniation
		.align 1
		.globl cal_permutation
		.type cal_permutation, @function
cal_permutation:
		addi sp, sp, -88
		sd ra, 64(sp)
.L_cal_permutation_entry:
		ld t0, 80(sp)
		mv a0, t0
		sd t0, -8(sp)
		call factorial
		mv t0, a0
		ld t1, 80(sp)
		ld t2, 72(sp)
		sub t1, t1, t2
		mv a0, t1
		sd t1, -8(sp)
		sd t0, 56(sp)
		call factorial
		ld t0, 56(sp)
		mv t1, a0
		div t0, t0, t1
		sd t0, 0(sp)
		j .L_cal_permutation_exit
.L_cal_permutation_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 88
		ret
		.size cal_permutation, .-cal_permutation
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -88
		sd ra, 80(sp)
.L_main_entry:
		call getint
		mv t0, a0
		sd t0, 8(sp)
		call getint
		mv t0, a0
		sd t0, 0(sp)
		ld t0, 8(sp)
		ld t1, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		mv a1, t1
		sd t1, -16(sp)
		call cal_combiniation
		mv t0, a0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, 8(sp)
		ld t1, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		mv a1, t1
		sd t1, -16(sp)
		call cal_permutation
		mv t0, a0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 16(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 16(sp)
		mv a0, t0
		ld ra, 80(sp)
		addi sp, sp, 88
		ret
		.size main, .-main
