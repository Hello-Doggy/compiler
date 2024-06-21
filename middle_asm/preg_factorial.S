		.text
		.align 1
		.globl factorial
		.type factorial, @function
factorial:
		sd ra, %ra
.L_factorial_entry:
		j .L_factorial_3
.L_factorial_3:
		ld t0, %0
		li t1, 0
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_factorial_7
		j .L_factorial_10
.L_factorial_7:
		li t0, 1
		sd t0, %ret.addr
		j .L_factorial_exit
.L_factorial_10:
		ld t0, %0
		ld t1, %0
		li t2, 1
		sub t1, t1, t2
		mv a0, t1
		sd t1, -8(sp)
		sd t0, %t0
		call factorial
		ld t0, %t0
		mv t1, a0
		mul t0, t0, t1
		sd t0, %ret.addr
		j .L_factorial_exit
.L_factorial_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size factorial, .-factorial
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv t0, a0
		sd t0, %0
		ld t0, %0
		mv a0, t0
		sd t0, -8(sp)
		call factorial
		mv t0, a0
		sd t0, %3
		ld t0, %3
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
