005360644 	str	x30, [sp, #-32]!
005360648 	stp	x20, x19, [sp, #16]
00536064c 	adrp	x20, #92762112 ; -> 0xabd7000 
005360650 	mov	x19, x0
005360654 	ldrb	w8, [x20, #1603]
005360658 	tbnz	w8, #0, #24 ; -> 0x5360670 
00536065c 	adrp	x0, #84447232 ; -> 0xa3e9000 
005360660 	ldr	x0, [x0, #1040]
005360664 	bl	#-14482436 ; -> 0x4590a60 
005360668 	mov	w8, #1
00536066c 	strb	w8, [x20, #1603]
005360670 	mov	w0, #44294
005360674 	mov	x1, xzr
005360678 	bl	#-7442644 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00536067c 	tbz	w0, #0, #40 ; -> 0x53606a4 
005360680 	mov	w0, #44294
005360684 	mov	x1, xzr
005360688 	bl	#-7442480 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00536068c 	cbz	x0, #104 ; -> 0x53606f4 
005360690 	mov	x1, x19
005360694 	ldp	x20, x19, [sp, #16]
005360698 	mov	x2, xzr
00536069c 	ldr	x30, [sp], #32
0053606a0 	b	#-8266112 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0053606a4 	ldr	x0, [x19, #32]
0053606a8 	cbz	x0, #76 ; -> 0x53606f4 
0053606ac 	mov	x1, xzr
0053606b0 	bl	#-6381156 ; -> 0x4d4a84c DatabaseManager::get_UsingSkin
0053606b4 	mov	w8, w0
0053606b8 	ldr	x0, [x19, #80]
0053606bc 	tbz	w8, #0, #20 ; -> 0x53606d0 
0053606c0 	cbz	x0, #52 ; -> 0x53606f4 
0053606c4 	adrp	x8, #84447232 ; -> 0xa3e9000 
0053606c8 	mov	w2, wzr
0053606cc 	b	#16 ; -> 0x53606dc 
0053606d0 	cbz	x0, #36 ; -> 0x53606f4 
0053606d4 	adrp	x8, #84447232 ; -> 0xa3e9000 
0053606d8 	mov	w2, #1
0053606dc 	ldr	x8, [x8, #1040]
0053606e0 	ldr	x1, [x8]
0053606e4 	ldp	x20, x19, [sp, #16]
0053606e8 	mov	x3, xzr
0053606ec 	ldr	x30, [sp], #32
0053606f0 	b	#73664164 ; -> 0x99a0d94 UnityEngine.Animator::SetBool
0053606f4 	bl	#-14481896 ; -> 0x4590d0c 
