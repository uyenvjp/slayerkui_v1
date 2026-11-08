004e9d64c 	sub	sp, sp, #304
004e9d650 	str	x29, [sp, #240]
004e9d654 	stp	x30, x23, [sp, #256]
004e9d658 	stp	x22, x21, [sp, #272]
004e9d65c 	stp	x20, x19, [sp, #288]
004e9d660 	adrp	x21, #97746944 ; -> 0xabd5000 
004e9d664 	mov	x19, x1
004e9d668 	mov	x20, x0
004e9d66c 	ldrb	w8, [x21, #869]
004e9d670 	tbnz	w8, #0, #60 ; -> 0x4e9d6ac 
004e9d674 	adrp	x0, #89440256 ; -> 0xa3e9000 
004e9d678 	ldr	x0, [x0, #1384]
004e9d67c 	bl	#-9489436 ; -> 0x4590a60 
004e9d680 	adrp	x0, #89464832 ; -> 0xa3ef000 
004e9d684 	ldr	x0, [x0, #3632]
004e9d688 	bl	#-9489448 ; -> 0x4590a60 
004e9d68c 	adrp	x0, #89661440 ; -> 0xa41f000 
004e9d690 	ldr	x0, [x0, #1880]
004e9d694 	bl	#-9489460 ; -> 0x4590a60 
004e9d698 	adrp	x0, #89624576 ; -> 0xa416000 
004e9d69c 	ldr	x0, [x0, #1664]
004e9d6a0 	bl	#-9489472 ; -> 0x4590a60 
004e9d6a4 	mov	w8, #1
004e9d6a8 	strb	w8, [x21, #869]
004e9d6ac 	mov	w0, #32291
004e9d6b0 	mov	x1, xzr
004e9d6b4 	bl	#-2449680 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9d6b8 	tbz	w0, #0, #56 ; -> 0x4e9d6f0 
004e9d6bc 	mov	w0, #32291
004e9d6c0 	mov	x1, xzr
004e9d6c4 	bl	#-2449516 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9d6c8 	cbz	x0, #520 ; -> 0x4e9d8d0 
004e9d6cc 	mov	x1, x20
004e9d6d0 	mov	x2, x19
004e9d6d4 	ldr	x29, [sp, #240]
004e9d6d8 	ldp	x20, x19, [sp, #288]
004e9d6dc 	mov	x3, xzr
004e9d6e0 	ldp	x22, x21, [sp, #272]
004e9d6e4 	ldp	x30, x23, [sp, #256]
004e9d6e8 	add	sp, sp, #304
004e9d6ec 	b	#-3272408 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004e9d6f0 	adrp	x22, #89440256 ; -> 0xa3e9000 
004e9d6f4 	ldr	x22, [x22, #1384]
004e9d6f8 	ldr	x0, [x22]
004e9d6fc 	ldr	w8, [x0, #228]
004e9d700 	cbnz	w8, #12 ; -> 0x4e9d70c 
004e9d704 	bl	#-9489188 ; -> 0x4590be0 
004e9d708 	ldr	x0, [x22]
004e9d70c 	ldr	x8, [x0, #184]
004e9d710 	ldp	q0, q1, [x20, #304]
004e9d714 	ldr	q2, [x20, #336]
004e9d718 	add	x0, sp, #192
004e9d71c 	mov	x1, xzr
004e9d720 	ldr	x21, [x8]
004e9d724 	stp	q0, q1, [sp, #192]
004e9d728 	str	q2, [sp, #224]
004e9d72c 	bl	#-8107744 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9d730 	cbz	x21, #416 ; -> 0x4e9d8d0 
004e9d734 	mov	x2, x0
004e9d738 	mov	x0, x21
004e9d73c 	mov	w1, #6
004e9d740 	mov	x3, xzr
004e9d744 	bl	#-1406116 ; -> 0x4d462a0 DatabaseManager::UseCurrency
004e9d748 	adrp	x8, #89464832 ; -> 0xa3ef000 
004e9d74c 	ldr	x8, [x8, #3632]
004e9d750 	ldr	x8, [x8]
004e9d754 	ldr	x8, [x8, #184]
004e9d758 	ldr	x0, [x8]
004e9d75c 	cbz	x0, #372 ; -> 0x4e9d8d0 
004e9d760 	bl	#412 ; -> 0x4e9d8fc GoodsDisplayManager::UpgradeCubeUpdate
004e9d764 	cbz	x19, #364 ; -> 0x4e9d8d0 
004e9d768 	ldp	q0, q1, [x19, #32]
004e9d76c 	add	x8, sp, #144
004e9d770 	ldr	q2, [x19, #64]
004e9d774 	add	x0, sp, #96
004e9d778 	mov	x1, xzr
004e9d77c 	stp	q0, q1, [sp, #96]
004e9d780 	str	q2, [sp, #128]
004e9d784 	bl	#-8104456 ; -> 0x46e2d7c Liapp.SecureVariable.LiappSecureInt::op_Increment
004e9d788 	ldp	q0, q1, [sp, #144]
004e9d78c 	add	x0, x19, #32
004e9d790 	ldr	q2, [sp, #176]
004e9d794 	mov	x1, xzr
004e9d798 	stp	q0, q1, [x19, #32]
004e9d79c 	str	q2, [x19, #64]
004e9d7a0 	bl	#-9489820 ; -> 0x4590a04 
004e9d7a4 	mov	x0, x20
004e9d7a8 	mov	x1, x19
004e9d7ac 	mov	w2, #1
004e9d7b0 	bl	#-9680 ; -> 0x4e9b1e0 EquipmentSlotManager::Level_Value_Setting
004e9d7b4 	ldr	w8, [x20, #368]
004e9d7b8 	ldr	x21, [x20, #32]
004e9d7bc 	add	w8, w8, #1
004e9d7c0 	str	w8, [x20, #368]
004e9d7c4 	cbz	x21, #268 ; -> 0x4e9d8d0 
004e9d7c8 	ldr	q0, [x21, #15440]
004e9d7cc 	ldr	q1, [x21, #15456]
004e9d7d0 	add	x8, sp, #48
004e9d7d4 	ldr	q2, [x21, #15472]
004e9d7d8 	mov	x0, sp
004e9d7dc 	mov	x1, xzr
004e9d7e0 	stp	q0, q1, [sp]
004e9d7e4 	mov	w23, #15440
004e9d7e8 	str	q2, [sp, #32]
004e9d7ec 	bl	#-8108016 ; -> 0x46e1ffc Liapp.SecureVariable.LiappSecureLong::op_Increment
004e9d7f0 	ldp	q0, q1, [sp, #48]
004e9d7f4 	add	x0, x21, x23
004e9d7f8 	ldr	q2, [sp, #80]
004e9d7fc 	mov	x1, xzr
004e9d800 	str	q0, [x21, #15440]
004e9d804 	str	q1, [x21, #15456]
004e9d808 	str	q2, [x21, #15472]
004e9d80c 	bl	#-9489928 ; -> 0x4590a04 
004e9d810 	ldr	x8, [x22]
004e9d814 	ldr	x8, [x8, #184]
004e9d818 	ldr	x0, [x8]
004e9d81c 	cbz	x0, #180 ; -> 0x4e9d8d0 
004e9d820 	mov	w1, #1
004e9d824 	mov	w2, wzr
004e9d828 	mov	x3, xzr
004e9d82c 	bl	#-1352304 ; -> 0x4d535bc DatabaseManager::TryCallKinesisLog
004e9d830 	adrp	x8, #89624576 ; -> 0xa416000 
004e9d834 	ldr	x8, [x8, #1664]
004e9d838 	ldr	x8, [x8]
004e9d83c 	ldr	x8, [x8, #184]
004e9d840 	ldr	x0, [x8]
004e9d844 	cbz	x0, #140 ; -> 0x4e9d8d0 
004e9d848 	mov	w1, #1
004e9d84c 	mov	x2, xzr
004e9d850 	bl	#4049808 ; -> 0x527a3e0 QuestManager::NoticeCheck_Achievement
004e9d854 	ldr	x0, [x20, #160]
004e9d858 	cbz	x0, #120 ; -> 0x4e9d8d0 
004e9d85c 	adrp	x8, #89661440 ; -> 0xa41f000 
004e9d860 	mov	x1, xzr
004e9d864 	ldr	x8, [x8, #1880]
004e9d868 	ldr	x8, [x8]
004e9d86c 	ldr	x8, [x8, #184]
004e9d870 	ldr	x21, [x8]
004e9d874 	bl	#79048044 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e9d878 	cbz	x21, #88 ; -> 0x4e9d8d0 
004e9d87c 	mov	x1, x0
004e9d880 	mov	x0, x21
004e9d884 	mov	x2, xzr
004e9d888 	bl	#174152 ; -> 0x4ec80d0 ObjectPooler_Effect::UpgradeEffect
004e9d88c 	mov	x0, xzr
004e9d890 	bl	#-1592036 ; -> 0x4d18dac SoundManager::get_instance
004e9d894 	cbz	x0, #60 ; -> 0x4e9d8d0 
004e9d898 	ldr	x8, [x0]
004e9d89c 	mov	x1, xzr
004e9d8a0 	ldr	x9, [x8, #1400]
004e9d8a4 	ldr	x2, [x8, #1408]
004e9d8a8 	blr	x9
004e9d8ac 	mov	x0, x20
004e9d8b0 	mov	x1, x19
004e9d8b4 	bl	#340 ; -> 0x4e9da08 EquipmentSlotManager::TrySendKinesisLog
004e9d8b8 	ldp	x20, x19, [sp, #288]
004e9d8bc 	ldr	x29, [sp, #240]
004e9d8c0 	ldp	x22, x21, [sp, #272]
004e9d8c4 	ldp	x30, x23, [sp, #256]
004e9d8c8 	add	sp, sp, #304
004e9d8cc 	ret
004e9d8d0 	bl	#-9489348 ; -> 0x4590d0c 
