
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4814868: d10203ff     	sub	sp, sp, #0x80
 481486c: a9055ffe     	stp	x30, x23, [sp, #0x50]
 4814870: a90657f6     	stp	x22, x21, [sp, #0x60]
 4814874: a9074ff4     	stp	x20, x19, [sp, #0x70]
 4814878: f0031dd6     	adrp	x22, 0xabcf000
 481487c: b002def5     	adrp	x21, 0xa3f1000
 4814880: aa0003f4     	mov	x20, x0
 4814884: 395096c9     	ldrb	w9, [x22, #0x425]
 4814888: f9445eb5     	ldr	x21, [x21, #0x8b8]
 481488c: aa0803f3     	mov	x19, x8
 4814890: 37000189     	tbnz	w9, #0x0, 0x48148c0 <__start_il2cpp+0x15e95c>
 4814894: b002dea0     	adrp	x0, 0xa3e9000
 4814898: f9455400     	ldr	x0, [x0, #0xaa8]
 481489c: 97f5f071     	bl	0x4590a60 <.text+0x474260>
 48148a0: b002dee0     	adrp	x0, 0xa3f1000
 48148a4: f9445c00     	ldr	x0, [x0, #0x8b8]
 48148a8: 97f5f06e     	bl	0x4590a60 <.text+0x474260>
 48148ac: b002dea0     	adrp	x0, 0xa3e9000
 48148b0: f9455800     	ldr	x0, [x0, #0xab0]
 48148b4: 97f5f06b     	bl	0x4590a60 <.text+0x474260>
 48148b8: 52800028     	mov	w8, #0x1                // =1
 48148bc: 391096c8     	strb	w8, [x22, #0x425]
 48148c0: 6f00e400     	movi	v0.2d, #0000000000000000
 48148c4: b002deb7     	adrp	x23, 0xa3e9000
 48148c8: 910083f6     	add	x22, sp, #0x20
 48148cc: b27d02c0     	orr	x0, x22, #0x8
 48148d0: aa1f03e1     	mov	x1, xzr
 48148d4: ad0103e0     	stp	q0, q0, [sp, #0x20]
 48148d8: 3d8013e0     	str	q0, [sp, #0x40]
 48148dc: f9001fff     	str	xzr, [sp, #0x38]
 48148e0: f9455af7     	ldr	x23, [x23, #0xab0]
 48148e4: a902ffff     	stp	xzr, xzr, [sp, #0x28]
 48148e8: 97f5f047     	bl	0x4590a04 <.text+0x474204>
 48148ec: 910082c0     	add	x0, x22, #0x20
 48148f0: aa1403e1     	mov	x1, x20
 48148f4: f90023f4     	str	x20, [sp, #0x40]
 48148f8: 97f5f043     	bl	0x4590a04 <.text+0x474204>
 48148fc: f94002a0     	ldr	x0, [x21]
 4814900: 12800009     	mov	w9, #-0x1               // =-1
 4814904: b90023e9     	str	w9, [sp, #0x20]
 4814908: f9401c08     	ldr	x8, [x0, #0x38]
 481490c: b5000048     	cbnz	x8, 0x4814914 <__start_il2cpp+0x15e9b0>
 4814910: 97f6d19d     	bl	0x45c8f84 <JNI_OnUnload+0xe010>
 4814914: 910083e0     	add	x0, sp, #0x20
 4814918: 9400000e     	bl	0x4814950 <__start_il2cpp+0x15e9ec>
 481491c: f94002e1     	ldr	x1, [x23]
 4814920: 910023e8     	add	x8, sp, #0x8
 4814924: b27d02c0     	orr	x0, x22, #0x8
 4814928: 97fbe228     	bl	0x470d1c8 <__start_il2cpp+0x57264>
 481492c: 3cc083e0     	ldur	q0, [sp, #0x8]
 4814930: f9400fe8     	ldr	x8, [sp, #0x18]
 4814934: a94657f6     	ldp	x22, x21, [sp, #0x60]
 4814938: 3d800260     	str	q0, [x19]
 481493c: a9455ffe     	ldp	x30, x23, [sp, #0x50]
 4814940: f9000a68     	str	x8, [x19, #0x10]
 4814944: a9474ff4     	ldp	x20, x19, [sp, #0x70]
 4814948: 910203ff     	add	sp, sp, #0x80
 481494c: d65f03c0     	ret
