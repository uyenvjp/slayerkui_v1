
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 50f9804:      	str	d8, [sp, #-0x60]!
 50f9808:      	str	x29, [sp, #0x8]
 50f980c:      	stp	x30, x27, [sp, #0x10]
 50f9810:      	stp	x26, x25, [sp, #0x20]
 50f9814:      	stp	x24, x23, [sp, #0x30]
 50f9818:      	stp	x22, x21, [sp, #0x40]
 50f981c:      	stp	x20, x19, [sp, #0x50]
 50f9820:      	sub	sp, sp, #0x2f0
 50f9824:      	adrp	x20, 0xabd6000
 50f9828:      	mov	x19, x0
 50f982c:      	ldrb	w8, [x20, #0x52e]
 50f9830:      	tbnz	w8, #0x0, 0x50f98cc <__start_il2cpp+0xa43968>
 50f9834:      	adrp	x0, 0xa3ee000
 50f9838:      	ldr	x0, [x0, #0xe40]
 50f983c:      	bl	0x4590a60 <.text+0x474260>
 50f9840:      	adrp	x0, 0xa3ee000
 50f9844:      	ldr	x0, [x0, #0x838]
 50f9848:      	bl	0x4590a60 <.text+0x474260>
 50f984c:      	adrp	x0, 0xa3e9000
 50f9850:      	ldr	x0, [x0, #0x568]
 50f9854:      	bl	0x4590a60 <.text+0x474260>
 50f9858:      	adrp	x0, 0xa436000
 50f985c:      	ldr	x0, [x0, #0x990]
 50f9860:      	bl	0x4590a60 <.text+0x474260>
 50f9864:      	adrp	x0, 0xa3f2000
 50f9868:      	ldr	x0, [x0, #0x228]
 50f986c:      	bl	0x4590a60 <.text+0x474260>
 50f9870:      	adrp	x0, 0xa3e8000
 50f9874:      	ldr	x0, [x0, #0x600]
 50f9878:      	bl	0x4590a60 <.text+0x474260>
 50f987c:      	adrp	x0, 0xa414000
 50f9880:      	ldr	x0, [x0, #0xf68]
 50f9884:      	bl	0x4590a60 <.text+0x474260>
 50f9888:      	adrp	x0, 0xa41f000
 50f988c:      	ldr	x0, [x0, #0x758]
 50f9890:      	bl	0x4590a60 <.text+0x474260>
 50f9894:      	adrp	x0, 0xa3e9000
 50f9898:      	ldr	x0, [x0, #0x2e0]
 50f989c:      	bl	0x4590a60 <.text+0x474260>
 50f98a0:      	adrp	x0, 0xa436000
 50f98a4:      	ldr	x0, [x0, #0x998]
 50f98a8:      	bl	0x4590a60 <.text+0x474260>
 50f98ac:      	adrp	x0, 0xa436000
 50f98b0:      	ldr	x0, [x0, #0x9a0]
 50f98b4:      	bl	0x4590a60 <.text+0x474260>
 50f98b8:      	adrp	x0, 0xa436000
 50f98bc:      	ldr	x0, [x0, #0x9a8]
 50f98c0:      	bl	0x4590a60 <.text+0x474260>
 50f98c4:      	mov	w8, #0x1                // =1
 50f98c8:      	strb	w8, [x20, #0x52e]
 50f98cc:      	mov	w0, #0x9707             // =38663
 50f98d0:      	mov	x1, xzr
 50f98d4:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 50f98d8:      	tbz	w0, #0x0, 0x50f9918 <__start_il2cpp+0xa439b4>
 50f98dc:      	mov	w0, #0x9707             // =38663
 50f98e0:      	mov	x1, xzr
 50f98e4:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 50f98e8:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f98ec:      	mov	x1, x19
 50f98f0:      	mov	x2, xzr
 50f98f4:      	add	sp, sp, #0x2f0
 50f98f8:      	ldp	x20, x19, [sp, #0x50]
 50f98fc:      	ldr	x29, [sp, #0x8]
 50f9900:      	ldp	x22, x21, [sp, #0x40]
 50f9904:      	ldp	x24, x23, [sp, #0x30]
 50f9908:      	ldp	x26, x25, [sp, #0x20]
 50f990c:      	ldp	x30, x27, [sp, #0x10]
 50f9910:      	ldr	d8, [sp], #0x60
 50f9914:      	b	0x4b7e520 <__start_il2cpp+0x4c85bc>
 50f9918:      	adrp	x23, 0xa3f2000
 50f991c:      	ldr	x23, [x23, #0x228]
 50f9920:      	ldr	x0, [x23]
 50f9924:      	ldr	w8, [x0, #0xe4]
 50f9928:      	cbnz	w8, 0x50f9934 <__start_il2cpp+0xa439d0>
 50f992c:      	bl	0x4590be0 <.text+0x4743e0>
 50f9930:      	ldr	x0, [x23]
 50f9934:      	ldr	x8, [x0, #0xb8]
 50f9938:      	ldr	x8, [x8]
 50f993c:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9940:      	ldr	x24, [x8, #0x208]
 50f9944:      	movi	d0, #0000000000000000
 50f9948:      	mov	w8, #0x42c80000         // =1120403456
 50f994c:      	fmov	s1, w8
 50f9950:      	mov	x0, xzr
 50f9954:      	bl	0x99fb5c0 <__start_il2cpp+0x534565c>
 50f9958:      	adrp	x20, 0xa414000
 50f995c:      	ldr	x20, [x20, #0xf68]
 50f9960:      	ldr	x8, [x20]
 50f9964:      	ldr	x0, [x8, #0x20]
 50f9968:      	add	x8, x0, #0x135
 50f996c:      	ldrh	w8, [x8]
 50f9970:      	tbnz	w8, #0x0, 0x50f9978 <__start_il2cpp+0xa43a14>
 50f9974:      	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 50f9978:      	ldr	x8, [x0, #0xc0]
 50f997c:      	ldr	x0, [x8, #0x10]
 50f9980:      	add	x8, x0, #0x135
 50f9984:      	ldrh	w8, [x8]
 50f9988:      	tbnz	w8, #0x0, 0x50f9990 <__start_il2cpp+0xa43a2c>
 50f998c:      	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 50f9990:      	ldr	x8, [x0, #0xb8]
 50f9994:      	ldr	x0, [x8]
 50f9998:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f999c:      	mov	x1, xzr
 50f99a0:      	add	x22, sp, #0x130
 50f99a4:      	bl	0x53c6fd4 <__start_il2cpp+0xd11070>
 50f99a8:      	tbz	w0, #0x0, 0x50f9ae8 <__start_il2cpp+0xa43b84>
 50f99ac:      	ldr	x8, [x20]
 50f99b0:      	ldr	x0, [x8, #0x20]
 50f99b4:      	add	x8, x0, #0x135
 50f99b8:      	ldrh	w8, [x8]
 50f99bc:      	tbnz	w8, #0x0, 0x50f99c4 <__start_il2cpp+0xa43a60>
 50f99c0:      	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 50f99c4:      	ldr	x8, [x0, #0xc0]
 50f99c8:      	ldr	x0, [x8, #0x10]
 50f99cc:      	add	x8, x0, #0x135
 50f99d0:      	ldrh	w8, [x8]
 50f99d4:      	tbnz	w8, #0x0, 0x50f99dc <__start_il2cpp+0xa43a78>
 50f99d8:      	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 50f99dc:      	ldr	x8, [x0, #0xb8]
 50f99e0:      	ldr	x8, [x8]
 50f99e4:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f99e8:      	ldr	x8, [x8, #0x48]
 50f99ec:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f99f0:      	ldr	w8, [x8, #0x28]
 50f99f4:      	cmp	w8, #0x2
 50f99f8:      	b.ne	0x50f9ae8 <__start_il2cpp+0xa43b84>
 50f99fc:      	adrp	x25, 0xa41f000
 50f9a00:      	add	x26, x24, #0x228
 50f9a04:      	mov	w27, #0xa               // =10
 50f9a08:      	ldr	x25, [x25, #0x758]
 50f9a0c:      	ldr	x8, [x25]
 50f9a10:      	mov	x0, x19
 50f9a14:      	mov	x1, xzr
 50f9a18:      	ldr	x8, [x8, #0xb8]
 50f9a1c:      	ldr	x20, [x8]
 50f9a20:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9a24:      	ldr	x8, [x23]
 50f9a28:      	mov	x21, x0
 50f9a2c:      	ldr	w9, [x8, #0xe4]
 50f9a30:      	cbnz	w9, 0x50f9a40 <__start_il2cpp+0xa43adc>
 50f9a34:      	mov	x0, x8
 50f9a38:      	bl	0x4590be0 <.text+0x4743e0>
 50f9a3c:      	ldr	x8, [x23]
 50f9a40:      	ldr	x8, [x8, #0xb8]
 50f9a44:      	ldr	x0, [x8]
 50f9a48:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9a4c:      	mov	x1, xzr
 50f9a50:      	bl	0x4e513b4 <__start_il2cpp+0x79b450>
 50f9a54:      	cbz	x20, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9a58:      	mov	x3, x0
 50f9a5c:      	mov	x4, x1
 50f9a60:      	mov	x0, x20
 50f9a64:      	mov	x1, x21
 50f9a68:      	mov	w2, #0x4                // =4
 50f9a6c:      	mov	x5, xzr
 50f9a70:      	bl	0x4ec6228 <__start_il2cpp+0x8102c4>
 50f9a74:      	ldr	x8, [x25]
 50f9a78:      	mov	x0, x19
 50f9a7c:      	mov	x1, xzr
 50f9a80:      	ldr	x8, [x8, #0xb8]
 50f9a84:      	ldr	x20, [x8]
 50f9a88:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9a8c:      	cbz	x24, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9a90:      	ldp	q0, q1, [x26]
 50f9a94:      	mov	x21, x0
 50f9a98:      	add	x0, sp, #0x2b0
 50f9a9c:      	mov	x1, xzr
 50f9aa0:      	stp	q0, q1, [x22, #0x180]
 50f9aa4:      	ldp	q0, q2, [x26, #0x20]
 50f9aa8:      	stp	q0, q2, [x22, #0x1a0]
 50f9aac:      	bl	0x4b52900 <__start_il2cpp+0x49c99c>
 50f9ab0:      	cbz	x20, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9ab4:      	ldr	w6, [x24, #0x20]
 50f9ab8:      	mov	x4, x0
 50f9abc:      	mov	x0, x20
 50f9ac0:      	mov	x1, x21
 50f9ac4:      	mov	w2, #0x4                // =4
 50f9ac8:      	mov	w3, #0x18               // =24
 50f9acc:      	mov	w5, #0x5                // =5
 50f9ad0:      	mov	w7, wzr
 50f9ad4:      	str	xzr, [sp]
 50f9ad8:      	bl	0x4ec6618 <__start_il2cpp+0x8106b4>
 50f9adc:      	subs	w27, w27, #0x1
 50f9ae0:      	b.ne	0x50f9a0c <__start_il2cpp+0xa43aa8>
 50f9ae4:      	b	0x50f9bc4 <__start_il2cpp+0xa43c60>
 50f9ae8:      	adrp	x25, 0xa41f000
 50f9aec:      	mov	x0, x19
 50f9af0:      	mov	x1, xzr
 50f9af4:      	ldr	x25, [x25, #0x758]
 50f9af8:      	ldr	x8, [x25]
 50f9afc:      	ldr	x8, [x8, #0xb8]
 50f9b00:      	ldr	x20, [x8]
 50f9b04:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9b08:      	ldr	x8, [x23]
 50f9b0c:      	mov	x21, x0
 50f9b10:      	ldr	w9, [x8, #0xe4]
 50f9b14:      	cbnz	w9, 0x50f9b24 <__start_il2cpp+0xa43bc0>
 50f9b18:      	mov	x0, x8
 50f9b1c:      	bl	0x4590be0 <.text+0x4743e0>
 50f9b20:      	ldr	x8, [x23]
 50f9b24:      	ldr	x8, [x8, #0xb8]
 50f9b28:      	ldr	x0, [x8]
 50f9b2c:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9b30:      	mov	x1, xzr
 50f9b34:      	bl	0x4e513b4 <__start_il2cpp+0x79b450>
 50f9b38:      	cbz	x20, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9b3c:      	mov	x3, x0
 50f9b40:      	mov	x4, x1
 50f9b44:      	mov	x0, x20
 50f9b48:      	mov	x1, x21
 50f9b4c:      	mov	w2, wzr
 50f9b50:      	mov	x5, xzr
 50f9b54:      	bl	0x4ec6228 <__start_il2cpp+0x8102c4>
 50f9b58:      	ldr	x8, [x25]
 50f9b5c:      	mov	x0, x19
 50f9b60:      	mov	x1, xzr
 50f9b64:      	ldr	x8, [x8, #0xb8]
 50f9b68:      	ldr	x20, [x8]
 50f9b6c:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9b70:      	cbz	x24, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9b74:      	add	x8, x24, #0x228
 50f9b78:      	mov	x21, x0
 50f9b7c:      	add	x0, sp, #0x270
 50f9b80:      	ldp	q0, q1, [x8]
 50f9b84:      	mov	x1, xzr
 50f9b88:      	stp	q0, q1, [x22, #0x140]
 50f9b8c:      	ldp	q0, q2, [x8, #0x20]
 50f9b90:      	stp	q0, q2, [x22, #0x160]
 50f9b94:      	bl	0x4b52900 <__start_il2cpp+0x49c99c>
 50f9b98:      	cbz	x20, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9b9c:      	ldr	w6, [x24, #0x20]
 50f9ba0:      	mov	x4, x0
 50f9ba4:      	mov	x0, x20
 50f9ba8:      	mov	x1, x21
 50f9bac:      	mov	w2, wzr
 50f9bb0:      	mov	w3, #0x18               // =24
 50f9bb4:      	mov	w5, #0x5                // =5
 50f9bb8:      	mov	w7, wzr
 50f9bbc:      	str	xzr, [sp]
 50f9bc0:      	bl	0x4ec6618 <__start_il2cpp+0x8106b4>
 50f9bc4:      	adrp	x23, 0xa3e9000
 50f9bc8:      	ldr	x23, [x23, #0x2e0]
 50f9bcc:      	ldr	x0, [x23]
 50f9bd0:      	ldr	w8, [x0, #0xe4]
 50f9bd4:      	cbnz	w8, 0x50f9bdc <__start_il2cpp+0xa43c78>
 50f9bd8:      	bl	0x4590be0 <.text+0x4743e0>
 50f9bdc:      	fmov	s0, #0.50000000
 50f9be0:      	mov	x0, xzr
 50f9be4:      	bl	0x4d18120 <__start_il2cpp+0x6621bc>
 50f9be8:      	tbz	w0, #0x0, 0x50f9c5c <__start_il2cpp+0xa43cf8>
 50f9bec:      	add	x8, x24, #0x1f8
 50f9bf0:      	add	x0, sp, #0x240
 50f9bf4:      	mov	x1, xzr
 50f9bf8:      	ldp	q0, q1, [x8]
 50f9bfc:      	ldr	q2, [x8, #0x20]
 50f9c00:      	str	q2, [x22, #0x130]
 50f9c04:      	stp	q0, q1, [x22, #0x110]
 50f9c08:      	bl	0x46e2dcc <__start_il2cpp+0x2ce68>
 50f9c0c:      	adrp	x8, 0xa41f000
 50f9c10:      	mov	w21, w0
 50f9c14:      	mov	x0, x19
 50f9c18:      	ldr	x8, [x8, #0x758]
 50f9c1c:      	mov	x1, xzr
 50f9c20:      	ldr	x8, [x8]
 50f9c24:      	ldr	x8, [x8, #0xb8]
 50f9c28:      	ldr	x20, [x8]
 50f9c2c:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9c30:      	cbz	x20, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9c34:      	ldr	w6, [x24, #0x20]
 50f9c38:      	sxtw	x4, w21
 50f9c3c:      	mov	x1, x0
 50f9c40:      	mov	x0, x20
 50f9c44:      	mov	w2, wzr
 50f9c48:      	mov	w3, #0x4                // =4
 50f9c4c:      	mov	w5, #0x5                // =5
 50f9c50:      	mov	w7, wzr
 50f9c54:      	str	xzr, [sp]
 50f9c58:      	bl	0x4ec6618 <__start_il2cpp+0x8106b4>
 50f9c5c:      	add	x8, x24, #0x108
 50f9c60:      	add	x0, sp, #0x210
 50f9c64:      	mov	x1, xzr
 50f9c68:      	ldp	q0, q1, [x8]
 50f9c6c:      	ldr	q2, [x8, #0x20]
 50f9c70:      	str	q2, [x22, #0x100]
 50f9c74:      	stp	q0, q1, [x22, #0xe0]
 50f9c78:      	bl	0x46e2dcc <__start_il2cpp+0x2ce68>
 50f9c7c:      	ldr	x8, [x23]
 50f9c80:      	mov	w20, w0
 50f9c84:      	ldr	w9, [x8, #0xe4]
 50f9c88:      	cbnz	w9, 0x50f9c94 <__start_il2cpp+0xa43d30>
 50f9c8c:      	mov	x0, x8
 50f9c90:      	bl	0x4590be0 <.text+0x4743e0>
 50f9c94:      	fmov	s0, #10.00000000
 50f9c98:      	mov	x0, xzr
 50f9c9c:      	bl	0x4d18120 <__start_il2cpp+0x6621bc>
 50f9ca0:      	tbz	w0, #0x0, 0x50f9d80 <__start_il2cpp+0xa43e1c>
 50f9ca4:      	ldr	x8, [x19, #0x138]
 50f9ca8:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9cac:      	ldr	q0, [x8, #0xdc0]
 50f9cb0:      	ldr	q1, [x8, #0xdd0]
 50f9cb4:      	add	x0, sp, #0x1e0
 50f9cb8:      	ldr	q2, [x8, #0xde0]
 50f9cbc:      	mov	x1, xzr
 50f9cc0:      	stp	q0, q1, [x22, #0xb0]
 50f9cc4:      	str	q2, [x22, #0xd0]
 50f9cc8:      	bl	0x46e2dcc <__start_il2cpp+0x2ce68>
 50f9ccc:      	mov	w8, w0
 50f9cd0:      	add	w9, w20, w20, lsl #1
 50f9cd4:      	ldr	x0, [x19, #0x138]
 50f9cd8:      	cmp	w8, #0x1
 50f9cdc:      	csel	w21, w20, w9, lt
 50f9ce0:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9ce4:      	mov	w1, #0x3                // =3
 50f9ce8:      	mov	x2, xzr
 50f9cec:      	bl	0x4d5c4fc <__start_il2cpp+0x6a6598>
 50f9cf0:      	tbz	w0, #0x0, 0x50f9d34 <__start_il2cpp+0xa43dd0>
 50f9cf4:      	adrp	x20, 0xa3e9000
 50f9cf8:      	ldr	x20, [x20, #0x568]
 50f9cfc:      	ldr	x0, [x20]
 50f9d00:      	ldr	w8, [x0, #0xe4]
 50f9d04:      	cbnz	w8, 0x50f9d10 <__start_il2cpp+0xa43dac>
 50f9d08:      	bl	0x4590be0 <.text+0x4743e0>
 50f9d0c:      	ldr	x0, [x20]
 50f9d10:      	ldr	x8, [x0, #0xb8]
 50f9d14:      	mov	w9, #0x851f             // =34079
 50f9d18:      	movk	w9, #0x51eb, lsl #16
 50f9d1c:      	ldr	w8, [x8, #0x150]
 50f9d20:      	mul	w8, w8, w21
 50f9d24:      	smull	x8, w8, w9
 50f9d28:      	lsr	x9, x8, #63
 50f9d2c:      	asr	x8, x8, #37
 50f9d30:      	add	w21, w8, w9
 50f9d34:      	adrp	x8, 0xa41f000
 50f9d38:      	mov	x0, x19
 50f9d3c:      	mov	x1, xzr
 50f9d40:      	ldr	x8, [x8, #0x758]
 50f9d44:      	ldr	x8, [x8]
 50f9d48:      	ldr	x8, [x8, #0xb8]
 50f9d4c:      	ldr	x20, [x8]
 50f9d50:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9d54:      	cbz	x20, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9d58:      	ldr	w6, [x24, #0x20]
 50f9d5c:      	sxtw	x4, w21
 50f9d60:      	mov	x1, x0
 50f9d64:      	mov	x0, x20
 50f9d68:      	mov	w2, wzr
 50f9d6c:      	mov	w3, #0x6                // =6
 50f9d70:      	mov	w5, #0x5                // =5
 50f9d74:      	mov	w7, wzr
 50f9d78:      	str	xzr, [sp]
 50f9d7c:      	bl	0x4ec6618 <__start_il2cpp+0x8106b4>
 50f9d80:      	add	x0, sp, #0x198
 50f9d84:      	add	x1, x24, #0x180
 50f9d88:      	mov	w2, #0x48               // =72
 50f9d8c:      	bl	0x9d6b8f0 <memcpy@plt>
 50f9d90:      	add	x0, sp, #0x198
 50f9d94:      	mov	x1, xzr
 50f9d98:      	bl	0x4b51d28 <__start_il2cpp+0x49bdc4>
 50f9d9c:      	ldr	x8, [x19, #0x138]
 50f9da0:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9da4:      	fmov	s8, s0
 50f9da8:      	ldr	q0, [x8, #0xdf0]
 50f9dac:      	ldr	q1, [x8, #0xe00]
 50f9db0:      	ldr	q2, [x8, #0xe10]
 50f9db4:      	add	x0, sp, #0x160
 50f9db8:      	mov	x1, xzr
 50f9dbc:      	stp	q0, q1, [x22, #0x30]
 50f9dc0:      	str	q2, [x22, #0x50]
 50f9dc4:      	bl	0x46e2dcc <__start_il2cpp+0x2ce68>
 50f9dc8:      	fadd	s0, s8, s8
 50f9dcc:      	cmp	w0, #0x1
 50f9dd0:      	ldr	x0, [x23]
 50f9dd4:      	ldr	w8, [x0, #0xe4]
 50f9dd8:      	fcsel	s8, s8, s0, lt
 50f9ddc:      	cbnz	w8, 0x50f9de4 <__start_il2cpp+0xa43e80>
 50f9de0:      	bl	0x4590be0 <.text+0x4743e0>
 50f9de4:      	fmov	s0, s8
 50f9de8:      	mov	x0, xzr
 50f9dec:      	bl	0x4d18120 <__start_il2cpp+0x6621bc>
 50f9df0:      	tbz	w0, #0x0, 0x50f9fe8 <__start_il2cpp+0xa44084>
 50f9df4:      	add	x8, x24, #0x1c8
 50f9df8:      	add	x0, sp, #0x130
 50f9dfc:      	mov	x1, xzr
 50f9e00:      	ldp	q0, q1, [x8]
 50f9e04:      	ldr	q2, [x8, #0x20]
 50f9e08:      	str	q2, [x22, #0x20]
 50f9e0c:      	stp	q0, q1, [x22]
 50f9e10:      	bl	0x46e2dcc <__start_il2cpp+0x2ce68>
 50f9e14:      	adrp	x8, 0xa41f000
 50f9e18:      	mov	w20, w0
 50f9e1c:      	mov	x0, x19
 50f9e20:      	ldr	x8, [x8, #0x758]
 50f9e24:      	ldr	w22, [x24, #0x20]
 50f9e28:      	mov	x1, xzr
 50f9e2c:      	ldr	x8, [x8]
 50f9e30:      	ldr	x8, [x8, #0xb8]
 50f9e34:      	ldr	x21, [x8]
 50f9e38:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50f9e3c:      	mov	w8, #0xcccd             // =52429
 50f9e40:      	mov	w9, #0x6666             // =26214
 50f9e44:      	mov	x1, x0
 50f9e48:      	movk	w8, #0xcccc, lsl #16
 50f9e4c:      	movk	w9, #0xe666, lsl #16
 50f9e50:      	madd	w8, w22, w8, w9
 50f9e54:      	mov	w9, #0x33333333         // =858993459
 50f9e58:      	cmp	w8, w9
 50f9e5c:      	b.lo	0x50f9e6c <__start_il2cpp+0xa43f08>
 50f9e60:      	cbz	x21, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9e64:      	mov	w3, #0x64               // =100
 50f9e68:      	b	0x50f9e74 <__start_il2cpp+0xa43f10>
 50f9e6c:      	cbz	x21, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9e70:      	mov	w3, #0x65               // =101
 50f9e74:      	ldr	w6, [x24, #0x20]
 50f9e78:      	sxtw	x4, w20
 50f9e7c:      	mov	x0, x21
 50f9e80:      	mov	w2, wzr
 50f9e84:      	mov	w5, #0x5                // =5
 50f9e88:      	mov	w7, wzr
 50f9e8c:      	str	xzr, [sp]
 50f9e90:      	bl	0x4ec6618 <__start_il2cpp+0x8106b4>
 50f9e94:      	fmov	s0, #10.00000000
 50f9e98:      	fcmp	s8, s0
 50f9e9c:      	b.lt	0x50f9f40 <__start_il2cpp+0xa43fdc>
 50f9ea0:      	adrp	x8, 0xa3ee000
 50f9ea4:      	ldr	x8, [x8, #0xe40]
 50f9ea8:      	ldr	x0, [x8]
 50f9eac:      	ldr	w8, [x0, #0xe4]
 50f9eb0:      	cbnz	w8, 0x50f9eb8 <__start_il2cpp+0xa43f54>
 50f9eb4:      	bl	0x4590be0 <.text+0x4743e0>
 50f9eb8:      	mov	w0, #0x8                // =8
 50f9ebc:      	mov	x1, xzr
 50f9ec0:      	bl	0x50d14d8 <__start_il2cpp+0xa1b574>
 50f9ec4:      	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 50f9ec8:      	add	x1, sp, #0x12c
 50f9ecc:      	ldr	x8, [x8, #0x4e0]
 50f9ed0:      	ldr	w9, [x24, #0x24]
 50f9ed4:      	ldr	x0, [x8, #0x48]
 50f9ed8:      	str	w9, [sp, #0x12c]
 50f9edc:      	bl	0x4590be8 <.text+0x4743e8>
 50f9ee0:      	adrp	x8, 0xa436000
 50f9ee4:      	mov	x1, x0
 50f9ee8:      	mov	x2, xzr
 50f9eec:      	ldr	x8, [x8, #0x9a0]
 50f9ef0:      	ldr	x8, [x8]
 50f9ef4:      	mov	x0, x8
 50f9ef8:      	bl	0x8cc8c84 <__start_il2cpp+0x4612d20>
 50f9efc:      	adrp	x22, 0xa3e9000
 50f9f00:      	mov	x21, x0
 50f9f04:      	ldr	x22, [x22, #0x568]
 50f9f08:      	ldr	x8, [x22]
 50f9f0c:      	ldr	w9, [x8, #0xe4]
 50f9f10:      	cbnz	w9, 0x50f9f20 <__start_il2cpp+0xa43fbc>
 50f9f14:      	mov	x0, x8
 50f9f18:      	bl	0x4590be0 <.text+0x4743e0>
 50f9f1c:      	ldr	x8, [x22]
 50f9f20:      	ldr	x8, [x8, #0xb8]
 50f9f24:      	ldr	x0, [x8]
 50f9f28:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9f2c:      	fmov	s0, s8
 50f9f30:      	mov	w1, #0x6                // =6
 50f9f34:      	mov	x2, x21
 50f9f38:      	mov	x3, xzr
 50f9f3c:      	bl	0x4d4d0fc <__start_il2cpp+0x697198>
 50f9f40:      	cmp	w20, #0x14
 50f9f44:      	b.lt	0x50f9fe8 <__start_il2cpp+0xa44084>
 50f9f48:      	adrp	x8, 0xa3ee000
 50f9f4c:      	ldr	x8, [x8, #0xe40]
 50f9f50:      	ldr	x0, [x8]
 50f9f54:      	ldr	w8, [x0, #0xe4]
 50f9f58:      	cbnz	w8, 0x50f9f60 <__start_il2cpp+0xa43ffc>
 50f9f5c:      	bl	0x4590be0 <.text+0x4743e0>
 50f9f60:      	mov	w0, #0x8                // =8
 50f9f64:      	mov	x1, xzr
 50f9f68:      	bl	0x50d14d8 <__start_il2cpp+0xa1b574>
 50f9f6c:      	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 50f9f70:      	add	x1, sp, #0x12c
 50f9f74:      	ldr	x8, [x8, #0x4e0]
 50f9f78:      	ldr	w9, [x24, #0x24]
 50f9f7c:      	ldr	x0, [x8, #0x48]
 50f9f80:      	str	w9, [sp, #0x12c]
 50f9f84:      	bl	0x4590be8 <.text+0x4743e8>
 50f9f88:      	adrp	x8, 0xa436000
 50f9f8c:      	mov	x1, x0
 50f9f90:      	mov	x2, xzr
 50f9f94:      	ldr	x8, [x8, #0x9a8]
 50f9f98:      	ldr	x8, [x8]
 50f9f9c:      	mov	x0, x8
 50f9fa0:      	bl	0x8cc8c84 <__start_il2cpp+0x4612d20>
 50f9fa4:      	adrp	x22, 0xa3e9000
 50f9fa8:      	mov	x21, x0
 50f9fac:      	ldr	x22, [x22, #0x568]
 50f9fb0:      	ldr	x8, [x22]
 50f9fb4:      	ldr	w9, [x8, #0xe4]
 50f9fb8:      	cbnz	w9, 0x50f9fc8 <__start_il2cpp+0xa44064>
 50f9fbc:      	mov	x0, x8
 50f9fc0:      	bl	0x4590be0 <.text+0x4743e0>
 50f9fc4:      	ldr	x8, [x22]
 50f9fc8:      	ldr	x8, [x8, #0xb8]
 50f9fcc:      	ldr	x0, [x8]
 50f9fd0:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50f9fd4:      	scvtf	s0, w20
 50f9fd8:      	mov	w1, #0x5                // =5
 50f9fdc:      	mov	x2, x21
 50f9fe0:      	mov	x3, xzr
 50f9fe4:      	bl	0x4d4d0fc <__start_il2cpp+0x697198>
 50f9fe8:      	add	x0, sp, #0xe0
 50f9fec:      	add	x1, x24, #0x138
 50f9ff0:      	mov	w2, #0x48               // =72
 50f9ff4:      	bl	0x9d6b8f0 <memcpy@plt>
 50f9ff8:      	add	x0, sp, #0xe0
 50f9ffc:      	mov	x1, xzr
 50fa000:      	bl	0x4b51d28 <__start_il2cpp+0x49bdc4>
 50fa004:      	ldr	x0, [x23]
 50fa008:      	fmov	s8, s0
 50fa00c:      	ldr	w8, [x0, #0xe4]
 50fa010:      	cbnz	w8, 0x50fa018 <__start_il2cpp+0xa440b4>
 50fa014:      	bl	0x4590be0 <.text+0x4743e0>
 50fa018:      	fmov	s0, s8
 50fa01c:      	mov	x0, xzr
 50fa020:      	bl	0x4d18120 <__start_il2cpp+0x6621bc>
 50fa024:      	tbz	w0, #0x0, 0x50fa0d4 <__start_il2cpp+0xa44170>
 50fa028:      	mov	w0, #0x1                // =1
 50fa02c:      	mov	w1, #0xb                // =11
 50fa030:      	mov	x2, xzr
 50fa034:      	bl	0x99fb600 <__start_il2cpp+0x534569c>
 50fa038:      	mov	w20, w0
 50fa03c:      	mov	w0, wzr
 50fa040:      	mov	w1, #0x4                // =4
 50fa044:      	mov	x2, xzr
 50fa048:      	bl	0x99fb600 <__start_il2cpp+0x534569c>
 50fa04c:      	adrp	x8, 0xa41f000
 50fa050:      	mov	w22, w0
 50fa054:      	mov	x0, x19
 50fa058:      	ldr	x8, [x8, #0x758]
 50fa05c:      	mov	x1, xzr
 50fa060:      	ldr	x8, [x8]
 50fa064:      	ldr	x8, [x8, #0xb8]
 50fa068:      	ldr	x21, [x8]
 50fa06c:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50fa070:      	cmp	w22, #0x2
 50fa074:      	mov	x1, x0
 50fa078:      	b.eq	0x50fa0a0 <__start_il2cpp+0xa4413c>
 50fa07c:      	cmp	w22, #0x1
 50fa080:      	b.eq	0x50fa094 <__start_il2cpp+0xa44130>
 50fa084:      	cbnz	w22, 0x50fa0ac <__start_il2cpp+0xa44148>
 50fa088:      	cbz	x21, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa08c:      	mov	w3, #0x5                // =5
 50fa090:      	b	0x50fa0b4 <__start_il2cpp+0xa44150>
 50fa094:      	cbz	x21, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa098:      	mov	w3, #0xb                // =11
 50fa09c:      	b	0x50fa0b4 <__start_il2cpp+0xa44150>
 50fa0a0:      	cbz	x21, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa0a4:      	mov	w3, #0x3                // =3
 50fa0a8:      	b	0x50fa0b4 <__start_il2cpp+0xa44150>
 50fa0ac:      	cbz	x21, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa0b0:      	mov	w3, #0xc                // =12
 50fa0b4:      	ldr	w6, [x24, #0x20]
 50fa0b8:      	sxtw	x4, w20
 50fa0bc:      	mov	x0, x21
 50fa0c0:      	mov	w2, wzr
 50fa0c4:      	mov	w5, #0x5                // =5
 50fa0c8:      	mov	w7, wzr
 50fa0cc:      	str	xzr, [sp]
 50fa0d0:      	bl	0x4ec6618 <__start_il2cpp+0x8106b4>
 50fa0d4:      	ldr	x8, [x19, #0x138]
 50fa0d8:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa0dc:      	ldr	x8, [x8, #0x30]
 50fa0e0:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa0e4:      	ldrb	w8, [x8, #0x27]
 50fa0e8:      	cbz	w8, 0x50fa3f0 <__start_il2cpp+0xa4448c>
 50fa0ec:      	adrp	x20, 0xa3ee000
 50fa0f0:      	ldr	x20, [x20, #0x838]
 50fa0f4:      	ldr	x0, [x20]
 50fa0f8:      	ldr	w8, [x0, #0xe4]
 50fa0fc:      	cbnz	w8, 0x50fa104 <__start_il2cpp+0xa441a0>
 50fa100:      	bl	0x4590be0 <.text+0x4743e0>
 50fa104:      	adrp	x21, 0xabcf000
 50fa108:      	ldrb	w8, [x21, #0x168]
 50fa10c:      	cbnz	w8, 0x50fa124 <__start_il2cpp+0xa441c0>
 50fa110:      	adrp	x0, 0xa3ee000
 50fa114:      	ldr	x0, [x0, #0x838]
 50fa118:      	bl	0x4590a60 <.text+0x474260>
 50fa11c:      	mov	w8, #0x1                // =1
 50fa120:      	strb	w8, [x21, #0x168]
 50fa124:      	ldr	x0, [x20]
 50fa128:      	ldr	w8, [x0, #0xe4]
 50fa12c:      	cbnz	w8, 0x50fa138 <__start_il2cpp+0xa441d4>
 50fa130:      	bl	0x4590be0 <.text+0x4743e0>
 50fa134:      	ldr	x0, [x20]
 50fa138:      	ldr	x8, [x0, #0xb8]
 50fa13c:      	ldr	x8, [x8]
 50fa140:      	cbz	x8, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa144:      	ldr	x0, [x8, #0x298]
 50fa148:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa14c:      	adrp	x8, 0xa436000
 50fa150:      	ldr	x8, [x8, #0x990]
 50fa154:      	ldr	w1, [x24, #0x24]
 50fa158:      	ldr	x2, [x8]
 50fa15c:      	bl	0x8058794 <__start_il2cpp+0x39a2830>
 50fa160:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa164:      	ldr	w8, [x0, #0x14]
 50fa168:      	mov	x20, x0
 50fa16c:      	cbz	w8, 0x50fa3f0 <__start_il2cpp+0xa4448c>
 50fa170:      	add	x0, sp, #0x98
 50fa174:      	add	x1, x20, #0x18
 50fa178:      	mov	w2, #0x48               // =72
 50fa17c:      	bl	0x9d6b900 <memmove@plt>
 50fa180:      	add	x0, sp, #0x98
 50fa184:      	mov	x1, xzr
 50fa188:      	bl	0x4b51d28 <__start_il2cpp+0x49bdc4>
 50fa18c:      	ldr	x0, [x23]
 50fa190:      	fmov	s8, s0
 50fa194:      	ldr	w8, [x0, #0xe4]
 50fa198:      	cbnz	w8, 0x50fa1a0 <__start_il2cpp+0xa4423c>
 50fa19c:      	bl	0x4590be0 <.text+0x4743e0>
 50fa1a0:      	fmov	s0, s8
 50fa1a4:      	mov	x0, xzr
 50fa1a8:      	bl	0x4d18120 <__start_il2cpp+0x6621bc>
 50fa1ac:      	tbz	w0, #0x0, 0x50fa3f0 <__start_il2cpp+0xa4448c>
 50fa1b0:      	adrp	x8, 0x1f29000
 50fa1b4:      	adrp	x9, 0x1f29000
 50fa1b8:      	mov	x0, xzr
 50fa1bc:      	ldr	s0, [x8, #0x3b8]
 50fa1c0:      	ldr	s1, [x9, #0x53c]
 50fa1c4:      	bl	0x99fb5c0 <__start_il2cpp+0x534565c>
 50fa1c8:      	adrp	x8, 0xa3e8000
 50fa1cc:      	fcvt	d8, s0
 50fa1d0:      	ldr	x8, [x8, #0x600]
 50fa1d4:      	ldr	x21, [x20, #0x60]
 50fa1d8:      	ldr	x0, [x8]
 50fa1dc:      	ldr	w8, [x0, #0xe4]
 50fa1e0:      	cbnz	w8, 0x50fa1e8 <__start_il2cpp+0xa44284>
 50fa1e4:      	bl	0x4590be0 <.text+0x4743e0>
 50fa1e8:      	scvtf	d0, x21
 50fa1ec:      	mov	x9, #0x7ff0000000000000 // =9218868437227405312
 50fa1f0:      	ldr	x0, [x19, #0x138]
 50fa1f4:      	fmov	d1, x9
 50fa1f8:      	fmul	d0, d8, d0
 50fa1fc:      	fcvtps	x8, d0
 50fa200:      	frintp	d0, d0
 50fa204:      	cmp	x8, #0x1
 50fa208:      	csinc	x8, x8, xzr, gt
 50fa20c:      	fcmp	d0, d1
 50fa210:      	csinc	x21, x8, xzr, ne
 50fa214:      	cbz	x0, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa218:      	mov	w1, #0x5                // =5
 50fa21c:      	mov	x2, xzr
 50fa220:      	bl	0x4d5c4fc <__start_il2cpp+0x6a6598>
 50fa224:      	tbz	w0, #0x0, 0x50fa270 <__start_il2cpp+0xa4430c>
 50fa228:      	adrp	x22, 0xa3e9000
 50fa22c:      	ldr	x22, [x22, #0x568]
 50fa230:      	ldr	x0, [x22]
 50fa234:      	ldr	w8, [x0, #0xe4]
 50fa238:      	cbnz	w8, 0x50fa244 <__start_il2cpp+0xa442e0>
 50fa23c:      	bl	0x4590be0 <.text+0x4743e0>
 50fa240:      	ldr	x0, [x22]
 50fa244:      	ldr	x8, [x0, #0xb8]
 50fa248:      	mov	x9, #0xd70b             // =55051
 50fa24c:      	movk	x9, #0x70a3, lsl #16
 50fa250:      	ldrsw	x8, [x8, #0x154]
 50fa254:      	movk	x9, #0xa3d, lsl #32
 50fa258:      	movk	x9, #0xa3d7, lsl #48
 50fa25c:      	mul	x8, x21, x8
 50fa260:      	smulh	x9, x8, x9
 50fa264:      	add	x8, x9, x8
 50fa268:      	asr	x9, x8, #6
 50fa26c:      	add	x21, x9, x8, lsr #63
 50fa270:      	ldr	w22, [x20, #0x14]
 50fa274:      	mov	w0, wzr
 50fa278:      	mov	w1, #0x8                // =8
 50fa27c:      	mov	x2, xzr
 50fa280:      	bl	0x99fb600 <__start_il2cpp+0x534569c>
 50fa284:      	cmp	w0, #0x5
 50fa288:      	b.le	0x50fa2a4 <__start_il2cpp+0xa44340>
 50fa28c:      	cmp	w0, #0x6
 50fa290:      	b.ne	0x50fa2ac <__start_il2cpp+0xa44348>
 50fa294:      	mov	x0, x19
 50fa298:      	mov	w1, w22
 50fa29c:      	mov	w2, wzr
 50fa2a0:      	b	0x50fa2b8 <__start_il2cpp+0xa44354>
 50fa2a4:      	adrp	x8, 0xa41f000
 50fa2a8:      	b	0x50fa2c4 <__start_il2cpp+0xa44360>
 50fa2ac:      	mov	x0, x19
 50fa2b0:      	mov	w1, w22
 50fa2b4:      	mov	w2, #0x1                // =1
 50fa2b8:      	bl	0x50fab10 <__start_il2cpp+0xa44bac>
 50fa2bc:      	adrp	x8, 0xa41f000
 50fa2c0:      	mov	w22, w0
 50fa2c4:      	ldr	x8, [x8, #0x758]
 50fa2c8:      	ldr	x8, [x8]
 50fa2cc:      	ldr	x8, [x8, #0xb8]
 50fa2d0:      	ldr	x23, [x8]
 50fa2d4:      	mov	x0, x19
 50fa2d8:      	mov	x1, xzr
 50fa2dc:      	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 50fa2e0:      	cbz	x23, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa2e4:      	ldr	w6, [x24, #0x20]
 50fa2e8:      	mov	x1, x0
 50fa2ec:      	mov	x0, x23
 50fa2f0:      	mov	w2, wzr
 50fa2f4:      	mov	w3, w22
 50fa2f8:      	mov	x4, x21
 50fa2fc:      	mov	w5, #0x5                // =5
 50fa300:      	mov	w7, wzr
 50fa304:      	str	xzr, [sp]
 50fa308:      	bl	0x4ec6618 <__start_il2cpp+0x8106b4>
 50fa30c:      	add	x0, sp, #0x50
 50fa310:      	add	x1, x20, #0x18
 50fa314:      	mov	w2, #0x48               // =72
 50fa318:      	bl	0x9d6b900 <memmove@plt>
 50fa31c:      	add	x0, sp, #0x50
 50fa320:      	mov	x1, xzr
 50fa324:      	bl	0x4b51d28 <__start_il2cpp+0x49bdc4>
 50fa328:      	fmov	s1, #5.00000000
 50fa32c:      	fcmp	s0, s1
 50fa330:      	b.lt	0x50fa3f0 <__start_il2cpp+0xa4448c>
 50fa334:      	adrp	x8, 0xa3ee000
 50fa338:      	ldr	x8, [x8, #0xe40]
 50fa33c:      	ldr	x0, [x8]
 50fa340:      	ldr	w8, [x0, #0xe4]
 50fa344:      	cbnz	w8, 0x50fa34c <__start_il2cpp+0xa443e8>
 50fa348:      	bl	0x4590be0 <.text+0x4743e0>
 50fa34c:      	mov	w0, #0xa                // =10
 50fa350:      	mov	x1, xzr
 50fa354:      	bl	0x50d14d8 <__start_il2cpp+0xa1b574>
 50fa358:      	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 50fa35c:      	add	x1, sp, #0x12c
 50fa360:      	ldr	x8, [x8, #0x4e0]
 50fa364:      	ldr	w9, [x24, #0x24]
 50fa368:      	ldr	x0, [x8, #0x48]
 50fa36c:      	str	w9, [sp, #0x12c]
 50fa370:      	bl	0x4590be8 <.text+0x4743e8>
 50fa374:      	adrp	x8, 0xa436000
 50fa378:      	mov	x1, x0
 50fa37c:      	mov	x2, xzr
 50fa380:      	ldr	x8, [x8, #0x998]
 50fa384:      	ldr	x8, [x8]
 50fa388:      	mov	x0, x8
 50fa38c:      	bl	0x8cc8c84 <__start_il2cpp+0x4612d20>
 50fa390:      	adrp	x21, 0xa3e9000
 50fa394:      	mov	x19, x0
 50fa398:      	ldr	x21, [x21, #0x568]
 50fa39c:      	ldr	x8, [x21]
 50fa3a0:      	ldr	w9, [x8, #0xe4]
 50fa3a4:      	cbnz	w9, 0x50fa3b4 <__start_il2cpp+0xa44450>
 50fa3a8:      	mov	x0, x8
 50fa3ac:      	bl	0x4590be0 <.text+0x4743e0>
 50fa3b0:      	ldr	x8, [x21]
 50fa3b4:      	ldr	x8, [x8, #0xb8]
 50fa3b8:      	add	x0, sp, #0x8
 50fa3bc:      	add	x1, x20, #0x18
 50fa3c0:      	mov	w2, #0x48               // =72
 50fa3c4:      	ldr	x21, [x8]
 50fa3c8:      	bl	0x9d6b900 <memmove@plt>
 50fa3cc:      	add	x0, sp, #0x8
 50fa3d0:      	mov	x1, xzr
 50fa3d4:      	bl	0x4b51d28 <__start_il2cpp+0x49bdc4>
 50fa3d8:      	cbz	x21, 0x50fa414 <__start_il2cpp+0xa444b0>
 50fa3dc:      	mov	x0, x21
 50fa3e0:      	mov	w1, #0x4                // =4
 50fa3e4:      	mov	x2, x19
 50fa3e8:      	mov	x3, xzr
 50fa3ec:      	bl	0x4d4d0fc <__start_il2cpp+0x697198>
 50fa3f0:      	add	sp, sp, #0x2f0
 50fa3f4:      	ldp	x20, x19, [sp, #0x50]
 50fa3f8:      	ldr	x29, [sp, #0x8]
 50fa3fc:      	ldp	x22, x21, [sp, #0x40]
 50fa400:      	ldp	x24, x23, [sp, #0x30]
 50fa404:      	ldp	x26, x25, [sp, #0x20]
 50fa408:      	ldp	x30, x27, [sp, #0x10]
 50fa40c:      	ldr	d8, [sp], #0x60
 50fa410:      	ret
 50fa414:      	bl	0x4590d0c <.text+0x47450c>
