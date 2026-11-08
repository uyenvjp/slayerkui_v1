0053a0308 	stp	x29, x30, [sp, #-64]!
0053a030c 	stp	x24, x23, [sp, #16]
0053a0310 	stp	x22, x21, [sp, #32]
0053a0314 	stp	x20, x19, [sp, #48]
0053a0318 	sub	sp, sp, #944
0053a031c 	adrp	x21, #92499968 ; -> 0xabd7000 
0053a0320 	mov	x19, x1
0053a0324 	mov	x20, x0
0053a0328 	ldrb	w8, [x21, #2050]
0053a032c 	tbnz	w8, #0, #24 ; -> 0x53a0344 
0053a0330 	adrp	x0, #84205568 ; -> 0xa3ee000 
0053a0334 	ldr	x0, [x0, #4008]
0053a0338 	bl	#-14743768 ; -> 0x4590a60 
0053a033c 	mov	w8, #1
0053a0340 	strb	w8, [x21, #2050]
0053a0344 	movi	v0.2d, #0000000000000000
0053a0348 	add	x0, sp, #896
0053a034c 	mov	w1, #10
0053a0350 	mov	w2, wzr
0053a0354 	mov	x3, xzr
0053a0358 	str	xzr, [sp, #928]
0053a035c 	stp	q0, q0, [sp, #896]
0053a0360 	bl	#-8713356 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0364 	ldp	q0, q1, [sp, #896]
0053a0368 	add	x0, x20, #96
0053a036c 	ldr	x8, [sp, #928]
0053a0370 	mov	x1, xzr
0053a0374 	stur	q0, [x20, #88]
0053a0378 	stur	q1, [x20, #104]
0053a037c 	str	x8, [x20, #120]
0053a0380 	bl	#-14743932 ; -> 0x4590a04 
0053a0384 	movi	v0.2d, #0000000000000000
0053a0388 	add	x0, sp, #848
0053a038c 	mov	w1, #11
0053a0390 	mov	w2, wzr
0053a0394 	mov	x3, xzr
0053a0398 	str	xzr, [sp, #880]
0053a039c 	stp	q0, q0, [sp, #848]
0053a03a0 	bl	#-8713420 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a03a4 	ldp	q0, q1, [sp, #848]
0053a03a8 	add	x0, x20, #136
0053a03ac 	ldr	x8, [sp, #880]
0053a03b0 	mov	x1, xzr
0053a03b4 	stp	q0, q1, [x20, #128]
0053a03b8 	str	x8, [x20, #160]
0053a03bc 	bl	#-14743992 ; -> 0x4590a04 
0053a03c0 	movi	v0.2d, #0000000000000000
0053a03c4 	add	x0, sp, #800
0053a03c8 	mov	w1, #12
0053a03cc 	mov	w2, wzr
0053a03d0 	mov	x3, xzr
0053a03d4 	str	xzr, [sp, #832]
0053a03d8 	stp	q0, q0, [sp, #800]
0053a03dc 	bl	#-8713480 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a03e0 	ldp	q0, q1, [sp, #800]
0053a03e4 	add	x0, x20, #176
0053a03e8 	ldr	x8, [sp, #832]
0053a03ec 	mov	x1, xzr
0053a03f0 	stur	q0, [x20, #168]
0053a03f4 	stur	q1, [x20, #184]
0053a03f8 	str	x8, [x20, #200]
0053a03fc 	bl	#-14744056 ; -> 0x4590a04 
0053a0400 	movi	v0.2d, #0000000000000000
0053a0404 	add	x0, sp, #752
0053a0408 	mov	w1, #16
0053a040c 	mov	w2, wzr
0053a0410 	mov	x3, xzr
0053a0414 	str	xzr, [sp, #784]
0053a0418 	stp	q0, q0, [sp, #752]
0053a041c 	bl	#-8713544 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0420 	ldp	q0, q1, [sp, #752]
0053a0424 	add	x0, x20, #232
0053a0428 	ldr	x8, [sp, #784]
0053a042c 	mov	x1, xzr
0053a0430 	stp	q0, q1, [x20, #224]
0053a0434 	str	x8, [x20, #256]
0053a0438 	bl	#-14744116 ; -> 0x4590a04 
0053a043c 	movi	v0.2d, #0000000000000000
0053a0440 	add	x0, sp, #672
0053a0444 	mov	w1, #7
0053a0448 	mov	w2, wzr
0053a044c 	mov	x3, xzr
0053a0450 	str	xzr, [sp, #736]
0053a0454 	stp	q0, q0, [sp, #672]
0053a0458 	stp	q0, q0, [sp, #704]
0053a045c 	bl	#-8710148 ; -> 0x4b51c58 SilentFloat::.ctor
0053a0460 	add	x0, x20, #312
0053a0464 	add	x1, sp, #672
0053a0468 	mov	w2, #72
0053a046c 	bl	#77378692 ; -> 0x9d6b8f0 
0053a0470 	add	x0, x20, #320
0053a0474 	mov	x1, xzr
0053a0478 	bl	#-14744180 ; -> 0x4590a04 
0053a047c 	movi	v0.2d, #0000000000000000
0053a0480 	add	x0, sp, #592
0053a0484 	mov	w1, #7
0053a0488 	mov	w2, wzr
0053a048c 	mov	x3, xzr
0053a0490 	str	xzr, [sp, #656]
0053a0494 	stp	q0, q0, [sp, #592]
0053a0498 	stp	q0, q0, [sp, #624]
0053a049c 	bl	#-8710212 ; -> 0x4b51c58 SilentFloat::.ctor
0053a04a0 	add	x0, x20, #384
0053a04a4 	add	x1, sp, #592
0053a04a8 	mov	w2, #72
0053a04ac 	bl	#77378628 ; -> 0x9d6b8f0 
0053a04b0 	add	x0, x20, #392
0053a04b4 	mov	x1, xzr
0053a04b8 	bl	#-14744244 ; -> 0x4590a04 
0053a04bc 	movi	v0.2d, #0000000000000000
0053a04c0 	add	x0, sp, #528
0053a04c4 	mov	w1, #15
0053a04c8 	mov	w2, wzr
0053a04cc 	mov	x3, xzr
0053a04d0 	stp	q0, q0, [sp, #528]
0053a04d4 	stp	q0, q0, [sp, #560]
0053a04d8 	bl	#-8707236 ; -> 0x4b52834 SilentLong::.ctor
0053a04dc 	ldp	q0, q1, [sp, #528]
0053a04e0 	add	x23, x20, #552
0053a04e4 	add	x0, x20, #560
0053a04e8 	mov	x1, xzr
0053a04ec 	stp	q0, q1, [x23]
0053a04f0 	ldp	q0, q2, [sp, #560]
0053a04f4 	stp	q0, q2, [x23, #32]
0053a04f8 	bl	#-14744308 ; -> 0x4590a04 
0053a04fc 	movi	v0.2d, #0000000000000000
0053a0500 	add	x0, sp, #480
0053a0504 	mov	w1, #18
0053a0508 	mov	w2, wzr
0053a050c 	mov	x3, xzr
0053a0510 	str	xzr, [sp, #512]
0053a0514 	stp	q0, q0, [sp, #480]
0053a0518 	bl	#-8713796 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a051c 	ldp	q0, q1, [sp, #480]
0053a0520 	add	x24, x20, #616
0053a0524 	ldr	x8, [sp, #512]
0053a0528 	add	x0, x20, #624
0053a052c 	mov	x1, xzr
0053a0530 	stp	q0, q1, [x24]
0053a0534 	str	x8, [x20, #648]
0053a0538 	bl	#-14744372 ; -> 0x4590a04 
0053a053c 	movi	v0.2d, #0000000000000000
0053a0540 	add	x0, sp, #432
0053a0544 	mov	w1, #19
0053a0548 	mov	w2, wzr
0053a054c 	mov	x3, xzr
0053a0550 	str	xzr, [sp, #464]
0053a0554 	stp	q0, q0, [sp, #432]
0053a0558 	bl	#-8713860 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a055c 	ldp	q0, q1, [sp, #432]
0053a0560 	add	x0, x20, #808
0053a0564 	ldr	x8, [sp, #464]
0053a0568 	mov	x1, xzr
0053a056c 	stp	q0, q1, [x20, #800]
0053a0570 	str	x8, [x20, #832]
0053a0574 	bl	#-14744432 ; -> 0x4590a04 
0053a0578 	movi	v0.2d, #0000000000000000
0053a057c 	add	x0, sp, #384
0053a0580 	mov	w1, #92
0053a0584 	mov	w2, wzr
0053a0588 	mov	x3, xzr
0053a058c 	str	xzr, [sp, #416]
0053a0590 	stp	q0, q0, [sp, #384]
0053a0594 	bl	#-8713920 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0598 	ldp	q0, q1, [sp, #384]
0053a059c 	add	x21, x20, #888
0053a05a0 	ldr	x8, [sp, #416]
0053a05a4 	add	x0, x20, #896
0053a05a8 	mov	x1, xzr
0053a05ac 	stp	q0, q1, [x21]
0053a05b0 	str	x8, [x20, #920]
0053a05b4 	bl	#-14744496 ; -> 0x4590a04 
0053a05b8 	mov	x0, x20
0053a05bc 	mov	x1, xzr
0053a05c0 	bl	#61979752 ; -> 0x8ebc228 System.Object::.ctor
0053a05c4 	cbz	x19, #676 ; -> 0x53a0868 
0053a05c8 	ldr	w8, [x19, #16]
0053a05cc 	ldr	x1, [x19, #24]
0053a05d0 	mov	x0, x20
0053a05d4 	str	w8, [x20, #32]
0053a05d8 	str	x1, [x0, #16]!
0053a05dc 	bl	#-14744536 ; -> 0x4590a04 
0053a05e0 	ldr	d0, [x19, #32]
0053a05e4 	ldr	x1, [x19, #40]
0053a05e8 	mov	x0, x20
0053a05ec 	stur	d0, [x20, #36]
0053a05f0 	str	x1, [x0, #24]!
0053a05f4 	bl	#-14744560 ; -> 0x4590a04 
0053a05f8 	ldr	x1, [x19, #64]
0053a05fc 	ldur	d0, [x19, #52]
0053a0600 	mov	x22, x20
0053a0604 	ldr	w8, [x19, #48]
0053a0608 	str	x1, [x22, #64]!
0053a060c 	mov	x0, x22
0053a0610 	stur	d0, [x22, #-16]
0053a0614 	ldr	s0, [x19, #60]
0053a0618 	stur	w8, [x22, #-20]
0053a061c 	stur	s0, [x22, #-8]
0053a0620 	bl	#-14744604 ; -> 0x4590a04 
0053a0624 	ldr	d0, [x19, #72]
0053a0628 	add	x0, x20, #88
0053a062c 	mov	x3, xzr
0053a0630 	str	d0, [x22, #8]
0053a0634 	ldr	s0, [x19, #84]
0053a0638 	ldr	w8, [x19, #80]
0053a063c 	str	s0, [x22, #20]
0053a0640 	str	w8, [x22, #16]
0053a0644 	ldp	x1, x2, [x19, #88]
0053a0648 	bl	#-8714320 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a064c 	ldp	x1, x2, [x19, #104]
0053a0650 	add	x0, x20, #128
0053a0654 	mov	x3, xzr
0053a0658 	bl	#-8714336 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a065c 	ldp	x1, x2, [x19, #120]
0053a0660 	add	x0, x20, #168
0053a0664 	mov	x3, xzr
0053a0668 	bl	#-8714352 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a066c 	ldr	d0, [x19, #136]
0053a0670 	add	x0, x20, #224
0053a0674 	mov	x3, xzr
0053a0678 	str	d0, [x22, #144]
0053a067c 	ldr	s0, [x19, #144]
0053a0680 	str	s0, [x22, #152]
0053a0684 	ldp	x1, x2, [x19, #152]
0053a0688 	bl	#-8714384 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a068c 	ldr	w0, [x19, #168]
0053a0690 	add	x8, sp, #336
0053a0694 	mov	x1, xzr
0053a0698 	bl	#-13387452 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a069c 	ldp	q0, q1, [sp, #336]
0053a06a0 	add	x0, x22, #200
0053a06a4 	ldr	q2, [sp, #368]
0053a06a8 	mov	x1, xzr
0053a06ac 	stur	q0, [x22, #200]
0053a06b0 	stur	q1, [x22, #216]
0053a06b4 	stur	q2, [x22, #232]
0053a06b8 	bl	#-14744756 ; -> 0x4590a04 
0053a06bc 	ldr	s0, [x19, #172]
0053a06c0 	add	x0, x20, #312
0053a06c4 	mov	x1, xzr
0053a06c8 	bl	#-8710928 ; -> 0x4b51bb8 SilentFloat::set_Value
0053a06cc 	ldr	s0, [x19, #176]
0053a06d0 	add	x0, x20, #384
0053a06d4 	mov	x1, xzr
0053a06d8 	bl	#-8710944 ; -> 0x4b51bb8 SilentFloat::set_Value
0053a06dc 	ldr	w0, [x19, #180]
0053a06e0 	add	x8, sp, #288
0053a06e4 	mov	x1, xzr
0053a06e8 	bl	#-13387532 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a06ec 	ldp	q0, q1, [sp, #288]
0053a06f0 	add	x0, x22, #392
0053a06f4 	ldr	q2, [sp, #320]
0053a06f8 	mov	x1, xzr
0053a06fc 	stp	q0, q1, [x0]
0053a0700 	str	q2, [x0, #32]
0053a0704 	bl	#-14744832 ; -> 0x4590a04 
0053a0708 	ldr	w0, [x19, #184]
0053a070c 	add	x8, sp, #240
0053a0710 	mov	x1, xzr
0053a0714 	bl	#-13387576 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0718 	ldp	q0, q1, [sp, #240]
0053a071c 	add	x0, x22, #440
0053a0720 	ldr	q2, [sp, #272]
0053a0724 	mov	x1, xzr
0053a0728 	stp	q0, q1, [x0]
0053a072c 	str	q2, [x0, #32]
0053a0730 	bl	#-14744876 ; -> 0x4590a04 
0053a0734 	ldrsw	x1, [x19, #188]
0053a0738 	mov	x0, x23
0053a073c 	mov	x2, xzr
0053a0740 	bl	#-8708004 ; -> 0x4b5279c SilentLong::set_Value
0053a0744 	ldp	x1, x2, [x19, #192]
0053a0748 	mov	x0, x24
0053a074c 	mov	x3, xzr
0053a0750 	bl	#-8714584 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0754 	ldr	x0, [x19, #208]
0053a0758 	add	x8, sp, #192
0053a075c 	mov	x1, xzr
0053a0760 	bl	#-13387580 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
0053a0764 	ldp	q0, q1, [sp, #192]
0053a0768 	add	x0, x22, #592
0053a076c 	ldr	q2, [sp, #224]
0053a0770 	mov	x1, xzr
0053a0774 	stp	q0, q1, [x22, #592]
0053a0778 	str	q2, [x22, #624]
0053a077c 	bl	#-14744952 ; -> 0x4590a04 
0053a0780 	ldr	x0, [x19, #216]
0053a0784 	add	x8, sp, #144
0053a0788 	mov	x1, xzr
0053a078c 	bl	#-13387624 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
0053a0790 	ldp	q0, q1, [sp, #144]
0053a0794 	add	x0, x22, #640
0053a0798 	ldr	q2, [sp, #176]
0053a079c 	mov	x1, xzr
0053a07a0 	stp	q0, q1, [x22, #640]
0053a07a4 	str	q2, [x22, #672]
0053a07a8 	bl	#-14744996 ; -> 0x4590a04 
0053a07ac 	ldr	s0, [x19, #224]
0053a07b0 	add	x8, sp, #96
0053a07b4 	mov	x0, xzr
0053a07b8 	bl	#-13387808 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
0053a07bc 	ldp	q0, q1, [sp, #96]
0053a07c0 	add	x0, x22, #688
0053a07c4 	ldr	q2, [sp, #128]
0053a07c8 	mov	x1, xzr
0053a07cc 	stp	q0, q1, [x22, #688]
0053a07d0 	str	q2, [x22, #720]
0053a07d4 	bl	#-14745040 ; -> 0x4590a04 
0053a07d8 	ldp	x1, x2, [x19, #232]
0053a07dc 	add	x0, x20, #800
0053a07e0 	mov	x3, xzr
0053a07e4 	bl	#-8714732 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a07e8 	ldr	w0, [x19, #248]
0053a07ec 	add	x8, sp, #48
0053a07f0 	mov	x1, xzr
0053a07f4 	bl	#-13387800 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a07f8 	ldp	q0, q1, [sp, #48]
0053a07fc 	add	x0, x22, #776
0053a0800 	ldr	q2, [sp, #80]
0053a0804 	mov	x1, xzr
0053a0808 	stp	q0, q1, [x0]
0053a080c 	str	q2, [x0, #32]
0053a0810 	bl	#-14745100 ; -> 0x4590a04 
0053a0814 	ldp	x1, x2, [x19, #256]
0053a0818 	mov	x0, x21
0053a081c 	mov	x3, xzr
0053a0820 	bl	#-8714792 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0824 	ldr	w0, [x19, #272]
0053a0828 	mov	x8, sp
0053a082c 	mov	x1, xzr
0053a0830 	bl	#-13387860 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0834 	ldp	q0, q1, [sp]
0053a0838 	add	x0, x22, #864
0053a083c 	ldr	q2, [sp, #32]
0053a0840 	mov	x1, xzr
0053a0844 	stp	q0, q1, [x22, #864]
0053a0848 	str	q2, [x22, #896]
0053a084c 	bl	#-14745160 ; -> 0x4590a04 
0053a0850 	add	sp, sp, #944
0053a0854 	ldp	x20, x19, [sp, #48]
0053a0858 	ldp	x22, x21, [sp, #32]
0053a085c 	ldp	x24, x23, [sp, #16]
0053a0860 	ldp	x29, x30, [sp], #64
0053a0864 	ret
0053a0868 	bl	#-14744412 ; -> 0x4590d0c 
