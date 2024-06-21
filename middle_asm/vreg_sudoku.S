		.global a
		.bss
		.align 3
		.type a, @object
		.size a, 648
a:
		.zero 648
		.text
		.align 1
		.globl check_sudoku
		.type check_sudoku, @function
check_sudoku:
		sd ra, %ra
.L_check_sudoku_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		li %t, 0
		sd %t, %2
		j .L_check_sudoku_10
.L_check_sudoku_10:
		ld %11, %2
		li %t, 9
		slt %12, %11, %t
		bnez %12, .L_check_sudoku_14
		j .L_check_sudoku_17
.L_check_sudoku_14:
		li %t, 0
		sd %t, %3
		j .L_check_sudoku_20
.L_check_sudoku_17:
		li %t, 0
		sd %t, %2
		j .L_check_sudoku_83
.L_check_sudoku_20:
		ld %21, %3
		li %t, 9
		slt %22, %21, %t
		bnez %22, .L_check_sudoku_24
		j .L_check_sudoku_32
.L_check_sudoku_24:
		ld %25, %3
		mv %26, %25
		li %t, 8
		mul %26, %26, %t
		li %t, ~%5
		add %26, %26, %t
		li %t, 0
		sd %t, %26
		ld %28, %3
		li %t, 1
		add %29, %28, %t
		sd %29, %3
		j .L_check_sudoku_20
.L_check_sudoku_32:
		li %t, 0
		sd %t, %3
		j .L_check_sudoku_35
.L_check_sudoku_35:
		ld %36, %3
		li %t, 9
		slt %37, %36, %t
		bnez %37, .L_check_sudoku_39
		j .L_check_sudoku_41
.L_check_sudoku_39:
		j .L_check_sudoku_46
.L_check_sudoku_41:
		ld %42, %2
		li %t, 1
		add %43, %42, %t
		sd %43, %2
		j .L_check_sudoku_10
.L_check_sudoku_46:
		ld %47, %2
		ld %48, %3
		mv %49, %47
		li %b, 9
		mul %49, %49, %b
		mv %t, %48
		add %49, %49, %t
		li %t, 8
		mul %49, %49, %t
		ld %t, %0
		add %49, %49, %t
		ld %50, %49
		bnez %50, .L_check_sudoku_52
		j .L_check_sudoku_54
.L_check_sudoku_52:
		j .L_check_sudoku_59
.L_check_sudoku_54:
		ld %55, %3
		li %t, 1
		add %56, %55, %t
		sd %56, %3
		j .L_check_sudoku_35
.L_check_sudoku_59:
		ld %60, %2
		ld %61, %3
		mv %62, %60
		li %b, 9
		mul %62, %62, %b
		mv %t, %61
		add %62, %62, %t
		li %t, 8
		mul %62, %62, %t
		ld %t, %0
		add %62, %62, %t
		ld %63, %62
		li %t, 1
		sub %64, %63, %t
		mv %65, %64
		li %t, 8
		mul %65, %65, %t
		li %t, ~%5
		add %65, %65, %t
		ld %66, %65
		li %t, 0
		sub %67, %t, %66
		seqz %67, %67
		bnez %67, .L_check_sudoku_69
		j .L_check_sudoku_78
.L_check_sudoku_69:
		ld %70, %2
		ld %71, %3
		mv %72, %70
		li %b, 9
		mul %72, %72, %b
		mv %t, %71
		add %72, %72, %t
		li %t, 8
		mul %72, %72, %t
		ld %t, %0
		add %72, %72, %t
		ld %73, %72
		li %t, 1
		sub %74, %73, %t
		mv %75, %74
		li %t, 8
		mul %75, %75, %t
		li %t, ~%5
		add %75, %75, %t
		li %t, 1
		sd %t, %75
		j .L_check_sudoku_81
.L_check_sudoku_78:
		li %t, 0
		sd %t, %ret.addr
		j .L_check_sudoku_exit
.L_check_sudoku_81:
		j .L_check_sudoku_54
.L_check_sudoku_83:
		ld %84, %2
		li %t, 9
		slt %85, %84, %t
		bnez %85, .L_check_sudoku_87
		j .L_check_sudoku_90
.L_check_sudoku_87:
		li %t, 0
		sd %t, %3
		j .L_check_sudoku_93
.L_check_sudoku_90:
		li %t, 0
		sd %t, %2
		j .L_check_sudoku_156
