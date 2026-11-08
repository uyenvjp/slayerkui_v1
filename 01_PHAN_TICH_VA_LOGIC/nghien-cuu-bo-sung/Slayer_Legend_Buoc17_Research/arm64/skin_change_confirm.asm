
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 5369550: a9be57fe     	stp	x30, x21, [sp, #-0x20]!
 5369554: a9014ff4     	stp	x20, x19, [sp, #0x10]
 5369558: d002c374     	adrp	x20, 0xabd7000
 536955c: aa0003f3     	mov	x19, x0
 5369560: 3959de88     	ldrb	w8, [x20, #0x677]
 5369564: 370002a8     	tbnz	w8, #0x0, 0x53695b8 <__start_il2cpp+0xcb3654>
 5369568: b0028420     	adrp	x0, 0xa3ee000
 536956c: f9472000     	ldr	x0, [x0, #0xe40]
 5369570: 97c89d3c     	bl	0x4590a60 <.text+0x474260>
 5369574: f00286a0     	adrp	x0, 0xa440000
 5369578: f9427c00     	ldr	x0, [x0, #0x4f8]
 536957c: 97c89d39     	bl	0x4590a60 <.text+0x474260>
 5369580: d0028420     	adrp	x0, 0xa3ef000
 5369584: f9413400     	ldr	x0, [x0, #0x268]
 5369588: 97c89d36     	bl	0x4590a60 <.text+0x474260>
 536958c: d0028420     	adrp	x0, 0xa3ef000
 5369590: f9461000     	ldr	x0, [x0, #0xc20]
 5369594: 97c89d33     	bl	0x4590a60 <.text+0x474260>
 5369598: d00283e0     	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 536959c: f9425400     	ldr	x0, [x0, #0x4a8]
 53695a0: 97c89d30     	bl	0x4590a60 <.text+0x474260>
 53695a4: f00286a0     	adrp	x0, 0xa440000
 53695a8: f9428000     	ldr	x0, [x0, #0x500]
 53695ac: 97c89d2d     	bl	0x4590a60 <.text+0x474260>
 53695b0: 52800028     	mov	w8, #0x1                // =1
 53695b4: 3919de88     	strb	w8, [x20, #0x677]
 53695b8: 5295acc0     	mov	w0, #0xad66             // =44390
 53695bc: aa1f03e1     	mov	x1, xzr
 53695c0: 97e377f9     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 53695c4: 36000140     	tbz	w0, #0x0, 0x53695ec <__start_il2cpp+0xcb3688>
 53695c8: 5295acc0     	mov	w0, #0xad66             // =44390
 53695cc: aa1f03e1     	mov	x1, xzr
 53695d0: 97e37822     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 53695d4: b4000de0     	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 53695d8: aa1303e1     	mov	x1, x19
 53695dc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 53695e0: aa1f03e2     	mov	x2, xzr
 53695e4: a8c257fe     	ldp	x30, x21, [sp], #0x20
 53695e8: 17e053ce     	b	0x4b7e520 <__start_il2cpp+0x4c85bc>
 53695ec: f9412e60     	ldr	x0, [x19, #0x258]
 53695f0: b4000d00     	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 53695f4: 2a1f03e1     	mov	w1, wzr
 53695f8: aa1f03e2     	mov	x2, xzr
 53695fc: 951a6976     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 5369600: f9401260     	ldr	x0, [x19, #0x20]
 5369604: b4000c60     	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369608: 5289c401     	mov	w1, #0x4e20             // =20000
 536960c: aa1f03e2     	mov	x2, xzr
 5369610: 97e777f7     	bl	0x4d475ec <__start_il2cpp+0x691688>
 5369614: 36000b80     	tbz	w0, #0x0, 0x5369784 <__start_il2cpp+0xcb3820>
 5369618: f9401268     	ldr	x8, [x19, #0x20]
 536961c: b4000ba8     	cbz	x8, 0x5369790 <__start_il2cpp+0xcb382c>
 5369620: d0028429     	adrp	x9, 0xa3ef000
 5369624: aa1f03e0     	mov	x0, xzr
 5369628: f9413529     	ldr	x9, [x9, #0x268]
 536962c: b9456d0a     	ldr	w10, [x8, #0x56c]
 5369630: b9427a6b     	ldr	w11, [x19, #0x278]
 5369634: f9400129     	ldr	x9, [x9]
 5369638: 1100054a     	add	w10, w10, #0x1
 536963c: b905690b     	str	w11, [x8, #0x568]
 5369640: b9056d0a     	str	w10, [x8, #0x56c]
 5369644: f9405d29     	ldr	x9, [x9, #0xb8]
 5369648: f9400134     	ldr	x20, [x9]
 536964c: 97d6b00c     	bl	0x491567c <__start_il2cpp+0x25f718>
 5369650: b4000a14     	cbz	x20, 0x5369790 <__start_il2cpp+0xcb382c>
 5369654: aa0003e1     	mov	x1, x0
 5369658: aa1403e0     	mov	x0, x20
 536965c: aa1f03e2     	mov	x2, xzr
 5369660: 97e62130     	bl	0x4cf1b20 <__start_il2cpp+0x63bbbc>
 5369664: aa1303e0     	mov	x0, x19
 5369668: 97ffd2d1     	bl	0x535e1ac <__start_il2cpp+0xca8248>
 536966c: aa1303e0     	mov	x0, x19
 5369670: 2a1f03e1     	mov	w1, wzr
 5369674: 97ffd3f8     	bl	0x535e654 <__start_il2cpp+0xca86f0>
 5369678: f940fe60     	ldr	x0, [x19, #0x1f8]
 536967c: b40008a0     	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369680: 2a1f03e1     	mov	w1, wzr
 5369684: aa1f03e2     	mov	x2, xzr
 5369688: 951a6953     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 536968c: aa1f03e0     	mov	x0, xzr
 5369690: 97cf14cc     	bl	0x472e9c0 <__start_il2cpp+0x78a5c>
 5369694: b40007e0     	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369698: d0028428     	adrp	x8, 0xa3ef000
 536969c: f9461108     	ldr	x8, [x8, #0xc20]
 53696a0: f9400101     	ldr	x1, [x8]
 53696a4: 942f504c     	bl	0x5f3d7d4 <__start_il2cpp+0x1887870>
 53696a8: d00283e8     	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 53696ac: aa0003f4     	mov	x20, x0
 53696b0: f9425508     	ldr	x8, [x8, #0x4a8]
 53696b4: f9400108     	ldr	x8, [x8]
 53696b8: b940e509     	ldr	w9, [x8, #0xe4]
 53696bc: 35000069     	cbnz	w9, 0x53696c8 <__start_il2cpp+0xcb3764>
 53696c0: aa0803e0     	mov	x0, x8
 53696c4: 97c89d47     	bl	0x4590be0 <.text+0x4743e0>
 53696c8: aa1403e0     	mov	x0, x20
 53696cc: aa1f03e1     	mov	x1, xzr
 53696d0: aa1f03e2     	mov	x2, xzr
 53696d4: 951a66ef     	bl	0x9a03290 <__start_il2cpp+0x534d32c>
 53696d8: 360000e0     	tbz	w0, #0x0, 0x53696f4 <__start_il2cpp+0xcb3790>
 53696dc: aa1f03e0     	mov	x0, xzr
 53696e0: 97cf14b8     	bl	0x472e9c0 <__start_il2cpp+0x78a5c>
 53696e4: b4000560     	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 53696e8: aa1403e1     	mov	x1, x20
 53696ec: aa1f03e2     	mov	x2, xzr
 53696f0: 97cf152c     	bl	0x472eba0 <__start_il2cpp+0x78c3c>
 53696f4: b9427a74     	ldr	w20, [x19, #0x278]
 53696f8: aa1f03e0     	mov	x0, xzr
 53696fc: 97d0ea55     	bl	0x47a4050 <__start_il2cpp+0xee0ec>
 5369700: b4000480     	cbz	x0, 0x5369790 <__start_il2cpp+0xcb382c>
 5369704: 7100029f     	cmp	w20, #0x0
 5369708: 52800128     	mov	w8, #0x9                // =9
 536970c: 2a1f03e2     	mov	w2, wzr
 5369710: 1a880501     	cinc	w1, w8, ne
 5369714: aa1f03e3     	mov	x3, xzr
 5369718: 97d10461     	bl	0x47aa89c <__start_il2cpp+0xf4938>
 536971c: f00286a8     	adrp	x8, 0xa440000
 5369720: f9427d08     	ldr	x8, [x8, #0x4f8]
 5369724: b9427a74     	ldr	w20, [x19, #0x278]
 5369728: f9400100     	ldr	x0, [x8]
 536972c: 97c89d74     	bl	0x4590cfc <.text+0x4744fc>
 5369730: f00286a8     	adrp	x8, 0xa440000
 5369734: aa1303e1     	mov	x1, x19
 5369738: aa1f03e3     	mov	x3, xzr
 536973c: f9428108     	ldr	x8, [x8, #0x500]
 5369740: aa0003f5     	mov	x21, x0
 5369744: f9400102     	ldr	x2, [x8]
 5369748: 9448797d     	bl	0x6587d3c <__start_il2cpp+0x1ed1dd8>
 536974c: b0028428     	adrp	x8, 0xa3ee000
 5369750: f9472108     	ldr	x8, [x8, #0xe40]
 5369754: f9400100     	ldr	x0, [x8]
 5369758: b940e408     	ldr	w8, [x0, #0xe4]
 536975c: 35000048     	cbnz	w8, 0x5369764 <__start_il2cpp+0xcb3800>
 5369760: 97c89d20     	bl	0x4590be0 <.text+0x4743e0>
 5369764: 2a1403e0     	mov	w0, w20
 5369768: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 536976c: 2a1f03e1     	mov	w1, wzr
 5369770: 5289c402     	mov	w2, #0x4e20             // =20000
 5369774: aa1503e3     	mov	x3, x21
 5369778: aa1f03e4     	mov	x4, xzr
 536977c: a8c257fe     	ldp	x30, x21, [sp], #0x20
 5369780: 17f57f2f     	b	0x50c943c <__start_il2cpp+0xa134d8>
 5369784: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 5369788: a8c257fe     	ldp	x30, x21, [sp], #0x20
 536978c: d65f03c0     	ret
 5369790: 97c89d5f     	bl	0x4590d0c <.text+0x47450c>
 5369794: a9bf4ffe     	stp	x30, x19, [sp, #-0x10]!
