004eefe00 	sub	sp, sp, #64
004eefe04 	stp	x30, x19, [sp, #48]
004eefe08 	mov	x19, x0
004eefe0c 	mov	w0, #1011
004eefe10 	mov	x1, xzr
004eefe14 	bl	#-2787440 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eefe18 	tbz	w0, #0, #40 ; -> 0x4eefe40 
004eefe1c 	mov	w0, #1011
004eefe20 	mov	x1, xzr
004eefe24 	bl	#-2787276 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eefe28 	cbz	x0, #100 ; -> 0x4eefe8c 
004eefe2c 	mov	x1, x19
004eefe30 	ldp	x30, x19, [sp, #48]
004eefe34 	mov	x2, xzr
004eefe38 	add	sp, sp, #64
004eefe3c 	b	#-3607048 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
004eefe40 	mov	x0, x19
004eefe44 	bl	#-9208 ; -> 0x4eeda4c PlayerBase::GetPresetBattleStat
004eefe48 	cbz	x0, #12 ; -> 0x4eefe54 
004eefe4c 	ldr	s0, [x0, #64]
004eefe50 	b	#44 ; -> 0x4eefe7c 
004eefe54 	ldr	x8, [x19, #312]
004eefe58 	cbz	x8, #52 ; -> 0x4eefe8c 
004eefe5c 	ldr	q0, [x8, #5200]
004eefe60 	ldr	q1, [x8, #5216]
004eefe64 	mov	x0, sp
004eefe68 	ldr	q2, [x8, #5232]
004eefe6c 	mov	x1, xzr
004eefe70 	stp	q0, q1, [sp]
004eefe74 	str	q2, [sp, #32]
004eefe78 	bl	#-8440172 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
004eefe7c 	str	s0, [x19, #1320]
004eefe80 	ldp	x30, x19, [sp, #48]
004eefe84 	add	sp, sp, #64
004eefe88 	ret
004eefe8c 	bl	#-9826688 ; -> 0x4590d0c 
