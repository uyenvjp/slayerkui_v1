0050cc2b4 	str	x30, [sp, #-48]!
0050cc2b8 	stp	x22, x21, [sp, #16]
0050cc2bc 	stp	x20, x19, [sp, #32]
0050cc2c0 	adrp	x21, #95461376 ; -> 0xabd6000 
0050cc2c4 	mov	x19, x1
0050cc2c8 	mov	w20, w0
0050cc2cc 	ldrb	w8, [x21, #877]
0050cc2d0 	tbnz	w8, #0, #72 ; -> 0x50cc318 
0050cc2d4 	adrp	x0, #87171072 ; -> 0xa3ee000 
0050cc2d8 	ldr	x0, [x0, #3648]
0050cc2dc 	bl	#-11778172 ; -> 0x4590a60 
0050cc2e0 	adrp	x0, #87183360 ; -> 0xa3f1000 
0050cc2e4 	ldr	x0, [x0, #2632]
0050cc2e8 	bl	#-11778184 ; -> 0x4590a60 
0050cc2ec 	adrp	x0, #87453696 ; -> 0xa433000 
0050cc2f0 	ldr	x0, [x0, #4032]
0050cc2f4 	bl	#-11778196 ; -> 0x4590a60 
0050cc2f8 	adrp	x0, #87453696 ; -> 0xa433000 
0050cc2fc 	ldr	x0, [x0, #4040]
0050cc300 	bl	#-11778208 ; -> 0x4590a60 
0050cc304 	adrp	x0, #87453696 ; -> 0xa433000 
0050cc308 	ldr	x0, [x0, #4048]
0050cc30c 	bl	#-11778220 ; -> 0x4590a60 
0050cc310 	mov	w8, #1
0050cc314 	strb	w8, [x21, #877]
0050cc318 	mov	w0, #3853
0050cc31c 	mov	x1, xzr
0050cc320 	bl	#-4738428 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050cc324 	tbz	w0, #0, #48 ; -> 0x50cc354 
0050cc328 	mov	w0, #3853
0050cc32c 	mov	x1, xzr
0050cc330 	bl	#-4738264 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050cc334 	cbz	x0, #236 ; -> 0x50cc420 
0050cc338 	mov	w1, w20
0050cc33c 	mov	x2, x19
0050cc340 	mov	x3, xzr
0050cc344 	ldp	x20, x19, [sp, #32]
0050cc348 	ldp	x22, x21, [sp, #16]
0050cc34c 	ldr	x30, [sp], #48
0050cc350 	b	#-5474980 ; -> 0x4b938ac IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_410
0050cc354 	adrp	x8, #87453696 ; -> 0xa433000 
0050cc358 	adrp	x22, #87453696 ; -> 0xa433000 
0050cc35c 	ldr	x8, [x8, #4048]
0050cc360 	ldr	x22, [x22, #4032]
0050cc364 	ldr	x0, [x8]
0050cc368 	bl	#-11777644 ; -> 0x4590cfc 
0050cc36c 	mov	x1, xzr
0050cc370 	mov	x21, x0
0050cc374 	bl	#995368 ; -> 0x51bf39c APIManager+<>c__DisplayClass114_0::.ctor
0050cc378 	ldr	x0, [x22]
0050cc37c 	bl	#-11777664 ; -> 0x4590cfc 
0050cc380 	mov	x1, xzr
0050cc384 	mov	x22, x0
0050cc388 	bl	#59157368 ; -> 0x8936f00 GrowSlayer.LevelUpRequest::.ctor
0050cc38c 	cbz	x22, #148 ; -> 0x50cc420 
0050cc390 	mov	x0, x22
0050cc394 	mov	x1, x19
0050cc398 	str	x19, [x0, #40]!
0050cc39c 	stur	w20, [x0, #-16]
0050cc3a0 	bl	#-11778460 ; -> 0x4590a04 
0050cc3a4 	cbz	x21, #124 ; -> 0x50cc420 
0050cc3a8 	mov	x20, x21
0050cc3ac 	mov	x1, x22
0050cc3b0 	str	x22, [x20, #16]!
0050cc3b4 	mov	x0, x20
0050cc3b8 	bl	#-11778484 ; -> 0x4590a04 
0050cc3bc 	adrp	x8, #87183360 ; -> 0xa3f1000 
0050cc3c0 	ldr	x8, [x8, #2632]
0050cc3c4 	ldr	x0, [x8]
0050cc3c8 	bl	#-11777740 ; -> 0x4590cfc 
0050cc3cc 	adrp	x8, #87453696 ; -> 0xa433000 
0050cc3d0 	mov	x1, x21
0050cc3d4 	mov	x3, xzr
0050cc3d8 	ldr	x8, [x8, #4040]
0050cc3dc 	mov	x19, x0
0050cc3e0 	ldr	x2, [x8]
0050cc3e4 	bl	#23478800 ; -> 0x67305f4 
0050cc3e8 	adrp	x8, #87171072 ; -> 0xa3ee000 
0050cc3ec 	ldr	x8, [x8, #3648]
0050cc3f0 	ldr	x20, [x20]
0050cc3f4 	ldr	x0, [x8]
0050cc3f8 	ldr	w8, [x0, #228]
0050cc3fc 	cbnz	w8, #8 ; -> 0x50cc404 
0050cc400 	bl	#-11778080 ; -> 0x4590be0 
0050cc404 	mov	x1, x19
0050cc408 	mov	x2, x20
0050cc40c 	mov	w0, #13
0050cc410 	ldp	x20, x19, [sp, #32]
0050cc414 	ldp	x22, x21, [sp, #16]
0050cc418 	ldr	x30, [sp], #48
0050cc41c 	b	#-43480 ; -> 0x50c1a44 APIManager::AddRequest
0050cc420 	bl	#-11777812 ; -> 0x4590d0c 
