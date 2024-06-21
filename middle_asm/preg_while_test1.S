		.text
		.align 1
		.globl doubleWhile
		.type doubleWhile, @function
doubleWhile:
		sd ra, %ra
.L_doubleWhile_entry:
		li t0, 5
		sd t0, %0
		li t0, 7
		sd t0, %2
		j .L_doubleWhile_5
.L_doubleWhile_5:
		ld t0, %0
		li t1, 100
		slt t0, t0, t1
		bnez t0, .L_doubleWhile_9
		j .L_doubleWhile_14
.L_doubleWhile_9:
		ld t0, %0
		li t1, 30
		add t0, t0, t1
		sd t0, %0
		j .L_doubleWhile_18
.L_doubleWhile_14:
		ld t0, %2
		sd t0, %ret.addr
		j .L_doubleWhile_exit
.L_doubleWhile_18:
		ld t0, %2
		li t1, 100
		slt t0, t0, t1
		bnez t0, .L_doubleWhile_22
		j .L_doubleWhile_27
.L_doubleWhile_22:
		ld t0, %2
		li t1, 6
		add t0, t0, t1
		sd t0, %2
		j .L_doubleWhile_18
.L_doubleWhile_27:
		ld t0, %2
		li t1, 100
		sub t0, t0, t1
		sd t0, %2
		j .L_doubleWhile_5
.L_doubleWhile_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size doubleWhile, .-doubleWhile
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call doubleWhile
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
