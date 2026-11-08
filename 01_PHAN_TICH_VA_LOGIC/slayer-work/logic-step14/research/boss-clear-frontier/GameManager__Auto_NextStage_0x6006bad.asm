004e4d334 	str	x30, [sp, #-32]!
004e4d338 	stp	x20, x19, [sp, #16]
004e4d33c 	adrp	x20, #98074624 ; -> 0xabd5000 
004e4d340 	mov	x19, x0
004e4d344 	ldrb	w8, [x20, #310]
004e4d348 	tbnz	w8, #0, #24 ; -> 0x4e4d360 
004e4d34c 	adrp	x0, #90025984 ; -> 0xa428000 
004e4d350 	ldr	x0, [x0, #2672]
004e4d354 	bl	#-9160948 ; -> 0x4590a60 
004e4d358 	mov	w8, #1
004e4d35c 	strb	w8, [x20, #310]
004e4d360 	mov	w0, #30808
004e4d364 	mov	x1, xzr
004e4d368 	bl	#-2121156 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4d36c 	tbz	w0, #0, #40 ; -> 0x4e4d394 
004e4d370 	mov	w0, #30808
004e4d374 	mov	x1, xzr
004e4d378 	bl	#-2120992 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4d37c 	cbz	x0, #92 ; -> 0x4e4d3d8 
004e4d380 	mov	x1, x19
004e4d384 	ldp	x20, x19, [sp, #16]
004e4d388 	mov	x2, xzr
004e4d38c 	ldr	x30, [sp], #32
004e4d390 	b	#-2943104 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004e4d394 	adrp	x8, #90025984 ; -> 0xa428000 
004e4d398 	ldr	x8, [x8, #2672]
004e4d39c 	ldr	x0, [x8]
004e4d3a0 	bl	#-9160356 ; -> 0x4590cfc 
004e4d3a4 	mov	w1, wzr
004e4d3a8 	mov	x2, xzr
004e4d3ac 	mov	x20, x0
004e4d3b0 	bl	#210588 ; -> 0x4e80a4c GameManager+<Auto_NextStage>d__135::.ctor
004e4d3b4 	cbz	x20, #36 ; -> 0x4e4d3d8 
004e4d3b8 	mov	x0, x20
004e4d3bc 	mov	x1, x19
004e4d3c0 	str	x19, [x0, #32]!
004e4d3c4 	bl	#-9161152 ; -> 0x4590a04 
004e4d3c8 	mov	x0, x20
004e4d3cc 	ldp	x20, x19, [sp, #16]
004e4d3d0 	ldr	x30, [sp], #32
004e4d3d4 	ret
004e4d3d8 	bl	#-9160396 ; -> 0x4590d0c 
