
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4ec08bc: f81a0ffe     	str	x30, [sp, #-0x60]!
 4ec08c0: a9016ffc     	stp	x28, x27, [sp, #0x10]
 4ec08c4: a90267fa     	stp	x26, x25, [sp, #0x20]
 4ec08c8: a9035ff8     	stp	x24, x23, [sp, #0x30]
 4ec08cc: a90457f6     	stp	x22, x21, [sp, #0x40]
 4ec08d0: a9054ff4     	stp	x20, x19, [sp, #0x50]
 4ec08d4: b002e8b5     	adrp	x21, 0xabd5000
 4ec08d8: aa0103f3     	mov	x19, x1
 4ec08dc: aa0003f4     	mov	x20, x0
 4ec08e0: 3951aea8     	ldrb	w8, [x21, #0x46b]
 4ec08e4: 37000188     	tbnz	w8, #0x0, 0x4ec0914 <__start_il2cpp+0x80a9b0>
 4ec08e8: b002a940     	adrp	x0, 0xa3e9000
 4ec08ec: f944a400     	ldr	x0, [x0, #0x948]
 4ec08f0: 97db405c     	bl	0x4590a60 <.text+0x474260>
 4ec08f4: 9002a940     	adrp	x0, 0xa3e8000
 4ec08f8: f9414400     	ldr	x0, [x0, #0x288]
 4ec08fc: 97db4059     	bl	0x4590a60 <.text+0x474260>
 4ec0900: f002a920     	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4ec0904: f9425400     	ldr	x0, [x0, #0x4a8]
 4ec0908: 97db4056     	bl	0x4590a60 <.text+0x474260>
 4ec090c: 52800028     	mov	w8, #0x1                // =1
 4ec0910: 3911aea8     	strb	w8, [x21, #0x46b]
 4ec0914: 52839220     	mov	w0, #0x1c91             // =7313
 4ec0918: aa1f03e1     	mov	x1, xzr
 4ec091c: 97f61b22     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4ec0920: 360001e0     	tbz	w0, #0x0, 0x4ec095c <__start_il2cpp+0x80a9f8>
 4ec0924: 52839220     	mov	w0, #0x1c91             // =7313
 4ec0928: aa1f03e1     	mov	x1, xzr
 4ec092c: 97f61b4b     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4ec0930: b4000f40     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0934: aa1403e1     	mov	x1, x20
 4ec0938: aa1303e2     	mov	x2, x19
 4ec093c: aa1f03e3     	mov	x3, xzr
 4ec0940: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 4ec0944: a94457f6     	ldp	x22, x21, [sp, #0x40]
 4ec0948: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 4ec094c: a94267fa     	ldp	x26, x25, [sp, #0x20]
 4ec0950: a9416ffc     	ldp	x28, x27, [sp, #0x10]
 4ec0954: f84607fe     	ldr	x30, [sp], #0x60
 4ec0958: 17f2f7af     	b	0x4b7e814 <__start_il2cpp+0x4c88b0>
 4ec095c: f9401e88     	ldr	x8, [x20, #0x38]
 4ec0960: b4000dc8     	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0964: b002a958     	adrp	x24, 0xa3e9000
 4ec0968: f002a939     	adrp	x25, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4ec096c: 9002a95a     	adrp	x26, 0xa3e8000
 4ec0970: f944a718     	ldr	x24, [x24, #0x948]
 4ec0974: f9425739     	ldr	x25, [x25, #0x4a8]
 4ec0978: f941475a     	ldr	x26, [x26, #0x288]
 4ec097c: aa1f03f5     	mov	x21, xzr
 4ec0980: b9801908     	ldrsw	x8, [x8, #0x18]
 4ec0984: eb0802bf     	cmp	x21, x8
 4ec0988: 54000caa     	b.ge	0x4ec0b1c <__start_il2cpp+0x80abb8>
 4ec098c: f9400300     	ldr	x0, [x24]
 4ec0990: b940e408     	ldr	w8, [x0, #0xe4]
 4ec0994: 35000048     	cbnz	w8, 0x4ec099c <__start_il2cpp+0x80aa38>
 4ec0998: 97db4092     	bl	0x4590be0 <.text+0x4743e0>
 4ec099c: aa1303e0     	mov	x0, x19
 4ec09a0: 2a1503e1     	mov	w1, w21
 4ec09a4: aa1f03e2     	mov	x2, xzr
 4ec09a8: 97f8273f     	bl	0x4cca6a4 <__start_il2cpp+0x614740>
 4ec09ac: f9400328     	ldr	x8, [x25]
 4ec09b0: aa0003f6     	mov	x22, x0
 4ec09b4: b940e509     	ldr	w9, [x8, #0xe4]
 4ec09b8: 35000069     	cbnz	w9, 0x4ec09c4 <__start_il2cpp+0x80aa60>
 4ec09bc: aa0803e0     	mov	x0, x8
 4ec09c0: 97db4088     	bl	0x4590be0 <.text+0x4743e0>
 4ec09c4: aa1603e0     	mov	x0, x22
 4ec09c8: aa1f03e1     	mov	x1, xzr
 4ec09cc: aa1f03e2     	mov	x2, xzr
 4ec09d0: 952d0a30     	bl	0x9a03290 <__start_il2cpp+0x534d32c>
 4ec09d4: f9401e88     	ldr	x8, [x20, #0x38]
 4ec09d8: 36000600     	tbz	w0, #0x0, 0x4ec0a98 <__start_il2cpp+0x80ab34>
 4ec09dc: b40009e8     	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec09e0: b9401909     	ldr	w9, [x8, #0x18]
 4ec09e4: eb0902bf     	cmp	x21, x9
 4ec09e8: 54000a82     	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec09ec: 8b150d08     	add	x8, x8, x21, lsl #3
 4ec09f0: f9401100     	ldr	x0, [x8, #0x20]
 4ec09f4: b4000920     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec09f8: aa1f03e1     	mov	x1, xzr
 4ec09fc: 952cff2d     	bl	0x9a006b0 <__start_il2cpp+0x534a74c>
 4ec0a00: b40008c0     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a04: 52800021     	mov	w1, #0x1                // =1
 4ec0a08: aa1f03e2     	mov	x2, xzr
 4ec0a0c: 952d0c72     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0a10: f9404a9b     	ldr	x27, [x20, #0x90]
 4ec0a14: b400083b     	cbz	x27, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a18: aa1f03f7     	mov	x23, xzr
 4ec0a1c: 5280041c     	mov	w28, #0x20              // =32
 4ec0a20: b9801b68     	ldrsw	x8, [x27, #0x18]
 4ec0a24: eb0802ff     	cmp	x23, x8
 4ec0a28: 540005aa     	b.ge	0x4ec0adc <__start_il2cpp+0x80ab78>
 4ec0a2c: f9401e88     	ldr	x8, [x20, #0x38]
 4ec0a30: b4000748     	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a34: b9401909     	ldr	w9, [x8, #0x18]
 4ec0a38: eb0902bf     	cmp	x21, x9
 4ec0a3c: 540007e2     	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0a40: 8b150d08     	add	x8, x8, x21, lsl #3
 4ec0a44: f9401100     	ldr	x0, [x8, #0x20]
 4ec0a48: b4000680     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a4c: 2a1703e1     	mov	w1, w23
 4ec0a50: aa1f03e2     	mov	x2, xzr
 4ec0a54: 952d5439     	bl	0x9a15b38 <__start_il2cpp+0x535fbd4>
 4ec0a58: b4000600     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a5c: f9400341     	ldr	x1, [x26]
 4ec0a60: 943f1d8e     	bl	0x5e88098 <__start_il2cpp+0x17d2134>
 4ec0a64: b9401b68     	ldr	w8, [x27, #0x18]
 4ec0a68: eb0802ff     	cmp	x23, x8
 4ec0a6c: 54000662     	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0a70: 8b170f68     	add	x8, x27, x23, lsl #3
 4ec0a74: aa0003e1     	mov	x1, x0
 4ec0a78: f9001100     	str	x0, [x8, #0x20]
 4ec0a7c: 8b1c0360     	add	x0, x27, x28
 4ec0a80: 97db3fe1     	bl	0x4590a04 <.text+0x474204>
 4ec0a84: f9404a9b     	ldr	x27, [x20, #0x90]
 4ec0a88: 910006f7     	add	x23, x23, #0x1
 4ec0a8c: 9100239c     	add	x28, x28, #0x8
 4ec0a90: b5fffc9b     	cbnz	x27, 0x4ec0a20 <__start_il2cpp+0x80aabc>
 4ec0a94: 14000021     	b	0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a98: b4000408     	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a9c: b9401909     	ldr	w9, [x8, #0x18]
 4ec0aa0: eb0902bf     	cmp	x21, x9
 4ec0aa4: 540004a2     	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0aa8: 8b150d08     	add	x8, x8, x21, lsl #3
 4ec0aac: f9401100     	ldr	x0, [x8, #0x20]
 4ec0ab0: b4000340     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0ab4: aa1f03e1     	mov	x1, xzr
 4ec0ab8: 952cfefe     	bl	0x9a006b0 <__start_il2cpp+0x534a74c>
 4ec0abc: b40002e0     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0ac0: 2a1f03e1     	mov	w1, wzr
 4ec0ac4: aa1f03e2     	mov	x2, xzr
 4ec0ac8: 952d0c43     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0acc: f9401e88     	ldr	x8, [x20, #0x38]
 4ec0ad0: 910006b5     	add	x21, x21, #0x1
 4ec0ad4: b5fff568     	cbnz	x8, 0x4ec0980 <__start_il2cpp+0x80aa1c>
 4ec0ad8: 14000010     	b	0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0adc: aa1f03f7     	mov	x23, xzr
 4ec0ae0: b9401b68     	ldr	w8, [x27, #0x18]
 4ec0ae4: 6b0802ff     	cmp	w23, w8
 4ec0ae8: 54ffff2a     	b.ge	0x4ec0acc <__start_il2cpp+0x80ab68>
 4ec0aec: 6b0802ff     	cmp	w23, w8
 4ec0af0: 54000242     	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0af4: 8b170f68     	add	x8, x27, x23, lsl #3
 4ec0af8: f9401100     	ldr	x0, [x8, #0x20]
 4ec0afc: b40000e0     	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0b00: aa1603e1     	mov	x1, x22
 4ec0b04: aa1f03e2     	mov	x2, xzr
 4ec0b08: 952bc58c     	bl	0x99b2138 <__start_il2cpp+0x52fc1d4>
 4ec0b0c: f9404a9b     	ldr	x27, [x20, #0x90]
 4ec0b10: 910006f7     	add	x23, x23, #0x1
 4ec0b14: b5fffe7b     	cbnz	x27, 0x4ec0ae0 <__start_il2cpp+0x80ab7c>
 4ec0b18: 97db407d     	bl	0x4590d0c <.text+0x47450c>
 4ec0b1c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 4ec0b20: a94457f6     	ldp	x22, x21, [sp, #0x40]
 4ec0b24: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 4ec0b28: a94267fa     	ldp	x26, x25, [sp, #0x20]
 4ec0b2c: a9416ffc     	ldp	x28, x27, [sp, #0x10]
 4ec0b30: f84607fe     	ldr	x30, [sp], #0x60
 4ec0b34: d65f03c0     	ret
 4ec0b38: 97db4077     	bl	0x4590d14 <.text+0x474514>
 4ec0b3c: f81e0ffe     	str	x30, [sp, #-0x20]!
 4ec0b40: a9014ff4     	stp	x20, x19, [sp, #0x10]
 4ec0b44: 2a0103f4     	mov	w20, w1
 4ec0b48: aa0003f3     	mov	x19, x0
 4ec0b4c: 528f2ac0     	mov	w0, #0x7956             // =31062
 4ec0b50: aa1f03e1     	mov	x1, xzr
 4ec0b54: 97f61a94     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4ec0b58: 36000160     	tbz	w0, #0x0, 0x4ec0b84 <__start_il2cpp+0x80ac20>
 4ec0b5c: 528f2ac0     	mov	w0, #0x7956             // =31062
 4ec0b60: aa1f03e1     	mov	x1, xzr
 4ec0b64: 97f61abd     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4ec0b68: b40008e0     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0b6c: aa1303e1     	mov	x1, x19
 4ec0b70: 2a1403e2     	mov	w2, w20
 4ec0b74: aa1f03e3     	mov	x3, xzr
 4ec0b78: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 4ec0b7c: f84207fe     	ldr	x30, [sp], #0x20
 4ec0b80: 17f3b869     	b	0x4baed24 <__start_il2cpp+0x4f8dc0>
 4ec0b84: f9401a60     	ldr	x0, [x19, #0x30]
 4ec0b88: b40007e0     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0b8c: 2a1f03e1     	mov	w1, wzr
 4ec0b90: aa1f03e2     	mov	x2, xzr
 4ec0b94: 952d0c10     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0b98: f9402260     	ldr	x0, [x19, #0x40]
 4ec0b9c: b4000740     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0ba0: 52800021     	mov	w1, #0x1                // =1
 4ec0ba4: aa1f03e2     	mov	x2, xzr
 4ec0ba8: 952d0c0b     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0bac: f9403e60     	ldr	x0, [x19, #0x78]
 4ec0bb0: b40006a0     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0bb4: 2a1f03e1     	mov	w1, wzr
 4ec0bb8: aa1f03e2     	mov	x2, xzr
 4ec0bbc: 952d0c06     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0bc0: 71003e9f     	cmp	w20, #0xf
 4ec0bc4: 54000380     	b.eq	0x4ec0c34 <__start_il2cpp+0x80acd0>
 4ec0bc8: 71001e9f     	cmp	w20, #0x7
 4ec0bcc: 54000180     	b.eq	0x4ec0bfc <__start_il2cpp+0x80ac98>
 4ec0bd0: 71000e9f     	cmp	w20, #0x3
 4ec0bd4: 54000521     	b.ne	0x4ec0c78 <__start_il2cpp+0x80ad14>
 4ec0bd8: f9402660     	ldr	x0, [x19, #0x48]
 4ec0bdc: b4000540     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0be0: 52800021     	mov	w1, #0x1                // =1
 4ec0be4: aa1f03e2     	mov	x2, xzr
 4ec0be8: 952d0bfb     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0bec: f9402a60     	ldr	x0, [x19, #0x50]
 4ec0bf0: b40004a0     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0bf4: 2a1f03e1     	mov	w1, wzr
 4ec0bf8: 14000009     	b	0x4ec0c1c <__start_il2cpp+0x80acb8>
 4ec0bfc: f9402660     	ldr	x0, [x19, #0x48]
 4ec0c00: b4000420     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0c04: 2a1f03e1     	mov	w1, wzr
 4ec0c08: aa1f03e2     	mov	x2, xzr
 4ec0c0c: 952d0bf2     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0c10: f9402a60     	ldr	x0, [x19, #0x50]
 4ec0c14: b4000380     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0c18: 52800021     	mov	w1, #0x1                // =1
 4ec0c1c: aa1f03e2     	mov	x2, xzr
 4ec0c20: 952d0bed     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0c24: f9402e60     	ldr	x0, [x19, #0x58]
 4ec0c28: b40002e0     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0c2c: 2a1f03e1     	mov	w1, wzr
 4ec0c30: 1400000e     	b	0x4ec0c68 <__start_il2cpp+0x80ad04>
 4ec0c34: f9402660     	ldr	x0, [x19, #0x48]
 4ec0c38: b4000260     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0c3c: 2a1f03e1     	mov	w1, wzr
 4ec0c40: aa1f03e2     	mov	x2, xzr
 4ec0c44: 952d0be4     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0c48: f9402a60     	ldr	x0, [x19, #0x50]
 4ec0c4c: b40001c0     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0c50: 2a1f03e1     	mov	w1, wzr
 4ec0c54: aa1f03e2     	mov	x2, xzr
 4ec0c58: 952d0bdf     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0c5c: f9402e60     	ldr	x0, [x19, #0x58]
 4ec0c60: b4000120     	cbz	x0, 0x4ec0c84 <__start_il2cpp+0x80ad20>
 4ec0c64: 52800021     	mov	w1, #0x1                // =1
 4ec0c68: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 4ec0c6c: aa1f03e2     	mov	x2, xzr
 4ec0c70: f84207fe     	ldr	x30, [sp], #0x20
 4ec0c74: 152d0bd8     	b	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0c78: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 4ec0c7c: f84207fe     	ldr	x30, [sp], #0x20
 4ec0c80: d65f03c0     	ret
 4ec0c84: 97db4022     	bl	0x4590d0c <.text+0x47450c>
