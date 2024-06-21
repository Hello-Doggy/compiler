		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 5
		sd %t, %0
		li %t, 0
		sd %t, %4
		j .L_main_14
.L_main_14:
		ld %15, %4
		ld %16, %0
		slt %17, %15, %16
		bnez %17, .L_main_19
		j .L_main_28
.L_main_19:
		ld %20, %4
		mv %21, %20
		li %t, 8
		mul %21, %21, %t
		li %t, ~%2
		add %21, %21, %t
		call getint
		mv %22, a0
		sd %22, %21
		ld %24, %4
		li %t, 1
		add %25, %24, %t
		sd %25, %4
		j .L_main_14
.L_main_28:
		li %t, 1
		sd %t, %5
		j .L_main_31
.L_main_31:
		ld %32, %5
		ld %33, %0
		slt %34, %32, %33
		bnez %34, .L_main_36
		j .L_main_39
.L_main_36:
		li %t, 0
		sd %t, %4
		j .L_main_42
.L_main_39:
		li %t, 0
		sd %t, %4
		j .L_main_324
.L_main_42:
		ld %43, %4
		ld %44, %0
		ld %45, %5
		li %t, 2
		mul %46, %t, %45
		sub %47, %44, %46
		slt %48, %47, %43
		xori %48, %48, 1
		bnez %48, .L_main_50
		j .L_main_68
.L_main_50:
		ld %51, %4
		sd %51, %6
		ld %53, %6
		ld %54, %5
		add %55, %53, %54
		sd %55, %7
		ld %57, %6
		sd %57, %8
		ld %59, %7
		sd %59, %9
		ld %61, %9
		ld %62, %5
		add %63, %61, %62
		sd %63, %10
		ld %65, %9
		sd %65, %11
		j .L_main_70
.L_main_68:
		j .L_main_162
.L_main_70:
		ld %71, %8
		ld %72, %7
		slt %73, %71, %72
		bnez %73, .L_main_75
		j .L_main_82
.L_main_75:
		ld %76, %11
		ld %77, %10
		slt %78, %76, %77
		bnez %78, .L_main_80
		j .L_main_82
.L_main_80:
		j .L_main_84
.L_main_82:
		j .L_main_120
.L_main_84:
		ld %85, %8
		mv %86, %85
		li %t, 8
		mul %86, %86, %t
		li %t, ~%2
		add %86, %86, %t
		ld %87, %86
		ld %88, %11
		mv %89, %88
		li %t, 8
		mul %89, %89, %t
		li %t, ~%2
		add %89, %89, %t
		ld %90, %89
		slt %91, %87, %90
		bnez %91, .L_main_93
		j .L_main_104
.L_main_93:
		ld %94, %4
		mv %95, %94
		li %t, 8
		mul %95, %95, %t
		li %t, ~%3
		add %95, %95, %t
		ld %96, %8
		mv %97, %96
		li %t, 8
		mul %97, %97, %t
		li %t, ~%2
		add %97, %97, %t
		ld %98, %97
		sd %98, %95
		ld %100, %8
		li %t, 1
		add %101, %100, %t
		sd %101, %8
		j .L_main_115
.L_main_104:
		ld %105, %4
		mv %106, %105
		li %t, 8
		mul %106, %106, %t
		li %t, ~%3
		add %106, %106, %t
		ld %107, %11
		mv %108, %107
		li %t, 8
		mul %108, %108, %t
		li %t, ~%2
		add %108, %108, %t
		ld %109, %108
		sd %109, %106
		ld %111, %11
		li %t, 1
		add %112, %111, %t
		sd %112, %11
		j .L_main_115
.L_main_115:
		ld %116, %4
		li %t, 1
		add %117, %116, %t
		sd %117, %4
		j .L_main_70
.L_main_120:
		ld %121, %8
		ld %122, %7
		slt %123, %121, %122
		bnez %123, .L_main_125
		j .L_main_139
