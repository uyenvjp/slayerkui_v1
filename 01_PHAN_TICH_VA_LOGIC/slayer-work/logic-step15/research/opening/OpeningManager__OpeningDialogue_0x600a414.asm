005241848 	str	x30, [sp, #-32]!
00524184c 	stp	x20, x19, [sp, #16]
005241850 	adrp	x20, #93933568 ; -> 0xabd6000 
005241854 	mov	x19, x0
005241858 	ldrb	w8, [x20, #3708]
00524185c 	tbnz	w8, #0, #24 ; -> 0x5241874 
005241860 	adrp	x0, #85811200 ; -> 0xa417000 
005241864 	ldr	x0, [x0, #1752]
005241868 	bl	#-13307400 ; -> 0x4590a60 
00524186c 	mov	w8, #1
005241870 	strb	w8, [x20, #3708]
005241874 	mov	w0, #42244
005241878 	mov	x1, xzr
00524187c 	bl	#-6267608 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241880 	tbz	w0, #0, #40 ; -> 0x52418a8 
005241884 	mov	w0, #42244
005241888 	mov	x1, xzr
00524188c 	bl	#-6267444 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005241890 	cbz	x0, #84 ; -> 0x52418e4 
005241894 	mov	x1, x19
005241898 	ldp	x20, x19, [sp, #16]
00524189c 	mov	x2, xzr
0052418a0 	ldr	x30, [sp], #32
0052418a4 	b	#-7091076 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052418a8 	ldr	x0, [x19, #40]
0052418ac 	cbz	x0, #56 ; -> 0x52418e4 
0052418b0 	adrp	x8, #85811200 ; -> 0xa417000 
0052418b4 	mov	x2, xzr
0052418b8 	ldr	x8, [x8, #1752]
0052418bc 	ldr	x1, [x8]
0052418c0 	bl	#74840552 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
0052418c4 	mov	x0, x19
0052418c8 	bl	#32 ; -> 0x52418e8 OpeningManager::delay_DialogueStart
0052418cc 	mov	x1, x0
0052418d0 	mov	x0, x19
0052418d4 	mov	x2, xzr
0052418d8 	ldp	x20, x19, [sp, #16]
0052418dc 	ldr	x30, [sp], #32
0052418e0 	b	#75252508 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
0052418e4 	bl	#-13306840 ; -> 0x4590d0c 
