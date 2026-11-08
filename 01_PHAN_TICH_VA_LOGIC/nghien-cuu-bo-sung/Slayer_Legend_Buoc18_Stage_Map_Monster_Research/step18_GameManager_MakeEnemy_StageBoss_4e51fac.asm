
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4e51fac: d102c3ff     	sub	sp, sp, #0xb0
 4e51fb0: fd0023ea     	str	d10, [sp, #0x40]
 4e51fb4: 6d0523e9     	stp	d9, d8, [sp, #0x50]
 4e51fb8: a9066ffe     	stp	x30, x27, [sp, #0x60]
 4e51fbc: a90767fa     	stp	x26, x25, [sp, #0x70]
 4e51fc0: a9085ff8     	stp	x24, x23, [sp, #0x80]
 4e51fc4: a90957f6     	stp	x22, x21, [sp, #0x90]
 4e51fc8: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
 4e51fcc: 1e204048     	fmov	s8, s2
 4e51fd0: 1e204029     	fmov	s9, s1
 4e51fd4: 9002ec34     	adrp	x20, 0xabd5000
 4e51fd8: 1e20400a     	fmov	s10, s0
 4e51fdc: 39454e88     	ldrb	w8, [x20, #0x153]
 4e51fe0: 2a0103f5     	mov	w21, w1
 4e51fe4: aa0003f3     	mov	x19, x0
 4e51fe8: 37000428     	tbnz	w8, #0x0, 0x4e5206c <__start_il2cpp+0x79c108>
 4e51fec: 9002acc0     	adrp	x0, 0xa3e9000
 4e51ff0: f946f000     	ldr	x0, [x0, #0xde0]
 4e51ff4: 97dcfa9b     	bl	0x4590a60 <.text+0x474260>
 4e51ff8: b002ace0     	adrp	x0, 0xa3ee000
 4e51ffc: f9441c00     	ldr	x0, [x0, #0x838]
 4e52000: 97dcfa98     	bl	0x4590a60 <.text+0x474260>
 4e52004: b002ae60     	adrp	x0, 0xa41f000
 4e52008: f9457c00     	ldr	x0, [x0, #0xaf8]
 4e5200c: 97dcfa95     	bl	0x4590a60 <.text+0x474260>
 4e52010: d002aea0     	adrp	x0, 0xa428000
 4e52014: f9445400     	ldr	x0, [x0, #0x8a8]
 4e52018: 97dcfa92     	bl	0x4590a60 <.text+0x474260>
 4e5201c: d002aea0     	adrp	x0, 0xa428000
 4e52020: f9445800     	ldr	x0, [x0, #0x8b0]
 4e52024: 97dcfa8f     	bl	0x4590a60 <.text+0x474260>
 4e52028: b002aca0     	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4e5202c: f9425400     	ldr	x0, [x0, #0x4a8]
 4e52030: 97dcfa8c     	bl	0x4590a60 <.text+0x474260>
 4e52034: d002ace0     	adrp	x0, 0xa3f0000
 4e52038: f9412400     	ldr	x0, [x0, #0x248]
 4e5203c: 97dcfa89     	bl	0x4590a60 <.text+0x474260>
 4e52040: d002ada0     	adrp	x0, 0xa408000
 4e52044: f9465c00     	ldr	x0, [x0, #0xcb8]
 4e52048: 97dcfa86     	bl	0x4590a60 <.text+0x474260>
 4e5204c: d002aea0     	adrp	x0, 0xa428000
 4e52050: f945c400     	ldr	x0, [x0, #0xb88]
 4e52054: 97dcfa83     	bl	0x4590a60 <.text+0x474260>
 4e52058: d002aea0     	adrp	x0, 0xa428000
 4e5205c: f945c800     	ldr	x0, [x0, #0xb90]
 4e52060: 97dcfa80     	bl	0x4590a60 <.text+0x474260>
 4e52064: 52800028     	mov	w8, #0x1                // =1
 4e52068: 39054e88     	strb	w8, [x20, #0x153]
 4e5206c: 528f1b00     	mov	w0, #0x78d8             // =30936
 4e52070: aa1f03e1     	mov	x1, xzr
 4e52074: 97f7d54c     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4e52078: 36000280     	tbz	w0, #0x0, 0x4e520c8 <__start_il2cpp+0x79c164>
 4e5207c: 528f1b00     	mov	w0, #0x78d8             // =30936
 4e52080: aa1f03e1     	mov	x1, xzr
 4e52084: 97f7d575     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4e52088: b4003280     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e5208c: aa1303e1     	mov	x1, x19
 4e52090: 2a1503e2     	mov	w2, w21
 4e52094: 1e204121     	fmov	s1, s9
 4e52098: 1e204102     	fmov	s2, s8
 4e5209c: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
 4e520a0: a94957f6     	ldp	x22, x21, [sp, #0x90]
 4e520a4: 1e204140     	fmov	s0, s10
 4e520a8: a9485ff8     	ldp	x24, x23, [sp, #0x80]
 4e520ac: fd4023ea     	ldr	d10, [sp, #0x40]
 4e520b0: a94767fa     	ldp	x26, x25, [sp, #0x70]
 4e520b4: aa1f03e3     	mov	x3, xzr
 4e520b8: a9466ffe     	ldp	x30, x27, [sp, #0x60]
 4e520bc: 6d4523e9     	ldp	d9, d8, [sp, #0x50]
 4e520c0: 9102c3ff     	add	sp, sp, #0xb0
 4e520c4: 17f634fd     	b	0x4bdf4b8 <__start_il2cpp+0x529554>
 4e520c8: d002aea8     	adrp	x8, 0xa428000
 4e520cc: f9445908     	ldr	x8, [x8, #0x8b0]
 4e520d0: f9400108     	ldr	x8, [x8]
 4e520d4: f9405d08     	ldr	x8, [x8, #0xb8]
 4e520d8: f9400100     	ldr	x0, [x8]
 4e520dc: b4002fe0     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e520e0: d002aea8     	adrp	x8, 0xa428000
 4e520e4: aa1f03e2     	mov	x2, xzr
 4e520e8: f945c908     	ldr	x8, [x8, #0xb90]
 4e520ec: f9400101     	ldr	x1, [x8]
 4e520f0: 9401e604     	bl	0x4ecb900 <__start_il2cpp+0x81599c>
 4e520f4: b002acb8     	adrp	x24, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4e520f8: aa0003f4     	mov	x20, x0
 4e520fc: f9425718     	ldr	x24, [x24, #0x4a8]
 4e52100: f9400308     	ldr	x8, [x24]
 4e52104: b940e509     	ldr	w9, [x8, #0xe4]
 4e52108: 35000069     	cbnz	w9, 0x4e52114 <__start_il2cpp+0x79c1b0>
 4e5210c: aa0803e0     	mov	x0, x8
 4e52110: 97dcfab4     	bl	0x4590be0 <.text+0x4743e0>
 4e52114: aa1403e0     	mov	x0, x20
 4e52118: aa1f03e1     	mov	x1, xzr
 4e5211c: aa1f03e2     	mov	x2, xzr
 4e52120: 952ecb9c     	bl	0x9a04f90 <__start_il2cpp+0x534f02c>
 4e52124: 2a0003e8     	mov	w8, w0
 4e52128: aa1f03e0     	mov	x0, xzr
 4e5212c: 37002c48     	tbnz	w8, #0x0, 0x4e526b4 <__start_il2cpp+0x79c750>
 4e52130: b4002d54     	cbz	x20, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52134: aa1403e0     	mov	x0, x20
 4e52138: aa1f03e1     	mov	x1, xzr
 4e5213c: 952eb929     	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 4e52140: b4002cc0     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52144: 1e204140     	fmov	s0, s10
 4e52148: 1e204121     	fmov	s1, s9
 4e5214c: aa1f03e1     	mov	x1, xzr
 4e52150: 1e204102     	fmov	s2, s8
 4e52154: 952f042d     	bl	0x9a13208 <__start_il2cpp+0x535d2a4>
 4e52158: aa1403e0     	mov	x0, x20
 4e5215c: aa1f03e1     	mov	x1, xzr
 4e52160: 952eb920     	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 4e52164: aa0003f6     	mov	x22, x0
 4e52168: 9100c3e0     	add	x0, sp, #0x30
 4e5216c: aa1f03e1     	mov	x1, xzr
 4e52170: b9003bff     	str	wzr, [sp, #0x38]
 4e52174: f9001bff     	str	xzr, [sp, #0x30]
 4e52178: 952e845f     	bl	0x99f32f4 <__start_il2cpp+0x533d390>
 4e5217c: b4002af6     	cbz	x22, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52180: aa1603e0     	mov	x0, x22
 4e52184: aa1f03e1     	mov	x1, xzr
 4e52188: 952f04c4     	bl	0x9a13498 <__start_il2cpp+0x535d534>
 4e5218c: 9002acf6     	adrp	x22, 0xa3ee000
 4e52190: f9441ed6     	ldr	x22, [x22, #0x838]
 4e52194: f94002c0     	ldr	x0, [x22]
 4e52198: b940e408     	ldr	w8, [x0, #0xe4]
 4e5219c: 35000048     	cbnz	w8, 0x4e521a4 <__start_il2cpp+0x79c240>
 4e521a0: 97dcfa90     	bl	0x4590be0 <.text+0x4743e0>
 4e521a4: b002ebf7     	adrp	x23, 0xabcf000
 4e521a8: 3945a2e8     	ldrb	w8, [x23, #0x168]
 4e521ac: 350000c8     	cbnz	w8, 0x4e521c4 <__start_il2cpp+0x79c260>
 4e521b0: 9002ace0     	adrp	x0, 0xa3ee000
 4e521b4: f9441c00     	ldr	x0, [x0, #0x838]
 4e521b8: 97dcfa2a     	bl	0x4590a60 <.text+0x474260>
 4e521bc: 52800028     	mov	w8, #0x1                // =1
 4e521c0: 3905a2e8     	strb	w8, [x23, #0x168]
 4e521c4: f94002c0     	ldr	x0, [x22]
 4e521c8: b940e408     	ldr	w8, [x0, #0xe4]
 4e521cc: 35000068     	cbnz	w8, 0x4e521d8 <__start_il2cpp+0x79c274>
 4e521d0: 97dcfa84     	bl	0x4590be0 <.text+0x4743e0>
 4e521d4: f94002c0     	ldr	x0, [x22]
 4e521d8: f9405c08     	ldr	x8, [x0, #0xb8]
 4e521dc: f9400108     	ldr	x8, [x8]
 4e521e0: b40027c8     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e521e4: f9405100     	ldr	x0, [x8, #0xa0]
 4e521e8: b4002780     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e521ec: b002ae68     	adrp	x8, 0xa41f000
 4e521f0: 2a1503e1     	mov	w1, w21
 4e521f4: f9457d08     	ldr	x8, [x8, #0xaf8]
 4e521f8: f9400102     	ldr	x2, [x8]
 4e521fc: 94c81966     	bl	0x8058794 <__start_il2cpp+0x39a2830>
 4e52200: f9410668     	ldr	x8, [x19, #0x208]
 4e52204: b40026a8     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52208: ad440500     	ldp	q0, q1, [x8, #0x80]
 4e5220c: aa0003f5     	mov	x21, x0
 4e52210: f9405108     	ldr	x8, [x8, #0xa0]
 4e52214: 910003e0     	mov	x0, sp
 4e52218: aa1f03e1     	mov	x1, xzr
 4e5221c: ad0007e0     	stp	q0, q1, [sp]
 4e52220: f90013e8     	str	x8, [sp, #0x20]
 4e52224: 97f3fb83     	bl	0x4b51030 <__start_il2cpp+0x49b0cc>
 4e52228: aa0003e2     	mov	x2, x0
 4e5222c: aa0103e3     	mov	x3, x1
 4e52230: aa1403e0     	mov	x0, x20
 4e52234: aa0203e1     	mov	x1, x2
 4e52238: aa0303e2     	mov	x2, x3
 4e5223c: aa1f03e3     	mov	x3, xzr
 4e52240: 940710e4     	bl	0x50165d0 <__start_il2cpp+0x96066c>
 4e52244: aa1403e0     	mov	x0, x20
 4e52248: aa1f03e1     	mov	x1, xzr
 4e5224c: 940710ce     	bl	0x5016584 <__start_il2cpp+0x960620>
 4e52250: aa0003e2     	mov	x2, x0
 4e52254: aa0103e3     	mov	x3, x1
 4e52258: aa1403e0     	mov	x0, x20
 4e5225c: aa0203e1     	mov	x1, x2
 4e52260: aa0303e2     	mov	x2, x3
 4e52264: aa1f03e3     	mov	x3, xzr
 4e52268: 94071109     	bl	0x501668c <__start_il2cpp+0x960728>
 4e5226c: f9410668     	ldr	x8, [x19, #0x208]
 4e52270: b4002348     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52274: 9102a100     	add	x0, x8, #0xa8
 4e52278: aa1f03e1     	mov	x1, xzr
 4e5227c: 97f3f9f6     	bl	0x4b50a54 <__start_il2cpp+0x49aaf0>
 4e52280: f002aca8     	adrp	x8, 0xa3e9000
 4e52284: aa0003f6     	mov	x22, x0
 4e52288: aa0103f7     	mov	x23, x1
 4e5228c: f946f108     	ldr	x8, [x8, #0xde0]
 4e52290: f9400100     	ldr	x0, [x8]
 4e52294: b940e408     	ldr	w8, [x0, #0xe4]
 4e52298: 35000048     	cbnz	w8, 0x4e522a0 <__start_il2cpp+0x79c33c>
 4e5229c: 97dcfa51     	bl	0x4590be0 <.text+0x4743e0>
 4e522a0: 52800080     	mov	w0, #0x4                // =4
 4e522a4: aa1f03e1     	mov	x1, xzr
 4e522a8: 950cab3f     	bl	0x917cfa4 <__start_il2cpp+0x4ac7040>
 4e522ac: aa0003e2     	mov	x2, x0
 4e522b0: aa0103e3     	mov	x3, x1
 4e522b4: aa1603e0     	mov	x0, x22
 4e522b8: aa1703e1     	mov	x1, x23
 4e522bc: aa1f03e4     	mov	x4, xzr
 4e522c0: 950ca161     	bl	0x917a844 <__start_il2cpp+0x4ac48e0>
 4e522c4: a9170680     	stp	x0, x1, [x20, #0x170]
 4e522c8: 9105e280     	add	x0, x20, #0x178
 4e522cc: aa1f03e1     	mov	x1, xzr
 4e522d0: 97dcf9cd     	bl	0x4590a04 <.text+0x474204>
 4e522d4: b002ebf7     	adrp	x23, 0xabcf000
 4e522d8: f940aa96     	ldr	x22, [x20, #0x150]
 4e522dc: 52800039     	mov	w25, #0x1               // =1
 4e522e0: 3945aae8     	ldrb	w8, [x23, #0x16a]
 4e522e4: 3905a699     	strb	w25, [x20, #0x169]
 4e522e8: 350000a8     	cbnz	w8, 0x4e522fc <__start_il2cpp+0x79c398>
 4e522ec: d002aca0     	adrp	x0, 0xa3e8000
 4e522f0: f9413c00     	ldr	x0, [x0, #0x278]
 4e522f4: 97dcf9db     	bl	0x4590a60 <.text+0x474260>
 4e522f8: 3905aaf9     	strb	w25, [x23, #0x16a]
 4e522fc: b4001ef5     	cbz	x21, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52300: b4001ed6     	cbz	x22, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52304: d002acbb     	adrp	x27, 0xa3e8000
 4e52308: aa1603e0     	mov	x0, x22
 4e5230c: aa1f03e1     	mov	x1, xzr
 4e52310: f9413f7b     	ldr	x27, [x27, #0x278]
 4e52314: bd402ea0     	ldr	s0, [x21, #0x2c]
 4e52318: f9400368     	ldr	x8, [x27]
 4e5231c: f9405d08     	ldr	x8, [x8, #0xb8]
 4e52320: 2d420d01     	ldp	s1, s3, [x8, #0x10]
 4e52324: 1e201862     	fdiv	s2, s3, s0
 4e52328: bd400d03     	ldr	s3, [x8, #0xc]
 4e5232c: 1e201821     	fdiv	s1, s1, s0
 4e52330: 1e201860     	fdiv	s0, s3, s0
 4e52334: 952f05c6     	bl	0x9a13a4c <__start_il2cpp+0x535dae8>
 4e52338: 3945aae8     	ldrb	w8, [x23, #0x16a]
 4e5233c: f940a696     	ldr	x22, [x20, #0x148]
 4e52340: 350000c8     	cbnz	w8, 0x4e52358 <__start_il2cpp+0x79c3f4>
 4e52344: d002aca0     	adrp	x0, 0xa3e8000
 4e52348: f9413c00     	ldr	x0, [x0, #0x278]
 4e5234c: 97dcf9c5     	bl	0x4590a60 <.text+0x474260>
 4e52350: 52800028     	mov	w8, #0x1                // =1
 4e52354: 3905aae8     	strb	w8, [x23, #0x16a]
 4e52358: f9410668     	ldr	x8, [x19, #0x208]
 4e5235c: b4001be8     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52360: b4001bd6     	cbz	x22, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52364: f9400369     	ldr	x9, [x27]
 4e52368: bd403900     	ldr	s0, [x8, #0x38]
 4e5236c: aa1603e0     	mov	x0, x22
 4e52370: aa1f03e1     	mov	x1, xzr
 4e52374: f9405d29     	ldr	x9, [x9, #0xb8]
 4e52378: 2d420523     	ldp	s3, s1, [x9, #0x10]
 4e5237c: bd400d24     	ldr	s4, [x9, #0xc]
 4e52380: 1e200822     	fmul	s2, s1, s0
 4e52384: 1e230801     	fmul	s1, s0, s3
 4e52388: 1e240800     	fmul	s0, s0, s4
 4e5238c: 952f05b0     	bl	0x9a13a4c <__start_il2cpp+0x535dae8>
 4e52390: f9410668     	ldr	x8, [x19, #0x208]
 4e52394: b4001a28     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52398: b9402108     	ldr	w8, [x8, #0x20]
 4e5239c: 710f9d1f     	cmp	w8, #0x3e7
 4e523a0: 54000f8c     	b.gt	0x4e52590 <__start_il2cpp+0x79c62c>
 4e523a4: aa1303e0     	mov	x0, x19
 4e523a8: 97ffcb0e     	bl	0x4e44fe0 <__start_il2cpp+0x78f07c>
 4e523ac: f9400308     	ldr	x8, [x24]
 4e523b0: aa0003f6     	mov	x22, x0
 4e523b4: b940e509     	ldr	w9, [x8, #0xe4]
 4e523b8: 35000069     	cbnz	w9, 0x4e523c4 <__start_il2cpp+0x79c460>
 4e523bc: aa0803e0     	mov	x0, x8
 4e523c0: 97dcfa08     	bl	0x4590be0 <.text+0x4743e0>
 4e523c4: aa1603e0     	mov	x0, x22
 4e523c8: aa1f03e1     	mov	x1, xzr
 4e523cc: aa1f03e2     	mov	x2, xzr
 4e523d0: 952ec3b0     	bl	0x9a03290 <__start_il2cpp+0x534d32c>
 4e523d4: 36000de0     	tbz	w0, #0x0, 0x4e52590 <__start_il2cpp+0x79c62c>
 4e523d8: b4001816     	cbz	x22, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e523dc: aa1603e0     	mov	x0, x22
 4e523e0: aa1f03e1     	mov	x1, xzr
 4e523e4: 952eb8b3     	bl	0x9a006b0 <__start_il2cpp+0x534a74c>
 4e523e8: b4001780     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e523ec: 52800021     	mov	w1, #0x1                // =1
 4e523f0: aa1f03e2     	mov	x2, xzr
 4e523f4: 952ec5f8     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4e523f8: f9410660     	ldr	x0, [x19, #0x208]
 4e523fc: b40016e0     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52400: aa1f03e1     	mov	x1, xzr
 4e52404: 9415363e     	bl	0x539fcfc <__start_il2cpp+0xce9d98>
 4e52408: d002ada8     	adrp	x8, 0xa408000
 4e5240c: aa1f03e2     	mov	x2, xzr
 4e52410: f9465d08     	ldr	x8, [x8, #0xcb8]
 4e52414: f9400101     	ldr	x1, [x8]
 4e52418: 94f9daa8     	bl	0x8cc8eb8 <__start_il2cpp+0x4612f54>
 4e5241c: 2a0003f8     	mov	w24, w0
 4e52420: aa1503e0     	mov	x0, x21
 4e52424: aa1f03e1     	mov	x1, xzr
 4e52428: 940fb1be     	bl	0x523eb20 <__start_il2cpp+0xb88bbc>
 4e5242c: aa0003f7     	mov	x23, x0
 4e52430: 37000458     	tbnz	w24, #0x0, 0x4e524b8 <__start_il2cpp+0x79c554>
 4e52434: f9410660     	ldr	x0, [x19, #0x208]
 4e52438: b4001500     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e5243c: aa1f03e1     	mov	x1, xzr
 4e52440: 9415362f     	bl	0x539fcfc <__start_il2cpp+0xce9d98>
 4e52444: d002ace8     	adrp	x8, 0xa3f0000
 4e52448: aa0003f8     	mov	x24, x0
 4e5244c: f9412508     	ldr	x8, [x8, #0x248]
 4e52450: f9400119     	ldr	x25, [x8]
 4e52454: d002aea8     	adrp	x8, 0xa428000
 4e52458: f945c508     	ldr	x8, [x8, #0xb88]
 4e5245c: f9401f29     	ldr	x9, [x25, #0x38]
 4e52460: f940011a     	ldr	x26, [x8]
 4e52464: b5000109     	cbnz	x9, 0x4e52484 <__start_il2cpp+0x79c520>
 4e52468: 9002ace0     	adrp	x0, 0xa3ee000
 4e5246c: f9440400     	ldr	x0, [x0, #0x808]
 4e52470: 97dcf97c     	bl	0x4590a60 <.text+0x474260>
 4e52474: f9401f28     	ldr	x8, [x25, #0x38]
 4e52478: b5000068     	cbnz	x8, 0x4e52484 <__start_il2cpp+0x79c520>
 4e5247c: aa1903e0     	mov	x0, x25
 4e52480: 97dddac1     	bl	0x45c8f84 <JNI_OnUnload+0xe010>
 4e52484: 9002ace8     	adrp	x8, 0xa3ee000
 4e52488: f9440508     	ldr	x8, [x8, #0x808]
 4e5248c: f9400100     	ldr	x0, [x8]
 4e52490: b940e408     	ldr	w8, [x0, #0xe4]
 4e52494: 35000048     	cbnz	w8, 0x4e5249c <__start_il2cpp+0x79c538>
 4e52498: 97dcf9d2     	bl	0x4590be0 <.text+0x4743e0>
 4e5249c: f9401f28     	ldr	x8, [x25, #0x38]
 4e524a0: aa1a03e0     	mov	x0, x26
 4e524a4: aa1703e1     	mov	x1, x23
 4e524a8: aa1803e2     	mov	x2, x24
 4e524ac: f9400903     	ldr	x3, [x8, #0x10]
 4e524b0: 97e6299f     	bl	0x47dcb2c <__start_il2cpp+0x126bc8>
 4e524b4: aa0003f7     	mov	x23, x0
 4e524b8: f94002c8     	ldr	x8, [x22]
 4e524bc: aa1603e0     	mov	x0, x22
 4e524c0: aa1703e1     	mov	x1, x23
 4e524c4: f942f509     	ldr	x9, [x8, #0x5e8]
 4e524c8: f942f902     	ldr	x2, [x8, #0x5f0]
 4e524cc: d63f0120     	blr	x9
 4e524d0: 9106e280     	add	x0, x20, #0x1b8
 4e524d4: aa1603e1     	mov	x1, x22
 4e524d8: f900de96     	str	x22, [x20, #0x1b8]
 4e524dc: 97dcf94a     	bl	0x4590a04 <.text+0x474204>
 4e524e0: aa1603e0     	mov	x0, x22
 4e524e4: aa1f03e1     	mov	x1, xzr
 4e524e8: 952eb83e     	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 4e524ec: aa0003f6     	mov	x22, x0
 4e524f0: aa1403e0     	mov	x0, x20
 4e524f4: aa1f03e1     	mov	x1, xzr
 4e524f8: 952eb83a     	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 4e524fc: b4000ee0     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52500: aa1f03e1     	mov	x1, xzr
 4e52504: 952f030a     	bl	0x9a1312c <__start_il2cpp+0x535d1c8>
 4e52508: 1e204008     	fmov	s8, s0
 4e5250c: 1e204029     	fmov	s9, s1
 4e52510: 9002ebf7     	adrp	x23, 0xabce000
 4e52514: 1e20404a     	fmov	s10, s2
 4e52518: 3963eae8     	ldrb	w8, [x23, #0x8fa]
 4e5251c: 350000c8     	cbnz	w8, 0x4e52534 <__start_il2cpp+0x79c5d0>
 4e52520: d002aca0     	adrp	x0, 0xa3e8000
 4e52524: f9413c00     	ldr	x0, [x0, #0x278]
 4e52528: 97dcf94e     	bl	0x4590a60 <.text+0x474260>
 4e5252c: 52800028     	mov	w8, #0x1                // =1
 4e52530: 3923eae8     	strb	w8, [x23, #0x8fa]
 4e52534: f9410668     	ldr	x8, [x19, #0x208]
 4e52538: b4000d08     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e5253c: b4000cf6     	cbz	x22, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52540: bd4036a0     	ldr	s0, [x21, #0x34]
 4e52544: bd403901     	ldr	s1, [x8, #0x38]
 4e52548: aa1603e0     	mov	x0, x22
 4e5254c: f9400368     	ldr	x8, [x27]
 4e52550: aa1f03e1     	mov	x1, xzr
 4e52554: 1e210800     	fmul	s0, s0, s1
 4e52558: bd402ea1     	ldr	s1, [x21, #0x2c]
 4e5255c: f9405d08     	ldr	x8, [x8, #0xb8]
 4e52560: bd401903     	ldr	s3, [x8, #0x18]
 4e52564: 1e211800     	fdiv	s0, s0, s1
 4e52568: 1e2c1001     	fmov	s1, #0.50000000
 4e5256c: 1e212800     	fadd	s0, s0, s1
 4e52570: 2d438502     	ldp	s2, s1, [x8, #0x1c]
 4e52574: 1e200821     	fmul	s1, s1, s0
 4e52578: 1e200844     	fmul	s4, s2, s0
 4e5257c: 1e200860     	fmul	s0, s3, s0
 4e52580: 1e212942     	fadd	s2, s10, s1
 4e52584: 1e242921     	fadd	s1, s9, s4
 4e52588: 1e202900     	fadd	s0, s8, s0
 4e5258c: 952f031f     	bl	0x9a13208 <__start_il2cpp+0x535d2a4>
 4e52590: f9400288     	ldr	x8, [x20]
 4e52594: 52a82009     	mov	w9, #0x41000000         // =1090519040
 4e52598: aa1403e0     	mov	x0, x20
 4e5259c: b901329f     	str	wzr, [x20, #0x130]
 4e525a0: a95c850a     	ldp	x10, x1, [x8, #0x1c8]
 4e525a4: f0fe86a8     	adrp	x8, 0x1f29000
 4e525a8: bd494500     	ldr	s0, [x8, #0x944]
 4e525ac: b9018289     	str	w9, [x20, #0x180]
 4e525b0: d63f0140     	blr	x10
 4e525b4: d2a80009     	mov	x9, #0x40000000         // =1073741824
 4e525b8: 91063288     	add	x8, x20, #0x18c
 4e525bc: f2e83909     	movk	x9, #0x41c8, lsl #48
 4e525c0: f9000109     	str	x9, [x8]
 4e525c4: f9410668     	ldr	x8, [x19, #0x208]
 4e525c8: b4000888     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e525cc: f9400289     	ldr	x9, [x20]
 4e525d0: bd40d500     	ldr	s0, [x8, #0xd4]
 4e525d4: aa1403e0     	mov	x0, x20
 4e525d8: a95e8528     	ldp	x8, x1, [x9, #0x1e8]
 4e525dc: d63f0100     	blr	x8
 4e525e0: f9410668     	ldr	x8, [x19, #0x208]
 4e525e4: b40007a8     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e525e8: f9400289     	ldr	x9, [x20]
 4e525ec: bd40d900     	ldr	s0, [x8, #0xd8]
 4e525f0: aa1403e0     	mov	x0, x20
 4e525f4: f9410528     	ldr	x8, [x9, #0x208]
 4e525f8: f9410921     	ldr	x1, [x9, #0x210]
 4e525fc: d63f0100     	blr	x8
 4e52600: 91065288     	add	x8, x20, #0x194
 4e52604: f9400289     	ldr	x9, [x20]
 4e52608: bd4036a0     	ldr	s0, [x21, #0x34]
 4e5260c: f900011f     	str	xzr, [x8]
 4e52610: aa1403e0     	mov	x0, x20
 4e52614: b94012a1     	ldr	w1, [x21, #0x10]
 4e52618: f941e528     	ldr	x8, [x9, #0x3c8]
 4e5261c: f941e922     	ldr	x2, [x9, #0x3d0]
 4e52620: bd018680     	str	s0, [x20, #0x184]
 4e52624: d63f0100     	blr	x8
 4e52628: f940a260     	ldr	x0, [x19, #0x140]
 4e5262c: b4000560     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52630: d002aea9     	adrp	x9, 0xa428000
 4e52634: f9445529     	ldr	x9, [x9, #0x8a8]
 4e52638: b9401c0a     	ldr	w10, [x0, #0x1c]
 4e5263c: f9400808     	ldr	x8, [x0, #0x10]
 4e52640: f9400129     	ldr	x9, [x9]
 4e52644: 1100054a     	add	w10, w10, #0x1
 4e52648: b9001c0a     	str	w10, [x0, #0x1c]
 4e5264c: b4000468     	cbz	x8, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e52650: b980180a     	ldrsw	x10, [x0, #0x18]
 4e52654: b940190b     	ldr	w11, [x8, #0x18]
 4e52658: 6b0b015f     	cmp	w10, w11
 4e5265c: 54000122     	b.hs	0x4e52680 <__start_il2cpp+0x79c71c>
 4e52660: 8b0a0d08     	add	x8, x8, x10, lsl #3
 4e52664: 11000549     	add	w9, w10, #0x1
 4e52668: aa1403e1     	mov	x1, x20
 4e5266c: b9001809     	str	w9, [x0, #0x18]
 4e52670: f8020d14     	str	x20, [x8, #0x20]!
 4e52674: aa0803e0     	mov	x0, x8
 4e52678: 97dcf8e3     	bl	0x4590a04 <.text+0x474204>
 4e5267c: 14000006     	b	0x4e52694 <__start_il2cpp+0x79c730>
 4e52680: f9401128     	ldr	x8, [x9, #0x20]
 4e52684: aa1403e1     	mov	x1, x20
 4e52688: f9406108     	ldr	x8, [x8, #0xc0]
 4e5268c: f9403902     	ldr	x2, [x8, #0x70]
 4e52690: 9476d980     	bl	0x6c08c90 <__start_il2cpp+0x2552d2c>
 4e52694: aa1403e0     	mov	x0, x20
 4e52698: aa1f03e1     	mov	x1, xzr
 4e5269c: 952eb805     	bl	0x9a006b0 <__start_il2cpp+0x534a74c>
 4e526a0: b40001c0     	cbz	x0, 0x4e526d8 <__start_il2cpp+0x79c774>
 4e526a4: 52800021     	mov	w1, #0x1                // =1
 4e526a8: aa1f03e2     	mov	x2, xzr
 4e526ac: 952ec54a     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4e526b0: aa1403e0     	mov	x0, x20
 4e526b4: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
 4e526b8: fd4023ea     	ldr	d10, [sp, #0x40]
 4e526bc: a94957f6     	ldp	x22, x21, [sp, #0x90]
 4e526c0: a9485ff8     	ldp	x24, x23, [sp, #0x80]
 4e526c4: a94767fa     	ldp	x26, x25, [sp, #0x70]
 4e526c8: a9466ffe     	ldp	x30, x27, [sp, #0x60]
 4e526cc: 6d4523e9     	ldp	d9, d8, [sp, #0x50]
 4e526d0: 9102c3ff     	add	sp, sp, #0xb0
 4e526d4: d65f03c0     	ret
 4e526d8: 97dcf98d     	bl	0x4590d0c <.text+0x47450c>
