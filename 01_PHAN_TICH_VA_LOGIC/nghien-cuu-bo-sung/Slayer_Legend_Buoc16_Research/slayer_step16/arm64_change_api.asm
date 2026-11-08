
/mnt/data/research14/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 50c943c:      	stp	x30, x23, [sp, #-0x30]!
 50c9440:      	stp	x22, x21, [sp, #0x10]
 50c9444:      	stp	x20, x19, [sp, #0x20]
 50c9448:      	adrp	x20, 0xabd6000
 50c944c:      	mov	x23, x3
 50c9450:      	mov	w19, w2
 50c9454:      	ldrb	w8, [x20, #0x356]
 50c9458:      	mov	w21, w1
 50c945c:      	mov	w22, w0
 50c9460:      	tbnz	w8, #0x0, 0x50c94b4 <__start_il2cpp+0xa13550>
 50c9464:      	adrp	x0, 0xa3ee000
 50c9468:      	ldr	x0, [x0, #0xe40]
 50c946c:      	bl	0x4590a60 <.text+0x474260>
 50c9470:      	adrp	x0, 0xa433000
 50c9474:      	ldr	x0, [x0, #0xd80]
 50c9478:      	bl	0x4590a60 <.text+0x474260>
 50c947c:      	adrp	x0, 0xa3e9000
 50c9480:      	ldr	x0, [x0, #0x568]
 50c9484:      	bl	0x4590a60 <.text+0x474260>
 50c9488:      	adrp	x0, 0xa3f1000
 50c948c:      	ldr	x0, [x0, #0xa48]
 50c9490:      	bl	0x4590a60 <.text+0x474260>
 50c9494:      	adrp	x0, 0xa433000
 50c9498:      	ldr	x0, [x0, #0xd88]
 50c949c:      	bl	0x4590a60 <.text+0x474260>
 50c94a0:      	adrp	x0, 0xa433000
 50c94a4:      	ldr	x0, [x0, #0xd90]
 50c94a8:      	bl	0x4590a60 <.text+0x474260>
 50c94ac:      	mov	w8, #0x1                // =1
 50c94b0:      	strb	w8, [x20, #0x356]
 50c94b4:      	mov	w0, #0xe92              // =3730
 50c94b8:      	mov	x1, xzr
 50c94bc:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 50c94c0:      	tbz	w0, #0x0, 0x50c94f8 <__start_il2cpp+0xa13594>
 50c94c4:      	mov	w0, #0xe92              // =3730
 50c94c8:      	mov	x1, xzr
 50c94cc:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 50c94d0:      	cbz	x0, 0x50c961c <__start_il2cpp+0xa136b8>
 50c94d4:      	and	w2, w21, #0x1
 50c94d8:      	mov	w1, w22
 50c94dc:      	mov	w3, w19
 50c94e0:      	ldp	x20, x19, [sp, #0x20]
 50c94e4:      	mov	x4, x23
 50c94e8:      	ldp	x22, x21, [sp, #0x10]
 50c94ec:      	mov	x5, xzr
 50c94f0:      	ldp	x30, x23, [sp], #0x30
 50c94f4:      	b	0x4b9ba2c <__start_il2cpp+0x4e5ac8>
 50c94f8:      	adrp	x8, 0xa433000
 50c94fc:      	ldr	x8, [x8, #0xd90]
 50c9500:      	ldr	x0, [x8]
 50c9504:      	bl	0x4590cfc <.text+0x4744fc>
 50c9508:      	mov	x1, xzr
 50c950c:      	mov	x20, x0
 50c9510:      	bl	0x4814860 <__start_il2cpp+0x15e8fc>
 50c9514:      	cbz	x20, 0x50c961c <__start_il2cpp+0xa136b8>
 50c9518:      	mov	x0, x20
 50c951c:      	mov	x1, x23
 50c9520:      	str	x23, [x0, #0x20]!
 50c9524:      	bl	0x4590a04 <.text+0x474204>
 50c9528:      	adrp	x8, 0xa433000
 50c952c:      	ldr	x8, [x8, #0xd80]
 50c9530:      	ldr	x0, [x8]
 50c9534:      	bl	0x4590cfc <.text+0x4744fc>
 50c9538:      	mov	x1, xzr
 50c953c:      	mov	x23, x0
 50c9540:      	bl	0x896dbbc <__start_il2cpp+0x42b7c58>
 50c9544:      	cbz	x23, 0x50c961c <__start_il2cpp+0xa136b8>
 50c9548:      	and	w8, w21, #0x1
 50c954c:      	mov	x0, x20
 50c9550:      	mov	x1, x23
 50c9554:      	str	w22, [x23, #0x18]
 50c9558:      	strb	w8, [x23, #0x1c]
 50c955c:      	str	x23, [x0, #0x10]!
 50c9560:      	bl	0x4590a04 <.text+0x474204>
 50c9564:      	adrp	x21, 0xa3e9000
 50c9568:      	ldr	x21, [x21, #0x568]
 50c956c:      	ldr	x0, [x21]
 50c9570:      	ldr	w8, [x0, #0xe4]
 50c9574:      	cbnz	w8, 0x50c9580 <__start_il2cpp+0xa1361c>
 50c9578:      	bl	0x4590be0 <.text+0x4743e0>
 50c957c:      	ldr	x0, [x21]
 50c9580:      	ldr	x8, [x0, #0xb8]
 50c9584:      	ldr	x0, [x8]
 50c9588:      	cbz	x0, 0x50c961c <__start_il2cpp+0xa136b8>
 50c958c:      	sxtw	x2, w19
 50c9590:      	mov	w1, #0x1                // =1
 50c9594:      	mov	x3, xzr
 50c9598:      	bl	0x4d462a0 <__start_il2cpp+0x69033c>
 50c959c:      	mov	w0, #0x1                // =1
 50c95a0:      	mov	x1, xzr
 50c95a4:      	bl	0x4815b68 <__start_il2cpp+0x15fc04>
 50c95a8:      	mov	x1, x0
 50c95ac:      	mov	x0, x20
 50c95b0:      	str	x1, [x0, #0x18]!
 50c95b4:      	bl	0x4590a04 <.text+0x474204>
 50c95b8:      	adrp	x8, 0xa3f1000
 50c95bc:      	ldr	x8, [x8, #0xa48]
 50c95c0:      	ldr	x0, [x8]
 50c95c4:      	bl	0x4590cfc <.text+0x4744fc>
 50c95c8:      	adrp	x8, 0xa433000
 50c95cc:      	mov	x1, x20
 50c95d0:      	mov	x3, xzr
 50c95d4:      	ldr	x8, [x8, #0xd88]
 50c95d8:      	mov	x19, x0
 50c95dc:      	ldr	x2, [x8]
 50c95e0:      	bl	0x67305f4 <__start_il2cpp+0x207a690>
 50c95e4:      	adrp	x8, 0xa3ee000
 50c95e8:      	ldr	x8, [x8, #0xe40]
 50c95ec:      	ldr	x20, [x20, #0x10]
 50c95f0:      	ldr	x0, [x8]
 50c95f4:      	ldr	w8, [x0, #0xe4]
 50c95f8:      	cbnz	w8, 0x50c9600 <__start_il2cpp+0xa1369c>
 50c95fc:      	bl	0x4590be0 <.text+0x4743e0>
 50c9600:      	mov	x1, x19
 50c9604:      	mov	x2, x20
 50c9608:      	mov	w0, #0x56               // =86
 50c960c:      	ldp	x20, x19, [sp, #0x20]
 50c9610:      	ldp	x22, x21, [sp, #0x10]
 50c9614:      	ldp	x30, x23, [sp], #0x30
 50c9618:      	b	0x50c1a44 <__start_il2cpp+0xa0bae0>
 50c961c:      	bl	0x4590d0c <.text+0x47450c>
