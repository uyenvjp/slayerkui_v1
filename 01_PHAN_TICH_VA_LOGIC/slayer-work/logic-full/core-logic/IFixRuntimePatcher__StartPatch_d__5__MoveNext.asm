0051b93a4 	sub	sp, sp, #192
0051b93a8 	stp	x30, x25, [sp, #128]
0051b93ac 	stp	x24, x23, [sp, #144]
0051b93b0 	stp	x22, x21, [sp, #160]
0051b93b4 	stp	x20, x19, [sp, #176]
0051b93b8 	adrp	x20, #94490624 ; -> 0xabd6000
0051b93bc 	mov	x19, x0
0051b93c0 	ldrb	w8, [x20, #2792]
0051b93c4 	tbnz	w8, #0, #264 ; -> 0x51b94cc
0051b93c8 	adrp	x0, #86503424 ; -> 0xa438000
0051b93cc 	ldr	x0, [x0, #3616]
0051b93d0 	bl	#-12749168 ; -> 0x4590a60
0051b93d4 	adrp	x0, #86503424 ; -> 0xa438000
0051b93d8 	ldr	x0, [x0, #3624]
0051b93dc 	bl	#-12749180 ; -> 0x4590a60
0051b93e0 	adrp	x0, #86188032 ; -> 0xa3eb000
0051b93e4 	ldr	x0, [x0, #128]
0051b93e8 	bl	#-12749192 ; -> 0x4590a60
0051b93ec 	adrp	x0, #86188032 ; -> 0xa3eb000
0051b93f0 	ldr	x0, [x0, #136]
0051b93f4 	bl	#-12749204 ; -> 0x4590a60
0051b93f8 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b93fc 	ldr	x0, [x0, #1328]
0051b9400 	bl	#-12749216 ; -> 0x4590a60
0051b9404 	adrp	x0, #86503424 ; -> 0xa438000
0051b9408 	ldr	x0, [x0, #3632]
0051b940c 	bl	#-12749228 ; -> 0x4590a60
0051b9410 	adrp	x0, #86503424 ; -> 0xa438000
0051b9414 	ldr	x0, [x0, #3640]
0051b9418 	bl	#-12749240 ; -> 0x4590a60
0051b941c 	adrp	x0, #86503424 ; -> 0xa438000
0051b9420 	ldr	x0, [x0, #3648]
0051b9424 	bl	#-12749252 ; -> 0x4590a60
0051b9428 	adrp	x0, #86503424 ; -> 0xa438000
0051b942c 	ldr	x0, [x0, #3656]
0051b9430 	bl	#-12749264 ; -> 0x4590a60
0051b9434 	adrp	x0, #86503424 ; -> 0xa438000
0051b9438 	ldr	x0, [x0, #3664]
0051b943c 	bl	#-12749276 ; -> 0x4590a60
0051b9440 	adrp	x0, #86503424 ; -> 0xa438000
0051b9444 	ldr	x0, [x0, #3672]
0051b9448 	bl	#-12749288 ; -> 0x4590a60
0051b944c 	adrp	x0, #86183936 ; -> 0xa3ea000
0051b9450 	ldr	x0, [x0, #1488]
0051b9454 	bl	#-12749300 ; -> 0x4590a60
0051b9458 	adrp	x0, #86503424 ; -> 0xa438000
0051b945c 	ldr	x0, [x0, #3680]
0051b9460 	bl	#-12749312 ; -> 0x4590a60
0051b9464 	adrp	x0, #86503424 ; -> 0xa438000
0051b9468 	ldr	x0, [x0, #3688]
0051b946c 	bl	#-12749324 ; -> 0x4590a60
0051b9470 	adrp	x0, #86503424 ; -> 0xa438000
0051b9474 	ldr	x0, [x0, #3696]
0051b9478 	bl	#-12749336 ; -> 0x4590a60
0051b947c 	adrp	x0, #86503424 ; -> 0xa438000
0051b9480 	ldr	x0, [x0, #3704]
0051b9484 	bl	#-12749348 ; -> 0x4590a60
0051b9488 	adrp	x0, #86466560 ; -> 0xa42f000
0051b948c 	ldr	x0, [x0, #432]
0051b9490 	bl	#-12749360 ; -> 0x4590a60
0051b9494 	adrp	x0, #86188032 ; -> 0xa3eb000
0051b9498 	ldr	x0, [x0, #144]
0051b949c 	bl	#-12749372 ; -> 0x4590a60
0051b94a0 	adrp	x0, #86503424 ; -> 0xa438000
0051b94a4 	ldr	x0, [x0, #3712]
0051b94a8 	bl	#-12749384 ; -> 0x4590a60
0051b94ac 	adrp	x0, #86503424 ; -> 0xa438000
0051b94b0 	ldr	x0, [x0, #3720]
0051b94b4 	bl	#-12749396 ; -> 0x4590a60
0051b94b8 	adrp	x0, #86503424 ; -> 0xa438000
0051b94bc 	ldr	x0, [x0, #3728]
0051b94c0 	bl	#-12749408 ; -> 0x4590a60
0051b94c4 	mov	w8, #1
0051b94c8 	strb	w8, [x20, #2792]
0051b94cc 	stp	xzr, xzr, [sp, #96]
0051b94d0 	adrp	x25, #86171648 ; -> 0xa3e7000
0051b94d4 	str	xzr, [sp, #112]
0051b94d8 	ldr	x25, [x25, #1328]
0051b94dc 	ldr	w8, [x19]
0051b94e0 	ldr	x20, [x19, #48]
0051b94e4 	stp	xzr, xzr, [sp, #64]
0051b94e8 	str	xzr, [sp, #80]
0051b94ec 	str	wzr, [sp, #56]
0051b94f0 	cbz	w8, #360 ; -> 0x51b9658
0051b94f4 	adrp	x8, #86171648 ; -> 0xa3e7000
0051b94f8 	ldr	x8, [x8, #1248]
0051b94fc 	ldrb	w9, [x19, #40]
0051b9500 	ldr	x21, [x19, #32]
0051b9504 	ldr	x0, [x8, #40]
0051b9508 	strb	w9, [sp]
0051b950c 	mov	x1, sp
0051b9510 	bl	#-12749096 ; -> 0x4590be8
0051b9514 	adrp	x8, #86503424 ; -> 0xa438000
0051b9518 	mov	x2, x0
0051b951c 	ldr	x8, [x8, #3728]
0051b9520 	ldr	x0, [x8]
0051b9524 	mov	x1, x21
0051b9528 	mov	x3, xzr
0051b952c 	bl	#62002568 ; -> 0x8cdaab4 [System.String::Format]
0051b9530 	mov	x21, x0
0051b9534 	ldr	x0, [x25]
0051b9538 	ldr	w8, [x0, #228]
0051b953c 	cbnz	w8, #8 ; -> 0x51b9544
0051b9540 	bl	#-12749152 ; -> 0x4590be0
0051b9544 	mov	x0, x21
0051b9548 	mov	x1, xzr
0051b954c 	bl	#75527052 ; -> 0x99c08d8 [UnityEngine.Debug::Log]
0051b9550 	ldr	x0, [x19, #32]
0051b9554 	mov	x1, xzr
0051b9558 	bl	#61996620 ; -> 0x8cd93a4 [System.String::IsNullOrEmpty]
0051b955c 	tbnz	w0, #0, #2216 ; -> 0x51b9e04
0051b9560 	adrp	x8, #86183936 ; -> 0xa3ea000
0051b9564 	ldr	x8, [x8, #1488]
0051b9568 	ldr	x21, [x19, #32]
0051b956c 	ldr	x0, [x8]
0051b9570 	ldr	w8, [x0, #228]
0051b9574 	cbnz	w8, #8 ; -> 0x51b957c
0051b9578 	bl	#-12749208 ; -> 0x4590be0
0051b957c 	adrp	x8, #86503424 ; -> 0xa438000
0051b9580 	ldr	x8, [x8, #3672]
0051b9584 	ldr	x1, [x8]
0051b9588 	mov	x0, x21
0051b958c 	bl	#14381844 ; -> 0x5f708a0
0051b9590 	mov	x21, x0
0051b9594 	cbz	x0, #2144 ; -> 0x51b9df4
0051b9598 	ldr	w8, [x21, #24]
0051b959c 	cmp	w8, #1
0051b95a0 	b.lt	#2132 ; -> 0x51b9df4
0051b95a4 	adrp	x24, #86466560 ; -> 0xa42f000
0051b95a8 	ldr	x24, [x24, #432]
0051b95ac 	ldrb	w9, [x19, #40]
0051b95b0 	ldr	x0, [x24]
0051b95b4 	ldr	w8, [x0, #228]
0051b95b8 	cbz	w9, #440 ; -> 0x51b9770
0051b95bc 	cbnz	w8, #12 ; -> 0x51b95c8
0051b95c0 	bl	#-12749280 ; -> 0x4590be0
0051b95c4 	ldr	x0, [x24]
0051b95c8 	ldr	x8, [x0, #184]
0051b95cc 	ldr	x22, [x8, #8]
0051b95d0 	cbnz	x22, #92 ; -> 0x51b962c
0051b95d4 	ldr	w9, [x0, #228]
0051b95d8 	cbnz	w9, #16 ; -> 0x51b95e8
0051b95dc 	bl	#-12749308 ; -> 0x4590be0
0051b95e0 	ldr	x8, [x24]
0051b95e4 	ldr	x8, [x8, #184]
0051b95e8 	adrp	x9, #86503424 ; -> 0xa438000
0051b95ec 	ldr	x9, [x9, #3664]
0051b95f0 	ldr	x23, [x8]
0051b95f4 	ldr	x0, [x9]
0051b95f8 	bl	#-12749052 ; -> 0x4590cfc
0051b95fc 	adrp	x8, #86503424 ; -> 0xa438000
0051b9600 	mov	x22, x0
0051b9604 	ldr	x8, [x8, #3688]
0051b9608 	ldr	x2, [x8]
0051b960c 	mov	x1, x23
0051b9610 	mov	x3, xzr
0051b9614 	bl	#22560080 ; -> 0x673d364
0051b9618 	ldr	x8, [x24]
0051b961c 	ldr	x0, [x8, #184]
0051b9620 	str	x22, [x0, #8]!
0051b9624 	mov	x1, x22
0051b9628 	bl	#-12749860 ; -> 0x4590a04
0051b962c 	adrp	x8, #86503424 ; -> 0xa438000
0051b9630 	ldr	x8, [x8, #3640]
0051b9634 	ldr	x2, [x8]
0051b9638 	mov	x0, x21
0051b963c 	mov	x1, x22
0051b9640 	bl	#13874244 ; -> 0x5ef4a84
0051b9644 	adrp	x8, #86503424 ; -> 0xa438000
0051b9648 	ldr	x8, [x8, #3632]
0051b964c 	ldr	x1, [x8]
0051b9650 	bl	#13847988 ; -> 0x5eee404
0051b9654 	b	#584 ; -> 0x51b989c
0051b9658 	ldur	q0, [x19, #72]
0051b965c 	ldr	x8, [x19, #88]
0051b9660 	stp	xzr, xzr, [x19, #80]
0051b9664 	str	xzr, [x19, #72]
0051b9668 	str	q0, [sp, #96]
0051b966c 	ldr	x21, [sp, #96]
0051b9670 	str	x8, [sp, #112]
0051b9674 	mov	w8, #-1
0051b9678 	str	w8, [x19]
0051b967c 	cbz	x21, #1016 ; -> 0x51b9a74
0051b9680 	adrp	x8, #86188032 ; -> 0xa3eb000
0051b9684 	ldr	x8, [x8, #128]
0051b9688 	ldrh	w22, [sp, #112]
0051b968c 	ldr	x8, [x8]
0051b9690 	ldr	x0, [x8, #32]
0051b9694 	add	x8, x0, #309
0051b9698 	ldrh	w8, [x8]
0051b969c 	tbnz	w8, #0, #8 ; -> 0x51b96a4
0051b96a0 	bl	#-12519288 ; -> 0x45c8f28
0051b96a4 	ldr	x8, [x0, #192]
0051b96a8 	ldr	x1, [x8, #40]
0051b96ac 	add	x8, x1, #309
0051b96b0 	ldrh	w8, [x8]
0051b96b4 	tbnz	w8, #0, #16 ; -> 0x51b96c4
0051b96b8 	mov	x0, x1
0051b96bc 	bl	#-12519316 ; -> 0x45c8f28
0051b96c0 	mov	x1, x0
0051b96c4 	ldr	x8, [x21]
0051b96c8 	ldrh	w9, [x8, #302]
0051b96cc 	cbz	x9, #36 ; -> 0x51b96f0
0051b96d0 	ldr	x10, [x8, #176]
0051b96d4 	add	x10, x10, #8
0051b96d8 	ldur	x11, [x10, #-8]
0051b96dc 	cmp	x11, x1
0051b96e0 	b.eq	#32 ; -> 0x51b9700
0051b96e4 	subs	x9, x9, #1
0051b96e8 	add	x10, x10, #16
0051b96ec 	b.ne	#-20 ; -> 0x51b96d8
0051b96f0 	mov	x0, x21
0051b96f4 	mov	w2, wzr
0051b96f8 	bl	#-12518548 ; -> 0x45c9264
0051b96fc 	b	#16 ; -> 0x51b970c
0051b9700 	ldrsw	x9, [x10]
0051b9704 	add	x8, x8, x9, lsl #4
0051b9708 	add	x0, x8, #312
0051b970c 	ldp	x8, x2, [x0]
0051b9710 	mov	x0, x21
0051b9714 	mov	w1, w22
0051b9718 	blr	x8
0051b971c 	mov	x23, x0
0051b9720 	cbz	x23, #860 ; -> 0x51b9a7c
0051b9724 	cbz	x20, #1008 ; -> 0x51b9b14
0051b9728 	ldr	x0, [x20, #16]
0051b972c 	mov	x1, xzr
0051b9730 	bl	#63360156 ; -> 0x8e263cc [System.IO.Directory::Exists]
0051b9734 	tbnz	w0, #0, #16 ; -> 0x51b9744
0051b9738 	ldr	x0, [x20, #16]
0051b973c 	mov	x1, xzr
0051b9740 	bl	#63410916 ; -> 0x8e32a24 [System.IO.Directory::CreateDirectory]
0051b9744 	ldr	x0, [x19, #64]
0051b9748 	mov	x1, x23
0051b974c 	mov	x2, xzr
0051b9750 	bl	#63420216 ; -> 0x8e34e88 [System.IO.File::WriteAllBytes]
0051b9754 	mov	x0, x20
0051b9758 	mov	x1, x23
0051b975c 	mov	x2, xzr
0051b9760 	bl	#-1968608 ; -> 0x4fd8d80 [IFixRuntimePatcher::ApplyIFixPatchFromBytes]
0051b9764 	tbz	w0, #0, #1696 ; -> 0x51b9e04
0051b9768 	ldr	w20, [x19, #56]
0051b976c 	b	#1692 ; -> 0x51b9e08
0051b9770 	cbnz	w8, #12 ; -> 0x51b977c
0051b9774 	bl	#-12749716 ; -> 0x4590be0
0051b9778 	ldr	x0, [x24]
0051b977c 	ldr	x8, [x0, #184]
0051b9780 	ldr	x22, [x8, #16]
0051b9784 	cbnz	x22, #92 ; -> 0x51b97e0
0051b9788 	ldr	w9, [x0, #228]
0051b978c 	cbnz	w9, #16 ; -> 0x51b979c
0051b9790 	bl	#-12749744 ; -> 0x4590be0
0051b9794 	ldr	x8, [x24]
0051b9798 	ldr	x8, [x8, #184]
0051b979c 	adrp	x9, #86503424 ; -> 0xa438000
0051b97a0 	ldr	x9, [x9, #3656]
0051b97a4 	ldr	x23, [x8]
0051b97a8 	ldr	x0, [x9]
0051b97ac 	bl	#-12749488 ; -> 0x4590cfc
0051b97b0 	adrp	x8, #86503424 ; -> 0xa438000
0051b97b4 	mov	x22, x0
0051b97b8 	ldr	x8, [x8, #3696]
0051b97bc 	ldr	x2, [x8]
0051b97c0 	mov	x1, x23
0051b97c4 	mov	x3, xzr
0051b97c8 	bl	#22556520 ; -> 0x673c730
0051b97cc 	ldr	x8, [x24]
0051b97d0 	ldr	x0, [x8, #184]
0051b97d4 	str	x22, [x0, #16]!
0051b97d8 	mov	x1, x22
0051b97dc 	bl	#-12750296 ; -> 0x4590a04
0051b97e0 	adrp	x8, #86503424 ; -> 0xa438000
0051b97e4 	ldr	x8, [x8, #3648]
0051b97e8 	ldr	x2, [x8]
0051b97ec 	mov	x0, x21
0051b97f0 	mov	x1, x22
0051b97f4 	bl	#13952964 ; -> 0x5f07fb8
0051b97f8 	mov	x21, x0
0051b97fc 	ldr	x0, [x24]
0051b9800 	ldr	w8, [x0, #228]
0051b9804 	cbnz	w8, #12 ; -> 0x51b9810
0051b9808 	bl	#-12749864 ; -> 0x4590be0
0051b980c 	ldr	x0, [x24]
0051b9810 	ldr	x8, [x0, #184]
0051b9814 	ldr	x22, [x8, #24]
0051b9818 	cbnz	x22, #92 ; -> 0x51b9874
0051b981c 	ldr	w9, [x0, #228]
0051b9820 	cbnz	w9, #16 ; -> 0x51b9830
0051b9824 	bl	#-12749892 ; -> 0x4590be0
0051b9828 	ldr	x8, [x24]
0051b982c 	ldr	x8, [x8, #184]
0051b9830 	adrp	x9, #86503424 ; -> 0xa438000
0051b9834 	ldr	x9, [x9, #3664]
0051b9838 	ldr	x23, [x8]
0051b983c 	ldr	x0, [x9]
0051b9840 	bl	#-12749636 ; -> 0x4590cfc
0051b9844 	adrp	x8, #86503424 ; -> 0xa438000
0051b9848 	mov	x22, x0
0051b984c 	ldr	x8, [x8, #3704]
0051b9850 	ldr	x2, [x8]
0051b9854 	mov	x1, x23
0051b9858 	mov	x3, xzr
0051b985c 	bl	#22559496 ; -> 0x673d364
0051b9860 	ldr	x8, [x24]
0051b9864 	ldr	x0, [x8, #184]
0051b9868 	str	x22, [x0, #24]!
0051b986c 	mov	x1, x22
0051b9870 	bl	#-12750444 ; -> 0x4590a04
0051b9874 	adrp	x8, #86503424 ; -> 0xa438000
0051b9878 	ldr	x8, [x8, #3640]
0051b987c 	ldr	x2, [x8]
0051b9880 	mov	x0, x21
0051b9884 	mov	x1, x22
0051b9888 	bl	#13873660 ; -> 0x5ef4a84
0051b988c 	adrp	x8, #86503424 ; -> 0xa438000
0051b9890 	ldr	x8, [x8, #3632]
0051b9894 	ldr	x1, [x8]
0051b9898 	bl	#13847404 ; -> 0x5eee404
0051b989c 	mov	x21, x0
0051b98a0 	cbz	x0, #20 ; -> 0x51b98b4
0051b98a4 	ldr	x0, [x21, #16]
0051b98a8 	mov	x1, xzr
0051b98ac 	bl	#61995768 ; -> 0x8cd93a4 [System.String::IsNullOrEmpty]
0051b98b0 	tbz	w0, #0, #24 ; -> 0x51b98c8
0051b98b4 	cbz	x20, #616 ; -> 0x51b9b1c
0051b98b8 	mov	x0, x20
0051b98bc 	mov	x1, xzr
0051b98c0 	bl	#-1972224 ; -> 0x4fd80c0 [IFixRuntimePatcher::DeleteIFixPatchFiles]
0051b98c4 	b	#1344 ; -> 0x51b9e04
0051b98c8 	ldr	w1, [x21, #24]
0051b98cc 	str	w1, [x19, #56]
0051b98d0 	cbz	x20, #592 ; -> 0x51b9b20
0051b98d4 	mov	x0, x20
0051b98d8 	mov	x2, xzr
0051b98dc 	bl	#-1974408 ; -> 0x4fd7854 [IFixRuntimePatcher::GetIFixPatchFileTotalPath]
0051b98e0 	mov	x1, x0
0051b98e4 	mov	x22, x19
0051b98e8 	str	x1, [x22, #64]!
0051b98ec 	mov	x0, x22
0051b98f0 	bl	#-12750572 ; -> 0x4590a04
0051b98f4 	ldr	x24, [x21, #16]
0051b98f8 	ldr	x23, [x21, #32]
0051b98fc 	ldr	x0, [x22]
0051b9900 	mov	x1, xzr
0051b9904 	bl	#63382760 ; -> 0x8e2bdec [System.IO.File::Exists]
0051b9908 	tbz	w0, #0, #92 ; -> 0x51b9964
0051b990c 	ldr	x1, [x22]
0051b9910 	mov	x0, x20
0051b9914 	mov	x2, xzr
0051b9918 	bl	#-1970576 ; -> 0x4fd8788 [IFixRuntimePatcher::ApplyIFixPatchFromFile]
0051b991c 	tbnz	w0, #0, #-436 ; -> 0x51b9768
0051b9920 	adrp	x8, #86503424 ; -> 0xa438000
0051b9924 	ldr	x8, [x8, #3720]
0051b9928 	ldr	x1, [x22]
0051b992c 	ldr	x0, [x8]
0051b9930 	mov	x2, xzr
0051b9934 	bl	#61941012 ; -> 0x8ccbe48 [System.String::Concat]
0051b9938 	mov	x21, x0
0051b993c 	ldr	x0, [x25]
0051b9940 	ldr	w8, [x0, #228]
0051b9944 	cbnz	w8, #8 ; -> 0x51b994c
0051b9948 	bl	#-12750184 ; -> 0x4590be0
0051b994c 	mov	x0, x21
0051b9950 	mov	x1, xzr
0051b9954 	bl	#75518060 ; -> 0x99be9c0 [UnityEngine.Debug::LogWarning]
0051b9958 	mov	x0, x20
0051b995c 	mov	x1, xzr
0051b9960 	bl	#-1972384 ; -> 0x4fd80c0 [IFixRuntimePatcher::DeleteIFixPatchFiles]
0051b9964 	mov	x8, sp
0051b9968 	mov	x0, x20
0051b996c 	mov	x1, x24
0051b9970 	mov	w2, #10
0051b9974 	mov	x3, x23
0051b9978 	mov	x4, xzr
0051b997c 	bl	#-1972792 ; -> 0x4fd7f44 [IFixRuntimePatcher::DownloadDataWithRetry]
0051b9980 	adrp	x8, #86188032 ; -> 0xa3eb000
0051b9984 	ldr	x8, [x8, #144]
0051b9988 	ldr	q0, [sp]
0051b998c 	ldr	x9, [sp, #16]
0051b9990 	stp	xzr, xzr, [sp, #8]
0051b9994 	ldr	x8, [x8]
0051b9998 	str	q0, [sp, #64]
0051b999c 	str	x9, [sp, #80]
0051b99a0 	ldr	x0, [x8, #32]
0051b99a4 	str	xzr, [sp]
0051b99a8 	ldrb	w8, [x0, #309]
0051b99ac 	tbnz	w8, #0, #8 ; -> 0x51b99b4
0051b99b0 	bl	#-12520072 ; -> 0x45c8f28
0051b99b4 	ldr	q0, [sp, #64]
0051b99b8 	ldr	x8, [sp, #80]
0051b99bc 	str	q0, [sp]
0051b99c0 	str	x8, [sp, #16]
0051b99c4 	mov	x0, sp
0051b99c8 	mov	x1, xzr
0051b99cc 	bl	#-12750792 ; -> 0x4590a04
0051b99d0 	adrp	x8, #86188032 ; -> 0xa3eb000
0051b99d4 	ldr	x8, [x8, #136]
0051b99d8 	ldr	q0, [sp]
0051b99dc 	ldr	x9, [sp, #16]
0051b99e0 	ldr	x8, [x8]
0051b99e4 	str	q0, [sp, #96]
0051b99e8 	str	x9, [sp, #112]
0051b99ec 	ldr	x0, [x8, #32]
0051b99f0 	add	x8, x0, #309
0051b99f4 	ldrh	w8, [x8]
0051b99f8 	tbnz	w8, #0, #8 ; -> 0x51b9a00
0051b99fc 	bl	#-12520148 ; -> 0x45c8f28
0051b9a00 	adrp	x21, #94457856 ; -> 0xabce000
0051b9a04 	ldrb	w8, [x21, #2732]
0051b9a08 	cbnz	w8, #24 ; -> 0x51b9a20
0051b9a0c 	adrp	x0, #86179840 ; -> 0xa3e9000
0051b9a10 	ldr	x0, [x0, #1888]
0051b9a14 	bl	#-12750772 ; -> 0x4590a60
0051b9a18 	mov	w8, #1
0051b9a1c 	strb	w8, [x21, #2732]
0051b9a20 	ldr	x21, [sp, #96]
0051b9a24 	cbz	x21, #80 ; -> 0x51b9a74
0051b9a28 	adrp	x10, #86179840 ; -> 0xa3e9000
0051b9a2c 	ldr	x8, [x21]
0051b9a30 	ldr	x10, [x10, #1888]
0051b9a34 	ldrh	w22, [sp, #112]
0051b9a38 	ldrh	w9, [x8, #302]
0051b9a3c 	ldr	x1, [x10]
0051b9a40 	cbz	x9, #36 ; -> 0x51b9a64
0051b9a44 	ldr	x10, [x8, #176]
0051b9a48 	add	x10, x10, #8
0051b9a4c 	ldur	x11, [x10, #-8]
0051b9a50 	cmp	x11, x1
0051b9a54 	b.eq	#96 ; -> 0x51b9ab4
0051b9a58 	subs	x9, x9, #1
0051b9a5c 	add	x10, x10, #16
0051b9a60 	b.ne	#-20 ; -> 0x51b9a4c
0051b9a64 	mov	x0, x21
0051b9a68 	mov	w2, wzr
0051b9a6c 	bl	#-12519432 ; -> 0x45c9264
0051b9a70 	b	#80 ; -> 0x51b9ac0
0051b9a74 	ldr	x23, [sp, #104]
0051b9a78 	cbnz	x23, #-852 ; -> 0x51b9724
0051b9a7c 	ldr	x0, [x25]
0051b9a80 	ldr	w8, [x0, #228]
0051b9a84 	cbnz	w8, #8 ; -> 0x51b9a8c
0051b9a88 	bl	#-12750504 ; -> 0x4590be0
0051b9a8c 	adrp	x8, #86503424 ; -> 0xa438000
0051b9a90 	ldr	x8, [x8, #3712]
0051b9a94 	ldr	x0, [x8]
0051b9a98 	mov	x1, xzr
0051b9a9c 	bl	#75527304 ; -> 0x99c0f24 [UnityEngine.Debug::LogError]
0051b9aa0 	cbz	x20, #120 ; -> 0x51b9b18
0051b9aa4 	mov	x0, x20
0051b9aa8 	mov	x1, xzr
0051b9aac 	bl	#-1972716 ; -> 0x4fd80c0 [IFixRuntimePatcher::DeleteIFixPatchFiles]
0051b9ab0 	b	#852 ; -> 0x51b9e04
0051b9ab4 	ldrsw	x9, [x10]
0051b9ab8 	add	x8, x8, x9, lsl #4
0051b9abc 	add	x0, x8, #312
0051b9ac0 	ldp	x8, x2, [x0]
0051b9ac4 	mov	x0, x21
0051b9ac8 	mov	w1, w22
0051b9acc 	blr	x8
0051b9ad0 	cbnz	w0, #-1108 ; -> 0x51b967c
0051b9ad4 	ldr	q0, [sp, #96]
0051b9ad8 	ldr	x8, [sp, #112]
0051b9adc 	str	wzr, [x19]
0051b9ae0 	stur	q0, [x19, #72]
0051b9ae4 	str	x8, [x19, #88]
0051b9ae8 	add	x0, x19, #72
0051b9aec 	mov	x1, xzr
0051b9af0 	bl	#-12751084 ; -> 0x4590a04
0051b9af4 	adrp	x8, #86503424 ; -> 0xa438000
0051b9af8 	ldr	x8, [x8, #3616]
0051b9afc 	ldr	x3, [x8]
0051b9b00 	add	x0, x19, #8
0051b9b04 	add	x1, sp, #96
0051b9b08 	mov	x2, x19
0051b9b0c 	bl	#99216 ; -> 0x51d1e9c
0051b9b10 	b	#956 ; -> 0x51b9ecc
0051b9b14 	bl	#-12750344 ; -> 0x4590d0c
0051b9b18 	bl	#-12750348 ; -> 0x4590d0c
0051b9b1c 	bl	#-12750352 ; -> 0x4590d0c
0051b9b20 	bl	#-12750356 ; -> 0x4590d0c
0051b9b24 	b	#1192 ; -> 0x51b9fcc
0051b9b28 	b	#1188 ; -> 0x51b9fcc
0051b9b2c 	cmp	w1, #1
0051b9b30 	mov	x21, x0
0051b9b34 	b.ne	#1180 ; -> 0x51b9fd0
0051b9b38 	mov	x0, x21
0051b9b3c 	bl	#79371588 ; -> 0x9d6b880
0051b9b40 	mov	x21, x0
0051b9b44 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b9b48 	ldr	x0, [x0, #3064]
0051b9b4c 	bl	#-12751064 ; -> 0x4590a74
0051b9b50 	ldr	x8, [x21]
0051b9b54 	ldr	x1, [x8]
0051b9b58 	bl	#-12749380 ; -> 0x4591114
0051b9b5c 	tbz	w0, #0, #104 ; -> 0x51b9bc4
0051b9b60 	ldrsw	x22, [sp, #56]
0051b9b64 	ldr	x21, [x21]
0051b9b68 	add	x8, sp, #32
0051b9b6c 	str	x21, [x8, x22, lsl #3]
0051b9b70 	add	w8, w22, #1
0051b9b74 	str	w8, [sp, #56]
0051b9b78 	bl	#79371544 ; -> 0x9d6b890
0051b9b7c 	adrp	x0, #86503424 ; -> 0xa438000
0051b9b80 	ldr	x0, [x0, #3736]
0051b9b84 	bl	#-12751120 ; -> 0x4590a74
0051b9b88 	mov	x1, x21
0051b9b8c 	mov	x2, xzr
0051b9b90 	bl	#61927668 ; -> 0x8cc8c84 [System.String::Format]
0051b9b94 	mov	x21, x0
0051b9b98 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b9b9c 	ldr	x0, [x0, #1328]
0051b9ba0 	bl	#-12751148 ; -> 0x4590a74
0051b9ba4 	ldr	w8, [x0, #228]
0051b9ba8 	cbnz	w8, #8 ; -> 0x51b9bb0
0051b9bac 	bl	#-12750796 ; -> 0x4590be0
0051b9bb0 	mov	x0, x21
0051b9bb4 	mov	x1, xzr
0051b9bb8 	bl	#75527020 ; -> 0x99c0f24 [UnityEngine.Debug::LogError]
0051b9bbc 	str	w22, [sp, #56]
0051b9bc0 	b	#-604 ; -> 0x51b9964
0051b9bc4 	mov	w0, #8
0051b9bc8 	bl	#79371496 ; -> 0x9d6b8b0
0051b9bcc 	ldr	x8, [x21]
0051b9bd0 	str	x8, [x0]
0051b9bd4 	adrp	x1, #79396864 ; -> 0x9d71000
0051b9bd8 	add	x1, x1, #3672
0051b9bdc 	mov	x2, xzr
0051b9be0 	bl	#79371488 ; -> 0x9d6b8c0
0051b9be4 	b	#1176 ; -> 0x51ba07c
0051b9be8 	b	#996 ; -> 0x51b9fcc
0051b9bec 	mov	x22, x1
0051b9bf0 	mov	x21, x0
0051b9bf4 	bl	#79371420 ; -> 0x9d6b890
0051b9bf8 	b	#960 ; -> 0x51b9fb8
0051b9bfc 	b	#976 ; -> 0x51b9fcc
0051b9c00 	b	#972 ; -> 0x51b9fcc
0051b9c04 	b	#968 ; -> 0x51b9fcc
0051b9c08 	b	#964 ; -> 0x51b9fcc
0051b9c0c 	b	#960 ; -> 0x51b9fcc
0051b9c10 	b	#956 ; -> 0x51b9fcc
0051b9c14 	b	#952 ; -> 0x51b9fcc
0051b9c18 	b	#948 ; -> 0x51b9fcc
0051b9c1c 	b	#944 ; -> 0x51b9fcc
0051b9c20 	b	#940 ; -> 0x51b9fcc
0051b9c24 	b	#936 ; -> 0x51b9fcc
0051b9c28 	b	#932 ; -> 0x51b9fcc
0051b9c2c 	b	#928 ; -> 0x51b9fcc
0051b9c30 	b	#924 ; -> 0x51b9fcc
0051b9c34 	b	#920 ; -> 0x51b9fcc
0051b9c38 	b	#916 ; -> 0x51b9fcc
0051b9c3c 	b	#912 ; -> 0x51b9fcc
0051b9c40 	b	#908 ; -> 0x51b9fcc
0051b9c44 	b	#904 ; -> 0x51b9fcc
0051b9c48 	b	#900 ; -> 0x51b9fcc
0051b9c4c 	b	#896 ; -> 0x51b9fcc
0051b9c50 	b	#892 ; -> 0x51b9fcc
0051b9c54 	b	#888 ; -> 0x51b9fcc
0051b9c58 	b	#264 ; -> 0x51b9d60
0051b9c5c 	b	#32 ; -> 0x51b9c7c
0051b9c60 	b	#876 ; -> 0x51b9fcc
0051b9c64 	mov	x22, x1
0051b9c68 	mov	x21, x0
0051b9c6c 	b	#872 ; -> 0x51b9fd4
0051b9c70 	b	#12 ; -> 0x51b9c7c
0051b9c74 	b	#856 ; -> 0x51b9fcc
0051b9c78 	b	#4 ; -> 0x51b9c7c
0051b9c7c 	mov	x21, x0
0051b9c80 	mov	w22, w1
0051b9c84 	cmp	w1, #1
0051b9c88 	b.ne	#844 ; -> 0x51b9fd4
0051b9c8c 	mov	x0, x21
0051b9c90 	bl	#79371248 ; -> 0x9d6b880
0051b9c94 	mov	x21, x0
0051b9c98 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b9c9c 	ldr	x0, [x0, #3064]
0051b9ca0 	bl	#-12751404 ; -> 0x4590a74
0051b9ca4 	ldr	x8, [x21]
0051b9ca8 	ldr	x1, [x8]
0051b9cac 	bl	#-12749720 ; -> 0x4591114
0051b9cb0 	tbz	w0, #0, #108 ; -> 0x51b9d1c
0051b9cb4 	ldrsw	x22, [sp, #56]
0051b9cb8 	ldr	x21, [x21]
0051b9cbc 	add	x8, sp, #32
0051b9cc0 	str	x21, [x8, x22, lsl #3]
0051b9cc4 	add	w8, w22, #1
0051b9cc8 	str	w8, [sp, #56]
0051b9ccc 	bl	#79371204 ; -> 0x9d6b890
0051b9cd0 	adrp	x0, #86503424 ; -> 0xa438000
0051b9cd4 	ldr	x0, [x0, #3744]
0051b9cd8 	bl	#-12751460 ; -> 0x4590a74
0051b9cdc 	mov	x1, x21
0051b9ce0 	mov	x2, xzr
0051b9ce4 	bl	#61927328 ; -> 0x8cc8c84 [System.String::Format]
0051b9ce8 	mov	x21, x0
0051b9cec 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b9cf0 	ldr	x0, [x0, #1328]
0051b9cf4 	bl	#-12751488 ; -> 0x4590a74
0051b9cf8 	ldr	w8, [x0, #228]
0051b9cfc 	cbnz	w8, #8 ; -> 0x51b9d04
0051b9d00 	bl	#-12751136 ; -> 0x4590be0
0051b9d04 	mov	x0, x21
0051b9d08 	mov	x1, xzr
0051b9d0c 	bl	#75517108 ; -> 0x99be9c0 [UnityEngine.Debug::LogWarning]
0051b9d10 	str	w22, [sp, #56]
0051b9d14 	cbnz	x20, #-1472 ; -> 0x51b9754
0051b9d18 	bl	#-12750860 ; -> 0x4590d0c
0051b9d1c 	mov	w0, #8
0051b9d20 	bl	#79371152 ; -> 0x9d6b8b0
0051b9d24 	ldr	x8, [x21]
0051b9d28 	str	x8, [x0]
0051b9d2c 	adrp	x1, #79396864 ; -> 0x9d71000
0051b9d30 	add	x1, x1, #3672
0051b9d34 	mov	x2, xzr
0051b9d38 	bl	#79371144 ; -> 0x9d6b8c0
0051b9d3c 	b	#832 ; -> 0x51ba07c
0051b9d40 	b	#652 ; -> 0x51b9fcc
0051b9d44 	b	#648 ; -> 0x51b9fcc
0051b9d48 	mov	x22, x1
0051b9d4c 	mov	x21, x0
0051b9d50 	bl	#79371072 ; -> 0x9d6b890
0051b9d54 	b	#612 ; -> 0x51b9fb8
0051b9d58 	b	#628 ; -> 0x51b9fcc
0051b9d5c 	b	#624 ; -> 0x51b9fcc
0051b9d60 	mov	x21, x0
0051b9d64 	mov	w22, w1
0051b9d68 	cmp	w1, #1
0051b9d6c 	b.ne	#616 ; -> 0x51b9fd4
0051b9d70 	mov	x0, x21
0051b9d74 	bl	#79371020 ; -> 0x9d6b880
0051b9d78 	mov	x21, x0
0051b9d7c 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b9d80 	ldr	x0, [x0, #3064]
0051b9d84 	bl	#-12751632 ; -> 0x4590a74
0051b9d88 	ldr	x8, [x21]
0051b9d8c 	ldr	x1, [x8]
0051b9d90 	bl	#-12749948 ; -> 0x4591114
0051b9d94 	tbz	w0, #0, #340 ; -> 0x51b9ee8
0051b9d98 	ldrsw	x23, [sp, #56]
0051b9d9c 	ldr	x8, [x21]
0051b9da0 	add	x9, sp, #32
0051b9da4 	str	x8, [x9, x23, lsl #3]
0051b9da8 	add	w8, w23, #1
0051b9dac 	str	w8, [sp, #56]
0051b9db0 	bl	#79370976 ; -> 0x9d6b890
0051b9db4 	ldr	x21, [x19, #32]
0051b9db8 	adrp	x0, #86183936 ; -> 0xa3ea000
0051b9dbc 	ldr	x0, [x0, #1488]
0051b9dc0 	bl	#-12751692 ; -> 0x4590a74
0051b9dc4 	ldr	w8, [x0, #228]
0051b9dc8 	cbnz	w8, #8 ; -> 0x51b9dd0
0051b9dcc 	bl	#-12751340 ; -> 0x4590be0
0051b9dd0 	adrp	x0, #86503424 ; -> 0xa438000
0051b9dd4 	ldr	x0, [x0, #3752]
0051b9dd8 	bl	#-12751716 ; -> 0x4590a74
0051b9ddc 	mov	x1, x0
0051b9de0 	mov	x0, x21
0051b9de4 	bl	#14379708 ; -> 0x5f708a0
0051b9de8 	mov	x21, x0
0051b9dec 	str	w23, [sp, #56]
0051b9df0 	cbnz	x0, #-1356 ; -> 0x51b98a4
0051b9df4 	cbz	x20, #240 ; -> 0x51b9ee4
0051b9df8 	mov	x0, x20
0051b9dfc 	mov	x1, xzr
0051b9e00 	bl	#-1973568 ; -> 0x4fd80c0 [IFixRuntimePatcher::DeleteIFixPatchFiles]
0051b9e04 	mov	w20, wzr
0051b9e08 	mov	w8, #-2
0051b9e0c 	mov	x0, x19
0051b9e10 	mov	x1, xzr
0051b9e14 	str	w8, [x19]
0051b9e18 	str	xzr, [x0, #64]!
0051b9e1c 	bl	#-12751896 ; -> 0x4590a04
0051b9e20 	ldr	x21, [x19, #8]
0051b9e24 	cbz	x21, #128 ; -> 0x51b9ea4
0051b9e28 	adrp	x8, #86503424 ; -> 0xa438000
0051b9e2c 	ldr	x8, [x8, #3624]
0051b9e30 	ldr	x8, [x8]
0051b9e34 	ldr	x0, [x8, #32]
0051b9e38 	add	x8, x0, #309
0051b9e3c 	ldrh	w8, [x8]
0051b9e40 	tbnz	w8, #0, #8 ; -> 0x51b9e48
0051b9e44 	bl	#-12521244 ; -> 0x45c8f28
0051b9e48 	ldr	x8, [x0, #192]
0051b9e4c 	ldr	x1, [x8, #8]
0051b9e50 	add	x8, x1, #309
0051b9e54 	ldrh	w8, [x8]
0051b9e58 	tbnz	w8, #0, #16 ; -> 0x51b9e68
0051b9e5c 	mov	x0, x1
0051b9e60 	bl	#-12521272 ; -> 0x45c8f28
0051b9e64 	mov	x1, x0
0051b9e68 	ldr	x8, [x21]
0051b9e6c 	ldrh	w9, [x8, #302]
0051b9e70 	cbz	x9, #36 ; -> 0x51b9e94
0051b9e74 	ldr	x10, [x8, #176]
0051b9e78 	add	x10, x10, #8
0051b9e7c 	ldur	x11, [x10, #-8]
0051b9e80 	cmp	x11, x1
0051b9e84 	b.eq	#40 ; -> 0x51b9eac
0051b9e88 	subs	x9, x9, #1
0051b9e8c 	add	x10, x10, #16
0051b9e90 	b.ne	#-20 ; -> 0x51b9e7c
0051b9e94 	mov	x0, x21
0051b9e98 	mov	w2, #2
0051b9e9c 	bl	#-12520504 ; -> 0x45c9264
0051b9ea0 	b	#28 ; -> 0x51b9ebc
0051b9ea4 	str	w20, [x19, #24]
0051b9ea8 	b	#36 ; -> 0x51b9ecc
0051b9eac 	ldr	w9, [x10]
0051b9eb0 	add	w9, w9, #2
0051b9eb4 	add	x8, x8, w9, sxtw #4
0051b9eb8 	add	x0, x8, #312
0051b9ebc 	ldp	x8, x2, [x0]
0051b9ec0 	mov	x0, x21
0051b9ec4 	mov	w1, w20
0051b9ec8 	blr	x8
0051b9ecc 	ldp	x20, x19, [sp, #176]
0051b9ed0 	ldp	x22, x21, [sp, #160]
0051b9ed4 	ldp	x24, x23, [sp, #144]
0051b9ed8 	ldp	x30, x25, [sp, #128]
0051b9edc 	add	sp, sp, #192
0051b9ee0 	ret
0051b9ee4 	bl	#-12751320 ; -> 0x4590d0c
0051b9ee8 	mov	w0, #8
0051b9eec 	bl	#79370692 ; -> 0x9d6b8b0
0051b9ef0 	ldr	x8, [x21]
0051b9ef4 	str	x8, [x0]
0051b9ef8 	adrp	x1, #79396864 ; -> 0x9d71000
0051b9efc 	add	x1, x1, #3672
0051b9f00 	mov	x2, xzr
0051b9f04 	bl	#79370684 ; -> 0x9d6b8c0
0051b9f08 	b	#372 ; -> 0x51ba07c
0051b9f0c 	b	#192 ; -> 0x51b9fcc
0051b9f10 	mov	x21, x0
0051b9f14 	b	#8 ; -> 0x51b9f1c
0051b9f18 	mov	x21, x0
0051b9f1c 	cmp	w1, w22
0051b9f20 	b.ne	#176 ; -> 0x51b9fd0
0051b9f24 	mov	x0, x21
0051b9f28 	bl	#79370584 ; -> 0x9d6b880
0051b9f2c 	mov	x20, x0
0051b9f30 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b9f34 	ldr	x0, [x0, #3064]
0051b9f38 	bl	#-12752068 ; -> 0x4590a74
0051b9f3c 	ldr	x8, [x20]
0051b9f40 	ldr	x1, [x8]
0051b9f44 	bl	#-12750384 ; -> 0x4591114
0051b9f48 	tbz	w0, #0, #44 ; -> 0x51b9f74
0051b9f4c 	ldrsw	x21, [sp, #56]
0051b9f50 	ldr	x8, [x20]
0051b9f54 	add	x9, sp, #32
0051b9f58 	str	x8, [x9, x21, lsl #3]
0051b9f5c 	add	w8, w21, #1
0051b9f60 	str	w8, [sp, #56]
0051b9f64 	bl	#79370540 ; -> 0x9d6b890
0051b9f68 	mov	w20, wzr
0051b9f6c 	str	w21, [sp, #56]
0051b9f70 	b	#-360 ; -> 0x51b9e08
0051b9f74 	mov	w0, #8
0051b9f78 	bl	#79370552 ; -> 0x9d6b8b0
0051b9f7c 	ldr	x8, [x20]
0051b9f80 	str	x8, [x0]
0051b9f84 	adrp	x1, #79396864 ; -> 0x9d71000
0051b9f88 	add	x1, x1, #3672
0051b9f8c 	mov	x2, xzr
0051b9f90 	bl	#79370544 ; -> 0x9d6b8c0
0051b9f94 	b	#232 ; -> 0x51ba07c
0051b9f98 	mov	x22, x1
0051b9f9c 	mov	x21, x0
0051b9fa0 	bl	#79370480 ; -> 0x9d6b890
0051b9fa4 	b	#20 ; -> 0x51b9fb8
0051b9fa8 	b	#36 ; -> 0x51b9fcc
0051b9fac 	mov	x22, x1
0051b9fb0 	mov	x21, x0
0051b9fb4 	bl	#79370460 ; -> 0x9d6b890
0051b9fb8 	b	#28 ; -> 0x51b9fd4
0051b9fbc 	b	#16 ; -> 0x51b9fcc
0051b9fc0 	b	#12 ; -> 0x51b9fcc
0051b9fc4 	b	#8 ; -> 0x51b9fcc
0051b9fc8 	b	#4 ; -> 0x51b9fcc
0051b9fcc 	mov	x21, x0
0051b9fd0 	mov	w22, w1
0051b9fd4 	cmp	w22, #1
0051b9fd8 	b.ne	#172 ; -> 0x51ba084
0051b9fdc 	mov	x0, x21
0051b9fe0 	bl	#79370400 ; -> 0x9d6b880
0051b9fe4 	mov	x20, x0
0051b9fe8 	adrp	x0, #86171648 ; -> 0xa3e7000
0051b9fec 	ldr	x0, [x0, #3064]
0051b9ff0 	bl	#-12752252 ; -> 0x4590a74
0051b9ff4 	ldr	x8, [x20]
0051b9ff8 	ldr	x1, [x8]
0051b9ffc 	bl	#-12750568 ; -> 0x4591114
0051ba000 	tbz	w0, #0, #92 ; -> 0x51ba05c
0051ba004 	ldrsw	x21, [sp, #56]
0051ba008 	ldr	x20, [x20]
0051ba00c 	add	x8, sp, #32
0051ba010 	str	x20, [x8, x21, lsl #3]
0051ba014 	add	w8, w21, #1
0051ba018 	str	w8, [sp, #56]
0051ba01c 	bl	#79370356 ; -> 0x9d6b890
0051ba020 	mov	w8, #-2
0051ba024 	mov	x0, x19
0051ba028 	mov	x1, xzr
0051ba02c 	str	w8, [x19]
0051ba030 	str	xzr, [x0, #64]!
0051ba034 	bl	#-12752432 ; -> 0x4590a04
0051ba038 	adrp	x0, #86499328 ; -> 0xa438000
0051ba03c 	ldr	x0, [x0, #3760]
0051ba040 	bl	#-12752332 ; -> 0x4590a74
0051ba044 	mov	x2, x0
0051ba048 	add	x0, x19, #8
0051ba04c 	mov	x1, x20
0051ba050 	bl	#-17406988 ; -> 0x4120444
0051ba054 	str	w21, [sp, #56]
0051ba058 	b	#-396 ; -> 0x51b9ecc
0051ba05c 	mov	w0, #8
0051ba060 	bl	#79370320 ; -> 0x9d6b8b0
0051ba064 	ldr	x8, [x20]
0051ba068 	str	x8, [x0]
0051ba06c 	adrp	x1, #79392768 ; -> 0x9d71000
0051ba070 	add	x1, x1, #3672
0051ba074 	mov	x2, xzr
0051ba078 	bl	#79370312 ; -> 0x9d6b8c0
0051ba07c 	mov	x21, x0
0051ba080 	bl	#79370256 ; -> 0x9d6b890
0051ba084 	mov	x0, x21
0051ba088 	bl	#-11567212 ; -> 0x46b201c
0051ba08c 	bl	#-17422380 ; -> 0x411c860