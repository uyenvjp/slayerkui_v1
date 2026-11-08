004e9db80 	sub	sp, sp, #224
004e9db84 	str	x30, [sp, #192]
004e9db88 	stp	x20, x19, [sp, #208]
004e9db8c 	adrp	x20, #97746944 ; -> 0xabd5000 
004e9db90 	mov	x19, x0
004e9db94 	ldrb	w8, [x20, #870]
004e9db98 	tbnz	w8, #0, #24 ; -> 0x4e9dbb0 
004e9db9c 	adrp	x0, #89640960 ; -> 0xa41a000 
004e9dba0 	ldr	x0, [x0, #3856]
004e9dba4 	bl	#-9490756 ; -> 0x4590a60 
004e9dba8 	mov	w8, #1
004e9dbac 	strb	w8, [x20, #870]
004e9dbb0 	mov	w0, #32296
004e9dbb4 	mov	x1, xzr
004e9dbb8 	bl	#-2450964 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9dbbc 	tbz	w0, #0, #44 ; -> 0x4e9dbe8 
004e9dbc0 	mov	w0, #32296
004e9dbc4 	mov	x1, xzr
004e9dbc8 	bl	#-2450800 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9dbcc 	cbz	x0, #220 ; -> 0x4e9dca8 
004e9dbd0 	mov	x1, x19
004e9dbd4 	ldp	x20, x19, [sp, #208]
004e9dbd8 	ldr	x30, [sp, #192]
004e9dbdc 	mov	x2, xzr
004e9dbe0 	add	sp, sp, #224
004e9dbe4 	b	#-3274436 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e9dbe8 	ldr	x8, [x19, #32]
004e9dbec 	cbz	x8, #188 ; -> 0x4e9dca8 
004e9dbf0 	ldr	q0, [x8, #2320]
004e9dbf4 	ldr	q1, [x8, #2336]
004e9dbf8 	ldr	q2, [x8, #2352]
004e9dbfc 	ldr	x8, [x19, #288]
004e9dc00 	stp	q0, q1, [sp, #144]
004e9dc04 	str	q2, [sp, #176]
004e9dc08 	cbz	x8, #160 ; -> 0x4e9dca8 
004e9dc0c 	ldr	w0, [x8, #20]
004e9dc10 	add	x8, sp, #96
004e9dc14 	mov	x1, xzr
004e9dc18 	bl	#-8133692 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9dc1c 	ldp	q0, q1, [sp, #144]
004e9dc20 	add	x0, sp, #48
004e9dc24 	ldr	q2, [sp, #176]
004e9dc28 	mov	x1, sp
004e9dc2c 	mov	x2, xzr
004e9dc30 	stp	q0, q1, [sp, #48]
004e9dc34 	ldp	q0, q1, [sp, #96]
004e9dc38 	str	q2, [sp, #80]
004e9dc3c 	ldr	q2, [sp, #128]
004e9dc40 	stp	q0, q1, [sp]
004e9dc44 	str	q2, [sp, #32]
004e9dc48 	bl	#-8105040 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e9dc4c 	tbz	w0, #0, #76 ; -> 0x4e9dc98 
004e9dc50 	ldr	x8, [x19, #32]
004e9dc54 	cbz	x8, #84 ; -> 0x4e9dca8 
004e9dc58 	ldr	x1, [x19, #296]
004e9dc5c 	add	x0, x8, #2368
004e9dc60 	mov	x2, xzr
004e9dc64 	bl	#-3454152 ; -> 0x4b5279c SilentLong::set_Value
004e9dc68 	adrp	x19, #89640960 ; -> 0xa41a000 
004e9dc6c 	ldr	x19, [x19, #3856]
004e9dc70 	ldr	x0, [x19]
004e9dc74 	ldr	w8, [x0, #228]
004e9dc78 	cbnz	w8, #12 ; -> 0x4e9dc84 
004e9dc7c 	bl	#-9490588 ; -> 0x4590be0 
004e9dc80 	ldr	x0, [x19]
004e9dc84 	ldr	x8, [x0, #184]
004e9dc88 	ldr	x0, [x8]
004e9dc8c 	cbz	x0, #28 ; -> 0x4e9dca8 
004e9dc90 	mov	x1, xzr
004e9dc94 	bl	#300544 ; -> 0x4ee7294 PlayerBase::Atk_Cal
004e9dc98 	ldp	x20, x19, [sp, #208]
004e9dc9c 	ldr	x30, [sp, #192]
004e9dca0 	add	sp, sp, #224
004e9dca4 	ret
004e9dca8 	bl	#-9490332 ; -> 0x4590d0c 
