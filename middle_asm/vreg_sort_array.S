		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 0
		sd %t, %2
		j .L_main_8
.L_main_8:
		ld %9, %2
		li %t, 5
		slt %10, %9, %t
		bnez %10, .L_main_12
		j .L_main_21
.L_main_12:
		ld %13, %2
		mv %14, %13
		li %t, 8
		mul %14, %14, %t
		li %t, ~%6
		add %14, %14, %t
		call getint
		mv %15, a0
		sd %15, %14
		ld %17, %2
		li %t, 1
		add %18, %17, %t
		sd %18, %2
		j .L_main_8
.L_main_21:
		li %t, 0
		sd %t, %2
		j .L_main_24
.L_main_24:
		ld %25, %2
		li %t, 4
		slt %26, %25, %t
		bnez %26, .L_main_28
		j .L_main_33
.L_main_28:
		ld %29, %2
		li %t, 1
		add %30, %29, %t
		sd %30, %4
		j .L_main_36
.L_main_33:
		li %t, 0
		sd %t, %2
		j .L_main_77
.L_main_36:
		ld %37, %4
		li %t, 5
		slt %38, %37, %t
		bnez %38, .L_main_40
		j .L_main_42
.L_main_40:
		j .L_main_47
.L_main_42:
		ld %43, %2
		li %t, 1
		add %44, %43, %t
		sd %44, %2
		j .L_main_24
.L_main_47:
		ld %48, %2
		mv %49, %48
		li %t, 8
		mul %49, %49, %t
		li %t, ~%6
		add %49, %49, %t
		ld %50, %49
		ld %51, %4
		mv %52, %51
		li %t, 8
		mul %52, %52, %t
		li %t, ~%6
		add %52, %52, %t
		ld %53, %52
		slt %54, %53, %50
		bnez %54, .L_main_56
		j .L_main_72
.L_main_56:
		ld %57, %2
		mv %58, %57
		li %t, 8
		mul %58, %58, %t
		li %t, ~%6
		add %58, %58, %t
		ld %59, %58
		sd %59, %5
		ld %61, %2
		mv %62, %61
		li %t, 8
		mul %62, %62, %t
		li %t, ~%6
		add %62, %62, %t
		ld %63, %4
		mv %64, %63
		li %t, 8
		mul %64, %64, %t
		li %t, ~%6
		add %64, %64, %t
		ld %65, %64
		sd %65, %62
		ld %67, %4
		mv %68, %67
		li %t, 8
		mul %68, %68, %t
		li %t, ~%6
		add %68, %68, %t
		ld %69, %5
		sd %69, %68
		j .L_main_72
.L_main_72:
		ld %73, %4
		li %t, 1
		add %74, %73, %t
		sd %74, %4
		j .L_main_36
.L_main_77:
		ld %78, %2
		li %t, 5
		slt %79, %78, %t
		bnez %79, .L_main_81
		j .L_main_91
.L_main_81:
		ld %82, %2
		mv %83, %82
		li %t, 8
		mul %83, %83, %t
		li %t, ~%6
		add %83, %83, %t
		ld %84, %83
		mv a0, %84
		sd %84, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %87, %2
		li %t, 1
		add %88, %87, %t
		sd %88, %2
		j .L_main_77
.L_main_91:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %94, %ret.addr
		mv a0, %94
		ld ra, %ra
		ret
		.size main, .-main
