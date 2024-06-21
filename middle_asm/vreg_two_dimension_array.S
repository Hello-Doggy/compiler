		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 0
		sd %t, %1
		j .L_main_6
.L_main_6:
		ld %7, %1
		li %t, 4
		slt %8, %7, %t
		bnez %8, .L_main_10
		j .L_main_13
.L_main_10:
		li %t, 0
		sd %t, %2
		j .L_main_16
.L_main_13:
		li %t, 0
		sd %t, %1
		j .L_main_34
.L_main_16:
		ld %17, %2
		li %t, 4
		slt %18, %17, %t
		bnez %18, .L_main_20
		j .L_main_29
.L_main_20:
		ld %21, %1
		ld %22, %2
		mv %23, %21
		li %b, 4
		mul %23, %23, %b
		mv %t, %22
		add %23, %23, %t
		li %t, 8
		mul %23, %23, %t
		li %t, ~%0
		add %23, %23, %t
		li %t, 999
		sd %t, %23
		ld %25, %2
		li %t, 1
		add %26, %25, %t
		sd %26, %2
		j .L_main_16
.L_main_29:
		ld %30, %1
		li %t, 1
		add %31, %30, %t
		sd %31, %1
		j .L_main_6
.L_main_34:
		ld %35, %1
		li %t, 4
		slt %36, %35, %t
		bnez %36, .L_main_38
		j .L_main_47
.L_main_38:
		ld %39, %1
		ld %40, %1
		mv %41, %39
		li %b, 4
		mul %41, %41, %b
		mv %t, %40
		add %41, %41, %t
		li %t, 8
		mul %41, %41, %t
		li %t, ~%0
		add %41, %41, %t
		li %t, 0
		sd %t, %41
		ld %43, %1
		li %t, 1
		add %44, %43, %t
		sd %44, %1
		j .L_main_34
.L_main_47:
		li %48, 0
		li %b, 4
		mul %48, %48, %b
		li %t, 1
		add %48, %48, %t
		li %t, 8
		mul %48, %48, %t
		li %t, ~%0
		add %48, %48, %t
		li %t, 3
		sd %t, %48
		li %50, 0
		li %b, 4
		mul %50, %50, %b
		li %t, 3
		add %50, %50, %t
		li %t, 8
		mul %50, %50, %t
		li %t, ~%0
		add %50, %50, %t
		li %t, 5
		sd %t, %50
		li %52, 1
		li %b, 4
		mul %52, %52, %b
		li %t, 0
		add %52, %52, %t
		li %t, 8
		mul %52, %52, %t
		li %t, ~%0
		add %52, %52, %t
		li %t, 2
		sd %t, %52
		li %54, 1
		li %b, 4
		mul %54, %54, %b
		li %t, 3
		add %54, %54, %t
		li %t, 8
		mul %54, %54, %t
		li %t, ~%0
		add %54, %54, %t
		li %t, 4
		sd %t, %54
		li %56, 2
		li %b, 4
		mul %56, %56, %b
		li %t, 1
		add %56, %56, %t
		li %t, 8
		mul %56, %56, %t
		li %t, ~%0
		add %56, %56, %t
		li %t, 1
		sd %t, %56
		li %58, 3
		li %b, 4
		mul %58, %58, %b
		li %t, 2
		add %58, %58, %t
		li %t, 8
		mul %58, %58, %t
		li %t, ~%0
		add %58, %58, %t
		li %t, 2
		sd %t, %58
		li %t, 0
		sd %t, %3
		j .L_main_62
.L_main_62:
		ld %63, %3
		li %t, 4
		slt %64, %63, %t
		bnez %64, .L_main_66
		j .L_main_69
.L_main_66:
		li %t, 0
		sd %t, %1
		j .L_main_87
