004ea6c0c 	str	x30, [sp, #-32]!
004ea6c10 	stp	x20, x19, [sp, #16]
004ea6c14 	adrp	x20, #97710080 ; -> 0xabd5000 
004ea6c18 	mov	x19, x0
004ea6c1c 	ldrb	w8, [x20, #944]
004ea6c20 	tbnz	w8, #0, #24 ; -> 0x4ea6c38 
004ea6c24 	adrp	x0, #89403392 ; -> 0xa3e9000 
004ea6c28 	ldr	x0, [x0, #1064]
004ea6c2c 	bl	#-9527756 ; -> 0x4590a60 
004ea6c30 	mov	w8, #1
004ea6c34 	strb	w8, [x20, #944]
004ea6c38 	mov	w0, #32375
004ea6c3c 	mov	x1, xzr
004ea6c40 	bl	#-2487964 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ea6c44 	tbz	w0, #0, #40 ; -> 0x4ea6c6c 
004ea6c48 	mov	w0, #32375
004ea6c4c 	mov	x1, xzr
004ea6c50 	bl	#-2487800 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ea6c54 	cbz	x0, #60 ; -> 0x4ea6c90 
004ea6c58 	mov	x1, x19
004ea6c5c 	ldp	x20, x19, [sp, #16]
004ea6c60 	mov	x2, xzr
004ea6c64 	ldr	x30, [sp], #32
004ea6c68 	b	#-3311432 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ea6c6c 	ldr	x0, [x19, #32]
004ea6c70 	cbz	x0, #32 ; -> 0x4ea6c90 
004ea6c74 	adrp	x8, #89403392 ; -> 0xa3e9000 
004ea6c78 	mov	x2, xzr
004ea6c7c 	ldr	x8, [x8, #1064]
004ea6c80 	ldp	x20, x19, [sp, #16]
004ea6c84 	ldr	x1, [x8]
004ea6c88 	ldr	x30, [sp], #32
004ea6c8c 	b	#78620188 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
004ea6c90 	bl	#-9527172 ; -> 0x4590d0c 
