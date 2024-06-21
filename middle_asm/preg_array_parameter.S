		.text
		.align 1
		.globl print_array
		.type print_array, @function
print_array:
		sd ra, %ra
.L_print_array_entry:
		ld t0, %0
		li t1, ~fs
		add t0, t0, t1
		sd t0, %0
		li t0, 0
		sd t0, %4
		j .L_print_array_7
.L_print_array_7:
		ld t0, %4
		ld t1, %2
		slt t0, t0, t1
		bnez t0, .L_print_array_12
		j .L_print_array_22
.L_print_array_12:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t0, ~t0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_print_array_7
.L_print_array_22:
		j .L_print_array_exit
.L_print_array_exit:
		ld ra, %ra
		ret
		.size print_array, .-print_array
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 0
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 1
		sd t1, ~t0
		li t0, 0
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 2
		sd t1, ~t0
		li t0, 1
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 3
		sd t1, ~t0
		li t0, 1
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 4
		sd t1, ~t0
		li t0, 2
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 5
		sd t1, ~t0
		li t0, 2
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 6
		sd t1, ~t0
		li t0, 3
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 7
		sd t1, ~t0
		li t0, 3
		li t1, 2
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
		add t0, t0, t1
		li t1, 8
		sd t1, ~t0
		li t0, 2
		li t1, 2
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		li t1, ~%0
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
		li t1, ~%0
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
		li t1, ~%0
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
		li t1, ~%0
		add t0, t0, t1
		mv a0, t0
		sd t0, -8(sp)
		li t0, 2
		mv a1, t0
		sd t0, -16(sp)
		call print_array
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
