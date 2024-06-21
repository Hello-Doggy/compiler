		.text
		.align 1
		.globl initW
		.type initW, @function
initW:
		sd ra, %ra
.L_initW_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		li %2, 0
		li %t, 8
		mul %2, %2, %t
		ld %t, %0
		add %2, %2, %t
		li %t, 0
		sd %t, %2
		li %4, 1
		li %t, 8
		mul %4, %4, %t
		ld %t, %0
		add %4, %4, %t
		li %t, 1
		sd %t, %4
		li %6, 2
		li %t, 8
		mul %6, %6, %t
		ld %t, %0
		add %6, %6, %t
		li %t, 2
		sd %t, %6
		li %8, 3
		li %t, 8
		mul %8, %8, %t
		ld %t, %0
		add %8, %8, %t
		li %t, 5
		sd %t, %8
		li %10, 4
		li %t, 8
		mul %10, %10, %t
		ld %t, %0
		add %10, %10, %t
		li %t, 6
		sd %t, %10
		li %12, 5
		li %t, 8
		mul %12, %12, %t
		ld %t, %0
		add %12, %12, %t
		li %t, 7
		sd %t, %12
		li %t, 0
		sd %t, %ret.addr
		j .L_initW_exit
.L_initW_exit:
		ld %16, %ret.addr
		mv a0, %16
		ld ra, %ra
		ret
		.size initW, .-initW
		.align 1
		.globl initV
		.type initV, @function
initV:
		sd ra, %ra
.L_initV_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		li %2, 0
		li %t, 8
		mul %2, %2, %t
		ld %t, %0
		add %2, %2, %t
		li %t, 0
		sd %t, %2
		li %4, 1
		li %t, 8
		mul %4, %4, %t
		ld %t, %0
		add %4, %4, %t
		li %t, 1
		sd %t, %4
		li %6, 2
		li %t, 8
		mul %6, %6, %t
		ld %t, %0
		add %6, %6, %t
		li %t, 6
		sd %t, %6
		li %8, 3
		li %t, 8
		mul %8, %8, %t
		ld %t, %0
		add %8, %8, %t
		li %t, 18
		sd %t, %8
		li %10, 4
		li %t, 8
		mul %10, %10, %t
		ld %t, %0
		add %10, %10, %t
		li %t, 22
		sd %t, %10
		li %12, 5
		li %t, 8
		mul %12, %12, %t
		ld %t, %0
		add %12, %12, %t
		li %t, 28
		sd %t, %12
		li %t, 0
		sd %t, %ret.addr
		j .L_initV_exit
.L_initV_exit:
		ld %16, %ret.addr
		mv a0, %16
		ld ra, %ra
		ret
		.size initV, .-initV
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, ~%0
		mv a0, %t
		sd %t, -8(sp)
		call initW
		li %t, ~%1
		mv a0, %t
		sd %t, -8(sp)
		call initV
		li %t, 0
		sd %t, %3
		j .L_main_11
.L_main_11:
		ld %12, %3
		li %t, 6
		slt %13, %12, %t
		bnez %13, .L_main_15
		j .L_main_18
.L_main_15:
		li %t, 0
		sd %t, %4
		j .L_main_21
.L_main_18:
		li %t, 1
		sd %t, %5
		j .L_main_39
.L_main_21:
		ld %22, %4
		li %t, 12
		slt %23, %22, %t
		bnez %23, .L_main_25
		j .L_main_34
.L_main_25:
		ld %26, %3
		ld %27, %4
		mv %28, %26
		li %b, 12
		mul %28, %28, %b
		mv %t, %27
		add %28, %28, %t
		li %t, 8
		mul %28, %28, %t
		li %t, ~%2
		add %28, %28, %t
		li %t, 0
		sd %t, %28
		ld %30, %4
		li %t, 1
		add %31, %30, %t
		sd %31, %4
		j .L_main_21
.L_main_34:
		ld %35, %3
		li %t, 1
		add %36, %35, %t
		sd %36, %3
		j .L_main_11
.L_main_39:
		ld %40, %5
		li %t, 6
		slt %41, %40, %t
		bnez %41, .L_main_43
		j .L_main_46
.L_main_43:
		li %t, 1
		sd %t, %6
		j .L_main_52
.L_main_46:
		li %47, 5
		li %b, 12
		mul %47, %47, %b
		li %t, 11
		add %47, %47, %t
		li %t, 8
		mul %47, %47, %t
		li %t, ~%2
		add %47, %47, %t
		ld %48, %47
		mv a0, %48
		sd %48, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_52:
		ld %53, %6
		li %t, 12
		slt %54, %53, %t
		bnez %54, .L_main_56
		j .L_main_58
