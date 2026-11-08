004d51190 	sub	sp, sp, #176
004d51194 	stp	x30, x23, [sp, #128]
004d51198 	stp	x22, x21, [sp, #144]
004d5119c 	stp	x20, x19, [sp, #160]
004d511a0 	adrp	x21, #99102720 ; -> 0xabd4000 
004d511a4 	mov	x20, x0
004d511a8 	mov	x19, x8
004d511ac 	ldrb	w9, [x21, #2882]
004d511b0 	tbnz	w9, #0, #84 ; -> 0x4d51204 
004d511b4 	adrp	x0, #90800128 ; -> 0xa3e9000 
004d511b8 	ldr	x0, [x0, #1384]
004d511bc 	bl	#-8128348 ; -> 0x4590a60 
004d511c0 	adrp	x0, #91033600 ; -> 0xa422000 
004d511c4 	ldr	x0, [x0, #2408]
004d511c8 	bl	#-8128360 ; -> 0x4590a60 
004d511cc 	adrp	x0, #91033600 ; -> 0xa422000 
004d511d0 	ldr	x0, [x0, #2416]
004d511d4 	bl	#-8128372 ; -> 0x4590a60 
004d511d8 	adrp	x0, #91033600 ; -> 0xa422000 
004d511dc 	ldr	x0, [x0, #2424]
004d511e0 	bl	#-8128384 ; -> 0x4590a60 
004d511e4 	adrp	x0, #91033600 ; -> 0xa422000 
004d511e8 	ldr	x0, [x0, #2432]
004d511ec 	bl	#-8128396 ; -> 0x4590a60 
004d511f0 	adrp	x0, #91033600 ; -> 0xa422000 
004d511f4 	ldr	x0, [x0, #2440]
004d511f8 	bl	#-8128408 ; -> 0x4590a60 
004d511fc 	mov	w8, #1
004d51200 	strb	w8, [x21, #2882]
004d51204 	movi	v0.2d, #0000000000000000
004d51208 	mov	w0, #27329
004d5120c 	mov	x1, xzr
004d51210 	str	xzr, [sp, #112]
004d51214 	stp	q0, q0, [sp, #80]
004d51218 	bl	#-1088628 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d5121c 	tbz	w0, #0, #44 ; -> 0x4d51248 
004d51220 	mov	w0, #27329
004d51224 	mov	x1, xzr
004d51228 	bl	#-1088464 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d5122c 	cbz	x0, #236 ; -> 0x4d51318 
004d51230 	add	x8, sp, #8
004d51234 	mov	x1, x20
004d51238 	mov	x2, xzr
004d5123c 	bl	#-1884796 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d51240 	add	x1, sp, #8
004d51244 	b	#180 ; -> 0x4d512f8 
004d51248 	movi	d0, #0000000000000000
004d5124c 	adrp	x21, #90800128 ; -> 0xa3e9000 
004d51250 	mov	w22, #13448
004d51254 	ldr	x21, [x21, #1384]
004d51258 	add	x0, x20, x22
004d5125c 	mov	x1, xzr
004d51260 	bl	#-2094760 ; -> 0x4b51bb8 SilentFloat::set_Value
004d51264 	ldr	x0, [x21]
004d51268 	ldr	w8, [x0, #228]
004d5126c 	cbnz	w8, #12 ; -> 0x4d51278 
004d51270 	bl	#-8128144 ; -> 0x4590be0 
004d51274 	ldr	x0, [x21]
004d51278 	ldr	x8, [x0, #184]
004d5127c 	ldr	x0, [x8, #184]
004d51280 	cbz	x0, #152 ; -> 0x4d51318 
004d51284 	adrp	x8, #91033600 ; -> 0xa422000 
004d51288 	add	x23, sp, #80
004d5128c 	ldr	x8, [x8, #2408]
004d51290 	ldr	x1, [x8]
004d51294 	add	x8, sp, #80
004d51298 	bl	#55235332 ; -> 0x81fe59c 
004d5129c 	adrp	x21, #91033600 ; -> 0xa422000 
004d512a0 	ldr	x21, [x21, #2424]
004d512a4 	stp	xzr, x23, [sp, #8]
004d512a8 	ldr	x1, [x21]
004d512ac 	add	x0, sp, #80
004d512b0 	bl	#24221268 ; -> 0x646a904 
004d512b4 	tbz	w0, #0, #44 ; -> 0x4d512e0 
004d512b8 	ldr	x23, [sp, #104]
004d512bc 	add	x0, x20, x22
004d512c0 	mov	x1, xzr
004d512c4 	bl	#-2096080 ; -> 0x4b516f4 SilentFloat::get_Value
004d512c8 	fmov	s1, w23
004d512cc 	fadd	s0, s0, s1
004d512d0 	add	x0, x20, x22
004d512d4 	mov	x1, xzr
004d512d8 	bl	#-2094880 ; -> 0x4b51bb8 SilentFloat::set_Value
004d512dc 	b	#-52 ; -> 0x4d512a8 
004d512e0 	adrp	x8, #91033600 ; -> 0xa422000 
004d512e4 	add	x0, sp, #80
004d512e8 	ldr	x8, [x8, #2416]
004d512ec 	ldr	x1, [x8]
004d512f0 	bl	#24221504 ; -> 0x646aa30 
004d512f4 	add	x1, x20, x22
004d512f8 	mov	x0, x19
004d512fc 	mov	w2, #72
004d51300 	bl	#83994096 ; -> 0x9d6b8f0 
004d51304 	ldp	x20, x19, [sp, #160]
004d51308 	ldp	x22, x21, [sp, #144]
004d5130c 	ldp	x30, x23, [sp, #128]
004d51310 	add	sp, sp, #176
004d51314 	ret
004d51318 	bl	#-8128012 ; -> 0x4590d0c 
004d5131c 	b	#8 ; -> 0x4d51324 
004d51320 	b	#4 ; -> 0x4d51324 
004d51324 	mov	x21, x0
004d51328 	cmp	w1, #1
004d5132c 	b.ne	#60 ; -> 0x4d51368 
004d51330 	mov	x0, x21
004d51334 	bl	#83993932 ; -> 0x9d6b880 
004d51338 	ldr	x21, [x0]
004d5133c 	str	x21, [sp, #8]
004d51340 	bl	#83993936 ; -> 0x9d6b890 
004d51344 	adrp	x8, #91033600 ; -> 0xa422000 
004d51348 	ldr	x8, [x8, #2416]
004d5134c 	ldr	x0, [sp, #16]
004d51350 	ldr	x1, [x8]
004d51354 	bl	#24221404 ; -> 0x646aa30 
004d51358 	cbz	x21, #-100 ; -> 0x4d512f4 
004d5135c 	mov	x0, x21
004d51360 	bl	#-8128092 ; -> 0x4590d04 
004d51364 	mov	x21, x0
004d51368 	add	x0, sp, #8
004d5136c 	bl	#-12763252 ; -> 0x41252f8 
004d51370 	mov	x0, x21
004d51374 	bl	#-6943576 ; -> 0x46b201c 
004d51378 	bl	#-12798744 ; -> 0x411c860 
