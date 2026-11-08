00530a5f0 	sub	sp, sp, #112
00530a5f4 	stp	d9, d8, [sp, #64]
00530a5f8 	str	x30, [sp, #80]
00530a5fc 	stp	x20, x19, [sp, #96]
00530a600 	mov	x19, x0
00530a604 	mov	w0, #6943
00530a608 	mov	x1, xzr
00530a60c 	fmov	s8, s0
00530a610 	bl	#-7090284 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530a614 	tbz	w0, #0, #52 ; -> 0x530a648 
00530a618 	mov	w0, #6943
00530a61c 	mov	x1, xzr
00530a620 	bl	#-7090120 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530a624 	cbz	x0, #200 ; -> 0x530a6ec 
00530a628 	mov	x1, x19
00530a62c 	fmov	s0, s8
00530a630 	ldr	x30, [sp, #80]
00530a634 	ldp	x20, x19, [sp, #96]
00530a638 	mov	x2, xzr
00530a63c 	ldp	d9, d8, [sp, #64]
00530a640 	add	sp, sp, #112
00530a644 	b	#-7909744 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
00530a648 	ldr	x8, [x19, #32]
00530a64c 	cbz	x8, #160 ; -> 0x530a6ec 
00530a650 	ldr	w8, [x8, #140]
00530a654 	cmp	w8, #11
00530a658 	b.ne	#44 ; -> 0x530a684 
00530a65c 	ldr	w20, [x19, #860]
00530a660 	mov	x8, sp
00530a664 	mov	x0, x19
00530a668 	bl	#-15840 ; -> 0x5306888 SkillData::get_MaxUseStackCount
00530a66c 	mov	x0, sp
00530a670 	mov	x1, xzr
00530a674 	bl	#-8094500 ; -> 0x4b52350 SilentInt::op_Implicit
00530a678 	cmp	w20, w0
00530a67c 	b.lt	#16 ; -> 0x530a68c 
00530a680 	b	#88 ; -> 0x530a6d8 
00530a684 	ldrb	w8, [x19, #56]
00530a688 	cbnz	w8, #80 ; -> 0x530a6d8 
00530a68c 	ldrb	w8, [x19, #57]
00530a690 	cbz	w8, #16 ; -> 0x530a6a0 
00530a694 	ldr	w8, [x19, #72]
00530a698 	cmp	w8, #8
00530a69c 	b.eq	#60 ; -> 0x530a6d8 
00530a6a0 	ldr	s9, [x19, #316]
00530a6a4 	fcmp	s9, #0.0
00530a6a8 	b.le	#48 ; -> 0x530a6d8 
00530a6ac 	mov	x0, x19
00530a6b0 	bl	#-18496 ; -> 0x5305e70 SkillData::get_MaxCooltimePlus
00530a6b4 	fmul	s0, s0, s8
00530a6b8 	adrp	x8, #-54398976 ; -> 0x1f29000 
00530a6bc 	ldr	s1, [x8, #1092]
00530a6c0 	fmul	s0, s0, s1
00530a6c4 	fadd	s0, s9, s0
00530a6c8 	fcmp	s0, #0.0
00530a6cc 	str	s0, [x19, #316]
00530a6d0 	b.hi	#8 ; -> 0x530a6d8 
00530a6d4 	str	wzr, [x19, #316]
00530a6d8 	ldp	x20, x19, [sp, #96]
00530a6dc 	ldr	x30, [sp, #80]
00530a6e0 	ldp	d9, d8, [sp, #64]
00530a6e4 	add	sp, sp, #112
00530a6e8 	ret
00530a6ec 	bl	#-14129632 ; -> 0x4590d0c 
