00501a5fc 	sub	sp, sp, #224
00501a600 	stp	d13, d12, [sp, #144]
00501a604 	stp	d11, d10, [sp, #160]
00501a608 	stp	d9, d8, [sp, #176]
00501a60c 	stp	x30, x21, [sp, #192]
00501a610 	stp	x20, x19, [sp, #208]
00501a614 	adrp	x20, #96186368 ; -> 0xabd5000 
00501a618 	mov	x19, x0
00501a61c 	ldrb	w8, [x20, #3697]
00501a620 	tbnz	w8, #0, #36 ; -> 0x501a644 
00501a624 	adrp	x0, #87879680 ; -> 0xa3e9000 
00501a628 	ldr	x0, [x0, #1384]
00501a62c 	bl	#-11049932 ; -> 0x4590a60 
00501a630 	adrp	x0, #88080384 ; -> 0xa41a000 
00501a634 	ldr	x0, [x0, #3856]
00501a638 	bl	#-11049944 ; -> 0x4590a60 
00501a63c 	mov	w8, #1
00501a640 	strb	w8, [x20, #3697]
00501a644 	ldr	w8, [x19, #16]
00501a648 	ldr	x20, [x19, #32]
00501a64c 	cmp	w8, #1
00501a650 	b.eq	#124 ; -> 0x501a6cc 
00501a654 	cbnz	w8, #388 ; -> 0x501a7d8 
00501a658 	adrp	x21, #87879680 ; -> 0xa3e9000 
00501a65c 	mov	w9, #-1
00501a660 	ldr	x21, [x21, #1384]
00501a664 	str	w9, [x19, #16]
00501a668 	ldr	x0, [x21]
00501a66c 	ldr	w8, [x0, #228]
00501a670 	cbnz	w8, #12 ; -> 0x501a67c 
00501a674 	bl	#-11049620 ; -> 0x4590be0 
00501a678 	ldr	x0, [x21]
00501a67c 	ldr	x8, [x0, #184]
00501a680 	ldr	x0, [x8]
00501a684 	cbz	x0, #488 ; -> 0x501a86c 
00501a688 	add	x8, sp, #72
00501a68c 	mov	x1, xzr
00501a690 	bl	#-2923204 ; -> 0x4d50bcc DatabaseManager::get_SkillEffect_MoveSpeed
00501a694 	mov	x0, sp
00501a698 	add	x1, sp, #72
00501a69c 	mov	w2, #72
00501a6a0 	bl	#81072720 ; -> 0x9d6b8f0 
00501a6a4 	mov	x0, sp
00501a6a8 	mov	x1, xzr
00501a6ac 	bl	#-5015940 ; -> 0x4b51d28 SilentFloat::op_Implicit
00501a6b0 	mov	w8, #1120403456
00501a6b4 	fmov	s1, w8
00501a6b8 	mov	w8, #50
00501a6bc 	fcmp	s0, s1
00501a6c0 	csel	w8, wzr, w8, lt
00501a6c4 	str	w8, [x19, #40]
00501a6c8 	b	#12 ; -> 0x501a6d4 
00501a6cc 	mov	w8, #-1
00501a6d0 	str	w8, [x19, #16]
00501a6d4 	adrp	x21, #88080384 ; -> 0xa41a000 
00501a6d8 	ldr	x21, [x21, #3856]
00501a6dc 	ldr	x0, [x21]
00501a6e0 	ldr	w8, [x0, #228]
00501a6e4 	cbnz	w8, #12 ; -> 0x501a6f0 
00501a6e8 	bl	#-11049736 ; -> 0x4590be0 
00501a6ec 	ldr	x0, [x21]
00501a6f0 	ldr	x8, [x0, #184]
00501a6f4 	ldr	x0, [x8]
00501a6f8 	cbz	x0, #372 ; -> 0x501a86c 
00501a6fc 	mov	x1, xzr
00501a700 	bl	#77487840 ; -> 0x9a005e0 UnityEngine.Component::get_transform
00501a704 	cbz	x0, #360 ; -> 0x501a86c 
00501a708 	mov	x1, xzr
00501a70c 	bl	#77564448 ; -> 0x9a1312c UnityEngine.Transform::get_position
00501a710 	cbz	x20, #348 ; -> 0x501a86c 
00501a714 	ldr	x0, [x20, #88]
00501a718 	cbz	x0, #340 ; -> 0x501a86c 
00501a71c 	mov	x1, xzr
00501a720 	fmov	s8, s0
00501a724 	fmov	s9, s1
00501a728 	fmov	s10, s2
00501a72c 	bl	#77564416 ; -> 0x9a1312c UnityEngine.Transform::get_position
00501a730 	fmov	s11, s0
00501a734 	fmov	s12, s1
00501a738 	adrp	x21, #96157696 ; -> 0xabce000 
00501a73c 	fmov	s13, s2
00501a740 	ldrb	w8, [x21, #2299]
00501a744 	cbnz	w8, #24 ; -> 0x501a75c 
00501a748 	adrp	x0, #87875584 ; -> 0xa3e8000 
00501a74c 	ldr	x0, [x0, #632]
00501a750 	bl	#-11050224 ; -> 0x4590a60 
00501a754 	mov	w8, #1
00501a758 	strb	w8, [x21, #2299]
00501a75c 	adrp	x21, #96157696 ; -> 0xabce000 
00501a760 	ldrb	w8, [x21, #2300]
00501a764 	cbnz	w8, #24 ; -> 0x501a77c 
00501a768 	adrp	x0, #87875584 ; -> 0xa3e8000 
00501a76c 	ldr	x0, [x0, #1536]
00501a770 	bl	#-11050256 ; -> 0x4590a60 
00501a774 	mov	w8, #1
00501a778 	strb	w8, [x21, #2300]
00501a77c 	adrp	x8, #87875584 ; -> 0xa3e8000 
00501a780 	fsub	s8, s8, s11
00501a784 	fsub	s9, s9, s12
00501a788 	ldr	x8, [x8, #1536]
00501a78c 	fsub	s10, s10, s13
00501a790 	ldr	x0, [x8]
00501a794 	ldr	w8, [x0, #228]
00501a798 	cbnz	w8, #8 ; -> 0x501a7a0 
00501a79c 	bl	#-11049916 ; -> 0x4590be0 
00501a7a0 	fmul	s0, s8, s8
00501a7a4 	fmul	s1, s9, s9
00501a7a8 	adrp	x8, #-51318784 ; -> 0x1f29000 
00501a7ac 	fadd	s0, s0, s1
00501a7b0 	fmul	s1, s10, s10
00501a7b4 	fadd	s0, s1, s0
00501a7b8 	ldr	s1, [x8, #2412]
00501a7bc 	fsqrt	s0, s0
00501a7c0 	fcmp	s0, s1
00501a7c4 	b.le	#28 ; -> 0x501a7e0 
00501a7c8 	fdiv	s8, s8, s0
00501a7cc 	fdiv	s9, s9, s0
00501a7d0 	fdiv	s10, s10, s0
00501a7d4 	b	#36 ; -> 0x501a7f8 
00501a7d8 	mov	w0, wzr
00501a7dc 	b	#116 ; -> 0x501a850 
00501a7e0 	adrp	x8, #87875584 ; -> 0xa3e8000 
00501a7e4 	ldr	x8, [x8, #632]
00501a7e8 	ldr	x8, [x8]
00501a7ec 	ldr	x8, [x8, #184]
00501a7f0 	ldp	s9, s10, [x8, #4]
00501a7f4 	ldr	s8, [x8]
00501a7f8 	ldr	x20, [x20, #88]
00501a7fc 	ldr	w21, [x19, #40]
00501a800 	mov	x0, xzr
00501a804 	bl	#77550400 ; -> 0x9a0fb44 UnityEngine.Time::get_deltaTime
00501a808 	cbz	x20, #100 ; -> 0x501a86c 
00501a80c 	add	w8, w21, #110
00501a810 	mov	x0, x20
00501a814 	mov	x1, xzr
00501a818 	scvtf	s1, w8
00501a81c 	fmul	s2, s10, s1
00501a820 	fmul	s3, s9, s1
00501a824 	fmul	s4, s8, s1
00501a828 	fmul	s2, s0, s2
00501a82c 	fmul	s1, s0, s3
00501a830 	fmul	s0, s0, s4
00501a834 	bl	#77568216 ; -> 0x9a1410c UnityEngine.Transform::Translate
00501a838 	str	xzr, [x19, #24]!
00501a83c 	mov	x0, x19
00501a840 	mov	x1, xzr
00501a844 	bl	#-11050560 ; -> 0x4590a04 
00501a848 	mov	w0, #1
00501a84c 	stur	w0, [x19, #-8]
00501a850 	ldp	x20, x19, [sp, #208]
00501a854 	ldp	x30, x21, [sp, #192]
00501a858 	ldp	d9, d8, [sp, #176]
00501a85c 	ldp	d11, d10, [sp, #160]
00501a860 	ldp	d13, d12, [sp, #144]
00501a864 	add	sp, sp, #224
00501a868 	ret
00501a86c 	bl	#-11049824 ; -> 0x4590d0c 
