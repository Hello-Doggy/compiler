		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -152
		sd ra, 144(sp)
.L_main_entry:
		li t0, 2
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 4
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
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
		sd t0, 80(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 80(sp)
		mv a0, t0
		ld ra, 144(sp)
		addi sp, sp, 152
		ret
		.size main, .-main
