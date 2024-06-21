		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 0
		sd %t, %0
		li %t, 1
		sd %t, %2
		li %t, 0
		sd %t, %4
		li %t, 1
		sd %t, %6
		li %t, 2
		sd %t, %8
		li %t, 4
		sd %t, %10
		j .L_main_13
.L_main_13:
		ld %14, %2
		ld %15, %4
		mul %16, %14, %15
		ld %17, %6
		div %18, %16, %17
		ld %19, %10
		ld %20, %8
		add %21, %19, %20
		sub %22, %18, %21
		seqz %22, %22
		bnez %22, .L_main_24
		j .L_main_37
.L_main_24:
		ld %25, %2
		ld %26, %2
		ld %27, %4
		add %28, %26, %27
		mul %29, %25, %28
		ld %30, %6
		add %31, %29, %30
		ld %32, %8
		ld %33, %10
		add %34, %32, %33
		slt %35, %34, %31
		xori %35, %35, 1
		bnez %35, .L_main_50
		j .L_main_37
.L_main_37:
		ld %38, %2
		ld %39, %4
		ld %40, %6
		mul %41, %39, %40
		sub %42, %38, %41
		ld %43, %8
		ld %44, %2
		ld %45, %6
		div %46, %44, %45
		sub %47, %43, %46
		sub %48, %42, %47
		seqz %48, %48
		bnez %48, .L_main_50
		j .L_main_53
.L_main_50:
		li %t, 1
		sd %t, %0
		j .L_main_53
.L_main_53:
		ld %54, %0
		mv a0, %54
		sd %54, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %58, %ret.addr
		mv a0, %58
		ld ra, %ra
		ret
		.size main, .-main
