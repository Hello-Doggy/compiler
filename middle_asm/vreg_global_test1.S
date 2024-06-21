		.global a
		.bss
		.align 3
		.type a, @object
		.size a, 8
a:
		.zero 8
		.global b
		.bss
		.align 3
		.type b, @object
		.size b, 16
b:
		.zero 16
		.global c
		.bss
		.align 3
		.type c, @object
		.size c, 96
c:
		.zero 96
		.global i
		.bss
		.align 3
		.type i, @object
		.size i, 8
i:
		.zero 8
		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		la %t, @i
		li %tt, 2024
		sd %tt, 0(%t)
		j .L_main_3
.L_main_3:
		ld %4, @a
		li %t, 2
		slt %5, %4, %t
		bnez %5, .L_main_7
		j .L_main_17
.L_main_7:
		ld %8, @a
		mv %9, %8
		li %t, 8
		mul %9, %9, %t
		la %t, @b
		add $%9, %9, %t
		ld %10, @a
		li %t, 2
		mul %11, %10, %t
		sd %11, %9
		ld %13, @a
		li %t, 1
		add %14, %13, %t
		la %t, @a
		sd %14, 0(%t)
		j .L_main_3
.L_main_17:
		ld %18, @a
		li %19, 0
		li %t, 8
		mul %19, %19, %t
		la %t, @b
		add $%19, %19, %t
		ld %20, %19
		add %21, %18, %20
		li %22, 1
		li %t, 8
		mul %22, %22, %t
		la %t, @b
		add $%22, %22, %t
		ld %23, %22
		add %24, %21, %23
		mv a0, %24
		sd %24, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %27, @i
		mv a0, %27
		sd %27, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		li %t, 0
		sd %t, %1
		j .L_main_32
.L_main_32:
		ld %33, %1
		li %t, 12
		slt %34, %33, %t
		bnez %34, .L_main_36
		j .L_main_47
.L_main_36:
		ld %37, %1
		li %t, 3
		div %38, %37, %t
		ld %39, %1
		li %t, 3
		rem %40, %39, %t
		mv %41, %38
		li %b, 3
		mul %41, %41, %b
		mv %t, %40
		add %41, %41, %t
		li %t, 8
		mul %41, %41, %t
		la %t, @c
		add $%41, %41, %t
		li %t, 0
		sd %t, %41
		ld %43, %1
		li %t, 1
		add %44, %43, %t
		sd %44, %1
		j .L_main_32
.L_main_47:
		li %48, 0
		li %b, 3
		mul %48, %48, %b
		li %t, 0
		add %48, %48, %t
		li %t, 8
		mul %48, %48, %t
		la %t, @c
		add $%48, %48, %t
		li %t, 1
		sd %t, %48
		li %50, 0
		li %b, 3
		mul %50, %50, %b
		li %t, 1
		add %50, %50, %t
		li %t, 8
		mul %50, %50, %t
		la %t, @c
		add $%50, %50, %t
		li %t, 1
		sd %t, %50
		li %52, 0
		li %b, 3
		mul %52, %52, %b
		li %t, 2
		add %52, %52, %t
		li %t, 8
		mul %52, %52, %t
		la %t, @c
		add $%52, %52, %t
		li %t, 4
		sd %t, %52
		li %54, 1
		li %b, 3
		mul %54, %54, %b
		li %t, 0
		add %54, %54, %t
		li %t, 8
		mul %54, %54, %t
		la %t, @c
		add $%54, %54, %t
		li %t, 5
		sd %t, %54
		li %56, 2
		li %b, 3
		mul %56, %56, %b
		li %t, 0
		add %56, %56, %t
		li %t, 8
		mul %56, %56, %t
		la %t, @c
		add $%56, %56, %t
		li %t, 1
		sd %t, %56
		li %58, 3
		li %b, 3
		mul %58, %58, %b
		li %t, 0
		add %58, %58, %t
		li %t, 8
		mul %58, %58, %t
		la %t, @c
		add $%58, %58, %t
		li %t, 4
		sd %t, %58
		li %t, 0
		sd %t, %1
		j .L_main_62
.L_main_62:
		ld %63, %1
		li %t, 12
		slt %64, %63, %t
		bnez %64, .L_main_66
		j .L_main_79
.L_main_66:
		ld %67, %1
		li %t, 3
		div %68, %67, %t
		ld %69, %1
		li %t, 3
		rem %70, %69, %t
		mv %71, %68
		li %b, 3
		mul %71, %71, %b
		mv %t, %70
		add %71, %71, %t
		li %t, 8
		mul %71, %71, %t
		la %t, @c
		add $%71, %71, %t
		ld %72, %71
		mv a0, %72
		sd %72, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %75, %1
		li %t, 1
		add %76, %75, %t
		sd %76, %1
		j .L_main_62
.L_main_79:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %82, %ret.addr
		mv a0, %82
		ld ra, %ra
		ret
		.size main, .-main
