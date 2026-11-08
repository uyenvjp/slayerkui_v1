0050b7460 	sub	sp, sp, #112
0050b7464 	stp	d9, d8, [sp, #48]
0050b7468 	stp	x30, x23, [sp, #64]
0050b746c 	stp	x22, x21, [sp, #80]
0050b7470 	stp	x20, x19, [sp, #96]
0050b7474 	adrp	x22, #95547392 ; -> 0xabd6000 
0050b7478 	mov	w20, w2
0050b747c 	mov	w21, w1
0050b7480 	ldrb	w8, [x22, #698]
0050b7484 	mov	x19, x0
0050b7488 	tbnz	w8, #0, #84 ; -> 0x50b74dc 
0050b748c 	adrp	x0, #87257088 ; -> 0xa3ee000 
0050b7490 	ldr	x0, [x0, #2104]
0050b7494 	bl	#-11692596 ; -> 0x4590a60 
0050b7498 	adrp	x0, #87228416 ; -> 0xa3e7000 
0050b749c 	ldr	x0, [x0, #1328]
0050b74a0 	bl	#-11692608 ; -> 0x4590a60 
0050b74a4 	adrp	x0, #87273472 ; -> 0xa3f2000 
0050b74a8 	ldr	x0, [x0, #3048]
0050b74ac 	bl	#-11692620 ; -> 0x4590a60 
0050b74b0 	adrp	x0, #87437312 ; -> 0xa41a000 
0050b74b4 	ldr	x0, [x0, #3856]
0050b74b8 	bl	#-11692632 ; -> 0x4590a60 
0050b74bc 	adrp	x0, #87539712 ; -> 0xa433000 
0050b74c0 	ldr	x0, [x0, #1536]
0050b74c4 	bl	#-11692644 ; -> 0x4590a60 
0050b74c8 	adrp	x0, #87539712 ; -> 0xa433000 
0050b74cc 	ldr	x0, [x0, #1544]
0050b74d0 	bl	#-11692656 ; -> 0x4590a60 
0050b74d4 	mov	w8, #1
0050b74d8 	strb	w8, [x22, #698]
0050b74dc 	mov	w0, #31572
0050b74e0 	mov	x1, xzr
0050b74e4 	str	wzr, [sp, #44]
0050b74e8 	str	xzr, [sp, #32]
0050b74ec 	bl	#-4652872 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b74f0 	tbz	w0, #0, #60 ; -> 0x50b752c 
0050b74f4 	mov	w0, #31572
0050b74f8 	mov	x1, xzr
0050b74fc 	bl	#-4652708 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b7500 	cbz	x0, #776 ; -> 0x50b7808 
0050b7504 	and	w2, w21, #0x1
0050b7508 	and	w3, w20, #0x1
0050b750c 	mov	x1, x19
0050b7510 	ldp	x20, x19, [sp, #96]
0050b7514 	mov	x4, xzr
0050b7518 	ldp	x22, x21, [sp, #80]
0050b751c 	ldp	x30, x23, [sp, #64]
0050b7520 	ldp	d9, d8, [sp, #48]
0050b7524 	add	sp, sp, #112
0050b7528 	b	#-5457356 ; -> 0x4b82f5c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_96
0050b752c 	adrp	x22, #87257088 ; -> 0xa3ee000 
0050b7530 	ldr	x22, [x22, #2104]
0050b7534 	str	wzr, [sp, #44]
0050b7538 	ldr	x0, [x22]
0050b753c 	ldr	w8, [x0, #228]
0050b7540 	cbnz	w8, #8 ; -> 0x50b7548 
0050b7544 	bl	#-11692388 ; -> 0x4590be0 
0050b7548 	adrp	x23, #95518720 ; -> 0xabcf000 
0050b754c 	ldrb	w8, [x23, #360]
0050b7550 	cbnz	w8, #24 ; -> 0x50b7568 
0050b7554 	adrp	x0, #87257088 ; -> 0xa3ee000 
0050b7558 	ldr	x0, [x0, #2104]
0050b755c 	bl	#-11692796 ; -> 0x4590a60 
0050b7560 	mov	w8, #1
0050b7564 	strb	w8, [x23, #360]
0050b7568 	ldr	x0, [x22]
0050b756c 	ldr	w8, [x0, #228]
0050b7570 	cbnz	w8, #12 ; -> 0x50b757c 
0050b7574 	bl	#-11692436 ; -> 0x4590be0 
0050b7578 	ldr	x0, [x22]
0050b757c 	ldr	x8, [x0, #184]
0050b7580 	ldr	x8, [x8]
0050b7584 	cbz	x8, #644 ; -> 0x50b7808 
0050b7588 	ldr	x0, [x8, #264]
0050b758c 	cbz	x0, #636 ; -> 0x50b7808 
0050b7590 	adrp	x8, #87273472 ; -> 0xa3f2000 
0050b7594 	add	x2, sp, #32
0050b7598 	mov	w1, #1004
0050b759c 	ldr	x8, [x8, #3048]
0050b75a0 	ldr	x3, [x8]
0050b75a4 	bl	#49950060 ; -> 0x805a310 
0050b75a8 	tbz	w0, #0, #296 ; -> 0x50b76d0 
0050b75ac 	ldr	x0, [sp, #32]
0050b75b0 	cbz	x0, #600 ; -> 0x50b7808 
0050b75b4 	ldr	x8, [x0, #472]
0050b75b8 	cbz	x8, #592 ; -> 0x50b7808 
0050b75bc 	ldr	w9, [x8, #24]
0050b75c0 	cmp	w9, #1
0050b75c4 	b.eq	#584 ; -> 0x50b780c 
0050b75c8 	cbz	w9, #580 ; -> 0x50b780c 
0050b75cc 	ldp	s8, s9, [x8, #32]
0050b75d0 	mov	x1, xzr
0050b75d4 	bl	#2405296 ; -> 0x5302984 Skill::get_BattleLevel
0050b75d8 	scvtf	s0, w0
0050b75dc 	add	x0, sp, #44
0050b75e0 	mov	x1, xzr
0050b75e4 	fmul	s0, s9, s0
0050b75e8 	fadd	s0, s8, s0
0050b75ec 	str	s0, [sp, #44]
0050b75f0 	bl	#64828732 ; -> 0x8e8ab2c System.Single::ToString
0050b75f4 	adrp	x8, #87539712 ; -> 0xa433000 
0050b75f8 	mov	x1, x0
0050b75fc 	mov	x2, xzr
0050b7600 	ldr	x8, [x8, #1536]
0050b7604 	ldr	x8, [x8]
0050b7608 	mov	x0, x8
0050b760c 	bl	#62998588 ; -> 0x8ccbe48 System.String::Concat
0050b7610 	adrp	x8, #87228416 ; -> 0xa3e7000 
0050b7614 	mov	x22, x0
0050b7618 	ldr	x8, [x8, #1328]
0050b761c 	ldr	x8, [x8]
0050b7620 	ldr	w9, [x8, #228]
0050b7624 	cbnz	w9, #12 ; -> 0x50b7630 
0050b7628 	mov	x0, x8
0050b762c 	bl	#-11692620 ; -> 0x4590be0 
0050b7630 	mov	x0, x22
0050b7634 	mov	x1, xzr
0050b7638 	bl	#76583584 ; -> 0x99c08d8 UnityEngine.Debug::Log
0050b763c 	adrp	x22, #87437312 ; -> 0xa41a000 
0050b7640 	ldr	x22, [x22, #3856]
0050b7644 	ldr	x0, [x22]
0050b7648 	ldr	w8, [x0, #228]
0050b764c 	tbz	w21, #0, #156 ; -> 0x50b76e8 
0050b7650 	tbz	w20, #0, #276 ; -> 0x50b7764 
0050b7654 	cbnz	w8, #12 ; -> 0x50b7660 
0050b7658 	bl	#-11692664 ; -> 0x4590be0 
0050b765c 	ldr	x0, [x22]
0050b7660 	ldr	x8, [x0, #184]
0050b7664 	ldr	x0, [x8]
0050b7668 	cbz	x0, #416 ; -> 0x50b7808 
0050b766c 	ldr	s0, [sp, #44]
0050b7670 	mov	w1, #2
0050b7674 	mov	w2, #4
0050b7678 	mov	w3, #1
0050b767c 	mov	x4, xzr
0050b7680 	bl	#-1880776 ; -> 0x4eec3b8 PlayerBase::CalculateSkillDmg
0050b7684 	adrp	x9, #87228416 ; -> 0xa3e7000 
0050b7688 	mov	x20, x0
0050b768c 	mov	x21, x1
0050b7690 	ldr	x9, [x9, #1248]
0050b7694 	mov	w8, #1004
0050b7698 	add	x1, sp, #28
0050b769c 	str	w8, [sp, #28]
0050b76a0 	ldr	x0, [x9, #72]
0050b76a4 	bl	#-11692732 ; -> 0x4590be8 
0050b76a8 	ldr	x8, [x19]
0050b76ac 	mov	x7, x0
0050b76b0 	mov	w6, wzr
0050b76b4 	mov	x0, x19
0050b76b8 	mov	x1, x20
0050b76bc 	mov	x2, x21
0050b76c0 	ldr	x9, [x8, #1208]
0050b76c4 	ldr	x8, [x8, #1216]
0050b76c8 	mov	w3, #2
0050b76cc 	b	#272 ; -> 0x50b77dc 
0050b76d0 	adrp	x8, #87539712 ; -> 0xa433000 
0050b76d4 	mov	x1, xzr
0050b76d8 	ldr	x8, [x8, #1544]
0050b76dc 	ldr	x0, [x8]
0050b76e0 	bl	#-9988636 ; -> 0x4730cc4 Gear2Framework.Debug.Gear2Debug::LogError
0050b76e4 	b	#268 ; -> 0x50b77f0 
0050b76e8 	cbnz	w8, #12 ; -> 0x50b76f4 
0050b76ec 	bl	#-11692812 ; -> 0x4590be0 
0050b76f0 	ldr	x0, [x22]
0050b76f4 	ldr	x8, [x0, #184]
0050b76f8 	ldr	x0, [x8]
0050b76fc 	cbz	x0, #268 ; -> 0x50b7808 
0050b7700 	ldr	s0, [sp, #44]
0050b7704 	mov	w1, wzr
0050b7708 	mov	w2, #4
0050b770c 	mov	w3, #1
0050b7710 	mov	x4, xzr
0050b7714 	bl	#-1880924 ; -> 0x4eec3b8 PlayerBase::CalculateSkillDmg
0050b7718 	adrp	x9, #87228416 ; -> 0xa3e7000 
0050b771c 	mov	x20, x0
0050b7720 	mov	x21, x1
0050b7724 	ldr	x9, [x9, #1248]
0050b7728 	mov	w8, #1004
0050b772c 	add	x1, sp, #28
0050b7730 	str	w8, [sp, #28]
0050b7734 	ldr	x0, [x9, #72]
0050b7738 	bl	#-11692880 ; -> 0x4590be8 
0050b773c 	ldr	x8, [x19]
0050b7740 	mov	x7, x0
0050b7744 	mov	w3, wzr
0050b7748 	mov	w6, wzr
0050b774c 	mov	x0, x19
0050b7750 	mov	x1, x20
0050b7754 	ldr	x9, [x8, #1208]
0050b7758 	ldr	x8, [x8, #1216]
0050b775c 	mov	x2, x21
0050b7760 	b	#124 ; -> 0x50b77dc 
0050b7764 	cbnz	w8, #12 ; -> 0x50b7770 
0050b7768 	bl	#-11692936 ; -> 0x4590be0 
0050b776c 	ldr	x0, [x22]
0050b7770 	ldr	x8, [x0, #184]
0050b7774 	ldr	x0, [x8]
0050b7778 	cbz	x0, #144 ; -> 0x50b7808 
0050b777c 	ldr	s0, [sp, #44]
0050b7780 	mov	w1, #1
0050b7784 	mov	w2, #4
0050b7788 	mov	w3, #1
0050b778c 	mov	x4, xzr
0050b7790 	bl	#-1881048 ; -> 0x4eec3b8 PlayerBase::CalculateSkillDmg
0050b7794 	adrp	x9, #87228416 ; -> 0xa3e7000 
0050b7798 	mov	x20, x0
0050b779c 	mov	x21, x1
0050b77a0 	ldr	x9, [x9, #1248]
0050b77a4 	mov	w8, #1004
0050b77a8 	add	x1, sp, #28
0050b77ac 	str	w8, [sp, #28]
0050b77b0 	ldr	x0, [x9, #72]
0050b77b4 	bl	#-11693004 ; -> 0x4590be8 
0050b77b8 	ldr	x8, [x19]
0050b77bc 	mov	x7, x0
0050b77c0 	mov	w6, wzr
0050b77c4 	mov	x0, x19
0050b77c8 	mov	x1, x20
0050b77cc 	mov	x2, x21
0050b77d0 	ldr	x9, [x8, #1208]
0050b77d4 	ldr	x8, [x8, #1216]
0050b77d8 	mov	w3, #1
0050b77dc 	str	x8, [sp, #8]
0050b77e0 	mov	w4, #4
0050b77e4 	mov	w5, #1
0050b77e8 	str	wzr, [sp]
0050b77ec 	blr	x9
0050b77f0 	ldp	x20, x19, [sp, #96]
0050b77f4 	ldp	x22, x21, [sp, #80]
0050b77f8 	ldp	x30, x23, [sp, #64]
0050b77fc 	ldp	d9, d8, [sp, #48]
0050b7800 	add	sp, sp, #112
0050b7804 	ret
0050b7808 	bl	#-11692796 ; -> 0x4590d0c 
0050b780c 	bl	#-11692792 ; -> 0x4590d14 
