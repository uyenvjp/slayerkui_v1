0051ce4fc 	sub	sp, sp, #80
0051ce500 	stp	x30, x23, [sp, #32]
0051ce504 	stp	x22, x21, [sp, #48]
0051ce508 	stp	x20, x19, [sp, #64]
0051ce50c 	adrp	x20, #94404608 ; -> 0xabd6000 
0051ce510 	mov	x19, x0
0051ce514 	ldrb	w8, [x20, #2987]
0051ce518 	tbnz	w8, #0, #84 ; -> 0x51ce56c 
0051ce51c 	adrp	x0, #86421504 ; -> 0xa439000 
0051ce520 	ldr	x0, [x0, #2312]
0051ce524 	bl	#-12835524 ; -> 0x4590a60 
0051ce528 	adrp	x0, #86421504 ; -> 0xa439000 
0051ce52c 	ldr	x0, [x0, #2320]
0051ce530 	bl	#-12835536 ; -> 0x4590a60 
0051ce534 	adrp	x0, #86093824 ; -> 0xa3e9000 
0051ce538 	ldr	x0, [x0, #2760]
0051ce53c 	bl	#-12835548 ; -> 0x4590a60 
0051ce540 	adrp	x0, #86093824 ; -> 0xa3e9000 
0051ce544 	ldr	x0, [x0, #2512]
0051ce548 	bl	#-12835560 ; -> 0x4590a60 
0051ce54c 	adrp	x0, #86421504 ; -> 0xa439000 
0051ce550 	ldr	x0, [x0, #2328]
0051ce554 	bl	#-12835572 ; -> 0x4590a60 
0051ce558 	adrp	x0, #86421504 ; -> 0xa439000 
0051ce55c 	ldr	x0, [x0, #2336]
0051ce560 	bl	#-12835584 ; -> 0x4590a60 
0051ce564 	mov	w8, #1
0051ce568 	strb	w8, [x20, #2987]
0051ce56c 	ldr	w8, [x19]
0051ce570 	ldr	x22, [x19, #32]
0051ce574 	str	xzr, [sp, #24]
0051ce578 	str	wzr, [sp, #16]
0051ce57c 	cbz	w8, #204 ; -> 0x51ce648 
0051ce580 	adrp	x23, #86093824 ; -> 0xa3e9000 
0051ce584 	ldr	x23, [x23, #2512]
0051ce588 	ldr	x0, [x23]
0051ce58c 	bl	#35367108 ; -> 0x7388e50 
0051ce590 	cbz	x0, #496 ; -> 0x51ce780 
0051ce594 	mov	x1, xzr
0051ce598 	bl	#2425184 ; -> 0x541e6f8 Network.NetworkHandler::get_FrontClient
0051ce59c 	cbz	x22, #488 ; -> 0x51ce784 
0051ce5a0 	mov	x20, x0
0051ce5a4 	ldr	x21, [x22, #16]
0051ce5a8 	ldr	x0, [x23]
0051ce5ac 	bl	#35367076 ; -> 0x7388e50 
0051ce5b0 	cbz	x0, #472 ; -> 0x51ce788 
0051ce5b4 	cbz	x20, #472 ; -> 0x51ce78c 
0051ce5b8 	ldr	x8, [x20]
0051ce5bc 	ldr	x2, [x0, #88]
0051ce5c0 	ldr	x9, [x8, #17576]
0051ce5c4 	ldr	x6, [x8, #17584]
0051ce5c8 	mov	x0, x20
0051ce5cc 	mov	x1, x21
0051ce5d0 	mov	x3, xzr
0051ce5d4 	mov	x4, xzr
0051ce5d8 	mov	x5, xzr
0051ce5dc 	blr	x9
0051ce5e0 	cbz	x0, #432 ; -> 0x51ce790 
0051ce5e4 	adrp	x8, #86421504 ; -> 0xa439000 
0051ce5e8 	ldr	x8, [x8, #2312]
0051ce5ec 	ldr	x1, [x8]
0051ce5f0 	bl	#40614936 ; -> 0x788a208 
0051ce5f4 	adrp	x8, #86421504 ; -> 0xa439000 
0051ce5f8 	ldr	x8, [x8, #2336]
0051ce5fc 	str	x0, [sp, #24]
0051ce600 	ldr	x1, [x8]
0051ce604 	add	x0, sp, #24
0051ce608 	bl	#36505132 ; -> 0x749ec34 
0051ce60c 	tbnz	w0, #0, #80 ; -> 0x51ce65c 
0051ce610 	ldr	x8, [sp, #24]
0051ce614 	mov	x0, x19
0051ce618 	str	wzr, [x19]
0051ce61c 	str	x8, [x0, #40]!
0051ce620 	mov	x1, xzr
0051ce624 	bl	#-12835872 ; -> 0x4590a04 
0051ce628 	adrp	x8, #86421504 ; -> 0xa439000 
0051ce62c 	ldr	x8, [x8, #2320]
0051ce630 	ldr	x3, [x8]
0051ce634 	add	x0, x19, #8
0051ce638 	add	x1, sp, #24
0051ce63c 	mov	x2, x19
0051ce640 	bl	#32860 ; -> 0x51d669c 
0051ce644 	b	#292 ; -> 0x51ce768 
0051ce648 	ldr	x8, [x19, #40]
0051ce64c 	mov	w9, #-1
0051ce650 	str	xzr, [x19, #40]
0051ce654 	str	w9, [x19]
0051ce658 	str	x8, [sp, #24]
0051ce65c 	adrp	x8, #86421504 ; -> 0xa439000 
0051ce660 	ldr	x8, [x8, #2328]
0051ce664 	ldr	x1, [x8]
0051ce668 	add	x0, sp, #24
0051ce66c 	bl	#36505096 ; -> 0x749ec74 
0051ce670 	mov	x20, x0
0051ce674 	cbz	x0, #264 ; -> 0x51ce77c 
0051ce678 	ldr	w0, [x20, #32]
0051ce67c 	mov	x1, xzr
0051ce680 	bl	#2464772 ; -> 0x5428284 Network.Request::IsValidCode
0051ce684 	tbz	w0, #0, #36 ; -> 0x51ce6a8 
0051ce688 	cbz	x22, #268 ; -> 0x51ce794 
0051ce68c 	ldr	x8, [x22, #24]
0051ce690 	cbz	x8, #24 ; -> 0x51ce6a8 
0051ce694 	ldr	x0, [x8, #64]
0051ce698 	ldr	x9, [x8, #24]
0051ce69c 	ldr	x2, [x8, #40]
0051ce6a0 	mov	x1, x20
0051ce6a4 	blr	x9
0051ce6a8 	ldr	x21, [x19, #8]
0051ce6ac 	mov	w8, #-2
0051ce6b0 	str	w8, [x19]
0051ce6b4 	cbz	x21, #128 ; -> 0x51ce734 
0051ce6b8 	adrp	x8, #86093824 ; -> 0xa3e9000 
0051ce6bc 	ldr	x8, [x8, #2760]
0051ce6c0 	ldr	x8, [x8]
0051ce6c4 	ldr	x0, [x8, #32]
0051ce6c8 	add	x8, x0, #309
0051ce6cc 	ldrh	w8, [x8]
0051ce6d0 	tbnz	w8, #0, #8 ; -> 0x51ce6d8 
0051ce6d4 	bl	#-12605356 ; -> 0x45c8f28 
0051ce6d8 	ldr	x8, [x0, #192]
0051ce6dc 	ldr	x1, [x8, #8]
0051ce6e0 	add	x8, x1, #309
0051ce6e4 	ldrh	w8, [x8]
0051ce6e8 	tbnz	w8, #0, #16 ; -> 0x51ce6f8 
0051ce6ec 	mov	x0, x1
0051ce6f0 	bl	#-12605384 ; -> 0x45c8f28 
0051ce6f4 	mov	x1, x0
0051ce6f8 	ldr	x8, [x21]
0051ce6fc 	ldrh	w9, [x8, #302]
0051ce700 	cbz	x9, #36 ; -> 0x51ce724 
0051ce704 	ldr	x10, [x8, #176]
0051ce708 	add	x10, x10, #8
0051ce70c 	ldur	x11, [x10, #-8]
0051ce710 	cmp	x11, x1
0051ce714 	b.eq	#52 ; -> 0x51ce748 
0051ce718 	subs	x9, x9, #1
0051ce71c 	add	x10, x10, #16
0051ce720 	b.ne	#-20 ; -> 0x51ce70c 
0051ce724 	mov	x0, x21
0051ce728 	mov	w2, #2
0051ce72c 	bl	#-12604616 ; -> 0x45c9264 
0051ce730 	b	#40 ; -> 0x51ce758 
0051ce734 	str	x20, [x19, #24]!
0051ce738 	mov	x0, x19
0051ce73c 	mov	x1, x20
0051ce740 	bl	#-12836156 ; -> 0x4590a04 
0051ce744 	b	#36 ; -> 0x51ce768 
0051ce748 	ldr	w9, [x10]
0051ce74c 	add	w9, w9, #2
0051ce750 	add	x8, x8, w9, sxtw #4
0051ce754 	add	x0, x8, #312
0051ce758 	ldp	x8, x2, [x0]
0051ce75c 	mov	x0, x21
0051ce760 	mov	x1, x20
0051ce764 	blr	x8
0051ce768 	ldp	x20, x19, [sp, #64]
0051ce76c 	ldp	x22, x21, [sp, #48]
0051ce770 	ldp	x30, x23, [sp, #32]
0051ce774 	add	sp, sp, #80
0051ce778 	ret
0051ce77c 	bl	#-12835440 ; -> 0x4590d0c 
0051ce780 	bl	#-12835444 ; -> 0x4590d0c 
0051ce784 	bl	#-12835448 ; -> 0x4590d0c 
0051ce788 	bl	#-12835452 ; -> 0x4590d0c 
0051ce78c 	bl	#-12835456 ; -> 0x4590d0c 
0051ce790 	bl	#-12835460 ; -> 0x4590d0c 
0051ce794 	bl	#-12835464 ; -> 0x4590d0c 
0051ce798 	b	#56 ; -> 0x51ce7d0 
0051ce79c 	b	#52 ; -> 0x51ce7d0 
0051ce7a0 	b	#48 ; -> 0x51ce7d0 
0051ce7a4 	b	#44 ; -> 0x51ce7d0 
0051ce7a8 	b	#40 ; -> 0x51ce7d0 
0051ce7ac 	b	#36 ; -> 0x51ce7d0 
0051ce7b0 	b	#32 ; -> 0x51ce7d0 
0051ce7b4 	b	#28 ; -> 0x51ce7d0 
0051ce7b8 	b	#24 ; -> 0x51ce7d0 
0051ce7bc 	b	#20 ; -> 0x51ce7d0 
0051ce7c0 	b	#16 ; -> 0x51ce7d0 
0051ce7c4 	b	#12 ; -> 0x51ce7d0 
0051ce7c8 	b	#8 ; -> 0x51ce7d0 
0051ce7cc 	b	#4 ; -> 0x51ce7d0 
0051ce7d0 	mov	x20, x0
0051ce7d4 	cmp	w1, #1
0051ce7d8 	b.ne	#156 ; -> 0x51ce874 
0051ce7dc 	mov	x0, x20
0051ce7e0 	bl	#79286432 ; -> 0x9d6b880 
0051ce7e4 	mov	x20, x0
0051ce7e8 	adrp	x0, #86085632 ; -> 0xa3e7000 
0051ce7ec 	ldr	x0, [x0, #3064]
0051ce7f0 	bl	#-12836220 ; -> 0x4590a74 
0051ce7f4 	ldr	x8, [x20]
0051ce7f8 	ldr	x1, [x8]
0051ce7fc 	bl	#-12834536 ; -> 0x4591114 
0051ce800 	tbz	w0, #0, #76 ; -> 0x51ce84c 
0051ce804 	ldrsw	x21, [sp, #16]
0051ce808 	ldr	x20, [x20]
0051ce80c 	add	x8, sp, #8
0051ce810 	str	x20, [x8, x21, lsl #3]
0051ce814 	add	w8, w21, #1
0051ce818 	str	w8, [sp, #16]
0051ce81c 	bl	#79286388 ; -> 0x9d6b890 
0051ce820 	mov	w8, #-2
0051ce824 	adrp	x0, #86093824 ; -> 0xa3e9000 
0051ce828 	str	w8, [x19], #8
0051ce82c 	ldr	x0, [x0, #2784]
0051ce830 	bl	#-12836284 ; -> 0x4590a74 
0051ce834 	mov	x2, x0
0051ce838 	mov	x0, x19
0051ce83c 	mov	x1, x20
0051ce840 	bl	#-17490940 ; -> 0x4120444 
0051ce844 	str	w21, [sp, #16]
0051ce848 	b	#-224 ; -> 0x51ce768 
0051ce84c 	mov	w0, #8
0051ce850 	bl	#79286368 ; -> 0x9d6b8b0 
0051ce854 	ldr	x8, [x20]
0051ce858 	str	x8, [x0]
0051ce85c 	adrp	x1, #79310848 ; -> 0x9d71000 
0051ce860 	add	x1, x1, #3672
0051ce864 	mov	x2, xzr
0051ce868 	bl	#79286360 ; -> 0x9d6b8c0 
0051ce86c 	mov	x20, x0
0051ce870 	bl	#79286304 ; -> 0x9d6b890 
0051ce874 	mov	x0, x20
0051ce878 	bl	#-11651164 ; -> 0x46b201c 
0051ce87c 	bl	#-17506332 ; -> 0x411c860 
