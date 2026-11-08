
/mnt/data/research14/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 5369550:      	stp	x30, x21, [sp, #-0x20]!
 5369554:      	stp	x20, x19, [sp, #0x10]
 5369558:      	adrp	x20, 0xabd7000
 536955c:      	mov	x19, x0
 5369560:      	ldrb	w8, [x20, #0x677]
 5369564:      	tbnz	w8, #0x0, 0x53695b8 <__start_il2cpp+0xcb3654>
 5369568:      	adrp	x0, 0xa3ee000
 536956c:      	ldr	x0, [x0, #0xe40]
 5369570:      	bl	0x4590a60 <.text+0x474260>
 5369574:      	adrp	x0, 0xa440000
 5369578:      	ldr	x0, [x0, #0x4f8]
 536957c:      	bl	0x4590a60 <.text+0x474260>
 5369580:      	adrp	x0, 0xa3ef000
 5369584:      	ldr	x0, [x0, #0x268]
 5369588:      	bl	0x4590a60 <.text+0x474260>
 536958c:      	adrp	x0, 0xa3ef000
 5369590:      	ldr	x0, [x0, #0xc20]
 5369594:      	bl	0x4590a60 <.text+0x474260>
 5369598:      	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 536959c:      	ldr	x0, [x0, #0x4a8]
 53695a0:      	bl	0x4590a60 <.text+0x474260>
 53695a4:      	adrp	x0, 0xa440000
 53695a8:      	ldr	x0, [x0, #0x500]
 53695ac:      	bl	0x4590a60 <.text+0x474260>
 53695b0:      	mov	w8, #0x1                // =1
 53695b4:      	strb	w8, [x20, #0x677]
 53695b8:      	mov	w0, #0xad66             // =44390
 53695bc:      	mov	x1, xzr
 53695c0:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 53695c4:      	tbz	w0, #0x0, 0x53695ec <__start_il2cpp+0xcb3688>
 53695c8:      	mov	w0, #0xad66             // =44390
 53695cc:      	mov	x1, xzr
 53695d0:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 53695d4:      	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 53695d8:      	mov	x1, x19
 53695dc:      	ldp	x20, x19, [sp, #0x10]
 53695e0:      	mov	x2, xzr
 53695e4:      	ldp	x30, x21, [sp], #0x20
 53695e8:      	b	0x4b7e520 <__start_il2cpp+0x4c85bc>
 53695ec:      	ldr	x0, [x19, #0x258]
 53695f0:      	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 53695f4:      	mov	w1, wzr
 53695f8:      	mov	x2, xzr
 53695fc:      	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 5369600:      	ldr	x0, [x19, #0x20]
 5369604:      	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369608:      	mov	w1, #0x4e20             // =20000
 536960c:      	mov	x2, xzr
 5369610:      	bl	0x4d475ec <__start_il2cpp+0x691688>
 5369614:      	tbz	w0, #0x0, 0x5369784 <__start_il2cpp+0xcb3820>
 5369618:      	ldr	x8, [x19, #0x20]
 536961c:      	cbz	x8, 0x5369790 <__start_il2cpp+0xcb382c>
 5369620:      	adrp	x9, 0xa3ef000
 5369624:      	mov	x0, xzr
 5369628:      	ldr	x9, [x9, #0x268]
 536962c:      	ldr	w10, [x8, #0x56c]
 5369630:      	ldr	w11, [x19, #0x278]
 5369634:      	ldr	x9, [x9]
 5369638:      	add	w10, w10, #0x1
 536963c:      	str	w11, [x8, #0x568]
 5369640:      	str	w10, [x8, #0x56c]
 5369644:      	ldr	x9, [x9, #0xb8]
 5369648:      	ldr	x20, [x9]
 536964c:      	bl	0x491567c <__start_il2cpp+0x25f718>
 5369650:      	cbz	x20, 0x5369790 <__start_il2cpp+0xcb382c>
 5369654:      	mov	x1, x0
 5369658:      	mov	x0, x20
 536965c:      	mov	x2, xzr
 5369660:      	bl	0x4cf1b20 <__start_il2cpp+0x63bbbc>
 5369664:      	mov	x0, x19
 5369668:      	bl	0x535e1ac <__start_il2cpp+0xca8248>
 536966c:      	mov	x0, x19
 5369670:      	mov	w1, wzr
 5369674:      	bl	0x535e654 <__start_il2cpp+0xca86f0>
 5369678:      	ldr	x0, [x19, #0x1f8]
 536967c:      	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369680:      	mov	w1, wzr
 5369684:      	mov	x2, xzr
 5369688:      	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 536968c:      	mov	x0, xzr
 5369690:      	bl	0x472e9c0 <__start_il2cpp+0x78a5c>
 5369694:      	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369698:      	adrp	x8, 0xa3ef000
 536969c:      	ldr	x8, [x8, #0xc20]
 53696a0:      	ldr	x1, [x8]
 53696a4:      	bl	0x5f3d7d4 <__start_il2cpp+0x1887870>
 53696a8:      	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 53696ac:      	mov	x20, x0
 53696b0:      	ldr	x8, [x8, #0x4a8]
 53696b4:      	ldr	x8, [x8]
 53696b8:      	ldr	w9, [x8, #0xe4]
 53696bc:      	cbnz	w9, 0x53696c8 <__start_il2cpp+0xcb3764>
 53696c0:      	mov	x0, x8
 53696c4:      	bl	0x4590be0 <.text+0x4743e0>
 53696c8:      	mov	x0, x20
 53696cc:      	mov	x1, xzr
 53696d0:      	mov	x2, xzr
 53696d4:      	bl	0x9a03290 <__start_il2cpp+0x534d32c>
 53696d8:      	tbz	w0, #0x0, 0x53696f4 <__start_il2cpp+0xcb3790>
 53696dc:      	mov	x0, xzr
 53696e0:      	bl	0x472e9c0 <__start_il2cpp+0x78a5c>
 53696e4:      	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 53696e8:      	mov	x1, x20
 53696ec:      	mov	x2, xzr
 53696f0:      	bl	0x472eba0 <__start_il2cpp+0x78c3c>
 53696f4:      	ldr	w20, [x19, #0x278]
 53696f8:      	mov	x0, xzr
 53696fc:      	bl	0x47a4050 <__start_il2cpp+0xee0ec>
 5369700:      	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369704:      	cmp	w20, #0x0
 5369708:      	mov	w8, #0x9                // =9
 536970c:      	mov	w2, wzr
 5369710:      	cinc	w1, w8, ne
 5369714:      	mov	x3, xzr
 5369718:      	bl	0x47aa89c <__start_il2cpp+0xf4938>
 536971c:      	adrp	x8, 0xa440000
 5369720:      	ldr	x8, [x8, #0x4f8]
 5369724:      	ldr	w20, [x19, #0x278]
 5369728:      	ldr	x0, [x8]
 536972c:      	bl	0x4590cfc <.text+0x4744fc>
 5369730:      	adrp	x8, 0xa440000
 5369734:      	mov	x1, x19
 5369738:      	mov	x3, xzr
 536973c:      	ldr	x8, [x8, #0x500]
 5369740:      	mov	x21, x0
 5369744:      	ldr	x2, [x8]
 5369748:      	bl	0x6587d3c <__start_il2cpp+0x1ed1dd8>
 536974c:      	adrp	x8, 0xa3ee000
 5369750:      	ldr	x8, [x8, #0xe40]
 5369754:      	ldr	x0, [x8]
 5369758:      	ldr	w8, [x0, #0xe4]
 536975c:      	cbnz	w8, 0x5369764 <__start_il2cpp+0xcb3800>
 5369760:      	bl	0x4590be0 <.text+0x4743e0>
 5369764:      	mov	w0, w20
 5369768:      	ldp	x20, x19, [sp, #0x10]
 536976c:      	mov	w1, wzr
 5369770:      	mov	w2, #0x4e20             // =20000
 5369774:      	mov	x3, x21
 5369778:      	mov	x4, xzr
 536977c:      	ldp	x30, x21, [sp], #0x20
 5369780:      	b	0x50c943c <__start_il2cpp+0xa134d8>
 5369784:      	ldp	x20, x19, [sp, #0x10]
 5369788:      	ldp	x30, x21, [sp], #0x20
 536978c:      	ret
 5369790:      	bl	0x4590d0c <.text+0x47450c>
