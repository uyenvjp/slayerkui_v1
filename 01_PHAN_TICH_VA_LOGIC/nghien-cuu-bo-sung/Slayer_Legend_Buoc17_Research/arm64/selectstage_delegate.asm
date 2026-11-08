
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 53a3494: d10143ff     	sub	sp, sp, #0x50
 53a3498: f9001bfe     	str	x30, [sp, #0x30]
 53a349c: a9044ff4     	stp	x20, x19, [sp, #0x40]
 53a34a0: 9002c1b4     	adrp	x20, 0xabd7000
 53a34a4: aa0003f3     	mov	x19, x0
 53a34a8: 39604688     	ldrb	w8, [x20, #0x811]
 53a34ac: 370000c8     	tbnz	w8, #0x0, 0x53a34c4 <__start_il2cpp+0xced560>
 53a34b0: f0028260     	adrp	x0, 0xa3f2000
 53a34b4: f9411400     	ldr	x0, [x0, #0x228]
 53a34b8: 97c7b56a     	bl	0x4590a60 <.text+0x474260>
 53a34bc: 52800028     	mov	w8, #0x1                // =1
 53a34c0: 39204688     	strb	w8, [x20, #0x811]
 53a34c4: f9400a68     	ldr	x8, [x19, #0x10]
 53a34c8: b40003e8     	cbz	x8, 0x53a3544 <__start_il2cpp+0xced5e0>
 53a34cc: b9401a60     	ldr	w0, [x19, #0x18]
 53a34d0: f9401114     	ldr	x20, [x8, #0x20]
 53a34d4: 910003e8     	mov	x8, sp
 53a34d8: aa1f03e1     	mov	x1, xzr
 53a34dc: 97cce2c0     	bl	0x46dbfdc <__start_il2cpp+0x26078>
 53a34e0: b4000334     	cbz	x20, 0x53a3544 <__start_il2cpp+0xced5e0>
 53a34e4: ad4007e0     	ldp	q0, q1, [sp]
 53a34e8: f0028273     	adrp	x19, 0xa3f2000
 53a34ec: 3dc00be2     	ldr	q2, [sp, #0x20]
 53a34f0: 9101e280     	add	x0, x20, #0x78
 53a34f4: aa1f03e1     	mov	x1, xzr
 53a34f8: 3c878280     	stur	q0, [x20, #0x78]
 53a34fc: f9411673     	ldr	x19, [x19, #0x228]
 53a3500: 3c888281     	stur	q1, [x20, #0x88]
 53a3504: 3c898282     	stur	q2, [x20, #0x98]
 53a3508: 97c7b53f     	bl	0x4590a04 <.text+0x474204>
 53a350c: f9400260     	ldr	x0, [x19]
 53a3510: b940e408     	ldr	w8, [x0, #0xe4]
 53a3514: 35000068     	cbnz	w8, 0x53a3520 <__start_il2cpp+0xced5bc>
 53a3518: 97c7b5b2     	bl	0x4590be0 <.text+0x4743e0>
 53a351c: f9400260     	ldr	x0, [x19]
 53a3520: f9405c08     	ldr	x8, [x0, #0xb8]
 53a3524: f9400100     	ldr	x0, [x8]
 53a3528: b40000e0     	cbz	x0, 0x53a3544 <__start_il2cpp+0xced5e0>
 53a352c: aa1f03e1     	mov	x1, xzr
 53a3530: 97ea89f4     	bl	0x4e45d00 <__start_il2cpp+0x78fd9c>
 53a3534: a9444ff4     	ldp	x20, x19, [sp, #0x40]
 53a3538: f9401bfe     	ldr	x30, [sp, #0x30]
 53a353c: 910143ff     	add	sp, sp, #0x50
 53a3540: d65f03c0     	ret
 53a3544: 97c7b5f2     	bl	0x4590d0c <.text+0x47450c>