.L_main_125:
		ld %126, %4
		mv %127, %126
		li %t, 8
		mul %127, %127, %t
		li %t, ~%3
		add %127, %127, %t
		ld %128, %8
		mv %129, %128
		li %t, 8
		mul %129, %129, %t
		li %t, ~%2
		add %129, %129, %t
		ld %130, %129
		sd %130, %127
		ld %132, %8
		li %t, 1
		add %133, %132, %t
		sd %133, %8
		ld %135, %4
		li %t, 1
		add %136, %135, %t
		sd %136, %4
		j .L_main_120
.L_main_139:
		j .L_main_141
.L_main_141:
		ld %142, %11
		ld %143, %10
		slt %144, %142, %143
		bnez %144, .L_main_146
		j .L_main_160
.L_main_146:
		ld %147, %4
		mv %148, %147
		li %t, 8
		mul %148, %148, %t
		li %t, ~%3
		add %148, %148, %t
		ld %149, %11
		mv %150, %149
		li %t, 8
		mul %150, %150, %t
		li %t, ~%2
		add %150, %150, %t
		ld %151, %150
		sd %151, %148
		ld %153, %11
		li %t, 1
		add %154, %153, %t
		sd %154, %11
		ld %156, %4
		li %t, 1
		add %157, %156, %t
		sd %157, %4
		j .L_main_141
.L_main_160:
		j .L_main_42
.L_main_162:
		ld %163, %4
		ld %164, %5
		add %165, %163, %164
		ld %166, %0
		slt %167, %165, %166
		bnez %167, .L_main_169
		j .L_main_185
.L_main_169:
		ld %170, %4
		sd %170, %6
		ld %172, %6
		ld %173, %5
		add %174, %172, %173
		sd %174, %7
		ld %176, %6
		sd %176, %8
		ld %178, %7
		sd %178, %9
		ld %180, %0
		sd %180, %10
		ld %182, %9
		sd %182, %11
		j .L_main_190
.L_main_185:
		j .L_main_285
.L_main_187:
		li %t, 0
		sd %t, %4
		j .L_main_303
.L_main_190:
		ld %191, %8
		ld %192, %7
		slt %193, %191, %192
		bnez %193, .L_main_195
		j .L_main_202
.L_main_195:
		ld %196, %11
		ld %197, %10
		slt %198, %196, %197
		bnez %198, .L_main_200
		j .L_main_202
.L_main_200:
		j .L_main_204
.L_main_202:
		j .L_main_243
.L_main_204:
		ld %205, %8
		mv %206, %205
		li %t, 8
		mul %206, %206, %t
		li %t, ~%2
		add %206, %206, %t
		ld %207, %206
		ld %208, %11
		mv %209, %208
		li %t, 8
		mul %209, %209, %t
		li %t, ~%2
		add %209, %209, %t
		ld %210, %209
		slt %211, %207, %210
		bnez %211, .L_main_213
		j .L_main_227
.L_main_213:
		ld %214, %4
		mv %215, %214
		li %t, 8
		mul %215, %215, %t
		li %t, ~%3
		add %215, %215, %t
		ld %216, %8
		mv %217, %216
		li %t, 8
		mul %217, %217, %t
		li %t, ~%2
		add %217, %217, %t
		ld %218, %217
		sd %218, %215
		ld %220, %8
		li %t, 1
		add %221, %220, %t
		sd %221, %8
		ld %223, %4
		li %t, 1
		add %224, %223, %t
		sd %224, %4
		j .L_main_241
.L_main_227:
		ld %228, %4
		mv %229, %228
		li %t, 8
		mul %229, %229, %t
		li %t, ~%3
		add %229, %229, %t
		ld %230, %11
		mv %231, %230
		li %t, 8
		mul %231, %231, %t
		li %t, ~%2
		add %231, %231, %t
		ld %232, %231
		sd %232, %229
		ld %234, %11
		li %t, 1
		add %235, %234, %t
		sd %235, %11
		ld %237, %4
		li %t, 1
		add %238, %237, %t
		sd %238, %4
		j .L_main_241
