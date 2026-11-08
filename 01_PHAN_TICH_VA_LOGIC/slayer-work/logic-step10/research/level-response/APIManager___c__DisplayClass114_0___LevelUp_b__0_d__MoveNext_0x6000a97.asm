0051bf48c 	sub	sp, sp, #64
0051bf490 	str	x30, [sp, #16]
0051bf494 	stp	x22, x21, [sp, #32]
0051bf498 	stp	x20, x19, [sp, #48]
0051bf49c 	adrp	x20, #94466048 ; -> 0xabd6000 
0051bf4a0 	mov	x19, x0
0051bf4a4 	ldrb	w8, [x20, #2843]
0051bf4a8 	tbnz	w8, #0, #84 ; -> 0x51bf4fc 
0051bf4ac 	adrp	x0, #86482944 ; -> 0xa439000 
0051bf4b0 	ldr	x0, [x0, #376]
0051bf4b4 	bl	#-12773972 ; -> 0x4590a60 
0051bf4b8 	adrp	x0, #86482944 ; -> 0xa439000 
0051bf4bc 	ldr	x0, [x0, #384]
0051bf4c0 	bl	#-12773984 ; -> 0x4590a60 
0051bf4c4 	adrp	x0, #86155264 ; -> 0xa3e9000 
0051bf4c8 	ldr	x0, [x0, #2760]
0051bf4cc 	bl	#-12773996 ; -> 0x4590a60 
0051bf4d0 	adrp	x0, #86155264 ; -> 0xa3e9000 
0051bf4d4 	ldr	x0, [x0, #2512]
0051bf4d8 	bl	#-12774008 ; -> 0x4590a60 
0051bf4dc 	adrp	x0, #86482944 ; -> 0xa439000 
0051bf4e0 	ldr	x0, [x0, #392]
0051bf4e4 	bl	#-12774020 ; -> 0x4590a60 
0051bf4e8 	adrp	x0, #86482944 ; -> 0xa439000 
0051bf4ec 	ldr	x0, [x0, #400]
0051bf4f0 	bl	#-12774032 ; -> 0x4590a60 
0051bf4f4 	mov	w8, #1
0051bf4f8 	strb	w8, [x20, #2843]
0051bf4fc 	ldr	w8, [x19]
0051bf500 	str	xzr, [sp, #24]
0051bf504 	str	wzr, [sp, #8]
0051bf508 	cbz	w8, #208 ; -> 0x51bf5d8 
0051bf50c 	adrp	x22, #86155264 ; -> 0xa3e9000 
0051bf510 	ldr	x22, [x22, #2512]
0051bf514 	ldr	x21, [x19, #32]
0051bf518 	ldr	x0, [x22]
0051bf51c 	bl	#35428660 ; -> 0x7388e50 
0051bf520 	cbz	x0, #460 ; -> 0x51bf6ec 
0051bf524 	mov	x1, xzr
0051bf528 	bl	#2486736 ; -> 0x541e6f8 Network.NetworkHandler::get_FrontClient
0051bf52c 	cbz	x21, #452 ; -> 0x51bf6f0 
0051bf530 	mov	x20, x0
0051bf534 	ldr	x21, [x21, #16]
0051bf538 	ldr	x0, [x22]
0051bf53c 	bl	#35428628 ; -> 0x7388e50 
0051bf540 	cbz	x0, #436 ; -> 0x51bf6f4 
0051bf544 	cbz	x20, #436 ; -> 0x51bf6f8 
0051bf548 	ldr	x8, [x20]
0051bf54c 	ldr	x2, [x0, #88]
0051bf550 	ldr	x9, [x8, #4072]
0051bf554 	ldr	x6, [x8, #4080]
0051bf558 	mov	x0, x20
0051bf55c 	mov	x1, x21
0051bf560 	mov	x3, xzr
0051bf564 	mov	x4, xzr
0051bf568 	mov	x5, xzr
0051bf56c 	blr	x9
0051bf570 	cbz	x0, #396 ; -> 0x51bf6fc 
0051bf574 	adrp	x8, #86482944 ; -> 0xa439000 
0051bf578 	ldr	x8, [x8, #376]
0051bf57c 	ldr	x1, [x8]
0051bf580 	bl	#40676488 ; -> 0x788a208 
0051bf584 	adrp	x8, #86482944 ; -> 0xa439000 
0051bf588 	ldr	x8, [x8, #400]
0051bf58c 	str	x0, [sp, #24]
0051bf590 	ldr	x1, [x8]
0051bf594 	add	x0, sp, #24
0051bf598 	bl	#36566684 ; -> 0x749ec34 
0051bf59c 	tbnz	w0, #0, #80 ; -> 0x51bf5ec 
0051bf5a0 	ldr	x8, [sp, #24]
0051bf5a4 	mov	x0, x19
0051bf5a8 	str	wzr, [x19]
0051bf5ac 	str	x8, [x0, #40]!
0051bf5b0 	mov	x1, xzr
0051bf5b4 	bl	#-12774320 ; -> 0x4590a04 
0051bf5b8 	adrp	x8, #86482944 ; -> 0xa439000 
0051bf5bc 	ldr	x8, [x8, #384]
0051bf5c0 	ldr	x3, [x8]
0051bf5c4 	add	x0, x19, #8
0051bf5c8 	add	x1, sp, #24
0051bf5cc 	mov	x2, x19
0051bf5d0 	bl	#80588 ; -> 0x51d309c 
0051bf5d4 	b	#256 ; -> 0x51bf6d4 
0051bf5d8 	ldr	x8, [x19, #40]
0051bf5dc 	mov	w9, #-1
0051bf5e0 	str	xzr, [x19, #40]
0051bf5e4 	str	w9, [x19]
0051bf5e8 	str	x8, [sp, #24]
0051bf5ec 	adrp	x8, #86482944 ; -> 0xa439000 
0051bf5f0 	ldr	x8, [x8, #392]
0051bf5f4 	ldr	x1, [x8]
0051bf5f8 	add	x0, sp, #24
0051bf5fc 	bl	#36566648 ; -> 0x749ec74 
0051bf600 	mov	x20, x0
0051bf604 	cbz	x0, #228 ; -> 0x51bf6e8 
0051bf608 	ldr	w0, [x20, #24]
0051bf60c 	mov	x1, xzr
0051bf610 	bl	#2526324 ; -> 0x5428284 Network.Request::IsValidCode
0051bf614 	ldr	x21, [x19, #8]
0051bf618 	mov	w8, #-2
0051bf61c 	str	w8, [x19]
0051bf620 	cbz	x21, #128 ; -> 0x51bf6a0 
0051bf624 	adrp	x8, #86155264 ; -> 0xa3e9000 
0051bf628 	ldr	x8, [x8, #2760]
0051bf62c 	ldr	x8, [x8]
0051bf630 	ldr	x0, [x8, #32]
0051bf634 	add	x8, x0, #309
0051bf638 	ldrh	w8, [x8]
0051bf63c 	tbnz	w8, #0, #8 ; -> 0x51bf644 
0051bf640 	bl	#-12543768 ; -> 0x45c8f28 
0051bf644 	ldr	x8, [x0, #192]
0051bf648 	ldr	x1, [x8, #8]
0051bf64c 	add	x8, x1, #309
0051bf650 	ldrh	w8, [x8]
0051bf654 	tbnz	w8, #0, #16 ; -> 0x51bf664 
0051bf658 	mov	x0, x1
0051bf65c 	bl	#-12543796 ; -> 0x45c8f28 
0051bf660 	mov	x1, x0
0051bf664 	ldr	x8, [x21]
0051bf668 	ldrh	w9, [x8, #302]
0051bf66c 	cbz	x9, #36 ; -> 0x51bf690 
0051bf670 	ldr	x10, [x8, #176]
0051bf674 	add	x10, x10, #8
0051bf678 	ldur	x11, [x10, #-8]
0051bf67c 	cmp	x11, x1
0051bf680 	b.eq	#52 ; -> 0x51bf6b4 
0051bf684 	subs	x9, x9, #1
0051bf688 	add	x10, x10, #16
0051bf68c 	b.ne	#-20 ; -> 0x51bf678 
0051bf690 	mov	x0, x21
0051bf694 	mov	w2, #2
0051bf698 	bl	#-12543028 ; -> 0x45c9264 
0051bf69c 	b	#40 ; -> 0x51bf6c4 
0051bf6a0 	str	x20, [x19, #24]!
0051bf6a4 	mov	x0, x19
0051bf6a8 	mov	x1, x20
0051bf6ac 	bl	#-12774568 ; -> 0x4590a04 
0051bf6b0 	b	#36 ; -> 0x51bf6d4 
0051bf6b4 	ldr	w9, [x10]
0051bf6b8 	add	w9, w9, #2
0051bf6bc 	add	x8, x8, w9, sxtw #4
0051bf6c0 	add	x0, x8, #312
0051bf6c4 	ldp	x8, x2, [x0]
0051bf6c8 	mov	x0, x21
0051bf6cc 	mov	x1, x20
0051bf6d0 	blr	x8
0051bf6d4 	ldp	x20, x19, [sp, #48]
0051bf6d8 	ldr	x30, [sp, #16]
0051bf6dc 	ldp	x22, x21, [sp, #32]
0051bf6e0 	add	sp, sp, #64
0051bf6e4 	ret
0051bf6e8 	bl	#-12773852 ; -> 0x4590d0c 
0051bf6ec 	bl	#-12773856 ; -> 0x4590d0c 
0051bf6f0 	bl	#-12773860 ; -> 0x4590d0c 
0051bf6f4 	bl	#-12773864 ; -> 0x4590d0c 
0051bf6f8 	bl	#-12773868 ; -> 0x4590d0c 
0051bf6fc 	bl	#-12773872 ; -> 0x4590d0c 
0051bf700 	b	#48 ; -> 0x51bf730 
0051bf704 	b	#44 ; -> 0x51bf730 
0051bf708 	b	#40 ; -> 0x51bf730 
0051bf70c 	b	#36 ; -> 0x51bf730 
0051bf710 	b	#32 ; -> 0x51bf730 
0051bf714 	b	#28 ; -> 0x51bf730 
0051bf718 	b	#24 ; -> 0x51bf730 
0051bf71c 	b	#20 ; -> 0x51bf730 
0051bf720 	b	#16 ; -> 0x51bf730 
0051bf724 	b	#12 ; -> 0x51bf730 
0051bf728 	b	#8 ; -> 0x51bf730 
0051bf72c 	b	#4 ; -> 0x51bf730 
0051bf730 	mov	x20, x0
0051bf734 	cmp	w1, #1
0051bf738 	b.ne	#156 ; -> 0x51bf7d4 
0051bf73c 	mov	x0, x20
0051bf740 	bl	#79348032 ; -> 0x9d6b880 
0051bf744 	mov	x20, x0
0051bf748 	adrp	x0, #86147072 ; -> 0xa3e7000 
0051bf74c 	ldr	x0, [x0, #3064]
0051bf750 	bl	#-12774620 ; -> 0x4590a74 
0051bf754 	ldr	x8, [x20]
0051bf758 	ldr	x1, [x8]
0051bf75c 	bl	#-12772936 ; -> 0x4591114 
0051bf760 	tbz	w0, #0, #76 ; -> 0x51bf7ac 
0051bf764 	ldrsw	x21, [sp, #8]
0051bf768 	ldr	x20, [x20]
0051bf76c 	mov	x8, sp
0051bf770 	str	x20, [x8, x21, lsl #3]
0051bf774 	add	w8, w21, #1
0051bf778 	str	w8, [sp, #8]
0051bf77c 	bl	#79347988 ; -> 0x9d6b890 
0051bf780 	mov	w8, #-2
0051bf784 	adrp	x0, #86155264 ; -> 0xa3e9000 
0051bf788 	str	w8, [x19], #8
0051bf78c 	ldr	x0, [x0, #2784]
0051bf790 	bl	#-12774684 ; -> 0x4590a74 
0051bf794 	mov	x2, x0
0051bf798 	mov	x0, x19
0051bf79c 	mov	x1, x20
0051bf7a0 	bl	#-17429340 ; -> 0x4120444 
0051bf7a4 	str	w21, [sp, #8]
0051bf7a8 	b	#-212 ; -> 0x51bf6d4 
0051bf7ac 	mov	w0, #8
0051bf7b0 	bl	#79347968 ; -> 0x9d6b8b0 
0051bf7b4 	ldr	x8, [x20]
0051bf7b8 	str	x8, [x0]
0051bf7bc 	adrp	x1, #79372288 ; -> 0x9d71000 
0051bf7c0 	add	x1, x1, #3672
0051bf7c4 	mov	x2, xzr
0051bf7c8 	bl	#79347960 ; -> 0x9d6b8c0 
0051bf7cc 	mov	x20, x0
0051bf7d0 	bl	#79347904 ; -> 0x9d6b890 
0051bf7d4 	mov	x0, x20
0051bf7d8 	bl	#-11589564 ; -> 0x46b201c 
0051bf7dc 	bl	#-17444732 ; -> 0x411c860 
