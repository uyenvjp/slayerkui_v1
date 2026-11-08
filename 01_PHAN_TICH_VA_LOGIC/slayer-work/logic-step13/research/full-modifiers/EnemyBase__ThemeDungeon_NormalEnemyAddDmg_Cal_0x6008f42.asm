0050bb4d0 	sub	sp, sp, #240
0050bb4d4 	str	x30, [sp, #192]
0050bb4d8 	stp	x22, x21, [sp, #208]
0050bb4dc 	stp	x20, x19, [sp, #224]
0050bb4e0 	adrp	x22, #95531008 ; -> 0xabd6000 
0050bb4e4 	mov	x19, x2
0050bb4e8 	mov	x20, x1
0050bb4ec 	ldrb	w8, [x22, #720]
0050bb4f0 	mov	x21, x0
0050bb4f4 	tbnz	w8, #0, #24 ; -> 0x50bb50c 
0050bb4f8 	adrp	x0, #87220224 ; -> 0xa3e9000 
0050bb4fc 	ldr	x0, [x0, #3552]
0050bb500 	bl	#-11709088 ; -> 0x4590a60 
0050bb504 	mov	w8, #1
0050bb508 	strb	w8, [x22, #720]
0050bb50c 	movi	v0.2d, #0000000000000000
0050bb510 	mov	w0, #31613
0050bb514 	mov	x1, xzr
0050bb518 	stp	q0, q0, [sp, #128]
0050bb51c 	stp	q0, q0, [sp, #160]
0050bb520 	bl	#-4669308 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bb524 	tbz	w0, #0, #56 ; -> 0x50bb55c 
0050bb528 	mov	w0, #31613
0050bb52c 	mov	x1, xzr
0050bb530 	bl	#-4669144 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bb534 	cbz	x0, #284 ; -> 0x50bb650 
0050bb538 	mov	x1, x21
0050bb53c 	mov	x2, x20
0050bb540 	mov	x3, x19
0050bb544 	ldp	x20, x19, [sp, #224]
0050bb548 	ldr	x30, [sp, #192]
0050bb54c 	ldp	x22, x21, [sp, #208]
0050bb550 	mov	x4, xzr
0050bb554 	add	sp, sp, #240
0050bb558 	b	#-5353332 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050bb55c 	ldr	x8, [x21, #312]
0050bb560 	cbz	x8, #240 ; -> 0x50bb650 
0050bb564 	ldr	q0, [x8, #22176]
0050bb568 	ldr	q1, [x8, #22192]
0050bb56c 	add	x0, sp, #64
0050bb570 	ldr	q2, [x8, #22208]
0050bb574 	ldr	q3, [x8, #22224]
0050bb578 	mov	x1, xzr
0050bb57c 	stp	q0, q1, [sp, #64]
0050bb580 	stp	q2, q3, [sp, #96]
0050bb584 	stp	q0, q1, [sp, #128]
0050bb588 	stp	q2, q3, [sp, #160]
0050bb58c 	bl	#-5673532 ; -> 0x4b52350 SilentInt::op_Implicit
0050bb590 	cmp	w0, #1
0050bb594 	b.lt	#160 ; -> 0x50bb634 
0050bb598 	ldp	q0, q1, [sp, #128]
0050bb59c 	mov	x0, sp
0050bb5a0 	mov	x1, xzr
0050bb5a4 	stp	q0, q1, [sp]
0050bb5a8 	ldp	q0, q2, [sp, #160]
0050bb5ac 	stp	q0, q2, [sp, #32]
0050bb5b0 	bl	#-5673568 ; -> 0x4b52350 SilentInt::op_Implicit
0050bb5b4 	adrp	x8, #87220224 ; -> 0xa3e9000 
0050bb5b8 	mov	w21, w0
0050bb5bc 	ldr	x8, [x8, #3552]
0050bb5c0 	ldr	x8, [x8]
0050bb5c4 	ldr	w9, [x8, #228]
0050bb5c8 	cbnz	w9, #12 ; -> 0x50bb5d4 
0050bb5cc 	mov	x0, x8
0050bb5d0 	bl	#-11708912 ; -> 0x4590be0 
0050bb5d4 	mov	w8, #100
0050bb5d8 	mov	w9, #10000
0050bb5dc 	mov	x1, xzr
0050bb5e0 	madd	w0, w21, w8, w9
0050bb5e4 	bl	#67901888 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb5e8 	mov	x2, x0
0050bb5ec 	mov	x3, x1
0050bb5f0 	mov	x0, x20
0050bb5f4 	mov	x1, x19
0050bb5f8 	mov	x4, xzr
0050bb5fc 	bl	#67891784 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050bb600 	mov	x19, x0
0050bb604 	mov	x20, x1
0050bb608 	mov	w0, #10000
0050bb60c 	mov	x1, xzr
0050bb610 	bl	#67901844 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb614 	mov	x2, x0
0050bb618 	mov	x3, x1
0050bb61c 	mov	x0, x19
0050bb620 	mov	x1, x20
0050bb624 	mov	x4, xzr
0050bb628 	bl	#67892240 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050bb62c 	mov	x20, x0
0050bb630 	mov	x19, x1
0050bb634 	mov	x0, x20
0050bb638 	mov	x1, x19
0050bb63c 	ldr	x30, [sp, #192]
0050bb640 	ldp	x20, x19, [sp, #224]
0050bb644 	ldp	x22, x21, [sp, #208]
0050bb648 	add	sp, sp, #240
0050bb64c 	ret
0050bb650 	bl	#-11708740 ; -> 0x4590d0c 
