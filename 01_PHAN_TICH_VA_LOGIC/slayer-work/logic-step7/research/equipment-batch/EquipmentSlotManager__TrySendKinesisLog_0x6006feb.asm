004e9da08 	sub	sp, sp, #176
004e9da0c 	stp	x30, x21, [sp, #144]
004e9da10 	stp	x20, x19, [sp, #160]
004e9da14 	mov	x19, x1
004e9da18 	mov	x20, x0
004e9da1c 	mov	w0, #32294
004e9da20 	mov	x1, xzr
004e9da24 	bl	#-2450560 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9da28 	tbz	w0, #0, #48 ; -> 0x4e9da58 
004e9da2c 	mov	w0, #32294
004e9da30 	mov	x1, xzr
004e9da34 	bl	#-2450396 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9da38 	cbz	x0, #324 ; -> 0x4e9db7c 
004e9da3c 	mov	x1, x20
004e9da40 	mov	x2, x19
004e9da44 	mov	x3, xzr
004e9da48 	ldp	x20, x19, [sp, #160]
004e9da4c 	ldp	x30, x21, [sp, #144]
004e9da50 	add	sp, sp, #176
004e9da54 	b	#-3273280 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004e9da58 	cbz	x19, #292 ; -> 0x4e9db7c 
004e9da5c 	ldr	x8, [x19]
004e9da60 	mov	x0, x19
004e9da64 	ldp	x9, x1, [x8, #376]
004e9da68 	blr	x9
004e9da6c 	cmp	w0, #1
004e9da70 	b.eq	#100 ; -> 0x4e9dad4 
004e9da74 	cbnz	w0, #248 ; -> 0x4e9db6c 
004e9da78 	ldr	w8, [x19, #84]
004e9da7c 	cmp	w8, #5
004e9da80 	b.lt	#236 ; -> 0x4e9db6c 
004e9da84 	b.ne	#72 ; -> 0x4e9dacc 
004e9da88 	ldp	q0, q1, [x19, #32]
004e9da8c 	add	x0, sp, #96
004e9da90 	ldr	q2, [x19, #64]
004e9da94 	mov	x1, xzr
004e9da98 	stp	q0, q1, [sp, #96]
004e9da9c 	str	q2, [sp, #128]
004e9daa0 	bl	#-8105172 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9daa4 	mov	w8, #52429
004e9daa8 	mov	w9, #39320
004e9daac 	movk	w8, #52428, lsl #16
004e9dab0 	movk	w9, #6553, lsl #16
004e9dab4 	madd	w8, w0, w8, w9
004e9dab8 	mov	w9, #39321
004e9dabc 	movk	w9, #6553, lsl #16
004e9dac0 	ror	w8, w8, #1
004e9dac4 	cmp	w8, w9
004e9dac8 	b.hs	#164 ; -> 0x4e9db6c 
004e9dacc 	mov	w20, #13
004e9dad0 	b	#84 ; -> 0x4e9db24 
004e9dad4 	ldr	w8, [x19, #84]
004e9dad8 	cmp	w8, #5
004e9dadc 	b.lt	#144 ; -> 0x4e9db6c 
004e9dae0 	b.ne	#64 ; -> 0x4e9db20 
004e9dae4 	ldp	q0, q1, [x19, #32]
004e9dae8 	add	x0, sp, #48
004e9daec 	ldr	q2, [x19, #64]
004e9daf0 	mov	x1, xzr
004e9daf4 	stp	q0, q1, [sp, #48]
004e9daf8 	str	q2, [sp, #80]
004e9dafc 	bl	#-8105264 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9db00 	mov	w8, #52429
004e9db04 	mov	w9, #39320
004e9db08 	movk	w8, #52428, lsl #16
004e9db0c 	movk	w9, #6553, lsl #16
004e9db10 	madd	w8, w0, w8, w9
004e9db14 	ror	w8, w8, #1
004e9db18 	cmp	w8, w9
004e9db1c 	b.hi	#80 ; -> 0x4e9db6c 
004e9db20 	mov	w20, #14
004e9db24 	mov	x0, xzr
004e9db28 	bl	#-7314136 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
004e9db2c 	ldp	q0, q1, [x19, #32]
004e9db30 	mov	x21, x0
004e9db34 	ldr	q2, [x19, #64]
004e9db38 	ldr	w19, [x19, #20]
004e9db3c 	mov	x0, sp
004e9db40 	mov	x1, xzr
004e9db44 	stp	q0, q1, [sp]
004e9db48 	str	q2, [sp, #32]
004e9db4c 	bl	#-8105344 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9db50 	cbz	x21, #44 ; -> 0x4e9db7c 
004e9db54 	mov	w2, w0
004e9db58 	mov	x0, x21
004e9db5c 	mov	w1, w19
004e9db60 	mov	w3, w20
004e9db64 	mov	x4, xzr
004e9db68 	bl	#-7299712 ; -> 0x47a78e8 Gear2.GrowSlayer.Logging.KinesisLog::ItemReinforce
004e9db6c 	ldp	x20, x19, [sp, #160]
004e9db70 	ldp	x30, x21, [sp, #144]
004e9db74 	add	sp, sp, #176
004e9db78 	ret
004e9db7c 	bl	#-9490032 ; -> 0x4590d0c 
