004efe158 	str	x30, [sp, #-32]!
004efe15c 	stp	x20, x19, [sp, #16]
004efe160 	mov	w20, w1
004efe164 	mov	x19, x0
004efe168 	mov	w0, #33086
004efe16c 	mov	x1, xzr
004efe170 	bl	#-2845644 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efe174 	tbz	w0, #0, #44 ; -> 0x4efe1a0 
004efe178 	mov	w0, #33086
004efe17c 	mov	x1, xzr
004efe180 	bl	#-2845480 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efe184 	cbz	x0, #88 ; -> 0x4efe1dc 
004efe188 	mov	x1, x19
004efe18c 	mov	w2, w20
004efe190 	mov	x3, xzr
004efe194 	ldp	x20, x19, [sp, #16]
004efe198 	ldr	x30, [sp], #32
004efe19c 	b	#-3663872 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
004efe1a0 	mov	x0, x19
004efe1a4 	mov	w1, #7
004efe1a8 	bl	#-1140 ; -> 0x4efdd34 PlayerBase::Costume_Display
004efe1ac 	mov	x0, x19
004efe1b0 	mov	w1, wzr
004efe1b4 	bl	#-928 ; -> 0x4efde14 PlayerBase::HeadSetting
004efe1b8 	mov	x0, x19
004efe1bc 	mov	w1, #2
004efe1c0 	bl	#-804 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efe1c4 	mov	x0, x19
004efe1c8 	ldp	x20, x19, [sp, #16]
004efe1cc 	mov	w1, wzr
004efe1d0 	mov	w2, #3
004efe1d4 	ldr	x30, [sp], #32
004efe1d8 	b	#-592 ; -> 0x4efdf88 PlayerBase::Animation_HairSetting
004efe1dc 	bl	#-9884880 ; -> 0x4590d0c 
