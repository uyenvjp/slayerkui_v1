004e9cb10 	sub	sp, sp, #96
004e9cb14 	str	d8, [sp, #48]
004e9cb18 	str	x30, [sp, #56]
004e9cb1c 	stp	x22, x21, [sp, #64]
004e9cb20 	stp	x20, x19, [sp, #80]
004e9cb24 	adrp	x21, #97751040 ; -> 0xabd5000 
004e9cb28 	mov	w19, w1
004e9cb2c 	mov	x20, x0
004e9cb30 	ldrb	w8, [x21, #862]
004e9cb34 	tbnz	w8, #0, #48 ; -> 0x4e9cb64 
004e9cb38 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9cb3c 	ldr	x0, [x0, #2104]
004e9cb40 	bl	#-9486560 ; -> 0x4590a60 
004e9cb44 	adrp	x0, #89706496 ; -> 0xa429000 
004e9cb48 	ldr	x0, [x0, #3064]
004e9cb4c 	bl	#-9486572 ; -> 0x4590a60 
004e9cb50 	adrp	x0, #89473024 ; -> 0xa3f0000 
004e9cb54 	ldr	x0, [x0, #48]
004e9cb58 	bl	#-9486584 ; -> 0x4590a60 
004e9cb5c 	mov	w8, #1
004e9cb60 	strb	w8, [x21, #862]
004e9cb64 	mov	w0, #32280
004e9cb68 	mov	x1, xzr
004e9cb6c 	bl	#-2446792 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9cb70 	tbz	w0, #0, #56 ; -> 0x4e9cba8 
004e9cb74 	mov	w0, #32280
004e9cb78 	mov	x1, xzr
004e9cb7c 	bl	#-2446628 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9cb80 	cbz	x0, #472 ; -> 0x4e9cd58 
004e9cb84 	mov	x1, x20
004e9cb88 	mov	w2, w19
004e9cb8c 	ldr	x30, [sp, #56]
004e9cb90 	ldp	x20, x19, [sp, #80]
004e9cb94 	ldr	d8, [sp, #48]
004e9cb98 	ldp	x22, x21, [sp, #64]
004e9cb9c 	mov	x3, xzr
004e9cba0 	add	sp, sp, #96
004e9cba4 	b	#-3138236 ; -> 0x4b9e8e8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_615
004e9cba8 	adrp	x20, #89464832 ; -> 0xa3ee000 
004e9cbac 	ldr	x20, [x20, #2104]
004e9cbb0 	ldr	x0, [x20]
004e9cbb4 	ldr	w8, [x0, #228]
004e9cbb8 	cbnz	w8, #8 ; -> 0x4e9cbc0 
004e9cbbc 	bl	#-9486300 ; -> 0x4590be0 
004e9cbc0 	adrp	x21, #97726464 ; -> 0xabcf000 
004e9cbc4 	ldrb	w8, [x21, #360]
004e9cbc8 	cbnz	w8, #24 ; -> 0x4e9cbe0 
004e9cbcc 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9cbd0 	ldr	x0, [x0, #2104]
004e9cbd4 	bl	#-9486708 ; -> 0x4590a60 
004e9cbd8 	mov	w8, #1
004e9cbdc 	strb	w8, [x21, #360]
004e9cbe0 	ldr	x0, [x20]
004e9cbe4 	ldr	w8, [x0, #228]
004e9cbe8 	cbnz	w8, #12 ; -> 0x4e9cbf4 
004e9cbec 	bl	#-9486348 ; -> 0x4590be0 
004e9cbf0 	ldr	x0, [x20]
004e9cbf4 	ldr	x8, [x0, #184]
004e9cbf8 	ldr	x8, [x8]
004e9cbfc 	cbz	x8, #348 ; -> 0x4e9cd58 
004e9cc00 	ldr	x0, [x8, #48]
004e9cc04 	cbz	x0, #340 ; -> 0x4e9cd58 
004e9cc08 	adrp	x22, #89473024 ; -> 0xa3f0000 
004e9cc0c 	mov	w1, #24
004e9cc10 	ldr	x22, [x22, #48]
004e9cc14 	ldr	x2, [x22]
004e9cc18 	bl	#52149116 ; -> 0x8058794 
004e9cc1c 	cbz	x0, #316 ; -> 0x4e9cd58 
004e9cc20 	cmp	w19, #1
004e9cc24 	b.lt	#120 ; -> 0x4e9cc9c 
004e9cc28 	ldr	x0, [x20]
004e9cc2c 	ldr	w8, [x0, #228]
004e9cc30 	cbnz	w8, #8 ; -> 0x4e9cc38 
004e9cc34 	bl	#-9486420 ; -> 0x4590be0 
004e9cc38 	ldrb	w8, [x21, #360]
004e9cc3c 	cbnz	w8, #24 ; -> 0x4e9cc54 
004e9cc40 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9cc44 	ldr	x0, [x0, #2104]
004e9cc48 	bl	#-9486824 ; -> 0x4590a60 
004e9cc4c 	mov	w8, #1
004e9cc50 	strb	w8, [x21, #360]
004e9cc54 	ldr	x0, [x20]
004e9cc58 	ldr	w8, [x0, #228]
004e9cc5c 	cbnz	w8, #12 ; -> 0x4e9cc68 
004e9cc60 	bl	#-9486464 ; -> 0x4590be0 
004e9cc64 	ldr	x0, [x20]
004e9cc68 	ldr	x8, [x0, #184]
004e9cc6c 	ldr	x8, [x8]
004e9cc70 	cbz	x8, #232 ; -> 0x4e9cd58 
004e9cc74 	ldr	x0, [x8, #136]
004e9cc78 	cbz	x0, #224 ; -> 0x4e9cd58 
004e9cc7c 	adrp	x8, #89706496 ; -> 0xa429000 
004e9cc80 	mov	w1, w19
004e9cc84 	ldr	x8, [x8, #3064]
004e9cc88 	ldr	x2, [x8]
004e9cc8c 	bl	#52149000 ; -> 0x8058794 
004e9cc90 	cbz	x0, #200 ; -> 0x4e9cd58 
004e9cc94 	add	x8, x0, #40
004e9cc98 	b	#8 ; -> 0x4e9cca0 
004e9cc9c 	add	x8, x0, #172
004e9cca0 	ldr	x0, [x20]
004e9cca4 	ldr	s8, [x8]
004e9cca8 	ldr	w9, [x0, #228]
004e9ccac 	cbnz	w9, #8 ; -> 0x4e9ccb4 
004e9ccb0 	bl	#-9486544 ; -> 0x4590be0 
004e9ccb4 	ldrb	w8, [x21, #360]
004e9ccb8 	cbnz	w8, #24 ; -> 0x4e9ccd0 
004e9ccbc 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9ccc0 	ldr	x0, [x0, #2104]
004e9ccc4 	bl	#-9486948 ; -> 0x4590a60 
004e9ccc8 	mov	w8, #1
004e9cccc 	strb	w8, [x21, #360]
004e9ccd0 	ldr	x0, [x20]
004e9ccd4 	ldr	w8, [x0, #228]
004e9ccd8 	cbnz	w8, #12 ; -> 0x4e9cce4 
004e9ccdc 	bl	#-9486588 ; -> 0x4590be0 
004e9cce0 	ldr	x0, [x20]
004e9cce4 	ldr	x8, [x0, #184]
004e9cce8 	ldr	x8, [x8]
004e9ccec 	cbz	x8, #108 ; -> 0x4e9cd58 
004e9ccf0 	ldr	x0, [x8, #48]
004e9ccf4 	cbz	x0, #100 ; -> 0x4e9cd58 
004e9ccf8 	ldr	x2, [x22]
004e9ccfc 	mov	w1, #24
004e9cd00 	bl	#52148884 ; -> 0x8058794 
004e9cd04 	cbz	x0, #84 ; -> 0x4e9cd58 
004e9cd08 	ldp	q0, q1, [x0, #32]
004e9cd0c 	mov	x1, xzr
004e9cd10 	ldr	q2, [x0, #64]
004e9cd14 	mov	x0, sp
004e9cd18 	stp	q0, q1, [sp]
004e9cd1c 	str	q2, [sp, #32]
004e9cd20 	bl	#-8101716 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9cd24 	scvtf	s0, w0
004e9cd28 	adrp	x8, #-49754112 ; -> 0x1f29000 
004e9cd2c 	ldr	x30, [sp, #56]
004e9cd30 	ldr	s1, [x8, #2100]
004e9cd34 	ldp	x20, x19, [sp, #80]
004e9cd38 	ldp	x22, x21, [sp, #64]
004e9cd3c 	fmul	s0, s0, s1
004e9cd40 	fmov	s1, #1.00000000
004e9cd44 	fadd	s0, s0, s1
004e9cd48 	fmul	s0, s8, s0
004e9cd4c 	ldr	d8, [sp, #48]
004e9cd50 	add	sp, sp, #96
004e9cd54 	ret
004e9cd58 	bl	#-9486412 ; -> 0x4590d0c 
