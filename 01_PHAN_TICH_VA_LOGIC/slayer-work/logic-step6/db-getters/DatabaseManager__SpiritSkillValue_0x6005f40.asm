004d59090 	str	x30, [sp, #-32]!
004d59094 	stp	x20, x19, [sp, #16]
004d59098 	mov	w19, w1
004d5909c 	mov	x20, x0
004d590a0 	mov	w0, #2380
004d590a4 	mov	x1, xzr
004d590a8 	bl	#-1121028 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d590ac 	tbz	w0, #0, #44 ; -> 0x4d590d8 
004d590b0 	mov	w0, #2380
004d590b4 	mov	x1, xzr
004d590b8 	bl	#-1120864 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d590bc 	cbz	x0, #276 ; -> 0x4d591d0 
004d590c0 	mov	x1, x20
004d590c4 	mov	w2, w19
004d590c8 	mov	x3, xzr
004d590cc 	ldp	x20, x19, [sp, #16]
004d590d0 	ldr	x30, [sp], #32
004d590d4 	b	#-1864532 ; -> 0x4b91d80 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_373
004d590d8 	movi	d0, #0000000000000000
004d590dc 	mov	w8, #15989
004d590e0 	ldrb	w8, [x20, x8]
004d590e4 	cbz	w8, #16 ; -> 0x4d590f4 
004d590e8 	ldp	x20, x19, [sp, #16]
004d590ec 	ldr	x30, [sp], #32
004d590f0 	ret
004d590f4 	cmp	w19, #6
004d590f8 	add	x8, x20, #4, lsl #12
004d590fc 	b.gt	#44 ; -> 0x4d59128 
004d59100 	cmp	w19, #3
004d59104 	b.gt	#76 ; -> 0x4d59150 
004d59108 	cmp	w19, #1
004d5910c 	b.eq	#132 ; -> 0x4d59190 
004d59110 	cmp	w19, #2
004d59114 	b.eq	#156 ; -> 0x4d591b0 
004d59118 	cmp	w19, #3
004d5911c 	b.ne	#-52 ; -> 0x4d590e8 
004d59120 	ldr	s0, [x8, #8]
004d59124 	b	#-60 ; -> 0x4d590e8 
004d59128 	cmp	w19, #9
004d5912c 	b.gt	#68 ; -> 0x4d59170 
004d59130 	cmp	w19, #7
004d59134 	b.eq	#100 ; -> 0x4d59198 
004d59138 	cmp	w19, #8
004d5913c 	b.eq	#124 ; -> 0x4d591b8 
004d59140 	cmp	w19, #9
004d59144 	b.ne	#-92 ; -> 0x4d590e8 
004d59148 	ldr	s0, [x8, #32]
004d5914c 	b	#-100 ; -> 0x4d590e8 
004d59150 	cmp	w19, #4
004d59154 	b.eq	#76 ; -> 0x4d591a0 
004d59158 	cmp	w19, #5
004d5915c 	b.eq	#100 ; -> 0x4d591c0 
004d59160 	cmp	w19, #6
004d59164 	b.ne	#-124 ; -> 0x4d590e8 
004d59168 	ldr	s0, [x8, #20]
004d5916c 	b	#-132 ; -> 0x4d590e8 
004d59170 	cmp	w19, #10
004d59174 	b.eq	#52 ; -> 0x4d591a8 
004d59178 	cmp	w19, #11
004d5917c 	b.eq	#76 ; -> 0x4d591c8 
004d59180 	cmp	w19, #12
004d59184 	b.ne	#-156 ; -> 0x4d590e8 
004d59188 	ldr	s0, [x8, #44]
004d5918c 	b	#-164 ; -> 0x4d590e8 
004d59190 	ldr	s0, [x8]
004d59194 	b	#-172 ; -> 0x4d590e8 
004d59198 	ldr	s0, [x8, #24]
004d5919c 	b	#-180 ; -> 0x4d590e8 
004d591a0 	ldr	s0, [x8, #12]
004d591a4 	b	#-188 ; -> 0x4d590e8 
004d591a8 	ldr	s0, [x8, #36]
004d591ac 	b	#-196 ; -> 0x4d590e8 
004d591b0 	ldr	s0, [x8, #4]
004d591b4 	b	#-204 ; -> 0x4d590e8 
004d591b8 	ldr	s0, [x8, #28]
004d591bc 	b	#-212 ; -> 0x4d590e8 
004d591c0 	ldr	s0, [x8, #16]
004d591c4 	b	#-220 ; -> 0x4d590e8 
004d591c8 	ldr	s0, [x8, #40]
004d591cc 	b	#-228 ; -> 0x4d590e8 
004d591d0 	bl	#-8160452 ; -> 0x4590d0c 
