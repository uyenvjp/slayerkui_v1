004eee430 	str	d12, [sp, #-96]!
004eee434 	stp	d11, d10, [sp, #16]
004eee438 	stp	d9, d8, [sp, #32]
004eee43c 	stp	x29, x30, [sp, #48]
004eee440 	stp	x22, x21, [sp, #64]
004eee444 	stp	x20, x19, [sp, #80]
004eee448 	sub	sp, sp, #576
004eee44c 	adrp	x20, #97415168 ; -> 0xabd5000 
004eee450 	mov	x19, x0
004eee454 	ldrb	w8, [x20, #1437]
004eee458 	tbnz	w8, #0, #24 ; -> 0x4eee470 
004eee45c 	adrp	x0, #89100288 ; -> 0xa3e7000 
004eee460 	ldr	x0, [x0, #1192]
004eee464 	bl	#-9820676 ; -> 0x4590a60 
004eee468 	mov	w8, #1
004eee46c 	strb	w8, [x20, #1437]
004eee470 	mov	w0, #32833
004eee474 	mov	x1, xzr
004eee478 	bl	#-2780884 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eee47c 	tbz	w0, #0, #60 ; -> 0x4eee4b8 
004eee480 	mov	w0, #32833
004eee484 	mov	x1, xzr
004eee488 	bl	#-2780720 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eee48c 	cbz	x0, #880 ; -> 0x4eee7fc 
004eee490 	mov	x1, x19
004eee494 	mov	x2, xzr
004eee498 	add	sp, sp, #576
004eee49c 	ldp	x20, x19, [sp, #80]
004eee4a0 	ldp	x22, x21, [sp, #64]
004eee4a4 	ldp	x29, x30, [sp, #48]
004eee4a8 	ldp	d9, d8, [sp, #32]
004eee4ac 	ldp	d11, d10, [sp, #16]
004eee4b0 	ldr	d12, [sp], #96
004eee4b4 	b	#-3600512 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
004eee4b8 	adrp	x21, #97390592 ; -> 0xabcf000 
004eee4bc 	adrp	x20, #89100288 ; -> 0xa3e7000 
004eee4c0 	ldrb	w8, [x21, #636]
004eee4c4 	ldr	x20, [x20, #1192]
004eee4c8 	cbnz	w8, #24 ; -> 0x4eee4e0 
004eee4cc 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee4d0 	ldr	x0, [x0, #3328]
004eee4d4 	bl	#-9820788 ; -> 0x4590a60 
004eee4d8 	mov	w8, #1
004eee4dc 	strb	w8, [x21, #636]
004eee4e0 	adrp	x22, #89133056 ; -> 0xa3ef000 
004eee4e4 	ldr	x22, [x22, #3328]
004eee4e8 	ldr	x0, [x20]
004eee4ec 	ldr	x8, [x22]
004eee4f0 	ldr	w9, [x0, #228]
004eee4f4 	ldr	x8, [x8, #184]
004eee4f8 	ldr	x20, [x8]
004eee4fc 	cbnz	w9, #8 ; -> 0x4eee504 
004eee500 	bl	#-9820448 ; -> 0x4590be0 
004eee504 	mov	x0, x20
004eee508 	mov	x1, xzr
004eee50c 	mov	x2, xzr
004eee510 	bl	#78728576 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
004eee514 	movi	d8, #0000000000000000
004eee518 	tbz	w0, #0, #560 ; -> 0x4eee748 
004eee51c 	ldrb	w8, [x21, #636]
004eee520 	cbnz	w8, #24 ; -> 0x4eee538 
004eee524 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee528 	ldr	x0, [x0, #3328]
004eee52c 	bl	#-9820876 ; -> 0x4590a60 
004eee530 	mov	w8, #1
004eee534 	strb	w8, [x21, #636]
004eee538 	ldr	x8, [x22]
004eee53c 	ldr	x8, [x8, #184]
004eee540 	ldr	x0, [x8]
004eee544 	cbz	x0, #696 ; -> 0x4eee7fc 
004eee548 	mov	x1, xzr
004eee54c 	bl	#1384972 ; -> 0x5040758 DragonValleyManager::get_IsDragonValleyBattleMode
004eee550 	tbz	w0, #0, #504 ; -> 0x4eee748 
004eee554 	ldrb	w8, [x21, #636]
004eee558 	cbnz	w8, #24 ; -> 0x4eee570 
004eee55c 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee560 	ldr	x0, [x0, #3328]
004eee564 	bl	#-9820932 ; -> 0x4590a60 
004eee568 	mov	w8, #1
004eee56c 	strb	w8, [x21, #636]
004eee570 	ldr	x8, [x22]
004eee574 	ldr	x8, [x8, #184]
004eee578 	ldr	x8, [x8]
004eee57c 	cbz	x8, #640 ; -> 0x4eee7fc 
004eee580 	ldr	x8, [x8, #48]
004eee584 	cbz	x8, #632 ; -> 0x4eee7fc 
004eee588 	add	x0, sp, #504
004eee58c 	add	x1, x8, #1104
004eee590 	mov	w2, #72
004eee594 	bl	#82301788 ; -> 0x9d6b8f0 
004eee598 	add	x0, sp, #504
004eee59c 	mov	x1, xzr
004eee5a0 	bl	#-3786872 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eee5a4 	fmov	s8, s0
004eee5a8 	ldrb	w8, [x21, #636]
004eee5ac 	cbnz	w8, #24 ; -> 0x4eee5c4 
004eee5b0 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee5b4 	ldr	x0, [x0, #3328]
004eee5b8 	bl	#-9821016 ; -> 0x4590a60 
004eee5bc 	mov	w8, #1
004eee5c0 	strb	w8, [x21, #636]
004eee5c4 	ldr	x8, [x22]
004eee5c8 	ldr	x8, [x8, #184]
004eee5cc 	ldr	x8, [x8]
004eee5d0 	cbz	x8, #556 ; -> 0x4eee7fc 
004eee5d4 	ldr	x8, [x8, #96]
004eee5d8 	cbz	x8, #548 ; -> 0x4eee7fc 
004eee5dc 	add	x0, sp, #432
004eee5e0 	add	x1, x8, #336
004eee5e4 	mov	w2, #72
004eee5e8 	bl	#82301704 ; -> 0x9d6b8f0 
004eee5ec 	add	x0, sp, #432
004eee5f0 	mov	x1, xzr
004eee5f4 	bl	#-3786956 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eee5f8 	fmov	s9, s0
004eee5fc 	ldrb	w8, [x21, #636]
004eee600 	cbnz	w8, #24 ; -> 0x4eee618 
004eee604 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee608 	ldr	x0, [x0, #3328]
004eee60c 	bl	#-9821100 ; -> 0x4590a60 
004eee610 	mov	w8, #1
004eee614 	strb	w8, [x21, #636]
004eee618 	ldr	x8, [x22]
004eee61c 	ldr	x8, [x8, #184]
004eee620 	ldr	x8, [x8]
004eee624 	cbz	x8, #472 ; -> 0x4eee7fc 
004eee628 	ldr	x8, [x8, #96]
004eee62c 	cbz	x8, #464 ; -> 0x4eee7fc 
004eee630 	add	x0, sp, #360
004eee634 	add	x1, x8, #408
004eee638 	mov	w2, #72
004eee63c 	bl	#82301620 ; -> 0x9d6b8f0 
004eee640 	add	x0, sp, #360
004eee644 	mov	x1, xzr
004eee648 	bl	#-3787040 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eee64c 	fmov	s10, s0
004eee650 	ldrb	w8, [x21, #636]
004eee654 	cbnz	w8, #24 ; -> 0x4eee66c 
004eee658 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee65c 	ldr	x0, [x0, #3328]
004eee660 	bl	#-9821184 ; -> 0x4590a60 
004eee664 	mov	w8, #1
004eee668 	strb	w8, [x21, #636]
004eee66c 	ldr	x8, [x22]
004eee670 	ldr	x8, [x8, #184]
004eee674 	ldr	x8, [x8]
004eee678 	cbz	x8, #388 ; -> 0x4eee7fc 
004eee67c 	ldr	x8, [x8, #48]
004eee680 	cbz	x8, #380 ; -> 0x4eee7fc 
004eee684 	add	x0, sp, #288
004eee688 	add	x1, x8, #456
004eee68c 	mov	w2, #72
004eee690 	bl	#82301536 ; -> 0x9d6b8f0 
004eee694 	add	x0, sp, #288
004eee698 	mov	x1, xzr
004eee69c 	bl	#-3787124 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eee6a0 	fmov	s11, s0
004eee6a4 	ldrb	w8, [x21, #636]
004eee6a8 	cbnz	w8, #24 ; -> 0x4eee6c0 
004eee6ac 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee6b0 	ldr	x0, [x0, #3328]
004eee6b4 	bl	#-9821268 ; -> 0x4590a60 
004eee6b8 	mov	w8, #1
004eee6bc 	strb	w8, [x21, #636]
004eee6c0 	ldr	x8, [x22]
004eee6c4 	ldr	x8, [x8, #184]
004eee6c8 	ldr	x8, [x8]
004eee6cc 	cbz	x8, #304 ; -> 0x4eee7fc 
004eee6d0 	ldr	x0, [x8, #48]
004eee6d4 	cbz	x0, #296 ; -> 0x4eee7fc 
004eee6d8 	mov	x1, xzr
004eee6dc 	bl	#1489256 ; -> 0x505a044 DragonValleyManager_Hunt::get_AttackSpeedWhileCharging
004eee6e0 	fmov	s12, s0
004eee6e4 	ldrb	w8, [x21, #636]
004eee6e8 	cbnz	w8, #24 ; -> 0x4eee700 
004eee6ec 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eee6f0 	ldr	x0, [x0, #3328]
004eee6f4 	bl	#-9821332 ; -> 0x4590a60 
004eee6f8 	mov	w8, #1
004eee6fc 	strb	w8, [x21, #636]
004eee700 	ldr	x8, [x22]
004eee704 	ldr	x8, [x8, #184]
004eee708 	ldr	x8, [x8]
004eee70c 	cbz	x8, #240 ; -> 0x4eee7fc 
004eee710 	ldr	x8, [x8, #104]
004eee714 	cbz	x8, #232 ; -> 0x4eee7fc 
004eee718 	add	x0, sp, #216
004eee71c 	add	x1, x8, #1000
004eee720 	mov	w2, #72
004eee724 	bl	#82301388 ; -> 0x9d6b8f0 
004eee728 	add	x0, sp, #216
004eee72c 	mov	x1, xzr
004eee730 	bl	#-3787272 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eee734 	fadd	s1, s8, s9
004eee738 	fadd	s1, s1, s10
004eee73c 	fadd	s1, s1, s11
004eee740 	fadd	s1, s1, s12
004eee744 	fadd	s8, s1, s0
004eee748 	mov	x0, x19
004eee74c 	bl	#-3328 ; -> 0x4eeda4c PlayerBase::GetPresetBattleStat
004eee750 	cbz	x0, #16 ; -> 0x4eee760 
004eee754 	mov	w8, #1124532224
004eee758 	fmov	s9, w8
004eee75c 	b	#56 ; -> 0x4eee794 
004eee760 	ldr	x8, [x19, #312]
004eee764 	cbz	x8, #152 ; -> 0x4eee7fc 
004eee768 	mov	w9, #10024
004eee76c 	add	x0, sp, #144
004eee770 	mov	w2, #72
004eee774 	add	x1, x8, x9
004eee778 	bl	#82301304 ; -> 0x9d6b8f0 
004eee77c 	add	x0, sp, #144
004eee780 	mov	x1, xzr
004eee784 	bl	#-3787356 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eee788 	mov	w8, #1120403456
004eee78c 	fmov	s1, w8
004eee790 	fadd	s9, s0, s1
004eee794 	ldr	x0, [x19, #312]
004eee798 	cbz	x0, #100 ; -> 0x4eee7fc 
004eee79c 	add	x8, sp, #72
004eee7a0 	mov	x1, xzr
004eee7a4 	bl	#-1695676 ; -> 0x4d507e8 DatabaseManager::get_SkillEffect_AtkSpeed
004eee7a8 	mov	x0, sp
004eee7ac 	add	x1, sp, #72
004eee7b0 	mov	w2, #72
004eee7b4 	bl	#82301244 ; -> 0x9d6b8f0 
004eee7b8 	mov	x0, sp
004eee7bc 	mov	x1, xzr
004eee7c0 	bl	#-3787416 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eee7c4 	fadd	s0, s9, s0
004eee7c8 	adrp	x8, #-50089984 ; -> 0x1f29000 
004eee7cc 	ldr	s1, [x8, #2372]
004eee7d0 	fadd	s0, s8, s0
004eee7d4 	fmul	s0, s0, s1
004eee7d8 	str	s0, [x19, #184]
004eee7dc 	add	sp, sp, #576
004eee7e0 	ldp	x20, x19, [sp, #80]
004eee7e4 	ldp	x22, x21, [sp, #64]
004eee7e8 	ldp	x29, x30, [sp, #48]
004eee7ec 	ldp	d9, d8, [sp, #32]
004eee7f0 	ldp	d11, d10, [sp, #16]
004eee7f4 	ldr	d12, [sp], #96
004eee7f8 	ret
004eee7fc 	bl	#-9820912 ; -> 0x4590d0c 
