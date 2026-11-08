
/mnt/data/research14/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 522e574:      	sub	sp, sp, #0xe0
 522e578:      	stp	x30, x21, [sp, #0xc0]
 522e57c:      	stp	x20, x19, [sp, #0xd0]
 522e580:      	adrp	x21, 0xabd6000
 522e584:      	mov	x20, x1
 522e588:      	mov	x19, x0
 522e58c:      	ldrb	w8, [x21, #0xe23]
 522e590:      	tbnz	w8, #0x0, 0x522e5a8 <__start_il2cpp+0xb78644>
 522e594:      	adrp	x0, 0xa43b000
 522e598:      	ldr	x0, [x0, #0x450]
 522e59c:      	bl	0x4590a60 <.text+0x474260>
 522e5a0:      	mov	w8, #0x1                // =1
 522e5a4:      	strb	w8, [x21, #0xe23]
 522e5a8:      	mov	w0, #0x833a             // =33594
 522e5ac:      	mov	x1, xzr
 522e5b0:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 522e5b4:      	tbz	w0, #0x0, 0x522e5e4 <__start_il2cpp+0xb78680>
 522e5b8:      	mov	w0, #0x833a             // =33594
 522e5bc:      	mov	x1, xzr
 522e5c0:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 522e5c4:      	cbz	x0, 0x522e6f0 <__start_il2cpp+0xb7878c>
 522e5c8:      	mov	x1, x19
 522e5cc:      	mov	x2, x20
 522e5d0:      	mov	x3, xzr
 522e5d4:      	ldp	x20, x19, [sp, #0xd0]
 522e5d8:      	ldp	x30, x21, [sp, #0xc0]
 522e5dc:      	add	sp, sp, #0xe0
 522e5e0:      	b	0x4b7e814 <__start_il2cpp+0x4c88b0>
 522e5e4:      	cbz	x20, 0x522e6f0 <__start_il2cpp+0xb7878c>
 522e5e8:      	ldr	x8, [x20, #0xa0]
 522e5ec:      	cbz	x8, 0x522e6e0 <__start_il2cpp+0xb7877c>
 522e5f0:      	ldr	w0, [x8, #0x18]
 522e5f4:      	add	x8, sp, #0x90
 522e5f8:      	mov	x1, xzr
 522e5fc:      	bl	0x46dbfdc <__start_il2cpp+0x26078>
 522e600:      	cbz	x19, 0x522e6f0 <__start_il2cpp+0xb7878c>
 522e604:      	ldp	q0, q1, [sp, #0x90]
 522e608:      	add	x0, x19, #0x910
 522e60c:      	ldr	q2, [sp, #0xb0]
 522e610:      	mov	x1, xzr
 522e614:      	str	q0, [x19, #0x910]
 522e618:      	str	q1, [x19, #0x920]
 522e61c:      	str	q2, [x19, #0x930]
 522e620:      	bl	0x4590a04 <.text+0x474204>
 522e624:      	ldr	x8, [x20, #0xa0]
 522e628:      	cbz	x8, 0x522e6f0 <__start_il2cpp+0xb7878c>
 522e62c:      	ldr	w0, [x8, #0x1c]
 522e630:      	add	x8, sp, #0x60
 522e634:      	mov	x1, xzr
 522e638:      	bl	0x46dbfdc <__start_il2cpp+0x26078>
 522e63c:      	ldp	q0, q1, [sp, #0x60]
 522e640:      	add	x0, x19, #0xa50
 522e644:      	ldr	q2, [sp, #0x80]
 522e648:      	mov	x1, xzr
 522e64c:      	str	q0, [x19, #0xa50]
 522e650:      	str	q1, [x19, #0xa60]
 522e654:      	str	q2, [x19, #0xa70]
 522e658:      	bl	0x4590a04 <.text+0x474204>
 522e65c:      	ldr	x8, [x20, #0xa0]
 522e660:      	cbz	x8, 0x522e6f0 <__start_il2cpp+0xb7878c>
 522e664:      	ldr	w0, [x8, #0x20]
 522e668:      	add	x8, sp, #0x30
 522e66c:      	mov	x1, xzr
 522e670:      	bl	0x46dbfdc <__start_il2cpp+0x26078>
 522e674:      	ldp	q0, q1, [sp, #0x30]
 522e678:      	add	x0, x19, #0xb50
 522e67c:      	ldr	q2, [sp, #0x50]
 522e680:      	mov	x1, xzr
 522e684:      	str	q0, [x19, #0xb50]
 522e688:      	str	q1, [x19, #0xb60]
 522e68c:      	str	q2, [x19, #0xb70]
 522e690:      	bl	0x4590a04 <.text+0x474204>
 522e694:      	ldr	x8, [x20, #0xa0]
 522e698:      	cbz	x8, 0x522e6f0 <__start_il2cpp+0xb7878c>
 522e69c:      	ldp	w9, w0, [x8, #0x24]
 522e6a0:      	mov	x8, sp
 522e6a4:      	mov	x1, xzr
 522e6a8:      	str	w9, [x19, #0x568]
 522e6ac:      	bl	0x46dbfdc <__start_il2cpp+0x26078>
 522e6b0:      	ldp	q0, q1, [sp]
 522e6b4:      	add	x0, x19, #0xbc8
 522e6b8:      	ldr	q2, [sp, #0x20]
 522e6bc:      	mov	x1, xzr
 522e6c0:      	stp	q0, q1, [x0]
 522e6c4:      	str	q2, [x0, #0x20]
 522e6c8:      	bl	0x4590a04 <.text+0x474204>
 522e6cc:      	adrp	x8, 0xa43b000
 522e6d0:      	mov	x1, xzr
 522e6d4:      	ldr	x8, [x8, #0x450]
 522e6d8:      	ldr	x0, [x8]
 522e6dc:      	bl	0x5226dd0 <__start_il2cpp+0xb70e6c>
 522e6e0:      	ldp	x20, x19, [sp, #0xd0]
 522e6e4:      	ldp	x30, x21, [sp, #0xc0]
 522e6e8:      	add	sp, sp, #0xe0
 522e6ec:      	ret
 522e6f0:      	bl	0x4590d0c <.text+0x47450c>
