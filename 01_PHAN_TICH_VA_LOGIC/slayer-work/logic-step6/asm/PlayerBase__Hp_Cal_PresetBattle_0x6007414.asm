004ef2028 	str	x30, [sp, #-32]!
004ef202c 	stp	x20, x19, [sp, #16]
004ef2030 	mov	x20, x1
004ef2034 	mov	x19, x0
004ef2038 	mov	w0, #2362
004ef203c 	mov	x1, xzr
004ef2040 	bl	#-2796188 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef2044 	tbz	w0, #0, #44 ; -> 0x4ef2070 
004ef2048 	mov	w0, #2362
004ef204c 	mov	x1, xzr
004ef2050 	bl	#-2796024 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef2054 	cbz	x0, #108 ; -> 0x4ef20c0 
004ef2058 	mov	x1, x19
004ef205c 	mov	x2, x20
004ef2060 	mov	x3, xzr
004ef2064 	ldp	x20, x19, [sp, #16]
004ef2068 	ldr	x30, [sp], #32
004ef206c 	b	#-3618904 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004ef2070 	cbz	x20, #80 ; -> 0x4ef20c0 
004ef2074 	ldp	x1, x2, [x20, #32]
004ef2078 	mov	x0, x19
004ef207c 	mov	x3, xzr
004ef2080 	bl	#1197392 ; -> 0x50165d0 Character::set_Hp_max
004ef2084 	ldr	q0, [x20, #48]
004ef2088 	add	x0, x19, #1800
004ef208c 	mov	x1, xzr
004ef2090 	str	q0, [x19, #1792]
004ef2094 	bl	#-9836176 ; -> 0x4590a04 
004ef2098 	ldr	x8, [x19, #1840]
004ef209c 	cbz	x8, #36 ; -> 0x4ef20c0 
004ef20a0 	ldr	x9, [x8, #24]
004ef20a4 	ldr	x0, [x8, #64]
004ef20a8 	ldr	x1, [x8, #40]
004ef20ac 	blr	x9
004ef20b0 	mov	x0, x19
004ef20b4 	ldp	x20, x19, [sp, #16]
004ef20b8 	ldr	x30, [sp], #32
004ef20bc 	b	#8 ; -> 0x4ef20c4 PlayerBase::SetHpBar_Effect_FillAmount
004ef20c0 	bl	#-9835444 ; -> 0x4590d0c 
