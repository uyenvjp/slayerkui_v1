0050167e8 	str	d8, [sp, #-32]!
0050167ec 	stp	x30, x19, [sp, #16]
0050167f0 	mov	x19, x0
0050167f4 	mov	w0, #7353
0050167f8 	mov	x1, xzr
0050167fc 	fmov	s8, s0
005016800 	bl	#-3994204 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005016804 	tbz	w0, #0, #44 ; -> 0x5016830 
005016808 	mov	w0, #7353
00501680c 	mov	x1, xzr
005016810 	bl	#-3994040 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005016814 	cbz	x0, #44 ; -> 0x5016840 
005016818 	mov	x1, x19
00501681c 	ldp	x30, x19, [sp, #16]
005016820 	fmov	s0, s8
005016824 	mov	x2, xzr
005016828 	ldr	d8, [sp], #32
00501682c 	b	#-4813656 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
005016830 	str	s8, [x19, #188]
005016834 	ldp	x30, x19, [sp, #16]
005016838 	ldr	d8, [sp], #32
00501683c 	ret
005016840 	bl	#-11033396 ; -> 0x4590d0c 