.L_check_sudoku_93:
		ld %94, %3
		li %t, 9
		slt %95, %94, %t
		bnez %95, .L_check_sudoku_97
		j .L_check_sudoku_105
.L_check_sudoku_97:
		ld %98, %3
		mv %99, %98
		li %t, 8
		mul %99, %99, %t
		li %t, ~%5
		add %99, %99, %t
		li %t, 0
		sd %t, %99
		ld %101, %3
		li %t, 1
		add %102, %101, %t
		sd %102, %3
		j .L_check_sudoku_93
.L_check_sudoku_105:
		li %t, 0
		sd %t, %3
		j .L_check_sudoku_108
.L_check_sudoku_108:
		ld %109, %3
		li %t, 9
		slt %110, %109, %t
		bnez %110, .L_check_sudoku_112
		j .L_check_sudoku_114
.L_check_sudoku_112:
		j .L_check_sudoku_119
.L_check_sudoku_114:
		ld %115, %2
		li %t, 1
		add %116, %115, %t
		sd %116, %2
		j .L_check_sudoku_83
.L_check_sudoku_119:
		ld %120, %3
		ld %121, %2
		mv %122, %120
		li %b, 9
		mul %122, %122, %b
		mv %t, %121
		add %122, %122, %t
		li %t, 8
		mul %122, %122, %t
		ld %t, %0
		add %122, %122, %t
		ld %123, %122
		bnez %123, .L_check_sudoku_125
		j .L_check_sudoku_127
.L_check_sudoku_125:
		j .L_check_sudoku_132
.L_check_sudoku_127:
		ld %128, %3
		li %t, 1
		add %129, %128, %t
		sd %129, %3
		j .L_check_sudoku_108
.L_check_sudoku_132:
		ld %133, %3
		ld %134, %2
		mv %135, %133
		li %b, 9
		mul %135, %135, %b
		mv %t, %134
		add %135, %135, %t
		li %t, 8
		mul %135, %135, %t
		ld %t, %0
		add %135, %135, %t
		ld %136, %135
		li %t, 1
		sub %137, %136, %t
		mv %138, %137
		li %t, 8
		mul %138, %138, %t
		li %t, ~%5
		add %138, %138, %t
		ld %139, %138
		li %t, 0
		sub %140, %t, %139
		seqz %140, %140
		bnez %140, .L_check_sudoku_142
		j .L_check_sudoku_151
.L_check_sudoku_142:
		ld %143, %3
		ld %144, %2
		mv %145, %143
		li %b, 9
		mul %145, %145, %b
		mv %t, %144
		add %145, %145, %t
		li %t, 8
		mul %145, %145, %t
		ld %t, %0
		add %145, %145, %t
		ld %146, %145
		li %t, 1
		sub %147, %146, %t
		mv %148, %147
		li %t, 8
		mul %148, %148, %t
		li %t, ~%5
		add %148, %148, %t
		li %t, 1
		sd %t, %148
		j .L_check_sudoku_154
.L_check_sudoku_151:
		li %t, 0
		sd %t, %ret.addr
		j .L_check_sudoku_exit
.L_check_sudoku_154:
		j .L_check_sudoku_127
.L_check_sudoku_156:
		ld %157, %2
		li %t, 3
		slt %158, %157, %t
		bnez %158, .L_check_sudoku_160
		j .L_check_sudoku_163
.L_check_sudoku_160:
		li %t, 0
		sd %t, %3
		j .L_check_sudoku_166
.L_check_sudoku_163:
		li %t, 1
		sd %t, %ret.addr
		j .L_check_sudoku_exit
.L_check_sudoku_166:
		ld %167, %3
		li %t, 3
		slt %168, %167, %t
		bnez %168, .L_check_sudoku_170
		j .L_check_sudoku_173
.L_check_sudoku_170:
		li %t, 0
		sd %t, %4
		j .L_check_sudoku_178
.L_check_sudoku_173:
		ld %174, %2
		li %t, 1
		add %175, %174, %t
		sd %175, %2
		j .L_check_sudoku_156
.L_check_sudoku_178:
		ld %179, %4
		li %t, 9
		slt %180, %179, %t
		bnez %180, .L_check_sudoku_182
		j .L_check_sudoku_190
