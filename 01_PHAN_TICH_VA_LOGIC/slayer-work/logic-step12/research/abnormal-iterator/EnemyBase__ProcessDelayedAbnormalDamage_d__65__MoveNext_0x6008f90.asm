0050beb38 	str	d8, [sp, #-32]!
0050beb3c 	str	x30, [sp, #8]
0050beb40 	stp	x20, x19, [sp, #16]
0050beb44 	adrp	x20, #95518720 ; -> 0xabd6000 
0050beb48 	mov	x19, x0
0050beb4c 	ldrb	w8, [x20, #759]
0050beb50 	tbnz	w8, #0, #60 ; -> 0x50beb8c 
0050beb54 	adrp	x0, #87244800 ; -> 0xa3f2000 
0050beb58 	ldr	x0, [x0, #552]
0050beb5c 	bl	#-11723004 ; -> 0x4590a60 
0050beb60 	adrp	x0, #87511040 ; -> 0xa433000 
0050beb64 	ldr	x0, [x0, #1504]
0050beb68 	bl	#-11723016 ; -> 0x4590a60 
0050beb6c 	adrp	x0, #87511040 ; -> 0xa433000 
0050beb70 	ldr	x0, [x0, #1656]
0050beb74 	bl	#-11723028 ; -> 0x4590a60 
0050beb78 	adrp	x0, #87511040 ; -> 0xa433000 
0050beb7c 	ldr	x0, [x0, #1664]
0050beb80 	bl	#-11723040 ; -> 0x4590a60 
0050beb84 	mov	w8, #1
0050beb88 	strb	w8, [x20, #759]
0050beb8c 	ldr	w8, [x19, #16]
0050beb90 	ldr	x20, [x19, #32]
0050beb94 	cmp	w8, #1
0050beb98 	b.eq	#52 ; -> 0x50bebcc 
0050beb9c 	cbnz	w8, #296 ; -> 0x50becc4 
0050beba0 	mov	w8, #-1
0050beba4 	str	w8, [x19, #16]
0050beba8 	cbz	x20, #304 ; -> 0x50becd8 
0050bebac 	ldr	x8, [x20, #472]
0050bebb0 	cbz	x8, #296 ; -> 0x50becd8 
0050bebb4 	ldr	w8, [x8, #32]
0050bebb8 	cmp	w8, #0
0050bebbc 	b.le	#248 ; -> 0x50becb4 
0050bebc0 	movi	d8, #0000000000000000
0050bebc4 	str	wzr, [x19, #40]
0050bebc8 	b	#32 ; -> 0x50bebe8 
0050bebcc 	adrp	x8, #-51990528 ; -> 0x1f29000 
0050bebd0 	ldr	s8, [x19, #40]
0050bebd4 	ldr	s0, [x8, #2100]
0050bebd8 	mov	w8, #-1
0050bebdc 	str	w8, [x19, #16]
0050bebe0 	fcmp	s8, s0
0050bebe4 	b.pl	#88 ; -> 0x50bec3c 
0050bebe8 	adrp	x20, #87244800 ; -> 0xa3f2000 
0050bebec 	ldr	x20, [x20, #552]
0050bebf0 	ldr	x0, [x20]
0050bebf4 	ldr	w8, [x0, #228]
0050bebf8 	cbnz	w8, #12 ; -> 0x50bec04 
0050bebfc 	bl	#-11722780 ; -> 0x4590be0 
0050bec00 	ldr	x0, [x20]
0050bec04 	ldr	x8, [x0, #184]
0050bec08 	ldr	x0, [x8]
0050bec0c 	cbz	x0, #204 ; -> 0x50becd8 
0050bec10 	mov	x1, xzr
0050bec14 	bl	#-2597568 ; -> 0x4e44954 GameManager::get_GameDeltaTime
0050bec18 	fadd	s0, s8, s0
0050bec1c 	str	xzr, [x19, #24]!
0050bec20 	mov	x0, x19
0050bec24 	mov	x1, xzr
0050bec28 	str	s0, [x19, #16]
0050bec2c 	bl	#-11723304 ; -> 0x4590a04 
0050bec30 	mov	w0, #1
0050bec34 	stur	w0, [x19, #-8]
0050bec38 	b	#144 ; -> 0x50becc8 
0050bec3c 	cbz	x20, #156 ; -> 0x50becd8 
0050bec40 	ldrb	w8, [x20, #514]
0050bec44 	cbnz	w8, #88 ; -> 0x50bec9c 
0050bec48 	mov	x0, x20
0050bec4c 	mov	x1, xzr
0050bec50 	bl	#76814944 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
0050bec54 	cbz	x0, #132 ; -> 0x50becd8 
0050bec58 	mov	x1, xzr
0050bec5c 	bl	#76828912 ; -> 0x9a03d4c UnityEngine.GameObject::get_activeInHierarchy
0050bec60 	tbz	w0, #0, #60 ; -> 0x50bec9c 
0050bec64 	ldr	x0, [x20, #472]
0050bec68 	cbz	x0, #112 ; -> 0x50becd8 
0050bec6c 	ldr	w8, [x0, #32]
0050bec70 	cmp	w8, #1
0050bec74 	b.lt	#-204 ; -> 0x50beba8 
0050bec78 	adrp	x8, #87511040 ; -> 0xa433000 
0050bec7c 	ldr	x8, [x8, #1656]
0050bec80 	ldr	x1, [x8]
0050bec84 	bl	#34131856 ; -> 0x714bc14 
0050bec88 	ubfx	w2, w0, #8, #1
0050bec8c 	and	w1, w0, #0x1
0050bec90 	mov	x0, x20
0050bec94 	bl	#-30772 ; -> 0x50b7460 EnemyBase::ExecuteAbnormalAddDamage
0050bec98 	b	#-240 ; -> 0x50beba8 
0050bec9c 	ldr	x0, [x20, #472]
0050beca0 	cbz	x0, #56 ; -> 0x50becd8 
0050beca4 	adrp	x8, #87511040 ; -> 0xa433000 
0050beca8 	ldr	x8, [x8, #1504]
0050becac 	ldr	x1, [x8]
0050becb0 	bl	#34130668 ; -> 0x714b79c 
0050becb4 	add	x0, x20, #480
0050becb8 	mov	x1, xzr
0050becbc 	str	xzr, [x20, #480]
0050becc0 	bl	#-11723452 ; -> 0x4590a04 
0050becc4 	mov	w0, wzr
0050becc8 	ldp	x20, x19, [sp, #16]
0050beccc 	ldr	x30, [sp, #8]
0050becd0 	ldr	d8, [sp], #32
0050becd4 	ret
0050becd8 	bl	#-11722700 ; -> 0x4590d0c 
