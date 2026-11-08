004d0aef0 	str	x30, [sp, #-48]!
004d0aef4 	stp	x22, x21, [sp, #16]
004d0aef8 	stp	x20, x19, [sp, #32]
004d0aefc 	adrp	x20, #99393536 ; -> 0xabd4000 
004d0af00 	mov	x19, x0
004d0af04 	ldrb	w8, [x20, #2354]
004d0af08 	tbnz	w8, #0, #132 ; -> 0x4d0af8c 
004d0af0c 	adrp	x0, #91090944 ; -> 0xa3e9000 
004d0af10 	ldr	x0, [x0, #1384]
004d0af14 	bl	#-7840948 ; -> 0x4590a60 
004d0af18 	adrp	x0, #91090944 ; -> 0xa3e9000 
004d0af1c 	ldr	x0, [x0, #1864]
004d0af20 	bl	#-7840960 ; -> 0x4590a60 
004d0af24 	adrp	x0, #91086848 ; -> 0xa3e8000 
004d0af28 	ldr	x0, [x0, #2680]
004d0af2c 	bl	#-7840972 ; -> 0x4590a60 
004d0af30 	adrp	x0, #91316224 ; -> 0xa420000 
004d0af34 	ldr	x0, [x0, #1672]
004d0af38 	bl	#-7840984 ; -> 0x4590a60 
004d0af3c 	adrp	x0, #91316224 ; -> 0xa420000 
004d0af40 	ldr	x0, [x0, #1680]
004d0af44 	bl	#-7840996 ; -> 0x4590a60 
004d0af48 	adrp	x0, #91090944 ; -> 0xa3e9000 
004d0af4c 	ldr	x0, [x0, #736]
004d0af50 	bl	#-7841008 ; -> 0x4590a60 
004d0af54 	adrp	x0, #91115520 ; -> 0xa3ef000 
004d0af58 	ldr	x0, [x0, #40]
004d0af5c 	bl	#-7841020 ; -> 0x4590a60 
004d0af60 	adrp	x0, #91275264 ; -> 0xa416000 
004d0af64 	ldr	x0, [x0, #1008]
004d0af68 	bl	#-7841032 ; -> 0x4590a60 
004d0af6c 	adrp	x0, #91316224 ; -> 0xa420000 
004d0af70 	ldr	x0, [x0, #1624]
004d0af74 	bl	#-7841044 ; -> 0x4590a60 
004d0af78 	adrp	x0, #91316224 ; -> 0xa420000 
004d0af7c 	ldr	x0, [x0, #1688]
004d0af80 	bl	#-7841056 ; -> 0x4590a60 
004d0af84 	mov	w8, #1
004d0af88 	strb	w8, [x20, #2354]
004d0af8c 	ldr	w8, [x19, #16]
004d0af90 	ldr	x22, [x19, #40]
004d0af94 	mov	w20, wzr
004d0af98 	cmp	w8, #1
004d0af9c 	b.gt	#216 ; -> 0x4d0b074 
004d0afa0 	cbz	w8, #312 ; -> 0x4d0b0d8 
004d0afa4 	cmp	w8, #1
004d0afa8 	b.ne	#708 ; -> 0x4d0b26c 
004d0afac 	ldr	x8, [x19, #48]
004d0afb0 	mov	w9, #-1
004d0afb4 	str	w9, [x19, #16]
004d0afb8 	cbz	x8, #712 ; -> 0x4d0b280 
004d0afbc 	adrp	x9, #91086848 ; -> 0xa3e8000 
004d0afc0 	ldr	x9, [x9, #2680]
004d0afc4 	ldr	x20, [x8, #16]
004d0afc8 	ldr	x0, [x9]
004d0afcc 	ldr	w9, [x0, #228]
004d0afd0 	cbnz	w9, #8 ; -> 0x4d0afd8 
004d0afd4 	bl	#-7840756 ; -> 0x4590be0 
004d0afd8 	mov	x0, x20
004d0afdc 	mov	x1, xzr
004d0afe0 	bl	#80810044 ; -> 0x9a1c01c UnityEngine.SceneManagement.SceneManager::LoadScene
004d0afe4 	adrp	x20, #91090944 ; -> 0xa3e9000 
004d0afe8 	ldr	x20, [x20, #1384]
004d0afec 	ldr	x0, [x20]
004d0aff0 	ldr	w8, [x0, #228]
004d0aff4 	cbnz	w8, #12 ; -> 0x4d0b000 
004d0aff8 	bl	#-7840792 ; -> 0x4590be0 
004d0affc 	ldr	x0, [x20]
004d0b000 	adrp	x8, #91086848 ; -> 0xa3e9000 
004d0b004 	mov	w20, #1
004d0b008 	ldr	x8, [x8, #1864]
004d0b00c 	ldr	x9, [x0, #184]
004d0b010 	ldr	x21, [x19, #48]
004d0b014 	ldr	x0, [x8]
004d0b018 	strb	w20, [x9, #104]
004d0b01c 	bl	#-7840544 ; -> 0x4590cfc 
004d0b020 	adrp	x8, #91312128 ; -> 0xa420000 
004d0b024 	mov	x1, x21
004d0b028 	mov	x3, xzr
004d0b02c 	ldr	x8, [x8, #1672]
004d0b030 	mov	x22, x0
004d0b034 	ldr	x2, [x8]
004d0b038 	bl	#27418300 ; -> 0x6730ef4 
004d0b03c 	adrp	x8, #91271168 ; -> 0xa416000 
004d0b040 	ldr	x8, [x8, #1008]
004d0b044 	ldr	x0, [x8]
004d0b048 	bl	#-7840588 ; -> 0x4590cfc 
004d0b04c 	mov	x1, x22
004d0b050 	mov	x2, xzr
004d0b054 	mov	x21, x0
004d0b058 	bl	#80743588 ; -> 0x9a0bcfc UnityEngine.WaitUntil::.ctor
004d0b05c 	str	x21, [x19, #24]!
004d0b060 	mov	x0, x19
004d0b064 	mov	x1, x21
004d0b068 	bl	#-7841380 ; -> 0x4590a04 
004d0b06c 	mov	w8, #2
004d0b070 	b	#504 ; -> 0x4d0b268 
004d0b074 	cmp	w8, #2
004d0b078 	b.eq	#368 ; -> 0x4d0b1e8 
004d0b07c 	cmp	w8, #3
004d0b080 	b.ne	#492 ; -> 0x4d0b26c 
004d0b084 	mov	w8, #-1
004d0b088 	str	w8, [x19, #16]
004d0b08c 	cbz	x22, #500 ; -> 0x4d0b280 
004d0b090 	ldr	x0, [x22, #32]
004d0b094 	cbz	x0, #492 ; -> 0x4d0b280 
004d0b098 	mov	x1, xzr
004d0b09c 	bl	#80696852 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004d0b0a0 	cbz	x0, #480 ; -> 0x4d0b280 
004d0b0a4 	mov	w1, #1
004d0b0a8 	mov	x2, xzr
004d0b0ac 	bl	#80710440 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004d0b0b0 	ldr	x0, [x22, #32]
004d0b0b4 	cbz	x0, #460 ; -> 0x4d0b280 
004d0b0b8 	adrp	x8, #91312128 ; -> 0xa420000 
004d0b0bc 	mov	w2, wzr
004d0b0c0 	mov	x3, xzr
004d0b0c4 	ldr	x8, [x8, #1624]
004d0b0c8 	ldr	x1, [x8]
004d0b0cc 	bl	#80305352 ; -> 0x99a0d94 UnityEngine.Animator::SetBool
004d0b0d0 	mov	w20, wzr
004d0b0d4 	b	#408 ; -> 0x4d0b26c 
004d0b0d8 	adrp	x8, #91312128 ; -> 0xa420000 
004d0b0dc 	mov	w9, #-1
004d0b0e0 	ldr	x8, [x8, #1680]
004d0b0e4 	str	w9, [x19, #16]
004d0b0e8 	ldr	x0, [x8]
004d0b0ec 	bl	#-7840752 ; -> 0x4590cfc 
004d0b0f0 	mov	x1, xzr
004d0b0f4 	mov	x20, x0
004d0b0f8 	bl	#68882736 ; -> 0x8ebc228 System.Object::.ctor
004d0b0fc 	mov	x21, x19
004d0b100 	mov	x1, x20
004d0b104 	str	x20, [x21, #48]!
004d0b108 	mov	x0, x21
004d0b10c 	bl	#-7841544 ; -> 0x4590a04 
004d0b110 	ldr	x0, [x21]
004d0b114 	cbz	x0, #364 ; -> 0x4d0b280 
004d0b118 	ldr	x1, [x19, #32]
004d0b11c 	str	x1, [x0, #16]!
004d0b120 	bl	#-7841564 ; -> 0x4590a04 
004d0b124 	cbz	x22, #348 ; -> 0x4d0b280 
004d0b128 	ldr	x0, [x22, #32]
004d0b12c 	cbz	x0, #340 ; -> 0x4d0b280 
004d0b130 	mov	x1, xzr
004d0b134 	bl	#80696700 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004d0b138 	cbz	x0, #328 ; -> 0x4d0b280 
004d0b13c 	mov	w1, #1
004d0b140 	mov	x2, xzr
004d0b144 	bl	#80710288 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004d0b148 	ldr	x0, [x22, #32]
004d0b14c 	cbz	x0, #308 ; -> 0x4d0b280 
004d0b150 	adrp	x8, #91312128 ; -> 0xa420000 
004d0b154 	mov	w2, #1
004d0b158 	mov	x3, xzr
004d0b15c 	ldr	x8, [x8, #1624]
004d0b160 	ldr	x1, [x8]
004d0b164 	bl	#80305200 ; -> 0x99a0d94 UnityEngine.Animator::SetBool
004d0b168 	ldr	x0, [x22, #40]
004d0b16c 	cbz	x0, #276 ; -> 0x4d0b280 
004d0b170 	mov	x1, xzr
004d0b174 	bl	#80696636 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004d0b178 	cbz	x0, #264 ; -> 0x4d0b280 
004d0b17c 	mov	w1, #1
004d0b180 	mov	x2, xzr
004d0b184 	mov	w20, #1
004d0b188 	bl	#80710220 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004d0b18c 	ldr	x0, [x22, #40]
004d0b190 	cbz	x0, #240 ; -> 0x4d0b280 
004d0b194 	adrp	x8, #91312128 ; -> 0xa420000 
004d0b198 	ldr	x8, [x8, #1688]
004d0b19c 	ldr	x9, [x0]
004d0b1a0 	ldr	x1, [x8]
004d0b1a4 	ldr	x8, [x9, #1512]
004d0b1a8 	ldr	x2, [x9, #1520]
004d0b1ac 	blr	x8
004d0b1b0 	adrp	x8, #91111424 ; -> 0xa3ef000 
004d0b1b4 	ldr	x8, [x8, #40]
004d0b1b8 	ldr	x0, [x8]
004d0b1bc 	bl	#-7840960 ; -> 0x4590cfc 
004d0b1c0 	fmov	s0, #0.50000000
004d0b1c4 	mov	x1, xzr
004d0b1c8 	mov	x21, x0
004d0b1cc 	bl	#80742960 ; -> 0x9a0bbfc UnityEngine.WaitForSecondsRealtime::.ctor
004d0b1d0 	str	x21, [x19, #24]!
004d0b1d4 	mov	x0, x19
004d0b1d8 	mov	x1, x21
004d0b1dc 	bl	#-7841752 ; -> 0x4590a04 
004d0b1e0 	stur	w20, [x19, #-8]
004d0b1e4 	b	#136 ; -> 0x4d0b26c 
004d0b1e8 	adrp	x20, #91086848 ; -> 0xa3e9000 
004d0b1ec 	mov	w9, #-1
004d0b1f0 	ldr	x20, [x20, #736]
004d0b1f4 	str	w9, [x19, #16]
004d0b1f8 	ldr	x0, [x20]
004d0b1fc 	ldr	w8, [x0, #228]
004d0b200 	cbnz	w8, #12 ; -> 0x4d0b20c 
004d0b204 	bl	#-7841316 ; -> 0x4590be0 
004d0b208 	ldr	x0, [x20]
004d0b20c 	ldr	x8, [x19, #48]
004d0b210 	cbz	x8, #112 ; -> 0x4d0b280 
004d0b214 	ldr	x9, [x0, #184]
004d0b218 	ldr	x0, [x9]
004d0b21c 	cbz	x0, #100 ; -> 0x4d0b280 
004d0b220 	ldr	x1, [x8, #16]
004d0b224 	mov	x2, xzr
004d0b228 	bl	#98684 ; -> 0x4d233a4 UsefulManager::StartBGM
004d0b22c 	adrp	x8, #91111424 ; -> 0xa3ef000 
004d0b230 	ldr	x8, [x8, #40]
004d0b234 	ldr	x0, [x8]
004d0b238 	bl	#-7841084 ; -> 0x4590cfc 
004d0b23c 	adrp	x8, #-48111616 ; -> 0x1f29000 
004d0b240 	mov	x1, xzr
004d0b244 	mov	x20, x0
004d0b248 	ldr	s0, [x8, #2100]
004d0b24c 	bl	#80742832 ; -> 0x9a0bbfc UnityEngine.WaitForSecondsRealtime::.ctor
004d0b250 	str	x20, [x19, #24]!
004d0b254 	mov	x0, x19
004d0b258 	mov	x1, x20
004d0b25c 	bl	#-7841880 ; -> 0x4590a04 
004d0b260 	mov	w8, #3
004d0b264 	mov	w20, #1
004d0b268 	stur	w8, [x19, #-8]
004d0b26c 	mov	w0, w20
004d0b270 	ldp	x20, x19, [sp, #32]
004d0b274 	ldp	x22, x21, [sp, #16]
004d0b278 	ldr	x30, [sp], #48
004d0b27c 	ret
004d0b280 	bl	#-7841140 ; -> 0x4590d0c 