.L_check_sudoku_182:
		ld %183, %4
		mv %184, %183
		li %t, 8
		mul %184, %184, %t
		li %t, ~%5
		add %184, %184, %t
		li %t, 0
		sd %t, %184
		ld %186, %4
		li %t, 1
		add %187, %186, %t
		sd %187, %4
		j .L_check_sudoku_178
.L_check_sudoku_190:
		li %t, 0
		sd %t, %4
		j .L_check_sudoku_193
.L_check_sudoku_193:
		ld %194, %4
		li %t, 3
		slt %195, %194, %t
		bnez %195, .L_check_sudoku_197
		j .L_check_sudoku_200
.L_check_sudoku_197:
		li %t, 0
		sd %t, %7
		j .L_check_sudoku_205
.L_check_sudoku_200:
		ld %201, %3
		li %t, 1
		add %202, %201, %t
		sd %202, %3
		j .L_check_sudoku_166
.L_check_sudoku_205:
		ld %206, %7
		li %t, 3
		slt %207, %206, %t
		bnez %207, .L_check_sudoku_209
		j .L_check_sudoku_222
.L_check_sudoku_209:
		ld %210, %2
		li %t, 3
		mul %211, %210, %t
		ld %212, %4
		add %213, %211, %212
		ld %214, %3
		li %t, 3
		mul %215, %214, %t
		ld %216, %7
		add %217, %215, %216
		mv %218, %213
		li %b, 9
		mul %218, %218, %b
		mv %t, %217
		add %218, %218, %t
		li %t, 8
		mul %218, %218, %t
		ld %t, %0
		add %218, %218, %t
		ld %219, %218
		sd %219, %8
		j .L_check_sudoku_227
.L_check_sudoku_222:
		ld %223, %4
		li %t, 1
		add %224, %223, %t
		sd %224, %4
		j .L_check_sudoku_193
.L_check_sudoku_227:
		ld %228, %8
		bnez %228, .L_check_sudoku_230
		j .L_check_sudoku_232
.L_check_sudoku_230:
		j .L_check_sudoku_237
.L_check_sudoku_232:
		ld %233, %7
		li %t, 1
		add %234, %233, %t
		sd %234, %7
		j .L_check_sudoku_205
.L_check_sudoku_237:
		ld %238, %8
		li %t, 1
		sub %239, %238, %t
		mv %240, %239
		li %t, 8
		mul %240, %240, %t
		li %t, ~%5
		add %240, %240, %t
		ld %241, %240
		li %t, 0
		sub %242, %t, %241
		seqz %242, %242
		bnez %242, .L_check_sudoku_244
		j .L_check_sudoku_250
.L_check_sudoku_244:
		ld %245, %8
		li %t, 1
		sub %246, %245, %t
		mv %247, %246
		li %t, 8
		mul %247, %247, %t
		li %t, ~%5
		add %247, %247, %t
		li %t, 1
		sd %t, %247
		j .L_check_sudoku_253
.L_check_sudoku_250:
		li %t, 0
		sd %t, %ret.addr
		j .L_check_sudoku_exit
.L_check_sudoku_253:
		j .L_check_sudoku_232
.L_check_sudoku_exit:
		ld %255, %ret.addr
		mv a0, %255
		ld ra, %ra
		ret
		.size check_sudoku, .-check_sudoku
		.align 1
		.globl solve_sudoku
		.type solve_sudoku, @function
solve_sudoku:
		sd ra, %ra
.L_solve_sudoku_entry:
		li %t, 1
		sd %t, %4
		li %t, 0
		sd %t, %0
		j .L_solve_sudoku_8
.L_solve_sudoku_8:
		ld %9, %0
		li %t, 9
		slt %10, %9, %t
		bnez %10, .L_solve_sudoku_12
		j .L_solve_sudoku_18
.L_solve_sudoku_12:
		ld %13, %4
		bnez %13, .L_solve_sudoku_15
		j .L_solve_sudoku_18
.L_solve_sudoku_15:
		li %t, 0
		sd %t, %1
		j .L_solve_sudoku_20
.L_solve_sudoku_18:
		j .L_solve_sudoku_53
.L_solve_sudoku_20:
		ld %21, %1
		li %t, 9
		slt %22, %21, %t
		bnez %22, .L_solve_sudoku_24
		j .L_solve_sudoku_29
.L_solve_sudoku_24:
		ld %25, %4
		bnez %25, .L_solve_sudoku_27
		j .L_solve_sudoku_29
