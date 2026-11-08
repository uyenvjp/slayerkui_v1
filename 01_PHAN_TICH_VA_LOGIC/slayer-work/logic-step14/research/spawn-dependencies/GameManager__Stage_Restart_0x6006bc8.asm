004e4f690 	str	x30, [sp, #-32]!
004e4f694 	stp	x20, x19, [sp, #16]
004e4f698 	adrp	x20, #98066432 ; -> 0xabd5000 
004e4f69c 	mov	x19, x0
004e4f6a0 	ldrb	w8, [x20, #322]
004e4f6a4 	tbnz	w8, #0, #36 ; -> 0x4e4f6c8 
004e4f6a8 	adrp	x0, #89796608 ; -> 0xa3f2000 
004e4f6ac 	ldr	x0, [x0, #552]
004e4f6b0 	bl	#-9170000 ; -> 0x4590a60 
004e4f6b4 	adrp	x0, #89960448 ; -> 0xa41a000 
004e4f6b8 	ldr	x0, [x0, #3856]
004e4f6bc 	bl	#-9170012 ; -> 0x4590a60 
004e4f6c0 	mov	w8, #1
004e4f6c4 	strb	w8, [x20, #322]
004e4f6c8 	mov	w0, #30241
004e4f6cc 	mov	x1, xzr
004e4f6d0 	bl	#-2130220 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4f6d4 	tbz	w0, #0, #40 ; -> 0x4e4f6fc 
004e4f6d8 	mov	w0, #30241
004e4f6dc 	mov	x1, xzr
004e4f6e0 	bl	#-2130056 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4f6e4 	cbz	x0, #268 ; -> 0x4e4f7f0 
004e4f6e8 	mov	x1, x19
004e4f6ec 	ldp	x20, x19, [sp, #16]
004e4f6f0 	mov	x2, xzr
004e4f6f4 	ldr	x30, [sp], #32
004e4f6f8 	b	#-2953688 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e4f6fc 	adrp	x20, #89796608 ; -> 0xa3f2000 
004e4f700 	ldr	x20, [x20, #552]
004e4f704 	ldr	x0, [x20]
004e4f708 	ldr	w8, [x0, #228]
004e4f70c 	cbnz	w8, #12 ; -> 0x4e4f718 
004e4f710 	bl	#-9169712 ; -> 0x4590be0 
004e4f714 	ldr	x0, [x20]
004e4f718 	ldr	x8, [x0, #184]
004e4f71c 	ldr	x8, [x8, #56]
004e4f720 	cbz	x8, #208 ; -> 0x4e4f7f0 
004e4f724 	ldr	x9, [x8, #24]
004e4f728 	ldr	x0, [x8, #64]
004e4f72c 	ldr	x1, [x8, #40]
004e4f730 	blr	x9
004e4f734 	adrp	x20, #89960448 ; -> 0xa41a000 
004e4f738 	ldr	x20, [x20, #3856]
004e4f73c 	ldr	x0, [x20]
004e4f740 	ldr	w8, [x0, #228]
004e4f744 	cbnz	w8, #12 ; -> 0x4e4f750 
004e4f748 	bl	#-9169768 ; -> 0x4590be0 
004e4f74c 	ldr	x0, [x20]
004e4f750 	ldr	x8, [x0, #184]
004e4f754 	ldr	x0, [x8]
004e4f758 	cbz	x0, #152 ; -> 0x4e4f7f0 
004e4f75c 	mov	x1, xzr
004e4f760 	bl	#676608 ; -> 0x4ef4a60 PlayerBase::PlayerBattleStart
004e4f764 	ldr	x0, [x19, #1200]
004e4f768 	str	wzr, [x19, #1416]
004e4f76c 	cbz	x0, #132 ; -> 0x4e4f7f0 
004e4f770 	movi	d0, #0000000000000000
004e4f774 	mov	x1, xzr
004e4f778 	bl	#80566308 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e4f77c 	ldr	x0, [x19, #48]
004e4f780 	cbz	x0, #112 ; -> 0x4e4f7f0 
004e4f784 	mov	x1, xzr
004e4f788 	bl	#79444388 ; -> 0x9a1312c UnityEngine.Transform::get_position
004e4f78c 	mov	x0, x19
004e4f790 	str	s0, [x19, #1424]
004e4f794 	str	s1, [x19, #1428]
004e4f798 	str	s2, [x19, #1432]
004e4f79c 	bl	#-32176 ; -> 0x4e479ec GameManager::Start_MakeEnemy_Stage
004e4f7a0 	mov	x0, x19
004e4f7a4 	bl	#-48928 ; -> 0x4e43884 GameManager::StageGoldRenew
004e4f7a8 	mov	x0, x19
004e4f7ac 	bl	#72 ; -> 0x4e4f7f4 GameManager::ResetDragonValleyBuffIcons
004e4f7b0 	mov	x0, xzr
004e4f7b4 	bl	#-6993764 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
004e4f7b8 	ldr	x8, [x19, #520]
004e4f7bc 	cbz	x8, #52 ; -> 0x4e4f7f0 
004e4f7c0 	cbz	x0, #48 ; -> 0x4e4f7f0 
004e4f7c4 	ldr	w8, [x8, #32]
004e4f7c8 	mov	x2, xzr
004e4f7cc 	add	w1, w8, #1
004e4f7d0 	bl	#-6988580 ; -> 0x47a54ac Gear2.GrowSlayer.Logging.KinesisLog::StageClear
004e4f7d4 	mov	x0, xzr
004e4f7d8 	bl	#-6993800 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
004e4f7dc 	cbz	x0, #20 ; -> 0x4e4f7f0 
004e4f7e0 	ldp	x20, x19, [sp, #16]
004e4f7e4 	mov	x1, xzr
004e4f7e8 	ldr	x30, [sp], #32
004e4f7ec 	b	#-6993268 ; -> 0x47a4278 Gear2.GrowSlayer.Logging.KinesisLog::StartStopwatch
004e4f7f0 	bl	#-9169636 ; -> 0x4590d0c 
