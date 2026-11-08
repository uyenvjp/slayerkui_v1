00530a30c 	sub	sp, sp, #400
00530a310 	stp	d9, d8, [sp, #336]
00530a314 	str	x29, [sp, #352]
00530a318 	stp	x30, x21, [sp, #368]
00530a31c 	stp	x20, x19, [sp, #384]
00530a320 	fmov	s8, s0
00530a324 	adrp	x20, #93114368 ; -> 0xabd7000 
00530a328 	mov	x19, x0
00530a32c 	ldrb	w8, [x20, #1035]
00530a330 	tbnz	w8, #0, #24 ; -> 0x530a348 
00530a334 	adrp	x0, #85069824 ; -> 0xa42b000 
00530a338 	ldr	x0, [x0, #2808]
00530a33c 	bl	#-14129372 ; -> 0x4590a60 
00530a340 	mov	w8, #1
00530a344 	strb	w8, [x20, #1035]
00530a348 	mov	w0, #34996
00530a34c 	mov	x1, xzr
00530a350 	bl	#-7089580 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530a354 	tbz	w0, #0, #56 ; -> 0x530a38c 
00530a358 	mov	w0, #34996
00530a35c 	mov	x1, xzr
00530a360 	bl	#-7089416 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530a364 	cbz	x0, #648 ; -> 0x530a5ec 
00530a368 	mov	x1, x19
00530a36c 	fmov	s0, s8
00530a370 	ldr	x29, [sp, #352]
00530a374 	ldp	x20, x19, [sp, #384]
00530a378 	mov	x2, xzr
00530a37c 	ldp	x30, x21, [sp, #368]
00530a380 	ldp	d9, d8, [sp, #336]
00530a384 	add	sp, sp, #400
00530a388 	b	#-7909044 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
00530a38c 	ldrb	w8, [x19, #56]
00530a390 	cbz	w8, #80 ; -> 0x530a3e0 
00530a394 	ldr	x20, [x19, #32]
00530a398 	cbz	x20, #596 ; -> 0x530a5ec 
00530a39c 	adrp	x21, #85069824 ; -> 0xa42b000 
00530a3a0 	mov	w8, #11
00530a3a4 	add	x1, sp, #364
00530a3a8 	ldr	x21, [x21, #2808]
00530a3ac 	str	w8, [sp, #364]
00530a3b0 	ldr	x0, [x21]
00530a3b4 	bl	#-14129100 ; -> 0x4590be8 
00530a3b8 	ldr	x8, [x21]
00530a3bc 	ldr	w10, [x20, #140]
00530a3c0 	mov	x1, x0
00530a3c4 	mov	x9, #-1
00530a3c8 	add	x0, sp, #56
00530a3cc 	mov	x2, xzr
00530a3d0 	stp	x8, x9, [sp, #56]
00530a3d4 	str	w10, [sp, #72]
00530a3d8 	bl	#62543400 ; -> 0x8eafa00 System.Enum::Equals
00530a3dc 	tbz	w0, #0, #504 ; -> 0x530a5d4 
00530a3e0 	ldr	x20, [x19, #32]
00530a3e4 	cbz	x20, #520 ; -> 0x530a5ec 
00530a3e8 	adrp	x21, #85069824 ; -> 0xa42b000 
00530a3ec 	mov	w8, #11
00530a3f0 	add	x1, sp, #364
00530a3f4 	ldr	x21, [x21, #2808]
00530a3f8 	str	w8, [sp, #364]
00530a3fc 	ldr	x0, [x21]
00530a400 	bl	#-14129176 ; -> 0x4590be8 
00530a404 	ldr	x8, [x21]
00530a408 	ldr	w10, [x20, #140]
00530a40c 	mov	x1, x0
00530a410 	mov	x9, #-1
00530a414 	add	x0, sp, #56
00530a418 	mov	x2, xzr
00530a41c 	stp	x8, x9, [sp, #56]
00530a420 	str	w10, [sp, #72]
00530a424 	bl	#62543324 ; -> 0x8eafa00 System.Enum::Equals
00530a428 	tbz	w0, #0, #40 ; -> 0x530a450 
00530a42c 	ldr	w20, [x19, #860]
00530a430 	add	x8, sp, #272
00530a434 	mov	x0, x19
00530a438 	bl	#-15280 ; -> 0x5306888 SkillData::get_MaxUseStackCount
00530a43c 	add	x0, sp, #272
00530a440 	mov	x1, xzr
00530a444 	bl	#-8093940 ; -> 0x4b52350 SilentInt::op_Implicit
00530a448 	cmp	w20, w0
00530a44c 	b.ge	#392 ; -> 0x530a5d4 
00530a450 	ldr	x8, [x19, #32]
00530a454 	cbz	x8, #408 ; -> 0x530a5ec 
00530a458 	ldr	w8, [x8, #16]
00530a45c 	cmp	w8, #1006
00530a460 	b.eq	#372 ; -> 0x530a5d4 
00530a464 	ldrb	w8, [x19, #57]
00530a468 	cbz	w8, #16 ; -> 0x530a478 
00530a46c 	ldr	w8, [x19, #72]
00530a470 	cmp	w8, #8
00530a474 	b.eq	#352 ; -> 0x530a5d4 
00530a478 	ldr	s9, [x19, #316]
00530a47c 	fcmp	s9, #0.0
00530a480 	b.le	#52 ; -> 0x530a4b4 
00530a484 	mov	x0, x19
00530a488 	bl	#-17944 ; -> 0x5305e70 SkillData::get_MaxCooltimePlus
00530a48c 	fmul	s0, s0, s8
00530a490 	adrp	x8, #-54398976 ; -> 0x1f29000 
00530a494 	ldr	s1, [x8, #1092]
00530a498 	fmul	s0, s0, s1
00530a49c 	fadd	s0, s9, s0
00530a4a0 	fcmp	s0, #0.0
00530a4a4 	str	s0, [x19, #316]
00530a4a8 	b.hi	#300 ; -> 0x530a5d4 
00530a4ac 	str	wzr, [x19, #316]
00530a4b0 	b	#292 ; -> 0x530a5d4 
00530a4b4 	ldp	q0, q1, [x19, #656]
00530a4b8 	add	x0, sp, #224
00530a4bc 	ldr	q2, [x19, #688]
00530a4c0 	mov	x1, xzr
00530a4c4 	stp	q0, q1, [sp, #224]
00530a4c8 	str	q2, [sp, #256]
00530a4cc 	bl	#-12742592 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530a4d0 	fcmp	s0, #0.0
00530a4d4 	b.le	#256 ; -> 0x530a5d4 
00530a4d8 	ldp	q0, q1, [x19, #656]
00530a4dc 	add	x0, sp, #176
00530a4e0 	ldr	q2, [x19, #688]
00530a4e4 	mov	x1, xzr
00530a4e8 	stp	q0, q1, [sp, #176]
00530a4ec 	str	q2, [sp, #208]
00530a4f0 	bl	#-12742628 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530a4f4 	add	x8, sp, #104
00530a4f8 	mov	x0, x19
00530a4fc 	fmov	s9, s0
00530a500 	bl	#-17176 ; -> 0x53061e8 SkillData::get_MaxAttackCountResult
00530a504 	add	x0, sp, #104
00530a508 	mov	x1, xzr
00530a50c 	bl	#-8095716 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530a510 	fmul	s0, s0, s8
00530a514 	adrp	x8, #-54398976 ; -> 0x1f29000 
00530a518 	movi	v3.2s, #207, lsl #24
00530a51c 	ldr	s1, [x8, #1688]
00530a520 	mov	w8, #2139095040
00530a524 	mov	x0, xzr
00530a528 	fmov	s2, w8
00530a52c 	add	x8, sp, #56
00530a530 	fmul	s0, s0, s1
00530a534 	fcvtzs	s1, s0
00530a538 	fcmp	s0, s2
00530a53c 	scvtf	s1, s1
00530a540 	fcsel	s0, s3, s1, eq
00530a544 	fsub	s0, s9, s0
00530a548 	bl	#-12772784 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530a54c 	ldur	q0, [sp, #56]
00530a550 	ldur	q1, [sp, #72]
00530a554 	add	x0, x19, #656
00530a558 	ldur	q2, [sp, #88]
00530a55c 	mov	x1, xzr
00530a560 	stp	q0, q1, [x19, #656]
00530a564 	str	q2, [x19, #688]
00530a568 	bl	#-14130020 ; -> 0x4590a04 
00530a56c 	ldp	q0, q1, [x19, #656]
00530a570 	mov	x0, sp
00530a574 	ldr	q2, [x19, #688]
00530a578 	mov	x1, xzr
00530a57c 	stp	q0, q1, [sp]
00530a580 	str	q2, [sp, #32]
00530a584 	bl	#-12742776 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530a588 	fcmp	s0, #0.0
00530a58c 	b.hi	#52 ; -> 0x530a5c0 
00530a590 	movi	d0, #0000000000000000
00530a594 	add	x8, sp, #56
00530a598 	mov	x0, xzr
00530a59c 	bl	#-12772868 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530a5a0 	ldur	q0, [sp, #56]
00530a5a4 	ldur	q1, [sp, #72]
00530a5a8 	add	x0, x19, #656
00530a5ac 	ldur	q2, [sp, #88]
00530a5b0 	mov	x1, xzr
00530a5b4 	stp	q0, q1, [x19, #656]
00530a5b8 	str	q2, [x19, #688]
00530a5bc 	bl	#-14130104 ; -> 0x4590a04 
00530a5c0 	ldr	x8, [x19]
00530a5c4 	mov	x0, x19
00530a5c8 	ldr	x9, [x8, #536]
00530a5cc 	ldr	x1, [x8, #544]
00530a5d0 	blr	x9
00530a5d4 	ldp	x20, x19, [sp, #384]
00530a5d8 	ldr	x29, [sp, #352]
00530a5dc 	ldp	x30, x21, [sp, #368]
00530a5e0 	ldp	d9, d8, [sp, #336]
00530a5e4 	add	sp, sp, #400
00530a5e8 	ret
00530a5ec 	bl	#-14129376 ; -> 0x4590d0c 
