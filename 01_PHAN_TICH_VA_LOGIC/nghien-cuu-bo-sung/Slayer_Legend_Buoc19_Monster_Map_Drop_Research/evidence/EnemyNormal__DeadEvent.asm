
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 50f9388:      	sub	sp, sp, #0x80
 50f938c:      	str	x30, [sp, #0x20]
 50f9390:      	stp	x28, x27, [sp, #0x30]
 50f9394:      	stp	x26, x25, [sp, #0x40]
 50f9398:      	stp	x24, x23, [sp, #0x50]
 50f939c:      	stp	x22, x21, [sp, #0x60]
 50f93a0:      	stp	x20, x19, [sp, #0x70]
 50f93a4:      	adrp	x20, 0xabd6000
 50f93a8:      	mov	x19, x0
 50f93ac:      	ldrb	w8, [x20, #0x52c]
 50f93b0:      	tbnz	w8, #0x0, 0x50f941c <__start_il2cpp+0xa434b8>
 50f93b4:      	adrp	x0, 0xa3f0000
 50f93b8:      	ldr	x0, [x0]
 50f93bc:      	bl	0x4590a60 <.text+0x474260>
 50f93c0:      	adrp	x0, 0xa3e9000
 50f93c4:      	ldr	x0, [x0, #0x568]
 50f93c8:      	bl	0x4590a60 <.text+0x474260>
 50f93cc:      	adrp	x0, 0xa3ef000
 50f93d0:      	ldr	x0, [x0, #0xe68]
 50f93d4:      	bl	0x4590a60 <.text+0x474260>
 50f93d8:      	adrp	x0, 0xa3f2000
 50f93dc:      	ldr	x0, [x0, #0x228]
 50f93e0:      	bl	0x4590a60 <.text+0x474260>
 50f93e4:      	adrp	x0, 0xa3ee000
 50f93e8:      	ldr	x0, [x0, #0xb18]
 50f93ec:      	bl	0x4590a60 <.text+0x474260>
 50f93f0:      	adrp	x0, 0xa41f000
 50f93f4:      	ldr	x0, [x0, #0x758]
 50f93f8:      	bl	0x4590a60 <.text+0x474260>
 50f93fc:      	adrp	x0, 0xa41a000
 50f9400:      	ldr	x0, [x0, #0xf10]
 50f9404:      	bl	0x4590a60 <.text+0x474260>
 50f9408:      	adrp	x0, 0xa3f5000
 50f940c:      	ldr	x0, [x0, #0xf40]
 50f9410:      	bl	0x4590a60 <.text+0x474260>
 50f9414:      	mov	w8, #0x1                // =1
 50f9418:      	strb	w8, [x20, #0x52c]
 50f941c:      	mov	w0, #0x9706             // =38662
 50f9420:      	mov	x1, xzr
 50f9424:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 50f9428:      	tbz	w0, #0x0, 0x50f9464 <__start_il2cpp+0xa43500>
 50f942c:      	mov	w0, #0x9706             // =38662
 50f9430:      	mov	x1, xzr
 50f9434:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 50f9438:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f943c:      	mov	x1, x19
 50f9440:      	ldp	x20, x19, [sp, #0x70]
 50f9444:      	ldp	x22, x21, [sp, #0x60]
 50f9448:      	mov	x2, xzr
 50f944c:      	ldp	x24, x23, [sp, #0x50]
 50f9450:      	ldr	x30, [sp, #0x20]
 50f9454:      	ldp	x26, x25, [sp, #0x40]
 50f9458:      	ldp	x28, x27, [sp, #0x30]
 50f945c:      	add	sp, sp, #0x80
 50f9460:      	b	0x4b7e520 <__start_il2cpp+0x4c85bc>
 50f9464:      	adrp	x20, 0xa3e9000
 50f9468:      	ldr	x20, [x20, #0x568]
 50f946c:      	ldr	x0, [x20]
 50f9470:      	ldr	w8, [x0, #0xe4]
 50f9474:      	cbnz	w8, 0x50f9480 <__start_il2cpp+0xa4351c>
 50f9478:      	bl	0x4590be0 <.text+0x4743e0>
 50f947c:      	ldr	x0, [x20]
 50f9480:      	ldr	x8, [x0, #0xb8]
 50f9484:      	ldr	x8, [x8, #0xd8]
 50f9488:      	cbz	x8, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f948c:      	ldr	x9, [x8, #0x18]
 50f9490:      	ldr	x0, [x8, #0x40]
 50f9494:      	ldr	x1, [x8, #0x28]
 50f9498:      	blr	x9
 50f949c:      	adrp	x23, 0xa3f2000
 50f94a0:      	ldr	x23, [x23, #0x228]
 50f94a4:      	ldr	x0, [x23]
 50f94a8:      	ldr	w8, [x0, #0xe4]
 50f94ac:      	cbnz	w8, 0x50f94b8 <__start_il2cpp+0xa43554>
 50f94b0:      	bl	0x4590be0 <.text+0x4743e0>
 50f94b4:      	ldr	x0, [x23]
 50f94b8:      	ldr	x8, [x0, #0xb8]
 50f94bc:      	ldr	x0, [x8]
 50f94c0:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f94c4:      	mov	x1, xzr
 50f94c8:      	bl	0x4e41f54 <__start_il2cpp+0x78bff0>
 50f94cc:      	adrp	x21, 0xa3ee000
 50f94d0:      	mov	w20, w0
 50f94d4:      	add	x1, sp, #0x2c
 50f94d8:      	ldr	x21, [x21, #0xb18]
 50f94dc:      	str	wzr, [sp, #0x2c]
 50f94e0:      	ldr	x0, [x21]
 50f94e4:      	bl	0x4590be8 <.text+0x4743e8>
 50f94e8:      	ldr	x8, [x21]
 50f94ec:      	mov	x1, x0
 50f94f0:      	mov	x9, #-0x1               // =-1
 50f94f4:      	add	x0, sp, #0x8
 50f94f8:      	mov	x2, xzr
 50f94fc:      	str	w20, [sp, #0x18]
 50f9500:      	stp	x8, x9, [sp, #0x8]
 50f9504:      	bl	0x8eafa00 <__start_il2cpp+0x47f9a9c>
 50f9508:      	tbz	w0, #0x0, 0x50f9518 <__start_il2cpp+0xa435b4>
 50f950c:      	mov	x0, x19
 50f9510:      	bl	0x50f9804 <__start_il2cpp+0xa438a0>
 50f9514:      	b	0x50f9584 <__start_il2cpp+0xa43620>
 50f9518:      	ldr	x0, [x23]
 50f951c:      	ldr	w8, [x0, #0xe4]
 50f9520:      	cbnz	w8, 0x50f952c <__start_il2cpp+0xa435c8>
 50f9524:      	bl	0x4590be0 <.text+0x4743e0>
 50f9528:      	ldr	x0, [x23]
 50f952c:      	ldr	x8, [x0, #0xb8]
 50f9530:      	ldr	x0, [x8]
 50f9534:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f9538:      	mov	x1, xzr
 50f953c:      	bl	0x4e41f54 <__start_il2cpp+0x78bff0>
 50f9540:      	mov	w20, w0
 50f9544:      	ldr	x0, [x21]
 50f9548:      	mov	w8, #0x4                // =4
 50f954c:      	add	x1, sp, #0x2c
 50f9550:      	str	w8, [sp, #0x2c]
 50f9554:      	bl	0x4590be8 <.text+0x4743e8>
 50f9558:      	ldr	x8, [x21]
 50f955c:      	mov	x1, x0
 50f9560:      	mov	x9, #-0x1               // =-1
 50f9564:      	add	x0, sp, #0x8
 50f9568:      	mov	x2, xzr
 50f956c:      	str	w20, [sp, #0x18]
 50f9570:      	stp	x8, x9, [sp, #0x8]
 50f9574:      	bl	0x8eafa00 <__start_il2cpp+0x47f9a9c>
 50f9578:      	tbz	w0, #0x0, 0x50f9584 <__start_il2cpp+0xa43620>
 50f957c:      	mov	x0, x19
 50f9580:      	bl	0x50fa418 <__start_il2cpp+0xa444b4>
 50f9584:      	adrp	x21, 0xa3ef000
 50f9588:      	mov	x0, x19
 50f958c:      	mov	x1, xzr
 50f9590:      	ldr	x21, [x21, #0xe68]
 50f9594:      	ldr	x8, [x21]
 50f9598:      	ldr	x8, [x8, #0xb8]
 50f959c:      	ldr	x20, [x8]
 50f95a0:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f95a4:      	cbz	x20, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f95a8:      	fmov	s0, #1.00000000
 50f95ac:      	mov	x1, x0
 50f95b0:      	mov	x0, x20
 50f95b4:      	mov	x2, xzr
 50f95b8:      	bl	0x4d09d28 <__start_il2cpp+0x653dc4>
 50f95bc:      	ldr	x8, [x21]
 50f95c0:      	mov	x0, x19
 50f95c4:      	mov	x1, xzr
 50f95c8:      	ldr	x8, [x8, #0xb8]
 50f95cc:      	ldr	x20, [x8]
 50f95d0:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f95d4:      	cbz	x20, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f95d8:      	fmov	s0, #8.00000000
 50f95dc:      	mov	x1, x0
 50f95e0:      	mov	x0, x20
 50f95e4:      	mov	x2, xzr
 50f95e8:      	bl	0x4d0a428 <__start_il2cpp+0x6544c4>
 50f95ec:      	ldr	w8, [x19, #0x198]
 50f95f0:      	cmp	w8, #0x8
 50f95f4:      	b.ne	0x50f961c <__start_il2cpp+0xa436b8>
 50f95f8:      	adrp	x8, 0xa3f0000
 50f95fc:      	ldr	x8, [x8]
 50f9600:      	ldr	x8, [x8]
 50f9604:      	ldr	x8, [x8, #0xb8]
 50f9608:      	ldr	x0, [x8]
 50f960c:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f9610:      	mov	x1, xzr
 50f9614:      	bl	0x4ff813c <__start_il2cpp+0x9421d8>
 50f9618:      	ldr	w8, [x19, #0x198]
 50f961c:      	cmp	w8, #0x9
 50f9620:      	b.ne	0x50f976c <__start_il2cpp+0xa43808>
 50f9624:      	adrp	x8, 0xa3f5000
 50f9628:      	ldr	x8, [x8, #0xf40]
 50f962c:      	ldr	x8, [x8]
 50f9630:      	ldr	x8, [x8, #0xb8]
 50f9634:      	ldr	x0, [x8]
 50f9638:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f963c:      	mov	x1, xzr
 50f9640:      	bl	0x508086c <__start_il2cpp+0x9ca908>
 50f9644:      	adrp	x24, 0xa41f000
 50f9648:      	adrp	x20, 0xa3e8000
 50f964c:      	adrp	x25, 0xa41a000
 50f9650:      	ldr	x24, [x24, #0x758]
 50f9654:      	ldr	x20, [x20, #0x278]
 50f9658:      	ldr	x25, [x25, #0xf10]
 50f965c:      	mov	w26, #0x6               // =6
 50f9660:      	adrp	x27, 0xabcf000
 50f9664:      	mov	w28, #0x1               // =1
 50f9668:      	ldr	x8, [x24]
 50f966c:      	ldr	x8, [x8, #0xb8]
 50f9670:      	ldr	x0, [x8]
 50f9674:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f9678:      	mov	x1, xzr
 50f967c:      	bl	0x4ec9954 <__start_il2cpp+0x8139f0>
 50f9680:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f9684:      	mov	x1, xzr
 50f9688:      	mov	x21, x0
 50f968c:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9690:      	mov	x22, x0
 50f9694:      	mov	x0, x19
 50f9698:      	mov	x1, xzr
 50f969c:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f96a0:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f96a4:      	mov	x1, xzr
 50f96a8:      	bl	0x9a1312c <__start_il2cpp+0x535d1c8>
 50f96ac:      	cbz	x22, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f96b0:      	mov	x0, x22
 50f96b4:      	mov	x1, xzr
 50f96b8:      	bl	0x9a13208 <__start_il2cpp+0x535d2a4>
 50f96bc:      	mov	x0, x21
 50f96c0:      	mov	x1, xzr
 50f96c4:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f96c8:      	ldrb	w8, [x27, #0x16a]
 50f96cc:      	mov	x22, x0
 50f96d0:      	cbnz	w8, 0x50f96e0 <__start_il2cpp+0xa4377c>
 50f96d4:      	mov	x0, x20
 50f96d8:      	bl	0x4590a60 <.text+0x474260>
 50f96dc:      	strb	w28, [x27, #0x16a]
 50f96e0:      	cbz	x22, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f96e4:      	ldr	x8, [x20]
 50f96e8:      	mov	x0, x22
 50f96ec:      	mov	x1, xzr
 50f96f0:      	ldr	x8, [x8, #0xb8]
 50f96f4:      	ldp	s1, s2, [x8, #0x10]
 50f96f8:      	ldr	s0, [x8, #0xc]
 50f96fc:      	bl	0x9a13a4c <__start_il2cpp+0x535dae8>
 50f9700:      	mov	x0, x21
 50f9704:      	mov	w1, #0x1                // =1
 50f9708:      	mov	x2, xzr
 50f970c:      	bl	0x4b676bc <__start_il2cpp+0x4b1758>
 50f9710:      	mov	x0, x19
 50f9714:      	mov	x1, xzr
 50f9718:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f971c:      	ldr	x8, [x25]
 50f9720:      	mov	x22, x0
 50f9724:      	ldr	w9, [x8, #0xe4]
 50f9728:      	cbnz	w9, 0x50f9738 <__start_il2cpp+0xa437d4>
 50f972c:      	mov	x0, x8
 50f9730:      	bl	0x4590be0 <.text+0x4743e0>
 50f9734:      	ldr	x8, [x25]
 50f9738:      	ldr	x8, [x8, #0xb8]
 50f973c:      	ldr	x0, [x8]
 50f9740:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f9744:      	mov	x1, xzr
 50f9748:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f974c:      	mov	x2, x0
 50f9750:      	mov	x0, x21
 50f9754:      	mov	x1, x22
 50f9758:      	mov	x3, xzr
 50f975c:      	bl	0x4fb5068 <__start_il2cpp+0x8ff104>
 50f9760:      	subs	w26, w26, #0x1
 50f9764:      	b.ne	0x50f9668 <__start_il2cpp+0xa43704>
 50f9768:      	ldr	w8, [x19, #0x198]
 50f976c:      	cmp	w8, #0x7
 50f9770:      	b.ne	0x50f97b0 <__start_il2cpp+0xa4384c>
 50f9774:      	adrp	x20, 0xa41a000
 50f9778:      	ldr	x20, [x20, #0xf10]
 50f977c:      	ldr	x0, [x20]
 50f9780:      	ldr	w8, [x0, #0xe4]
 50f9784:      	cbnz	w8, 0x50f9790 <__start_il2cpp+0xa4382c>
 50f9788:      	bl	0x4590be0 <.text+0x4743e0>
 50f978c:      	ldr	x0, [x20]
 50f9790:      	ldr	x8, [x0, #0xb8]
 50f9794:      	ldr	x0, [x8]
 50f9798:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f979c:      	mov	w8, #0x42a00000         // =1117782016
 50f97a0:      	fmov	s1, #1.50000000
 50f97a4:      	mov	x1, xzr
 50f97a8:      	fmov	s0, w8
 50f97ac:      	bl	0x4eec1b8 <__start_il2cpp+0x836254>
 50f97b0:      	ldr	x0, [x23]
 50f97b4:      	ldr	w8, [x0, #0xe4]
 50f97b8:      	cbnz	w8, 0x50f97c4 <__start_il2cpp+0xa43860>
 50f97bc:      	bl	0x4590be0 <.text+0x4743e0>
 50f97c0:      	ldr	x0, [x23]
 50f97c4:      	ldr	x8, [x0, #0xb8]
 50f97c8:      	ldr	x0, [x8]
 50f97cc:      	cbz	x0, 0x50f9800 <__start_il2cpp+0xa4389c>
 50f97d0:      	mov	x1, x19
 50f97d4:      	mov	w2, #0x1                // =1
 50f97d8:      	mov	x3, xzr
 50f97dc:      	bl	0x4e466f8 <__start_il2cpp+0x790794>
 50f97e0:      	ldp	x20, x19, [sp, #0x70]
 50f97e4:      	ldr	x30, [sp, #0x20]
 50f97e8:      	ldp	x22, x21, [sp, #0x60]
 50f97ec:      	ldp	x24, x23, [sp, #0x50]
 50f97f0:      	ldp	x26, x25, [sp, #0x40]
 50f97f4:      	ldp	x28, x27, [sp, #0x30]
 50f97f8:      	add	sp, sp, #0x80
 50f97fc:      	ret
 50f9800:      	bl	0x4590d0c <.text+0x47450c>
