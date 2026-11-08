004e50a00 	str	x30, [sp, #-32]!
004e50a04 	stp	x20, x19, [sp, #16]
004e50a08 	adrp	x20, #98062336 ; -> 0xabd5000 
004e50a0c 	mov	x19, x0
004e50a10 	ldrb	w8, [x20, #331]
004e50a14 	tbnz	w8, #0, #24 ; -> 0x4e50a2c 
004e50a18 	adrp	x0, #90013696 ; -> 0xa428000 
004e50a1c 	ldr	x0, [x0, #2888]
004e50a20 	bl	#-9174976 ; -> 0x4590a60 
004e50a24 	mov	w8, #1
004e50a28 	strb	w8, [x20, #331]
004e50a2c 	mov	w0, #30228
004e50a30 	mov	x1, xzr
004e50a34 	bl	#-2135184 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e50a38 	tbz	w0, #0, #40 ; -> 0x4e50a60 
004e50a3c 	mov	w0, #30228
004e50a40 	mov	x1, xzr
004e50a44 	bl	#-2135020 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e50a48 	cbz	x0, #92 ; -> 0x4e50aa4 
004e50a4c 	mov	x1, x19
004e50a50 	ldp	x20, x19, [sp, #16]
004e50a54 	mov	x2, xzr
004e50a58 	ldr	x30, [sp], #32
004e50a5c 	b	#-2957132 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004e50a60 	adrp	x8, #90013696 ; -> 0xa428000 
004e50a64 	ldr	x8, [x8, #2888]
004e50a68 	ldr	x0, [x8]
004e50a6c 	bl	#-9174384 ; -> 0x4590cfc 
004e50a70 	mov	w1, wzr
004e50a74 	mov	x2, xzr
004e50a78 	mov	x20, x0
004e50a7c 	bl	#222012 ; -> 0x4e86db8 GameManager+<StageFill_Coroutine>d__288::.ctor
004e50a80 	cbz	x20, #36 ; -> 0x4e50aa4 
004e50a84 	mov	x0, x20
004e50a88 	mov	x1, x19
004e50a8c 	str	x19, [x0, #32]!
004e50a90 	bl	#-9175180 ; -> 0x4590a04 
004e50a94 	mov	x0, x20
004e50a98 	ldp	x20, x19, [sp, #16]
004e50a9c 	ldr	x30, [sp], #32
004e50aa0 	ret
004e50aa4 	bl	#-9174424 ; -> 0x4590d0c 
