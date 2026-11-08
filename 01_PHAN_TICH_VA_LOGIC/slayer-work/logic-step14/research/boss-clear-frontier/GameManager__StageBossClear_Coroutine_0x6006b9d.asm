004e4bbec 	str	x30, [sp, #-32]!
004e4bbf0 	stp	x20, x19, [sp, #16]
004e4bbf4 	adrp	x20, #98082816 ; -> 0xabd5000 
004e4bbf8 	mov	x19, x0
004e4bbfc 	ldrb	w8, [x20, #295]
004e4bc00 	tbnz	w8, #0, #24 ; -> 0x4e4bc18 
004e4bc04 	adrp	x0, #90034176 ; -> 0xa428000 
004e4bc08 	ldr	x0, [x0, #2464]
004e4bc0c 	bl	#-9154988 ; -> 0x4590a60 
004e4bc10 	mov	w8, #1
004e4bc14 	strb	w8, [x20, #295]
004e4bc18 	mov	w0, #30722
004e4bc1c 	mov	x1, xzr
004e4bc20 	bl	#-2115196 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4bc24 	tbz	w0, #0, #40 ; -> 0x4e4bc4c 
004e4bc28 	mov	w0, #30722
004e4bc2c 	mov	x1, xzr
004e4bc30 	bl	#-2115032 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4bc34 	cbz	x0, #92 ; -> 0x4e4bc90 
004e4bc38 	mov	x1, x19
004e4bc3c 	ldp	x20, x19, [sp, #16]
004e4bc40 	mov	x2, xzr
004e4bc44 	ldr	x30, [sp], #32
004e4bc48 	b	#-2937144 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004e4bc4c 	adrp	x8, #90034176 ; -> 0xa428000 
004e4bc50 	ldr	x8, [x8, #2464]
004e4bc54 	ldr	x0, [x8]
004e4bc58 	bl	#-9154396 ; -> 0x4590cfc 
004e4bc5c 	mov	w1, wzr
004e4bc60 	mov	x2, xzr
004e4bc64 	mov	x20, x0
004e4bc68 	bl	#237752 ; -> 0x4e85d20 GameManager+<StageBossClear_Coroutine>d__110::.ctor
004e4bc6c 	cbz	x20, #36 ; -> 0x4e4bc90 
004e4bc70 	mov	x0, x20
004e4bc74 	mov	x1, x19
004e4bc78 	str	x19, [x0, #32]!
004e4bc7c 	bl	#-9155192 ; -> 0x4590a04 
004e4bc80 	mov	x0, x20
004e4bc84 	ldp	x20, x19, [sp, #16]
004e4bc88 	ldr	x30, [sp], #32
004e4bc8c 	ret
004e4bc90 	bl	#-9154436 ; -> 0x4590d0c 
