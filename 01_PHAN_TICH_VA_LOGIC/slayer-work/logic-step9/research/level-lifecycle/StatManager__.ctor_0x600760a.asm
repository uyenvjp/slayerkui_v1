004f1f294 	sub	sp, sp, #128
004f1f298 	str	x30, [sp, #48]
004f1f29c 	stp	x26, x25, [sp, #64]
004f1f2a0 	stp	x24, x23, [sp, #80]
004f1f2a4 	stp	x22, x21, [sp, #96]
004f1f2a8 	stp	x20, x19, [sp, #112]
004f1f2ac 	adrp	x24, #89182208 ; -> 0xa42c000 
004f1f2b0 	adrp	x20, #89182208 ; -> 0xa42c000 
004f1f2b4 	adrp	x25, #97214464 ; -> 0xabd5000 
004f1f2b8 	adrp	x23, #89178112 ; -> 0xa42b000 
004f1f2bc 	adrp	x21, #89178112 ; -> 0xa42b000 
004f1f2c0 	adrp	x22, #89182208 ; -> 0xa42c000 
004f1f2c4 	ldr	x24, [x24, #1040]
004f1f2c8 	ldr	x20, [x20, #1048]
004f1f2cc 	ldr	x23, [x23, #3016]
004f1f2d0 	ldrb	w8, [x25, #1786]
004f1f2d4 	ldr	x21, [x21, #3008]
004f1f2d8 	ldr	x22, [x22, #672]
004f1f2dc 	mov	x19, x0
004f1f2e0 	tbnz	w8, #0, #192 ; -> 0x4f1f3a0 
004f1f2e4 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f2e8 	ldr	x0, [x0, #1056]
004f1f2ec 	bl	#-10021004 ; -> 0x4590a60 
004f1f2f0 	adrp	x0, #89178112 ; -> 0xa42b000 
004f1f2f4 	ldr	x0, [x0, #3008]
004f1f2f8 	bl	#-10021016 ; -> 0x4590a60 
004f1f2fc 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f300 	ldr	x0, [x0, #1064]
004f1f304 	bl	#-10021028 ; -> 0x4590a60 
004f1f308 	adrp	x0, #89178112 ; -> 0xa42b000 
004f1f30c 	ldr	x0, [x0, #3016]
004f1f310 	bl	#-10021040 ; -> 0x4590a60 
004f1f314 	adrp	x0, #89141248 ; -> 0xa422000 
004f1f318 	ldr	x0, [x0, #2552]
004f1f31c 	bl	#-10021052 ; -> 0x4590a60 
004f1f320 	adrp	x0, #88907776 ; -> 0xa3e9000 
004f1f324 	ldr	x0, [x0, #1864]
004f1f328 	bl	#-10021064 ; -> 0x4590a60 
004f1f32c 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f330 	ldr	x0, [x0, #1048]
004f1f334 	bl	#-10021076 ; -> 0x4590a60 
004f1f338 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f33c 	ldr	x0, [x0, #1040]
004f1f340 	bl	#-10021088 ; -> 0x4590a60 
004f1f344 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f348 	ldr	x0, [x0, #1072]
004f1f34c 	bl	#-10021100 ; -> 0x4590a60 
004f1f350 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f354 	ldr	x0, [x0, #1080]
004f1f358 	bl	#-10021112 ; -> 0x4590a60 
004f1f35c 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f360 	ldr	x0, [x0, #1088]
004f1f364 	bl	#-10021124 ; -> 0x4590a60 
004f1f368 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f36c 	ldr	x0, [x0, #1096]
004f1f370 	bl	#-10021136 ; -> 0x4590a60 
004f1f374 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f378 	ldr	x0, [x0, #1104]
004f1f37c 	bl	#-10021148 ; -> 0x4590a60 
004f1f380 	adrp	x0, #89182208 ; -> 0xa42c000 
004f1f384 	ldr	x0, [x0, #672]
004f1f388 	bl	#-10021160 ; -> 0x4590a60 
004f1f38c 	adrp	x0, #89092096 ; -> 0xa416000 
004f1f390 	ldr	x0, [x0, #1008]
004f1f394 	bl	#-10021172 ; -> 0x4590a60 
004f1f398 	mov	w8, #1
004f1f39c 	strb	w8, [x25, #1786]
004f1f3a0 	ldr	x0, [x24]
004f1f3a4 	bl	#-10020520 ; -> 0x4590cfc 
004f1f3a8 	ldr	x1, [x20]
004f1f3ac 	mov	x20, x0
004f1f3b0 	bl	#35819716 ; -> 0x7148474 
004f1f3b4 	mov	x0, x19
004f1f3b8 	mov	x1, x20
004f1f3bc 	str	x20, [x0, #32]!
004f1f3c0 	bl	#-10021308 ; -> 0x4590a04 
004f1f3c4 	movi	v0.2d, #0000000000000000
004f1f3c8 	mov	x0, sp
004f1f3cc 	mov	w1, #17
004f1f3d0 	mov	w2, wzr
004f1f3d4 	mov	x3, xzr
004f1f3d8 	str	xzr, [sp, #32]
004f1f3dc 	stp	q0, q0, [sp]
004f1f3e0 	bl	#-3990796 ; -> 0x4b50ed4 SilentBigInt::.ctor
004f1f3e4 	ldp	q0, q1, [sp]
004f1f3e8 	add	x0, x19, #168
004f1f3ec 	ldr	x8, [sp, #32]
004f1f3f0 	mov	x1, xzr
004f1f3f4 	stp	q0, q1, [x19, #160]
004f1f3f8 	str	x8, [x19, #192]
004f1f3fc 	bl	#-10021368 ; -> 0x4590a04 
004f1f400 	ldr	x0, [x23]
004f1f404 	bl	#-10020616 ; -> 0x4590cfc 
004f1f408 	ldr	x1, [x21]
004f1f40c 	mov	x20, x0
004f1f410 	bl	#51612272 ; -> 0x8057e80 
004f1f414 	mov	x0, x19
004f1f418 	mov	x1, x20
004f1f41c 	str	x20, [x0, #200]!
004f1f420 	bl	#-10021404 ; -> 0x4590a04 
004f1f424 	ldr	x0, [x22]
004f1f428 	ldr	w8, [x0, #228]
004f1f42c 	cbnz	w8, #12 ; -> 0x4f1f438 
004f1f430 	bl	#-10020944 ; -> 0x4590be0 
004f1f434 	ldr	x0, [x22]
004f1f438 	ldr	x8, [x0, #184]
004f1f43c 	adrp	x23, #89092096 ; -> 0xa416000 
004f1f440 	ldr	x20, [x8, #24]
004f1f444 	ldr	x23, [x23, #1008]
004f1f448 	cbnz	x20, #92 ; -> 0x4f1f4a4 
004f1f44c 	ldr	w9, [x0, #228]
004f1f450 	cbnz	w9, #16 ; -> 0x4f1f460 
004f1f454 	bl	#-10020980 ; -> 0x4590be0 
004f1f458 	ldr	x8, [x22]
004f1f45c 	ldr	x8, [x8, #184]
004f1f460 	adrp	x9, #88907776 ; -> 0xa3e9000 
004f1f464 	ldr	x9, [x9, #1864]
004f1f468 	ldr	x21, [x8]
004f1f46c 	ldr	x0, [x9]
004f1f470 	bl	#-10020724 ; -> 0x4590cfc 
004f1f474 	adrp	x8, #89182208 ; -> 0xa42c000 
004f1f478 	mov	x1, x21
004f1f47c 	mov	x3, xzr
004f1f480 	ldr	x8, [x8, #1072]
004f1f484 	mov	x20, x0
004f1f488 	ldr	x2, [x8]
004f1f48c 	bl	#25238120 ; -> 0x6730ef4 
004f1f490 	ldr	x8, [x22]
004f1f494 	mov	x1, x20
004f1f498 	ldr	x0, [x8, #184]
004f1f49c 	str	x20, [x0, #24]!
004f1f4a0 	bl	#-10021532 ; -> 0x4590a04 
004f1f4a4 	ldr	x0, [x23]
004f1f4a8 	bl	#-10020780 ; -> 0x4590cfc 
004f1f4ac 	mov	x1, x20
004f1f4b0 	mov	x2, xzr
004f1f4b4 	mov	x21, x0
004f1f4b8 	bl	#78563396 ; -> 0x9a0bcfc UnityEngine.WaitUntil::.ctor
004f1f4bc 	add	x0, x19, #416
004f1f4c0 	mov	x1, x21
004f1f4c4 	str	x21, [x19, #416]
004f1f4c8 	bl	#-10021572 ; -> 0x4590a04 
004f1f4cc 	ldr	x0, [x22]
004f1f4d0 	ldr	w8, [x0, #228]
004f1f4d4 	cbnz	w8, #12 ; -> 0x4f1f4e0 
004f1f4d8 	bl	#-10021112 ; -> 0x4590be0 
004f1f4dc 	ldr	x0, [x22]
004f1f4e0 	ldr	x8, [x0, #184]
004f1f4e4 	ldr	x20, [x8, #32]
004f1f4e8 	cbnz	x20, #92 ; -> 0x4f1f544 
004f1f4ec 	ldr	w9, [x0, #228]
004f1f4f0 	cbnz	w9, #16 ; -> 0x4f1f500 
004f1f4f4 	bl	#-10021140 ; -> 0x4590be0 
004f1f4f8 	ldr	x8, [x22]
004f1f4fc 	ldr	x8, [x8, #184]
004f1f500 	adrp	x9, #88907776 ; -> 0xa3e9000 
004f1f504 	ldr	x9, [x9, #1864]
004f1f508 	ldr	x21, [x8]
004f1f50c 	ldr	x0, [x9]
004f1f510 	bl	#-10020884 ; -> 0x4590cfc 
004f1f514 	adrp	x8, #89182208 ; -> 0xa42c000 
004f1f518 	mov	x1, x21
004f1f51c 	mov	x3, xzr
004f1f520 	ldr	x8, [x8, #1080]
004f1f524 	mov	x20, x0
004f1f528 	ldr	x2, [x8]
004f1f52c 	bl	#25237960 ; -> 0x6730ef4 
004f1f530 	ldr	x8, [x22]
004f1f534 	mov	x1, x20
004f1f538 	ldr	x0, [x8, #184]
004f1f53c 	str	x20, [x0, #32]!
004f1f540 	bl	#-10021692 ; -> 0x4590a04 
004f1f544 	ldr	x0, [x23]
004f1f548 	bl	#-10020940 ; -> 0x4590cfc 
004f1f54c 	mov	x1, x20
004f1f550 	mov	x2, xzr
004f1f554 	mov	x21, x0
004f1f558 	bl	#78563236 ; -> 0x9a0bcfc UnityEngine.WaitUntil::.ctor
004f1f55c 	add	x0, x19, #448
004f1f560 	mov	x1, x21
004f1f564 	str	x21, [x19, #448]
004f1f568 	bl	#-10021732 ; -> 0x4590a04 
004f1f56c 	ldr	x0, [x22]
004f1f570 	ldr	w8, [x0, #228]
004f1f574 	cbnz	w8, #12 ; -> 0x4f1f580 
004f1f578 	bl	#-10021272 ; -> 0x4590be0 
004f1f57c 	ldr	x0, [x22]
004f1f580 	ldr	x8, [x0, #184]
004f1f584 	ldr	x20, [x8, #40]
004f1f588 	cbnz	x20, #92 ; -> 0x4f1f5e4 
004f1f58c 	ldr	w9, [x0, #228]
004f1f590 	cbnz	w9, #16 ; -> 0x4f1f5a0 
004f1f594 	bl	#-10021300 ; -> 0x4590be0 
004f1f598 	ldr	x8, [x22]
004f1f59c 	ldr	x8, [x8, #184]
004f1f5a0 	adrp	x9, #88907776 ; -> 0xa3e9000 
004f1f5a4 	ldr	x9, [x9, #1864]
004f1f5a8 	ldr	x21, [x8]
004f1f5ac 	ldr	x0, [x9]
004f1f5b0 	bl	#-10021044 ; -> 0x4590cfc 
004f1f5b4 	adrp	x8, #89182208 ; -> 0xa42c000 
004f1f5b8 	mov	x1, x21
004f1f5bc 	mov	x3, xzr
004f1f5c0 	ldr	x8, [x8, #1088]
004f1f5c4 	mov	x20, x0
004f1f5c8 	ldr	x2, [x8]
004f1f5cc 	bl	#25237800 ; -> 0x6730ef4 
004f1f5d0 	ldr	x8, [x22]
004f1f5d4 	mov	x1, x20
004f1f5d8 	ldr	x0, [x8, #184]
004f1f5dc 	str	x20, [x0, #40]!
004f1f5e0 	bl	#-10021852 ; -> 0x4590a04 
004f1f5e4 	ldr	x0, [x23]
004f1f5e8 	bl	#-10021100 ; -> 0x4590cfc 
004f1f5ec 	mov	x1, x20
004f1f5f0 	mov	x2, xzr
004f1f5f4 	mov	x21, x0
004f1f5f8 	bl	#78563076 ; -> 0x9a0bcfc UnityEngine.WaitUntil::.ctor
004f1f5fc 	add	x0, x19, #456
004f1f600 	mov	x1, x21
004f1f604 	str	x21, [x19, #456]
004f1f608 	bl	#-10021892 ; -> 0x4590a04 
004f1f60c 	ldr	x0, [x22]
004f1f610 	ldr	w8, [x0, #228]
004f1f614 	cbnz	w8, #12 ; -> 0x4f1f620 
004f1f618 	bl	#-10021432 ; -> 0x4590be0 
004f1f61c 	ldr	x0, [x22]
004f1f620 	ldr	x8, [x0, #184]
004f1f624 	ldr	x20, [x8, #48]
004f1f628 	cbnz	x20, #92 ; -> 0x4f1f684 
004f1f62c 	ldr	w9, [x0, #228]
004f1f630 	cbnz	w9, #16 ; -> 0x4f1f640 
004f1f634 	bl	#-10021460 ; -> 0x4590be0 
004f1f638 	ldr	x8, [x22]
004f1f63c 	ldr	x8, [x8, #184]
004f1f640 	adrp	x9, #88907776 ; -> 0xa3e9000 
004f1f644 	ldr	x9, [x9, #1864]
004f1f648 	ldr	x21, [x8]
004f1f64c 	ldr	x0, [x9]
004f1f650 	bl	#-10021204 ; -> 0x4590cfc 
004f1f654 	adrp	x8, #89182208 ; -> 0xa42c000 
004f1f658 	mov	x1, x21
004f1f65c 	mov	x3, xzr
004f1f660 	ldr	x8, [x8, #1096]
004f1f664 	mov	x20, x0
004f1f668 	ldr	x2, [x8]
004f1f66c 	bl	#25237640 ; -> 0x6730ef4 
004f1f670 	ldr	x8, [x22]
004f1f674 	mov	x1, x20
004f1f678 	ldr	x0, [x8, #184]
004f1f67c 	str	x20, [x0, #48]!
004f1f680 	bl	#-10022012 ; -> 0x4590a04 
004f1f684 	ldr	x0, [x23]
004f1f688 	bl	#-10021260 ; -> 0x4590cfc 
004f1f68c 	mov	x1, x20
004f1f690 	mov	x2, xzr
004f1f694 	mov	x21, x0
004f1f698 	bl	#78562916 ; -> 0x9a0bcfc UnityEngine.WaitUntil::.ctor
004f1f69c 	add	x0, x19, #464
004f1f6a0 	mov	x1, x21
004f1f6a4 	str	x21, [x19, #464]
004f1f6a8 	bl	#-10022052 ; -> 0x4590a04 
004f1f6ac 	ldr	x0, [x22]
004f1f6b0 	ldr	w8, [x0, #228]
004f1f6b4 	cbnz	w8, #12 ; -> 0x4f1f6c0 
004f1f6b8 	bl	#-10021592 ; -> 0x4590be0 
004f1f6bc 	ldr	x0, [x22]
004f1f6c0 	ldr	x8, [x0, #184]
004f1f6c4 	adrp	x26, #89141248 ; -> 0xa422000 
004f1f6c8 	adrp	x25, #89182208 ; -> 0xa42c000 
004f1f6cc 	adrp	x24, #89182208 ; -> 0xa42c000 
004f1f6d0 	ldr	x26, [x26, #2552]
004f1f6d4 	ldr	x25, [x25, #1064]
004f1f6d8 	ldr	x20, [x8, #56]
004f1f6dc 	ldr	x24, [x24, #1056]
004f1f6e0 	cbnz	x20, #92 ; -> 0x4f1f73c 
004f1f6e4 	ldr	w9, [x0, #228]
004f1f6e8 	cbnz	w9, #16 ; -> 0x4f1f6f8 
004f1f6ec 	bl	#-10021644 ; -> 0x4590be0 
004f1f6f0 	ldr	x8, [x22]
004f1f6f4 	ldr	x8, [x8, #184]
004f1f6f8 	adrp	x9, #88907776 ; -> 0xa3e9000 
004f1f6fc 	ldr	x9, [x9, #1864]
004f1f700 	ldr	x21, [x8]
004f1f704 	ldr	x0, [x9]
004f1f708 	bl	#-10021388 ; -> 0x4590cfc 
004f1f70c 	adrp	x8, #89182208 ; -> 0xa42c000 
004f1f710 	mov	x1, x21
004f1f714 	mov	x3, xzr
004f1f718 	ldr	x8, [x8, #1104]
004f1f71c 	mov	x20, x0
004f1f720 	ldr	x2, [x8]
004f1f724 	bl	#25237456 ; -> 0x6730ef4 
004f1f728 	ldr	x8, [x22]
004f1f72c 	mov	x1, x20
004f1f730 	ldr	x0, [x8, #184]
004f1f734 	str	x20, [x0, #56]!
004f1f738 	bl	#-10022196 ; -> 0x4590a04 
004f1f73c 	ldr	x0, [x23]
004f1f740 	bl	#-10021444 ; -> 0x4590cfc 
004f1f744 	mov	x1, x20
004f1f748 	mov	x2, xzr
004f1f74c 	mov	x21, x0
004f1f750 	bl	#78562732 ; -> 0x9a0bcfc UnityEngine.WaitUntil::.ctor
004f1f754 	add	x0, x19, #472
004f1f758 	mov	x1, x21
004f1f75c 	str	x21, [x19, #472]
004f1f760 	bl	#-10022236 ; -> 0x4590a04 
004f1f764 	adrp	x8, #-50282496 ; -> 0x1f2b000 
004f1f768 	adrp	x9, #-50298880 ; -> 0x1f27000 
004f1f76c 	ldr	x0, [x26]
004f1f770 	ldr	q0, [x8, #64]
004f1f774 	ldr	d1, [x9, #3944]
004f1f778 	add	x8, x19, #504
004f1f77c 	str	q0, [x8]
004f1f780 	str	d1, [x19, #520]
004f1f784 	bl	#-10021512 ; -> 0x4590cfc 
004f1f788 	mov	x1, xzr
004f1f78c 	mov	x20, x0
004f1f790 	bl	#5032264 ; -> 0x53ec0d8 ForceOptionData::.ctor
004f1f794 	add	x0, x19, #592
004f1f798 	mov	x1, x20
004f1f79c 	str	x20, [x19, #592]
004f1f7a0 	bl	#-10022300 ; -> 0x4590a04 
004f1f7a4 	ldr	x0, [x25]
004f1f7a8 	bl	#-10021548 ; -> 0x4590cfc 
004f1f7ac 	ldr	x1, [x24]
004f1f7b0 	mov	x20, x0
004f1f7b4 	bl	#51894012 ; -> 0x809ceb0 
004f1f7b8 	add	x0, x19, #736
004f1f7bc 	mov	x1, x20
004f1f7c0 	str	x20, [x19, #736]
004f1f7c4 	bl	#-10022336 ; -> 0x4590a04 
004f1f7c8 	mov	x0, x19
004f1f7cc 	mov	x1, xzr
004f1f7d0 	bl	#78541292 ; -> 0x9a069bc UnityEngine.MonoBehaviour::.ctor
004f1f7d4 	ldp	x20, x19, [sp, #112]
004f1f7d8 	ldr	x30, [sp, #48]
004f1f7dc 	ldp	x22, x21, [sp, #96]
004f1f7e0 	ldp	x24, x23, [sp, #80]
004f1f7e4 	ldp	x26, x25, [sp, #64]
004f1f7e8 	add	sp, sp, #128
004f1f7ec 	ret
