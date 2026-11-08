004f167e4 	str	x30, [sp, #-32]!
004f167e8 	stp	x20, x19, [sp, #16]
004f167ec 	adrp	x20, #97251328 ; -> 0xabd5000 
004f167f0 	mov	x19, x0
004f167f4 	ldrb	w8, [x20, #1718]
004f167f8 	tbnz	w8, #0, #24 ; -> 0x4f16810 
004f167fc 	adrp	x0, #89219072 ; -> 0xa42c000 
004f16800 	ldr	x0, [x0, #456]
004f16804 	bl	#-9985444 ; -> 0x4590a60 
004f16808 	mov	w8, #1
004f1680c 	strb	w8, [x20, #1718]
004f16810 	mov	w0, #33191
004f16814 	mov	x1, xzr
004f16818 	bl	#-2945652 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f1681c 	tbz	w0, #0, #40 ; -> 0x4f16844 
004f16820 	mov	w0, #33191
004f16824 	mov	x1, xzr
004f16828 	bl	#-2945488 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f1682c 	cbz	x0, #172 ; -> 0x4f168d8 
004f16830 	mov	x1, x19
004f16834 	ldp	x20, x19, [sp, #16]
004f16838 	mov	x2, xzr
004f1683c 	ldr	x30, [sp], #32
004f16840 	b	#-3769120 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f16844 	adrp	x20, #89219072 ; -> 0xa42c000 
004f16848 	mov	x0, x19
004f1684c 	ldr	x20, [x20, #456]
004f16850 	bl	#140 ; -> 0x4f168dc StatManager::ForceOptionValue_Update
004f16854 	mov	x0, x19
004f16858 	bl	#-816 ; -> 0x4f16528 StatManager::StatSlotSetting
004f1685c 	mov	x0, x19
004f16860 	bl	#492 ; -> 0x4f16a4c StatManager::LevelDisplay
004f16864 	mov	x0, x19
004f16868 	bl	#1060 ; -> 0x4f16c8c StatManager::Fill_Update
004f1686c 	mov	x0, x19
004f16870 	bl	#-496 ; -> 0x4f16680 StatManager::StatPointDisplay
004f16874 	fmov	s0, #5.00000000
004f16878 	fmov	s1, #10.00000000
004f1687c 	mov	x0, xzr
004f16880 	bl	#78531904 ; -> 0x99fb5c0 UnityEngine.Random::Range
004f16884 	ldr	x1, [x20]
004f16888 	mov	x0, x19
004f1688c 	mov	x2, xzr
004f16890 	bl	#78571968 ; -> 0x9a05250 UnityEngine.MonoBehaviour::Invoke
004f16894 	mov	x0, x19
004f16898 	bl	#2164 ; -> 0x4f1710c StatManager::ForceOptionIndexSlot_Setting
004f1689c 	mov	x0, x19
004f168a0 	bl	#2448 ; -> 0x4f17230 StatManager::DragonForce_OpenCheck
004f168a4 	mov	x0, x19
004f168a8 	bl	#2604 ; -> 0x4f172d4 StatManager::LevelUp_Stop
004f168ac 	mov	x0, x19
004f168b0 	bl	#2752 ; -> 0x4f17370 StatManager::StatLevelUp_Stop
004f168b4 	mov	x0, x19
004f168b8 	bl	#2820 ; -> 0x4f173bc StatManager::CheckDragonEmblemOpen
004f168bc 	mov	x0, x19
004f168c0 	bl	#2920 ; -> 0x4f17428 StatManager::get_dragonEmblemManager
004f168c4 	cbz	x0, #20 ; -> 0x4f168d8 
004f168c8 	ldp	x20, x19, [sp, #16]
004f168cc 	mov	x1, xzr
004f168d0 	ldr	x30, [sp], #32
004f168d4 	b	#1209184 ; -> 0x503dc34 DragonEmblemManager::DragonEmblemDataSetting
004f168d8 	bl	#-9984972 ; -> 0x4590d0c 