.L_main_69:
		li %70, 0
		li %b, 4
		mul %70, %70, %b
		li %t, 3
		add %70, %70, %t
		li %t, 8
		mul %70, %70, %t
		li %t, ~%0
		add %70, %70, %t
		ld %71, %70
		mv a0, %71
		sd %71, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		li %74, 1
		li %b, 4
		mul %74, %74, %b
		li %t, 2
		add %74, %74, %t
		li %t, 8
		mul %74, %74, %t
		li %t, ~%0
		add %74, %74, %t
		ld %75, %74
		mv a0, %75
		sd %75, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		li %78, 2
		li %b, 4
		mul %78, %78, %b
		li %t, 1
		add %78, %78, %t
		li %t, 8
		mul %78, %78, %t
		li %t, ~%0
		add %78, %78, %t
		ld %79, %78
		mv a0, %79
		sd %79, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		li %82, 3
		li %b, 4
		mul %82, %82, %b
		li %t, 0
		add %82, %82, %t
		li %t, 8
		mul %82, %82, %t
		li %t, ~%0
		add %82, %82, %t
		ld %83, %82
		mv a0, %83
		sd %83, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_87:
		ld %88, %1
		li %t, 4
		slt %89, %88, %t
		bnez %89, .L_main_91
		j .L_main_94
.L_main_91:
		li %t, 0
		sd %t, %2
		j .L_main_99
.L_main_94:
		ld %95, %3
		li %t, 1
		add %96, %95, %t
		sd %96, %3
		j .L_main_62
.L_main_99:
		ld %100, %2
		li %t, 4
		slt %101, %100, %t
		bnez %101, .L_main_103
		j .L_main_105
.L_main_103:
		j .L_main_110
.L_main_105:
		ld %106, %1
		li %t, 1
		add %107, %106, %t
		sd %107, %1
		j .L_main_87
.L_main_110:
		ld %111, %1
		ld %112, %3
		mv %113, %111
		li %b, 4
		mul %113, %113, %b
		mv %t, %112
		add %113, %113, %t
		li %t, 8
		mul %113, %113, %t
		li %t, ~%0
		add %113, %113, %t
		ld %114, %113
		ld %115, %3
		ld %116, %2
		mv %117, %115
		li %b, 4
		mul %117, %117, %b
		mv %t, %116
		add %117, %117, %t
		li %t, 8
		mul %117, %117, %t
		li %t, ~%0
		add %117, %117, %t
		ld %118, %117
		add %119, %114, %118
		ld %120, %1
		ld %121, %2
		mv %122, %120
		li %b, 4
		mul %122, %122, %b
		mv %t, %121
		add %122, %122, %t
		li %t, 8
		mul %122, %122, %t
		li %t, ~%0
		add %122, %122, %t
		ld %123, %122
		slt %124, %119, %123
		bnez %124, .L_main_126
		j .L_main_141
.L_main_126:
		ld %127, %1
		ld %128, %2
		mv %129, %127
		li %b, 4
		mul %129, %129, %b
		mv %t, %128
		add %129, %129, %t
		li %t, 8
		mul %129, %129, %t
		li %t, ~%0
		add %129, %129, %t
		ld %130, %1
		ld %131, %3
		mv %132, %130
		li %b, 4
		mul %132, %132, %b
		mv %t, %131
		add %132, %132, %t
		li %t, 8
		mul %132, %132, %t
		li %t, ~%0
		add %132, %132, %t
		ld %133, %132
		ld %134, %3
		ld %135, %2
		mv %136, %134
		li %b, 4
		mul %136, %136, %b
		mv %t, %135
		add %136, %136, %t
		li %t, 8
		mul %136, %136, %t
		li %t, ~%0
		add %136, %136, %t
		ld %137, %136
		add %138, %133, %137
		sd %138, %129
		j .L_main_141
.L_main_141:
		ld %142, %2
		li %t, 1
		add %143, %142, %t
		sd %143, %2
		j .L_main_99
.L_main_exit:
		ld %146, %ret.addr
		mv a0, %146
		ld ra, %ra
		ret
		.size main, .-main
