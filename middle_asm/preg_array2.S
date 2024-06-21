		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 2
		li t1, 10
		mul t0, t0, t1
		li t1, 2
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 111
		sd t1, ~t0
		li t0, 2
		li t1, 10
		mul t0, t0, t1
		li t1, 2
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		ld t0, ~t0
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
