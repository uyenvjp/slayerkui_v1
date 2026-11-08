004f190a4 	stp	x30, x19, [sp, #-16]!
004f190a8 	mov	x19, x0
004f190ac 	mov	w0, #33208
004f190b0 	mov	x1, xzr
004f190b4 	bl	#-2956048 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f190b8 	tbz	w0, #0, #36 ; -> 0x4f190dc 
004f190bc 	mov	w0, #33208
004f190c0 	mov	x1, xzr
004f190c4 	bl	#-2955884 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f190c8 	cbz	x0, #32 ; -> 0x4f190e8 
004f190cc 	mov	x1, x19
004f190d0 	mov	x2, xzr
004f190d4 	ldp	x30, x19, [sp], #16
004f190d8 	b	#-3779512 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f190dc 	mov	x0, x19
004f190e0 	ldp	x30, x19, [sp], #16
004f190e4 	b	#-7696 ; -> 0x4f172d4 StatManager::LevelUp_Stop
004f190e8 	bl	#-9995228 ; -> 0x4590d0c 
