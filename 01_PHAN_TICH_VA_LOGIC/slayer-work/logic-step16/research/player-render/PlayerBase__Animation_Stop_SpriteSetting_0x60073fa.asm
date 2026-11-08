004efe1e0 	stp	x30, x19, [sp, #-16]!
004efe1e4 	mov	x19, x0
004efe1e8 	mov	w0, #33087
004efe1ec 	mov	x1, xzr
004efe1f0 	bl	#-2845772 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efe1f4 	tbz	w0, #0, #36 ; -> 0x4efe218 
004efe1f8 	mov	w0, #33087
004efe1fc 	mov	x1, xzr
004efe200 	bl	#-2845608 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efe204 	cbz	x0, #92 ; -> 0x4efe260 
004efe208 	mov	x1, x19
004efe20c 	mov	x2, xzr
004efe210 	ldp	x30, x19, [sp], #16
004efe214 	b	#-3669236 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004efe218 	mov	x0, x19
004efe21c 	mov	w1, #11
004efe220 	bl	#-1260 ; -> 0x4efdd34 PlayerBase::Costume_Display
004efe224 	mov	x0, x19
004efe228 	mov	w1, #14
004efe22c 	mov	w2, #4
004efe230 	bl	#-1900 ; -> 0x4efdac4 PlayerBase::CloakSetting
004efe234 	mov	x0, x19
004efe238 	mov	w1, wzr
004efe23c 	bl	#-1064 ; -> 0x4efde14 PlayerBase::HeadSetting
004efe240 	mov	x0, x19
004efe244 	mov	w1, wzr
004efe248 	bl	#-940 ; -> 0x4efde9c PlayerBase::Animation_FaceSetting
004efe24c 	mov	x0, x19
004efe250 	mov	w1, wzr
004efe254 	mov	w2, #4
004efe258 	ldp	x30, x19, [sp], #16
004efe25c 	b	#-724 ; -> 0x4efdf88 PlayerBase::Animation_HairSetting
004efe260 	bl	#-9885012 ; -> 0x4590d0c 
