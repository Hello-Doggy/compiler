		.text
		.align 1
		.globl factorial
		.type factorial, @function
factorial:
		sd ra, %ra
.L_factorial_entry:
		li t0, 1
		sd t0, %2
		j .L_factorial_5
.L_factorial_5:
		ld t0, %0
		li t1, 1
		slt t0, t1, t0
		bnez t0, .L_factorial_9
		j .L_factorial_18
.L_factorial_9:
		ld t0, %2
		ld t1, %0
		mul t0, t0, t1
		sd t0, %2
		ld t0, %0
		li t1, 1
		sub t0, t0, t1
		sd t0, %0
		j .L_factorial_5
.L_factorial_18:
		ld t0, %2
		sd t0, %ret.addr
		j .L_factorial_exit
.L_factorial_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size factorial, .-factorial
		.align 1
		.globl cal_combiniation
		.type cal_combiniation, @function
cal_combiniation:
		sd ra, %ra
.L_cal_combiniation_entry:
		ld t0, %0
		mv a0, t0
		sd t0, -8(sp)
		call factorial
		mv t0, a0
		ld t1, %2
		mv a0, t1
		sd t1, -8(sp)
		sd t0, %t0
		call factorial
		ld t0, %t0
		mv t1, a0
		ld t2, %0
		ld t3, %2
		sub t2, t2, t3
		mv a0, t2
		sd t2, -8(sp)
		sd t0, %t0
		sd t1, %t1
		call factorial
		ld t0, %t0
		ld t1, %t1
		mv t2, a0
		mul t1, t1, t2
		div t0, t0, t1
		sd t0, %ret.addr
		j .L_cal_combiniation_exit
.L_cal_combiniation_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size cal_combiniation, .-cal_combiniation
		.align 1
		.globl cal_permutation
		.type cal_permutation, @function
cal_permutation:
		sd ra, %ra
.L_cal_permutation_entry:
		ld t0, %0
		mv a0, t0
		sd t0, -8(sp)
		call factorial
		mv t0, a0
		ld t1, %0
		ld t2, %2
		sub t1, t1, t2
		mv a0, t1
		sd t1, -8(sp)
		sd t0, %t0
		call factorial
		ld t0, %t0
		mv t1, a0
		div t0, t0, t1
		sd t0, %ret.addr
		j .L_cal_permutation_exit
.L_cal_permutation_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size cal_permutation, .-cal_permutation
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv t0, a0
		sd t0, %0
		call getint
		mv t0, a0
		sd t0, %3
		ld t0, %0
		ld t1, %3
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
		ld t0, %0
		ld t1, %3
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
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
