
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4cc9b4c:      	sub	sp, sp, #0x70
 4cc9b50:      	stp	x30, x27, [sp, #0x20]
 4cc9b54:      	stp	x26, x25, [sp, #0x30]
 4cc9b58:      	stp	x24, x23, [sp, #0x40]
 4cc9b5c:      	stp	x22, x21, [sp, #0x50]
 4cc9b60:      	stp	x20, x19, [sp, #0x60]
 4cc9b64:      	adrp	x21, 0xabd4000
 4cc9b68:      	mov	w19, w1
 4cc9b6c:      	mov	w20, w0
 4cc9b70:      	ldrb	w8, [x21, #0x6f9]
 4cc9b74:      	tbnz	w8, #0x0, 0x4cc9bf8 <__start_il2cpp+0x613c94>
 4cc9b78:      	adrp	x0, 0xa3e9000
 4cc9b7c:      	ldr	x0, [x0, #0x948]
 4cc9b80:      	bl	0x4590a60 <.text+0x474260>
 4cc9b84:      	adrp	x0, 0xa41f000
 4cc9b88:      	ldr	x0, [x0, #0x40]
 4cc9b8c:      	bl	0x4590a60 <.text+0x474260>
 4cc9b90:      	adrp	x0, 0xa41f000
 4cc9b94:      	ldr	x0, [x0, #0xf8]
 4cc9b98:      	bl	0x4590a60 <.text+0x474260>
 4cc9b9c:      	adrp	x0, 0xa3ea000
 4cc9ba0:      	ldr	x0, [x0, #0x9d0]
 4cc9ba4:      	bl	0x4590a60 <.text+0x474260>
 4cc9ba8:      	adrp	x0, 0xa41d000
 4cc9bac:      	ldr	x0, [x0, #0xd18]
 4cc9bb0:      	bl	0x4590a60 <.text+0x474260>
 4cc9bb4:      	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4cc9bb8:      	ldr	x0, [x0, #0x4a8]
 4cc9bbc:      	bl	0x4590a60 <.text+0x474260>
 4cc9bc0:      	adrp	x0, 0xa418000
 4cc9bc4:      	ldr	x0, [x0, #0x1b8]
 4cc9bc8:      	bl	0x4590a60 <.text+0x474260>
 4cc9bcc:      	adrp	x0, 0xa3ea000
 4cc9bd0:      	ldr	x0, [x0, #0x570]
 4cc9bd4:      	bl	0x4590a60 <.text+0x474260>
 4cc9bd8:      	adrp	x0, 0xa41f000
 4cc9bdc:      	ldr	x0, [x0, #0x100]
 4cc9be0:      	bl	0x4590a60 <.text+0x474260>
 4cc9be4:      	adrp	x0, 0xa41f000
 4cc9be8:      	ldr	x0, [x0, #0x108]
 4cc9bec:      	bl	0x4590a60 <.text+0x474260>
 4cc9bf0:      	mov	w8, #0x1                // =1
 4cc9bf4:      	strb	w8, [x21, #0x6f9]
 4cc9bf8:      	mov	w0, #0x1c56             // =7254
 4cc9bfc:      	mov	x1, xzr
 4cc9c00:      	stp	xzr, xzr, [sp, #0x10]
 4cc9c04:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4cc9c08:      	tbz	w0, #0x0, 0x4cc9c44 <__start_il2cpp+0x613ce0>
 4cc9c0c:      	mov	w0, #0x1c56             // =7254
 4cc9c10:      	mov	x1, xzr
 4cc9c14:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4cc9c18:      	cbz	x0, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9c1c:      	mov	w1, w20
 4cc9c20:      	mov	w2, w19
 4cc9c24:      	mov	x3, xzr
 4cc9c28:      	ldp	x20, x19, [sp, #0x60]
 4cc9c2c:      	ldp	x22, x21, [sp, #0x50]
 4cc9c30:      	ldp	x24, x23, [sp, #0x40]
 4cc9c34:      	ldp	x26, x25, [sp, #0x30]
 4cc9c38:      	ldp	x30, x27, [sp, #0x20]
 4cc9c3c:      	add	sp, sp, #0x70
 4cc9c40:      	b	0x4b86990 <__start_il2cpp+0x4d0a2c>
 4cc9c44:      	adrp	x24, 0xa3e9000
 4cc9c48:      	ldr	x24, [x24, #0x948]
 4cc9c4c:      	ldr	x0, [x24]
 4cc9c50:      	ldr	w8, [x0, #0xe4]
 4cc9c54:      	cbnz	w8, 0x4cc9c5c <__start_il2cpp+0x613cf8>
 4cc9c58:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9c5c:      	mov	w0, w20
 4cc9c60:      	bl	0x4cc9aa0 <__start_il2cpp+0x613b3c>
 4cc9c64:      	ldr	x8, [x24]
 4cc9c68:      	ldr	x8, [x8, #0xb8]
 4cc9c6c:      	ldr	x8, [x8, #0x58]
 4cc9c70:      	cbz	x8, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9c74:      	adrp	x9, 0xa41d000
 4cc9c78:      	mov	x20, x0
 4cc9c7c:      	mov	x0, x8
 4cc9c80:      	ldr	x9, [x9, #0xd18]
 4cc9c84:      	mov	x1, x20
 4cc9c88:      	ldr	x2, [x9]
 4cc9c8c:      	bl	0x67afddc <__start_il2cpp+0x20f9e78>
 4cc9c90:      	tbnz	w0, #0x0, 0x4cc9e24 <__start_il2cpp+0x613ec0>
 4cc9c94:      	adrp	x8, 0xa41f000
 4cc9c98:      	mov	x1, x20
 4cc9c9c:      	mov	x2, xzr
 4cc9ca0:      	ldr	x8, [x8, #0x100]
 4cc9ca4:      	ldr	x0, [x8]
 4cc9ca8:      	bl	0x8ccbe48 <__start_il2cpp+0x4615ee4>
 4cc9cac:      	ldr	x8, [x24]
 4cc9cb0:      	mov	x21, x0
 4cc9cb4:      	ldr	w9, [x8, #0xe4]
 4cc9cb8:      	cbnz	w9, 0x4cc9cc4 <__start_il2cpp+0x613d60>
 4cc9cbc:      	mov	x0, x8
 4cc9cc0:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9cc4:      	mov	x0, x21
 4cc9cc8:      	mov	w1, #0x4                // =4
 4cc9ccc:      	bl	0x4cc8d44 <__start_il2cpp+0x612de0>
 4cc9cd0:      	cbz	x0, 0x4cc9d5c <__start_il2cpp+0x613df8>
 4cc9cd4:      	ldr	x8, [x0, #0x18]
 4cc9cd8:      	mov	x21, x0
 4cc9cdc:      	cbz	x8, 0x4cc9d5c <__start_il2cpp+0x613df8>
 4cc9ce0:      	cmp	w8, #0x1
 4cc9ce4:      	b.lt	0x4cc9df0 <__start_il2cpp+0x613e8c>
 4cc9ce8:      	adrp	x26, 0xa41f000
 4cc9cec:      	mov	x25, xzr
 4cc9cf0:      	add	x27, x21, #0x20
 4cc9cf4:      	ldr	x26, [x26, #0xf8]
 4cc9cf8:      	cmp	w25, w8
 4cc9cfc:      	b.hs	0x4cc9f04 <__start_il2cpp+0x613fa0>
 4cc9d00:      	ldr	x0, [x24]
 4cc9d04:      	ldr	x22, [x27, x25, lsl #3]
 4cc9d08:      	ldr	w8, [x0, #0xe4]
 4cc9d0c:      	cbnz	w8, 0x4cc9d18 <__start_il2cpp+0x613db4>
 4cc9d10:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9d14:      	ldr	x0, [x24]
 4cc9d18:      	cbz	x22, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9d1c:      	ldr	x8, [x0, #0xb8]
 4cc9d20:      	mov	x0, x22
 4cc9d24:      	mov	x1, xzr
 4cc9d28:      	ldr	x23, [x8, #0x48]
 4cc9d2c:      	bl	0x9a09064 <__start_il2cpp+0x5353100>
 4cc9d30:      	cbz	x23, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9d34:      	ldr	x3, [x26]
 4cc9d38:      	mov	x1, x0
 4cc9d3c:      	mov	x0, x23
 4cc9d40:      	mov	x2, x22
 4cc9d44:      	bl	0x81a8abc <__start_il2cpp+0x3af2b58>
 4cc9d48:      	ldr	w8, [x21, #0x18]
 4cc9d4c:      	add	x25, x25, #0x1
 4cc9d50:      	cmp	w25, w8
 4cc9d54:      	b.lt	0x4cc9cf8 <__start_il2cpp+0x613d94>
 4cc9d58:      	b	0x4cc9df0 <__start_il2cpp+0x613e8c>
 4cc9d5c:      	adrp	x8, 0xa41f000
 4cc9d60:      	mov	x1, x20
 4cc9d64:      	mov	x2, xzr
 4cc9d68:      	ldr	x8, [x8, #0x108]
 4cc9d6c:      	ldr	x0, [x8]
 4cc9d70:      	bl	0x8ccbe48 <__start_il2cpp+0x4615ee4>
 4cc9d74:      	adrp	x8, 0xa418000
 4cc9d78:      	ldr	x8, [x8, #0x1b8]
 4cc9d7c:      	ldr	x1, [x8]
 4cc9d80:      	bl	0x60d4970 <__start_il2cpp+0x1a1ea0c>
 4cc9d84:      	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4cc9d88:      	mov	x21, x0
 4cc9d8c:      	ldr	x8, [x8, #0x4a8]
 4cc9d90:      	ldr	x8, [x8]
 4cc9d94:      	ldr	w9, [x8, #0xe4]
 4cc9d98:      	cbnz	w9, 0x4cc9da4 <__start_il2cpp+0x613e40>
 4cc9d9c:      	mov	x0, x8
 4cc9da0:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9da4:      	mov	x0, x21
 4cc9da8:      	mov	x1, xzr
 4cc9dac:      	mov	x2, xzr
 4cc9db0:      	bl	0x9a03290 <__start_il2cpp+0x534d32c>
 4cc9db4:      	tbz	w0, #0x0, 0x4cc9df0 <__start_il2cpp+0x613e8c>
 4cc9db8:      	ldr	x0, [x24]
 4cc9dbc:      	ldr	w8, [x0, #0xe4]
 4cc9dc0:      	cbnz	w8, 0x4cc9dcc <__start_il2cpp+0x613e68>
 4cc9dc4:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9dc8:      	ldr	x0, [x24]
 4cc9dcc:      	ldr	x8, [x0, #0xb8]
 4cc9dd0:      	ldr	x0, [x8, #0x48]
 4cc9dd4:      	cbz	x0, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9dd8:      	adrp	x8, 0xa41f000
 4cc9ddc:      	mov	x1, x20
 4cc9de0:      	mov	x2, x21
 4cc9de4:      	ldr	x8, [x8, #0xf8]
 4cc9de8:      	ldr	x3, [x8]
 4cc9dec:      	bl	0x81a8abc <__start_il2cpp+0x3af2b58>
 4cc9df0:      	ldr	x0, [x24]
 4cc9df4:      	ldr	w8, [x0, #0xe4]
 4cc9df8:      	cbnz	w8, 0x4cc9e04 <__start_il2cpp+0x613ea0>
 4cc9dfc:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9e00:      	ldr	x0, [x24]
 4cc9e04:      	ldr	x8, [x0, #0xb8]
 4cc9e08:      	ldr	x0, [x8, #0x58]
 4cc9e0c:      	cbz	x0, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9e10:      	adrp	x8, 0xa3ea000
 4cc9e14:      	mov	x1, x20
 4cc9e18:      	ldr	x8, [x8, #0x9d0]
 4cc9e1c:      	ldr	x2, [x8]
 4cc9e20:      	bl	0x67b08cc <__start_il2cpp+0x20fa968>
 4cc9e24:      	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4cc9e28:      	add	x1, sp, #0xc
 4cc9e2c:      	ldr	x8, [x8, #0x4e0]
 4cc9e30:      	str	w19, [sp, #0xc]
 4cc9e34:      	ldr	x0, [x8, #0x48]
 4cc9e38:      	bl	0x4590be8 <.text+0x4743e8>
 4cc9e3c:      	adrp	x8, 0xa3ea000
 4cc9e40:      	mov	x2, x0
 4cc9e44:      	mov	x1, x20
 4cc9e48:      	ldr	x8, [x8, #0x570]
 4cc9e4c:      	mov	x3, xzr
 4cc9e50:      	ldr	x8, [x8]
 4cc9e54:      	mov	x0, x8
 4cc9e58:      	bl	0x8cdaab4 <__start_il2cpp+0x4624b50>
 4cc9e5c:      	ldr	x8, [x24]
 4cc9e60:      	mov	x19, x0
 4cc9e64:      	ldr	w9, [x8, #0xe4]
 4cc9e68:      	cbnz	w9, 0x4cc9e78 <__start_il2cpp+0x613f14>
 4cc9e6c:      	mov	x0, x8
 4cc9e70:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9e74:      	ldr	x8, [x24]
 4cc9e78:      	ldr	x8, [x8, #0xb8]
 4cc9e7c:      	ldr	x0, [x8, #0x48]
 4cc9e80:      	cbz	x0, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9e84:      	adrp	x21, 0xa41f000
 4cc9e88:      	add	x2, sp, #0x18
 4cc9e8c:      	mov	x1, x19
 4cc9e90:      	ldr	x21, [x21, #0x40]
 4cc9e94:      	ldr	x3, [x21]
 4cc9e98:      	bl	0x81aa638 <__start_il2cpp+0x3af46d4>
 4cc9e9c:      	tbz	w0, #0x0, 0x4cc9ea8 <__start_il2cpp+0x613f44>
 4cc9ea0:      	ldr	x0, [sp, #0x18]
 4cc9ea4:      	b	0x4cc9ee4 <__start_il2cpp+0x613f80>
 4cc9ea8:      	ldr	x0, [x24]
 4cc9eac:      	ldr	w8, [x0, #0xe4]
 4cc9eb0:      	cbnz	w8, 0x4cc9ebc <__start_il2cpp+0x613f58>
 4cc9eb4:      	bl	0x4590be0 <.text+0x4743e0>
 4cc9eb8:      	ldr	x0, [x24]
 4cc9ebc:      	ldr	x8, [x0, #0xb8]
 4cc9ec0:      	ldr	x0, [x8, #0x48]
 4cc9ec4:      	cbz	x0, 0x4cc9f00 <__start_il2cpp+0x613f9c>
 4cc9ec8:      	ldr	x3, [x21]
 4cc9ecc:      	add	x2, sp, #0x10
 4cc9ed0:      	mov	x1, x20
 4cc9ed4:      	bl	0x81aa638 <__start_il2cpp+0x3af46d4>
 4cc9ed8:      	ldr	x8, [sp, #0x10]
 4cc9edc:      	tst	w0, #0x1
 4cc9ee0:      	csel	x0, x8, xzr, ne
 4cc9ee4:      	ldp	x20, x19, [sp, #0x60]
 4cc9ee8:      	ldp	x22, x21, [sp, #0x50]
 4cc9eec:      	ldp	x24, x23, [sp, #0x40]
 4cc9ef0:      	ldp	x26, x25, [sp, #0x30]
 4cc9ef4:      	ldp	x30, x27, [sp, #0x20]
 4cc9ef8:      	add	sp, sp, #0x70
 4cc9efc:      	ret
 4cc9f00:      	bl	0x4590d0c <.text+0x47450c>
 4cc9f04:      	bl	0x4590d14 <.text+0x474514>
