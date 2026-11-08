005241b04 	stp	x30, x21, [sp, #-32]!
005241b08 	stp	x20, x19, [sp, #16]
005241b0c 	adrp	x20, #93933568 ; -> 0xabd6000 
005241b10 	mov	x19, x0
005241b14 	ldrb	w8, [x20, #3711]
005241b18 	tbnz	w8, #0, #48 ; -> 0x5241b48 
005241b1c 	adrp	x0, #85647360 ; -> 0xa3ef000 
005241b20 	ldr	x0, [x0, #632]
005241b24 	bl	#-13308100 ; -> 0x4590a60 
005241b28 	adrp	x0, #85622784 ; -> 0xa3e9000 
005241b2c 	ldr	x0, [x0, #2408]
005241b30 	bl	#-13308112 ; -> 0x4590a60 
005241b34 	adrp	x0, #85958656 ; -> 0xa43b000 
005241b38 	ldr	x0, [x0, #2456]
005241b3c 	bl	#-13308124 ; -> 0x4590a60 
005241b40 	mov	w8, #1
005241b44 	strb	w8, [x20, #3711]
005241b48 	mov	w0, #42250
005241b4c 	mov	x1, xzr
005241b50 	bl	#-6268332 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241b54 	tbz	w0, #0, #40 ; -> 0x5241b7c 
005241b58 	mov	w0, #42250
005241b5c 	mov	x1, xzr
005241b60 	bl	#-6268168 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005241b64 	cbz	x0, #128 ; -> 0x5241be4 
005241b68 	mov	x1, x19
005241b6c 	ldp	x20, x19, [sp, #16]
005241b70 	mov	x2, xzr
005241b74 	ldp	x30, x21, [sp], #32
005241b78 	b	#-7091800 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005241b7c 	adrp	x8, #85647360 ; -> 0xa3ef000 
005241b80 	adrp	x20, #85958656 ; -> 0xa43b000 
005241b84 	adrp	x21, #85622784 ; -> 0xa3e9000 
005241b88 	ldr	x8, [x8, #632]
005241b8c 	ldr	x20, [x20, #2456]
005241b90 	ldr	x21, [x21, #2408]
005241b94 	ldr	x0, [x8]
005241b98 	bl	#-13307548 ; -> 0x4590cfc 
005241b9c 	ldr	x2, [x20]
005241ba0 	mov	x1, x19
005241ba4 	mov	x3, xzr
005241ba8 	mov	x20, x0
005241bac 	bl	#-5688196 ; -> 0x4cd5028 DialogueManager+DialogueAction::.ctor
005241bb0 	ldr	x8, [x21]
005241bb4 	ldr	x8, [x8, #184]
005241bb8 	ldr	x0, [x8]
005241bbc 	cbz	x0, #40 ; -> 0x5241be4 
005241bc0 	mov	x3, x20
005241bc4 	ldp	x20, x19, [sp, #16]
005241bc8 	mov	w1, wzr
005241bcc 	mov	w2, #2
005241bd0 	mov	x4, xzr
005241bd4 	mov	x5, xzr
005241bd8 	mov	x6, xzr
005241bdc 	ldp	x30, x21, [sp], #32
005241be0 	b	#-5689404 ; -> 0x4cd4ba4 DialogueManager::Dialogue_Start
005241be4 	bl	#-13307608 ; -> 0x4590d0c 
