
/mnt/data/step17_work/libil2cpp.so:	file format elf64-littleaarch64

Disassembly of section il2cpp:

00000000046b5f64 <__start_il2cpp>:
 4e517d8: d10183ff     	sub	sp, sp, #0x60
 4e517dc: fd000bea     	str	d10, [sp, #0x10]
 4e517e0: 6d01a3e9     	stp	d9, d8, [sp, #0x18]
 4e517e4: f90017fe     	str	x30, [sp, #0x28]
 4e517e8: a9035ff8     	stp	x24, x23, [sp, #0x30]
 4e517ec: a90457f6     	stp	x22, x21, [sp, #0x40]
 4e517f0: a9054ff4     	stp	x20, x19, [sp, #0x50]
 4e517f4: 1e204048     	fmov	s8, s2
 4e517f8: 1e204029     	fmov	s9, s1
 4e517fc: 9002ec34     	adrp	x20, 0xabd5000
 4e51800: 1e20400a     	fmov	s10, s0
 4e51804: 39454a88     	ldrb	w8, [x20, #0x152]
 4e51808: 2a0103f5     	mov	w21, w1
 4e5180c: aa0003f3     	mov	x19, x0
 4e51810: 37000368     	tbnz	w8, #0x0, 0x4e5187c <__start_il2cpp+0x79b918>
 4e51814: 9002acc0     	adrp	x0, 0xa3e9000
 4e51818: f946f000     	ldr	x0, [x0, #0xde0]
 4e5181c: 97dcfc91     	bl	0x4590a60 <.text+0x474260>
 4e51820: b002ace0     	adrp	x0, 0xa3ee000
 4e51824: f9441c00     	ldr	x0, [x0, #0x838]
 4e51828: 97dcfc8e     	bl	0x4590a60 <.text+0x474260>
 4e5182c: d002ae60     	adrp	x0, 0xa41f000
 4e51830: f9457c00     	ldr	x0, [x0, #0xaf8]
 4e51834: 97dcfc8b     	bl	0x4590a60 <.text+0x474260>
 4e51838: f002aea0     	adrp	x0, 0xa428000
 4e5183c: f9445400     	ldr	x0, [x0, #0x8a8]
 4e51840: 97dcfc88     	bl	0x4590a60 <.text+0x474260>
 4e51844: f002ae00     	adrp	x0, 0xa414000
 4e51848: f947b400     	ldr	x0, [x0, #0xf68]
 4e5184c: 97dcfc85     	bl	0x4590a60 <.text+0x474260>
 4e51850: f002aea0     	adrp	x0, 0xa428000
 4e51854: f9445800     	ldr	x0, [x0, #0x8b0]
 4e51858: 97dcfc82     	bl	0x4590a60 <.text+0x474260>
 4e5185c: d002aca0     	adrp	x0, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4e51860: f9425400     	ldr	x0, [x0, #0x4a8]
 4e51864: 97dcfc7f     	bl	0x4590a60 <.text+0x474260>
 4e51868: d002ae60     	adrp	x0, 0xa41f000
 4e5186c: f9458800     	ldr	x0, [x0, #0xb10]
 4e51870: 97dcfc7c     	bl	0x4590a60 <.text+0x474260>
 4e51874: 52800028     	mov	w8, #0x1                // =1
 4e51878: 39054a88     	strb	w8, [x20, #0x152]
 4e5187c: 5283cb00     	mov	w0, #0x1e58             // =7768
 4e51880: aa1f03e1     	mov	x1, xzr
 4e51884: 97f7d748     	bl	0x4c475a4 <__start_il2cpp+0x591640>
 4e51888: 36000260     	tbz	w0, #0x0, 0x4e518d4 <__start_il2cpp+0x79b970>
 4e5188c: 5283cb00     	mov	w0, #0x1e58             // =7768
 4e51890: aa1f03e1     	mov	x1, xzr
 4e51894: 97f7d771     	bl	0x4c47658 <__start_il2cpp+0x5916f4>
 4e51898: b4002440     	cbz	x0, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e5189c: aa1303e1     	mov	x1, x19
 4e518a0: 2a1503e2     	mov	w2, w21
 4e518a4: 1e204121     	fmov	s1, s9
 4e518a8: 1e204102     	fmov	s2, s8
 4e518ac: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 4e518b0: a94457f6     	ldp	x22, x21, [sp, #0x40]
 4e518b4: 1e204140     	fmov	s0, s10
 4e518b8: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 4e518bc: f94017fe     	ldr	x30, [sp, #0x28]
 4e518c0: 6d41a3e9     	ldp	d9, d8, [sp, #0x18]
 4e518c4: fd400bea     	ldr	d10, [sp, #0x10]
 4e518c8: aa1f03e3     	mov	x3, xzr
 4e518cc: 910183ff     	add	sp, sp, #0x60
 4e518d0: 17f58527     	b	0x4bb2d6c <__start_il2cpp+0x4fce08>
 4e518d4: f002aea8     	adrp	x8, 0xa428000
 4e518d8: f9445908     	ldr	x8, [x8, #0x8b0]
 4e518dc: f9400108     	ldr	x8, [x8]
 4e518e0: f9405d08     	ldr	x8, [x8, #0xb8]
 4e518e4: f9400100     	ldr	x0, [x8]
 4e518e8: b40021c0     	cbz	x0, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e518ec: d002ae68     	adrp	x8, 0xa41f000
 4e518f0: aa1f03e2     	mov	x2, xzr
 4e518f4: f9458908     	ldr	x8, [x8, #0xb10]
 4e518f8: f9400101     	ldr	x1, [x8]
 4e518fc: 9401e801     	bl	0x4ecb900 <__start_il2cpp+0x81599c>
 4e51900: d002aca8     	adrp	x8, 0xa3e7000 <_ZTVN10__cxxabiv129__pointer_to_member_type_infoE+0x2938>
 4e51904: aa0003f4     	mov	x20, x0
 4e51908: f9425508     	ldr	x8, [x8, #0x4a8]
 4e5190c: f9400108     	ldr	x8, [x8]
 4e51910: b940e509     	ldr	w9, [x8, #0xe4]
 4e51914: 35000069     	cbnz	w9, 0x4e51920 <__start_il2cpp+0x79b9bc>
 4e51918: aa0803e0     	mov	x0, x8
 4e5191c: 97dcfcb1     	bl	0x4590be0 <.text+0x4743e0>
 4e51920: aa1403e0     	mov	x0, x20
 4e51924: aa1f03e1     	mov	x1, xzr
 4e51928: aa1f03e2     	mov	x2, xzr
 4e5192c: 952ecd99     	bl	0x9a04f90 <__start_il2cpp+0x534f02c>
 4e51930: 37001e80     	tbnz	w0, #0x0, 0x4e51d00 <__start_il2cpp+0x79bd9c>
 4e51934: b4001f74     	cbz	x20, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51938: aa1403e0     	mov	x0, x20
 4e5193c: aa1f03e1     	mov	x1, xzr
 4e51940: 952ebb28     	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 4e51944: b4001ee0     	cbz	x0, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51948: 1e204140     	fmov	s0, s10
 4e5194c: 1e204121     	fmov	s1, s9
 4e51950: aa1f03e1     	mov	x1, xzr
 4e51954: 1e204102     	fmov	s2, s8
 4e51958: 952f062c     	bl	0x9a13208 <__start_il2cpp+0x535d2a4>
 4e5195c: aa1403e0     	mov	x0, x20
 4e51960: aa1f03e1     	mov	x1, xzr
 4e51964: 952ebb1f     	bl	0x9a005e0 <__start_il2cpp+0x534a67c>
 4e51968: aa0003f6     	mov	x22, x0
 4e5196c: 910003e0     	mov	x0, sp
 4e51970: aa1f03e1     	mov	x1, xzr
 4e51974: b9000bff     	str	wzr, [sp, #0x8]
 4e51978: f90003ff     	str	xzr, [sp]
 4e5197c: 952e865e     	bl	0x99f32f4 <__start_il2cpp+0x533d390>
 4e51980: b4001d16     	cbz	x22, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51984: aa1603e0     	mov	x0, x22
 4e51988: aa1f03e1     	mov	x1, xzr
 4e5198c: 952f06c3     	bl	0x9a13498 <__start_il2cpp+0x535d534>
 4e51990: b002acf6     	adrp	x22, 0xa3ee000
 4e51994: f9441ed6     	ldr	x22, [x22, #0x838]
 4e51998: f94002c0     	ldr	x0, [x22]
 4e5199c: b940e408     	ldr	w8, [x0, #0xe4]
 4e519a0: 35000048     	cbnz	w8, 0x4e519a8 <__start_il2cpp+0x79ba44>
 4e519a4: 97dcfc8f     	bl	0x4590be0 <.text+0x4743e0>
 4e519a8: d002ebf7     	adrp	x23, 0xabcf000
 4e519ac: 3945a2e8     	ldrb	w8, [x23, #0x168]
 4e519b0: 350000c8     	cbnz	w8, 0x4e519c8 <__start_il2cpp+0x79ba64>
 4e519b4: b002ace0     	adrp	x0, 0xa3ee000
 4e519b8: f9441c00     	ldr	x0, [x0, #0x838]
 4e519bc: 97dcfc29     	bl	0x4590a60 <.text+0x474260>
 4e519c0: 52800028     	mov	w8, #0x1                // =1
 4e519c4: 3905a2e8     	strb	w8, [x23, #0x168]
 4e519c8: f94002c0     	ldr	x0, [x22]
 4e519cc: b940e408     	ldr	w8, [x0, #0xe4]
 4e519d0: 35000068     	cbnz	w8, 0x4e519dc <__start_il2cpp+0x79ba78>
 4e519d4: 97dcfc83     	bl	0x4590be0 <.text+0x4743e0>
 4e519d8: f94002c0     	ldr	x0, [x22]
 4e519dc: f9405c08     	ldr	x8, [x0, #0xb8]
 4e519e0: f9400108     	ldr	x8, [x8]
 4e519e4: b40019e8     	cbz	x8, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e519e8: f9405100     	ldr	x0, [x8, #0xa0]
 4e519ec: b40019a0     	cbz	x0, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e519f0: d002ae68     	adrp	x8, 0xa41f000
 4e519f4: 2a1503e1     	mov	w1, w21
 4e519f8: f9457d08     	ldr	x8, [x8, #0xaf8]
 4e519fc: f9400102     	ldr	x2, [x8]
 4e51a00: 94c81b65     	bl	0x8058794 <__start_il2cpp+0x39a2830>
 4e51a04: aa0003f5     	mov	x21, x0
 4e51a08: aa1303e0     	mov	x0, x19
 4e51a0c: 97ffff01     	bl	0x4e51610 <__start_il2cpp+0x79b6ac>
 4e51a10: aa0003e2     	mov	x2, x0
 4e51a14: aa0103e3     	mov	x3, x1
 4e51a18: aa1403e0     	mov	x0, x20
 4e51a1c: aa0203e1     	mov	x1, x2
 4e51a20: aa0303e2     	mov	x2, x3
 4e51a24: aa1f03e3     	mov	x3, xzr
 4e51a28: 940712ea     	bl	0x50165d0 <__start_il2cpp+0x96066c>
 4e51a2c: aa1403e0     	mov	x0, x20
 4e51a30: aa1f03e1     	mov	x1, xzr
 4e51a34: 940712d4     	bl	0x5016584 <__start_il2cpp+0x960620>
 4e51a38: aa0003e2     	mov	x2, x0
 4e51a3c: aa0103e3     	mov	x3, x1
 4e51a40: aa1403e0     	mov	x0, x20
 4e51a44: aa0203e1     	mov	x1, x2
 4e51a48: aa0303e2     	mov	x2, x3
 4e51a4c: aa1f03e3     	mov	x3, xzr
 4e51a50: 9407130f     	bl	0x501668c <__start_il2cpp+0x960728>
 4e51a54: 9002acc8     	adrp	x8, 0xa3e9000
 4e51a58: f946f108     	ldr	x8, [x8, #0xde0]
 4e51a5c: f9400100     	ldr	x0, [x8]
 4e51a60: b940e408     	ldr	w8, [x0, #0xe4]
 4e51a64: 35000048     	cbnz	w8, 0x4e51a6c <__start_il2cpp+0x79bb08>
 4e51a68: 97dcfc5e     	bl	0x4590be0 <.text+0x4743e0>
 4e51a6c: 2a1f03e0     	mov	w0, wzr
 4e51a70: aa1f03e1     	mov	x1, xzr
 4e51a74: 950cad4c     	bl	0x917cfa4 <__start_il2cpp+0x4ac7040>
 4e51a78: a9170680     	stp	x0, x1, [x20, #0x170]
 4e51a7c: 9105e280     	add	x0, x20, #0x178
 4e51a80: aa1f03e1     	mov	x1, xzr
 4e51a84: 97dcfbe0     	bl	0x4590a04 <.text+0x474204>
 4e51a88: d002ebf7     	adrp	x23, 0xabcf000
 4e51a8c: f940aa96     	ldr	x22, [x20, #0x150]
 4e51a90: 3905a69f     	strb	wzr, [x20, #0x169]
 4e51a94: 3945aae8     	ldrb	w8, [x23, #0x16a]
 4e51a98: 350000c8     	cbnz	w8, 0x4e51ab0 <__start_il2cpp+0x79bb4c>
 4e51a9c: f002aca0     	adrp	x0, 0xa3e8000
 4e51aa0: f9413c00     	ldr	x0, [x0, #0x278]
 4e51aa4: 97dcfbef     	bl	0x4590a60 <.text+0x474260>
 4e51aa8: 52800028     	mov	w8, #0x1                // =1
 4e51aac: 3905aae8     	strb	w8, [x23, #0x16a]
 4e51ab0: b4001395     	cbz	x21, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51ab4: b4001376     	cbz	x22, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51ab8: f002acb8     	adrp	x24, 0xa3e8000
 4e51abc: aa1603e0     	mov	x0, x22
 4e51ac0: aa1f03e1     	mov	x1, xzr
 4e51ac4: f9413f18     	ldr	x24, [x24, #0x278]
 4e51ac8: bd402ea0     	ldr	s0, [x21, #0x2c]
 4e51acc: f9400308     	ldr	x8, [x24]
 4e51ad0: f9405d08     	ldr	x8, [x8, #0xb8]
 4e51ad4: 2d420d01     	ldp	s1, s3, [x8, #0x10]
 4e51ad8: 1e201862     	fdiv	s2, s3, s0
 4e51adc: bd400d03     	ldr	s3, [x8, #0xc]
 4e51ae0: 1e201821     	fdiv	s1, s1, s0
 4e51ae4: 1e201860     	fdiv	s0, s3, s0
 4e51ae8: 952f07d9     	bl	0x9a13a4c <__start_il2cpp+0x535dae8>
 4e51aec: 3945aae8     	ldrb	w8, [x23, #0x16a]
 4e51af0: f940a696     	ldr	x22, [x20, #0x148]
 4e51af4: 350000c8     	cbnz	w8, 0x4e51b0c <__start_il2cpp+0x79bba8>
 4e51af8: f002aca0     	adrp	x0, 0xa3e8000
 4e51afc: f9413c00     	ldr	x0, [x0, #0x278]
 4e51b00: 97dcfbd8     	bl	0x4590a60 <.text+0x474260>
 4e51b04: 52800028     	mov	w8, #0x1                // =1
 4e51b08: 3905aae8     	strb	w8, [x23, #0x16a]
 4e51b0c: f9410668     	ldr	x8, [x19, #0x208]
 4e51b10: b4001088     	cbz	x8, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51b14: b4001076     	cbz	x22, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51b18: f9400309     	ldr	x9, [x24]
 4e51b1c: bd405500     	ldr	s0, [x8, #0x54]
 4e51b20: aa1603e0     	mov	x0, x22
 4e51b24: aa1f03e1     	mov	x1, xzr
 4e51b28: f9405d29     	ldr	x9, [x9, #0xb8]
 4e51b2c: 2d420523     	ldp	s3, s1, [x9, #0x10]
 4e51b30: bd400d24     	ldr	s4, [x9, #0xc]
 4e51b34: 1e200822     	fmul	s2, s1, s0
 4e51b38: 1e230801     	fmul	s1, s0, s3
 4e51b3c: 1e240800     	fmul	s0, s0, s4
 4e51b40: 952f07c3     	bl	0x9a13a4c <__start_il2cpp+0x535dae8>
 4e51b44: f9400288     	ldr	x8, [x20]
 4e51b48: 52a82009     	mov	w9, #0x41000000         // =1090519040
 4e51b4c: aa1403e0     	mov	x0, x20
 4e51b50: b901329f     	str	wzr, [x20, #0x130]
 4e51b54: a95c850a     	ldp	x10, x1, [x8, #0x1c8]
 4e51b58: 90fe86c8     	adrp	x8, 0x1f29000
 4e51b5c: bd494500     	ldr	s0, [x8, #0x944]
 4e51b60: b9018289     	str	w9, [x20, #0x180]
 4e51b64: d63f0140     	blr	x10
 4e51b68: f9410668     	ldr	x8, [x19, #0x208]
 4e51b6c: b4000da8     	cbz	x8, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51b70: f9400289     	ldr	x9, [x20]
 4e51b74: bd40d500     	ldr	s0, [x8, #0xd4]
 4e51b78: aa1403e0     	mov	x0, x20
 4e51b7c: a95e8528     	ldp	x8, x1, [x9, #0x1e8]
 4e51b80: d63f0100     	blr	x8
 4e51b84: f9410668     	ldr	x8, [x19, #0x208]
 4e51b88: b4000cc8     	cbz	x8, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51b8c: f9400289     	ldr	x9, [x20]
 4e51b90: bd40d900     	ldr	s0, [x8, #0xd8]
 4e51b94: aa1403e0     	mov	x0, x20
 4e51b98: f9410528     	ldr	x8, [x9, #0x208]
 4e51b9c: f9410921     	ldr	x1, [x9, #0x210]
 4e51ba0: d63f0100     	blr	x8
 4e51ba4: 91065288     	add	x8, x20, #0x194
 4e51ba8: f9400289     	ldr	x9, [x20]
 4e51bac: bd4036a0     	ldr	s0, [x21, #0x34]
 4e51bb0: f900011f     	str	xzr, [x8]
 4e51bb4: aa1403e0     	mov	x0, x20
 4e51bb8: b94012a1     	ldr	w1, [x21, #0x10]
 4e51bbc: f941e528     	ldr	x8, [x9, #0x3c8]
 4e51bc0: f941e922     	ldr	x2, [x9, #0x3d0]
 4e51bc4: bd018680     	str	s0, [x20, #0x184]
 4e51bc8: d63f0100     	blr	x8
 4e51bcc: f002ae15     	adrp	x21, 0xa414000
 4e51bd0: f947b6b5     	ldr	x21, [x21, #0xf68]
 4e51bd4: f94002a8     	ldr	x8, [x21]
 4e51bd8: f9401100     	ldr	x0, [x8, #0x20]
 4e51bdc: 9104d408     	add	x8, x0, #0x135
 4e51be0: 79400108     	ldrh	w8, [x8]
 4e51be4: 37000048     	tbnz	w8, #0x0, 0x4e51bec <__start_il2cpp+0x79bc88>
 4e51be8: 97dddcd0     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4e51bec: f9406008     	ldr	x8, [x0, #0xc0]
 4e51bf0: f9400900     	ldr	x0, [x8, #0x10]
 4e51bf4: 9104d408     	add	x8, x0, #0x135
 4e51bf8: 79400108     	ldrh	w8, [x8]
 4e51bfc: 37000048     	tbnz	w8, #0x0, 0x4e51c04 <__start_il2cpp+0x79bca0>
 4e51c00: 97dddcca     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4e51c04: f9405c08     	ldr	x8, [x0, #0xb8]
 4e51c08: f9400100     	ldr	x0, [x8]
 4e51c0c: b40008a0     	cbz	x0, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51c10: aa1f03e1     	mov	x1, xzr
 4e51c14: 9415d4f0     	bl	0x53c6fd4 <__start_il2cpp+0xd11070>
 4e51c18: 36000300     	tbz	w0, #0x0, 0x4e51c78 <__start_il2cpp+0x79bd14>
 4e51c1c: f94002a8     	ldr	x8, [x21]
 4e51c20: f9401100     	ldr	x0, [x8, #0x20]
 4e51c24: 9104d408     	add	x8, x0, #0x135
 4e51c28: 79400108     	ldrh	w8, [x8]
 4e51c2c: 37000048     	tbnz	w8, #0x0, 0x4e51c34 <__start_il2cpp+0x79bcd0>
 4e51c30: 97dddcbe     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4e51c34: f9406008     	ldr	x8, [x0, #0xc0]
 4e51c38: f9400900     	ldr	x0, [x8, #0x10]
 4e51c3c: 9104d408     	add	x8, x0, #0x135
 4e51c40: 79400108     	ldrh	w8, [x8]
 4e51c44: 37000048     	tbnz	w8, #0x0, 0x4e51c4c <__start_il2cpp+0x79bce8>
 4e51c48: 97dddcb8     	bl	0x45c8f28 <JNI_OnUnload+0xdfb4>
 4e51c4c: f9405c08     	ldr	x8, [x0, #0xb8]
 4e51c50: f9400108     	ldr	x8, [x8]
 4e51c54: b4000668     	cbz	x8, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51c58: f9402508     	ldr	x8, [x8, #0x48]
 4e51c5c: b4000628     	cbz	x8, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51c60: b9402908     	ldr	w8, [x8, #0x28]
 4e51c64: 7100091f     	cmp	w8, #0x2
 4e51c68: 54000081     	b.ne	0x4e51c78 <__start_il2cpp+0x79bd14>
 4e51c6c: aa1303e0     	mov	x0, x19
 4e51c70: aa1403e1     	mov	x1, x20
 4e51c74: 9400002c     	bl	0x4e51d24 <__start_il2cpp+0x79bdc0>
 4e51c78: f940a260     	ldr	x0, [x19, #0x140]
 4e51c7c: b4000520     	cbz	x0, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51c80: f002aea9     	adrp	x9, 0xa428000
 4e51c84: f9445529     	ldr	x9, [x9, #0x8a8]
 4e51c88: b9401c0a     	ldr	w10, [x0, #0x1c]
 4e51c8c: f9400808     	ldr	x8, [x0, #0x10]
 4e51c90: f9400129     	ldr	x9, [x9]
 4e51c94: 1100054a     	add	w10, w10, #0x1
 4e51c98: b9001c0a     	str	w10, [x0, #0x1c]
 4e51c9c: b4000428     	cbz	x8, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51ca0: b980180a     	ldrsw	x10, [x0, #0x18]
 4e51ca4: b940190b     	ldr	w11, [x8, #0x18]
 4e51ca8: 6b0b015f     	cmp	w10, w11
 4e51cac: 54000122     	b.hs	0x4e51cd0 <__start_il2cpp+0x79bd6c>
 4e51cb0: 8b0a0d08     	add	x8, x8, x10, lsl #3
 4e51cb4: 11000549     	add	w9, w10, #0x1
 4e51cb8: aa1403e1     	mov	x1, x20
 4e51cbc: b9001809     	str	w9, [x0, #0x18]
 4e51cc0: f8020d14     	str	x20, [x8, #0x20]!
 4e51cc4: aa0803e0     	mov	x0, x8
 4e51cc8: 97dcfb4f     	bl	0x4590a04 <.text+0x474204>
 4e51ccc: 14000006     	b	0x4e51ce4 <__start_il2cpp+0x79bd80>
 4e51cd0: f9401128     	ldr	x8, [x9, #0x20]
 4e51cd4: aa1403e1     	mov	x1, x20
 4e51cd8: f9406108     	ldr	x8, [x8, #0xc0]
 4e51cdc: f9403902     	ldr	x2, [x8, #0x70]
 4e51ce0: 9476dbec     	bl	0x6c08c90 <__start_il2cpp+0x2552d2c>
 4e51ce4: aa1403e0     	mov	x0, x20
 4e51ce8: aa1f03e1     	mov	x1, xzr
 4e51cec: 952eba71     	bl	0x9a006b0 <__start_il2cpp+0x534a74c>
 4e51cf0: b4000180     	cbz	x0, 0x4e51d20 <__start_il2cpp+0x79bdbc>
 4e51cf4: 52800021     	mov	w1, #0x1                // =1
 4e51cf8: aa1f03e2     	mov	x2, xzr
 4e51cfc: 952ec7b6     	bl	0x9a03bd4 <__start_il2cpp+0x534dc70>
 4e51d00: a9454ff4     	ldp	x20, x19, [sp, #0x50]
 4e51d04: f94017fe     	ldr	x30, [sp, #0x28]
 4e51d08: a94457f6     	ldp	x22, x21, [sp, #0x40]
 4e51d0c: fd400bea     	ldr	d10, [sp, #0x10]
 4e51d10: a9435ff8     	ldp	x24, x23, [sp, #0x30]
 4e51d14: 6d41a3e9     	ldp	d9, d8, [sp, #0x18]
 4e51d18: 910183ff     	add	sp, sp, #0x60
 4e51d1c: d65f03c0     	ret
 4e51d20: 97dcfbfb     	bl	0x4590d0c <.text+0x47450c>
