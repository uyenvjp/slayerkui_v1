0050c0574 	sub	sp, sp, #96
0050c0578 	str	x30, [sp, #48]
0050c057c 	stp	x22, x21, [sp, #64]
0050c0580 	stp	x20, x19, [sp, #80]
0050c0584 	adrp	x20, #95510528 ; -> 0xabd6000 
0050c0588 	mov	x19, x0
0050c058c 	ldrb	w8, [x20, #776]
0050c0590 	tbnz	w8, #0, #72 ; -> 0x50c05d8 
0050c0594 	adrp	x0, #87199744 ; -> 0xa3e9000 
0050c0598 	ldr	x0, [x0, #3552]
0050c059c 	bl	#-11729724 ; -> 0x4590a60 
0050c05a0 	adrp	x0, #87199744 ; -> 0xa3e9000 
0050c05a4 	ldr	x0, [x0, #1384]
0050c05a8 	bl	#-11729736 ; -> 0x4590a60 
0050c05ac 	adrp	x0, #87224320 ; -> 0xa3ef000 
0050c05b0 	ldr	x0, [x0, #3688]
0050c05b4 	bl	#-11729748 ; -> 0x4590a60 
0050c05b8 	adrp	x0, #87236608 ; -> 0xa3f2000 
0050c05bc 	ldr	x0, [x0, #552]
0050c05c0 	bl	#-11729760 ; -> 0x4590a60 
0050c05c4 	adrp	x0, #87220224 ; -> 0xa3ee000 
0050c05c8 	ldr	x0, [x0, #2840]
0050c05cc 	bl	#-11729772 ; -> 0x4590a60 
0050c05d0 	mov	w8, #1
0050c05d4 	strb	w8, [x20, #776]
0050c05d8 	mov	w0, #38539
0050c05dc 	mov	x1, xzr
0050c05e0 	stp	xzr, xzr, [sp, #32]
0050c05e4 	bl	#-4689984 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c05e8 	tbz	w0, #0, #48 ; -> 0x50c0618 
0050c05ec 	mov	w0, #38539
0050c05f0 	mov	x1, xzr
0050c05f4 	bl	#-4689820 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c05f8 	cbz	x0, #400 ; -> 0x50c0788 
0050c05fc 	mov	x1, x19
0050c0600 	ldp	x20, x19, [sp, #80]
0050c0604 	ldp	x22, x21, [sp, #64]
0050c0608 	mov	x2, xzr
0050c060c 	ldr	x30, [sp, #48]
0050c0610 	add	sp, sp, #96
0050c0614 	b	#-5513460 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050c0618 	ldr	x8, [x19]
0050c061c 	adrp	x21, #87236608 ; -> 0xa3f2000 
0050c0620 	mov	x0, x19
0050c0624 	ldr	x21, [x21, #552]
0050c0628 	mov	w1, #3
0050c062c 	ldr	x9, [x8, #712]
0050c0630 	ldr	x2, [x8, #720]
0050c0634 	blr	x9
0050c0638 	ldr	x0, [x21]
0050c063c 	ldr	w8, [x0, #228]
0050c0640 	cbnz	w8, #12 ; -> 0x50c064c 
0050c0644 	bl	#-11729508 ; -> 0x4590be0 
0050c0648 	ldr	x0, [x21]
0050c064c 	ldr	x8, [x0, #184]
0050c0650 	ldr	x0, [x8]
0050c0654 	cbz	x0, #308 ; -> 0x50c0788 
0050c0658 	mov	x1, xzr
0050c065c 	bl	#-2615048 ; -> 0x4e41f54 GameManager::get_gameMode
0050c0660 	adrp	x22, #87220224 ; -> 0xa3ee000 
0050c0664 	mov	w20, w0
0050c0668 	add	x1, sp, #60
0050c066c 	ldr	x22, [x22, #2840]
0050c0670 	str	wzr, [sp, #60]
0050c0674 	ldr	x0, [x22]
0050c0678 	bl	#-11729552 ; -> 0x4590be8 
0050c067c 	ldr	x8, [x22]
0050c0680 	mov	x1, x0
0050c0684 	mov	x9, #-1
0050c0688 	add	x0, sp, #8
0050c068c 	mov	x2, xzr
0050c0690 	str	w20, [sp, #24]
0050c0694 	stp	x8, x9, [sp, #8]
0050c0698 	bl	#64942952 ; -> 0x8eafa00 System.Enum::Equals
0050c069c 	tbz	w0, #0, #116 ; -> 0x50c0710 
0050c06a0 	mov	x0, x19
0050c06a4 	bl	#232 ; -> 0x50c078c EnemyBoss::StageItemDrop
0050c06a8 	mov	x0, x19
0050c06ac 	mov	x1, xzr
0050c06b0 	bl	#-696620 ; -> 0x5016584 Character::get_Hp_max
0050c06b4 	adrp	x9, #87199744 ; -> 0xa3e9000 
0050c06b8 	mov	x8, x0
0050c06bc 	ldr	x9, [x9, #3552]
0050c06c0 	stp	x8, x1, [sp, #32]
0050c06c4 	ldr	x0, [x9]
0050c06c8 	ldr	w9, [x0, #228]
0050c06cc 	cbnz	w9, #8 ; -> 0x50c06d4 
0050c06d0 	bl	#-11729648 ; -> 0x4590be0 
0050c06d4 	add	x0, sp, #32
0050c06d8 	mov	x1, xzr
0050c06dc 	bl	#67878752 ; -> 0x917c63c System.Numerics.BigInteger::ToString
0050c06e0 	cbz	x0, #168 ; -> 0x50c0788 
0050c06e4 	adrp	x22, #87199744 ; -> 0xa3e9000 
0050c06e8 	mov	x8, x0
0050c06ec 	ldr	x22, [x22, #1384]
0050c06f0 	ldr	w20, [x8, #16]
0050c06f4 	ldr	x0, [x22]
0050c06f8 	ldr	w9, [x0, #228]
0050c06fc 	cbnz	w9, #12 ; -> 0x50c0708 
0050c0700 	bl	#-11729696 ; -> 0x4590be0 
0050c0704 	ldr	x0, [x22]
0050c0708 	ldr	x8, [x0, #184]
0050c070c 	str	w20, [x8, #296]
0050c0710 	adrp	x8, #87224320 ; -> 0xa3ef000 
0050c0714 	mov	x0, x19
0050c0718 	mov	x1, xzr
0050c071c 	ldr	x8, [x8, #3688]
0050c0720 	ldr	x8, [x8]
0050c0724 	ldr	x8, [x8, #184]
0050c0728 	ldr	x20, [x8]
0050c072c 	bl	#76807860 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050c0730 	cbz	x20, #88 ; -> 0x50c0788 
0050c0734 	fmov	s0, #1.00000000
0050c0738 	mov	x1, x0
0050c073c 	mov	x0, x20
0050c0740 	mov	x2, xzr
0050c0744 	bl	#-3893788 ; -> 0x4d09d28 EffectManager::DeadEffect
0050c0748 	ldr	x0, [x21]
0050c074c 	ldr	w8, [x0, #228]
0050c0750 	cbnz	w8, #12 ; -> 0x50c075c 
0050c0754 	bl	#-11729780 ; -> 0x4590be0 
0050c0758 	ldr	x0, [x21]
0050c075c 	ldr	x8, [x0, #184]
0050c0760 	ldr	x0, [x8]
0050c0764 	cbz	x0, #36 ; -> 0x50c0788 
0050c0768 	mov	x1, x19
0050c076c 	mov	x2, xzr
0050c0770 	bl	#-2576128 ; -> 0x4e4b870 GameManager::BossClear
0050c0774 	ldp	x20, x19, [sp, #80]
0050c0778 	ldr	x30, [sp, #48]
0050c077c 	ldp	x22, x21, [sp, #64]
0050c0780 	add	sp, sp, #96
0050c0784 	ret
0050c0788 	bl	#-11729532 ; -> 0x4590d0c 
