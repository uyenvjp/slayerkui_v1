00501a8bc 	stp	d13, d12, [sp, #-80]!
00501a8c0 	stp	d11, d10, [sp, #16]
00501a8c4 	stp	d9, d8, [sp, #32]
00501a8c8 	stp	x30, x21, [sp, #48]
00501a8cc 	stp	x20, x19, [sp, #64]
00501a8d0 	adrp	x20, #96186368 ; -> 0xabd5000 
00501a8d4 	mov	x19, x0
00501a8d8 	ldrb	w8, [x20, #3698]
00501a8dc 	tbnz	w8, #0, #36 ; -> 0x501a900 
00501a8e0 	adrp	x0, #87879680 ; -> 0xa3e9000 
00501a8e4 	ldr	x0, [x0, #1264]
00501a8e8 	bl	#-11050632 ; -> 0x4590a60 
00501a8ec 	adrp	x0, #88080384 ; -> 0xa41a000 
00501a8f0 	ldr	x0, [x0, #3856]
00501a8f4 	bl	#-11050644 ; -> 0x4590a60 
00501a8f8 	mov	w8, #1
00501a8fc 	strb	w8, [x20, #3698]
00501a900 	ldr	w8, [x19, #16]
00501a904 	adrp	x21, #88080384 ; -> 0xa41a000 
00501a908 	ldr	x21, [x21, #3856]
00501a90c 	ldr	x20, [x19, #32]
00501a910 	cmp	w8, #2
00501a914 	b.hs	#116 ; -> 0x501a988 
00501a918 	ldr	x0, [x21]
00501a91c 	mov	w9, #-1
00501a920 	str	w9, [x19, #16]
00501a924 	ldr	w8, [x0, #228]
00501a928 	cbnz	w8, #12 ; -> 0x501a934 
00501a92c 	bl	#-11050316 ; -> 0x4590be0 
00501a930 	ldr	x0, [x21]
00501a934 	ldr	x8, [x0, #184]
00501a938 	ldr	x0, [x8]
00501a93c 	cbz	x0, #544 ; -> 0x501ab5c 
00501a940 	mov	x1, xzr
00501a944 	bl	#77487260 ; -> 0x9a005e0 UnityEngine.Component::get_transform
00501a948 	cbz	x0, #532 ; -> 0x501ab5c 
00501a94c 	mov	x1, xzr
00501a950 	bl	#77563868 ; -> 0x9a1312c UnityEngine.Transform::get_position
00501a954 	cbz	x20, #520 ; -> 0x501ab5c 
00501a958 	ldr	x0, [x20, #88]
00501a95c 	cbz	x0, #512 ; -> 0x501ab5c 
00501a960 	mov	x1, xzr
00501a964 	fmov	s8, s0
00501a968 	bl	#77563844 ; -> 0x9a1312c UnityEngine.Transform::get_position
00501a96c 	fcmp	s8, s0
00501a970 	b.le	#296 ; -> 0x501aa98 
00501a974 	ldr	x0, [x20, #88]
00501a978 	mov	w1, wzr
00501a97c 	mov	x2, xzr
00501a980 	bl	#9650048 ; -> 0x594e900 DG.Tweening.ShortcutExtensions::DOKill
00501a984 	b	#16 ; -> 0x501a994 
00501a988 	b.ne	#264 ; -> 0x501aa90 
00501a98c 	mov	w8, #-1
00501a990 	str	w8, [x19, #16]
00501a994 	ldr	x0, [x21]
00501a998 	ldr	w8, [x0, #228]
00501a99c 	cbnz	w8, #12 ; -> 0x501a9a8 
00501a9a0 	bl	#-11050432 ; -> 0x4590be0 
00501a9a4 	ldr	x0, [x21]
00501a9a8 	ldr	x8, [x0, #184]
00501a9ac 	ldr	x0, [x8]
00501a9b0 	cbz	x0, #428 ; -> 0x501ab5c 
00501a9b4 	mov	x1, xzr
00501a9b8 	bl	#77487144 ; -> 0x9a005e0 UnityEngine.Component::get_transform
00501a9bc 	cbz	x0, #416 ; -> 0x501ab5c 
00501a9c0 	mov	x1, xzr
00501a9c4 	bl	#77563752 ; -> 0x9a1312c UnityEngine.Transform::get_position
00501a9c8 	cbz	x20, #404 ; -> 0x501ab5c 
00501a9cc 	ldr	x0, [x20, #88]
00501a9d0 	cbz	x0, #396 ; -> 0x501ab5c 
00501a9d4 	mov	x1, xzr
00501a9d8 	fmov	s8, s0
00501a9dc 	fmov	s9, s1
00501a9e0 	fmov	s10, s2
00501a9e4 	bl	#77563720 ; -> 0x9a1312c UnityEngine.Transform::get_position
00501a9e8 	fmov	s11, s0
00501a9ec 	fmov	s12, s1
00501a9f0 	adrp	x21, #96157696 ; -> 0xabce000 
00501a9f4 	fmov	s13, s2
00501a9f8 	ldrb	w8, [x21, #2299]
00501a9fc 	cbnz	w8, #24 ; -> 0x501aa14 
00501aa00 	adrp	x0, #87875584 ; -> 0xa3e8000 
00501aa04 	ldr	x0, [x0, #632]
00501aa08 	bl	#-11050920 ; -> 0x4590a60 
00501aa0c 	mov	w8, #1
00501aa10 	strb	w8, [x21, #2299]
00501aa14 	adrp	x21, #96157696 ; -> 0xabce000 
00501aa18 	ldrb	w8, [x21, #2300]
00501aa1c 	cbnz	w8, #24 ; -> 0x501aa34 
00501aa20 	adrp	x0, #87875584 ; -> 0xa3e8000 
00501aa24 	ldr	x0, [x0, #1536]
00501aa28 	bl	#-11050952 ; -> 0x4590a60 
00501aa2c 	mov	w8, #1
00501aa30 	strb	w8, [x21, #2300]
00501aa34 	adrp	x8, #87875584 ; -> 0xa3e8000 
00501aa38 	fsub	s8, s8, s11
00501aa3c 	fsub	s9, s9, s12
00501aa40 	ldr	x8, [x8, #1536]
00501aa44 	fsub	s10, s10, s13
00501aa48 	ldr	x0, [x8]
00501aa4c 	ldr	w8, [x0, #228]
00501aa50 	cbnz	w8, #8 ; -> 0x501aa58 
00501aa54 	bl	#-11050612 ; -> 0x4590be0 
00501aa58 	fmul	s0, s8, s8
00501aa5c 	fmul	s1, s9, s9
00501aa60 	adrp	x8, #-51318784 ; -> 0x1f29000 
00501aa64 	fadd	s0, s0, s1
00501aa68 	fmul	s1, s10, s10
00501aa6c 	fadd	s0, s1, s0
00501aa70 	ldr	s1, [x8, #2412]
00501aa74 	fsqrt	s0, s0
00501aa78 	fcmp	s0, s1
00501aa7c 	b.le	#88 ; -> 0x501aad4 
00501aa80 	fdiv	s8, s8, s0
00501aa84 	fdiv	s9, s9, s0
00501aa88 	fdiv	s10, s10, s0
00501aa8c 	b	#96 ; -> 0x501aaec 
00501aa90 	mov	w0, wzr
00501aa94 	b	#176 ; -> 0x501ab44 
00501aa98 	adrp	x8, #87879680 ; -> 0xa3e9000 
00501aa9c 	ldr	x8, [x8, #1264]
00501aaa0 	ldr	x0, [x8]
00501aaa4 	ldr	w8, [x0, #228]
00501aaa8 	cbnz	w8, #8 ; -> 0x501aab0 
00501aaac 	bl	#-11050700 ; -> 0x4590be0 
00501aab0 	fmov	s0, #2.00000000
00501aab4 	mov	x0, xzr
00501aab8 	bl	#-4986864 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
00501aabc 	mov	x1, x0
00501aac0 	mov	x0, x19
00501aac4 	str	x1, [x0, #24]!
00501aac8 	bl	#-11051204 ; -> 0x4590a04 
00501aacc 	mov	w8, #1
00501aad0 	b	#108 ; -> 0x501ab3c 
00501aad4 	adrp	x8, #87875584 ; -> 0xa3e8000 
00501aad8 	ldr	x8, [x8, #632]
00501aadc 	ldr	x8, [x8]
00501aae0 	ldr	x8, [x8, #184]
00501aae4 	ldp	s9, s10, [x8, #4]
00501aae8 	ldr	s8, [x8]
00501aaec 	ldr	x20, [x20, #88]
00501aaf0 	mov	x0, xzr
00501aaf4 	bl	#77549648 ; -> 0x9a0fb44 UnityEngine.Time::get_deltaTime
00501aaf8 	cbz	x20, #100 ; -> 0x501ab5c 
00501aafc 	mov	w8, #1119092736
00501ab00 	mov	x0, x20
00501ab04 	mov	x1, xzr
00501ab08 	fmov	s1, w8
00501ab0c 	fmul	s2, s10, s1
00501ab10 	fmul	s3, s9, s1
00501ab14 	fmul	s4, s8, s1
00501ab18 	fmul	s2, s2, s0
00501ab1c 	fmul	s1, s3, s0
00501ab20 	fmul	s0, s4, s0
00501ab24 	bl	#77567464 ; -> 0x9a1410c UnityEngine.Transform::Translate
00501ab28 	mov	x0, x19
00501ab2c 	mov	x1, xzr
00501ab30 	str	xzr, [x0, #24]!
00501ab34 	bl	#-11051312 ; -> 0x4590a04 
00501ab38 	mov	w8, #2
00501ab3c 	mov	w0, #1
00501ab40 	str	w8, [x19, #16]
00501ab44 	ldp	x20, x19, [sp, #64]
00501ab48 	ldp	x30, x21, [sp, #48]
00501ab4c 	ldp	d9, d8, [sp, #32]
00501ab50 	ldp	d11, d10, [sp, #16]
00501ab54 	ldp	d13, d12, [sp], #80
00501ab58 	ret
00501ab5c 	bl	#-11050576 ; -> 0x4590d0c 
