
/mnt/data/research14/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4814950:      	sub	sp, sp, #0x50
 4814954:      	stp	x30, x23, [sp, #0x20]
 4814958:      	stp	x22, x21, [sp, #0x30]
 481495c:      	stp	x20, x19, [sp, #0x40]
 4814960:      	adrp	x20, 0xabcf000
 4814964:      	mov	x19, x0
 4814968:      	ldrb	w8, [x20, #0x426]
 481496c:      	tbnz	w8, #0x0, 0x48149c0 <__start_il2cpp+0x15ea5c>
 4814970:      	adrp	x0, 0xa3f1000
 4814974:      	ldr	x0, [x0, #0x8c0]
 4814978:      	bl	0x4590a60 <.text+0x474260>
 481497c:      	adrp	x0, 0xa3f1000
 4814980:      	ldr	x0, [x0, #0x8c8]
 4814984:      	bl	0x4590a60 <.text+0x474260>
 4814988:      	adrp	x0, 0xa3e9000
 481498c:      	ldr	x0, [x0, #0xac8]
 4814990:      	bl	0x4590a60 <.text+0x474260>
 4814994:      	adrp	x0, 0xa3e9000
 4814998:      	ldr	x0, [x0, #0x9d0]
 481499c:      	bl	0x4590a60 <.text+0x474260>
 48149a0:      	adrp	x0, 0xa3f1000
 48149a4:      	ldr	x0, [x0, #0x8d0]
 48149a8:      	bl	0x4590a60 <.text+0x474260>
 48149ac:      	adrp	x0, 0xa3f1000
 48149b0:      	ldr	x0, [x0, #0x8d8]
 48149b4:      	bl	0x4590a60 <.text+0x474260>
 48149b8:      	mov	w8, #0x1                // =1
 48149bc:      	strb	w8, [x20, #0x426]
 48149c0:      	ldr	w8, [x19]
 48149c4:      	ldr	x22, [x19, #0x20]
 48149c8:      	str	xzr, [sp, #0x18]
 48149cc:      	str	wzr, [sp, #0x10]
 48149d0:      	cbz	w8, 0x4814a9c <__start_il2cpp+0x15eb38>
 48149d4:      	adrp	x23, 0xa3e9000
 48149d8:      	ldr	x23, [x23, #0x9d0]
 48149dc:      	ldr	x0, [x23]
 48149e0:      	bl	0x7388e50 <__start_il2cpp+0x2cd2eec>
 48149e4:      	cbz	x0, 0x4814be4 <__start_il2cpp+0x15ec80>
 48149e8:      	mov	x1, xzr
 48149ec:      	bl	0x541e6f8 <__start_il2cpp+0xd68794>
 48149f0:      	cbz	x22, 0x4814be8 <__start_il2cpp+0x15ec84>
 48149f4:      	mov	x20, x0
 48149f8:      	ldr	x21, [x22, #0x10]
 48149fc:      	ldr	x0, [x23]
 4814a00:      	bl	0x7388e50 <__start_il2cpp+0x2cd2eec>
 4814a04:      	cbz	x0, 0x4814bec <__start_il2cpp+0x15ec88>
 4814a08:      	cbz	x20, 0x4814bf0 <__start_il2cpp+0x15ec8c>
 4814a0c:      	ldr	x8, [x20]
 4814a10:      	ldr	x2, [x0, #0x58]
 4814a14:      	ldr	x9, [x8, #0x1ba8]
 4814a18:      	ldr	x6, [x8, #0x1bb0]
 4814a1c:      	mov	x0, x20
 4814a20:      	mov	x1, x21
 4814a24:      	mov	x3, xzr
 4814a28:      	mov	x4, xzr
 4814a2c:      	mov	x5, xzr
 4814a30:      	blr	x9
 4814a34:      	cbz	x0, 0x4814bf4 <__start_il2cpp+0x15ec90>
 4814a38:      	adrp	x8, 0xa3f1000
 4814a3c:      	ldr	x8, [x8, #0x8c0]
 4814a40:      	ldr	x1, [x8]
 4814a44:      	bl	0x788a208 <__start_il2cpp+0x31d42a4>
 4814a48:      	adrp	x8, 0xa3f1000
 4814a4c:      	ldr	x8, [x8, #0x8d8]
 4814a50:      	str	x0, [sp, #0x18]
 4814a54:      	ldr	x1, [x8]
 4814a58:      	add	x0, sp, #0x18
 4814a5c:      	bl	0x749ec34 <__start_il2cpp+0x2de8cd0>
 4814a60:      	tbnz	w0, #0x0, 0x4814ab0 <__start_il2cpp+0x15eb4c>
 4814a64:      	ldr	x8, [sp, #0x18]
 4814a68:      	mov	x0, x19
 4814a6c:      	str	wzr, [x19]
 4814a70:      	str	x8, [x0, #0x28]!
 4814a74:      	mov	x1, xzr
 4814a78:      	bl	0x4590a04 <.text+0x474204>
 4814a7c:      	adrp	x8, 0xa3f1000
 4814a80:      	ldr	x8, [x8, #0x8c8]
 4814a84:      	ldr	x3, [x8]
 4814a88:      	add	x0, x19, #0x8
 4814a8c:      	add	x1, sp, #0x18
 4814a90:      	mov	x2, x19
 4814a94:      	bl	0x4826ae8 <__start_il2cpp+0x170b84>
 4814a98:      	b	0x4814bcc <__start_il2cpp+0x15ec68>
 4814a9c:      	ldr	x8, [x19, #0x28]
 4814aa0:      	mov	w9, #-0x1               // =-1
 4814aa4:      	str	xzr, [x19, #0x28]
 4814aa8:      	str	w9, [x19]
 4814aac:      	str	x8, [sp, #0x18]
 4814ab0:      	adrp	x8, 0xa3f1000
 4814ab4:      	ldr	x8, [x8, #0x8d0]
 4814ab8:      	ldr	x1, [x8]
 4814abc:      	add	x0, sp, #0x18
 4814ac0:      	bl	0x749ec74 <__start_il2cpp+0x2de8d10>
 4814ac4:      	mov	x20, x0
 4814ac8:      	cbz	x0, 0x4814be0 <__start_il2cpp+0x15ec7c>
 4814acc:      	ldr	w0, [x20, #0x18]
 4814ad0:      	mov	x1, xzr
 4814ad4:      	bl	0x5428284 <__start_il2cpp+0xd72320>
 4814ad8:      	tbz	w0, #0x0, 0x4814b0c <__start_il2cpp+0x15eba8>
 4814adc:      	cbz	x22, 0x4814bf8 <__start_il2cpp+0x15ec94>
 4814ae0:      	ldr	x1, [x20, #0x30]
 4814ae4:      	ldr	x2, [x22, #0x18]
 4814ae8:      	mov	w0, #0x56               // =86
 4814aec:      	bl	0x4808898 <__start_il2cpp+0x152934>
 4814af0:      	ldr	x8, [x22, #0x20]
 4814af4:      	cbz	x8, 0x4814b0c <__start_il2cpp+0x15eba8>
 4814af8:      	ldr	x0, [x8, #0x40]
 4814afc:      	ldr	x9, [x8, #0x18]
 4814b00:      	ldr	x2, [x8, #0x28]
 4814b04:      	mov	x1, x20
 4814b08:      	blr	x9
 4814b0c:      	ldr	x21, [x19, #0x8]
 4814b10:      	mov	w8, #-0x2               // =-2
 4814b14:      	str	w8, [x19]
 4814b18:      	cbz	x21, 0x4814b98 <__start_il2cpp+0x15ec34>
 4814b1c:      	adrp	x8, 0xa3e9000
 4814b20:      	ldr	x8, [x8, #0xac8]
 4814b24:      	ldr	x8, [x8]
 4814b28:      	ldr	x0, [x8, #0x20]
 4814b2c:      	add	x8, x0, #0x135
 4814b30:      	ldrh	w8, [x8]
 4814b34:      	tbnz	w8, #0x0, 0x4814b3c <__start_il2cpp+0x15ebd8>
 4814b38:      	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4814b3c:      	ldr	x8, [x0, #0xc0]
 4814b40:      	ldr	x1, [x8, #0x8]
 4814b44:      	add	x8, x1, #0x135
 4814b48:      	ldrh	w8, [x8]
 4814b4c:      	tbnz	w8, #0x0, 0x4814b5c <__start_il2cpp+0x15ebf8>
 4814b50:      	mov	x0, x1
 4814b54:      	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4814b58:      	mov	x1, x0
 4814b5c:      	ldr	x8, [x21]
 4814b60:      	ldrh	w9, [x8, #0x12e]
 4814b64:      	cbz	x9, 0x4814b88 <__start_il2cpp+0x15ec24>
 4814b68:      	ldr	x10, [x8, #0xb0]
 4814b6c:      	add	x10, x10, #0x8
 4814b70:      	ldur	x11, [x10, #-0x8]
 4814b74:      	cmp	x11, x1
 4814b78:      	b.eq	0x4814bac <__start_il2cpp+0x15ec48>
 4814b7c:      	subs	x9, x9, #0x1
 4814b80:      	add	x10, x10, #0x10
 4814b84:      	b.ne	0x4814b70 <__start_il2cpp+0x15ec0c>
 4814b88:      	mov	x0, x21
 4814b8c:      	mov	w2, #0x2                // =2
 4814b90:      	bl	0x45c9264 <JNI_OnUnload+0xe2f0>
 4814b94:      	b	0x4814bbc <__start_il2cpp+0x15ec58>
 4814b98:      	str	x20, [x19, #0x18]!
 4814b9c:      	mov	x0, x19
 4814ba0:      	mov	x1, x20
 4814ba4:      	bl	0x4590a04 <.text+0x474204>
 4814ba8:      	b	0x4814bcc <__start_il2cpp+0x15ec68>
 4814bac:      	ldr	w9, [x10]
 4814bb0:      	add	w9, w9, #0x2
 4814bb4:      	add	x8, x8, w9, sxtw #4
 4814bb8:      	add	x0, x8, #0x138
 4814bbc:      	ldp	x8, x2, [x0]
 4814bc0:      	mov	x0, x21
 4814bc4:      	mov	x1, x20
 4814bc8:      	blr	x8
 4814bcc:      	ldp	x20, x19, [sp, #0x40]
 4814bd0:      	ldp	x22, x21, [sp, #0x30]
 4814bd4:      	ldp	x30, x23, [sp, #0x20]
 4814bd8:      	add	sp, sp, #0x50
 4814bdc:      	ret
 4814be0:      	bl	0x4590d0c <.text+0x47450c>
 4814be4:      	bl	0x4590d0c <.text+0x47450c>
 4814be8:      	bl	0x4590d0c <.text+0x47450c>
 4814bec:      	bl	0x4590d0c <.text+0x47450c>
 4814bf0:      	bl	0x4590d0c <.text+0x47450c>
 4814bf4:      	bl	0x4590d0c <.text+0x47450c>
 4814bf8:      	bl	0x4590d0c <.text+0x47450c>
 4814bfc:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c00:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c04:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c08:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c0c:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c10:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c14:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c18:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c1c:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c20:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c24:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c28:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c2c:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c30:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c34:      	b	0x4814c38 <__start_il2cpp+0x15ecd4>
 4814c38:      	mov	x20, x0
 4814c3c:      	cmp	w1, #0x1
 4814c40:      	b.ne	0x4814cdc <__start_il2cpp+0x15ed78>
 4814c44:      	mov	x0, x20
 4814c48:      	bl	0x9d6b880 <__cxa_begin_catch@plt>
 4814c4c:      	mov	x20, x0
 4814c50:      	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4814c54:      	ldr	x0, [x0, #0xbf8]
 4814c58:      	bl	0x4590a74 <.text+0x474274>
 4814c5c:      	ldr	x8, [x20]
 4814c60:      	ldr	x1, [x8]
 4814c64:      	bl	0x4591114 <.text+0x474914>
 4814c68:      	tbz	w0, #0x0, 0x4814cb4 <__start_il2cpp+0x15ed50>
 4814c6c:      	ldrsw	x21, [sp, #0x10]
 4814c70:      	ldr	x20, [x20]
 4814c74:      	add	x8, sp, #0x8
 4814c78:      	str	x20, [x8, x21, lsl #3]
 4814c7c:      	add	w8, w21, #0x1
 4814c80:      	str	w8, [sp, #0x10]
 4814c84:      	bl	0x9d6b890 <__cxa_end_catch@plt>
 4814c88:      	mov	w8, #-0x2               // =-2
 4814c8c:      	adrp	x0, 0xa3e9000
 4814c90:      	str	w8, [x19], #0x8
 4814c94:      	ldr	x0, [x0, #0xae0]
 4814c98:      	bl	0x4590a74 <.text+0x474274>
 4814c9c:      	mov	x2, x0
 4814ca0:      	mov	x0, x19
 4814ca4:      	mov	x1, x20
 4814ca8:      	bl	0x4120444 <.text+0x3c44>
 4814cac:      	str	w21, [sp, #0x10]
 4814cb0:      	b	0x4814bcc <__start_il2cpp+0x15ec68>
 4814cb4:      	mov	w0, #0x8                // =8
 4814cb8:      	bl	0x9d6b8b0 <__cxa_allocate_exception@plt>
 4814cbc:      	ldr	x8, [x20]
 4814cc0:      	str	x8, [x0]
 4814cc4:      	adrp	x1, 0x9d71000 <__system_property_get@plt+0x31c0>
 4814cc8:      	add	x1, x1, #0xe58
 4814ccc:      	mov	x2, xzr
 4814cd0:      	bl	0x9d6b8c0 <__cxa_throw@plt>
 4814cd4:      	mov	x20, x0
 4814cd8:      	bl	0x9d6b890 <__cxa_end_catch@plt>
 4814cdc:      	mov	x0, x20
 4814ce0:      	bl	0x46b201c <__emutls_get_address+0xfcc>
 4814ce4:      	bl	0x411c860 <.text+0x60>
