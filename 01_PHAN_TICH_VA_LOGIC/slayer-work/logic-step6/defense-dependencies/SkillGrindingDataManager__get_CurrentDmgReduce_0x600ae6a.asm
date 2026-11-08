0053136c4 	stp	x30, x19, [sp, #-16]!
0053136c8 	mov	x19, x0
0053136cc 	mov	w0, #32901
0053136d0 	mov	x1, xzr
0053136d4 	bl	#-7127344 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0053136d8 	tbz	w0, #0, #36 ; -> 0x53136fc 
0053136dc 	mov	w0, #32901
0053136e0 	mov	x1, xzr
0053136e4 	bl	#-7127180 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0053136e8 	cbz	x0, #60 ; -> 0x5313724 
0053136ec 	mov	x1, x19
0053136f0 	mov	x2, xzr
0053136f4 	ldp	x30, x19, [sp], #16
0053136f8 	b	#-7946948 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
0053136fc 	mov	x0, x19
005313700 	bl	#-324 ; -> 0x53135bc SkillGrindingDataManager::IsPresetBattleRunning
005313704 	tbz	w0, #0, #16 ; -> 0x5313714 
005313708 	movi	d0, #0000000000000000
00531370c 	ldp	x30, x19, [sp], #16
005313710 	ret
005313714 	add	x0, x19, #424
005313718 	mov	x1, xzr
00531371c 	ldp	x30, x19, [sp], #16
005313720 	b	#-8134700 ; -> 0x4b516f4 SilentFloat::get_Value
005313724 	bl	#-14166552 ; -> 0x4590d0c 
