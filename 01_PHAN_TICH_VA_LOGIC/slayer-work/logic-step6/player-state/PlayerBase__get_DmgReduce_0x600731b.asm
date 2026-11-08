004eeed94 	sub	sp, sp, #96
004eeed98 	stp	x30, x19, [sp, #80]
004eeed9c 	mov	x19, x0
004eeeda0 	mov	w0, #32839
004eeeda4 	mov	x1, xzr
004eeeda8 	bl	#-2783236 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eeedac 	tbz	w0, #0, #40 ; -> 0x4eeedd4 
004eeedb0 	mov	w0, #32839
004eeedb4 	mov	x1, xzr
004eeedb8 	bl	#-2783072 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eeedbc 	cbz	x0, #104 ; -> 0x4eeee24 
004eeedc0 	mov	x1, x19
004eeedc4 	ldp	x30, x19, [sp, #80]
004eeedc8 	mov	x2, xzr
004eeedcc 	add	sp, sp, #96
004eeedd0 	b	#-3602844 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
004eeedd4 	mov	x0, x19
004eeedd8 	bl	#-5004 ; -> 0x4eeda4c PlayerBase::GetPresetBattleStat
004eeeddc 	cbz	x0, #16 ; -> 0x4eeedec 
004eeede0 	movi	d0, #0000000000000000
004eeede4 	str	wzr, [x19, #196]
004eeede8 	b	#48 ; -> 0x4eeee18 
004eeedec 	ldr	x8, [x19, #312]
004eeedf0 	cbz	x8, #52 ; -> 0x4eeee24 
004eeedf4 	mov	w9, #5792
004eeedf8 	add	x0, sp, #8
004eeedfc 	mov	w2, #72
004eeee00 	add	x1, x8, x9
004eeee04 	bl	#82299628 ; -> 0x9d6b8f0 
004eeee08 	add	x0, sp, #8
004eeee0c 	mov	x1, xzr
004eeee10 	bl	#-3789032 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeee14 	str	s0, [x19, #196]
004eeee18 	ldp	x30, x19, [sp, #80]
004eeee1c 	add	sp, sp, #96
004eeee20 	ret
004eeee24 	bl	#-9822488 ; -> 0x4590d0c 
