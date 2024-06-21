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
		addi sp, sp, -192
		sd ra, 176(sp)
.L_check_sudoku_entry:
		ld t0, 184(sp)
		li t1, 192
		add t0, t0, t1
		sd t0, 184(sp)
		li t0, 0
		sd t0, 104(sp)
		j .L_check_sudoku_10
.L_check_sudoku_10:
		ld t0, 104(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_14
		j .L_check_sudoku_17
.L_check_sudoku_14:
		li t0, 0
		sd t0, 96(sp)
		j .L_check_sudoku_20
.L_check_sudoku_17:
		li t0, 0
		sd t0, 104(sp)
		j .L_check_sudoku_83
.L_check_sudoku_20:
		ld t0, 96(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_24
		j .L_check_sudoku_32
.L_check_sudoku_24:
		ld t0, 96(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		li t1, 0
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 96(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 96(sp)
		j .L_check_sudoku_20
.L_check_sudoku_32:
		li t0, 0
		sd t0, 96(sp)
		j .L_check_sudoku_35
.L_check_sudoku_35:
		ld t0, 96(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_39
		j .L_check_sudoku_41
.L_check_sudoku_39:
		j .L_check_sudoku_46
.L_check_sudoku_41:
		ld t0, 104(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 104(sp)
		j .L_check_sudoku_10
.L_check_sudoku_46:
		ld t0, 104(sp)
		ld t1, 96(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		ld t1, 184(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		bnez t0, .L_check_sudoku_52
		j .L_check_sudoku_54
.L_check_sudoku_52:
		j .L_check_sudoku_59
.L_check_sudoku_54:
		ld t0, 96(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 96(sp)
		j .L_check_sudoku_35
.L_check_sudoku_59:
		ld t0, 104(sp)
		ld t1, 96(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		ld t1, 184(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		li t1, 1
		sub t0, t0, t1
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		li t1, 0
		sub t0, t1, t0
		seqz t0, t0
		bnez t0, .L_check_sudoku_69
		j .L_check_sudoku_78
.L_check_sudoku_69:
		ld t0, 104(sp)
		ld t1, 96(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		ld t1, 184(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		li t1, 1
		sub t0, t0, t1
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		li t1, 1
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_check_sudoku_81
.L_check_sudoku_78:
		li t0, 0
		sd t0, 112(sp)
		j .L_check_sudoku_exit
.L_check_sudoku_81:
		j .L_check_sudoku_54
.L_check_sudoku_83:
		ld t0, 104(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_87
		j .L_check_sudoku_90
.L_check_sudoku_87:
		li t0, 0
		sd t0, 96(sp)
		j .L_check_sudoku_93
.L_check_sudoku_90:
		li t0, 0
		sd t0, 104(sp)
		j .L_check_sudoku_156
.L_check_sudoku_93:
		ld t0, 96(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_97
		j .L_check_sudoku_105
.L_check_sudoku_97:
		ld t0, 96(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		li t1, 0
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 96(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 96(sp)
		j .L_check_sudoku_93
.L_check_sudoku_105:
		li t0, 0
		sd t0, 96(sp)
		j .L_check_sudoku_108
.L_check_sudoku_108:
		ld t0, 96(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_112
		j .L_check_sudoku_114
.L_check_sudoku_112:
		j .L_check_sudoku_119
.L_check_sudoku_114:
		ld t0, 104(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 104(sp)
		j .L_check_sudoku_83
.L_check_sudoku_119:
		ld t0, 96(sp)
		ld t1, 104(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		ld t1, 184(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		bnez t0, .L_check_sudoku_125
		j .L_check_sudoku_127
.L_check_sudoku_125:
		j .L_check_sudoku_132
.L_check_sudoku_127:
		ld t0, 96(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 96(sp)
		j .L_check_sudoku_108
.L_check_sudoku_132:
		ld t0, 96(sp)
		ld t1, 104(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		ld t1, 184(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		li t1, 1
		sub t0, t0, t1
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		li t1, 0
		sub t0, t1, t0
		seqz t0, t0
		bnez t0, .L_check_sudoku_142
		j .L_check_sudoku_151
.L_check_sudoku_142:
		ld t0, 96(sp)
		ld t1, 104(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		ld t1, 184(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		li t1, 1
		sub t0, t0, t1
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		li t1, 1
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_check_sudoku_154
.L_check_sudoku_151:
		li t0, 0
		sd t0, 112(sp)
		j .L_check_sudoku_exit
.L_check_sudoku_154:
		j .L_check_sudoku_127
.L_check_sudoku_156:
		ld t0, 104(sp)
		li t1, 3
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_160
		j .L_check_sudoku_163
.L_check_sudoku_160:
		li t0, 0
		sd t0, 96(sp)
		j .L_check_sudoku_166
.L_check_sudoku_163:
		li t0, 1
		sd t0, 112(sp)
		j .L_check_sudoku_exit
.L_check_sudoku_166:
		ld t0, 96(sp)
		li t1, 3
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_170
		j .L_check_sudoku_173
.L_check_sudoku_170:
		li t0, 0
		sd t0, 88(sp)
		j .L_check_sudoku_178
.L_check_sudoku_173:
		ld t0, 104(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 104(sp)
		j .L_check_sudoku_156
.L_check_sudoku_178:
		ld t0, 88(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_182
		j .L_check_sudoku_190
.L_check_sudoku_182:
		ld t0, 88(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		li t1, 0
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 88(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 88(sp)
		j .L_check_sudoku_178
.L_check_sudoku_190:
		li t0, 0
		sd t0, 88(sp)
		j .L_check_sudoku_193
.L_check_sudoku_193:
		ld t0, 88(sp)
		li t1, 3
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_197
		j .L_check_sudoku_200
.L_check_sudoku_197:
		li t0, 0
		sd t0, 8(sp)
		j .L_check_sudoku_205
.L_check_sudoku_200:
		ld t0, 96(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 96(sp)
		j .L_check_sudoku_166
.L_check_sudoku_205:
		ld t0, 8(sp)
		li t1, 3
		slt t0, t0, t1
		bnez t0, .L_check_sudoku_209
		j .L_check_sudoku_222
.L_check_sudoku_209:
		ld t0, 104(sp)
		li t1, 3
		mul t0, t0, t1
		ld t1, 88(sp)
		add t0, t0, t1
		ld t1, 96(sp)
		li t2, 3
		mul t1, t1, t2
		ld t2, 8(sp)
		add t1, t1, t2
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		ld t1, 184(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		sd t0, 0(sp)
		j .L_check_sudoku_227
.L_check_sudoku_222:
		ld t0, 88(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 88(sp)
		j .L_check_sudoku_193
.L_check_sudoku_227:
		ld t0, 0(sp)
		bnez t0, .L_check_sudoku_230
		j .L_check_sudoku_232
.L_check_sudoku_230:
		j .L_check_sudoku_237
.L_check_sudoku_232:
		ld t0, 8(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_check_sudoku_205
.L_check_sudoku_237:
		ld t0, 0(sp)
		li t1, 1
		sub t0, t0, t1
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		li t1, 0
		sub t0, t1, t0
		seqz t0, t0
		bnez t0, .L_check_sudoku_244
		j .L_check_sudoku_250
.L_check_sudoku_244:
		ld t0, 0(sp)
		li t1, 1
		sub t0, t0, t1
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 16
		add t0, t0, t1
		li t1, 1
		add t0, t0, sp
		sd t1, 0(t0)
		j .L_check_sudoku_253
.L_check_sudoku_250:
		li t0, 0
		sd t0, 112(sp)
		j .L_check_sudoku_exit
.L_check_sudoku_253:
		j .L_check_sudoku_232
.L_check_sudoku_exit:
		ld t0, 112(sp)
		mv a0, t0
		ld ra, 176(sp)
		addi sp, sp, 192
		ret
		.size check_sudoku, .-check_sudoku
		.align 1
		.globl solve_sudoku
		.type solve_sudoku, @function
solve_sudoku:
		addi sp, sp, -112
		sd ra, 104(sp)
.L_solve_sudoku_entry:
		li t0, 1
		sd t0, 0(sp)
		li t0, 0
		sd t0, 32(sp)
		j .L_solve_sudoku_8
.L_solve_sudoku_8:
		ld t0, 32(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_solve_sudoku_12
		j .L_solve_sudoku_18
.L_solve_sudoku_12:
		ld t0, 0(sp)
		bnez t0, .L_solve_sudoku_15
		j .L_solve_sudoku_18
.L_solve_sudoku_15:
		li t0, 0
		sd t0, 24(sp)
		j .L_solve_sudoku_20
.L_solve_sudoku_18:
		j .L_solve_sudoku_53
.L_solve_sudoku_20:
		ld t0, 24(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_solve_sudoku_24
		j .L_solve_sudoku_29
.L_solve_sudoku_24:
		ld t0, 0(sp)
		bnez t0, .L_solve_sudoku_27
		j .L_solve_sudoku_29
.L_solve_sudoku_27:
		j .L_solve_sudoku_34
.L_solve_sudoku_29:
		ld t0, 32(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 32(sp)
		j .L_solve_sudoku_8
.L_solve_sudoku_34:
		ld t0, 32(sp)
		ld t1, 24(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		ld t0, 0(t0)
		li t1, 0
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_solve_sudoku_41
		j .L_solve_sudoku_48
.L_solve_sudoku_41:
		li t0, 0
		sd t0, 0(sp)
		ld t0, 32(sp)
		sd t0, 16(sp)
		ld t0, 24(sp)
		sd t0, 8(sp)
		j .L_solve_sudoku_48
.L_solve_sudoku_48:
		ld t0, 24(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 24(sp)
		j .L_solve_sudoku_20
.L_solve_sudoku_53:
		ld t0, 0(sp)
		bnez t0, .L_solve_sudoku_56
		j .L_solve_sudoku_60
.L_solve_sudoku_56:
		la t0, a
		sub t0, t0, sp
		mv a0, t0
		sd t0, -8(sp)
		call check_sudoku
		mv t0, a0
		sd t0, 40(sp)
		j .L_solve_sudoku_exit
.L_solve_sudoku_60:
		li t0, 1
		sd t0, 32(sp)
		j .L_solve_sudoku_63
.L_solve_sudoku_63:
		ld t0, 32(sp)
		li t1, 9
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_solve_sudoku_67
		j .L_solve_sudoku_74
.L_solve_sudoku_67:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		ld t1, 32(sp)
		sd t1, 0(t0)
		j .L_solve_sudoku_81
.L_solve_sudoku_74:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		li t1, 0
		sd t1, 0(t0)
		li t0, 0
		sd t0, 40(sp)
		j .L_solve_sudoku_exit
.L_solve_sudoku_81:
		la t0, a
		sub t0, t0, sp
		mv a0, t0
		sd t0, -8(sp)
		call check_sudoku
		mv t0, a0
		bnez t0, .L_solve_sudoku_84
		j .L_solve_sudoku_86
.L_solve_sudoku_84:
		j .L_solve_sudoku_91
.L_solve_sudoku_86:
		ld t0, 32(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 32(sp)
		j .L_solve_sudoku_63
.L_solve_sudoku_91:
		call solve_sudoku
		mv t0, a0
		bnez t0, .L_solve_sudoku_94
		j .L_solve_sudoku_97
.L_solve_sudoku_94:
		li t0, 1
		sd t0, 40(sp)
		j .L_solve_sudoku_exit
.L_solve_sudoku_97:
		j .L_solve_sudoku_86
.L_solve_sudoku_exit:
		ld t0, 40(sp)
		mv a0, t0
		ld ra, 104(sp)
		addi sp, sp, 112
		ret
		.size solve_sudoku, .-solve_sudoku
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -96
		sd ra, 88(sp)
.L_main_entry:
		li t0, 0
		sd t0, 16(sp)
		li t0, 0
		sd t0, 8(sp)
		li t0, 0
		sd t0, 0(sp)
		j .L_main_7
.L_main_7:
		ld t0, 16(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_main_11
		j .L_main_14
.L_main_11:
		li t0, 0
		sd t0, 8(sp)
		j .L_main_16
.L_main_14:
		j .L_main_70
.L_main_16:
		ld t0, 8(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_main_20
		j .L_main_27
.L_main_20:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		sd t0, 80(sp)
		call getint
		ld t0, 80(sp)
		mv t1, a0
		sd t1, 0(t0)
		j .L_main_32
.L_main_27:
		ld t0, 16(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_main_7
.L_main_32:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		ld t0, 0(t0)
		li t1, 0
		slt t0, t0, t1
		bnez t0, .L_main_46
		j .L_main_39
.L_main_39:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		ld t0, 0(t0)
		li t1, 9
		slt t0, t1, t0
		bnez t0, .L_main_46
		j .L_main_51
.L_main_46:
		li t0, 0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		li t0, 0
		sd t0, 24(sp)
		j .L_main_exit
.L_main_51:
		j .L_main_58
.L_main_53:
		ld t0, 8(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_main_16
.L_main_58:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		ld t0, 0(t0)
		li t1, 0
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_main_65
		j .L_main_68
.L_main_65:
		li t0, 1
		sd t0, 0(sp)
		j .L_main_68
.L_main_68:
		j .L_main_53
.L_main_70:
		ld t0, 0(sp)
		bnez t0, .L_main_73
		j .L_main_75
.L_main_73:
		j .L_main_80
.L_main_75:
		j .L_main_121
.L_main_77:
		li t0, 0
		sd t0, 24(sp)
		j .L_main_exit
.L_main_80:
		call solve_sudoku
		mv t0, a0
		bnez t0, .L_main_83
		j .L_main_86
.L_main_83:
		li t0, 0
		sd t0, 16(sp)
		j .L_main_92
.L_main_86:
		li t0, 0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		j .L_main_90
.L_main_90:
		j .L_main_77
.L_main_92:
		ld t0, 16(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_main_96
		j .L_main_99
.L_main_96:
		li t0, 0
		sd t0, 8(sp)
		j .L_main_101
.L_main_99:
		j .L_main_90
.L_main_101:
		ld t0, 8(sp)
		li t1, 9
		slt t0, t0, t1
		bnez t0, .L_main_105
		j .L_main_116
.L_main_105:
		ld t0, 16(sp)
		ld t1, 8(sp)
		mv t0, t0
		li t2, 9
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, a
		add t0, t0, t1
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, 8(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_main_101
.L_main_116:
		ld t0, 16(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 16(sp)
		j .L_main_92
.L_main_121:
		la t0, a
		sub t0, t0, sp
		mv a0, t0
		sd t0, -8(sp)
		call check_sudoku
		mv t0, a0
		bnez t0, .L_main_124
		j .L_main_128
.L_main_124:
		li t0, 1
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		j .L_main_132
.L_main_128:
		li t0, 0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		j .L_main_132
.L_main_132:
		j .L_main_77
.L_main_exit:
		ld t0, 24(sp)
		mv a0, t0
		ld ra, 88(sp)
		addi sp, sp, 96
		ret
		.size main, .-main
