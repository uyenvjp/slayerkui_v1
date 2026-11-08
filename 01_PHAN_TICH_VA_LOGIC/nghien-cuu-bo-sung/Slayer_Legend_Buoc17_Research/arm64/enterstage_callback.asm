
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 51cbdf8: d10143ff     	sub	sp, sp, #0x50
 51cbdfc: a9025ffe     	stp	x30, x23, [sp, #0x20]
 51cbe00: a90357f6     	stp	x22, x21, [sp, #0x30]
 51cbe04: a9044ff4     	stp	x20, x19, [sp, #0x40]
 51cbe08: f002d054     	adrp	x20, 0xabd6000
 51cbe0c: aa0003f3     	mov	x19, x0
 51cbe10: 396e4e88     	ldrb	w8, [x20, #0xb93]
 51cbe14: 370002a8     	tbnz	w8, #0x0, 0x51cbe68 <__start_il2cpp+0xb15f04>
 51cbe18: d0029360     	adrp	x0, 0xa439000
 51cbe1c: f943e400     	ldr	x0, [x0, #0x7c8]
 51cbe20: 97cf1310     	bl	0x4590a60 <.text+0x474260>
 51cbe24: d0029360     	adrp	x0, 0xa439000
 51cbe28: f943e800     	ldr	x0, [x0, #0x7d0]
 51cbe2c: 97cf130d     	bl	0x4590a60 <.text+0x474260>
 51cbe30: d00290e0     	adrp	x0, 0xa3e9000
 51cbe34: f9456400     	ldr	x0, [x0, #0xac8]
 51cbe38: 97cf130a     	bl	0x4590a60 <.text+0x474260>
 51cbe3c: d00290e0     	adrp	x0, 0xa3e9000
 51cbe40: f944e800     	ldr	x0, [x0, #0x9d0]
 51cbe44: 97cf1307     	bl	0x4590a60 <.text+0x474260>
 51cbe48: d0029360     	adrp	x0, 0xa439000
 51cbe4c: f943ec00     	ldr	x0, [x0, #0x7d8]
 51cbe50: 97cf1304     	bl	0x4590a60 <.text+0x474260>
 51cbe54: d0029360     	adrp	x0, 0xa439000
 51cbe58: f943f000     	ldr	x0, [x0, #0x7e0]
 51cbe5c: 97cf1301     	bl	0x4590a60 <.text+0x474260>
 51cbe60: 52800028     	mov	w8, #0x1                // =1
 51cbe64: 392e4e88     	strb	w8, [x20, #0xb93]
 51cbe68: b9400268     	ldr	w8, [x19]
 51cbe6c: f9401276     	ldr	x22, [x19, #0x20]
 51cbe70: f9000fff     	str	xzr, [sp, #0x18]
 51cbe74: b90013ff     	str	wzr, [sp, #0x10]
 51cbe78: 34000668     	cbz	w8, 0x51cbf44 <__start_il2cpp+0xb15fe0>
 51cbe7c: d00290f7     	adrp	x23, 0xa3e9000
 51cbe80: f944eaf7     	ldr	x23, [x23, #0x9d0]
 51cbe84: f94002e0     	ldr	x0, [x23]
 51cbe88: 9486f3f2     	bl	0x7388e50 <__start_il2cpp+0x2cd2eec>
 51cbe8c: b4000fe0     	cbz	x0, 0x51cc088 <__start_il2cpp+0xb16124>
 51cbe90: aa1f03e1     	mov	x1, xzr
 51cbe94: 94094a19     	bl	0x541e6f8 <__start_il2cpp+0xd68794>
 51cbe98: b4000fb6     	cbz	x22, 0x51cc08c <__start_il2cpp+0xb16128>
 51cbe9c: aa0003f4     	mov	x20, x0
 51cbea0: f9400ad5     	ldr	x21, [x22, #0x10]
 51cbea4: f94002e0     	ldr	x0, [x23]
 51cbea8: 9486f3ea     	bl	0x7388e50 <__start_il2cpp+0x2cd2eec>
 51cbeac: b4000f20     	cbz	x0, 0x51cc090 <__start_il2cpp+0xb1612c>
 51cbeb0: b4000f34     	cbz	x20, 0x51cc094 <__start_il2cpp+0xb16130>
 51cbeb4: f9400288     	ldr	x8, [x20]
 51cbeb8: f9402c02     	ldr	x2, [x0, #0x58]
 51cbebc: f94bf509     	ldr	x9, [x8, #0x17e8]
 51cbec0: f94bf906     	ldr	x6, [x8, #0x17f0]
 51cbec4: aa1403e0     	mov	x0, x20
 51cbec8: aa1503e1     	mov	x1, x21
 51cbecc: aa1f03e3     	mov	x3, xzr
 51cbed0: aa1f03e4     	mov	x4, xzr
 51cbed4: aa1f03e5     	mov	x5, xzr
 51cbed8: d63f0120     	blr	x9
 51cbedc: b4000de0     	cbz	x0, 0x51cc098 <__start_il2cpp+0xb16134>
 51cbee0: d0029368     	adrp	x8, 0xa439000
 51cbee4: f943e508     	ldr	x8, [x8, #0x7c8]
 51cbee8: f9400101     	ldr	x1, [x8]
 51cbeec: 949af8c7     	bl	0x788a208 <__start_il2cpp+0x31d42a4>
 51cbef0: d0029368     	adrp	x8, 0xa439000
 51cbef4: f943f108     	ldr	x8, [x8, #0x7e0]
 51cbef8: f9000fe0     	str	x0, [sp, #0x18]
 51cbefc: f9400101     	ldr	x1, [x8]
 51cbf00: 910063e0     	add	x0, sp, #0x18
 51cbf04: 948b4b4c     	bl	0x749ec34 <__start_il2cpp+0x2de8cd0>
 51cbf08: 37000280     	tbnz	w0, #0x0, 0x51cbf58 <__start_il2cpp+0xb15ff4>
 51cbf0c: f9400fe8     	ldr	x8, [sp, #0x18]
 51cbf10: aa1303e0     	mov	x0, x19
 51cbf14: b900027f     	str	wzr, [x19]
 51cbf18: f8028c08     	str	x8, [x0, #0x28]!
 51cbf1c: aa1f03e1     	mov	x1, xzr
 51cbf20: 97cf12b9     	bl	0x4590a04 <.text+0x474204>
 51cbf24: d0029368     	adrp	x8, 0xa439000
 51cbf28: f943e908     	ldr	x8, [x8, #0x7d0]
 51cbf2c: f9400103     	ldr	x3, [x8]
 51cbf30: 91002260     	add	x0, x19, #0x8
 51cbf34: 910063e1     	add	x1, sp, #0x18
 51cbf38: aa1303e2     	mov	x2, x19
 51cbf3c: 94002798     	bl	0x51d5d9c <__start_il2cpp+0xb1fe38>
 51cbf40: 1400004c     	b	0x51cc070 <__start_il2cpp+0xb1610c>
 51cbf44: f9401668     	ldr	x8, [x19, #0x28]
 51cbf48: 12800009     	mov	w9, #-0x1               // =-1
 51cbf4c: f900167f     	str	xzr, [x19, #0x28]
 51cbf50: b9000269     	str	w9, [x19]
 51cbf54: f9000fe8     	str	x8, [sp, #0x18]
 51cbf58: d0029368     	adrp	x8, 0xa439000
 51cbf5c: f943ed08     	ldr	x8, [x8, #0x7d8]
 51cbf60: f9400101     	ldr	x1, [x8]
 51cbf64: 910063e0     	add	x0, sp, #0x18
 51cbf68: 948b4b43     	bl	0x749ec74 <__start_il2cpp+0x2de8d10>
 51cbf6c: aa0003f4     	mov	x20, x0
 51cbf70: b40008a0     	cbz	x0, 0x51cc084 <__start_il2cpp+0xb16120>
 51cbf74: b9401a80     	ldr	w0, [x20, #0x18]
 51cbf78: aa1f03e1     	mov	x1, xzr
 51cbf7c: 940970c2     	bl	0x5428284 <__start_il2cpp+0xd72320>
 51cbf80: 37000180     	tbnz	w0, #0x0, 0x51cbfb0 <__start_il2cpp+0xb1604c>
 51cbf84: b9401a88     	ldr	w8, [x20, #0x18]
 51cbf88: 7100411f     	cmp	w8, #0x10
 51cbf8c: 54000121     	b.ne	0x51cbfb0 <__start_il2cpp+0xb1604c>
 51cbf90: b4000876     	cbz	x22, 0x51cc09c <__start_il2cpp+0xb16138>
 51cbf94: f9400ec8     	ldr	x8, [x22, #0x18]
 51cbf98: b40000c8     	cbz	x8, 0x51cbfb0 <__start_il2cpp+0xb1604c>
 51cbf9c: f9402100     	ldr	x0, [x8, #0x40]
 51cbfa0: f9400d09     	ldr	x9, [x8, #0x18]
 51cbfa4: f9401502     	ldr	x2, [x8, #0x28]
 51cbfa8: aa1403e1     	mov	x1, x20
 51cbfac: d63f0120     	blr	x9
 51cbfb0: f9400675     	ldr	x21, [x19, #0x8]
 51cbfb4: 12800028     	mov	w8, #-0x2               // =-2
 51cbfb8: b9000268     	str	w8, [x19]
 51cbfbc: b4000415     	cbz	x21, 0x51cc03c <__start_il2cpp+0xb160d8>
 51cbfc0: d00290e8     	adrp	x8, 0xa3e9000
 51cbfc4: f9456508     	ldr	x8, [x8, #0xac8]
 51cbfc8: f9400108     	ldr	x8, [x8]
 51cbfcc: f9401100     	ldr	x0, [x8, #0x20]
 51cbfd0: 9104d408     	add	x8, x0, #0x135
 51cbfd4: 79400108     	ldrh	w8, [x8]
 51cbfd8: 37000048     	tbnz	w8, #0x0, 0x51cbfe0 <__start_il2cpp+0xb1607c>
 51cbfdc: 97cff3d3     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 51cbfe0: f9406008     	ldr	x8, [x0, #0xc0]
 51cbfe4: f9400501     	ldr	x1, [x8, #0x8]
 51cbfe8: 9104d428     	add	x8, x1, #0x135
 51cbfec: 79400108     	ldrh	w8, [x8]
 51cbff0: 37000088     	tbnz	w8, #0x0, 0x51cc000 <__start_il2cpp+0xb1609c>
 51cbff4: aa0103e0     	mov	x0, x1
 51cbff8: 97cff3cc     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 51cbffc: aa0003e1     	mov	x1, x0
 51cc000: f94002a8     	ldr	x8, [x21]
 51cc004: 79425d09     	ldrh	w9, [x8, #0x12e]
 51cc008: b4000129     	cbz	x9, 0x51cc02c <__start_il2cpp+0xb160c8>
 51cc00c: f940590a     	ldr	x10, [x8, #0xb0]
 51cc010: 9100214a     	add	x10, x10, #0x8
 51cc014: f85f814b     	ldur	x11, [x10, #-0x8]
 51cc018: eb01017f     	cmp	x11, x1
 51cc01c: 540001a0     	b.eq	0x51cc050 <__start_il2cpp+0xb160ec>
 51cc020: f1000529     	subs	x9, x9, #0x1
 51cc024: 9100414a     	add	x10, x10, #0x10
 51cc028: 54ffff61     	b.ne	0x51cc014 <__start_il2cpp+0xb160b0>
 51cc02c: aa1503e0     	mov	x0, x21
 51cc030: 52800042     	mov	w2, #0x2                // =2
 51cc034: 97cff48c     	bl	0x45c9264 <JNI_OnUnload+0xe2f0>
 51cc038: 1400000a     	b	0x51cc060 <__start_il2cpp+0xb160fc>
 51cc03c: f8018e74     	str	x20, [x19, #0x18]!
 51cc040: aa1303e0     	mov	x0, x19
 51cc044: aa1403e1     	mov	x1, x20
 51cc048: 97cf126f     	bl	0x4590a04 <.text+0x474204>
 51cc04c: 14000009     	b	0x51cc070 <__start_il2cpp+0xb1610c>
 51cc050: b9400149     	ldr	w9, [x10]
 51cc054: 11000929     	add	w9, w9, #0x2
 51cc058: 8b29d108     	add	x8, x8, w9, sxtw #4
 51cc05c: 9104e100     	add	x0, x8, #0x138
 51cc060: a9400808     	ldp	x8, x2, [x0]
 51cc064: aa1503e0     	mov	x0, x21
 51cc068: aa1403e1     	mov	x1, x20
 51cc06c: d63f0100     	blr	x8
 51cc070: a9444ff4     	ldp	x20, x19, [sp, #0x40]
 51cc074: a94357f6     	ldp	x22, x21, [sp, #0x30]
 51cc078: a9425ffe     	ldp	x30, x23, [sp, #0x20]
 51cc07c: 910143ff     	add	sp, sp, #0x50
 51cc080: d65f03c0     	ret
 51cc084: 97cf1322     	bl	0x4590d0c <.text+0x47450c>
 51cc088: 97cf1321     	bl	0x4590d0c <.text+0x47450c>
 51cc08c: 97cf1320     	bl	0x4590d0c <.text+0x47450c>
 51cc090: 97cf131f     	bl	0x4590d0c <.text+0x47450c>
 51cc094: 97cf131e     	bl	0x4590d0c <.text+0x47450c>
 51cc098: 97cf131d     	bl	0x4590d0c <.text+0x47450c>
 51cc09c: 97cf131c     	bl	0x4590d0c <.text+0x47450c>
 51cc0a0: 1400000e     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0a4: 1400000d     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0a8: 1400000c     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0ac: 1400000b     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0b0: 1400000a     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0b4: 14000009     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0b8: 14000008     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0bc: 14000007     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0c0: 14000006     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0c4: 14000005     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0c8: 14000004     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0cc: 14000003     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0d0: 14000002     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0d4: 14000001     	b	0x51cc0d8 <__start_il2cpp+0xb16174>
 51cc0d8: aa0003f4     	mov	x20, x0
 51cc0dc: 7100043f     	cmp	w1, #0x1
 51cc0e0: 540004e1     	b.ne	0x51cc17c <__start_il2cpp+0xb16218>
 51cc0e4: aa1403e0     	mov	x0, x20
 51cc0e8: 952e7de6     	bl	0x9d6b880 <__cxa_begin_catch@plt>
 51cc0ec: aa0003f4     	mov	x20, x0
 51cc0f0: f00290c0     	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 51cc0f4: f945fc00     	ldr	x0, [x0, #0xbf8]
 51cc0f8: 97cf125f     	bl	0x4590a74 <.text+0x474274>
 51cc0fc: f9400288     	ldr	x8, [x20]
 51cc100: f9400101     	ldr	x1, [x8]
 51cc104: 97cf1404     	bl	0x4591114 <.text+0x474914>
 51cc108: 36000260     	tbz	w0, #0x0, 0x51cc154 <__start_il2cpp+0xb161f0>
 51cc10c: b98013f5     	ldrsw	x21, [sp, #0x10]
 51cc110: f9400294     	ldr	x20, [x20]
 51cc114: 910023e8     	add	x8, sp, #0x8
 51cc118: f8357914     	str	x20, [x8, x21, lsl #3]
 51cc11c: 110006a8     	add	w8, w21, #0x1
 51cc120: b90013e8     	str	w8, [sp, #0x10]
 51cc124: 952e7ddb     	bl	0x9d6b890 <__cxa_end_catch@plt>
 51cc128: 12800028     	mov	w8, #-0x2               // =-2
 51cc12c: b00290e0     	adrp	x0, 0xa3e9000
 51cc130: b8008668     	str	w8, [x19], #0x8
 51cc134: f9457000     	ldr	x0, [x0, #0xae0]
 51cc138: 97cf124f     	bl	0x4590a74 <.text+0x474274>
 51cc13c: aa0003e2     	mov	x2, x0
 51cc140: aa1303e0     	mov	x0, x19
 51cc144: aa1403e1     	mov	x1, x20
 51cc148: 97bd50bf     	bl	0x4120444 <.text+0x3c44>
 51cc14c: b90013f5     	str	w21, [sp, #0x10]
 51cc150: 17ffffc8     	b	0x51cc070 <__start_il2cpp+0xb1610c>
 51cc154: 52800100     	mov	w0, #0x8                // =8
 51cc158: 952e7dd6     	bl	0x9d6b8b0 <__cxa_allocate_exception@plt>
 51cc15c: f9400288     	ldr	x8, [x20]
 51cc160: f9000008     	str	x8, [x0]
 51cc164: b0025d21     	adrp	x1, 0x9d71000 <__system_property_get@plt+0x31c0>
 51cc168: 91396021     	add	x1, x1, #0xe58
 51cc16c: aa1f03e2     	mov	x2, xzr
 51cc170: 952e7dd4     	bl	0x9d6b8c0 <__cxa_throw@plt>
 51cc174: aa0003f4     	mov	x20, x0
 51cc178: 952e7dc6     	bl	0x9d6b890 <__cxa_end_catch@plt>
 51cc17c: aa1403e0     	mov	x0, x20
 51cc180: 97d397a7     	bl	0x46b201c <__emutls_get_address+0xfcc>
 51cc184: 97bd41b7     	bl	0x411c860 <.text+0x60>
