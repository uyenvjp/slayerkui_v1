004efdbc8 	str	x30, [sp, #-32]!
004efdbcc 	stp	x20, x19, [sp, #16]
004efdbd0 	mov	w20, w1
004efdbd4 	mov	x19, x0
004efdbd8 	mov	w0, #33076
004efdbdc 	mov	x1, xzr
004efdbe0 	bl	#-2844220 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efdbe4 	tbz	w0, #0, #44 ; -> 0x4efdc10 
004efdbe8 	mov	w0, #33076
004efdbec 	mov	x1, xzr
004efdbf0 	bl	#-2844056 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efdbf4 	cbz	x0, #316 ; -> 0x4efdd30 
004efdbf8 	mov	x1, x19
004efdbfc 	mov	w2, w20
004efdc00 	mov	x3, xzr
004efdc04 	ldp	x20, x19, [sp, #16]
004efdc08 	ldr	x30, [sp], #32
004efdc0c 	b	#-3662448 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
004efdc10 	cmp	w20, #1
004efdc14 	mov	x0, x19
004efdc18 	csinc	w8, w20, wzr, lt
004efdc1c 	add	w1, w8, #8
004efdc20 	bl	#276 ; -> 0x4efdd34 PlayerBase::Costume_Display
004efdc24 	cmp	w20, #1
004efdc28 	b.le	#44 ; -> 0x4efdc54 
004efdc2c 	cmp	w20, #2
004efdc30 	b.eq	#104 ; -> 0x4efdc98 
004efdc34 	cmp	w20, #3
004efdc38 	b.eq	#96 ; -> 0x4efdc98 
004efdc3c 	cmp	w20, #4
004efdc40 	b.ne	#208 ; -> 0x4efdd10 
004efdc44 	mov	x0, x19
004efdc48 	mov	w1, #12
004efdc4c 	mov	w2, #7
004efdc50 	b	#140 ; -> 0x4efdcdc 
004efdc54 	cbz	w20, #124 ; -> 0x4efdcd0 
004efdc58 	cmp	w20, #1
004efdc5c 	b.ne	#180 ; -> 0x4efdd10 
004efdc60 	mov	x0, x19
004efdc64 	mov	w1, #12
004efdc68 	mov	w2, #5
004efdc6c 	bl	#-424 ; -> 0x4efdac4 PlayerBase::CloakSetting
004efdc70 	mov	x0, x19
004efdc74 	mov	w1, wzr
004efdc78 	bl	#412 ; -> 0x4efde14 PlayerBase::HeadSetting
004efdc7c 	mov	x0, x19
004efdc80 	mov	w1, wzr
004efdc84 	bl	#536 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efdc88 	mov	x0, x19
004efdc8c 	mov	w1, wzr
004efdc90 	mov	w2, #1
004efdc94 	b	#112 ; -> 0x4efdd04 
004efdc98 	mov	x0, x19
004efdc9c 	mov	w1, #12
004efdca0 	mov	w2, #6
004efdca4 	bl	#-480 ; -> 0x4efdac4 PlayerBase::CloakSetting
004efdca8 	mov	x0, x19
004efdcac 	mov	w1, wzr
004efdcb0 	bl	#356 ; -> 0x4efde14 PlayerBase::HeadSetting
004efdcb4 	mov	x0, x19
004efdcb8 	mov	w1, wzr
004efdcbc 	bl	#480 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efdcc0 	mov	x0, x19
004efdcc4 	mov	w1, wzr
004efdcc8 	mov	w2, #2
004efdccc 	b	#56 ; -> 0x4efdd04 
004efdcd0 	mov	x0, x19
004efdcd4 	mov	w1, #12
004efdcd8 	mov	w2, #4
004efdcdc 	bl	#-536 ; -> 0x4efdac4 PlayerBase::CloakSetting
004efdce0 	mov	x0, x19
004efdce4 	mov	w1, wzr
004efdce8 	bl	#300 ; -> 0x4efde14 PlayerBase::HeadSetting
004efdcec 	mov	x0, x19
004efdcf0 	mov	w1, wzr
004efdcf4 	bl	#424 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efdcf8 	mov	x0, x19
004efdcfc 	mov	w1, wzr
004efdd00 	mov	w2, wzr
004efdd04 	ldp	x20, x19, [sp, #16]
004efdd08 	ldr	x30, [sp], #32
004efdd0c 	b	#636 ; -> 0x4efdf88 PlayerBase::Animation_HairSetting
004efdd10 	mov	x0, x19
004efdd14 	mov	w1, wzr
004efdd18 	bl	#252 ; -> 0x4efde14 PlayerBase::HeadSetting
004efdd1c 	mov	x0, x19
004efdd20 	ldp	x20, x19, [sp, #16]
004efdd24 	mov	w1, wzr
004efdd28 	ldr	x30, [sp], #32
004efdd2c 	b	#368 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efdd30 	bl	#-9883684 ; -> 0x4590d0c 
