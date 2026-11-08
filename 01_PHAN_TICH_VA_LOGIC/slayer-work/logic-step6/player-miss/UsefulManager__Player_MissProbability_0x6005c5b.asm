004d23080 	stp	d9, d8, [sp, #-32]!
004d23084 	str	x30, [sp, #16]
004d23088 	mov	w0, #26980
004d2308c 	mov	x1, xzr
004d23090 	fmov	s8, s1
004d23094 	fmov	s9, s0
004d23098 	bl	#-899828 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d2309c 	tbz	w0, #0, #44 ; -> 0x4d230c8 
004d230a0 	mov	w0, #26980
004d230a4 	mov	x1, xzr
004d230a8 	bl	#-899664 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d230ac 	cbz	x0, #72 ; -> 0x4d230f4 
004d230b0 	ldr	x30, [sp, #16]
004d230b4 	fmov	s0, s9
004d230b8 	fmov	s1, s8
004d230bc 	mov	x1, xzr
004d230c0 	ldp	d9, d8, [sp], #32
004d230c4 	b	#-1395172 ; -> 0x4bce6e0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1565
004d230c8 	fadd	s0, s9, s8
004d230cc 	fmov	s1, #1.00000000
004d230d0 	mov	x0, xzr
004d230d4 	fdiv	s8, s8, s0
004d230d8 	movi	d0, #0000000000000000
004d230dc 	bl	#80577764 ; -> 0x99fb5c0 UnityEngine.Random::Range
004d230e0 	fcmp	s0, s8
004d230e4 	ldr	x30, [sp, #16]
004d230e8 	cset	w0, mi
004d230ec 	ldp	d9, d8, [sp], #32
004d230f0 	ret
004d230f4 	bl	#-7939048 ; -> 0x4590d0c 
