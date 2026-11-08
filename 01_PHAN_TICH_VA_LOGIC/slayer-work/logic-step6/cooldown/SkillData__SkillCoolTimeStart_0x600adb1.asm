005309c88 	str	x30, [sp, #-32]!
005309c8c 	stp	x20, x19, [sp, #16]
005309c90 	mov	w20, w1
005309c94 	mov	x19, x0
005309c98 	mov	w0, #32938
005309c9c 	mov	x1, xzr
005309ca0 	bl	#-7087868 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005309ca4 	tbz	w0, #0, #44 ; -> 0x5309cd0 
005309ca8 	mov	w0, #32938
005309cac 	mov	x1, xzr
005309cb0 	bl	#-7087704 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005309cb4 	cbz	x0, #120 ; -> 0x5309d2c 
005309cb8 	and	w2, w20, #0x1
005309cbc 	mov	x1, x19
005309cc0 	mov	x3, xzr
005309cc4 	ldp	x20, x19, [sp, #16]
005309cc8 	ldr	x30, [sp], #32
005309ccc 	b	#-7906260 ; -> 0x4b7f8f8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_26
005309cd0 	mov	x0, x19
005309cd4 	bl	#-16784 ; -> 0x5305b44 SkillData::InvalidateMaxCooltimePlus
005309cd8 	ldr	x8, [x19, #40]
005309cdc 	cbz	x8, #80 ; -> 0x5309d2c 
005309ce0 	ldr	x0, [x8, #80]
005309ce4 	cbz	x0, #72 ; -> 0x5309d2c 
005309ce8 	mov	w1, #1
005309cec 	mov	x2, xzr
005309cf0 	bl	#74424036 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
005309cf4 	ldr	x8, [x19]
005309cf8 	tbz	w20, #0, #16 ; -> 0x5309d08 
005309cfc 	ldr	x9, [x8, #568]
005309d00 	ldr	x1, [x8, #576]
005309d04 	b	#12 ; -> 0x5309d10 
005309d08 	ldr	x9, [x8, #552]
005309d0c 	ldr	x1, [x8, #560]
005309d10 	mov	x0, x19
005309d14 	blr	x9
005309d18 	mov	x1, x0
005309d1c 	mov	x0, x19
005309d20 	ldp	x20, x19, [sp, #16]
005309d24 	ldr	x30, [sp], #32
005309d28 	b	#-296 ; -> 0x5309c00 SkillData::StopAndGoIE_Cooltime
005309d2c 	bl	#-14127136 ; -> 0x4590d0c 
