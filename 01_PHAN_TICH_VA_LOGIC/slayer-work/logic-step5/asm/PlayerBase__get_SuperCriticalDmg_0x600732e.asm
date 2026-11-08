004ef02cc 	sub	sp, sp, #160
004ef02d0 	str	x30, [sp, #128]
004ef02d4 	stp	x20, x19, [sp, #144]
004ef02d8 	mov	x20, x0
004ef02dc 	mov	w0, #4404
004ef02e0 	mov	x1, xzr
004ef02e4 	mov	x19, x8
004ef02e8 	bl	#-2788676 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef02ec 	tbz	w0, #0, #52 ; -> 0x4ef0320 
004ef02f0 	mov	w0, #4404
004ef02f4 	mov	x1, xzr
004ef02f8 	bl	#-2788512 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef02fc 	cbz	x0, #140 ; -> 0x4ef0388 
004ef0300 	add	x8, sp, #64
004ef0304 	mov	x1, x20
004ef0308 	mov	x2, xzr
004ef030c 	bl	#-3586720 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004ef0310 	ldp	q0, q1, [sp, #64]
004ef0314 	str	q0, [x19]
004ef0318 	ldp	q0, q2, [sp, #96]
004ef031c 	b	#84 ; -> 0x4ef0370 
004ef0320 	ldr	x8, [x20, #312]
004ef0324 	cbz	x8, #100 ; -> 0x4ef0388 
004ef0328 	ldr	q0, [x8, #5248]
004ef032c 	ldr	q1, [x8, #5264]
004ef0330 	mov	x0, sp
004ef0334 	ldr	q2, [x8, #5280]
004ef0338 	mov	x1, xzr
004ef033c 	add	x20, x20, #1400
004ef0340 	stp	q0, q1, [sp]
004ef0344 	ldr	q0, [x8, #5296]
004ef0348 	stp	q2, q0, [sp, #32]
004ef034c 	bl	#-3792892 ; -> 0x4b52350 SilentInt::op_Implicit
004ef0350 	add	w8, w0, #100
004ef0354 	mov	x0, x20
004ef0358 	mov	x2, xzr
004ef035c 	sxtw	x1, w8
004ef0360 	bl	#-3791812 ; -> 0x4b5279c SilentLong::set_Value
004ef0364 	ldp	q0, q1, [x20]
004ef0368 	str	q0, [x19]
004ef036c 	ldp	q0, q2, [x20, #32]
004ef0370 	stp	q1, q0, [x19, #16]
004ef0374 	ldr	x30, [sp, #128]
004ef0378 	str	q2, [x19, #48]
004ef037c 	ldp	x20, x19, [sp, #144]
004ef0380 	add	sp, sp, #160
004ef0384 	ret
004ef0388 	bl	#-9827964 ; -> 0x4590d0c 
