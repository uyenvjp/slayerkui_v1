005241de0 	str	d8, [sp, #-32]!
005241de4 	stp	x30, x19, [sp, #16]
005241de8 	mov	x19, x0
005241dec 	mov	w0, #42252
005241df0 	mov	x1, xzr
005241df4 	fmov	s8, s0
005241df8 	bl	#-6269012 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241dfc 	tbz	w0, #0, #44 ; -> 0x5241e28 
005241e00 	mov	w0, #42252
005241e04 	mov	x1, xzr
005241e08 	bl	#-6268848 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005241e0c 	cbz	x0, #64 ; -> 0x5241e4c 
005241e10 	mov	x1, x19
005241e14 	ldp	x30, x19, [sp, #16]
005241e18 	fmov	s0, s8
005241e1c 	mov	x2, xzr
005241e20 	ldr	d8, [sp], #32
005241e24 	b	#-7088464 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
005241e28 	fmov	s0, s8
005241e2c 	mov	x0, x19
005241e30 	bl	#32 ; -> 0x5241e50 OpeningManager::delay_GameStart
005241e34 	mov	x1, x0
005241e38 	mov	x0, x19
005241e3c 	mov	x2, xzr
005241e40 	ldp	x30, x19, [sp, #16]
005241e44 	ldr	d8, [sp], #32
005241e48 	b	#75251124 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
005241e4c 	bl	#-13308224 ; -> 0x4590d0c 
