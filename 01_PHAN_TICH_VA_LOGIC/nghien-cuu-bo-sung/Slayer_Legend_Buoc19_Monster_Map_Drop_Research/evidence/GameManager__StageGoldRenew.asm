
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4e43884:      	sub	sp, sp, #0x70
 4e43888:      	stp	x30, x21, [sp, #0x50]
 4e4388c:      	stp	x20, x19, [sp, #0x60]
 4e43890:      	adrp	x20, 0xabd5000
 4e43894:      	mov	x19, x0
 4e43898:      	ldrb	w8, [x20, #0x14d]
 4e4389c:      	tbnz	w8, #0x0, 0x4e438b4 <__start_il2cpp+0x78d950>
 4e438a0:      	adrp	x0, 0xa3ee000
 4e438a4:      	ldr	x0, [x0, #0xb18]
 4e438a8:      	bl	0x4590a60 <.text+0x474260>
 4e438ac:      	mov	w8, #0x1                // =1
 4e438b0:      	strb	w8, [x20, #0x14d]
 4e438b4:      	mov	w0, #0x12fa             // =4858
 4e438b8:      	mov	x1, xzr
 4e438bc:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4e438c0:      	tbz	w0, #0x0, 0x4e438ec <__start_il2cpp+0x78d988>
 4e438c4:      	mov	w0, #0x12fa             // =4858
 4e438c8:      	mov	x1, xzr
 4e438cc:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4e438d0:      	cbz	x0, 0x4e439a8 <__start_il2cpp+0x78da44>
 4e438d4:      	mov	x1, x19
 4e438d8:      	ldp	x20, x19, [sp, #0x60]
 4e438dc:      	ldp	x30, x21, [sp, #0x50]
 4e438e0:      	mov	x2, xzr
 4e438e4:      	add	sp, sp, #0x70
 4e438e8:      	b	0x4b7e520 <__start_il2cpp+0x4c85bc>
 4e438ec:      	ldr	x8, [x19, #0x208]
 4e438f0:      	cbz	x8, 0x4e439a8 <__start_il2cpp+0x78da44>
 4e438f4:      	ldp	q0, q1, [x8, #0xe0]
 4e438f8:      	add	x0, sp, #0x20
 4e438fc:      	ldr	x8, [x8, #0x100]
 4e43900:      	mov	x1, xzr
 4e43904:      	stp	q0, q1, [sp, #0x20]
 4e43908:      	str	x8, [sp, #0x40]
 4e4390c:      	bl	0x4b51030 <__start_il2cpp+0x49b0cc>
 4e43910:      	mov	x2, x0
 4e43914:      	mov	x3, x1
 4e43918:      	mov	x0, x19
 4e4391c:      	mov	x1, x2
 4e43920:      	mov	x2, x3
 4e43924:      	bl	0x4e50c80 <__start_il2cpp+0x79ad1c>
 4e43928:      	mov	x2, x0
 4e4392c:      	mov	x3, x1
 4e43930:      	add	x0, x19, #0x4d8
 4e43934:      	mov	x1, x2
 4e43938:      	mov	x2, x3
 4e4393c:      	mov	x3, xzr
 4e43940:      	bl	0x4b50df8 <__start_il2cpp+0x49ae94>
 4e43944:      	mov	x0, x19
 4e43948:      	bl	0x4e41f54 <__start_il2cpp+0x78bff0>
 4e4394c:      	adrp	x21, 0xa3ee000
 4e43950:      	mov	w20, w0
 4e43954:      	mov	w8, #0x4                // =4
 4e43958:      	ldr	x21, [x21, #0xb18]
 4e4395c:      	add	x1, sp, #0x1c
 4e43960:      	str	w8, [sp, #0x1c]
 4e43964:      	ldr	x0, [x21]
 4e43968:      	bl	0x4590be8 <.text+0x4743e8>
 4e4396c:      	ldr	x8, [x21]
 4e43970:      	mov	x1, x0
 4e43974:      	mov	x9, #-0x1               // =-1
 4e43978:      	mov	x0, sp
 4e4397c:      	mov	x2, xzr
 4e43980:      	str	w20, [sp, #0x10]
 4e43984:      	stp	x8, x9, [sp]
 4e43988:      	bl	0x8eafa00 <__start_il2cpp+0x47f9a9c>
 4e4398c:      	tbz	w0, #0x0, 0x4e43998 <__start_il2cpp+0x78da34>
 4e43990:      	mov	x0, x19
 4e43994:      	bl	0x4e512d8 <__start_il2cpp+0x79b374>
 4e43998:      	ldp	x20, x19, [sp, #0x60]
 4e4399c:      	ldp	x30, x21, [sp, #0x50]
 4e439a0:      	add	sp, sp, #0x70
 4e439a4:      	ret
 4e439a8:      	bl	0x4590d0c <.text+0x47450c>
