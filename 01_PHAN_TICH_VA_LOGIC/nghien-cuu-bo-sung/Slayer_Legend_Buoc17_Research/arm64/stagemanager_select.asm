
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 53a2688: d10243ff     	sub	sp, sp, #0x90
 53a268c: a9065ffe     	stp	x30, x23, [sp, #0x60]
 53a2690: a90757f6     	stp	x22, x21, [sp, #0x70]
 53a2694: a9084ff4     	stp	x20, x19, [sp, #0x80]
 53a2698: b002c1b5     	adrp	x21, 0xabd7000
 53a269c: aa0103f4     	mov	x20, x1
 53a26a0: aa0003f3     	mov	x19, x0
 53a26a4: 396026a8     	ldrb	w8, [x21, #0x809]
 53a26a8: 370002a8     	tbnz	w8, #0x0, 0x53a26fc <__start_il2cpp+0xcec798>
 53a26ac: 90028260     	adrp	x0, 0xa3ee000
 53a26b0: f9472000     	ldr	x0, [x0, #0xe40]
 53a26b4: 97c7b8eb     	bl	0x4590a60 <.text+0x474260>
 53a26b8: d00284e0     	adrp	x0, 0xa440000
 53a26bc: f946f800     	ldr	x0, [x0, #0xdf0]
 53a26c0: 97c7b8e8     	bl	0x4590a60 <.text+0x474260>
 53a26c4: b0028260     	adrp	x0, 0xa3ef000
 53a26c8: f9413400     	ldr	x0, [x0, #0x268]
 53a26cc: 97c7b8e5     	bl	0x4590a60 <.text+0x474260>
 53a26d0: 90028280     	adrp	x0, 0xa3f2000
 53a26d4: f9411400     	ldr	x0, [x0, #0x228]
 53a26d8: 97c7b8e2     	bl	0x4590a60 <.text+0x474260>
 53a26dc: d00284e0     	adrp	x0, 0xa440000
 53a26e0: f946fc00     	ldr	x0, [x0, #0xdf8]
 53a26e4: 97c7b8df     	bl	0x4590a60 <.text+0x474260>
 53a26e8: d00284e0     	adrp	x0, 0xa440000
 53a26ec: f9470000     	ldr	x0, [x0, #0xe00]
 53a26f0: 97c7b8dc     	bl	0x4590a60 <.text+0x474260>
 53a26f4: 52800028     	mov	w8, #0x1                // =1
 53a26f8: 392026a8     	strb	w8, [x21, #0x809]
 53a26fc: 5295eb20     	mov	w0, #0xaf59             // =44889
 53a2700: aa1f03e1     	mov	x1, xzr
 53a2704: 97e293a8     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 53a2708: 360001a0     	tbz	w0, #0x0, 0x53a273c <__start_il2cpp+0xcec7d8>
 53a270c: 5295eb20     	mov	w0, #0xaf59             // =44889
 53a2710: aa1f03e1     	mov	x1, xzr
 53a2714: 97e293d1     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 53a2718: b4000fa0     	cbz	x0, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a271c: aa1303e1     	mov	x1, x19
 53a2720: aa1403e2     	mov	x2, x20
 53a2724: aa1f03e3     	mov	x3, xzr
 53a2728: a9484ff4     	ldp	x20, x19, [sp, #0x80]
 53a272c: a94757f6     	ldp	x22, x21, [sp, #0x70]
 53a2730: a9465ffe     	ldp	x30, x23, [sp, #0x60]
 53a2734: 910243ff     	add	sp, sp, #0x90
 53a2738: 17df7037     	b	0x4b7e814 <__start_il2cpp+0x4c88b0>
 53a273c: d00284e8     	adrp	x8, 0xa440000
 53a2740: f9470108     	ldr	x8, [x8, #0xe00]
 53a2744: f9400100     	ldr	x0, [x8]
 53a2748: 97c7b96d     	bl	0x4590cfc <.text+0x4744fc>
 53a274c: aa1f03e1     	mov	x1, xzr
 53a2750: aa0003f5     	mov	x21, x0
 53a2754: 94ec66b5     	bl	0x8ebc228 <__start_il2cpp+0x48062c4>
 53a2758: b4000db5     	cbz	x21, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a275c: aa1503e0     	mov	x0, x21
 53a2760: aa1303e1     	mov	x1, x19
 53a2764: f8010c13     	str	x19, [x0, #0x10]!
 53a2768: 97c7b8a7     	bl	0x4590a04 <.text+0x474204>
 53a276c: 3941c268     	ldrb	w8, [x19, #0x70]
 53a2770: 34000968     	cbz	w8, 0x53a289c <__start_il2cpp+0xcec938>
 53a2774: f9401268     	ldr	x8, [x19, #0x20]
 53a2778: b4000ca8     	cbz	x8, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a277c: 3cc78100     	ldur	q0, [x8, #0x78]
 53a2780: 3cc88101     	ldur	q1, [x8, #0x88]
 53a2784: 9100c3e0     	add	x0, sp, #0x30
 53a2788: 3cc98102     	ldur	q2, [x8, #0x98]
 53a278c: aa1f03e1     	mov	x1, xzr
 53a2790: ad0187e0     	stp	q0, q1, [sp, #0x30]
 53a2794: 3d8017e2     	str	q2, [sp, #0x50]
 53a2798: 97cd018d     	bl	0x46e2dcc <__start_il2cpp+0x2ce68>
 53a279c: b9001aa0     	str	w0, [x21, #0x18]
 53a27a0: b4000b74     	cbz	x20, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a27a4: d00284e8     	adrp	x8, 0xa440000
 53a27a8: f946f908     	ldr	x8, [x8, #0xdf0]
 53a27ac: b9402296     	ldr	w22, [x20, #0x20]
 53a27b0: f9400100     	ldr	x0, [x8]
 53a27b4: 97c7b952     	bl	0x4590cfc <.text+0x4744fc>
 53a27b8: d00284e8     	adrp	x8, 0xa440000
 53a27bc: aa1503e1     	mov	x1, x21
 53a27c0: aa1f03e3     	mov	x3, xzr
 53a27c4: f946fd08     	ldr	x8, [x8, #0xdf8]
 53a27c8: aa0003f7     	mov	x23, x0
 53a27cc: f9400102     	ldr	x2, [x8]
 53a27d0: 9447955b     	bl	0x6587d3c <__start_il2cpp+0x1ed1dd8>
 53a27d4: 90028268     	adrp	x8, 0xa3ee000
 53a27d8: f9472108     	ldr	x8, [x8, #0xe40]
 53a27dc: f9400100     	ldr	x0, [x8]
 53a27e0: b940e408     	ldr	w8, [x0, #0xe4]
 53a27e4: 35000048     	cbnz	w8, 0x53a27ec <__start_il2cpp+0xcec888>
 53a27e8: 97c7b8fe     	bl	0x4590be0 <.text+0x4743e0>
 53a27ec: 2a1603e0     	mov	w0, w22
 53a27f0: aa1703e1     	mov	x1, x23
 53a27f4: aa1f03e2     	mov	x2, xzr
 53a27f8: 97f4b8af     	bl	0x50d0ab4 <__start_il2cpp+0xa1ab50>
 53a27fc: f9401e60     	ldr	x0, [x19, #0x38]
 53a2800: b4000860     	cbz	x0, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a2804: 2a1f03e1     	mov	w1, wzr
 53a2808: aa1f03e2     	mov	x2, xzr
 53a280c: 951984f2     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 53a2810: b9402280     	ldr	w0, [x20, #0x20]
 53a2814: f9401275     	ldr	x21, [x19, #0x20]
 53a2818: 910003e8     	mov	x8, sp
 53a281c: aa1f03e1     	mov	x1, xzr
 53a2820: 97cce5ef     	bl	0x46dbfdc <__start_il2cpp+0x26078>
 53a2824: b4000755     	cbz	x21, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a2828: ad4007e0     	ldp	q0, q1, [sp]
 53a282c: 9101e2a0     	add	x0, x21, #0x78
 53a2830: 3dc00be2     	ldr	q2, [sp, #0x20]
 53a2834: aa1f03e1     	mov	x1, xzr
 53a2838: 3c8782a0     	stur	q0, [x21, #0x78]
 53a283c: 3c8882a1     	stur	q1, [x21, #0x88]
 53a2840: 3c8982a2     	stur	q2, [x21, #0x98]
 53a2844: 97c7b870     	bl	0x4590a04 <.text+0x474204>
 53a2848: 90028294     	adrp	x20, 0xa3f2000
 53a284c: f9411694     	ldr	x20, [x20, #0x228]
 53a2850: f9400280     	ldr	x0, [x20]
 53a2854: b940e408     	ldr	w8, [x0, #0xe4]
 53a2858: 35000068     	cbnz	w8, 0x53a2864 <__start_il2cpp+0xcec900>
 53a285c: 97c7b8e1     	bl	0x4590be0 <.text+0x4743e0>
 53a2860: f9400280     	ldr	x0, [x20]
 53a2864: f9405c08     	ldr	x8, [x0, #0xb8]
 53a2868: f9400100     	ldr	x0, [x8]
 53a286c: b4000500     	cbz	x0, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a2870: aa1f03e1     	mov	x1, xzr
 53a2874: 97ea8d23     	bl	0x4e45d00 <__start_il2cpp+0x78fd9c>
 53a2878: b9407668     	ldr	w8, [x19, #0x74]
 53a287c: 11000509     	add	w9, w8, #0x1
 53a2880: 7100093f     	cmp	w9, #0x2
 53a2884: b9007669     	str	w9, [x19, #0x74]
 53a2888: 540002aa     	b.ge	0x53a28dc <__start_il2cpp+0xcec978>
 53a288c: 35000368     	cbnz	w8, 0x53a28f8 <__start_il2cpp+0xcec994>
 53a2890: aa1303e0     	mov	x0, x19
 53a2894: 9400004a     	bl	0x53a29bc <__start_il2cpp+0xceca58>
 53a2898: 14000014     	b	0x53a28e8 <__start_il2cpp+0xcec984>
 53a289c: b0028268     	adrp	x8, 0xa3ef000
 53a28a0: aa1f03e0     	mov	x0, xzr
 53a28a4: f9413508     	ldr	x8, [x8, #0x268]
 53a28a8: f9400108     	ldr	x8, [x8]
 53a28ac: f9405d08     	ldr	x8, [x8, #0xb8]
 53a28b0: f9400113     	ldr	x19, [x8]
 53a28b4: 97d60f79     	bl	0x4926698 <__start_il2cpp+0x270734>
 53a28b8: b40002b3     	cbz	x19, 0x53a290c <__start_il2cpp+0xcec9a8>
 53a28bc: aa0003e1     	mov	x1, x0
 53a28c0: aa1303e0     	mov	x0, x19
 53a28c4: aa1f03e2     	mov	x2, xzr
 53a28c8: a9484ff4     	ldp	x20, x19, [sp, #0x80]
 53a28cc: a94757f6     	ldp	x22, x21, [sp, #0x70]
 53a28d0: a9465ffe     	ldp	x30, x23, [sp, #0x60]
 53a28d4: 910243ff     	add	sp, sp, #0x90
 53a28d8: 17e53c92     	b	0x4cf1b20 <__start_il2cpp+0x63bbbc>
 53a28dc: aa1303e0     	mov	x0, x19
 53a28e0: 3901c27f     	strb	wzr, [x19, #0x70]
 53a28e4: 9400000d     	bl	0x53a2918 <__start_il2cpp+0xcec9b4>
 53a28e8: aa0003e1     	mov	x1, x0
 53a28ec: aa1303e0     	mov	x0, x19
 53a28f0: aa1f03e2     	mov	x2, xzr
 53a28f4: 95198cc2     	bl	0x9a05bfc <__start_il2cpp+0x534fc98>
 53a28f8: a9484ff4     	ldp	x20, x19, [sp, #0x80]
 53a28fc: a94757f6     	ldp	x22, x21, [sp, #0x70]
 53a2900: a9465ffe     	ldp	x30, x23, [sp, #0x60]
 53a2904: 910243ff     	add	sp, sp, #0x90
 53a2908: d65f03c0     	ret
 53a290c: 97c7b900     	bl	0x4590d0c <.text+0x47450c>
 53a2910: aa1f03e1     	mov	x1, xzr
 53a2914: 14ec6645     	b	0x8ebc228 <__start_il2cpp+0x48062c4>
