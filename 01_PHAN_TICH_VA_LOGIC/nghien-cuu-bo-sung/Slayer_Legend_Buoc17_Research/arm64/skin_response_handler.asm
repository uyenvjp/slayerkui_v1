
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 536b50c: a9bd5ffe     	stp	x30, x23, [sp, #-0x30]!
 536b510: a90157f6     	stp	x22, x21, [sp, #0x10]
 536b514: a9024ff4     	stp	x20, x19, [sp, #0x20]
 536b518: 9002c375     	adrp	x21, 0xabd7000
 536b51c: aa0103f3     	mov	x19, x1
 536b520: aa0003f4     	mov	x20, x0
 536b524: 395a42a8     	ldrb	w8, [x21, #0x690]
 536b528: 370001e8     	tbnz	w8, #0x0, 0x536b564 <__start_il2cpp+0xcb5600>
 536b52c: d00283e0     	adrp	x0, 0xa3e9000
 536b530: f942b400     	ldr	x0, [x0, #0x568]
 536b534: 97c8954b     	bl	0x4590a60 <.text+0x474260>
 536b538: b00286a0     	adrp	x0, 0xa440000
 536b53c: f942ac00     	ldr	x0, [x0, #0x558]
 536b540: 97c89548     	bl	0x4590a60 <.text+0x474260>
 536b544: b00286a0     	adrp	x0, 0xa440000
 536b548: f942b000     	ldr	x0, [x0, #0x560]
 536b54c: 97c89545     	bl	0x4590a60 <.text+0x474260>
 536b550: b00286a0     	adrp	x0, 0xa440000
 536b554: f942b400     	ldr	x0, [x0, #0x568]
 536b558: 97c89542     	bl	0x4590a60 <.text+0x474260>
 536b55c: 52800028     	mov	w8, #0x1                // =1
 536b560: 391a42a8     	strb	w8, [x21, #0x690]
 536b564: f9401288     	ldr	x8, [x20, #0x20]
 536b568: b4000688     	cbz	x8, 0x536b638 <__start_il2cpp+0xcb56d4>
 536b56c: b4000673     	cbz	x19, 0x536b638 <__start_il2cpp+0xcb56d4>
 536b570: d00283e9     	adrp	x9, 0xa3e9000
 536b574: b00286b7     	adrp	x23, 0xa440000
 536b578: f942b529     	ldr	x9, [x9, #0x568]
 536b57c: f9400120     	ldr	x0, [x9]
 536b580: f942b2f7     	ldr	x23, [x23, #0x560]
 536b584: b9856915     	ldrsw	x21, [x8, #0x568]
 536b588: b9801e76     	ldrsw	x22, [x19, #0x1c]
 536b58c: b940e409     	ldr	w9, [x0, #0xe4]
 536b590: 35000049     	cbnz	w9, 0x536b598 <__start_il2cpp+0xcb5634>
 536b594: 97c89593     	bl	0x4590be0 <.text+0x4743e0>
 536b598: f94002e0     	ldr	x0, [x23]
 536b59c: aa1503e1     	mov	x1, x21
 536b5a0: aa1603e2     	mov	x2, x22
 536b5a4: aa1f03e3     	mov	x3, xzr
 536b5a8: 97e7c49c     	bl	0x4d5c818 <__start_il2cpp+0x6a68b4>
 536b5ac: f9401288     	ldr	x8, [x20, #0x20]
 536b5b0: b4000448     	cbz	x8, 0x536b638 <__start_il2cpp+0xcb56d4>
 536b5b4: b00286a9     	adrp	x9, 0xa440000
 536b5b8: aa1f03e3     	mov	x3, xzr
 536b5bc: f942ad29     	ldr	x9, [x9, #0x558]
 536b5c0: b9856d01     	ldrsw	x1, [x8, #0x56c]
 536b5c4: b9802262     	ldrsw	x2, [x19, #0x20]
 536b5c8: f9400120     	ldr	x0, [x9]
 536b5cc: 97e7c493     	bl	0x4d5c818 <__start_il2cpp+0x6a68b4>
 536b5d0: f9401288     	ldr	x8, [x20, #0x20]
 536b5d4: b4000328     	cbz	x8, 0x536b638 <__start_il2cpp+0xcb56d4>
 536b5d8: f9401669     	ldr	x9, [x19, #0x28]
 536b5dc: b40002e9     	cbz	x9, 0x536b638 <__start_il2cpp+0xcb56d4>
 536b5e0: b9856901     	ldrsw	x1, [x8, #0x568]
 536b5e4: b9801922     	ldrsw	x2, [x9, #0x18]
 536b5e8: aa1f03e3     	mov	x3, xzr
 536b5ec: f94002e0     	ldr	x0, [x23]
 536b5f0: 97e7c48a     	bl	0x4d5c818 <__start_il2cpp+0x6a68b4>
 536b5f4: f9401280     	ldr	x0, [x20, #0x20]
 536b5f8: b4000200     	cbz	x0, 0x536b638 <__start_il2cpp+0xcb56d4>
 536b5fc: aa1f03e1     	mov	x1, xzr
 536b600: 97e77c93     	bl	0x4d4a84c <__start_il2cpp+0x6948e8>
 536b604: f9401668     	ldr	x8, [x19, #0x28]
 536b608: b4000188     	cbz	x8, 0x536b638 <__start_il2cpp+0xcb56d4>
 536b60c: b00286a9     	adrp	x9, 0xa440000
 536b610: 12000001     	and	w1, w0, #0x1
 536b614: aa1f03e3     	mov	x3, xzr
 536b618: f942b529     	ldr	x9, [x9, #0x568]
 536b61c: 39408102     	ldrb	w2, [x8, #0x20]
 536b620: a9424ff4     	ldp	x20, x19, [sp, #0x20]
 536b624: f9400128     	ldr	x8, [x9]
 536b628: a94157f6     	ldp	x22, x21, [sp, #0x10]
 536b62c: aa0803e0     	mov	x0, x8
 536b630: a8c35ffe     	ldp	x30, x23, [sp], #0x30
 536b634: 17e7c4e1     	b	0x4d5c9b8 <__start_il2cpp+0x6a6a54>
