004e9c794 	stp	d9, d8, [sp, #-64]!
004e9c798 	str	x30, [sp, #16]
004e9c79c 	stp	x22, x21, [sp, #32]
004e9c7a0 	stp	x20, x19, [sp, #48]
004e9c7a4 	fmov	s8, s0
004e9c7a8 	adrp	x21, #97751040 ; -> 0xabd5000 
004e9c7ac 	mov	w19, w1
004e9c7b0 	ldrb	w8, [x21, #857]
004e9c7b4 	mov	x20, x0
004e9c7b8 	tbnz	w8, #0, #36 ; -> 0x4e9c7dc 
004e9c7bc 	adrp	x0, #89702400 ; -> 0xa428000 
004e9c7c0 	ldr	x0, [x0, #2896]
004e9c7c4 	bl	#-9485668 ; -> 0x4590a60 
004e9c7c8 	adrp	x0, #89706496 ; -> 0xa429000 
004e9c7cc 	ldr	x0, [x0, #3088]
004e9c7d0 	bl	#-9485680 ; -> 0x4590a60 
004e9c7d4 	mov	w8, #1
004e9c7d8 	strb	w8, [x21, #857]
004e9c7dc 	mov	w0, #32253
004e9c7e0 	mov	x1, xzr
004e9c7e4 	bl	#-2445888 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9c7e8 	tbz	w0, #0, #56 ; -> 0x4e9c820 
004e9c7ec 	mov	w0, #32253
004e9c7f0 	mov	x1, xzr
004e9c7f4 	bl	#-2445724 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9c7f8 	cbz	x0, #216 ; -> 0x4e9c8d0 
004e9c7fc 	mov	x1, x20
004e9c800 	mov	w2, w19
004e9c804 	ldr	x30, [sp, #16]
004e9c808 	ldp	x20, x19, [sp, #48]
004e9c80c 	fmov	s0, s8
004e9c810 	ldp	x22, x21, [sp, #32]
004e9c814 	mov	x3, xzr
004e9c818 	ldp	d9, d8, [sp], #64
004e9c81c 	b	#-3063080 ; -> 0x4bb0af4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_993
004e9c820 	ldr	x22, [x20, #32]
004e9c824 	cbz	x22, #172 ; -> 0x4e9c8d0 
004e9c828 	add	x0, x22, #2568
004e9c82c 	mov	x1, xzr
004e9c830 	bl	#-3453244 ; -> 0x4b516f4 SilentFloat::get_Value
004e9c834 	ldr	x0, [x20, #392]
004e9c838 	cbz	x0, #152 ; -> 0x4e9c8d0 
004e9c83c 	adrp	x21, #89702400 ; -> 0xa428000 
004e9c840 	mov	w1, w19
004e9c844 	fmov	s9, s0
004e9c848 	ldr	x21, [x21, #2896]
004e9c84c 	ldr	x2, [x21]
004e9c850 	bl	#52176424 ; -> 0x805ee78 
004e9c854 	fsub	s0, s9, s0
004e9c858 	add	x0, x22, #2568
004e9c85c 	mov	x1, xzr
004e9c860 	bl	#-3452072 ; -> 0x4b51bb8 SilentFloat::set_Value
004e9c864 	ldr	x0, [x20, #392]
004e9c868 	cbz	x0, #104 ; -> 0x4e9c8d0 
004e9c86c 	adrp	x8, #89706496 ; -> 0xa429000 
004e9c870 	fmov	s0, s8
004e9c874 	mov	w1, w19
004e9c878 	ldr	x8, [x8, #3088]
004e9c87c 	ldr	x2, [x8]
004e9c880 	bl	#52176512 ; -> 0x805ef00 
004e9c884 	ldr	x22, [x20, #32]
004e9c888 	cbz	x22, #72 ; -> 0x4e9c8d0 
004e9c88c 	add	x0, x22, #2568
004e9c890 	mov	x1, xzr
004e9c894 	bl	#-3453344 ; -> 0x4b516f4 SilentFloat::get_Value
004e9c898 	ldr	x0, [x20, #392]
004e9c89c 	cbz	x0, #52 ; -> 0x4e9c8d0 
004e9c8a0 	ldr	x2, [x21]
004e9c8a4 	mov	w1, w19
004e9c8a8 	fmov	s8, s0
004e9c8ac 	bl	#52176332 ; -> 0x805ee78 
004e9c8b0 	add	x0, x22, #2568
004e9c8b4 	ldp	x20, x19, [sp, #48]
004e9c8b8 	ldp	x22, x21, [sp, #32]
004e9c8bc 	fadd	s0, s8, s0
004e9c8c0 	ldr	x30, [sp, #16]
004e9c8c4 	mov	x1, xzr
004e9c8c8 	ldp	d9, d8, [sp], #64
004e9c8cc 	b	#-3452180 ; -> 0x4b51bb8 SilentFloat::set_Value
004e9c8d0 	bl	#-9485252 ; -> 0x4590d0c 
