004d4ca0c 	str	d14, [sp, #-128]!
004d4ca10 	stp	d13, d12, [sp, #8]
004d4ca14 	stp	d11, d10, [sp, #24]
004d4ca18 	stp	d9, d8, [sp, #40]
004d4ca1c 	str	x29, [sp, #56]
004d4ca20 	stp	x30, x25, [sp, #64]
004d4ca24 	stp	x24, x23, [sp, #80]
004d4ca28 	stp	x22, x21, [sp, #96]
004d4ca2c 	stp	x20, x19, [sp, #112]
004d4ca30 	sub	sp, sp, #1296
004d4ca34 	mov	x20, x0
004d4ca38 	mov	w0, #4608
004d4ca3c 	mov	x1, xzr
004d4ca40 	mov	x19, x8
004d4ca44 	bl	#-1070240 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4ca48 	tbz	w0, #0, #60 ; -> 0x4d4ca84 
004d4ca4c 	mov	w0, #4608
004d4ca50 	mov	x1, xzr
004d4ca54 	bl	#-1070076 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4ca58 	cbz	x0, #1116 ; -> 0x4d4ceb4 
004d4ca5c 	add	x8, sp, #1232
004d4ca60 	mov	x1, x20
004d4ca64 	mov	x2, xzr
004d4ca68 	bl	#-1868284 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004d4ca6c 	ldr	q0, [sp, #1232]
004d4ca70 	ldr	q1, [sp, #1248]
004d4ca74 	ldr	q2, [sp, #1280]
004d4ca78 	str	q0, [x19]
004d4ca7c 	ldr	q0, [sp, #1264]
004d4ca80 	b	#1024 ; -> 0x4d4ce80 
004d4ca84 	mov	w8, #4720
004d4ca88 	add	x0, sp, #1160
004d4ca8c 	mov	w2, #72
004d4ca90 	add	x1, x20, x8
004d4ca94 	add	x21, x20, #3184
004d4ca98 	bl	#84012632 ; -> 0x9d6b8f0 
004d4ca9c 	add	x0, sp, #1160
004d4caa0 	mov	x1, xzr
004d4caa4 	bl	#-2076028 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4caa8 	mov	w8, #9416
004d4caac 	fmov	s8, s0
004d4cab0 	add	x0, sp, #1088
004d4cab4 	add	x8, x20, x8
004d4cab8 	mov	x1, xzr
004d4cabc 	ldp	q0, q1, [x8]
004d4cac0 	str	q0, [sp, #1088]
004d4cac4 	ldp	q0, q2, [x8, #32]
004d4cac8 	str	q1, [sp, #1104]
004d4cacc 	str	q0, [sp, #1120]
004d4cad0 	str	q2, [sp, #1136]
004d4cad4 	bl	#-2074500 ; -> 0x4b52350 SilentInt::op_Implicit
004d4cad8 	mov	w8, #8672
004d4cadc 	mov	w22, w0
004d4cae0 	add	x0, sp, #1016
004d4cae4 	add	x1, x20, x8
004d4cae8 	mov	w2, #72
004d4caec 	bl	#84012548 ; -> 0x9d6b8f0 
004d4caf0 	add	x0, sp, #1016
004d4caf4 	mov	x1, xzr
004d4caf8 	bl	#-2076112 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4cafc 	add	x0, sp, #944
004d4cb00 	add	x1, x20, #2568
004d4cb04 	mov	w2, #72
004d4cb08 	fmov	s9, s0
004d4cb0c 	bl	#84012516 ; -> 0x9d6b8f0 
004d4cb10 	add	x0, sp, #944
004d4cb14 	mov	x1, xzr
004d4cb18 	bl	#-2076144 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4cb1c 	mov	w8, #10096
004d4cb20 	add	x0, sp, #872
004d4cb24 	mov	w2, #72
004d4cb28 	add	x1, x20, x8
004d4cb2c 	fmov	s10, s0
004d4cb30 	bl	#84012480 ; -> 0x9d6b8f0 
004d4cb34 	add	x0, sp, #872
004d4cb38 	mov	x1, xzr
004d4cb3c 	bl	#-2076180 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4cb40 	add	x8, x20, #1576
004d4cb44 	fmov	s11, s0
004d4cb48 	add	x0, sp, #800
004d4cb4c 	ldp	q0, q1, [x8]
004d4cb50 	mov	x1, xzr
004d4cb54 	stp	q0, q1, [sp, #800]
004d4cb58 	ldp	q0, q2, [x8, #32]
004d4cb5c 	stp	q0, q2, [sp, #832]
004d4cb60 	bl	#-2074640 ; -> 0x4b52350 SilentInt::op_Implicit
004d4cb64 	ldr	q0, [x20, #17136]
004d4cb68 	ldr	q1, [x20, #17152]
004d4cb6c 	mov	w23, w0
004d4cb70 	ldr	q2, [x20, #17168]
004d4cb74 	add	x0, sp, #736
004d4cb78 	mov	x1, xzr
004d4cb7c 	stp	q0, q1, [sp, #736]
004d4cb80 	ldr	q0, [x20, #17184]
004d4cb84 	stp	q2, q0, [sp, #768]
004d4cb88 	bl	#-2074680 ; -> 0x4b52350 SilentInt::op_Implicit
004d4cb8c 	mov	w8, #20032
004d4cb90 	mov	w24, w0
004d4cb94 	add	x0, sp, #664
004d4cb98 	add	x1, x20, x8
004d4cb9c 	mov	w2, #72
004d4cba0 	bl	#84012368 ; -> 0x9d6b8f0 
004d4cba4 	add	x0, sp, #664
004d4cba8 	mov	x1, xzr
004d4cbac 	bl	#-2076292 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4cbb0 	mov	w8, #5936
004d4cbb4 	add	x0, sp, #592
004d4cbb8 	mov	w2, #72
004d4cbbc 	add	x1, x20, x8
004d4cbc0 	fmov	s12, s0
004d4cbc4 	bl	#84012332 ; -> 0x9d6b8f0 
004d4cbc8 	add	x0, sp, #592
004d4cbcc 	mov	x1, xzr
004d4cbd0 	bl	#-2076328 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4cbd4 	mov	w8, #6656
004d4cbd8 	add	x0, sp, #520
004d4cbdc 	mov	w2, #72
004d4cbe0 	add	x1, x20, x8
004d4cbe4 	fmov	s13, s0
004d4cbe8 	bl	#84012296 ; -> 0x9d6b8f0 
004d4cbec 	add	x0, sp, #520
004d4cbf0 	mov	x1, xzr
004d4cbf4 	bl	#-2076364 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4cbf8 	fmov	s14, s0
004d4cbfc 	ldr	q0, [x20, #18640]
004d4cc00 	ldr	q1, [x20, #18656]
004d4cc04 	ldr	q2, [x20, #18672]
004d4cc08 	add	x0, sp, #448
004d4cc0c 	mov	x1, xzr
004d4cc10 	stp	q0, q1, [sp, #448]
004d4cc14 	ldr	q0, [x20, #18688]
004d4cc18 	stp	q2, q0, [sp, #480]
004d4cc1c 	bl	#-2074828 ; -> 0x4b52350 SilentInt::op_Implicit
004d4cc20 	mov	w8, #21528
004d4cc24 	mov	w25, w0
004d4cc28 	add	x0, sp, #384
004d4cc2c 	add	x8, x20, x8
004d4cc30 	mov	x1, xzr
004d4cc34 	ldp	q0, q1, [x8]
004d4cc38 	stp	q0, q1, [sp, #384]
004d4cc3c 	ldp	q0, q2, [x8, #32]
004d4cc40 	stp	q0, q2, [sp, #416]
004d4cc44 	bl	#-2074868 ; -> 0x4b52350 SilentInt::op_Implicit
004d4cc48 	mov	w8, #1120403456
004d4cc4c 	scvtf	s1, w22
004d4cc50 	scvtf	s3, w25
004d4cc54 	fmov	s0, w8
004d4cc58 	mov	x2, xzr
004d4cc5c 	fadd	s2, s8, s0
004d4cc60 	fadd	s0, s13, s0
004d4cc64 	fadd	s1, s2, s1
004d4cc68 	scvtf	s2, w23
004d4cc6c 	fadd	s0, s0, s14
004d4cc70 	fadd	s1, s1, s9
004d4cc74 	fadd	s0, s0, s3
004d4cc78 	fadd	s1, s1, s10
004d4cc7c 	fadd	s1, s1, s11
004d4cc80 	fadd	s1, s1, s2
004d4cc84 	scvtf	s2, w24
004d4cc88 	mov	x24, #55051
004d4cc8c 	movk	x24, #28835, lsl #16
004d4cc90 	movk	x24, #2621, lsl #32
004d4cc94 	movk	x24, #41943, lsl #48
004d4cc98 	fadd	s1, s1, s2
004d4cc9c 	scvtf	s2, w0
004d4cca0 	mov	x0, x21
004d4cca4 	fadd	s1, s1, s12
004d4cca8 	fadd	s0, s0, s2
004d4ccac 	fmul	s0, s1, s0
004d4ccb0 	fcvtzs	x8, s0
004d4ccb4 	smulh	x9, x8, x24
004d4ccb8 	add	x8, x9, x8
004d4ccbc 	mov	w9, #2139095040
004d4ccc0 	fmov	s1, w9
004d4ccc4 	asr	x10, x8, #6
004d4ccc8 	mov	x9, #47186
004d4cccc 	movk	x9, #34078, lsl #16
004d4ccd0 	add	x8, x10, x8, lsr #63
004d4ccd4 	movk	x9, #20971, lsl #32
004d4ccd8 	fcmp	s0, s1
004d4ccdc 	movk	x9, #65208, lsl #48
004d4cce0 	csel	x1, x9, x8, eq
004d4cce4 	bl	#-2073928 ; -> 0x4b5279c SilentLong::set_Value
004d4cce8 	ldr	d0, [x20, #16352]
004d4ccec 	fcmp	d0, #0.0
004d4ccf0 	b.le	#120 ; -> 0x4d4cd68 
004d4ccf4 	ldp	q0, q1, [x21]
004d4ccf8 	add	x0, sp, #320
004d4ccfc 	mov	x1, xzr
004d4cd00 	stp	q0, q1, [sp, #320]
004d4cd04 	ldp	q0, q2, [x21, #32]
004d4cd08 	stp	q0, q2, [sp, #352]
004d4cd0c 	bl	#-2073612 ; -> 0x4b52900 SilentLong::op_Implicit
004d4cd10 	mov	x8, #4636737291354636288
004d4cd14 	ldr	d0, [x20, #16352]
004d4cd18 	mov	x2, xzr
004d4cd1c 	fmov	d1, x8
004d4cd20 	mov	x8, #9218868437227405312
004d4cd24 	fadd	d0, d0, d1
004d4cd28 	fmul	d0, d0, d1
004d4cd2c 	fmov	d1, x8
004d4cd30 	mov	x8, #-9223372036854775808
004d4cd34 	fcvtzs	x9, d0
004d4cd38 	fcmp	d0, d1
004d4cd3c 	csel	x8, x8, x9, eq
004d4cd40 	mov	x9, #22859
004d4cd44 	mul	x8, x8, x0
004d4cd48 	movk	x9, #14470, lsl #16
004d4cd4c 	mov	x0, x21
004d4cd50 	movk	x9, #50646, lsl #32
004d4cd54 	movk	x9, #13421, lsl #48
004d4cd58 	smulh	x8, x8, x9
004d4cd5c 	asr	x9, x8, #11
004d4cd60 	add	x1, x9, x8, lsr #63
004d4cd64 	bl	#-2074056 ; -> 0x4b5279c SilentLong::set_Value
004d4cd68 	ldp	q0, q1, [x21]
004d4cd6c 	add	x0, sp, #256
004d4cd70 	mov	x1, xzr
004d4cd74 	stp	q0, q1, [sp, #256]
004d4cd78 	ldp	q0, q2, [x21, #32]
004d4cd7c 	stp	q0, q2, [sp, #288]
004d4cd80 	bl	#-2073728 ; -> 0x4b52900 SilentLong::op_Implicit
004d4cd84 	ldr	q0, [x20, #18256]
004d4cd88 	ldr	q1, [x20, #18272]
004d4cd8c 	mov	x22, x0
004d4cd90 	ldr	q2, [x20, #18288]
004d4cd94 	add	x0, sp, #192
004d4cd98 	mov	x1, xzr
004d4cd9c 	stp	q0, q1, [sp, #192]
004d4cda0 	ldr	q0, [x20, #18304]
004d4cda4 	stp	q2, q0, [sp, #224]
004d4cda8 	bl	#-2075224 ; -> 0x4b52350 SilentInt::op_Implicit
004d4cdac 	mov	w8, #21144
004d4cdb0 	mov	w23, w0
004d4cdb4 	add	x0, sp, #128
004d4cdb8 	add	x8, x20, x8
004d4cdbc 	mov	x1, xzr
004d4cdc0 	ldp	q0, q1, [x8]
004d4cdc4 	stp	q0, q1, [sp, #128]
004d4cdc8 	ldp	q0, q2, [x8, #32]
004d4cdcc 	stp	q0, q2, [sp, #160]
004d4cdd0 	bl	#-2075264 ; -> 0x4b52350 SilentInt::op_Implicit
004d4cdd4 	add	w8, w23, w0
004d4cdd8 	mov	x0, x21
004d4cddc 	mov	x2, xzr
004d4cde0 	add	w8, w8, #100
004d4cde4 	sxtw	x8, w8
004d4cde8 	mul	x8, x22, x8
004d4cdec 	smulh	x9, x8, x24
004d4cdf0 	add	x8, x9, x8
004d4cdf4 	asr	x9, x8, #6
004d4cdf8 	add	x1, x9, x8, lsr #63
004d4cdfc 	bl	#-2074208 ; -> 0x4b5279c SilentLong::set_Value
004d4ce00 	ldp	q0, q1, [x21]
004d4ce04 	add	x0, sp, #64
004d4ce08 	mov	x1, xzr
004d4ce0c 	stp	q0, q1, [sp, #64]
004d4ce10 	ldp	q0, q2, [x21, #32]
004d4ce14 	stp	q0, q2, [sp, #96]
004d4ce18 	bl	#-2073880 ; -> 0x4b52900 SilentLong::op_Implicit
004d4ce1c 	ldr	q0, [x20, #21984]
004d4ce20 	ldr	q1, [x20, #22000]
004d4ce24 	mov	x22, x0
004d4ce28 	ldr	q2, [x20, #22016]
004d4ce2c 	mov	x0, sp
004d4ce30 	mov	x1, xzr
004d4ce34 	stp	q0, q1, [sp]
004d4ce38 	ldr	q0, [x20, #22032]
004d4ce3c 	stp	q2, q0, [sp, #32]
004d4ce40 	bl	#-2075376 ; -> 0x4b52350 SilentInt::op_Implicit
004d4ce44 	add	w8, w0, #100
004d4ce48 	mov	x0, x21
004d4ce4c 	mov	x2, xzr
004d4ce50 	sxtw	x8, w8
004d4ce54 	mul	x8, x22, x8
004d4ce58 	smulh	x9, x8, x24
004d4ce5c 	add	x8, x9, x8
004d4ce60 	asr	x9, x8, #6
004d4ce64 	add	x1, x9, x8, lsr #63
004d4ce68 	bl	#-2074316 ; -> 0x4b5279c SilentLong::set_Value
004d4ce6c 	mov	x0, x20
004d4ce70 	bl	#72 ; -> 0x4d4ceb8 DatabaseManager::Stat_GoldAmount_Check
004d4ce74 	ldp	q0, q1, [x21]
004d4ce78 	str	q0, [x19]
004d4ce7c 	ldp	q0, q2, [x21, #32]
004d4ce80 	stp	q1, q0, [x19, #16]
004d4ce84 	str	q2, [x19, #48]
004d4ce88 	add	sp, sp, #1296
004d4ce8c 	ldp	x20, x19, [sp, #112]
004d4ce90 	ldr	x29, [sp, #56]
004d4ce94 	ldp	x22, x21, [sp, #96]
004d4ce98 	ldp	x24, x23, [sp, #80]
004d4ce9c 	ldp	x30, x25, [sp, #64]
004d4cea0 	ldp	d9, d8, [sp, #40]
004d4cea4 	ldp	d11, d10, [sp, #24]
004d4cea8 	ldp	d13, d12, [sp, #8]
004d4ceac 	ldr	d14, [sp], #128
004d4ceb0 	ret
004d4ceb4 	bl	#-8110504 ; -> 0x4590d0c 
