		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv %7, a0
		sd %7, %0
		j .L_main_10
.L_main_10:
		ld %11, %0
		li %t, 10
		slt %12, %t, %11
		bnez %12, .L_main_14
		j .L_main_17
.L_main_14:
		li %t, 10
		sd %t, %0
		j .L_main_17
.L_main_17:
		li %t, 0
		sd %t, %3
		j .L_main_20
.L_main_20:
		ld %21, %3
		ld %22, %0
		slt %23, %21, %22
		bnez %23, .L_main_25
		j .L_main_34
.L_main_25:
		ld %26, %3
		mv %27, %26
		li %t, 8
		mul %27, %27, %t
		li %t, ~%1
		add %27, %27, %t
		call getint
		mv %28, a0
		sd %28, %27
		ld %30, %3
		li %t, 1
		add %31, %30, %t
		sd %31, %3
		j .L_main_20
.L_main_34:
		call getint
		mv %35, a0
		sd %35, %2
		li %t, 0
		sd %t, %5
		ld %38, %0
		li %t, 1
		sub %39, %38, %t
		sd %39, %6
		j .L_main_42
.L_main_42:
		ld %43, %5
		ld %44, %6
		slt %45, %43, %44
		bnez %45, .L_main_47
		j .L_main_54
.L_main_47:
		ld %48, %5
		ld %49, %6
		add %50, %48, %49
		li %t, 2
		div %51, %50, %t
		sd %51, %3
		j .L_main_57
.L_main_54:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_57:
		ld %58, %3
		mv %59, %58
		li %t, 8
		mul %59, %59, %t
		li %t, ~%1
		add %59, %59, %t
		ld %60, %59
		ld %61, %2
		sub %62, %60, %61
		seqz %62, %62
		bnez %62, .L_main_64
		j .L_main_69
.L_main_64:
		ld %65, %3
		mv a0, %65
		sd %65, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_69:
		j .L_main_73
.L_main_71:
		j .L_main_42
.L_main_73:
		ld %74, %3
		mv %75, %74
		li %t, 8
		mul %75, %75, %t
		li %t, ~%1
		add %75, %75, %t
		ld %76, %75
		ld %77, %2
		slt %78, %77, %76
		bnez %78, .L_main_80
		j .L_main_85
.L_main_80:
		ld %81, %3
		li %t, 1
		sub %82, %81, %t
		sd %82, %6
		j .L_main_90
.L_main_85:
		ld %86, %3
		li %t, 1
		add %87, %86, %t
		sd %87, %5
		j .L_main_90
.L_main_90:
		j .L_main_71
.L_main_exit:
		ld %92, %ret.addr
		mv a0, %92
		ld ra, %ra
		ret
		.size main, .-main
