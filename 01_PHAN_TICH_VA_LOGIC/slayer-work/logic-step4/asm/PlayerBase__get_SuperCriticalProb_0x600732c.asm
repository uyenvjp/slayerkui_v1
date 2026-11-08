004ef01e0 	sub	sp, sp, #64
004ef01e4 	stp	x30, x19, [sp, #48]
004ef01e8 	mov	x19, x0
004ef01ec 	mov	w0, #31567
004ef01f0 	mov	x1, xzr
004ef01f4 	bl	#-2788432 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef01f8 	tbz	w0, #0, #40 ; -> 0x4ef0220 
004ef01fc 	mov	w0, #31567
004ef0200 	mov	x1, xzr
004ef0204 	bl	#-2788268 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef0208 	cbz	x0, #100 ; -> 0x4ef026c 
004ef020c 	mov	x1, x19
004ef0210 	ldp	x30, x19, [sp, #48]
004ef0214 	mov	x2, xzr
004ef0218 	add	sp, sp, #64
004ef021c 	b	#-3608040 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
004ef0220 	mov	x0, x19
004ef0224 	bl	#-10200 ; -> 0x4eeda4c PlayerBase::GetPresetBattleStat
004ef0228 	cbz	x0, #12 ; -> 0x4ef0234 
004ef022c 	ldr	s0, [x0, #80]
004ef0230 	b	#44 ; -> 0x4ef025c 
004ef0234 	ldr	x8, [x19, #312]
004ef0238 	cbz	x8, #52 ; -> 0x4ef026c 
004ef023c 	ldr	q0, [x8, #5312]
004ef0240 	ldr	q1, [x8, #5328]
004ef0244 	mov	x0, sp
004ef0248 	ldr	q2, [x8, #5344]
004ef024c 	mov	x1, xzr
004ef0250 	stp	q0, q1, [sp]
004ef0254 	str	q2, [sp, #32]
004ef0258 	bl	#-8441164 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
004ef025c 	str	s0, [x19, #1392]
004ef0260 	ldp	x30, x19, [sp, #48]
004ef0264 	add	sp, sp, #64
004ef0268 	ret
004ef026c 	bl	#-9827680 ; -> 0x4590d0c 
