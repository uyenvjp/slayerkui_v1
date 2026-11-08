
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4e479ec: d10283ff     	sub	sp, sp, #0xa0
 4e479f0: 6d013bef     	stp	d15, d14, [sp, #0x10]
 4e479f4: 6d0233ed     	stp	d13, d12, [sp, #0x20]
 4e479f8: 6d032beb     	stp	d11, d10, [sp, #0x30]
 4e479fc: 6d0423e9     	stp	d9, d8, [sp, #0x40]
 4e47a00: a9056ffe     	stp	x30, x27, [sp, #0x50]
 4e47a04: a90667fa     	stp	x26, x25, [sp, #0x60]
 4e47a08: a9075ff8     	stp	x24, x23, [sp, #0x70]
 4e47a0c: a90857f6     	stp	x22, x21, [sp, #0x80]
 4e47a10: a9094ff4     	stp	x20, x19, [sp, #0x90]
 4e47a14: d002ec74     	adrp	x20, 0xabd5000
 4e47a18: aa0003f3     	mov	x19, x0
 4e47a1c: 39454688     	ldrb	w8, [x20, #0x151]
 4e47a20: 37000128     	tbnz	w8, #0x0, 0x4e47a44 <__start_il2cpp+0x791ae0>
 4e47a24: f002ad20     	adrp	x0, 0xa3ee000
 4e47a28: f9441c00     	ldr	x0, [x0, #0x838]
 4e47a2c: 97dd240d     	bl	0x4590a60 <.text+0x474260>
 4e47a30: 9002aec0     	adrp	x0, 0xa41f000
 4e47a34: f9458000     	ldr	x0, [x0, #0xb00]
 4e47a38: 97dd240a     	bl	0x4590a60 <.text+0x474260>
 4e47a3c: 52800028     	mov	w8, #0x1                // =1
 4e47a40: 39054688     	strb	w8, [x20, #0x151]
 4e47a44: 5283cac0     	mov	w0, #0x1e56             // =7766
 4e47a48: aa1f03e1     	mov	x1, xzr
 4e47a4c: 97f7fed6     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4e47a50: 36000240     	tbz	w0, #0x0, 0x4e47a98 <__start_il2cpp+0x791b34>
 4e47a54: 5283cac0     	mov	w0, #0x1e56             // =7766
 4e47a58: aa1f03e1     	mov	x1, xzr
 4e47a5c: 97f7feff     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4e47a60: b4001600     	cbz	x0, 0x4e47d20 <__start_il2cpp+0x791dbc>
 4e47a64: aa1303e1     	mov	x1, x19
 4e47a68: a9494ff4     	ldp	x20, x19, [sp, #0x90]
 4e47a6c: a94857f6     	ldp	x22, x21, [sp, #0x80]
 4e47a70: aa1f03e2     	mov	x2, xzr
 4e47a74: a9475ff8     	ldp	x24, x23, [sp, #0x70]
 4e47a78: a94667fa     	ldp	x26, x25, [sp, #0x60]
 4e47a7c: a9456ffe     	ldp	x30, x27, [sp, #0x50]
 4e47a80: 6d4423e9     	ldp	d9, d8, [sp, #0x40]
 4e47a84: 6d432beb     	ldp	d11, d10, [sp, #0x30]
 4e47a88: 6d4233ed     	ldp	d13, d12, [sp, #0x20]
 4e47a8c: 6d413bef     	ldp	d15, d14, [sp, #0x10]
 4e47a90: 910283ff     	add	sp, sp, #0xa0
 4e47a94: 17f4daa3     	b	0x4b7e520 <__start_il2cpp+0x4c85bc>
 4e47a98: f002ad34     	adrp	x20, 0xa3ee000
 4e47a9c: f9441e94     	ldr	x20, [x20, #0x838]
 4e47aa0: f9400280     	ldr	x0, [x20]
 4e47aa4: b940e408     	ldr	w8, [x0, #0xe4]
 4e47aa8: 35000048     	cbnz	w8, 0x4e47ab0 <__start_il2cpp+0x791b4c>
 4e47aac: 97dd244d     	bl	0x4590be0 <.text+0x4743e0>
 4e47ab0: 9002ec55     	adrp	x21, 0xabcf000
 4e47ab4: 3945a2a8     	ldrb	w8, [x21, #0x168]
 4e47ab8: 350000c8     	cbnz	w8, 0x4e47ad0 <__start_il2cpp+0x791b6c>
 4e47abc: f002ad20     	adrp	x0, 0xa3ee000
 4e47ac0: f9441c00     	ldr	x0, [x0, #0x838]
 4e47ac4: 97dd23e7     	bl	0x4590a60 <.text+0x474260>
 4e47ac8: 52800028     	mov	w8, #0x1                // =1
 4e47acc: 3905a2a8     	strb	w8, [x21, #0x168]
 4e47ad0: f9400280     	ldr	x0, [x20]
 4e47ad4: b940e408     	ldr	w8, [x0, #0xe4]
 4e47ad8: 35000068     	cbnz	w8, 0x4e47ae4 <__start_il2cpp+0x791b80>
 4e47adc: 97dd2441     	bl	0x4590be0 <.text+0x4743e0>
 4e47ae0: f9400280     	ldr	x0, [x20]
 4e47ae4: f9405c08     	ldr	x8, [x0, #0xb8]
 4e47ae8: f9400108     	ldr	x8, [x8]
 4e47aec: b40011a8     	cbz	x8, 0x4e47d20 <__start_il2cpp+0x791dbc>
 4e47af0: f9406914     	ldr	x20, [x8, #0xd0]
 4e47af4: 2a1f03e0     	mov	w0, wzr
 4e47af8: 528000a1     	mov	w1, #0x5                // =5
 4e47afc: aa1f03e2     	mov	x2, xzr
 4e47b00: 952ecec0     	bl	0x99fb600 <__start_il2cpp+0x534569c>
 4e47b04: b40010f4     	cbz	x20, 0x4e47d20 <__start_il2cpp+0x791dbc>
 4e47b08: 9002aec8     	adrp	x8, 0xa41f000
 4e47b0c: 2a0003e1     	mov	w1, w0
 4e47b10: aa1403e0     	mov	x0, x20
 4e47b14: f9458108     	ldr	x8, [x8, #0xb00]
 4e47b18: f9400102     	ldr	x2, [x8]
 4e47b1c: 94c8431e     	bl	0x8058794 <__start_il2cpp+0x39a2830>
 4e47b20: 9002ec76     	adrp	x22, 0xabd3000
 4e47b24: fd42ca68     	ldr	d8, [x19, #0x590]
 4e47b28: bd459a69     	ldr	s9, [x19, #0x598]
 4e47b2c: 395af2c8     	ldrb	w8, [x22, #0x6bc]
 4e47b30: aa0003f4     	mov	x20, x0
 4e47b34: 350000c8     	cbnz	w8, 0x4e47b4c <__start_il2cpp+0x791be8>
 4e47b38: b002ad00     	adrp	x0, 0xa3e8000
 4e47b3c: f9413c00     	ldr	x0, [x0, #0x278]
 4e47b40: 97dd23c8     	bl	0x4590a60 <.text+0x474260>
 4e47b44: 52800028     	mov	w8, #0x1                // =1
 4e47b48: 391af2c8     	strb	w8, [x22, #0x6bc]
 4e47b4c: b002ad15     	adrp	x21, 0xa3e8000
 4e47b50: 52a84189     	mov	w9, #0x420c0000         // =1108082688
 4e47b54: f9413eb5     	ldr	x21, [x21, #0x278]
 4e47b58: 0e040d20     	dup	v0.2s, w9
 4e47b5c: 1e270121     	fmov	s1, w9
 4e47b60: b9458e69     	ldr	w9, [x19, #0x58c]
 4e47b64: f94002a8     	ldr	x8, [x21]
 4e47b68: 7100053f     	cmp	w9, #0x1
 4e47b6c: f9405d08     	ldr	x8, [x8, #0xb8]
 4e47b70: bd40450d     	ldr	s13, [x8, #0x44]
 4e47b74: fc43c10e     	ldur	d14, [x8, #0x3c]
 4e47b78: 2e20ddc0     	fmul	v0.2s, v14.2s, v0.2s
 4e47b7c: 1e2109a1     	fmul	s1, s13, s1
 4e47b80: 0e20d50f     	fadd	v15.2s, v8.2s, v0.2s
 4e47b84: 1e21292a     	fadd	s10, s9, s1
 4e47b88: 54000aeb     	b.lt	0x4e47ce4 <__start_il2cpp+0x791d80>
 4e47b8c: 5296e2e9     	mov	w9, #0xb717             // =46871
 4e47b90: 529999b8     	mov	w24, #0xcccd            // =52429
 4e47b94: 2a1f03f7     	mov	w23, wzr
 4e47b98: 72a71a29     	movk	w9, #0x38d1, lsl #16
 4e47b9c: 72b99998     	movk	w24, #0xcccc, lsl #16
 4e47ba0: 12800139     	mov	w25, #-0xa              // =-10
 4e47ba4: 0e040d29     	dup	v9.2s, w9
 4e47ba8: d0fe8709     	adrp	x9, 0x1f29000
 4e47bac: b002ec7a     	adrp	x26, 0xabd4000
 4e47bb0: bd491d2c     	ldr	s12, [x9, #0x91c]
 4e47bb4: 5280003b     	mov	w27, #0x1               // =1
 4e47bb8: 9bb87ee9     	umull	x9, w23, w24
 4e47bbc: 71002aff     	cmp	w23, #0xa
 4e47bc0: d363fd29     	lsr	x9, x9, #35
 4e47bc4: 1b195d29     	madd	w9, w9, w25, w23
 4e47bc8: 1a8932e9     	csel	w9, w23, w9, lo
 4e47bcc: b4000ab4     	cbz	x20, 0x4e47d20 <__start_il2cpp+0x791dbc>
 4e47bd0: f9400e8a     	ldr	x10, [x20, #0x18]
 4e47bd4: b4000a6a     	cbz	x10, 0x4e47d20 <__start_il2cpp+0x791dbc>
 4e47bd8: b940194b     	ldr	w11, [x10, #0x18]
 4e47bdc: 6b0b013f     	cmp	w9, w11
 4e47be0: 54000a22     	b.hs	0x4e47d24 <__start_il2cpp+0x791dc0>
 4e47be4: f941066b     	ldr	x11, [x19, #0x208]
 4e47be8: b40009cb     	cbz	x11, 0x4e47d20 <__start_il2cpp+0x791dbc>
 4e47bec: 8b294949     	add	x9, x10, w9, uxtw #2
 4e47bf0: 395e974a     	ldrb	w10, [x26, #0x7a5]
 4e47bf4: bd40556b     	ldr	s11, [x11, #0x54]
 4e47bf8: bd402128     	ldr	s8, [x9, #0x20]
 4e47bfc: 350000ca     	cbnz	w10, 0x4e47c14 <__start_il2cpp+0x791cb0>
 4e47c00: aa1503e0     	mov	x0, x21
 4e47c04: 97dd2397     	bl	0x4590a60 <.text+0x474260>
 4e47c08: f94002a8     	ldr	x8, [x21]
 4e47c0c: 391e975b     	strb	w27, [x26, #0x7a5]
 4e47c10: f9405d08     	ldr	x8, [x8, #0xb8]
 4e47c14: 1e2f1000     	fmov	s0, #1.50000000
 4e47c18: 1e2d1001     	fmov	s1, #0.75000000
 4e47c1c: fc454102     	ldur	d2, [x8, #0x54]
 4e47c20: 1e2202e4     	scvtf	s4, w23
 4e47c24: aa1303e0     	mov	x0, x19
 4e47c28: 2e29dc42     	fmul	v2.2s, v2.2s, v9.2s
 4e47c2c: 1e200900     	fmul	s0, s8, s0
 4e47c30: 1e210961     	fmul	s1, s11, s1
 4e47c34: 1e2d100b     	fmov	s11, #0.75000000
 4e47c38: 0f849042     	fmul	v2.2s, v2.2s, v4.s[0]
 4e47c3c: 1e212800     	fadd	s0, s0, s1
 4e47c40: bd405d01     	ldr	s1, [x8, #0x5c]
 4e47c44: 1e2c0821     	fmul	s1, s1, s12
 4e47c48: 0f8091c3     	fmul	v3.2s, v14.2s, v0.s[0]
 4e47c4c: 1e2009a0     	fmul	s0, s13, s0
 4e47c50: 1e240821     	fmul	s1, s1, s4
 4e47c54: 0e23d5e3     	fadd	v3.2s, v15.2s, v3.2s
 4e47c58: 1e202940     	fadd	s0, s10, s0
 4e47c5c: 0e22d462     	fadd	v2.2s, v3.2s, v2.2s
 4e47c60: 1e212808     	fadd	s8, s0, s1
 4e47c64: 3d8003e2     	str	q2, [sp]
 4e47c68: 940026ac     	bl	0x4e51718 <__start_il2cpp+0x79b7b4>
 4e47c6c: 3dc003e0     	ldr	q0, [sp]
 4e47c70: 1e204102     	fmov	s2, s8
 4e47c74: 2a0003e1     	mov	w1, w0
 4e47c78: aa1303e0     	mov	x0, x19
 4e47c7c: 5e0c0401     	mov	s1, v0.s[1]
 4e47c80: 940026d6     	bl	0x4e517d8 <__start_il2cpp+0x79b874>
 4e47c84: 395af2c8     	ldrb	w8, [x22, #0x6bc]
 4e47c88: 35000088     	cbnz	w8, 0x4e47c98 <__start_il2cpp+0x791d34>
 4e47c8c: aa1503e0     	mov	x0, x21
 4e47c90: 97dd2374     	bl	0x4590a60 <.text+0x474260>
 4e47c94: 391af2db     	strb	w27, [x22, #0x6bc]
 4e47c98: f9410668     	ldr	x8, [x19, #0x208]
 4e47c9c: b4000428     	cbz	x8, 0x4e47d20 <__start_il2cpp+0x791dbc>
 4e47ca0: f94002a9     	ldr	x9, [x21]
 4e47ca4: bd405500     	ldr	s0, [x8, #0x54]
 4e47ca8: 110006f7     	add	w23, w23, #0x1
 4e47cac: 3dc003e2     	ldr	q2, [sp]
 4e47cb0: f9405d28     	ldr	x8, [x9, #0xb8]
 4e47cb4: 1e2b0800     	fmul	s0, s0, s11
 4e47cb8: b9458e69     	ldr	w9, [x19, #0x58c]
 4e47cbc: bd40450d     	ldr	s13, [x8, #0x44]
 4e47cc0: fc43c10e     	ldur	d14, [x8, #0x3c]
 4e47cc4: 6b0902ff     	cmp	w23, w9
 4e47cc8: 0f8091c1     	fmul	v1.2s, v14.2s, v0.s[0]
 4e47ccc: 1e2009a0     	fmul	s0, s13, s0
 4e47cd0: 0e21d44f     	fadd	v15.2s, v2.2s, v1.2s
 4e47cd4: 1e20290a     	fadd	s10, s8, s0
 4e47cd8: 4ea21c41     	mov	v1.16b, v2.16b
 4e47cdc: 54fff6eb     	b.lt	0x4e47bb8 <__start_il2cpp+0x791c54>
 4e47ce0: 14000003     	b	0x4e47cec <__start_il2cpp+0x791d88>
 4e47ce4: 1e204148     	fmov	s8, s10
 4e47ce8: 1e6041e1     	fmov	d1, d15
 4e47cec: fd02ca61     	str	d1, [x19, #0x590]
 4e47cf0: a94857f6     	ldp	x22, x21, [sp, #0x80]
 4e47cf4: bd059a68     	str	s8, [x19, #0x598]
 4e47cf8: a9494ff4     	ldp	x20, x19, [sp, #0x90]
 4e47cfc: a9475ff8     	ldp	x24, x23, [sp, #0x70]
 4e47d00: a94667fa     	ldp	x26, x25, [sp, #0x60]
 4e47d04: a9456ffe     	ldp	x30, x27, [sp, #0x50]
 4e47d08: 6d4423e9     	ldp	d9, d8, [sp, #0x40]
 4e47d0c: 6d432beb     	ldp	d11, d10, [sp, #0x30]
 4e47d10: 6d4233ed     	ldp	d13, d12, [sp, #0x20]
 4e47d14: 6d413bef     	ldp	d15, d14, [sp, #0x10]
 4e47d18: 910283ff     	add	sp, sp, #0xa0
 4e47d1c: d65f03c0     	ret
 4e47d20: 97dd23fb     	bl	0x4590d0c <.text+0x47450c>
 4e47d24: 97dd23fc     	bl	0x4590d14 <.text+0x474514>