.L_main_56:
		j .L_main_63
.L_main_58:
		ld %59, %5
		li %t, 1
		add %60, %59, %t
		sd %60, %5
		j .L_main_39
.L_main_63:
		ld %64, %6
		ld %65, %5
		mv %66, %65
		li %t, 8
		mul %66, %66, %t
		li %t, ~%0
		add %66, %66, %t
		ld %67, %66
		slt %68, %64, %67
		bnez %68, .L_main_70
		j .L_main_81
.L_main_70:
		ld %71, %5
		ld %72, %6
		mv %73, %71
		li %b, 12
		mul %73, %73, %b
		mv %t, %72
		add %73, %73, %t
		li %t, 8
		mul %73, %73, %t
		li %t, ~%2
		add %73, %73, %t
		ld %74, %5
		li %t, 1
		sub %75, %74, %t
		ld %76, %6
		mv %77, %75
		li %b, 12
		mul %77, %77, %b
		mv %t, %76
		add %77, %77, %t
		li %t, 8
		mul %77, %77, %t
		li %t, ~%2
		add %77, %77, %t
		ld %78, %77
		sd %78, %73
		j .L_main_83
.L_main_81:
		j .L_main_88
.L_main_83:
		ld %84, %6
		li %t, 1
		add %85, %84, %t
		sd %85, %6
		j .L_main_52
.L_main_88:
		ld %89, %5
		li %t, 1
		sub %90, %89, %t
		ld %91, %6
		mv %92, %90
		li %b, 12
		mul %92, %92, %b
		mv %t, %91
		add %92, %92, %t
		li %t, 8
		mul %92, %92, %t
		li %t, ~%2
		add %92, %92, %t
		ld %93, %92
		ld %94, %5
		mv %95, %94
		li %t, 8
		mul %95, %95, %t
		li %t, ~%1
		add %95, %95, %t
		ld %96, %95
		ld %97, %5
		li %t, 1
		sub %98, %97, %t
		ld %99, %6
		ld %100, %5
		mv %101, %100
		li %t, 8
		mul %101, %101, %t
		li %t, ~%0
		add %101, %101, %t
		ld %102, %101
		sub %103, %99, %102
		mv %104, %98
		li %b, 12
		mul %104, %104, %b
		mv %t, %103
		add %104, %104, %t
		li %t, 8
		mul %104, %104, %t
		li %t, ~%2
		add %104, %104, %t
		ld %105, %104
		add %106, %96, %105
		slt %107, %106, %93
		bnez %107, .L_main_109
		j .L_main_120
.L_main_109:
		ld %110, %5
		ld %111, %6
		mv %112, %110
		li %b, 12
		mul %112, %112, %b
		mv %t, %111
		add %112, %112, %t
		li %t, 8
		mul %112, %112, %t
		li %t, ~%2
		add %112, %112, %t
		ld %113, %5
		li %t, 1
		sub %114, %113, %t
		ld %115, %6
		mv %116, %114
		li %b, 12
		mul %116, %116, %b
		mv %t, %115
		add %116, %116, %t
		li %t, 8
		mul %116, %116, %t
		li %t, ~%2
		add %116, %116, %t
		ld %117, %116
		sd %117, %112
		j .L_main_139
.L_main_120:
		ld %121, %5
		ld %122, %6
		mv %123, %121
		li %b, 12
		mul %123, %123, %b
		mv %t, %122
		add %123, %123, %t
		li %t, 8
		mul %123, %123, %t
		li %t, ~%2
		add %123, %123, %t
		ld %124, %5
		mv %125, %124
		li %t, 8
		mul %125, %125, %t
		li %t, ~%1
		add %125, %125, %t
		ld %126, %125
		ld %127, %5
		li %t, 1
		sub %128, %127, %t
		ld %129, %6
		ld %130, %5
		mv %131, %130
		li %t, 8
		mul %131, %131, %t
		li %t, ~%0
		add %131, %131, %t
		ld %132, %131
		sub %133, %129, %132
		mv %134, %128
		li %b, 12
		mul %134, %134, %b
		mv %t, %133
		add %134, %134, %t
		li %t, 8
		mul %134, %134, %t
		li %t, ~%2
		add %134, %134, %t
		ld %135, %134
		add %136, %126, %135
		sd %136, %123
		j .L_main_139
.L_main_139:
		j .L_main_83
.L_main_exit:
		ld %141, %ret.addr
		mv a0, %141
		ld ra, %ra
		ret
		.size main, .-main
