004f193e0 	str	x30, [sp, #-32]!
004f193e4 	stp	x20, x19, [sp, #16]
004f193e8 	adrp	x20, #97239040 ; -> 0xabd5000 
004f193ec 	mov	x19, x0
004f193f0 	ldrb	w8, [x20, #1735]
004f193f4 	tbnz	w8, #0, #24 ; -> 0x4f1940c 
004f193f8 	adrp	x0, #89206784 ; -> 0xa42c000 
004f193fc 	ldr	x0, [x0, #624]
004f19400 	bl	#-9996704 ; -> 0x4590a60 
004f19404 	mov	w8, #1
004f19408 	strb	w8, [x20, #1735]
004f1940c 	mov	w0, #33225
004f19410 	mov	x1, xzr
004f19414 	bl	#-2956912 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f19418 	tbz	w0, #0, #40 ; -> 0x4f19440 
004f1941c 	mov	w0, #33225
004f19420 	mov	x1, xzr
004f19424 	bl	#-2956748 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f19428 	cbz	x0, #92 ; -> 0x4f19484 
004f1942c 	mov	x1, x19
004f19430 	ldp	x20, x19, [sp, #16]
004f19434 	mov	x2, xzr
004f19438 	ldr	x30, [sp], #32
004f1943c 	b	#-3778860 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004f19440 	adrp	x8, #89206784 ; -> 0xa42c000 
004f19444 	ldr	x8, [x8, #624]
004f19448 	ldr	x0, [x8]
004f1944c 	bl	#-9996112 ; -> 0x4590cfc 
004f19450 	mov	w1, wzr
004f19454 	mov	x2, xzr
004f19458 	mov	x20, x0
004f1945c 	bl	#36800 ; -> 0x4f2241c StatManager+<LevelUp_coroutine>d__55::.ctor
004f19460 	cbz	x20, #36 ; -> 0x4f19484 
004f19464 	mov	x0, x20
004f19468 	mov	x1, x19
004f1946c 	str	x19, [x0, #32]!
004f19470 	bl	#-9996908 ; -> 0x4590a04 
004f19474 	mov	x0, x20
004f19478 	ldp	x20, x19, [sp, #16]
004f1947c 	ldr	x30, [sp], #32
004f19480 	ret
004f19484 	bl	#-9996152 ; -> 0x4590d0c 
