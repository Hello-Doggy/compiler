		.text
		.align 1
		.globl add
		.type add, @function
add:
		addi sp, sp, -80
		sd ra, 64(sp)
.L_add_entry:
		ld t0, 72(sp)
		li t1, 80
		add t0, t0, t1
		sd t0, 72(sp)
		li t0, 0
		li t1, 8
		mul t0, t0, t1
		ld t1, 72(sp)
		add t0, t0, t1
		li t1, 0
		li t2, 8
		mul t1, t1, t2
		ld t2, 72(sp)
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		li t2, 1
		add t1, t1, t2
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 1
		sd t0, 0(sp)
		j .L_add_exit
.L_add_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 80
		ret
		.size add, .-add
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -160
		sd ra, 152(sp)
.L_main_entry:
		li t0, 10
		sd t0, 80(sp)
		li t0, 0
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 10
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_main_6
.L_main_6:
		ld t0, 80(sp)
		li t1, 10
		slt t0, t1, t0
		bnez t0, .L_main_10
		j .L_main_18
.L_main_10:
		li t0, 0
		mv a0, t0
		sd t0, -8(sp)
		call add
		mv t0, a0
		bnez t0, .L_main_13
		j .L_main_18
.L_main_13:
		li t0, 0
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		j .L_main_23
.L_main_18:
		li t0, 0
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		j .L_main_23
.L_main_23:
		li t0, 0
		sd t0, 88(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 88(sp)
		mv a0, t0
		ld ra, 152(sp)
		addi sp, sp, 160
		ret
		.size main, .-main
