004e9cd5c 	sub	sp, sp, #96
004e9cd60 	str	d8, [sp, #48]
004e9cd64 	str	x30, [sp, #56]
004e9cd68 	stp	x22, x21, [sp, #64]
004e9cd6c 	stp	x20, x19, [sp, #80]
004e9cd70 	adrp	x21, #97751040 ; -> 0xabd5000 
004e9cd74 	mov	w19, w1
004e9cd78 	mov	x20, x0
004e9cd7c 	ldrb	w8, [x21, #863]
004e9cd80 	tbnz	w8, #0, #48 ; -> 0x4e9cdb0 
004e9cd84 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9cd88 	ldr	x0, [x0, #2104]
004e9cd8c 	bl	#-9487148 ; -> 0x4590a60 
004e9cd90 	adrp	x0, #89706496 ; -> 0xa429000 
004e9cd94 	ldr	x0, [x0, #3064]
004e9cd98 	bl	#-9487160 ; -> 0x4590a60 
004e9cd9c 	adrp	x0, #89473024 ; -> 0xa3f0000 
004e9cda0 	ldr	x0, [x0, #48]
004e9cda4 	bl	#-9487172 ; -> 0x4590a60 
004e9cda8 	mov	w8, #1
004e9cdac 	strb	w8, [x21, #863]
004e9cdb0 	mov	w0, #32281
004e9cdb4 	mov	x1, xzr
004e9cdb8 	bl	#-2447380 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9cdbc 	tbz	w0, #0, #56 ; -> 0x4e9cdf4 
004e9cdc0 	mov	w0, #32281
004e9cdc4 	mov	x1, xzr
004e9cdc8 	bl	#-2447216 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9cdcc 	cbz	x0, #472 ; -> 0x4e9cfa4 
004e9cdd0 	mov	x1, x20
004e9cdd4 	mov	w2, w19
004e9cdd8 	ldr	x30, [sp, #56]
004e9cddc 	ldp	x20, x19, [sp, #80]
004e9cde0 	ldr	d8, [sp, #48]
004e9cde4 	ldp	x22, x21, [sp, #64]
004e9cde8 	mov	x3, xzr
004e9cdec 	add	sp, sp, #96
004e9cdf0 	b	#-3138824 ; -> 0x4b9e8e8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_615
004e9cdf4 	adrp	x20, #89464832 ; -> 0xa3ee000 
004e9cdf8 	ldr	x20, [x20, #2104]
004e9cdfc 	ldr	x0, [x20]
004e9ce00 	ldr	w8, [x0, #228]
004e9ce04 	cbnz	w8, #8 ; -> 0x4e9ce0c 
004e9ce08 	bl	#-9486888 ; -> 0x4590be0 
004e9ce0c 	adrp	x21, #97726464 ; -> 0xabcf000 
004e9ce10 	ldrb	w8, [x21, #360]
004e9ce14 	cbnz	w8, #24 ; -> 0x4e9ce2c 
004e9ce18 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9ce1c 	ldr	x0, [x0, #2104]
004e9ce20 	bl	#-9487296 ; -> 0x4590a60 
004e9ce24 	mov	w8, #1
004e9ce28 	strb	w8, [x21, #360]
004e9ce2c 	ldr	x0, [x20]
004e9ce30 	ldr	w8, [x0, #228]
004e9ce34 	cbnz	w8, #12 ; -> 0x4e9ce40 
004e9ce38 	bl	#-9486936 ; -> 0x4590be0 
004e9ce3c 	ldr	x0, [x20]
004e9ce40 	ldr	x8, [x0, #184]
004e9ce44 	ldr	x8, [x8]
004e9ce48 	cbz	x8, #348 ; -> 0x4e9cfa4 
004e9ce4c 	ldr	x0, [x8, #48]
004e9ce50 	cbz	x0, #340 ; -> 0x4e9cfa4 
004e9ce54 	adrp	x22, #89473024 ; -> 0xa3f0000 
004e9ce58 	mov	w1, #24
004e9ce5c 	ldr	x22, [x22, #48]
004e9ce60 	ldr	x2, [x22]
004e9ce64 	bl	#52148528 ; -> 0x8058794 
004e9ce68 	cbz	x0, #316 ; -> 0x4e9cfa4 
004e9ce6c 	cmp	w19, #1
004e9ce70 	b.lt	#120 ; -> 0x4e9cee8 
004e9ce74 	ldr	x0, [x20]
004e9ce78 	ldr	w8, [x0, #228]
004e9ce7c 	cbnz	w8, #8 ; -> 0x4e9ce84 
004e9ce80 	bl	#-9487008 ; -> 0x4590be0 
004e9ce84 	ldrb	w8, [x21, #360]
004e9ce88 	cbnz	w8, #24 ; -> 0x4e9cea0 
004e9ce8c 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9ce90 	ldr	x0, [x0, #2104]
004e9ce94 	bl	#-9487412 ; -> 0x4590a60 
004e9ce98 	mov	w8, #1
004e9ce9c 	strb	w8, [x21, #360]
004e9cea0 	ldr	x0, [x20]
004e9cea4 	ldr	w8, [x0, #228]
004e9cea8 	cbnz	w8, #12 ; -> 0x4e9ceb4 
004e9ceac 	bl	#-9487052 ; -> 0x4590be0 
004e9ceb0 	ldr	x0, [x20]
004e9ceb4 	ldr	x8, [x0, #184]
004e9ceb8 	ldr	x8, [x8]
004e9cebc 	cbz	x8, #232 ; -> 0x4e9cfa4 
004e9cec0 	ldr	x0, [x8, #136]
004e9cec4 	cbz	x0, #224 ; -> 0x4e9cfa4 
004e9cec8 	adrp	x8, #89706496 ; -> 0xa429000 
004e9cecc 	mov	w1, w19
004e9ced0 	ldr	x8, [x8, #3064]
004e9ced4 	ldr	x2, [x8]
004e9ced8 	bl	#52148412 ; -> 0x8058794 
004e9cedc 	cbz	x0, #200 ; -> 0x4e9cfa4 
004e9cee0 	add	x8, x0, #44
004e9cee4 	b	#8 ; -> 0x4e9ceec 
004e9cee8 	add	x8, x0, #176
004e9ceec 	ldr	x0, [x20]
004e9cef0 	ldr	s8, [x8]
004e9cef4 	ldr	w9, [x0, #228]
004e9cef8 	cbnz	w9, #8 ; -> 0x4e9cf00 
004e9cefc 	bl	#-9487132 ; -> 0x4590be0 
004e9cf00 	ldrb	w8, [x21, #360]
004e9cf04 	cbnz	w8, #24 ; -> 0x4e9cf1c 
004e9cf08 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9cf0c 	ldr	x0, [x0, #2104]
004e9cf10 	bl	#-9487536 ; -> 0x4590a60 
004e9cf14 	mov	w8, #1
004e9cf18 	strb	w8, [x21, #360]
004e9cf1c 	ldr	x0, [x20]
004e9cf20 	ldr	w8, [x0, #228]
004e9cf24 	cbnz	w8, #12 ; -> 0x4e9cf30 
004e9cf28 	bl	#-9487176 ; -> 0x4590be0 
004e9cf2c 	ldr	x0, [x20]
004e9cf30 	ldr	x8, [x0, #184]
004e9cf34 	ldr	x8, [x8]
004e9cf38 	cbz	x8, #108 ; -> 0x4e9cfa4 
004e9cf3c 	ldr	x0, [x8, #48]
004e9cf40 	cbz	x0, #100 ; -> 0x4e9cfa4 
004e9cf44 	ldr	x2, [x22]
004e9cf48 	mov	w1, #24
004e9cf4c 	bl	#52148296 ; -> 0x8058794 
004e9cf50 	cbz	x0, #84 ; -> 0x4e9cfa4 
004e9cf54 	ldp	q0, q1, [x0, #32]
004e9cf58 	mov	x1, xzr
004e9cf5c 	ldr	q2, [x0, #64]
004e9cf60 	mov	x0, sp
004e9cf64 	stp	q0, q1, [sp]
004e9cf68 	str	q2, [sp, #32]
004e9cf6c 	bl	#-8102304 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9cf70 	scvtf	s0, w0
004e9cf74 	adrp	x8, #-49754112 ; -> 0x1f29000 
004e9cf78 	ldr	x30, [sp, #56]
004e9cf7c 	ldr	s1, [x8, #2100]
004e9cf80 	ldp	x20, x19, [sp, #80]
004e9cf84 	ldp	x22, x21, [sp, #64]
004e9cf88 	fmul	s0, s0, s1
004e9cf8c 	fmov	s1, #1.00000000
004e9cf90 	fadd	s0, s0, s1
004e9cf94 	fmul	s0, s8, s0
004e9cf98 	ldr	d8, [sp, #48]
004e9cf9c 	add	sp, sp, #96
004e9cfa0 	ret
004e9cfa4 	bl	#-9487000 ; -> 0x4590d0c 
