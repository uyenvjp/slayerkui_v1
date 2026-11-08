
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4cc9aa0:      	str	x30, [sp, #-0x20]!
 4cc9aa4:      	stp	x20, x19, [sp, #0x10]
 4cc9aa8:      	adrp	x20, 0xabd4000
 4cc9aac:      	mov	w19, w0
 4cc9ab0:      	str	w0, [sp, #0xc]
 4cc9ab4:      	ldrb	w8, [x20, #0x6f8]
 4cc9ab8:      	tbnz	w8, #0x0, 0x4cc9adc <__start_il2cpp+0x613b78>
 4cc9abc:      	adrp	x0, 0xa41f000
 4cc9ac0:      	ldr	x0, [x0, #0xf0]
 4cc9ac4:      	bl	0x4590a60 <.text+0x474260>
 4cc9ac8:      	adrp	x0, 0xa41f000
 4cc9acc:      	ldr	x0, [x0, #0xe0]
 4cc9ad0:      	bl	0x4590a60 <.text+0x474260>
 4cc9ad4:      	mov	w8, #0x1                // =1
 4cc9ad8:      	strb	w8, [x20, #0x6f8]
 4cc9adc:      	mov	w0, #0x1c57             // =7255
 4cc9ae0:      	mov	x1, xzr
 4cc9ae4:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4cc9ae8:      	tbz	w0, #0x0, 0x4cc9b10 <__start_il2cpp+0x613bac>
 4cc9aec:      	mov	w0, #0x1c57             // =7255
 4cc9af0:      	mov	x1, xzr
 4cc9af4:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4cc9af8:      	cbz	x0, 0x4cc9b48 <__start_il2cpp+0x613be4>
 4cc9afc:      	mov	w1, w19
 4cc9b00:      	ldp	x20, x19, [sp, #0x10]
 4cc9b04:      	mov	x2, xzr
 4cc9b08:      	ldr	x30, [sp], #0x20
 4cc9b0c:      	b	0x4b850a8 <__start_il2cpp+0x4cf144>
 4cc9b10:      	cmp	w19, #0x3e7
 4cc9b14:      	b.le	0x4cc9b24 <__start_il2cpp+0x613bc0>
 4cc9b18:      	adrp	x8, 0xa41f000
 4cc9b1c:      	ldr	x8, [x8, #0xf0]
 4cc9b20:      	b	0x4cc9b2c <__start_il2cpp+0x613bc8>
 4cc9b24:      	adrp	x8, 0xa41f000
 4cc9b28:      	ldr	x8, [x8, #0xe0]
 4cc9b2c:      	ldr	x1, [x8]
 4cc9b30:      	add	x0, sp, #0xc
 4cc9b34:      	mov	x2, xzr
 4cc9b38:      	bl	0x8e74778 <__start_il2cpp+0x47be814>
 4cc9b3c:      	ldp	x20, x19, [sp, #0x10]
 4cc9b40:      	ldr	x30, [sp], #0x20
 4cc9b44:      	ret
 4cc9b48:      	bl	0x4590d0c <.text+0x47450c>
