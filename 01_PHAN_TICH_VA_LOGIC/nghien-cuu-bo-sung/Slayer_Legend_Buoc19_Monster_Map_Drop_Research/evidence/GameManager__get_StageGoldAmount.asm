
/mnt/data/slayer_step19/work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4e513b4:      	str	x30, [sp, #-0x30]!
 4e513b8:      	stp	x22, x21, [sp, #0x10]
 4e513bc:      	stp	x20, x19, [sp, #0x20]
 4e513c0:      	adrp	x20, 0xabd5000
 4e513c4:      	mov	x19, x0
 4e513c8:      	ldrb	w8, [x20, #0x14e]
 4e513cc:      	tbnz	w8, #0x0, 0x4e513e4 <__start_il2cpp+0x79b480>
 4e513d0:      	adrp	x0, 0xa3e9000
 4e513d4:      	ldr	x0, [x0, #0xde0]
 4e513d8:      	bl	0x4590a60 <.text+0x474260>
 4e513dc:      	mov	w8, #0x1                // =1
 4e513e0:      	strb	w8, [x20, #0x14e]
 4e513e4:      	mov	w0, #0x78d6             // =30934
 4e513e8:      	mov	x1, xzr
 4e513ec:      	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4e513f0:      	tbz	w0, #0x0, 0x4e51414 <__start_il2cpp+0x79b4b0>
 4e513f4:      	mov	w0, #0x78d6             // =30934
 4e513f8:      	mov	x1, xzr
 4e513fc:      	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4e51400:      	cbz	x0, 0x4e514d4 <__start_il2cpp+0x79b570>
 4e51404:      	mov	x1, x19
 4e51408:      	mov	x2, xzr
 4e5140c:      	bl	0x4b85530 <__start_il2cpp+0x4cf5cc>
 4e51410:      	b	0x4e514c4 <__start_il2cpp+0x79b560>
 4e51414:      	adrp	x22, 0xa3e9000
 4e51418:      	add	x0, x19, #0x4d8
 4e5141c:      	mov	x1, xzr
 4e51420:      	ldr	x22, [x22, #0xde0]
 4e51424:      	bl	0x4b50a54 <__start_il2cpp+0x49aaf0>
 4e51428:      	mov	x20, x0
 4e5142c:      	mov	x21, x1
 4e51430:      	mov	w0, #0x5a               // =90
 4e51434:      	mov	w1, #0x6f               // =111
 4e51438:      	mov	x2, xzr
 4e5143c:      	bl	0x99fb600 <__start_il2cpp+0x534569c>
 4e51440:      	ldr	x8, [x22]
 4e51444:      	mov	w22, w0
 4e51448:      	ldr	w9, [x8, #0xe4]
 4e5144c:      	cbnz	w9, 0x4e51458 <__start_il2cpp+0x79b4f4>
 4e51450:      	mov	x0, x8
 4e51454:      	bl	0x4590be0 <.text+0x4743e0>
 4e51458:      	mov	w0, w22
 4e5145c:      	mov	x1, xzr
 4e51460:      	bl	0x917cfa4 <__start_il2cpp+0x4ac7040>
 4e51464:      	mov	x2, x0
 4e51468:      	mov	x3, x1
 4e5146c:      	mov	x0, x20
 4e51470:      	mov	x1, x21
 4e51474:      	mov	x4, xzr
 4e51478:      	bl	0x917a844 <__start_il2cpp+0x4ac48e0>
 4e5147c:      	mov	x20, x0
 4e51480:      	mov	x21, x1
 4e51484:      	mov	w0, #0x64               // =100
 4e51488:      	mov	x1, xzr
 4e5148c:      	bl	0x917cfa4 <__start_il2cpp+0x4ac7040>
 4e51490:      	mov	x2, x0
 4e51494:      	mov	x3, x1
 4e51498:      	mov	x0, x20
 4e5149c:      	mov	x1, x21
 4e514a0:      	mov	x4, xzr
 4e514a4:      	bl	0x917aa38 <__start_il2cpp+0x4ac4ad4>
 4e514a8:      	str	x0, [x19, #0x528]
 4e514ac:      	add	x0, x19, #0x530
 4e514b0:      	str	x1, [x19, #0x530]
 4e514b4:      	mov	x1, xzr
 4e514b8:      	bl	0x4590a04 <.text+0x474204>
 4e514bc:      	ldr	x0, [x19, #0x528]
 4e514c0:      	ldr	x1, [x19, #0x530]
 4e514c4:      	ldp	x20, x19, [sp, #0x20]
 4e514c8:      	ldp	x22, x21, [sp, #0x10]
 4e514cc:      	ldr	x30, [sp], #0x30
 4e514d0:      	ret
 4e514d4:      	bl	0x4590d0c <.text+0x47450c>
