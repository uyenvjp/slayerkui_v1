0050bb34c 	sub	sp, sp, #240
0050bb350 	str	x30, [sp, #192]
0050bb354 	stp	x22, x21, [sp, #208]
0050bb358 	stp	x20, x19, [sp, #224]
0050bb35c 	adrp	x22, #95531008 ; -> 0xabd6000 
0050bb360 	mov	x19, x2
0050bb364 	mov	x20, x1
0050bb368 	ldrb	w8, [x22, #718]
0050bb36c 	mov	x21, x0
0050bb370 	tbnz	w8, #0, #24 ; -> 0x50bb388 
0050bb374 	adrp	x0, #87220224 ; -> 0xa3e9000 
0050bb378 	ldr	x0, [x0, #3552]
0050bb37c 	bl	#-11708700 ; -> 0x4590a60 
0050bb380 	mov	w8, #1
0050bb384 	strb	w8, [x22, #718]
0050bb388 	movi	v0.2d, #0000000000000000
0050bb38c 	mov	w0, #31612
0050bb390 	mov	x1, xzr
0050bb394 	stp	q0, q0, [sp, #128]
0050bb398 	stp	q0, q0, [sp, #160]
0050bb39c 	bl	#-4668920 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bb3a0 	tbz	w0, #0, #56 ; -> 0x50bb3d8 
0050bb3a4 	mov	w0, #31612
0050bb3a8 	mov	x1, xzr
0050bb3ac 	bl	#-4668756 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bb3b0 	cbz	x0, #284 ; -> 0x50bb4cc 
0050bb3b4 	mov	x1, x21
0050bb3b8 	mov	x2, x20
0050bb3bc 	mov	x3, x19
0050bb3c0 	ldp	x20, x19, [sp, #224]
0050bb3c4 	ldr	x30, [sp, #192]
0050bb3c8 	ldp	x22, x21, [sp, #208]
0050bb3cc 	mov	x4, xzr
0050bb3d0 	add	sp, sp, #240
0050bb3d4 	b	#-5352944 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050bb3d8 	ldr	x8, [x21, #312]
0050bb3dc 	cbz	x8, #240 ; -> 0x50bb4cc 
0050bb3e0 	ldr	q0, [x8, #11632]
0050bb3e4 	ldr	q1, [x8, #11648]
0050bb3e8 	add	x0, sp, #64
0050bb3ec 	ldr	q2, [x8, #11664]
0050bb3f0 	ldr	q3, [x8, #11680]
0050bb3f4 	mov	x1, xzr
0050bb3f8 	stp	q0, q1, [sp, #64]
0050bb3fc 	stp	q2, q3, [sp, #96]
0050bb400 	stp	q0, q1, [sp, #128]
0050bb404 	stp	q2, q3, [sp, #160]
0050bb408 	bl	#-5671688 ; -> 0x4b52900 SilentLong::op_Implicit
0050bb40c 	cmp	x0, #1
0050bb410 	b.lt	#160 ; -> 0x50bb4b0 
0050bb414 	ldp	q0, q1, [sp, #128]
0050bb418 	mov	x0, sp
0050bb41c 	mov	x1, xzr
0050bb420 	stp	q0, q1, [sp]
0050bb424 	ldp	q0, q2, [sp, #160]
0050bb428 	stp	q0, q2, [sp, #32]
0050bb42c 	bl	#-5671724 ; -> 0x4b52900 SilentLong::op_Implicit
0050bb430 	adrp	x8, #87220224 ; -> 0xa3e9000 
0050bb434 	mov	x21, x0
0050bb438 	ldr	x8, [x8, #3552]
0050bb43c 	ldr	x8, [x8]
0050bb440 	ldr	w9, [x8, #228]
0050bb444 	cbnz	w9, #12 ; -> 0x50bb450 
0050bb448 	mov	x0, x8
0050bb44c 	bl	#-11708524 ; -> 0x4590be0 
0050bb450 	mov	w8, #100
0050bb454 	mov	w9, #10000
0050bb458 	mov	x1, xzr
0050bb45c 	madd	w0, w21, w8, w9
0050bb460 	bl	#67902276 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb464 	mov	x2, x0
0050bb468 	mov	x3, x1
0050bb46c 	mov	x0, x20
0050bb470 	mov	x1, x19
0050bb474 	mov	x4, xzr
0050bb478 	bl	#67892172 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050bb47c 	mov	x19, x0
0050bb480 	mov	x20, x1
0050bb484 	mov	w0, #10000
0050bb488 	mov	x1, xzr
0050bb48c 	bl	#67902232 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb490 	mov	x2, x0
0050bb494 	mov	x3, x1
0050bb498 	mov	x0, x19
0050bb49c 	mov	x1, x20
0050bb4a0 	mov	x4, xzr
0050bb4a4 	bl	#67892628 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050bb4a8 	mov	x20, x0
0050bb4ac 	mov	x19, x1
0050bb4b0 	mov	x0, x20
0050bb4b4 	mov	x1, x19
0050bb4b8 	ldr	x30, [sp, #192]
0050bb4bc 	ldp	x20, x19, [sp, #224]
0050bb4c0 	ldp	x22, x21, [sp, #208]
0050bb4c4 	add	sp, sp, #240
0050bb4c8 	ret
0050bb4cc 	bl	#-11708352 ; -> 0x4590d0c 
