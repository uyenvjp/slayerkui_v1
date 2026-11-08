0051f1448 	sub	sp, sp, #64
0051f144c 	str	x30, [sp, #32]
0051f1450 	stp	x20, x19, [sp, #48]
0051f1454 	adrp	x20, #94261248 ; -> 0xabd6000 
0051f1458 	mov	w19, w0
0051f145c 	ldrb	w8, [x20, #3159]
0051f1460 	tbnz	w8, #0, #36 ; -> 0x51f1484 
0051f1464 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f1468 	ldr	x0, [x0, #128]
0051f146c 	bl	#-12978700 ; -> 0x4590a60 
0051f1470 	adrp	x0, #85979136 ; -> 0xa3f0000 
0051f1474 	ldr	x0, [x0, #2048]
0051f1478 	bl	#-12978712 ; -> 0x4590a60 
0051f147c 	mov	w8, #1
0051f1480 	strb	w8, [x20, #3159]
0051f1484 	mov	w0, #41800
0051f1488 	mov	x1, xzr
0051f148c 	bl	#-5938920 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f1490 	tbz	w0, #0, #44 ; -> 0x51f14bc 
0051f1494 	mov	w0, #41800
0051f1498 	mov	x1, xzr
0051f149c 	bl	#-5938756 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f14a0 	cbz	x0, #128 ; -> 0x51f1520 
0051f14a4 	mov	w1, w19
0051f14a8 	ldp	x20, x19, [sp, #48]
0051f14ac 	ldr	x30, [sp, #32]
0051f14b0 	mov	x2, xzr
0051f14b4 	add	sp, sp, #64
0051f14b8 	b	#-6212700 ; -> 0x4c0485c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2642
0051f14bc 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f14c0 	adrp	x20, #85979136 ; -> 0xa3f0000 
0051f14c4 	mov	x9, #-1
0051f14c8 	ldr	x8, [x8, #128]
0051f14cc 	add	x0, sp, #8
0051f14d0 	mov	x1, xzr
0051f14d4 	ldr	x8, [x8]
0051f14d8 	str	x8, [sp, #8]
0051f14dc 	ldr	x20, [x20, #2048]
0051f14e0 	str	x9, [sp, #16]
0051f14e4 	str	w19, [sp, #24]
0051f14e8 	bl	#63694116 ; -> 0x8eafa0c System.Enum::ToString
0051f14ec 	ldr	x8, [x20]
0051f14f0 	mov	x19, x0
0051f14f4 	ldr	w9, [x8, #228]
0051f14f8 	cbnz	w9, #12 ; -> 0x51f1504 
0051f14fc 	mov	x0, x8
0051f1500 	bl	#-12978464 ; -> 0x4590be0 
0051f1504 	mov	x0, x19
0051f1508 	bl	#28 ; -> 0x51f1524 ServerPrefs::HasKey
0051f150c 	ldp	x20, x19, [sp, #48]
0051f1510 	and	w0, w0, #0x1
0051f1514 	ldr	x30, [sp, #32]
0051f1518 	add	sp, sp, #64
0051f151c 	ret
0051f1520 	bl	#-12978196 ; -> 0x4590d0c 
