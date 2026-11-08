004efe090 	str	x30, [sp, #-32]!
004efe094 	stp	x20, x19, [sp, #16]
004efe098 	mov	w20, w1
004efe09c 	mov	x19, x0
004efe0a0 	mov	w0, #33085
004efe0a4 	mov	x1, xzr
004efe0a8 	bl	#-2845444 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efe0ac 	tbz	w0, #0, #44 ; -> 0x4efe0d8 
004efe0b0 	mov	w0, #33085
004efe0b4 	mov	x1, xzr
004efe0b8 	bl	#-2845280 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efe0bc 	cbz	x0, #152 ; -> 0x4efe154 
004efe0c0 	mov	x1, x19
004efe0c4 	mov	w2, w20
004efe0c8 	mov	x3, xzr
004efe0cc 	ldp	x20, x19, [sp, #16]
004efe0d0 	ldr	x30, [sp], #32
004efe0d4 	b	#-3663672 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
004efe0d8 	add	w1, w20, #1
004efe0dc 	mov	x0, x19
004efe0e0 	bl	#-940 ; -> 0x4efdd34 PlayerBase::Costume_Display
004efe0e4 	cmp	w20, #5
004efe0e8 	b.hi	#28 ; -> 0x4efe104 
004efe0ec 	adrp	x8, #-49848320 ; -> 0x1f74000 
004efe0f0 	add	x8, x8, #1692
004efe0f4 	mov	x0, x19
004efe0f8 	ldr	w2, [x8, w20, uxtw #2]
004efe0fc 	mov	w1, #13
004efe100 	bl	#-1596 ; -> 0x4efdac4 PlayerBase::CloakSetting
004efe104 	mov	x0, x19
004efe108 	mov	w1, #1
004efe10c 	bl	#-760 ; -> 0x4efde14 PlayerBase::HeadSetting
004efe110 	mov	x0, x19
004efe114 	mov	w1, #1
004efe118 	bl	#-636 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efe11c 	mov	w8, #21846
004efe120 	mov	x0, x19
004efe124 	mov	w1, #3
004efe128 	movk	w8, #21845, lsl #16
004efe12c 	smull	x8, w20, w8
004efe130 	lsr	x9, x8, #63
004efe134 	lsr	x8, x8, #32
004efe138 	add	w8, w8, w9
004efe13c 	add	w8, w8, w8, lsl #1
004efe140 	sub	w8, w20, w8
004efe144 	ldp	x20, x19, [sp, #16]
004efe148 	add	w2, w8, #3
004efe14c 	ldr	x30, [sp], #32
004efe150 	b	#-456 ; -> 0x4efdf88 PlayerBase::Animation_HairSetting
004efe154 	bl	#-9884744 ; -> 0x4590d0c 
