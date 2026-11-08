0050be5dc 	str	d8, [sp, #-48]!
0050be5e0 	stp	x30, x21, [sp, #16]
0050be5e4 	stp	x20, x19, [sp, #32]
0050be5e8 	adrp	x19, #95518720 ; -> 0xabd6000 
0050be5ec 	mov	x20, x0
0050be5f0 	ldrb	w8, [x19, #756]
0050be5f4 	tbnz	w8, #0, #36 ; -> 0x50be618 
0050be5f8 	adrp	x0, #87244800 ; -> 0xa3f2000 
0050be5fc 	ldr	x0, [x0, #552]
0050be600 	bl	#-11721632 ; -> 0x4590a60 
0050be604 	adrp	x0, #87408640 ; -> 0xa41a000 
0050be608 	ldr	x0, [x0, #3856]
0050be60c 	bl	#-11721644 ; -> 0x4590a60 
0050be610 	mov	w8, #1
0050be614 	strb	w8, [x19, #756]
0050be618 	ldr	w8, [x20, #16]
0050be61c 	ldr	x19, [x20, #32]
0050be620 	cmp	w8, #1
0050be624 	b.eq	#60 ; -> 0x50be660 
0050be628 	cbnz	w8, #328 ; -> 0x50be770 
0050be62c 	mov	w8, #-1
0050be630 	str	w8, [x20, #16]
0050be634 	cbz	x19, #336 ; -> 0x50be784 
0050be638 	ldr	x8, [x19]
0050be63c 	mov	x0, x19
0050be640 	mov	w1, #1
0050be644 	ldr	x9, [x8, #712]
0050be648 	ldr	x2, [x8, #720]
0050be64c 	blr	x9
0050be650 	mov	x21, x20
0050be654 	movi	d8, #0000000000000000
0050be658 	str	wzr, [x21, #40]!
0050be65c 	b	#24 ; -> 0x50be674 
0050be660 	mov	x21, x20
0050be664 	mov	w8, #-1
0050be668 	ldr	s8, [x21, #40]!
0050be66c 	stur	w8, [x21, #-24]
0050be670 	cbz	x19, #276 ; -> 0x50be784 
0050be674 	ldr	x8, [x19]
0050be678 	mov	x0, x19
0050be67c 	ldp	x9, x1, [x8, #440]
0050be680 	blr	x9
0050be684 	fcmp	s8, s0
0050be688 	b.ls	#128 ; -> 0x50be708 
0050be68c 	ldr	x0, [x19, #176]
0050be690 	cbz	x0, #244 ; -> 0x50be784 
0050be694 	mov	x1, xzr
0050be698 	bl	#76892820 ; -> 0x9a1312c UnityEngine.Transform::get_position
0050be69c 	adrp	x20, #87408640 ; -> 0xa41a000 
0050be6a0 	fmov	s8, s0
0050be6a4 	ldr	x20, [x20, #3856]
0050be6a8 	ldr	x0, [x20]
0050be6ac 	ldr	w8, [x0, #228]
0050be6b0 	cbnz	w8, #12 ; -> 0x50be6bc 
0050be6b4 	bl	#-11721428 ; -> 0x4590be0 
0050be6b8 	ldr	x0, [x20]
0050be6bc 	ldr	x8, [x0, #184]
0050be6c0 	ldr	x0, [x8]
0050be6c4 	cbz	x0, #192 ; -> 0x50be784 
0050be6c8 	mov	x1, xzr
0050be6cc 	bl	#76816148 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050be6d0 	cbz	x0, #180 ; -> 0x50be784 
0050be6d4 	mov	x1, xzr
0050be6d8 	bl	#76892756 ; -> 0x9a1312c UnityEngine.Transform::get_position
0050be6dc 	fsub	s0, s8, s0
0050be6e0 	ldr	s1, [x19, #384]
0050be6e4 	ldr	x8, [x19]
0050be6e8 	fcmp	s0, s1
0050be6ec 	b.pl	#116 ; -> 0x50be760 
0050be6f0 	ldr	x9, [x8, #712]
0050be6f4 	ldr	x2, [x8, #720]
0050be6f8 	mov	x0, x19
0050be6fc 	mov	w1, #10
0050be700 	blr	x9
0050be704 	b	#108 ; -> 0x50be770 
0050be708 	adrp	x19, #87244800 ; -> 0xa3f2000 
0050be70c 	ldr	x19, [x19, #552]
0050be710 	ldr	s8, [x21]
0050be714 	ldr	x0, [x19]
0050be718 	ldr	w8, [x0, #228]
0050be71c 	cbnz	w8, #12 ; -> 0x50be728 
0050be720 	bl	#-11721536 ; -> 0x4590be0 
0050be724 	ldr	x0, [x19]
0050be728 	ldr	x8, [x0, #184]
0050be72c 	ldr	x0, [x8]
0050be730 	cbz	x0, #84 ; -> 0x50be784 
0050be734 	mov	x1, xzr
0050be738 	bl	#-2596324 ; -> 0x4e44954 GameManager::get_GameDeltaTime
0050be73c 	fadd	s0, s8, s0
0050be740 	str	xzr, [x20, #24]!
0050be744 	mov	x0, x20
0050be748 	mov	x1, xzr
0050be74c 	str	s0, [x20, #16]
0050be750 	bl	#-11722060 ; -> 0x4590a04 
0050be754 	mov	w0, #1
0050be758 	stur	w0, [x20, #-8]
0050be75c 	b	#24 ; -> 0x50be774 
0050be760 	ldr	x9, [x8, #1096]
0050be764 	ldr	x1, [x8, #1104]
0050be768 	mov	x0, x19
0050be76c 	blr	x9
0050be770 	mov	w0, wzr
0050be774 	ldp	x20, x19, [sp, #32]
0050be778 	ldp	x30, x21, [sp, #16]
0050be77c 	ldr	d8, [sp], #48
0050be780 	ret
0050be784 	bl	#-11721336 ; -> 0x4590d0c 
