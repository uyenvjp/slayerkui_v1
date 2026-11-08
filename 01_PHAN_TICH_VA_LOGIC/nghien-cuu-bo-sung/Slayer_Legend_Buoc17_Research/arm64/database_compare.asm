
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4d5c818: d10103ff     	sub	sp, sp, #0x40
 4d5c81c: f9000bfe     	str	x30, [sp, #0x10]
 4d5c820: a90257f6     	stp	x22, x21, [sp, #0x20]
 4d5c824: a9034ff4     	stp	x20, x19, [sp, #0x30]
 4d5c828: 9002f3d6     	adrp	x22, 0xabd4000
 4d5c82c: aa0203f5     	mov	x21, x2
 4d5c830: aa0103f4     	mov	x20, x1
 4d5c834: 396e52c8     	ldrb	w8, [x22, #0xb94]
 4d5c838: aa0003f3     	mov	x19, x0
 4d5c83c: 37000128     	tbnz	w8, #0x0, 0x4d5c860 <__start_il2cpp+0x6a68fc>
 4d5c840: b002b460     	adrp	x0, 0xa3e9000
 4d5c844: f942b400     	ldr	x0, [x0, #0x568]
 4d5c848: 97e0d086     	bl	0x4590a60 <.text+0x474260>
 4d5c84c: f002b620     	adrp	x0, 0xa423000
 4d5c850: f9401c00     	ldr	x0, [x0, #0x38]
 4d5c854: 97e0d083     	bl	0x4590a60 <.text+0x474260>
 4d5c858: 52800028     	mov	w8, #0x1                // =1
 4d5c85c: 392e52c8     	strb	w8, [x22, #0xb94]
 4d5c860: 5281b580     	mov	w0, #0xdac              // =3500
 4d5c864: aa1f03e1     	mov	x1, xzr
 4d5c868: 97fbab4f     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4d5c86c: 360001c0     	tbz	w0, #0x0, 0x4d5c8a4 <__start_il2cpp+0x6a6940>
 4d5c870: 5281b580     	mov	w0, #0xdac              // =3500
 4d5c874: aa1f03e1     	mov	x1, xzr
 4d5c878: 97fbab78     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4d5c87c: b40009c0     	cbz	x0, 0x4d5c9b4 <__start_il2cpp+0x6a6a50>
 4d5c880: aa1303e1     	mov	x1, x19
 4d5c884: aa1403e2     	mov	x2, x20
 4d5c888: aa1503e3     	mov	x3, x21
 4d5c88c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
 4d5c890: f9400bfe     	ldr	x30, [sp, #0x10]
 4d5c894: a94257f6     	ldp	x22, x21, [sp, #0x20]
 4d5c898: aa1f03e4     	mov	x4, xzr
 4d5c89c: 910103ff     	add	sp, sp, #0x40
 4d5c8a0: 17f8f940     	b	0x4b9ada0 <__start_il2cpp+0x4e4e3c>
 4d5c8a4: f002b456     	adrp	x22, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4d5c8a8: eb15029f     	cmp	x20, x21
 4d5c8ac: f94272d6     	ldr	x22, [x22, #0x4e0]
 4d5c8b0: 540003e1     	b.ne	0x4d5c92c <__start_il2cpp+0x6a69c8>
 4d5c8b4: f94036c0     	ldr	x0, [x22, #0x68]
 4d5c8b8: 910063e1     	add	x1, sp, #0x18
 4d5c8bc: f9000ff4     	str	x20, [sp, #0x18]
 4d5c8c0: 97e0d0ca     	bl	0x4590be8 <.text+0x4743e8>
 4d5c8c4: aa0003f5     	mov	x21, x0
 4d5c8c8: f94036c0     	ldr	x0, [x22, #0x68]
 4d5c8cc: 910023e1     	add	x1, sp, #0x8
 4d5c8d0: f90007f4     	str	x20, [sp, #0x8]
 4d5c8d4: 97e0d0c5     	bl	0x4590be8 <.text+0x4743e8>
 4d5c8d8: f002b628     	adrp	x8, 0xa423000
 4d5c8dc: aa0003e3     	mov	x3, x0
 4d5c8e0: aa1303e1     	mov	x1, x19
 4d5c8e4: f9401d08     	ldr	x8, [x8, #0x38]
 4d5c8e8: aa1503e2     	mov	x2, x21
 4d5c8ec: aa1f03e4     	mov	x4, xzr
 4d5c8f0: f9400108     	ldr	x8, [x8]
 4d5c8f4: aa0803e0     	mov	x0, x8
 4d5c8f8: 94fdf880     	bl	0x8cdaaf8 <__start_il2cpp+0x4624b94>
 4d5c8fc: b002b468     	adrp	x8, 0xa3e9000
 4d5c900: aa0003f3     	mov	x19, x0
 4d5c904: f942b508     	ldr	x8, [x8, #0x568]
 4d5c908: f9400108     	ldr	x8, [x8]
 4d5c90c: b940e509     	ldr	w9, [x8, #0xe4]
 4d5c910: 35000069     	cbnz	w9, 0x4d5c91c <__start_il2cpp+0x6a69b8>
 4d5c914: aa0803e0     	mov	x0, x8
 4d5c918: 97e0d0b2     	bl	0x4590be0 <.text+0x4743e0>
 4d5c91c: aa1303e0     	mov	x0, x19
 4d5c920: 97ff8c72     	bl	0x4d3fae8 <__start_il2cpp+0x689b84>
 4d5c924: 52800020     	mov	w0, #0x1                // =1
 4d5c928: 1400001e     	b	0x4d5c9a0 <__start_il2cpp+0x6a6a3c>
 4d5c92c: f94036c0     	ldr	x0, [x22, #0x68]
 4d5c930: 910063e1     	add	x1, sp, #0x18
 4d5c934: f9000ff4     	str	x20, [sp, #0x18]
 4d5c938: 97e0d0ac     	bl	0x4590be8 <.text+0x4743e8>
 4d5c93c: aa0003f4     	mov	x20, x0
 4d5c940: f94036c0     	ldr	x0, [x22, #0x68]
 4d5c944: 910023e1     	add	x1, sp, #0x8
 4d5c948: f90007f5     	str	x21, [sp, #0x8]
 4d5c94c: 97e0d0a7     	bl	0x4590be8 <.text+0x4743e8>
 4d5c950: f002b628     	adrp	x8, 0xa423000
 4d5c954: aa0003e3     	mov	x3, x0
 4d5c958: aa1303e1     	mov	x1, x19
 4d5c95c: f9401d08     	ldr	x8, [x8, #0x38]
 4d5c960: aa1403e2     	mov	x2, x20
 4d5c964: aa1f03e4     	mov	x4, xzr
 4d5c968: f9400108     	ldr	x8, [x8]
 4d5c96c: aa0803e0     	mov	x0, x8
 4d5c970: 94fdf862     	bl	0x8cdaaf8 <__start_il2cpp+0x4624b94>
 4d5c974: b002b468     	adrp	x8, 0xa3e9000
 4d5c978: aa0003f3     	mov	x19, x0
 4d5c97c: f942b508     	ldr	x8, [x8, #0x568]
 4d5c980: f9400108     	ldr	x8, [x8]
 4d5c984: b940e509     	ldr	w9, [x8, #0xe4]
 4d5c988: 35000069     	cbnz	w9, 0x4d5c994 <__start_il2cpp+0x6a6a30>
 4d5c98c: aa0803e0     	mov	x0, x8
 4d5c990: 97e0d094     	bl	0x4590be0 <.text+0x4743e0>
 4d5c994: aa1303e0     	mov	x0, x19
 4d5c998: 97fff279     	bl	0x4d5937c <__start_il2cpp+0x6a3418>
 4d5c99c: 2a1f03e0     	mov	w0, wzr
 4d5c9a0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
 4d5c9a4: f9400bfe     	ldr	x30, [sp, #0x10]
 4d5c9a8: a94257f6     	ldp	x22, x21, [sp, #0x20]
 4d5c9ac: 910103ff     	add	sp, sp, #0x40
 4d5c9b0: d65f03c0     	ret
 4d5c9b4: 97e0d0d6     	bl	0x4590d0c <.text+0x47450c>
 4d5c9b8: d10103ff     	sub	sp, sp, #0x40
 4d5c9bc: f9000bfe     	str	x30, [sp, #0x10]
 4d5c9c0: a90257f6     	stp	x22, x21, [sp, #0x20]
 4d5c9c4: a9034ff4     	stp	x20, x19, [sp, #0x30]
 4d5c9c8: 9002f3d6     	adrp	x22, 0xabd4000
 4d5c9cc: 2a0203f4     	mov	w20, w2
 4d5c9d0: 2a0103f5     	mov	w21, w1
 4d5c9d4: 396e56c8     	ldrb	w8, [x22, #0xb95]
 4d5c9d8: aa0003f3     	mov	x19, x0
 4d5c9dc: 37000128     	tbnz	w8, #0x0, 0x4d5ca00 <__start_il2cpp+0x6a6a9c>
 4d5c9e0: b002b460     	adrp	x0, 0xa3e9000
 4d5c9e4: f942b400     	ldr	x0, [x0, #0x568]
 4d5c9e8: 97e0d01e     	bl	0x4590a60 <.text+0x474260>
 4d5c9ec: f002b620     	adrp	x0, 0xa423000
 4d5c9f0: f9401c00     	ldr	x0, [x0, #0x38]
 4d5c9f4: 97e0d01b     	bl	0x4590a60 <.text+0x474260>
 4d5c9f8: 52800028     	mov	w8, #0x1                // =1
 4d5c9fc: 392e56c8     	strb	w8, [x22, #0xb95]
 4d5ca00: 5281b240     	mov	w0, #0xd92              // =3474
 4d5ca04: aa1f03e1     	mov	x1, xzr
 4d5ca08: 97fbaae7     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4d5ca0c: 360001c0     	tbz	w0, #0x0, 0x4d5ca44 <__start_il2cpp+0x6a6ae0>
 4d5ca10: 5281b240     	mov	w0, #0xd92              // =3474
 4d5ca14: aa1f03e1     	mov	x1, xzr
 4d5ca18: 97fbab10     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4d5ca1c: b4000a40     	cbz	x0, 0x4d5cb64 <__start_il2cpp+0x6a6c00>
 4d5ca20: 120002a2     	and	w2, w21, #0x1
 4d5ca24: 12000283     	and	w3, w20, #0x1
 4d5ca28: aa1303e1     	mov	x1, x19
 4d5ca2c: a9434ff4     	ldp	x20, x19, [sp, #0x30]
 4d5ca30: f9400bfe     	ldr	x30, [sp, #0x10]
 4d5ca34: a94257f6     	ldp	x22, x21, [sp, #0x20]
 4d5ca38: aa1f03e4     	mov	x4, xzr
 4d5ca3c: 910103ff     	add	sp, sp, #0x40
 4d5ca40: 17f8f845     	b	0x4b9ab54 <__start_il2cpp+0x4e4bf0>
 4d5ca44: f002b456     	adrp	x22, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4d5ca48: 12000288     	and	w8, w20, #0x1
 4d5ca4c: 120002a9     	and	w9, w21, #0x1
 4d5ca50: f94272d6     	ldr	x22, [x22, #0x4e0]
 4d5ca54: 6b08013f     	cmp	w9, w8
 4d5ca58: 120002a8     	and	w8, w21, #0x1
 4d5ca5c: 12000295     	and	w21, w20, #0x1
 4d5ca60: 540003e0     	b.eq	0x4d5cadc <__start_il2cpp+0x6a6b78>
 4d5ca64: f94016c0     	ldr	x0, [x22, #0x28]
 4d5ca68: 910073e1     	add	x1, sp, #0x1c
 4d5ca6c: 390073e8     	strb	w8, [sp, #0x1c]
 4d5ca70: 97e0d05e     	bl	0x4590be8 <.text+0x4743e8>
 4d5ca74: aa0003f4     	mov	x20, x0
 4d5ca78: f94016c0     	ldr	x0, [x22, #0x28]
 4d5ca7c: 910063e1     	add	x1, sp, #0x18
 4d5ca80: 390063f5     	strb	w21, [sp, #0x18]
 4d5ca84: 97e0d059     	bl	0x4590be8 <.text+0x4743e8>
 4d5ca88: f002b628     	adrp	x8, 0xa423000
 4d5ca8c: aa0003e3     	mov	x3, x0
 4d5ca90: aa1303e1     	mov	x1, x19
 4d5ca94: f9401d08     	ldr	x8, [x8, #0x38]
 4d5ca98: aa1403e2     	mov	x2, x20
 4d5ca9c: aa1f03e4     	mov	x4, xzr
 4d5caa0: f9400108     	ldr	x8, [x8]
 4d5caa4: aa0803e0     	mov	x0, x8
 4d5caa8: 94fdf814     	bl	0x8cdaaf8 <__start_il2cpp+0x4624b94>
 4d5caac: b002b468     	adrp	x8, 0xa3e9000
 4d5cab0: aa0003f3     	mov	x19, x0
 4d5cab4: f942b508     	ldr	x8, [x8, #0x568]
 4d5cab8: f9400108     	ldr	x8, [x8]
 4d5cabc: b940e509     	ldr	w9, [x8, #0xe4]
 4d5cac0: 35000069     	cbnz	w9, 0x4d5cacc <__start_il2cpp+0x6a6b68>
 4d5cac4: aa0803e0     	mov	x0, x8
 4d5cac8: 97e0d046     	bl	0x4590be0 <.text+0x4743e0>
 4d5cacc: aa1303e0     	mov	x0, x19
 4d5cad0: 97fff22b     	bl	0x4d5937c <__start_il2cpp+0x6a3418>
 4d5cad4: 2a1f03e0     	mov	w0, wzr
 4d5cad8: 1400001e     	b	0x4d5cb50 <__start_il2cpp+0x6a6bec>
 4d5cadc: f94016c0     	ldr	x0, [x22, #0x28]
 4d5cae0: 910033e1     	add	x1, sp, #0xc
 4d5cae4: 390033e8     	strb	w8, [sp, #0xc]
 4d5cae8: 97e0d040     	bl	0x4590be8 <.text+0x4743e8>
 4d5caec: aa0003f4     	mov	x20, x0
 4d5caf0: f94016c0     	ldr	x0, [x22, #0x28]
 4d5caf4: 910023e1     	add	x1, sp, #0x8
 4d5caf8: 390023f5     	strb	w21, [sp, #0x8]
 4d5cafc: 97e0d03b     	bl	0x4590be8 <.text+0x4743e8>
 4d5cb00: f002b628     	adrp	x8, 0xa423000
 4d5cb04: aa0003e3     	mov	x3, x0
 4d5cb08: aa1303e1     	mov	x1, x19
 4d5cb0c: f9401d08     	ldr	x8, [x8, #0x38]
 4d5cb10: aa1403e2     	mov	x2, x20
 4d5cb14: aa1f03e4     	mov	x4, xzr
 4d5cb18: f9400108     	ldr	x8, [x8]
 4d5cb1c: aa0803e0     	mov	x0, x8
 4d5cb20: 94fdf7f6     	bl	0x8cdaaf8 <__start_il2cpp+0x4624b94>
 4d5cb24: b002b468     	adrp	x8, 0xa3e9000
 4d5cb28: aa0003f3     	mov	x19, x0
 4d5cb2c: f942b508     	ldr	x8, [x8, #0x568]
 4d5cb30: f9400108     	ldr	x8, [x8]
 4d5cb34: b940e509     	ldr	w9, [x8, #0xe4]
 4d5cb38: 35000069     	cbnz	w9, 0x4d5cb44 <__start_il2cpp+0x6a6be0>
 4d5cb3c: aa0803e0     	mov	x0, x8
 4d5cb40: 97e0d028     	bl	0x4590be0 <.text+0x4743e0>
 4d5cb44: aa1303e0     	mov	x0, x19
 4d5cb48: 97ff8be8     	bl	0x4d3fae8 <__start_il2cpp+0x689b84>
 4d5cb4c: 52800020     	mov	w0, #0x1                // =1
 4d5cb50: a9434ff4     	ldp	x20, x19, [sp, #0x30]
 4d5cb54: f9400bfe     	ldr	x30, [sp, #0x10]
 4d5cb58: a94257f6     	ldp	x22, x21, [sp, #0x20]
 4d5cb5c: 910103ff     	add	sp, sp, #0x40
 4d5cb60: d65f03c0     	ret
 4d5cb64: 97e0d06a     	bl	0x4590d0c <.text+0x47450c>