.L_main_241:
		j .L_main_190
.L_main_243:
		ld %244, %8
		ld %245, %7
		slt %246, %244, %245
		bnez %246, .L_main_248
		j .L_main_262
.L_main_248:
		ld %249, %4
		mv %250, %249
		li %t, 8
		mul %250, %250, %t
		li %t, ~%3
		add %250, %250, %t
		ld %251, %8
		mv %252, %251
		li %t, 8
		mul %252, %252, %t
		li %t, ~%2
		add %252, %252, %t
		ld %253, %252
		sd %253, %250
		ld %255, %8
		li %t, 1
		add %256, %255, %t
		sd %256, %8
		ld %258, %4
		li %t, 1
		add %259, %258, %t
		sd %259, %4
		j .L_main_243
.L_main_262:
		j .L_main_264
.L_main_264:
		ld %265, %11
		ld %266, %10
		slt %267, %265, %266
		bnez %267, .L_main_269
		j .L_main_283
.L_main_269:
		ld %270, %4
		mv %271, %270
		li %t, 8
		mul %271, %271, %t
		li %t, ~%3
		add %271, %271, %t
		ld %272, %11
		mv %273, %272
		li %t, 8
		mul %273, %273, %t
		li %t, ~%2
		add %273, %273, %t
		ld %274, %273
		sd %274, %271
		ld %276, %11
		li %t, 1
		add %277, %276, %t
		sd %277, %11
		ld %279, %4
		li %t, 1
		add %280, %279, %t
		sd %280, %4
		j .L_main_264
.L_main_283:
		j .L_main_187
.L_main_285:
		ld %286, %4
		ld %287, %0
		slt %288, %286, %287
		bnez %288, .L_main_290
		j .L_main_301
.L_main_290:
		ld %291, %4
		mv %292, %291
		li %t, 8
		mul %292, %292, %t
		li %t, ~%3
		add %292, %292, %t
		ld %293, %4
		mv %294, %293
		li %t, 8
		mul %294, %294, %t
		li %t, ~%2
		add %294, %294, %t
		ld %295, %294
		sd %295, %292
		ld %297, %4
		li %t, 1
		add %298, %297, %t
		sd %298, %4
		j .L_main_285
.L_main_301:
		j .L_main_187
.L_main_303:
		ld %304, %4
		ld %305, %0
		slt %306, %304, %305
		bnez %306, .L_main_308
		j .L_main_319
.L_main_308:
		ld %309, %4
		mv %310, %309
		li %t, 8
		mul %310, %310, %t
		li %t, ~%2
		add %310, %310, %t
		ld %311, %4
		mv %312, %311
		li %t, 8
		mul %312, %312, %t
		li %t, ~%3
		add %312, %312, %t
		ld %313, %312
		sd %313, %310
		ld %315, %4
		li %t, 1
		add %316, %315, %t
		sd %316, %4
		j .L_main_303
.L_main_319:
		ld %320, %5
		li %t, 2
		mul %321, %320, %t
		sd %321, %5
		j .L_main_31
.L_main_324:
		ld %325, %4
		ld %326, %0
		slt %327, %325, %326
		bnez %327, .L_main_329
		j .L_main_339
.L_main_329:
		ld %330, %4
		mv %331, %330
		li %t, 8
		mul %331, %331, %t
		li %t, ~%2
		add %331, %331, %t
		ld %332, %331
		mv a0, %332
		sd %332, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %335, %4
		li %t, 1
		add %336, %335, %t
		sd %336, %4
		j .L_main_324
.L_main_339:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %342, %ret.addr
		mv a0, %342
		ld ra, %ra
		ret
		.size main, .-main
