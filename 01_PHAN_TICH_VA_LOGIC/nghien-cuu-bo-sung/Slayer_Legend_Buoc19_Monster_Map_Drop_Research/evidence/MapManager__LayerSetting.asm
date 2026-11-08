
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4ec08bc:      	str	x30, [sp, #-0x60]!
 4ec08c0:      	stp	x28, x27, [sp, #0x10]
 4ec08c4:      	stp	x26, x25, [sp, #0x20]
 4ec08c8:      	stp	x24, x23, [sp, #0x30]
 4ec08cc:      	stp	x22, x21, [sp, #0x40]
 4ec08d0:      	stp	x20, x19, [sp, #0x50]
 4ec08d4:      	adrp	x21, 0xabd5000
 4ec08d8:      	mov	x19, x1
 4ec08dc:      	mov	x20, x0
 4ec08e0:      	ldrb	w8, [x21, #0x46b]
 4ec08e4:      	tbnz	w8, #0x0, 0x4ec0914 <__start_il2cpp+0x80a9b0>
 4ec08e8:      	adrp	x0, 0xa3e9000
 4ec08ec:      	ldr	x0, [x0, #0x948]
 4ec08f0:      	bl	0x4590a60 <.text+0x474260>
 4ec08f4:      	adrp	x0, 0xa3e8000
 4ec08f8:      	ldr	x0, [x0, #0x288]
 4ec08fc:      	bl	0x4590a60 <.text+0x474260>
 4ec0900:      	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4ec0904:      	ldr	x0, [x0, #0x4a8]
 4ec0908:      	bl	0x4590a60 <.text+0x474260>
 4ec090c:      	mov	w8, #0x1                // =1
 4ec0910:      	strb	w8, [x21, #0x46b]
 4ec0914:      	mov	w0, #0x1c91             // =7313
 4ec0918:      	mov	x1, xzr
 4ec091c:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4ec0920:      	tbz	w0, #0x0, 0x4ec095c <__start_il2cpp+0x80a9f8>
 4ec0924:      	mov	w0, #0x1c91             // =7313
 4ec0928:      	mov	x1, xzr
 4ec092c:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4ec0930:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0934:      	mov	x1, x20
 4ec0938:      	mov	x2, x19
 4ec093c:      	mov	x3, xzr
 4ec0940:      	ldp	x20, x19, [sp, #0x50]
 4ec0944:      	ldp	x22, x21, [sp, #0x40]
 4ec0948:      	ldp	x24, x23, [sp, #0x30]
 4ec094c:      	ldp	x26, x25, [sp, #0x20]
 4ec0950:      	ldp	x28, x27, [sp, #0x10]
 4ec0954:      	ldr	x30, [sp], #0x60
 4ec0958:      	b	0x4b7e814 <__start_il2cpp+0x4c88b0>
 4ec095c:      	ldr	x8, [x20, #0x38]
 4ec0960:      	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0964:      	adrp	x24, 0xa3e9000
 4ec0968:      	adrp	x25, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4ec096c:      	adrp	x26, 0xa3e8000
 4ec0970:      	ldr	x24, [x24, #0x948]
 4ec0974:      	ldr	x25, [x25, #0x4a8]
 4ec0978:      	ldr	x26, [x26, #0x288]
 4ec097c:      	mov	x21, xzr
 4ec0980:      	ldrsw	x8, [x8, #0x18]
 4ec0984:      	cmp	x21, x8
 4ec0988:      	b.ge	0x4ec0b1c <__start_il2cpp+0x80abb8>
 4ec098c:      	ldr	x0, [x24]
 4ec0990:      	ldr	w8, [x0, #0xe4]
 4ec0994:      	cbnz	w8, 0x4ec099c <__start_il2cpp+0x80aa38>
 4ec0998:      	bl	0x4590be0 <.text+0x4743e0>
 4ec099c:      	mov	x0, x19
 4ec09a0:      	mov	w1, w21
 4ec09a4:      	mov	x2, xzr
 4ec09a8:      	bl	0x4cca6a4 <__start_il2cpp+0x614740>
 4ec09ac:      	ldr	x8, [x25]
 4ec09b0:      	mov	x22, x0
 4ec09b4:      	ldr	w9, [x8, #0xe4]
 4ec09b8:      	cbnz	w9, 0x4ec09c4 <__start_il2cpp+0x80aa60>
 4ec09bc:      	mov	x0, x8
 4ec09c0:      	bl	0x4590be0 <.text+0x4743e0>
 4ec09c4:      	mov	x0, x22
 4ec09c8:      	mov	x1, xzr
 4ec09cc:      	mov	x2, xzr
 4ec09d0:      	bl	0x9a03290 <__start_il2cpp+0x534d32c>
 4ec09d4:      	ldr	x8, [x20, #0x38]
 4ec09d8:      	tbz	w0, #0x0, 0x4ec0a98 <__start_il2cpp+0x80ab34>
 4ec09dc:      	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec09e0:      	ldr	w9, [x8, #0x18]
 4ec09e4:      	cmp	x21, x9
 4ec09e8:      	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec09ec:      	add	x8, x8, x21, lsl #3
 4ec09f0:      	ldr	x0, [x8, #0x20]
 4ec09f4:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec09f8:      	mov	x1, xzr
 4ec09fc:      	bl	0x9a006b0 <__start_il2cpp+0x534a74c>
 4ec0a00:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a04:      	mov	w1, #0x1                // =1
 4ec0a08:      	mov	x2, xzr
 4ec0a0c:      	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0a10:      	ldr	x27, [x20, #0x90]
 4ec0a14:      	cbz	x27, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a18:      	mov	x23, xzr
 4ec0a1c:      	mov	w28, #0x20              // =32
 4ec0a20:      	ldrsw	x8, [x27, #0x18]
 4ec0a24:      	cmp	x23, x8
 4ec0a28:      	b.ge	0x4ec0adc <__start_il2cpp+0x80ab78>
 4ec0a2c:      	ldr	x8, [x20, #0x38]
 4ec0a30:      	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a34:      	ldr	w9, [x8, #0x18]
 4ec0a38:      	cmp	x21, x9
 4ec0a3c:      	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0a40:      	add	x8, x8, x21, lsl #3
 4ec0a44:      	ldr	x0, [x8, #0x20]
 4ec0a48:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a4c:      	mov	w1, w23
 4ec0a50:      	mov	x2, xzr
 4ec0a54:      	bl	0x9a15b38 <__start_il2cpp+0x535fbd4>
 4ec0a58:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a5c:      	ldr	x1, [x26]
 4ec0a60:      	bl	0x5e88098 <__start_il2cpp+0x17d2134>
 4ec0a64:      	ldr	w8, [x27, #0x18]
 4ec0a68:      	cmp	x23, x8
 4ec0a6c:      	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0a70:      	add	x8, x27, x23, lsl #3
 4ec0a74:      	mov	x1, x0
 4ec0a78:      	str	x0, [x8, #0x20]
 4ec0a7c:      	add	x0, x27, x28
 4ec0a80:      	bl	0x4590a04 <.text+0x474204>
 4ec0a84:      	ldr	x27, [x20, #0x90]
 4ec0a88:      	add	x23, x23, #0x1
 4ec0a8c:      	add	x28, x28, #0x8
 4ec0a90:      	cbnz	x27, 0x4ec0a20 <__start_il2cpp+0x80aabc>
 4ec0a94:      	b	0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a98:      	cbz	x8, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0a9c:      	ldr	w9, [x8, #0x18]
 4ec0aa0:      	cmp	x21, x9
 4ec0aa4:      	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0aa8:      	add	x8, x8, x21, lsl #3
 4ec0aac:      	ldr	x0, [x8, #0x20]
 4ec0ab0:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0ab4:      	mov	x1, xzr
 4ec0ab8:      	bl	0x9a006b0 <__start_il2cpp+0x534a74c>
 4ec0abc:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0ac0:      	mov	w1, wzr
 4ec0ac4:      	mov	x2, xzr
 4ec0ac8:      	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4ec0acc:      	ldr	x8, [x20, #0x38]
 4ec0ad0:      	add	x21, x21, #0x1
 4ec0ad4:      	cbnz	x8, 0x4ec0980 <__start_il2cpp+0x80aa1c>
 4ec0ad8:      	b	0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0adc:      	mov	x23, xzr
 4ec0ae0:      	ldr	w8, [x27, #0x18]
 4ec0ae4:      	cmp	w23, w8
 4ec0ae8:      	b.ge	0x4ec0acc <__start_il2cpp+0x80ab68>
 4ec0aec:      	cmp	w23, w8
 4ec0af0:      	b.hs	0x4ec0b38 <__start_il2cpp+0x80abd4>
 4ec0af4:      	add	x8, x27, x23, lsl #3
 4ec0af8:      	ldr	x0, [x8, #0x20]
 4ec0afc:      	cbz	x0, 0x4ec0b18 <__start_il2cpp+0x80abb4>
 4ec0b00:      	mov	x1, x22
 4ec0b04:      	mov	x2, xzr
 4ec0b08:      	bl	0x99b2138 <__start_il2cpp+0x52fc1d4>
 4ec0b0c:      	ldr	x27, [x20, #0x90]
 4ec0b10:      	add	x23, x23, #0x1
 4ec0b14:      	cbnz	x27, 0x4ec0ae0 <__start_il2cpp+0x80ab7c>
 4ec0b18:      	bl	0x4590d0c <.text+0x47450c>
 4ec0b1c:      	ldp	x20, x19, [sp, #0x50]
 4ec0b20:      	ldp	x22, x21, [sp, #0x40]
 4ec0b24:      	ldp	x24, x23, [sp, #0x30]
 4ec0b28:      	ldp	x26, x25, [sp, #0x20]
 4ec0b2c:      	ldp	x28, x27, [sp, #0x10]
 4ec0b30:      	ldr	x30, [sp], #0x60
 4ec0b34:      	ret
 4ec0b38:      	bl	0x4590d14 <.text+0x474514>
