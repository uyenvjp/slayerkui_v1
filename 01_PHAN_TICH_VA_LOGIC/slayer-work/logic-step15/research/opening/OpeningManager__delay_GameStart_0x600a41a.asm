005241e50 	str	d8, [sp, #-32]!
005241e54 	str	x30, [sp, #8]
005241e58 	stp	x20, x19, [sp, #16]
005241e5c 	fmov	s8, s0
005241e60 	adrp	x20, #93933568 ; -> 0xabd6000 
005241e64 	mov	x19, x0
005241e68 	ldrb	w8, [x20, #3713]
005241e6c 	tbnz	w8, #0, #24 ; -> 0x5241e84 
005241e70 	adrp	x0, #85958656 ; -> 0xa43b000 
005241e74 	ldr	x0, [x0, #2480]
005241e78 	bl	#-13308952 ; -> 0x4590a60 
005241e7c 	mov	w8, #1
005241e80 	strb	w8, [x20, #3713]
005241e84 	mov	w0, #42253
005241e88 	mov	x1, xzr
005241e8c 	bl	#-6269160 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241e90 	tbz	w0, #0, #48 ; -> 0x5241ec0 
005241e94 	mov	w0, #42253
005241e98 	mov	x1, xzr
005241e9c 	bl	#-6268996 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005241ea0 	cbz	x0, #88 ; -> 0x5241ef8 
005241ea4 	mov	x1, x19
005241ea8 	ldp	x20, x19, [sp, #16]
005241eac 	ldr	x30, [sp, #8]
005241eb0 	fmov	s0, s8
005241eb4 	mov	x2, xzr
005241eb8 	ldr	d8, [sp], #32
005241ebc 	b	#-7091344 ; -> 0x4b7ea2c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_7
005241ec0 	adrp	x8, #85958656 ; -> 0xa43b000 
005241ec4 	ldr	x8, [x8, #2480]
005241ec8 	ldr	x0, [x8]
005241ecc 	bl	#-13308368 ; -> 0x4590cfc 
005241ed0 	mov	x1, xzr
005241ed4 	mov	x19, x0
005241ed8 	bl	#63415120 ; -> 0x8ebc228 System.Object::.ctor
005241edc 	str	wzr, [x19, #16]
005241ee0 	mov	x0, x19
005241ee4 	ldr	x30, [sp, #8]
005241ee8 	str	s8, [x19, #32]
005241eec 	ldp	x20, x19, [sp, #16]
005241ef0 	ldr	d8, [sp], #32
005241ef4 	ret
005241ef8 	bl	#-13308396 ; -> 0x4590d0c 
