0050ba054 	str	d8, [sp, #-48]!
0050ba058 	str	x30, [sp, #8]
0050ba05c 	stp	x22, x21, [sp, #16]
0050ba060 	stp	x20, x19, [sp, #32]
0050ba064 	adrp	x22, #95535104 ; -> 0xabd6000 
0050ba068 	mov	x19, x2
0050ba06c 	mov	x20, x1
0050ba070 	ldrb	w8, [x22, #716]
0050ba074 	mov	x21, x0
0050ba078 	tbnz	w8, #0, #24 ; -> 0x50ba090 
0050ba07c 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050ba080 	ldr	x0, [x0, #3552]
0050ba084 	bl	#-11703844 ; -> 0x4590a60 
0050ba088 	mov	w8, #1
0050ba08c 	strb	w8, [x22, #716]
0050ba090 	mov	w0, #31611
0050ba094 	mov	x1, xzr
0050ba098 	bl	#-4664052 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050ba09c 	tbz	w0, #0, #56 ; -> 0x50ba0d4 
0050ba0a0 	mov	w0, #31611
0050ba0a4 	mov	x1, xzr
0050ba0a8 	bl	#-4663888 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050ba0ac 	cbz	x0, #280 ; -> 0x50ba1c4 
0050ba0b0 	mov	x1, x21
0050ba0b4 	mov	x2, x20
0050ba0b8 	mov	x3, x19
0050ba0bc 	ldp	x20, x19, [sp, #32]
0050ba0c0 	ldr	x30, [sp, #8]
0050ba0c4 	ldp	x22, x21, [sp, #16]
0050ba0c8 	mov	x4, xzr
0050ba0cc 	ldr	d8, [sp], #48
0050ba0d0 	b	#-5348076 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050ba0d4 	ldr	x0, [x21, #312]
0050ba0d8 	cbz	x0, #236 ; -> 0x50ba1c4 
0050ba0dc 	mov	w1, #5
0050ba0e0 	mov	x2, xzr
0050ba0e4 	bl	#-3543124 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
0050ba0e8 	fcmp	s0, #0.0
0050ba0ec 	b.le	#188 ; -> 0x50ba1a8 
0050ba0f0 	ldr	x0, [x21, #312]
0050ba0f4 	cbz	x0, #208 ; -> 0x50ba1c4 
0050ba0f8 	mov	w1, #5
0050ba0fc 	mov	x2, xzr
0050ba100 	fmov	s8, s0
0050ba104 	bl	#-3543444 ; -> 0x4d58f70 DatabaseManager::SpiritSkillCheck
0050ba108 	tbz	w0, #0, #160 ; -> 0x50ba1a8 
0050ba10c 	adrp	x8, #87224320 ; -> 0xa3e9000 
0050ba110 	ldr	x8, [x8, #3552]
0050ba114 	ldr	x0, [x8]
0050ba118 	ldr	w8, [x0, #228]
0050ba11c 	cbnz	w8, #8 ; -> 0x50ba124 
0050ba120 	bl	#-11703616 ; -> 0x4590be0 
0050ba124 	mov	w8, #1120403456
0050ba128 	mov	x1, xzr
0050ba12c 	fmov	s0, w8
0050ba130 	mov	w8, #2139095040
0050ba134 	fadd	s1, s8, s0
0050ba138 	fmul	s0, s1, s0
0050ba13c 	fmov	s1, w8
0050ba140 	mov	w8, #-2147483648
0050ba144 	fcvtzs	w9, s0
0050ba148 	fcmp	s0, s1
0050ba14c 	csel	w0, w8, w9, eq
0050ba150 	bl	#67907156 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba154 	mov	x2, x0
0050ba158 	mov	x3, x1
0050ba15c 	mov	x0, x20
0050ba160 	mov	x1, x19
0050ba164 	mov	x4, xzr
0050ba168 	bl	#67897052 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050ba16c 	mov	x19, x0
0050ba170 	mov	x20, x1
0050ba174 	mov	w0, #10000
0050ba178 	mov	x1, xzr
0050ba17c 	bl	#67907112 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba180 	mov	x2, x0
0050ba184 	mov	x3, x1
0050ba188 	mov	x0, x19
0050ba18c 	mov	x1, x20
0050ba190 	ldp	x20, x19, [sp, #32]
0050ba194 	ldp	x22, x21, [sp, #16]
0050ba198 	ldr	x30, [sp, #8]
0050ba19c 	mov	x4, xzr
0050ba1a0 	ldr	d8, [sp], #48
0050ba1a4 	b	#67897492 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050ba1a8 	mov	x0, x20
0050ba1ac 	mov	x1, x19
0050ba1b0 	ldr	x30, [sp, #8]
0050ba1b4 	ldp	x20, x19, [sp, #32]
0050ba1b8 	ldp	x22, x21, [sp, #16]
0050ba1bc 	ldr	d8, [sp], #48
0050ba1c0 	ret
0050ba1c4 	bl	#-11703480 ; -> 0x4590d0c 