.L_solve_sudoku_27:
		j .L_solve_sudoku_34
.L_solve_sudoku_29:
		ld %30, %0
		li %t, 1
		add %31, %30, %t
		sd %31, %0
		j .L_solve_sudoku_8
.L_solve_sudoku_34:
		ld %35, %0
		ld %36, %1
		mv %37, %35
		li %b, 9
		mul %37, %37, %b
		mv %t, %36
		add %37, %37, %t
		li %t, 8
		mul %37, %37, %t
		la %t, @a
		add $%37, %37, %t
		ld %38, %37
		li %t, 0
		sub %39, %38, %t
		seqz %39, %39
		bnez %39, .L_solve_sudoku_41
		j .L_solve_sudoku_48
.L_solve_sudoku_41:
		li %t, 0
		sd %t, %4
		ld %43, %0
		sd %43, %2
		ld %45, %1
		sd %45, %3
		j .L_solve_sudoku_48
.L_solve_sudoku_48:
		ld %49, %1
		li %t, 1
		add %50, %49, %t
		sd %50, %1
		j .L_solve_sudoku_20
.L_solve_sudoku_53:
		ld %54, %4
		bnez %54, .L_solve_sudoku_56
		j .L_solve_sudoku_60
.L_solve_sudoku_56:
		la %t, @a
		sub %t, %t, sp
		mv a0, %t
		sd %t, -8(sp)
		call check_sudoku
		mv %57, a0
		sd %57, %ret.addr
		j .L_solve_sudoku_exit
.L_solve_sudoku_60:
		li %t, 1
		sd %t, %0
		j .L_solve_sudoku_63
.L_solve_sudoku_63:
		ld %64, %0
		li %t, 9
		slt %65, %t, %64
		xori %65, %65, 1
		bnez %65, .L_solve_sudoku_67
		j .L_solve_sudoku_74
.L_solve_sudoku_67:
		ld %68, %2
		ld %69, %3
		mv %70, %68
		li %b, 9
		mul %70, %70, %b
		mv %t, %69
		add %70, %70, %t
		li %t, 8
		mul %70, %70, %t
		la %t, @a
		add $%70, %70, %t
		ld %71, %0
		sd %71, %70
		j .L_solve_sudoku_81
.L_solve_sudoku_74:
		ld %75, %2
		ld %76, %3
		mv %77, %75
		li %b, 9
		mul %77, %77, %b
		mv %t, %76
		add %77, %77, %t
		li %t, 8
		mul %77, %77, %t
		la %t, @a
		add $%77, %77, %t
		li %t, 0
		sd %t, %77
		li %t, 0
		sd %t, %ret.addr
		j .L_solve_sudoku_exit
.L_solve_sudoku_81:
		la %t, @a
		sub %t, %t, sp
		mv a0, %t
		sd %t, -8(sp)
		call check_sudoku
		mv %82, a0
		bnez %82, .L_solve_sudoku_84
		j .L_solve_sudoku_86
.L_solve_sudoku_84:
		j .L_solve_sudoku_91
.L_solve_sudoku_86:
		ld %87, %0
		li %t, 1
		add %88, %87, %t
		sd %88, %0
		j .L_solve_sudoku_63
.L_solve_sudoku_91:
		call solve_sudoku
		mv %92, a0
		bnez %92, .L_solve_sudoku_94
		j .L_solve_sudoku_97
.L_solve_sudoku_94:
		li %t, 1
		sd %t, %ret.addr
		j .L_solve_sudoku_exit
.L_solve_sudoku_97:
		j .L_solve_sudoku_86
.L_solve_sudoku_exit:
		ld %99, %ret.addr
		mv a0, %99
		ld ra, %ra
		ret
		.size solve_sudoku, .-solve_sudoku
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 0
		sd %t, %0
		li %t, 0
		sd %t, %2
		li %t, 0
		sd %t, %4
		j .L_main_7
.L_main_7:
		ld %8, %0
		li %t, 9
		slt %9, %8, %t
		bnez %9, .L_main_11
		j .L_main_14
.L_main_11:
		li %t, 0
		sd %t, %2
		j .L_main_16
.L_main_14:
		j .L_main_70
.L_main_16:
		ld %17, %2
		li %t, 9
		slt %18, %17, %t
		bnez %18, .L_main_20
		j .L_main_27
