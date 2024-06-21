		.text
		.align 1
		.globl print_array
		.type print_array, @function
print_array:
		sd ra, %ra
.L_print_array_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		li %t, 0
		sd %t, %4
		j .L_print_array_7
.L_print_array_7:
		ld %8, %4
		ld %9, %2
		slt %10, %8, %9
		bnez %10, .L_print_array_12
		j .L_print_array_22
.L_print_array_12:
		ld %13, %4
		mv %14, %13
		li %t, 8
		mul %14, %14, %t
		ld %t, %0
		add %14, %14, %t
		ld %15, %14
		mv a0, %15
		sd %15, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %18, %4
		li %t, 1
		add %19, %18, %t
		sd %19, %4
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
		li %1, 0
		li %b, 2
		mul %1, %1, %b
		li %t, 0
		add %1, %1, %t
		li %t, 8
		mul %1, %1, %t
		li %t, ~%0
		add %1, %1, %t
		li %t, 1
		sd %t, %1
		li %3, 0
		li %b, 2
		mul %3, %3, %b
		li %t, 1
		add %3, %3, %t
		li %t, 8
		mul %3, %3, %t
		li %t, ~%0
		add %3, %3, %t
		li %t, 2
		sd %t, %3
		li %5, 1
		li %b, 2
		mul %5, %5, %b
		li %t, 0
		add %5, %5, %t
		li %t, 8
		mul %5, %5, %t
		li %t, ~%0
		add %5, %5, %t
		li %t, 3
		sd %t, %5
		li %7, 1
		li %b, 2
		mul %7, %7, %b
		li %t, 1
		add %7, %7, %t
		li %t, 8
		mul %7, %7, %t
		li %t, ~%0
		add %7, %7, %t
		li %t, 4
		sd %t, %7
		li %9, 2
		li %b, 2
		mul %9, %9, %b
		li %t, 0
		add %9, %9, %t
		li %t, 8
		mul %9, %9, %t
		li %t, ~%0
		add %9, %9, %t
		li %t, 5
		sd %t, %9
		li %11, 2
		li %b, 2
		mul %11, %11, %b
		li %t, 1
		add %11, %11, %t
		li %t, 8
		mul %11, %11, %t
		li %t, ~%0
		add %11, %11, %t
		li %t, 6
		sd %t, %11
		li %13, 3
		li %b, 2
		mul %13, %13, %b
		li %t, 0
		add %13, %13, %t
		li %t, 8
		mul %13, %13, %t
		li %t, ~%0
		add %13, %13, %t
		li %t, 7
		sd %t, %13
		li %15, 3
		li %b, 2
		mul %15, %15, %b
		li %t, 1
		add %15, %15, %t
		li %t, 8
		mul %15, %15, %t
		li %t, ~%0
		add %15, %15, %t
		li %t, 8
		sd %t, %15
		li %17, 2
		li %b, 2
		mul %17, %17, %b
		li %t, 0
		add %17, %17, %t
		li %t, 8
		mul %17, %17, %t
		li %t, ~%0
		add %17, %17, %t
		mv a0, %17
		sd %17, -8(sp)
		li %t, 2
		mv a1, %t
		sd %t, -16(sp)
		call print_array
		li %19, 1
		li %b, 2
		mul %19, %19, %b
		li %t, 0
		add %19, %19, %t
		li %t, 8
		mul %19, %19, %t
		li %t, ~%0
		add %19, %19, %t
		mv a0, %19
		sd %19, -8(sp)
		li %t, 2
		mv a1, %t
		sd %t, -16(sp)
		call print_array
		li %21, 0
		li %b, 2
		mul %21, %21, %b
		li %t, 0
		add %21, %21, %t
		li %t, 8
		mul %21, %21, %t
		li %t, ~%0
		add %21, %21, %t
		mv a0, %21
		sd %21, -8(sp)
		li %t, 2
		mv a1, %t
		sd %t, -16(sp)
		call print_array
		li %23, 3
		li %b, 2
		mul %23, %23, %b
		li %t, 0
		add %23, %23, %t
		li %t, 8
		mul %23, %23, %t
		li %t, ~%0
		add %23, %23, %t
		mv a0, %23
		sd %23, -8(sp)
		li %t, 2
		mv a1, %t
		sd %t, -16(sp)
		call print_array
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %27, %ret.addr
		mv a0, %27
		ld ra, %ra
		ret
		.size main, .-main
