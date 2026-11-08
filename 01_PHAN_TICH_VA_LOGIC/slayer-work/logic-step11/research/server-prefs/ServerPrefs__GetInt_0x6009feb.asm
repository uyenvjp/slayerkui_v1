0051f04cc 	sub	sp, sp, #64
0051f04d0 	stp	x30, x21, [sp, #32]
0051f04d4 	stp	x20, x19, [sp, #48]
0051f04d8 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f04dc 	mov	w19, w1
0051f04e0 	mov	w20, w0
0051f04e4 	ldrb	w8, [x21, #3147]
0051f04e8 	tbnz	w8, #0, #36 ; -> 0x51f050c 
0051f04ec 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f04f0 	ldr	x0, [x0, #128]
0051f04f4 	bl	#-12974740 ; -> 0x4590a60 
0051f04f8 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f04fc 	ldr	x0, [x0, #2048]
0051f0500 	bl	#-12974752 ; -> 0x4590a60 
0051f0504 	mov	w8, #1
0051f0508 	strb	w8, [x21, #3147]
0051f050c 	mov	w0, #2198
0051f0510 	mov	x1, xzr
0051f0514 	bl	#-5934960 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0518 	tbz	w0, #0, #48 ; -> 0x51f0548 
0051f051c 	mov	w0, #2198
0051f0520 	mov	x1, xzr
0051f0524 	bl	#-5934796 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0528 	cbz	x0, #132 ; -> 0x51f05ac 
0051f052c 	mov	w1, w20
0051f0530 	mov	w2, w19
0051f0534 	mov	x3, xzr
0051f0538 	ldp	x20, x19, [sp, #48]
0051f053c 	ldp	x30, x21, [sp, #32]
0051f0540 	add	sp, sp, #64
0051f0544 	b	#-6687308 ; -> 0x4b8faf8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_333
0051f0548 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f054c 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0550 	mov	x9, #-1
0051f0554 	ldr	x8, [x8, #128]
0051f0558 	add	x0, sp, #8
0051f055c 	mov	x1, xzr
0051f0560 	ldr	x8, [x8]
0051f0564 	str	x8, [sp, #8]
0051f0568 	ldr	x21, [x21, #2048]
0051f056c 	str	x9, [sp, #16]
0051f0570 	str	w20, [sp, #24]
0051f0574 	bl	#63698072 ; -> 0x8eafa0c System.Enum::ToString
0051f0578 	ldr	x8, [x21]
0051f057c 	mov	x20, x0
0051f0580 	ldr	w9, [x8, #228]
0051f0584 	cbnz	w9, #12 ; -> 0x51f0590 
0051f0588 	mov	x0, x8
0051f058c 	bl	#-12974508 ; -> 0x4590be0 
0051f0590 	mov	x0, x20
0051f0594 	mov	w1, w19
0051f0598 	bl	#24 ; -> 0x51f05b0 ServerPrefs::GetInt
0051f059c 	ldp	x20, x19, [sp, #48]
0051f05a0 	ldp	x30, x21, [sp, #32]
0051f05a4 	add	sp, sp, #64
0051f05a8 	ret
0051f05ac 	bl	#-12974240 ; -> 0x4590d0c 
