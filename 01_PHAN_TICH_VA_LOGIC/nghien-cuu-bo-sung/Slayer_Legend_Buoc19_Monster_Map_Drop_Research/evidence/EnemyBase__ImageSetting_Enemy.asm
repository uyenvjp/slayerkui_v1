
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 50b4b7c:      	str	x30, [sp, #-0x40]!
 50b4b80:      	stp	x24, x23, [sp, #0x10]
 50b4b84:      	stp	x22, x21, [sp, #0x20]
 50b4b88:      	stp	x20, x19, [sp, #0x30]
 50b4b8c:      	adrp	x21, 0xabd6000
 50b4b90:      	mov	w20, w1
 50b4b94:      	mov	x19, x0
 50b4b98:      	ldrb	w8, [x21, #0x2a7]
 50b4b9c:      	tbnz	w8, #0x0, 0x50b4be4 <__start_il2cpp+0x9fec80>
 50b4ba0:      	adrp	x0, 0xa3e9000
 50b4ba4:      	ldr	x0, [x0, #0x948]
 50b4ba8:      	bl	0x4590a60 <.text+0x474260>
 50b4bac:      	adrp	x0, 0xa433000
 50b4bb0:      	ldr	x0, [x0, #0x5a8]
 50b4bb4:      	bl	0x4590a60 <.text+0x474260>
 50b4bb8:      	adrp	x0, 0xa433000
 50b4bbc:      	ldr	x0, [x0, #0x5b0]
 50b4bc0:      	bl	0x4590a60 <.text+0x474260>
 50b4bc4:      	adrp	x0, 0xa433000
 50b4bc8:      	ldr	x0, [x0, #0x5b8]
 50b4bcc:      	bl	0x4590a60 <.text+0x474260>
 50b4bd0:      	adrp	x0, 0xa433000
 50b4bd4:      	ldr	x0, [x0, #0x5c0]
 50b4bd8:      	bl	0x4590a60 <.text+0x474260>
 50b4bdc:      	mov	w8, #0x1                // =1
 50b4be0:      	strb	w8, [x21, #0x2a7]
 50b4be4:      	mov	w0, #0x1cc1             // =7361
 50b4be8:      	mov	x1, xzr
 50b4bec:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 50b4bf0:      	tbz	w0, #0x0, 0x50b4c24 <__start_il2cpp+0x9fecc0>
 50b4bf4:      	mov	w0, #0x1cc1             // =7361
 50b4bf8:      	mov	x1, xzr
 50b4bfc:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 50b4c00:      	cbz	x0, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4c04:      	mov	x1, x19
 50b4c08:      	mov	w2, w20
 50b4c0c:      	mov	x3, xzr
 50b4c10:      	ldp	x20, x19, [sp, #0x30]
 50b4c14:      	ldp	x22, x21, [sp, #0x20]
 50b4c18:      	ldp	x24, x23, [sp, #0x10]
 50b4c1c:      	ldr	x30, [sp], #0x40
 50b4c20:      	b	0x4b7f99c <__start_il2cpp+0x4c9a38>
 50b4c24:      	adrp	x22, 0xa3e9000
 50b4c28:      	mov	x21, xzr
 50b4c2c:      	mov	w23, #0x20              // =32
 50b4c30:      	ldr	x22, [x22, #0x948]
 50b4c34:      	ldr	x0, [x22]
 50b4c38:      	ldr	x24, [x19, #0xc8]
 50b4c3c:      	ldr	w8, [x0, #0xe4]
 50b4c40:      	cbnz	w8, 0x50b4c48 <__start_il2cpp+0x9fece4>
 50b4c44:      	bl	0x4590be0 <.text+0x4743e0>
 50b4c48:      	mov	w0, w20
 50b4c4c:      	mov	w1, w21
 50b4c50:      	mov	x2, xzr
 50b4c54:      	bl	0x4cc9b4c <__start_il2cpp+0x613be8>
 50b4c58:      	cbz	x24, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4c5c:      	ldr	w8, [x24, #0x18]
 50b4c60:      	cmp	x21, x8
 50b4c64:      	b.hs	0x50b4f04 <__start_il2cpp+0x9fefa0>
 50b4c68:      	mov	x1, x0
 50b4c6c:      	str	x0, [x24, x23]
 50b4c70:      	add	x0, x24, x23
 50b4c74:      	bl	0x4590a04 <.text+0x474204>
 50b4c78:      	add	x21, x21, #0x1
 50b4c7c:      	add	x23, x23, #0x8
 50b4c80:      	cmp	x21, #0x6
 50b4c84:      	b.ne	0x50b4c34 <__start_il2cpp+0x9fecd0>
 50b4c88:      	mov	x21, #-0x6              // =-6
 50b4c8c:      	mov	w23, #0x20              // =32
 50b4c90:      	ldr	x0, [x22]
 50b4c94:      	ldr	x24, [x19, #0xd0]
 50b4c98:      	ldr	w8, [x0, #0xe4]
 50b4c9c:      	cbnz	w8, 0x50b4ca4 <__start_il2cpp+0x9fed40>
 50b4ca0:      	bl	0x4590be0 <.text+0x4743e0>
 50b4ca4:      	add	w1, w21, #0xc
 50b4ca8:      	mov	w0, w20
 50b4cac:      	mov	x2, xzr
 50b4cb0:      	bl	0x4cc9b4c <__start_il2cpp+0x613be8>
 50b4cb4:      	cbz	x24, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4cb8:      	ldr	w8, [x24, #0x18]
 50b4cbc:      	add	x9, x21, #0x6
 50b4cc0:      	cmp	x9, x8
 50b4cc4:      	b.hs	0x50b4f04 <__start_il2cpp+0x9fefa0>
 50b4cc8:      	mov	x1, x0
 50b4ccc:      	str	x0, [x24, x23]
 50b4cd0:      	add	x0, x24, x23
 50b4cd4:      	bl	0x4590a04 <.text+0x474204>
 50b4cd8:      	adds	x21, x21, #0x1
 50b4cdc:      	add	x23, x23, #0x8
 50b4ce0:      	b.lo	0x50b4c90 <__start_il2cpp+0x9fed2c>
 50b4ce4:      	mov	x21, #-0x3              // =-3
 50b4ce8:      	mov	w23, #0x20              // =32
 50b4cec:      	ldr	x0, [x22]
 50b4cf0:      	ldr	x24, [x19, #0xe0]
 50b4cf4:      	ldr	w8, [x0, #0xe4]
 50b4cf8:      	cbnz	w8, 0x50b4d00 <__start_il2cpp+0x9fed9c>
 50b4cfc:      	bl	0x4590be0 <.text+0x4743e0>
 50b4d00:      	add	w1, w21, #0x10
 50b4d04:      	mov	w0, w20
 50b4d08:      	mov	x2, xzr
 50b4d0c:      	bl	0x4cc9b4c <__start_il2cpp+0x613be8>
 50b4d10:      	cbz	x24, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4d14:      	ldr	w8, [x24, #0x18]
 50b4d18:      	add	x9, x21, #0x3
 50b4d1c:      	cmp	x9, x8
 50b4d20:      	b.hs	0x50b4f04 <__start_il2cpp+0x9fefa0>
 50b4d24:      	mov	x1, x0
 50b4d28:      	str	x0, [x24, x23]
 50b4d2c:      	add	x0, x24, x23
 50b4d30:      	bl	0x4590a04 <.text+0x474204>
 50b4d34:      	adds	x21, x21, #0x1
 50b4d38:      	add	x23, x23, #0x8
 50b4d3c:      	b.lo	0x50b4cec <__start_il2cpp+0x9fed88>
 50b4d40:      	ldr	x8, [x19, #0xe0]
 50b4d44:      	cbz	x8, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4d48:      	ldr	w9, [x8, #0x18]
 50b4d4c:      	cmp	w9, #0x2
 50b4d50:      	b.ls	0x50b4f04 <__start_il2cpp+0x9fefa0>
 50b4d54:      	ldr	x1, [x8, #0x30]
 50b4d58:      	mov	x0, x19
 50b4d5c:      	str	x1, [x0, #0xe8]!
 50b4d60:      	bl	0x4590a04 <.text+0x474204>
 50b4d64:      	ldr	x0, [x22]
 50b4d68:      	ldr	w8, [x0, #0xe4]
 50b4d6c:      	cbnz	w8, 0x50b4d74 <__start_il2cpp+0x9fee10>
 50b4d70:      	bl	0x4590be0 <.text+0x4743e0>
 50b4d74:      	mov	w0, w20
 50b4d78:      	mov	w1, #0xc                // =12
 50b4d7c:      	mov	x2, xzr
 50b4d80:      	bl	0x4cc9b4c <__start_il2cpp+0x613be8>
 50b4d84:      	mov	x21, x19
 50b4d88:      	mov	x1, x0
 50b4d8c:      	str	x0, [x21, #0xf0]!
 50b4d90:      	mov	x0, x21
 50b4d94:      	bl	0x4590a04 <.text+0x474204>
 50b4d98:      	mov	w8, #0x2710             // =10000
 50b4d9c:      	cmp	w20, w8
 50b4da0:      	b.ne	0x50b4ddc <__start_il2cpp+0x9fee78>
 50b4da4:      	ldr	x8, [x19, #0xe0]
 50b4da8:      	cbz	x8, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4dac:      	ldr	w9, [x8, #0x18]
 50b4db0:      	cbz	w9, 0x50b4f04 <__start_il2cpp+0x9fefa0>
 50b4db4:      	adrp	x9, 0xa433000
 50b4db8:      	ldr	x9, [x9, #0x5b8]
 50b4dbc:      	ldr	x0, [x8, #0x20]
 50b4dc0:      	ldr	x20, [x9]
 50b4dc4:      	cbz	x0, 0x50b4df0 <__start_il2cpp+0x9fee8c>
 50b4dc8:      	ldr	x8, [x0]
 50b4dcc:      	ldp	x9, x1, [x8, #0x168]
 50b4dd0:      	blr	x9
 50b4dd4:      	mov	x1, x0
 50b4dd8:      	b	0x50b4df4 <__start_il2cpp+0x9fee90>
 50b4ddc:      	ldp	x20, x19, [sp, #0x30]
 50b4de0:      	ldp	x22, x21, [sp, #0x20]
 50b4de4:      	ldp	x24, x23, [sp, #0x10]
 50b4de8:      	ldr	x30, [sp], #0x40
 50b4dec:      	ret
 50b4df0:      	mov	x1, xzr
 50b4df4:      	mov	x0, x20
 50b4df8:      	mov	x2, xzr
 50b4dfc:      	bl	0x8ccbe48 <__start_il2cpp+0x4615ee4>
 50b4e00:      	mov	x1, xzr
 50b4e04:      	bl	0x4735a9c <__start_il2cpp+0x7fb38>
 50b4e08:      	ldr	x8, [x19, #0xe0]
 50b4e0c:      	cbz	x8, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4e10:      	ldr	w9, [x8, #0x18]
 50b4e14:      	tst	w9, #0xfffffffe
 50b4e18:      	b.eq	0x50b4f04 <__start_il2cpp+0x9fefa0>
 50b4e1c:      	adrp	x9, 0xa433000
 50b4e20:      	ldr	x9, [x9, #0x5b0]
 50b4e24:      	ldr	x0, [x8, #0x28]
 50b4e28:      	ldr	x20, [x9]
 50b4e2c:      	cbz	x0, 0x50b4e44 <__start_il2cpp+0x9feee0>
 50b4e30:      	ldr	x8, [x0]
 50b4e34:      	ldp	x9, x1, [x8, #0x168]
 50b4e38:      	blr	x9
 50b4e3c:      	mov	x1, x0
 50b4e40:      	b	0x50b4e48 <__start_il2cpp+0x9feee4>
 50b4e44:      	mov	x1, xzr
 50b4e48:      	mov	x0, x20
 50b4e4c:      	mov	x2, xzr
 50b4e50:      	bl	0x8ccbe48 <__start_il2cpp+0x4615ee4>
 50b4e54:      	mov	x1, xzr
 50b4e58:      	bl	0x4735a9c <__start_il2cpp+0x7fb38>
 50b4e5c:      	ldr	x8, [x19, #0xe0]
 50b4e60:      	cbz	x8, 0x50b4f00 <__start_il2cpp+0x9fef9c>
 50b4e64:      	ldr	w9, [x8, #0x18]
 50b4e68:      	cmp	w9, #0x2
 50b4e6c:      	b.ls	0x50b4f04 <__start_il2cpp+0x9fefa0>
 50b4e70:      	adrp	x9, 0xa433000
 50b4e74:      	ldr	x9, [x9, #0x5c0]
 50b4e78:      	ldr	x0, [x8, #0x30]
 50b4e7c:      	ldr	x19, [x9]
 50b4e80:      	cbz	x0, 0x50b4e98 <__start_il2cpp+0x9fef34>
 50b4e84:      	ldr	x8, [x0]
 50b4e88:      	ldp	x9, x1, [x8, #0x168]
 50b4e8c:      	blr	x9
 50b4e90:      	mov	x1, x0
 50b4e94:      	b	0x50b4e9c <__start_il2cpp+0x9fef38>
 50b4e98:      	mov	x1, xzr
 50b4e9c:      	mov	x0, x19
 50b4ea0:      	mov	x2, xzr
 50b4ea4:      	bl	0x8ccbe48 <__start_il2cpp+0x4615ee4>
 50b4ea8:      	mov	x1, xzr
 50b4eac:      	bl	0x4735a9c <__start_il2cpp+0x7fb38>
 50b4eb0:      	adrp	x8, 0xa433000
 50b4eb4:      	ldr	x8, [x8, #0x5a8]
 50b4eb8:      	ldr	x0, [x21]
 50b4ebc:      	ldr	x19, [x8]
 50b4ec0:      	cbz	x0, 0x50b4ed8 <__start_il2cpp+0x9fef74>
 50b4ec4:      	ldr	x8, [x0]
 50b4ec8:      	ldp	x9, x1, [x8, #0x168]
 50b4ecc:      	blr	x9
 50b4ed0:      	mov	x1, x0
 50b4ed4:      	b	0x50b4edc <__start_il2cpp+0x9fef78>
 50b4ed8:      	mov	x1, xzr
 50b4edc:      	mov	x0, x19
 50b4ee0:      	mov	x2, xzr
 50b4ee4:      	bl	0x8ccbe48 <__start_il2cpp+0x4615ee4>
 50b4ee8:      	ldp	x20, x19, [sp, #0x30]
 50b4eec:      	mov	x1, xzr
 50b4ef0:      	ldp	x22, x21, [sp, #0x20]
 50b4ef4:      	ldp	x24, x23, [sp, #0x10]
 50b4ef8:      	ldr	x30, [sp], #0x40
 50b4efc:      	b	0x4735a9c <__start_il2cpp+0x7fb38>
 50b4f00:      	bl	0x4590d0c <.text+0x47450c>
 50b4f04:      	bl	0x4590d14 <.text+0x474514>
