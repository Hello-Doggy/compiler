		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -872
		sd ra, 864(sp)
.L_main_entry:
		li t0, 2
		li t1, 10
		mul t0, t0, t1
		li t1, 2
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 111
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
		li t1, 10
		mul t0, t0, t1
		li t1, 2
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 800(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 800(sp)
		mv a0, t0
		ld ra, 864(sp)
		addi sp, sp, 872
		ret
		.size main, .-main
