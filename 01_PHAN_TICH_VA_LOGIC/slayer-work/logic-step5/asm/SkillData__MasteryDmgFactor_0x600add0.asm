00530c14c 	str	x30, [sp, #-64]!
00530c150 	stp	x24, x23, [sp, #16]
00530c154 	stp	x22, x21, [sp, #32]
00530c158 	stp	x20, x19, [sp, #48]
00530c15c 	adrp	x24, #93106176 ; -> 0xabd7000 
00530c160 	mov	w21, w4
00530c164 	mov	x19, x3
00530c168 	ldrb	w8, [x24, #1045]
00530c16c 	mov	x20, x2
00530c170 	mov	w22, w1
00530c174 	mov	x23, x0
00530c178 	tbnz	w8, #0, #48 ; -> 0x530c1a8 
00530c17c 	adrp	x0, #84791296 ; -> 0xa3e9000 
00530c180 	ldr	x0, [x0, #3552]
00530c184 	bl	#-14137124 ; -> 0x4590a60 
00530c188 	adrp	x0, #84811776 ; -> 0xa3ee000 
00530c18c 	ldr	x0, [x0, #2104]
00530c190 	bl	#-14137136 ; -> 0x4590a60 
00530c194 	adrp	x0, #85090304 ; -> 0xa432000 
00530c198 	ldr	x0, [x0, #2800]
00530c19c 	bl	#-14137148 ; -> 0x4590a60 
00530c1a0 	mov	w8, #1
00530c1a4 	strb	w8, [x24, #1045]
00530c1a8 	mov	w0, #43305
00530c1ac 	mov	x1, xzr
00530c1b0 	str	xzr, [sp, #8]
00530c1b4 	bl	#-7097360 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530c1b8 	tbz	w0, #0, #64 ; -> 0x530c1f8 
00530c1bc 	mov	w0, #43305
00530c1c0 	mov	x1, xzr
00530c1c4 	bl	#-7097196 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530c1c8 	cbz	x0, #468 ; -> 0x530c39c 
00530c1cc 	mov	x1, x23
00530c1d0 	mov	w2, w22
00530c1d4 	mov	x3, x20
00530c1d8 	mov	x4, x19
00530c1dc 	mov	w5, w21
00530c1e0 	mov	x6, xzr
00530c1e4 	ldp	x20, x19, [sp, #48]
00530c1e8 	ldp	x22, x21, [sp, #32]
00530c1ec 	ldp	x24, x23, [sp, #16]
00530c1f0 	ldr	x30, [sp], #64
00530c1f4 	b	#-7327532 ; -> 0x4c0f2c8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2832
00530c1f8 	adrp	x23, #84811776 ; -> 0xa3ee000 
00530c1fc 	ldr	x23, [x23, #2104]
00530c200 	ldr	x0, [x23]
00530c204 	ldr	w8, [x0, #228]
00530c208 	cbnz	w8, #8 ; -> 0x530c210 
00530c20c 	bl	#-14136876 ; -> 0x4590be0 
00530c210 	adrp	x24, #93073408 ; -> 0xabcf000 
00530c214 	ldrb	w8, [x24, #360]
00530c218 	cbnz	w8, #24 ; -> 0x530c230 
00530c21c 	adrp	x0, #84811776 ; -> 0xa3ee000 
00530c220 	ldr	x0, [x0, #2104]
00530c224 	bl	#-14137284 ; -> 0x4590a60 
00530c228 	mov	w8, #1
00530c22c 	strb	w8, [x24, #360]
00530c230 	ldr	x0, [x23]
00530c234 	ldr	w8, [x0, #228]
00530c238 	cbnz	w8, #12 ; -> 0x530c244 
00530c23c 	bl	#-14136924 ; -> 0x4590be0 
00530c240 	ldr	x0, [x23]
00530c244 	ldr	x8, [x0, #184]
00530c248 	ldr	x8, [x8]
00530c24c 	cbz	x8, #336 ; -> 0x530c39c 
00530c250 	ldr	x0, [x8, #888]
00530c254 	cbz	x0, #328 ; -> 0x530c39c 
00530c258 	adrp	x8, #85090304 ; -> 0xa432000 
00530c25c 	add	x2, sp, #8
00530c260 	mov	w1, w22
00530c264 	ldr	x8, [x8, #2800]
00530c268 	ldr	x3, [x8]
00530c26c 	bl	#47840740 ; -> 0x80ac050 
00530c270 	tbz	w0, #0, #272 ; -> 0x530c380 
00530c274 	cmp	w21, #2
00530c278 	b.le	#52 ; -> 0x530c2ac 
00530c27c 	cmp	w21, #3
00530c280 	b.eq	#84 ; -> 0x530c2d4 
00530c284 	cmp	w21, #4
00530c288 	b.eq	#100 ; -> 0x530c2ec 
00530c28c 	cmp	w21, #5
00530c290 	b.ne	#240 ; -> 0x530c380 
00530c294 	ldr	x8, [sp, #8]
00530c298 	cbz	x8, #260 ; -> 0x530c39c 
00530c29c 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c2a0 	ldr	x9, [x9, #3552]
00530c2a4 	ldr	w21, [x8, #40]
00530c2a8 	b	#112 ; -> 0x530c318 
00530c2ac 	cmp	w21, #1
00530c2b0 	b.eq	#84 ; -> 0x530c304 
00530c2b4 	cmp	w21, #2
00530c2b8 	b.ne	#200 ; -> 0x530c380 
00530c2bc 	ldr	x8, [sp, #8]
00530c2c0 	cbz	x8, #220 ; -> 0x530c39c 
00530c2c4 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c2c8 	ldr	x9, [x9, #3552]
00530c2cc 	ldr	w21, [x8, #28]
00530c2d0 	b	#72 ; -> 0x530c318 
00530c2d4 	ldr	x8, [sp, #8]
00530c2d8 	cbz	x8, #196 ; -> 0x530c39c 
00530c2dc 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c2e0 	ldr	x9, [x9, #3552]
00530c2e4 	ldr	w21, [x8, #32]
00530c2e8 	b	#48 ; -> 0x530c318 
00530c2ec 	ldr	x8, [sp, #8]
00530c2f0 	cbz	x8, #172 ; -> 0x530c39c 
00530c2f4 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c2f8 	ldr	x9, [x9, #3552]
00530c2fc 	ldr	w21, [x8, #36]
00530c300 	b	#24 ; -> 0x530c318 
00530c304 	ldr	x8, [sp, #8]
00530c308 	cbz	x8, #148 ; -> 0x530c39c 
00530c30c 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c310 	ldr	x9, [x9, #3552]
00530c314 	ldr	w21, [x8, #24]
00530c318 	ldr	x0, [x9]
00530c31c 	ldr	w9, [x0, #228]
00530c320 	cbnz	w9, #8 ; -> 0x530c328 
00530c324 	bl	#-14137156 ; -> 0x4590be0 
00530c328 	mov	w0, w21
00530c32c 	mov	x1, xzr
00530c330 	bl	#65473652 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c334 	mov	x2, x0
00530c338 	mov	x3, x1
00530c33c 	mov	x0, x20
00530c340 	mov	x1, x19
00530c344 	mov	x4, xzr
00530c348 	bl	#65463548 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c34c 	mov	x19, x0
00530c350 	mov	x20, x1
00530c354 	mov	w0, #100
00530c358 	mov	x1, xzr
00530c35c 	bl	#65473608 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c360 	mov	x2, x0
00530c364 	mov	x3, x1
00530c368 	mov	x0, x19
00530c36c 	mov	x1, x20
00530c370 	mov	x4, xzr
00530c374 	bl	#65464004 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530c378 	mov	x20, x0
00530c37c 	mov	x19, x1
00530c380 	mov	x0, x20
00530c384 	mov	x1, x19
00530c388 	ldp	x20, x19, [sp, #48]
00530c38c 	ldp	x22, x21, [sp, #32]
00530c390 	ldp	x24, x23, [sp, #16]
00530c394 	ldr	x30, [sp], #64
00530c398 	ret
00530c39c 	bl	#-14136976 ; -> 0x4590d0c 
