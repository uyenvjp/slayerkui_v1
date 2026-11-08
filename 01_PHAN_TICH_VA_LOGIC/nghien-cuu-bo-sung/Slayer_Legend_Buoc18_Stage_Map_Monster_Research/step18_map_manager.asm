
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4ec0c88: a9be57fe     	stp	x30, x21, [sp, #-0x20]!
 4ec0c8c: a9014ff4     	stp	x20, x19, [sp, #0x10]
 4ec0c90: b002e8b5     	adrp	x21, 0xabd5000
 4ec0c94: 2a0103f4     	mov	w20, w1
 4ec0c98: aa0003f3     	mov	x19, x0
 4ec0c9c: 3951a2a8     	ldrb	w8, [x21, #0x468]
 4ec0ca0: 370000c8     	tbnz	w8, #0x0, 0x4ec0cb8 <__start_il2cpp+0x80ad54>
 4ec0ca4: f002aa80     	adrp	x0, 0xa413000
 4ec0ca8: f9445400     	ldr	x0, [x0, #0x8a8]
 4ec0cac: 97db3f6d     	bl	0x4590a60 <.text+0x474260>
 4ec0cb0: 52800028     	mov	w8, #0x1                // =1
 4ec0cb4: 3911a2a8     	strb	w8, [x21, #0x468]
 4ec0cb8: 52839200     	mov	w0, #0x1c90             // =7312
 4ec0cbc: aa1f03e1     	mov	x1, xzr
 4ec0cc0: 97f61a39     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4ec0cc4: 36000160     	tbz	w0, #0x0, 0x4ec0cf0 <__start_il2cpp+0x80ad8c>
 4ec0cc8: 52839200     	mov	w0, #0x1c90             // =7312
 4ec0ccc: aa1f03e1     	mov	x1, xzr
 4ec0cd0: 97f61a62     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4ec0cd4: b4000440     	cbz	x0, 0x4ec0d5c <__start_il2cpp+0x80adf8>
 4ec0cd8: aa1303e1     	mov	x1, x19
 4ec0cdc: 2a1403e2     	mov	w2, w20
 4ec0ce0: aa1f03e3     	mov	x3, xzr
 4ec0ce4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 4ec0ce8: a8c257fe     	ldp	x30, x21, [sp], #0x20
 4ec0cec: 17f2fb2c     	b	0x4b7f99c <__start_il2cpp+0x4c9a38>
 4ec0cf0: f9402260     	ldr	x0, [x19, #0x40]
 4ec0cf4: b4000340     	cbz	x0, 0x4ec0d5c <__start_il2cpp+0x80adf8>
 4ec0cf8: 2a1f03e1     	mov	w1, wzr
 4ec0cfc: aa1f03e2     	mov	x2, xzr
 4ec0d00: 952d0bb5     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0d04: f9403e60     	ldr	x0, [x19, #0x78]
 4ec0d08: b40002a0     	cbz	x0, 0x4ec0d5c <__start_il2cpp+0x80adf8>
 4ec0d0c: 2a1f03e1     	mov	w1, wzr
 4ec0d10: aa1f03e2     	mov	x2, xzr
 4ec0d14: 952d0bb0     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0d18: f9401a60     	ldr	x0, [x19, #0x30]
 4ec0d1c: b4000200     	cbz	x0, 0x4ec0d5c <__start_il2cpp+0x80adf8>
 4ec0d20: 52800021     	mov	w1, #0x1                // =1
 4ec0d24: aa1f03e2     	mov	x2, xzr
 4ec0d28: 952d0bab     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0d2c: f9401660     	ldr	x0, [x19, #0x28]
 4ec0d30: b4000160     	cbz	x0, 0x4ec0d5c <__start_il2cpp+0x80adf8>
 4ec0d34: f002aa88     	adrp	x8, 0xa413000
 4ec0d38: 2a1403e1     	mov	w1, w20
 4ec0d3c: f9445508     	ldr	x8, [x8, #0x8a8]
 4ec0d40: f9400102     	ldr	x2, [x8]
 4ec0d44: 94c65e94     	bl	0x8058794 <__start_il2cpp+0x39a2830>
 4ec0d48: aa0003e1     	mov	x1, x0
 4ec0d4c: aa1303e0     	mov	x0, x19
 4ec0d50: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 4ec0d54: a8c257fe     	ldp	x30, x21, [sp], #0x20
 4ec0d58: 17fffed9     	b	0x4ec08bc <__start_il2cpp+0x80a958>
 4ec0d5c: 97db3fec     	bl	0x4590d0c <.text+0x47450c>