.L_main_20:
		ld %21, %0
		ld %22, %2
		mv %23, %21
		li %b, 9
		mul %23, %23, %b
		mv %t, %22
		add %23, %23, %t
		li %t, 8
		mul %23, %23, %t
		la %t, @a
		add $%23, %23, %t
		call getint
		mv %24, a0
		sd %24, %23
		j .L_main_32
.L_main_27:
		ld %28, %0
		li %t, 1
		add %29, %28, %t
		sd %29, %0
		j .L_main_7
.L_main_32:
		ld %33, %0
		ld %34, %2
		mv %35, %33
		li %b, 9
		mul %35, %35, %b
		mv %t, %34
		add %35, %35, %t
		li %t, 8
		mul %35, %35, %t
		la %t, @a
		add $%35, %35, %t
		ld %36, %35
		li %t, 0
		slt %37, %36, %t
		bnez %37, .L_main_46
		j .L_main_39
.L_main_39:
		ld %40, %0
		ld %41, %2
		mv %42, %40
		li %b, 9
		mul %42, %42, %b
		mv %t, %41
		add %42, %42, %t
		li %t, 8
		mul %42, %42, %t
		la %t, @a
		add $%42, %42, %t
		ld %43, %42
		li %t, 9
		slt %44, %t, %43
		bnez %44, .L_main_46
		j .L_main_51
.L_main_46:
		li %t, 0
		mv a0, %t
		sd %t, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_51:
		j .L_main_58
.L_main_53:
		ld %54, %2
		li %t, 1
		add %55, %54, %t
		sd %55, %2
		j .L_main_16
.L_main_58:
		ld %59, %0
		ld %60, %2
		mv %61, %59
		li %b, 9
		mul %61, %61, %b
		mv %t, %60
		add %61, %61, %t
		li %t, 8
		mul %61, %61, %t
		la %t, @a
		add $%61, %61, %t
		ld %62, %61
		li %t, 0
		sub %63, %62, %t
		seqz %63, %63
		bnez %63, .L_main_65
		j .L_main_68
.L_main_65:
		li %t, 1
		sd %t, %4
		j .L_main_68
.L_main_68:
		j .L_main_53
.L_main_70:
		ld %71, %4
		bnez %71, .L_main_73
		j .L_main_75
.L_main_73:
		j .L_main_80
.L_main_75:
		j .L_main_121
.L_main_77:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_80:
		call solve_sudoku
		mv %81, a0
		bnez %81, .L_main_83
		j .L_main_86
.L_main_83:
		li %t, 0
		sd %t, %0
		j .L_main_92
.L_main_86:
		li %t, 0
		mv a0, %t
		sd %t, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		j .L_main_90
.L_main_90:
		j .L_main_77
.L_main_92:
		ld %93, %0
		li %t, 9
		slt %94, %93, %t
		bnez %94, .L_main_96
		j .L_main_99
.L_main_96:
		li %t, 0
		sd %t, %2
		j .L_main_101
.L_main_99:
		j .L_main_90
.L_main_101:
		ld %102, %2
		li %t, 9
		slt %103, %102, %t
		bnez %103, .L_main_105
		j .L_main_116
.L_main_105:
		ld %106, %0
		ld %107, %2
		mv %108, %106
		li %b, 9
		mul %108, %108, %b
		mv %t, %107
		add %108, %108, %t
		li %t, 8
		mul %108, %108, %t
		la %t, @a
		add $%108, %108, %t
		ld %109, %108
		mv a0, %109
		sd %109, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %112, %2
		li %t, 1
		add %113, %112, %t
		sd %113, %2
		j .L_main_101
.L_main_116:
		ld %117, %0
		li %t, 1
		add %118, %117, %t
		sd %118, %0
		j .L_main_92
.L_main_121:
		la %t, @a
		sub %t, %t, sp
		mv a0, %t
		sd %t, -8(sp)
		call check_sudoku
		mv %122, a0
		bnez %122, .L_main_124
		j .L_main_128
.L_main_124:
		li %t, 1
		mv a0, %t
		sd %t, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		j .L_main_132
.L_main_128:
		li %t, 0
		mv a0, %t
		sd %t, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		j .L_main_132
.L_main_132:
		j .L_main_77
.L_main_exit:
		ld %134, %ret.addr
		mv a0, %134
		ld ra, %ra
		ret
		.size main, .-main
