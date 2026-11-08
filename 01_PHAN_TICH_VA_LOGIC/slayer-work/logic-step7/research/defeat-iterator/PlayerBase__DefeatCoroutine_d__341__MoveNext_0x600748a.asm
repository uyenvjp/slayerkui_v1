004f095d8 	stp	x30, x21, [sp, #-32]!
004f095dc 	stp	x20, x19, [sp, #16]
004f095e0 	adrp	x20, #97304576 ; -> 0xabd5000 
004f095e4 	mov	x19, x0
004f095e8 	ldrb	w8, [x20, #1614]
004f095ec 	tbnz	w8, #0, #36 ; -> 0x4f09610 
004f095f0 	adrp	x0, #89034752 ; -> 0xa3f2000 
004f095f4 	ldr	x0, [x0, #552]
004f095f8 	bl	#-9931672 ; -> 0x4590a60 
004f095fc 	adrp	x0, #88997888 ; -> 0xa3e9000 
004f09600 	ldr	x0, [x0, #1264]
004f09604 	bl	#-9931684 ; -> 0x4590a60 
004f09608 	mov	w8, #1
004f0960c 	strb	w8, [x20, #1614]
004f09610 	ldr	w20, [x19, #16]
004f09614 	cbz	w20, #44 ; -> 0x4f09640 
004f09618 	cmp	w20, #1
004f0961c 	b.ne	#152 ; -> 0x4f096b4 
004f09620 	ldr	x0, [x19, #32]
004f09624 	mov	w8, #-1
004f09628 	str	w8, [x19, #16]
004f0962c 	cbz	x0, #156 ; -> 0x4f096c8 
004f09630 	mov	w1, wzr
004f09634 	mov	x2, xzr
004f09638 	bl	#-66936 ; -> 0x4ef90c0 PlayerBase::BattleEnd
004f0963c 	b	#120 ; -> 0x4f096b4 
004f09640 	adrp	x21, #89034752 ; -> 0xa3f2000 
004f09644 	mov	w9, #-1
004f09648 	ldr	x21, [x21, #552]
004f0964c 	str	w9, [x19, #16]
004f09650 	ldr	x0, [x21]
004f09654 	ldr	w8, [x0, #228]
004f09658 	cbnz	w8, #12 ; -> 0x4f09664 
004f0965c 	bl	#-9931388 ; -> 0x4590be0 
004f09660 	ldr	x0, [x21]
004f09664 	ldr	x8, [x0, #184]
004f09668 	ldr	x0, [x8]
004f0966c 	cbz	x0, #92 ; -> 0x4f096c8 
004f09670 	mov	x1, xzr
004f09674 	bl	#-762188 ; -> 0x4e4f528 GameManager::DefaultSetting
004f09678 	adrp	x8, #88997888 ; -> 0xa3e9000 
004f0967c 	ldr	x8, [x8, #1264]
004f09680 	ldr	x0, [x8]
004f09684 	ldr	w8, [x0, #228]
004f09688 	cbnz	w8, #8 ; -> 0x4f09690 
004f0968c 	bl	#-9931436 ; -> 0x4590be0 
004f09690 	fmov	s0, #2.00000000
004f09694 	mov	x0, xzr
004f09698 	bl	#-3867600 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004f0969c 	mov	x1, x0
004f096a0 	str	x0, [x19, #24]!
004f096a4 	mov	x0, x19
004f096a8 	bl	#-9931940 ; -> 0x4590a04 
004f096ac 	mov	w8, #1
004f096b0 	stur	w8, [x19, #-8]
004f096b4 	cmp	w20, #0
004f096b8 	ldp	x20, x19, [sp, #16]
004f096bc 	cset	w0, eq
004f096c0 	ldp	x30, x21, [sp], #32
004f096c4 	ret
004f096c8 	bl	#-9931196 ; -> 0x4590d0c 
