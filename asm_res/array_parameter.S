		.text
		.align 1
		.globl print_array
		.type print_array, @function
print_array:
		addi sp, sp, -88
		sd ra, 64(sp)
.L_print_array_entry:
		ld t0, 80(sp)
		li t1, 88
		add t0, t0, t1
		sd t0, 80(sp)
		li t0, 0
		sd t0, 0(sp)
		j .L_print_array_7
.L_print_array_7:
		ld t0, 0(sp)
		ld t1, 72(sp)
		slt t0, t0, t1
		bnez t0, .L_print_array_12
		j .L_print_array_22
.L_print_array_12:
		ld t0, 0(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, 80(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, 0(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 0(sp)
		j .L_print_array_7
.L_print_array_22:
		j .L_print_array_exit
.L_print_array_exit:
		ld ra, 64(sp)
		addi sp, sp, 88
		ret
		.size print_array, .-print_array
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -136
		sd ra, 128(sp)
.L_main_entry:
		li t0, 0
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 1
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 0
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 2
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 1
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 3
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 1
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 4
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 5
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 6
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 3
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 7
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 3
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 2
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		mv a0, t0
		sd t0, -8(sp)
		li t0, 2
		mv a1, t0
		sd t0, -16(sp)
		call print_array
		li t0, 1
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		mv a0, t0
		sd t0, -8(sp)
		li t0, 2
		mv a1, t0
		sd t0, -16(sp)
		call print_array
		li t0, 0
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		mv a0, t0
		sd t0, -8(sp)
		li t0, 2
		mv a1, t0
		sd t0, -16(sp)
		call print_array
		li t0, 3
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		mv a0, t0
		sd t0, -8(sp)
		li t0, 2
		mv a1, t0
		sd t0, -16(sp)
		call print_array
		li t0, 0
		sd t0, 64(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 64(sp)
		mv a0, t0
		ld ra, 128(sp)
		addi sp, sp, 136
		ret
		.size main, .-main
