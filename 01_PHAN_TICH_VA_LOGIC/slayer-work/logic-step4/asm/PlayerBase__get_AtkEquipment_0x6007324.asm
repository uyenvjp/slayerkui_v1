004eef944 	sub	sp, sp, #240
004eef948 	str	d8, [sp, #192]
004eef94c 	stp	x30, x21, [sp, #208]
004eef950 	stp	x20, x19, [sp, #224]
004eef954 	adrp	x21, #97411072 ; -> 0xabd5000 
004eef958 	mov	x20, x0
004eef95c 	mov	x19, x8
004eef960 	ldrb	w9, [x21, #1441]
004eef964 	tbnz	w9, #0, #24 ; -> 0x4eef97c 
004eef968 	adrp	x0, #89100288 ; -> 0xa3e8000 
004eef96c 	ldr	x0, [x0, #1536]
004eef970 	bl	#-9826064 ; -> 0x4590a60 
004eef974 	mov	w8, #1
004eef978 	strb	w8, [x21, #1441]
004eef97c 	mov	w0, #4400
004eef980 	mov	x1, xzr
004eef984 	bl	#-2786272 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eef988 	tbz	w0, #0, #52 ; -> 0x4eef9bc 
004eef98c 	mov	w0, #4400
004eef990 	mov	x1, xzr
004eef994 	bl	#-2786108 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eef998 	cbz	x0, #256 ; -> 0x4eefa98 
004eef99c 	add	x8, sp, #128
004eef9a0 	mov	x1, x20
004eef9a4 	mov	x2, xzr
004eef9a8 	bl	#-3584316 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004eef9ac 	ldp	q0, q1, [sp, #128]
004eef9b0 	str	q0, [x19]
004eef9b4 	ldp	q0, q2, [sp, #160]
004eef9b8 	b	#196 ; -> 0x4eefa7c 
004eef9bc 	ldr	x8, [x20, #312]
004eef9c0 	cbz	x8, #216 ; -> 0x4eefa98 
004eef9c4 	ldr	q0, [x8, #2368]
004eef9c8 	ldr	q1, [x8, #2384]
004eef9cc 	add	x0, sp, #64
004eef9d0 	ldr	q2, [x8, #2400]
004eef9d4 	mov	x1, xzr
004eef9d8 	stp	q0, q1, [sp, #64]
004eef9dc 	ldr	q0, [x8, #2416]
004eef9e0 	stp	q2, q0, [sp, #96]
004eef9e4 	bl	#-3789028 ; -> 0x4b52900 SilentLong::op_Implicit
004eef9e8 	ldr	x8, [x20, #312]
004eef9ec 	cbz	x8, #172 ; -> 0x4eefa98 
004eef9f0 	ldr	q0, [x8, #2432]
004eef9f4 	ldr	q1, [x8, #2448]
004eef9f8 	mov	x21, x0
004eef9fc 	ldr	q2, [x8, #2464]
004eefa00 	mov	x0, sp
004eefa04 	mov	x1, xzr
004eefa08 	stp	q0, q1, [sp]
004eefa0c 	ldr	q0, [x8, #2480]
004eefa10 	add	x20, x20, #1192
004eefa14 	stp	q2, q0, [sp, #32]
004eefa18 	bl	#-3793912 ; -> 0x4b51620 SilentDouble::op_Implicit
004eefa1c 	adrp	x8, #89100288 ; -> 0xa3e8000 
004eefa20 	fmov	d8, d0
004eefa24 	ldr	x8, [x8, #1536]
004eefa28 	ldr	x0, [x8]
004eefa2c 	ldr	w8, [x0, #228]
004eefa30 	cbnz	w8, #8 ; -> 0x4eefa38 
004eefa34 	bl	#-9825876 ; -> 0x4590be0 
004eefa38 	frintp	d0, d8
004eefa3c 	scvtf	d1, x21
004eefa40 	mov	x9, #9218868437227405312
004eefa44 	mov	x0, x20
004eefa48 	mov	x2, xzr
004eefa4c 	fadd	d0, d0, d1
004eefa50 	fmov	d1, x9
004eefa54 	mov	x9, #100
004eefa58 	movk	x9, #32768, lsl #48
004eefa5c 	fcvtzs	x8, d0
004eefa60 	fcmp	d0, d1
004eefa64 	add	x8, x8, #100
004eefa68 	csel	x1, x9, x8, eq
004eefa6c 	bl	#-3789520 ; -> 0x4b5279c SilentLong::set_Value
004eefa70 	ldp	q0, q1, [x20]
004eefa74 	str	q0, [x19]
004eefa78 	ldp	q0, q2, [x20, #32]
004eefa7c 	stp	q1, q0, [x19, #16]
004eefa80 	ldp	x30, x21, [sp, #208]
004eefa84 	str	q2, [x19, #48]
004eefa88 	ldr	d8, [sp, #192]
004eefa8c 	ldp	x20, x19, [sp, #224]
004eefa90 	add	sp, sp, #240
004eefa94 	ret
004eefa98 	bl	#-9825676 ; -> 0x4590d0c 
