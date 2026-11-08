
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4814950: d10143ff     	sub	sp, sp, #0x50
 4814954: a9025ffe     	stp	x30, x23, [sp, #0x20]
 4814958: a90357f6     	stp	x22, x21, [sp, #0x30]
 481495c: a9044ff4     	stp	x20, x19, [sp, #0x40]
 4814960: f0031dd4     	adrp	x20, 0xabcf000
 4814964: aa0003f3     	mov	x19, x0
 4814968: 39509a88     	ldrb	w8, [x20, #0x426]
 481496c: 370002a8     	tbnz	w8, #0x0, 0x48149c0 <__start_il2cpp+0x15ea5c>
 4814970: b002dee0     	adrp	x0, 0xa3f1000
 4814974: f9446000     	ldr	x0, [x0, #0x8c0]
 4814978: 97f5f03a     	bl	0x4590a60 <.text+0x474260>
 481497c: b002dee0     	adrp	x0, 0xa3f1000
 4814980: f9446400     	ldr	x0, [x0, #0x8c8]
 4814984: 97f5f037     	bl	0x4590a60 <.text+0x474260>
 4814988: b002dea0     	adrp	x0, 0xa3e9000
 481498c: f9456400     	ldr	x0, [x0, #0xac8]
 4814990: 97f5f034     	bl	0x4590a60 <.text+0x474260>
 4814994: b002dea0     	adrp	x0, 0xa3e9000
 4814998: f944e800     	ldr	x0, [x0, #0x9d0]
 481499c: 97f5f031     	bl	0x4590a60 <.text+0x474260>
 48149a0: b002dee0     	adrp	x0, 0xa3f1000
 48149a4: f9446800     	ldr	x0, [x0, #0x8d0]
 48149a8: 97f5f02e     	bl	0x4590a60 <.text+0x474260>
 48149ac: b002dee0     	adrp	x0, 0xa3f1000
 48149b0: f9446c00     	ldr	x0, [x0, #0x8d8]
 48149b4: 97f5f02b     	bl	0x4590a60 <.text+0x474260>
 48149b8: 52800028     	mov	w8, #0x1                // =1
 48149bc: 39109a88     	strb	w8, [x20, #0x426]
 48149c0: b9400268     	ldr	w8, [x19]
 48149c4: f9401276     	ldr	x22, [x19, #0x20]
 48149c8: f9000fff     	str	xzr, [sp, #0x18]
 48149cc: b90013ff     	str	wzr, [sp, #0x10]
 48149d0: 34000668     	cbz	w8, 0x4814a9c <__start_il2cpp+0x15eb38>
 48149d4: b002deb7     	adrp	x23, 0xa3e9000
 48149d8: f944eaf7     	ldr	x23, [x23, #0x9d0]
 48149dc: f94002e0     	ldr	x0, [x23]
 48149e0: 94add11c     	bl	0x7388e50 <__start_il2cpp+0x2cd2eec>
 48149e4: b4001000     	cbz	x0, 0x4814be4 <__start_il2cpp+0x15ec80>
 48149e8: aa1f03e1     	mov	x1, xzr
 48149ec: 94302743     	bl	0x541e6f8 <__start_il2cpp+0xd68794>
 48149f0: b4000fd6     	cbz	x22, 0x4814be8 <__start_il2cpp+0x15ec84>
 48149f4: aa0003f4     	mov	x20, x0
 48149f8: f9400ad5     	ldr	x21, [x22, #0x10]
 48149fc: f94002e0     	ldr	x0, [x23]
 4814a00: 94add114     	bl	0x7388e50 <__start_il2cpp+0x2cd2eec>
 4814a04: b4000f40     	cbz	x0, 0x4814bec <__start_il2cpp+0x15ec88>
 4814a08: b4000f54     	cbz	x20, 0x4814bf0 <__start_il2cpp+0x15ec8c>
 4814a0c: f9400288     	ldr	x8, [x20]
 4814a10: f9402c02     	ldr	x2, [x0, #0x58]
 4814a14: f94dd509     	ldr	x9, [x8, #0x1ba8]
 4814a18: f94dd906     	ldr	x6, [x8, #0x1bb0]
 4814a1c: aa1403e0     	mov	x0, x20
 4814a20: aa1503e1     	mov	x1, x21
 4814a24: aa1f03e3     	mov	x3, xzr
 4814a28: aa1f03e4     	mov	x4, xzr
 4814a2c: aa1f03e5     	mov	x5, xzr
 4814a30: d63f0120     	blr	x9
 4814a34: b4000e00     	cbz	x0, 0x4814bf4 <__start_il2cpp+0x15ec90>
 4814a38: b002dee8     	adrp	x8, 0xa3f1000
 4814a3c: f9446108     	ldr	x8, [x8, #0x8c0]
 4814a40: f9400101     	ldr	x1, [x8]
 4814a44: 94c1d5f1     	bl	0x788a208 <__start_il2cpp+0x31d42a4>
 4814a48: b002dee8     	adrp	x8, 0xa3f1000
 4814a4c: f9446d08     	ldr	x8, [x8, #0x8d8]
 4814a50: f9000fe0     	str	x0, [sp, #0x18]
 4814a54: f9400101     	ldr	x1, [x8]
 4814a58: 910063e0     	add	x0, sp, #0x18
 4814a5c: 94b22876     	bl	0x749ec34 <__start_il2cpp+0x2de8cd0>
 4814a60: 37000280     	tbnz	w0, #0x0, 0x4814ab0 <__start_il2cpp+0x15eb4c>
 4814a64: f9400fe8     	ldr	x8, [sp, #0x18]
 4814a68: aa1303e0     	mov	x0, x19
 4814a6c: b900027f     	str	wzr, [x19]
 4814a70: f8028c08     	str	x8, [x0, #0x28]!
 4814a74: aa1f03e1     	mov	x1, xzr
 4814a78: 97f5efe3     	bl	0x4590a04 <.text+0x474204>
 4814a7c: b002dee8     	adrp	x8, 0xa3f1000
 4814a80: f9446508     	ldr	x8, [x8, #0x8c8]
 4814a84: f9400103     	ldr	x3, [x8]
 4814a88: 91002260     	add	x0, x19, #0x8
 4814a8c: 910063e1     	add	x1, sp, #0x18
 4814a90: aa1303e2     	mov	x2, x19
 4814a94: 94004815     	bl	0x4826ae8 <__start_il2cpp+0x170b84>
 4814a98: 1400004d     	b	0x4814bcc <__start_il2cpp+0x15ec68>
 4814a9c: f9401668     	ldr	x8, [x19, #0x28]
 4814aa0: 12800009     	mov	w9, #-0x1               // =-1
 4814aa4: f900167f     	str	xzr, [x19, #0x28]
 4814aa8: b9000269     	str	w9, [x19]
 4814aac: f9000fe8     	str	x8, [sp, #0x18]
 4814ab0: b002dee8     	adrp	x8, 0xa3f1000
 4814ab4: f9446908     	ldr	x8, [x8, #0x8d0]
 4814ab8: f9400101     	ldr	x1, [x8]
 4814abc: 910063e0     	add	x0, sp, #0x18
 4814ac0: 94b2286d     	bl	0x749ec74 <__start_il2cpp+0x2de8d10>
 4814ac4: aa0003f4     	mov	x20, x0
 4814ac8: b40008c0     	cbz	x0, 0x4814be0 <__start_il2cpp+0x15ec7c>
 4814acc: b9401a80     	ldr	w0, [x20, #0x18]
 4814ad0: aa1f03e1     	mov	x1, xzr
 4814ad4: 94304dec     	bl	0x5428284 <__start_il2cpp+0xd72320>
 4814ad8: 360001a0     	tbz	w0, #0x0, 0x4814b0c <__start_il2cpp+0x15eba8>
 4814adc: b40008f6     	cbz	x22, 0x4814bf8 <__start_il2cpp+0x15ec94>
 4814ae0: f9401a81     	ldr	x1, [x20, #0x30]
 4814ae4: f9400ec2     	ldr	x2, [x22, #0x18]
 4814ae8: 52800ac0     	mov	w0, #0x56               // =86
 4814aec: 97ffcf6b     	bl	0x4808898 <__start_il2cpp+0x152934>
 4814af0: f94012c8     	ldr	x8, [x22, #0x20]
 4814af4: b40000c8     	cbz	x8, 0x4814b0c <__start_il2cpp+0x15eba8>
 4814af8: f9402100     	ldr	x0, [x8, #0x40]
 4814afc: f9400d09     	ldr	x9, [x8, #0x18]
 4814b00: f9401502     	ldr	x2, [x8, #0x28]
 4814b04: aa1403e1     	mov	x1, x20
 4814b08: d63f0120     	blr	x9
 4814b0c: f9400675     	ldr	x21, [x19, #0x8]
 4814b10: 12800028     	mov	w8, #-0x2               // =-2
 4814b14: b9000268     	str	w8, [x19]
 4814b18: b4000415     	cbz	x21, 0x4814b98 <__start_il2cpp+0x15ec34>
 4814b1c: b002dea8     	adrp	x8, 0xa3e9000
 4814b20: f9456508     	ldr	x8, [x8, #0xac8]
 4814b24: f9400108     	ldr	x8, [x8]
 4814b28: f9401100     	ldr	x0, [x8, #0x20]
 4814b2c: 9104d408     	add	x8, x0, #0x135
 4814b30: 79400108     	ldrh	w8, [x8]
 4814b34: 37000048     	tbnz	w8, #0x0, 0x4814b3c <__start_il2cpp+0x15ebd8>
 4814b38: 97f6d0fc     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4814b3c: f9406008     	ldr	x8, [x0, #0xc0]
 4814b40: f9400501     	ldr	x1, [x8, #0x8]
 4814b44: 9104d428     	add	x8, x1, #0x135
 4814b48: 79400108     	ldrh	w8, [x8]
 4814b4c: 37000088     	tbnz	w8, #0x0, 0x4814b5c <__start_il2cpp+0x15ebf8>
 4814b50: aa0103e0     	mov	x0, x1
 4814b54: 97f6d0f5     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4814b58: aa0003e1     	mov	x1, x0
 4814b5c: f94002a8     	ldr	x8, [x21]
 4814b60: 79425d09     	ldrh	w9, [x8, #0x12e]
 4814b64: b4000129     	cbz	x9, 0x4814b88 <__start_il2cpp+0x15ec24>
 4814b68: f940590a     	ldr	x10, [x8, #0xb0]
 4814b6c: 9100214a     	add	x10, x10, #0x8
 4814b70: f85f814b     	ldur	x11, [x10, #-0x8]
 4814b74: eb01017f     	cmp	x11, x1
 4814b78: 540001a0     	b.eq	0x4814bac <__start_il2cpp+0x15ec48>
 4814b7c: f1000529     	subs	x9, x9, #0x1
 4814b80: 9100414a     	add	x10, x10, #0x10
 4814b84: 54ffff61     	b.ne	0x4814b70 <__start_il2cpp+0x15ec0c>
 4814b88: aa1503e0     	mov	x0, x21
 4814b8c: 52800042     	mov	w2, #0x2                // =2
 4814b90: 97f6d1b5     	bl	0x45c9264 <JNI_OnUnload+0xe2f0>
 4814b94: 1400000a     	b	0x4814bbc <__start_il2cpp+0x15ec58>
 4814b98: f8018e74     	str	x20, [x19, #0x18]!
 4814b9c: aa1303e0     	mov	x0, x19
 4814ba0: aa1403e1     	mov	x1, x20
 4814ba4: 97f5ef98     	bl	0x4590a04 <.text+0x474204>
 4814ba8: 14000009     	b	0x4814bcc <__start_il2cpp+0x15ec68>
 4814bac: b9400149     	ldr	w9, [x10]
 4814bb0: 11000929     	add	w9, w9, #0x2
 4814bb4: 8b29d108     	add	x8, x8, w9, sxtw #4
 4814bb8: 9104e100     	add	x0, x8, #0x138
 4814bbc: a9400808     	ldp	x8, x2, [x0]
 4814bc0: aa1503e0     	mov	x0, x21
 4814bc4: aa1403e1     	mov	x1, x20
 4814bc8: d63f0100     	blr	x8
 4814bcc: a9444ff4     	ldp	x20, x19, [sp, #0x40]
 4814bd0: a94357f6     	ldp	x22, x21, [sp, #0x30]
 4814bd4: a9425ffe     	ldp	x30, x23, [sp, #0x20]
 4814bd8: 910143ff     	add	sp, sp, #0x50
 4814bdc: d65f03c0     	ret
