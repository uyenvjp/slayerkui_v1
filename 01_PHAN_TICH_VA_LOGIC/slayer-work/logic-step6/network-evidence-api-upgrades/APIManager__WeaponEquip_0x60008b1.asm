0050c8334 	str	x30, [sp, #-48]!
0050c8338 	stp	x22, x21, [sp, #16]
0050c833c 	stp	x20, x19, [sp, #32]
0050c8340 	adrp	x21, #95477760 ; -> 0xabd6000 
0050c8344 	mov	x20, x1
0050c8348 	mov	w19, w0
0050c834c 	ldrb	w8, [x21, #845]
0050c8350 	tbnz	w8, #0, #72 ; -> 0x50c8398 
0050c8354 	adrp	x0, #87187456 ; -> 0xa3ee000 
0050c8358 	ldr	x0, [x0, #3648]
0050c835c 	bl	#-11761916 ; -> 0x4590a60 
0050c8360 	adrp	x0, #87199744 ; -> 0xa3f1000 
0050c8364 	ldr	x0, [x0, #2632]
0050c8368 	bl	#-11761928 ; -> 0x4590a60 
0050c836c 	adrp	x0, #87470080 ; -> 0xa433000 
0050c8370 	ldr	x0, [x0, #3232]
0050c8374 	bl	#-11761940 ; -> 0x4590a60 
0050c8378 	adrp	x0, #87470080 ; -> 0xa433000 
0050c837c 	ldr	x0, [x0, #3240]
0050c8380 	bl	#-11761952 ; -> 0x4590a60 
0050c8384 	adrp	x0, #87470080 ; -> 0xa433000 
0050c8388 	ldr	x0, [x0, #3248]
0050c838c 	bl	#-11761964 ; -> 0x4590a60 
0050c8390 	mov	w8, #1
0050c8394 	strb	w8, [x21, #845]
0050c8398 	mov	w0, #3684
0050c839c 	mov	x1, xzr
0050c83a0 	bl	#-4722172 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c83a4 	tbz	w0, #0, #48 ; -> 0x50c83d4 
0050c83a8 	mov	w0, #3684
0050c83ac 	mov	x1, xzr
0050c83b0 	bl	#-4722008 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c83b4 	cbz	x0, #236 ; -> 0x50c84a0 
0050c83b8 	mov	w1, w19
0050c83bc 	mov	x2, x20
0050c83c0 	mov	x3, xzr
0050c83c4 	ldp	x20, x19, [sp, #32]
0050c83c8 	ldp	x22, x21, [sp, #16]
0050c83cc 	ldr	x30, [sp], #48
0050c83d0 	b	#-5458724 ; -> 0x4b938ac IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_410
0050c83d4 	adrp	x8, #87470080 ; -> 0xa433000 
0050c83d8 	ldr	x8, [x8, #3240]
0050c83dc 	ldr	x0, [x8]
0050c83e0 	bl	#-11761380 ; -> 0x4590cfc 
0050c83e4 	mov	x1, xzr
0050c83e8 	mov	x21, x0
0050c83ec 	bl	#-9136736 ; -> 0x481198c APIManager+<>c__DisplayClass82_0::.ctor
0050c83f0 	cbz	x21, #176 ; -> 0x50c84a0 
0050c83f4 	mov	x0, x21
0050c83f8 	mov	x1, x20
0050c83fc 	str	x20, [x0, #24]!
0050c8400 	bl	#-11762172 ; -> 0x4590a04 
0050c8404 	adrp	x8, #87470080 ; -> 0xa433000 
0050c8408 	ldr	x8, [x8, #3248]
0050c840c 	ldr	x0, [x8]
0050c8410 	bl	#-11761428 ; -> 0x4590cfc 
0050c8414 	mov	x1, xzr
0050c8418 	mov	x20, x0
0050c841c 	bl	#57584196 ; -> 0x87b2e60 GrowSlayer.WeaponEquipRequest::.ctor
0050c8420 	cbz	x20, #128 ; -> 0x50c84a0 
0050c8424 	mov	x22, x21
0050c8428 	mov	x1, x20
0050c842c 	str	w19, [x20, #24]
0050c8430 	str	x20, [x22, #16]!
0050c8434 	mov	x0, x22
0050c8438 	bl	#-11762228 ; -> 0x4590a04 
0050c843c 	adrp	x8, #87199744 ; -> 0xa3f1000 
0050c8440 	ldr	x8, [x8, #2632]
0050c8444 	ldr	x0, [x8]
0050c8448 	bl	#-11761484 ; -> 0x4590cfc 
0050c844c 	adrp	x8, #87470080 ; -> 0xa433000 
0050c8450 	mov	x1, x21
0050c8454 	mov	x3, xzr
0050c8458 	ldr	x8, [x8, #3232]
0050c845c 	mov	x19, x0
0050c8460 	ldr	x2, [x8]
0050c8464 	bl	#23495056 ; -> 0x67305f4 
0050c8468 	adrp	x8, #87187456 ; -> 0xa3ee000 
0050c846c 	ldr	x8, [x8, #3648]
0050c8470 	ldr	x20, [x22]
0050c8474 	ldr	x0, [x8]
0050c8478 	ldr	w8, [x0, #228]
0050c847c 	cbnz	w8, #8 ; -> 0x50c8484 
0050c8480 	bl	#-11761824 ; -> 0x4590be0 
0050c8484 	mov	x1, x19
0050c8488 	mov	x2, x20
0050c848c 	mov	w0, #37
0050c8490 	ldp	x20, x19, [sp, #32]
0050c8494 	ldp	x22, x21, [sp, #16]
0050c8498 	ldr	x30, [sp], #48
0050c849c 	b	#-27224 ; -> 0x50c1a44 APIManager::AddRequest
0050c84a0 	bl	#-11761556 ; -> 0x4590d0c 
