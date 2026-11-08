
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4e51718: f81e0ffe     	str	x30, [sp, #-0x20]!
 4e5171c: a9014ff4     	stp	x20, x19, [sp, #0x10]
 4e51720: aa0003f3     	mov	x19, x0
 4e51724: 5283cae0     	mov	w0, #0x1e57             // =7767
 4e51728: aa1f03e1     	mov	x1, xzr
 4e5172c: 97f7d79e     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4e51730: 36000140     	tbz	w0, #0x0, 0x4e51758 <__start_il2cpp+0x79b7f4>
 4e51734: 5283cae0     	mov	w0, #0x1e57             // =7767
 4e51738: aa1f03e1     	mov	x1, xzr
 4e5173c: 97f7d7c7     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4e51740: b4000480     	cbz	x0, 0x4e517d0 <__start_il2cpp+0x79b86c>
 4e51744: aa1303e1     	mov	x1, x19
 4e51748: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 4e5174c: aa1f03e2     	mov	x2, xzr
 4e51750: f84207fe     	ldr	x30, [sp], #0x20
 4e51754: 17f4c4eb     	b	0x4b82b00 <__start_il2cpp+0x4ccb9c>
 4e51758: f9410668     	ldr	x8, [x19, #0x208]
 4e5175c: b40003a8     	cbz	x8, 0x4e517d0 <__start_il2cpp+0x79b86c>
 4e51760: f9402114     	ldr	x20, [x8, #0x40]
 4e51764: 2a1f03e0     	mov	w0, wzr
 4e51768: 52800061     	mov	w1, #0x3                // =3
 4e5176c: aa1f03e2     	mov	x2, xzr
 4e51770: 952ea7a4     	bl	0x99fb600 <__start_il2cpp+0x534569c>
 4e51774: b40002f4     	cbz	x20, 0x4e517d0 <__start_il2cpp+0x79b86c>
 4e51778: b9401a88     	ldr	w8, [x20, #0x18]
 4e5177c: 6b08001f     	cmp	w0, w8
 4e51780: 540002a2     	b.hs	0x4e517d4 <__start_il2cpp+0x79b870>
 4e51784: 8b20ca88     	add	x8, x20, w0, sxtw #2
 4e51788: b9402100     	ldr	w0, [x8, #0x20]
 4e5178c: 350001c0     	cbnz	w0, 0x4e517c4 <__start_il2cpp+0x79b860>
 4e51790: f9410668     	ldr	x8, [x19, #0x208]
 4e51794: b40001e8     	cbz	x8, 0x4e517d0 <__start_il2cpp+0x79b86c>
 4e51798: f9402113     	ldr	x19, [x8, #0x40]
 4e5179c: 2a1f03e0     	mov	w0, wzr
 4e517a0: 52800041     	mov	w1, #0x2                // =2
 4e517a4: aa1f03e2     	mov	x2, xzr
 4e517a8: 952ea796     	bl	0x99fb600 <__start_il2cpp+0x534569c>
 4e517ac: b4000133     	cbz	x19, 0x4e517d0 <__start_il2cpp+0x79b86c>
 4e517b0: b9401a68     	ldr	w8, [x19, #0x18]
 4e517b4: 6b08001f     	cmp	w0, w8
 4e517b8: 540000e2     	b.hs	0x4e517d4 <__start_il2cpp+0x79b870>
 4e517bc: 8b20ca68     	add	x8, x19, w0, sxtw #2
 4e517c0: b9402100     	ldr	w0, [x8, #0x20]
 4e517c4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
 4e517c8: f84207fe     	ldr	x30, [sp], #0x20
 4e517cc: d65f03c0     	ret
 4e517d0: 97dcfd4f     	bl	0x4590d0c <.text+0x47450c>
 4e517d4: 97dcfd50     	bl	0x4590d14 <.text+0x474514>
