004efe2e8 	str	x30, [sp, #-32]!
004efe2ec 	stp	x20, x19, [sp, #16]
004efe2f0 	mov	w20, w1
004efe2f4 	mov	x19, x0
004efe2f8 	mov	w0, #33089
004efe2fc 	mov	x1, xzr
004efe300 	bl	#-2846044 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efe304 	tbz	w0, #0, #44 ; -> 0x4efe330 
004efe308 	mov	w0, #33089
004efe30c 	mov	x1, xzr
004efe310 	bl	#-2845880 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efe314 	cbz	x0, #148 ; -> 0x4efe3a8 
004efe318 	mov	x1, x19
004efe31c 	mov	w2, w20
004efe320 	mov	x3, xzr
004efe324 	ldp	x20, x19, [sp, #16]
004efe328 	ldr	x30, [sp], #32
004efe32c 	b	#-3664272 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
004efe330 	ldr	x8, [x19, #312]
004efe334 	cbz	x8, #116 ; -> 0x4efe3a8 
004efe338 	ldr	x9, [x8, #1544]
004efe33c 	cbz	x9, #108 ; -> 0x4efe3a8 
004efe340 	ldrb	w9, [x9, #105]
004efe344 	cbz	w9, #24 ; -> 0x4efe35c 
004efe348 	ldr	w8, [x8, #1384]
004efe34c 	cmp	w8, #0
004efe350 	mov	w8, #31
004efe354 	csel	w1, wzr, w8, eq
004efe358 	b	#8 ; -> 0x4efe360 
004efe35c 	mov	w1, wzr
004efe360 	mov	x0, x19
004efe364 	bl	#-1584 ; -> 0x4efdd34 PlayerBase::Costume_Display
004efe368 	mov	x0, x19
004efe36c 	mov	w1, #12
004efe370 	mov	w2, wzr
004efe374 	bl	#-2224 ; -> 0x4efdac4 PlayerBase::CloakSetting
004efe378 	mov	x0, x19
004efe37c 	mov	w1, wzr
004efe380 	bl	#-1388 ; -> 0x4efde14 PlayerBase::HeadSetting
004efe384 	mov	x0, x19
004efe388 	mov	w1, wzr
004efe38c 	bl	#-1264 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efe390 	mov	x0, x19
004efe394 	ldp	x20, x19, [sp, #16]
004efe398 	mov	w1, wzr
004efe39c 	mov	w2, wzr
004efe3a0 	ldr	x30, [sp], #32
004efe3a4 	b	#-1052 ; -> 0x4efdf88 PlayerBase::Animation_HairSetting
004efe3a8 	bl	#-9885340 ; -> 0x4590d0c 
