004ccb530 	str	x30, [sp, #-32]!
004ccb534 	stp	x20, x19, [sp, #16]
004ccb538 	adrp	x20, #99651584 ; -> 0xabd4000 
004ccb53c 	mov	x19, x0
004ccb540 	ldrb	w8, [x20, #1796]
004ccb544 	tbnz	w8, #0, #48 ; -> 0x4ccb574 
004ccb548 	adrp	x0, #91348992 ; -> 0xa3e9000 
004ccb54c 	ldr	x0, [x0, #2376]
004ccb550 	bl	#-7580400 ; -> 0x4590a60 
004ccb554 	adrp	x0, #91570176 ; -> 0xa41f000 
004ccb558 	ldr	x0, [x0, #448]
004ccb55c 	bl	#-7580412 ; -> 0x4590a60 
004ccb560 	adrp	x0, #91570176 ; -> 0xa41f000 
004ccb564 	ldr	x0, [x0, #400]
004ccb568 	bl	#-7580424 ; -> 0x4590a60 
004ccb56c 	mov	w8, #1
004ccb570 	strb	w8, [x20, #1796]
004ccb574 	mov	w0, #7481
004ccb578 	mov	x1, xzr
004ccb57c 	str	xzr, [sp, #8]
004ccb580 	bl	#-540636 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ccb584 	tbz	w0, #0, #40 ; -> 0x4ccb5ac 
004ccb588 	mov	w0, #7481
004ccb58c 	mov	x1, xzr
004ccb590 	bl	#-540472 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ccb594 	cbz	x0, #192 ; -> 0x4ccb654 
004ccb598 	mov	x1, x19
004ccb59c 	ldp	x20, x19, [sp, #16]
004ccb5a0 	mov	x2, xzr
004ccb5a4 	ldr	x30, [sp], #32
004ccb5a8 	b	#-1318908 ; -> 0x4b895ac IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_213
004ccb5ac 	adrp	x20, #91348992 ; -> 0xa3e9000 
004ccb5b0 	ldr	x20, [x20, #2376]
004ccb5b4 	ldr	x0, [x20]
004ccb5b8 	ldr	w8, [x0, #228]
004ccb5bc 	cbnz	w8, #12 ; -> 0x4ccb5c8 
004ccb5c0 	bl	#-7580128 ; -> 0x4590be0 
004ccb5c4 	ldr	x0, [x20]
004ccb5c8 	ldr	x8, [x0, #184]
004ccb5cc 	ldr	x0, [x8, #104]
004ccb5d0 	cbz	x0, #132 ; -> 0x4ccb654 
004ccb5d4 	adrp	x8, #91570176 ; -> 0xa41f000 
004ccb5d8 	add	x2, sp, #8
004ccb5dc 	mov	x1, x19
004ccb5e0 	ldr	x8, [x8, #400]
004ccb5e4 	ldr	x3, [x8]
004ccb5e8 	bl	#55439440 ; -> 0x81aa638 
004ccb5ec 	tbz	w0, #0, #12 ; -> 0x4ccb5f8 
004ccb5f0 	ldr	x20, [sp, #8]
004ccb5f4 	b	#80 ; -> 0x4ccb644 
004ccb5f8 	ldr	x0, [x20]
004ccb5fc 	ldr	w8, [x0, #228]
004ccb600 	cbnz	w8, #8 ; -> 0x4ccb608 
004ccb604 	bl	#-7580196 ; -> 0x4590be0 
004ccb608 	mov	x0, x19
004ccb60c 	mov	w1, #6
004ccb610 	bl	#-10444 ; -> 0x4cc8d44 AssetManager::LoadSpritesFromKey
004ccb614 	ldr	x8, [x20]
004ccb618 	ldr	x8, [x8, #184]
004ccb61c 	ldr	x8, [x8, #104]
004ccb620 	cbz	x8, #52 ; -> 0x4ccb654 
004ccb624 	adrp	x9, #91570176 ; -> 0xa41f000 
004ccb628 	mov	x20, x0
004ccb62c 	mov	x0, x8
004ccb630 	ldr	x9, [x9, #448]
004ccb634 	mov	x1, x19
004ccb638 	mov	x2, x20
004ccb63c 	ldr	x3, [x9]
004ccb640 	bl	#55432336 ; -> 0x81a8ad0 
004ccb644 	mov	x0, x20
004ccb648 	ldp	x20, x19, [sp, #16]
004ccb64c 	ldr	x30, [sp], #32
004ccb650 	ret
004ccb654 	bl	#-7579976 ; -> 0x4590d0c 
