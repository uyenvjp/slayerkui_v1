0050ba1c8 	str	d8, [sp, #-48]!
0050ba1cc 	str	x30, [sp, #8]
0050ba1d0 	stp	x22, x21, [sp, #16]
0050ba1d4 	stp	x20, x19, [sp, #32]
0050ba1d8 	adrp	x22, #95535104 ; -> 0xabd6000 
0050ba1dc 	mov	x19, x2
0050ba1e0 	mov	x20, x1
0050ba1e4 	ldrb	w8, [x22, #723]
0050ba1e8 	mov	x21, x0
0050ba1ec 	tbnz	w8, #0, #24 ; -> 0x50ba204 
0050ba1f0 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050ba1f4 	ldr	x0, [x0, #3552]
0050ba1f8 	bl	#-11704216 ; -> 0x4590a60 
0050ba1fc 	mov	w8, #1
0050ba200 	strb	w8, [x22, #723]
0050ba204 	mov	w0, #31614
0050ba208 	mov	x1, xzr
0050ba20c 	bl	#-4664424 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050ba210 	tbz	w0, #0, #56 ; -> 0x50ba248 
0050ba214 	mov	w0, #31614
0050ba218 	mov	x1, xzr
0050ba21c 	bl	#-4664260 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050ba220 	cbz	x0, #304 ; -> 0x50ba350 
0050ba224 	mov	x1, x21
0050ba228 	mov	x2, x20
0050ba22c 	mov	x3, x19
0050ba230 	ldp	x20, x19, [sp, #32]
0050ba234 	ldr	x30, [sp, #8]
0050ba238 	ldp	x22, x21, [sp, #16]
0050ba23c 	mov	x4, xzr
0050ba240 	ldr	d8, [sp], #48
0050ba244 	b	#-5348448 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050ba248 	ldr	x0, [x21, #312]
0050ba24c 	cbz	x0, #260 ; -> 0x50ba350 
0050ba250 	mov	w1, #8
0050ba254 	mov	x2, xzr
0050ba258 	bl	#-3543496 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
0050ba25c 	fcmp	s0, #0.0
0050ba260 	b.le	#212 ; -> 0x50ba334 
0050ba264 	ldr	x8, [x21]
0050ba268 	mov	x0, x21
0050ba26c 	fmov	s8, s0
0050ba270 	ldr	x9, [x8, #1288]
0050ba274 	ldr	x1, [x8, #1296]
0050ba278 	blr	x9
0050ba27c 	tbz	w0, #0, #184 ; -> 0x50ba334 
0050ba280 	ldr	x0, [x21, #312]
0050ba284 	cbz	x0, #204 ; -> 0x50ba350 
0050ba288 	mov	w1, #8
0050ba28c 	mov	x2, xzr
0050ba290 	bl	#-3543840 ; -> 0x4d58f70 DatabaseManager::SpiritSkillCheck
0050ba294 	tbz	w0, #0, #160 ; -> 0x50ba334 
0050ba298 	adrp	x8, #87224320 ; -> 0xa3e9000 
0050ba29c 	ldr	x8, [x8, #3552]
0050ba2a0 	ldr	x0, [x8]
0050ba2a4 	ldr	w8, [x0, #228]
0050ba2a8 	cbnz	w8, #8 ; -> 0x50ba2b0 
0050ba2ac 	bl	#-11704012 ; -> 0x4590be0 
0050ba2b0 	mov	w8, #1120403456
0050ba2b4 	mov	x1, xzr
0050ba2b8 	fmov	s0, w8
0050ba2bc 	mov	w8, #2139095040
0050ba2c0 	fadd	s1, s8, s0
0050ba2c4 	fmul	s0, s1, s0
0050ba2c8 	fmov	s1, w8
0050ba2cc 	mov	w8, #-2147483648
0050ba2d0 	fcvtzs	w9, s0
0050ba2d4 	fcmp	s0, s1
0050ba2d8 	csel	w0, w8, w9, eq
0050ba2dc 	bl	#67906760 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba2e0 	mov	x2, x0
0050ba2e4 	mov	x3, x1
0050ba2e8 	mov	x0, x20
0050ba2ec 	mov	x1, x19
0050ba2f0 	mov	x4, xzr
0050ba2f4 	bl	#67896656 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050ba2f8 	mov	x19, x0
0050ba2fc 	mov	x20, x1
0050ba300 	mov	w0, #10000
0050ba304 	mov	x1, xzr
0050ba308 	bl	#67906716 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba30c 	mov	x2, x0
0050ba310 	mov	x3, x1
0050ba314 	mov	x0, x19
0050ba318 	mov	x1, x20
0050ba31c 	ldp	x20, x19, [sp, #32]
0050ba320 	ldp	x22, x21, [sp, #16]
0050ba324 	ldr	x30, [sp, #8]
0050ba328 	mov	x4, xzr
0050ba32c 	ldr	d8, [sp], #48
0050ba330 	b	#67897096 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050ba334 	mov	x0, x20
0050ba338 	mov	x1, x19
0050ba33c 	ldr	x30, [sp, #8]
0050ba340 	ldp	x20, x19, [sp, #32]
0050ba344 	ldp	x22, x21, [sp, #16]
0050ba348 	ldr	d8, [sp], #48
0050ba34c 	ret
0050ba350 	bl	#-11703876 ; -> 0x4590d0c 
