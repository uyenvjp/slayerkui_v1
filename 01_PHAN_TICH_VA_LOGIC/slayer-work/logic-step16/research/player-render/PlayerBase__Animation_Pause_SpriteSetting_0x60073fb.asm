004efe264 	stp	x30, x19, [sp, #-16]!
004efe268 	mov	x19, x0
004efe26c 	mov	w0, #33088
004efe270 	mov	x1, xzr
004efe274 	bl	#-2845904 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efe278 	tbz	w0, #0, #36 ; -> 0x4efe29c 
004efe27c 	mov	w0, #33088
004efe280 	mov	x1, xzr
004efe284 	bl	#-2845740 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efe288 	cbz	x0, #92 ; -> 0x4efe2e4 
004efe28c 	mov	x1, x19
004efe290 	mov	x2, xzr
004efe294 	ldp	x30, x19, [sp], #16
004efe298 	b	#-3669368 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004efe29c 	mov	x0, x19
004efe2a0 	mov	w1, #14
004efe2a4 	bl	#-1392 ; -> 0x4efdd34 PlayerBase::Costume_Display
004efe2a8 	mov	x0, x19
004efe2ac 	mov	w1, #13
004efe2b0 	mov	w2, #11
004efe2b4 	bl	#-2032 ; -> 0x4efdac4 PlayerBase::CloakSetting
004efe2b8 	mov	x0, x19
004efe2bc 	mov	w1, #1
004efe2c0 	bl	#-1196 ; -> 0x4efde14 PlayerBase::HeadSetting
004efe2c4 	mov	x0, x19
004efe2c8 	mov	w1, #1
004efe2cc 	bl	#-1072 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efe2d0 	mov	x0, x19
004efe2d4 	mov	w1, #3
004efe2d8 	mov	w2, #3
004efe2dc 	ldp	x30, x19, [sp], #16
004efe2e0 	b	#-856 ; -> 0x4efdf88 PlayerBase::Animation_HairSetting
004efe2e4 	bl	#-9885144 ; -> 0x4590d0c 
