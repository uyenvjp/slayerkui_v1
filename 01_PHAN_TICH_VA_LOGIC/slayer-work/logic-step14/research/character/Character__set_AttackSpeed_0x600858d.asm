005016744 	str	d8, [sp, #-32]!
005016748 	stp	x30, x19, [sp, #16]
00501674c 	mov	x19, x0
005016750 	mov	w0, #7352
005016754 	mov	x1, xzr
005016758 	fmov	s8, s0
00501675c 	bl	#-3994040 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005016760 	tbz	w0, #0, #44 ; -> 0x501678c 
005016764 	mov	w0, #7352
005016768 	mov	x1, xzr
00501676c 	bl	#-3993876 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005016770 	cbz	x0, #44 ; -> 0x501679c 
005016774 	mov	x1, x19
005016778 	ldp	x30, x19, [sp, #16]
00501677c 	fmov	s0, s8
005016780 	mov	x2, xzr
005016784 	ldr	d8, [sp], #32
005016788 	b	#-4813492 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
00501678c 	str	s8, [x19, #184]
005016790 	ldp	x30, x19, [sp, #16]
005016794 	ldr	d8, [sp], #32
005016798 	ret
00501679c 	bl	#-11033232 ; -> 0x4590d0c 
