00501688c 	str	d8, [sp, #-32]!
005016890 	stp	x30, x19, [sp, #16]
005016894 	mov	x19, x0
005016898 	mov	w0, #7354
00501689c 	mov	x1, xzr
0050168a0 	fmov	s8, s0
0050168a4 	bl	#-3994368 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050168a8 	tbz	w0, #0, #44 ; -> 0x50168d4 
0050168ac 	mov	w0, #7354
0050168b0 	mov	x1, xzr
0050168b4 	bl	#-3994204 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050168b8 	cbz	x0, #44 ; -> 0x50168e4 
0050168bc 	mov	x1, x19
0050168c0 	ldp	x30, x19, [sp, #16]
0050168c4 	fmov	s0, s8
0050168c8 	mov	x2, xzr
0050168cc 	ldr	d8, [sp], #32
0050168d0 	b	#-4813820 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
0050168d4 	str	s8, [x19, #192]
0050168d8 	ldp	x30, x19, [sp, #16]
0050168dc 	ldr	d8, [sp], #32
0050168e0 	ret
0050168e4 	bl	#-11033560 ; -> 0x4590d0c 
