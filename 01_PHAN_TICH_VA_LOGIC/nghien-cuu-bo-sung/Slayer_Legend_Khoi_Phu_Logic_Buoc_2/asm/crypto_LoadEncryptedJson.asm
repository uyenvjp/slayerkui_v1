0053f2e74 	sub	sp, sp, #192
0053f2e78 	str	x30, [sp, #144]
0053f2e7c 	stp	x22, x21, [sp, #160]
0053f2e80 	stp	x20, x19, [sp, #176]
0053f2e84 	adrp	x20, #92164096 ; -> 0xabd7000
0053f2e88 	mov	x19, x0
0053f2e8c 	ldrb	w8, [x20, #2672]
0053f2e90 	tbnz	w8, #0, #96 ; -> 0x53f2ef0
0053f2e94 	adrp	x0, #84213760 ; -> 0xa442000
0053f2e98 	ldr	x0, [x0, #2144]
0053f2e9c 	bl	#-15082556 ; -> 0x4590a60
0053f2ea0 	adrp	x0, #84090880 ; -> 0xa424000
0053f2ea4 	ldr	x0, [x0, #1472]
0053f2ea8 	bl	#-15082568 ; -> 0x4590a60
0053f2eac 	adrp	x0, #84213760 ; -> 0xa442000
0053f2eb0 	ldr	x0, [x0, #2152]
0053f2eb4 	bl	#-15082580 ; -> 0x4590a60
0053f2eb8 	adrp	x0, #83841024 ; -> 0xa3e7000
0053f2ebc 	ldr	x0, [x0, #1440]
0053f2ec0 	bl	#-15082592 ; -> 0x4590a60
0053f2ec4 	adrp	x0, #83845120 ; -> 0xa3e8000
0053f2ec8 	ldr	x0, [x0, #160]
0053f2ecc 	bl	#-15082604 ; -> 0x4590a60
0053f2ed0 	adrp	x0, #83841024 ; -> 0xa3e7000
0053f2ed4 	ldr	x0, [x0, #1192]
0053f2ed8 	bl	#-15082616 ; -> 0x4590a60
0053f2edc 	adrp	x0, #84213760 ; -> 0xa442000
0053f2ee0 	ldr	x0, [x0, #2160]
0053f2ee4 	bl	#-15082628 ; -> 0x4590a60
0053f2ee8 	mov	w8, #1
0053f2eec 	strb	w8, [x20, #2672]
0053f2ef0 	mov	w0, #45301
0053f2ef4 	mov	x1, xzr
0053f2ef8 	str	xzr, [sp, #152]
0053f2efc 	stp	xzr, xzr, [sp, #128]
0053f2f00 	stp	xzr, xzr, [sp, #112]
0053f2f04 	str	xzr, [sp, #104]
0053f2f08 	bl	#-8042852 ; -> 0x4c475a4 [WrappersManagerImpl::IsPatched]
0053f2f0c 	tbz	w0, #0, #48 ; -> 0x53f2f3c
0053f2f10 	mov	w0, #45301
0053f2f14 	mov	x1, xzr
0053f2f18 	bl	#-8042688 ; -> 0x4c47658 [WrappersManagerImpl::GetPatch]
0053f2f1c 	cbz	x0, #1336 ; -> 0x53f3454
0053f2f20 	mov	x1, x19
0053f2f24 	ldp	x20, x19, [sp, #176]
0053f2f28 	ldp	x22, x21, [sp, #160]
0053f2f2c 	mov	x2, xzr
0053f2f30 	ldr	x30, [sp, #144]
0053f2f34 	add	sp, sp, #192
0053f2f38 	b	#-8866184 ; -> 0x4b7e5b0 [ILFixDynamicMethodWrapper::__Gen_Wrap_1]
0053f2f3c 	adrp	x8, #84213760 ; -> 0xa442000
0053f2f40 	adrp	x20, #83841024 ; -> 0xa3e7000
0053f2f44 	mov	x0, x19
0053f2f48 	ldr	x8, [x8, #2160]
0053f2f4c 	ldr	x20, [x20, #1192]
0053f2f50 	ldr	x1, [x8]
0053f2f54 	bl	#13507100 ; -> 0x60d4970
0053f2f58 	ldr	x8, [x20]
0053f2f5c 	mov	x20, x0
0053f2f60 	ldr	w9, [x8, #228]
0053f2f64 	cbnz	w9, #12 ; -> 0x53f2f70
0053f2f68 	mov	x0, x8
0053f2f6c 	bl	#-15082380 ; -> 0x4590be0
0053f2f70 	mov	x0, x20
0053f2f74 	mov	x1, xzr
0053f2f78 	mov	x2, xzr
0053f2f7c 	bl	#73474068 ; -> 0x9a04f90
0053f2f80 	tbz	w0, #0, #20 ; -> 0x53f2f94
0053f2f84 	mov	x0, x19
0053f2f88 	mov	x1, xzr
0053f2f8c 	bl	#61085620 ; -> 0x8e34740
0053f2f90 	b	#20 ; -> 0x53f2fa4
0053f2f94 	cbz	x20, #1216 ; -> 0x53f3454
0053f2f98 	mov	x0, x20
0053f2f9c 	mov	x1, xzr
0053f2fa0 	bl	#73485888 ; -> 0x9a07de0
0053f2fa4 	adrp	x8, #84213760 ; -> 0xa442000
0053f2fa8 	mov	x19, x0
0053f2fac 	ldr	x8, [x8, #2144]
0053f2fb0 	ldr	x0, [x8]
0053f2fb4 	ldr	w8, [x0, #228]
0053f2fb8 	cbnz	w8, #8 ; -> 0x53f2fc0
0053f2fbc 	bl	#-15082460 ; -> 0x4590be0
0053f2fc0 	mov	x0, xzr
0053f2fc4 	bl	#59864304 ; -> 0x8d0a4b4
0053f2fc8 	mov	x20, x0
0053f2fcc 	add	x8, sp, #152
0053f2fd0 	str	x0, [sp, #152]
0053f2fd4 	stp	xzr, x8, [sp, #88]
0053f2fd8 	bl	#-2724 ; -> 0x53f2534 [JsonCryptoCompressor::GetAesKey]
0053f2fdc 	mov	x1, x0
0053f2fe0 	cbz	x20, #1148 ; -> 0x53f345c
0053f2fe4 	ldr	x8, [x20]
0053f2fe8 	ldr	x9, [x8, #520]
0053f2fec 	ldr	x2, [x8, #528]
0053f2ff0 	mov	x0, x20
0053f2ff4 	blr	x9
0053f2ff8 	ldr	x20, [sp, #152]
0053f2ffc 	bl	#-2624 ; -> 0x53f25bc [JsonCryptoCompressor::GetAesIV]
0053f3000 	mov	x1, x0
0053f3004 	cbz	x20, #1116 ; -> 0x53f3460
0053f3008 	ldr	x8, [x20]
0053f300c 	ldp	x9, x2, [x8, #488]
0053f3010 	mov	x0, x20
0053f3014 	blr	x9
0053f3018 	ldr	x0, [sp, #152]
0053f301c 	cbz	x0, #1096 ; -> 0x53f3464
0053f3020 	ldr	x8, [x0]
0053f3024 	ldr	x9, [x8, #616]
0053f3028 	ldr	x2, [x8, #624]
0053f302c 	mov	w1, #1
0053f3030 	blr	x9
0053f3034 	ldr	x0, [sp, #152]
0053f3038 	cbz	x0, #1072 ; -> 0x53f3468
0053f303c 	ldr	x8, [x0]
0053f3040 	ldr	x9, [x8, #648]
0053f3044 	ldr	x2, [x8, #656]
0053f3048 	mov	w1, #2
0053f304c 	blr	x9
0053f3050 	ldr	x0, [sp, #152]
0053f3054 	cbz	x0, #1048 ; -> 0x53f346c
0053f3058 	ldr	x8, [x0]
0053f305c 	ldr	x1, [x8, #704]
0053f3060 	ldr	x9, [x8, #696]
0053f3064 	blr	x9
0053f3068 	adrp	x22, #83841024 ; -> 0xa3e8000
0053f306c 	add	x8, sp, #136
0053f3070 	ldr	x22, [x22, #160]
0053f3074 	str	x0, [sp, #136]
0053f3078 	stp	xzr, x8, [sp, #72]
0053f307c 	ldr	x0, [x22]
0053f3080 	bl	#-15082372 ; -> 0x4590cfc
0053f3084 	mov	x1, x19
0053f3088 	mov	x2, xzr
0053f308c 	mov	x20, x0
0053f3090 	bl	#61037480 ; -> 0x8e28c38
0053f3094 	adrp	x8, #84086784 ; -> 0xa424000
0053f3098 	add	x9, sp, #128
0053f309c 	ldr	x8, [x8, #1472]
0053f30a0 	ldr	x21, [sp, #136]
0053f30a4 	str	x20, [sp, #128]
0053f30a8 	stp	xzr, x9, [sp, #56]
0053f30ac 	ldr	x0, [x8]
0053f30b0 	bl	#-15082420 ; -> 0x4590cfc
0053f30b4 	mov	x1, x20
0053f30b8 	mov	x2, x21
0053f30bc 	mov	w3, wzr
0053f30c0 	mov	x4, xzr
0053f30c4 	mov	x19, x0
0053f30c8 	bl	#59839076 ; -> 0x8d0432c
0053f30cc 	adrp	x8, #84209664 ; -> 0xa442000
0053f30d0 	add	x9, sp, #120
0053f30d4 	ldr	x8, [x8, #2152]
0053f30d8 	str	x19, [sp, #120]
0053f30dc 	stp	xzr, x9, [sp, #40]
0053f30e0 	ldr	x0, [x8]
0053f30e4 	bl	#-15082472 ; -> 0x4590cfc
0053f30e8 	mov	x1, x19
0053f30ec 	mov	w2, wzr
0053f30f0 	mov	x3, xzr
0053f30f4 	mov	x20, x0
0053f30f8 	bl	#67509508 ; -> 0x9454dfc
0053f30fc 	ldr	x0, [x22]
0053f3100 	add	x8, sp, #112
0053f3104 	str	x20, [sp, #112]
0053f3108 	stp	xzr, x8, [sp, #24]
0053f310c 	bl	#-15082512 ; -> 0x4590cfc
0053f3110 	mov	x1, xzr
0053f3114 	mov	x19, x0
0053f3118 	bl	#61036952 ; -> 0x8e28ab0
0053f311c 	ldr	x0, [sp, #112]
0053f3120 	add	x8, sp, #104
0053f3124 	str	x19, [sp, #104]
0053f3128 	stp	xzr, x8, [sp, #8]
0053f312c 	cbz	x0, #844 ; -> 0x53f3478
0053f3130 	mov	x1, x19
0053f3134 	mov	x2, xzr
0053f3138 	bl	#61123492 ; -> 0x8e3dcdc
0053f313c 	ldr	x0, [sp, #104]
0053f3140 	cbz	x0, #832 ; -> 0x53f3480
0053f3144 	ldr	x8, [x0]
0053f3148 	ldr	x1, [x8, #1024]
0053f314c 	ldr	x9, [x8, #1016]
0053f3150 	blr	x9
0053f3154 	mov	x19, x0
0053f3158 	mov	x20, xzr
0053f315c 	mov	w22, #5
0053f3160 	add	x8, sp, #104
0053f3164 	ldr	x21, [x8]
0053f3168 	cbz	x21, #100 ; -> 0x53f31cc
0053f316c 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3170 	ldr	x8, [x21]
0053f3174 	ldr	x10, [x10, #1440]
0053f3178 	ldrh	w9, [x8, #302]
0053f317c 	ldr	x1, [x10]
0053f3180 	cbz	x9, #36 ; -> 0x53f31a4
0053f3184 	ldr	x10, [x8, #176]
0053f3188 	add	x10, x10, #8
0053f318c 	ldur	x11, [x10, #-8]
0053f3190 	cmp	x11, x1
0053f3194 	b.eq	#32 ; -> 0x53f31b4
0053f3198 	subs	x9, x9, #1
0053f319c 	add	x10, x10, #16
0053f31a0 	b.ne	#-20 ; -> 0x53f318c
0053f31a4 	mov	x0, x21
0053f31a8 	mov	w2, wzr
0053f31ac 	bl	#-14851912 ; -> 0x45c9264
0053f31b0 	b	#16 ; -> 0x53f31c0
0053f31b4 	ldrsw	x9, [x10]
0053f31b8 	add	x8, x8, x9, lsl #4
0053f31bc 	add	x0, x8, #312
0053f31c0 	ldp	x8, x1, [x0]
0053f31c4 	mov	x0, x21
0053f31c8 	blr	x8
0053f31cc 	cbnz	x20, #700 ; -> 0x53f3488
0053f31d0 	ldr	x8, [sp, #32]
0053f31d4 	ldr	x20, [x8]
0053f31d8 	cbz	x20, #100 ; -> 0x53f323c
0053f31dc 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f31e0 	ldr	x8, [x20]
0053f31e4 	ldr	x10, [x10, #1440]
0053f31e8 	ldrh	w9, [x8, #302]
0053f31ec 	ldr	x1, [x10]
0053f31f0 	cbz	x9, #36 ; -> 0x53f3214
0053f31f4 	ldr	x10, [x8, #176]
0053f31f8 	add	x10, x10, #8
0053f31fc 	ldur	x11, [x10, #-8]
0053f3200 	cmp	x11, x1
0053f3204 	b.eq	#32 ; -> 0x53f3224
0053f3208 	subs	x9, x9, #1
0053f320c 	add	x10, x10, #16
0053f3210 	b.ne	#-20 ; -> 0x53f31fc
0053f3214 	mov	x0, x20
0053f3218 	mov	w2, wzr
0053f321c 	bl	#-14852024 ; -> 0x45c9264
0053f3220 	b	#16 ; -> 0x53f3230
0053f3224 	ldrsw	x9, [x10]
0053f3228 	add	x8, x8, x9, lsl #4
0053f322c 	add	x0, x8, #312
0053f3230 	ldp	x8, x1, [x0]
0053f3234 	mov	x0, x20
0053f3238 	blr	x8
0053f323c 	ldr	x0, [sp, #24]
0053f3240 	cbnz	x0, #580 ; -> 0x53f3484
0053f3244 	ldr	x8, [sp, #48]
0053f3248 	ldr	x20, [x8]
0053f324c 	cbz	x20, #100 ; -> 0x53f32b0
0053f3250 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3254 	ldr	x8, [x20]
0053f3258 	ldr	x10, [x10, #1440]
0053f325c 	ldrh	w9, [x8, #302]
0053f3260 	ldr	x1, [x10]
0053f3264 	cbz	x9, #36 ; -> 0x53f3288
0053f3268 	ldr	x10, [x8, #176]
0053f326c 	add	x10, x10, #8
0053f3270 	ldur	x11, [x10, #-8]
0053f3274 	cmp	x11, x1
0053f3278 	b.eq	#32 ; -> 0x53f3298
0053f327c 	subs	x9, x9, #1
0053f3280 	add	x10, x10, #16
0053f3284 	b.ne	#-20 ; -> 0x53f3270
0053f3288 	mov	x0, x20
0053f328c 	mov	w2, wzr
0053f3290 	bl	#-14852140 ; -> 0x45c9264
0053f3294 	b	#16 ; -> 0x53f32a4
0053f3298 	ldrsw	x9, [x10]
0053f329c 	add	x8, x8, x9, lsl #4
0053f32a0 	add	x0, x8, #312
0053f32a4 	ldp	x8, x1, [x0]
0053f32a8 	mov	x0, x20
0053f32ac 	blr	x8
0053f32b0 	ldr	x0, [sp, #40]
0053f32b4 	cbnz	x0, #456 ; -> 0x53f347c
0053f32b8 	ldr	x8, [sp, #64]
0053f32bc 	ldr	x20, [x8]
0053f32c0 	cbz	x20, #100 ; -> 0x53f3324
0053f32c4 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f32c8 	ldr	x8, [x20]
0053f32cc 	ldr	x10, [x10, #1440]
0053f32d0 	ldrh	w9, [x8, #302]
0053f32d4 	ldr	x1, [x10]
0053f32d8 	cbz	x9, #36 ; -> 0x53f32fc
0053f32dc 	ldr	x10, [x8, #176]
0053f32e0 	add	x10, x10, #8
0053f32e4 	ldur	x11, [x10, #-8]
0053f32e8 	cmp	x11, x1
0053f32ec 	b.eq	#32 ; -> 0x53f330c
0053f32f0 	subs	x9, x9, #1
0053f32f4 	add	x10, x10, #16
0053f32f8 	b.ne	#-20 ; -> 0x53f32e4
0053f32fc 	mov	x0, x20
0053f3300 	mov	w2, wzr
0053f3304 	bl	#-14852256 ; -> 0x45c9264
0053f3308 	b	#16 ; -> 0x53f3318
0053f330c 	ldrsw	x9, [x10]
0053f3310 	add	x8, x8, x9, lsl #4
0053f3314 	add	x0, x8, #312
0053f3318 	ldp	x8, x1, [x0]
0053f331c 	mov	x0, x20
0053f3320 	blr	x8
0053f3324 	ldr	x0, [sp, #56]
0053f3328 	cbnz	x0, #332 ; -> 0x53f3474
0053f332c 	ldr	x8, [sp, #80]
0053f3330 	ldr	x20, [x8]
0053f3334 	cbz	x20, #100 ; -> 0x53f3398
0053f3338 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f333c 	ldr	x8, [x20]
0053f3340 	ldr	x10, [x10, #1440]
0053f3344 	ldrh	w9, [x8, #302]
0053f3348 	ldr	x1, [x10]
0053f334c 	cbz	x9, #36 ; -> 0x53f3370
0053f3350 	ldr	x10, [x8, #176]
0053f3354 	add	x10, x10, #8
0053f3358 	ldur	x11, [x10, #-8]
0053f335c 	cmp	x11, x1
0053f3360 	b.eq	#32 ; -> 0x53f3380
0053f3364 	subs	x9, x9, #1
0053f3368 	add	x10, x10, #16
0053f336c 	b.ne	#-20 ; -> 0x53f3358
0053f3370 	mov	x0, x20
0053f3374 	mov	w2, wzr
0053f3378 	bl	#-14852372 ; -> 0x45c9264
0053f337c 	b	#16 ; -> 0x53f338c
0053f3380 	ldrsw	x9, [x10]
0053f3384 	add	x8, x8, x9, lsl #4
0053f3388 	add	x0, x8, #312
0053f338c 	ldp	x8, x1, [x0]
0053f3390 	mov	x0, x20
0053f3394 	blr	x8
0053f3398 	ldr	x0, [sp, #72]
0053f339c 	cbnz	x0, #212 ; -> 0x53f3470
0053f33a0 	ldr	x8, [sp, #96]
0053f33a4 	ldr	x20, [x8]
0053f33a8 	cbz	x20, #100 ; -> 0x53f340c
0053f33ac 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f33b0 	ldr	x8, [x20]
0053f33b4 	ldr	x10, [x10, #1440]
0053f33b8 	ldrh	w9, [x8, #302]
0053f33bc 	ldr	x1, [x10]
0053f33c0 	cbz	x9, #36 ; -> 0x53f33e4
0053f33c4 	ldr	x10, [x8, #176]
0053f33c8 	add	x10, x10, #8
0053f33cc 	ldur	x11, [x10, #-8]
0053f33d0 	cmp	x11, x1
0053f33d4 	b.eq	#32 ; -> 0x53f33f4
0053f33d8 	subs	x9, x9, #1
0053f33dc 	add	x10, x10, #16
0053f33e0 	b.ne	#-20 ; -> 0x53f33cc
0053f33e4 	mov	x0, x20
0053f33e8 	mov	w2, wzr
0053f33ec 	bl	#-14852488 ; -> 0x45c9264
0053f33f0 	b	#16 ; -> 0x53f3400
0053f33f4 	ldrsw	x9, [x10]
0053f33f8 	add	x8, x8, x9, lsl #4
0053f33fc 	add	x0, x8, #312
0053f3400 	ldp	x8, x1, [x0]
0053f3404 	mov	x0, x20
0053f3408 	blr	x8
0053f340c 	ldr	x0, [sp, #88]
0053f3410 	cbnz	x0, #72 ; -> 0x53f3458
0053f3414 	cmp	w22, #5
0053f3418 	b.eq	#8 ; -> 0x53f3420
0053f341c 	cbnz	w22, #36 ; -> 0x53f3440
0053f3420 	mov	x0, xzr
0053f3424 	bl	#59781264 ; -> 0x8cf64b4
0053f3428 	cbz	x0, #44 ; -> 0x53f3454
0053f342c 	ldr	x8, [x0]
0053f3430 	mov	x1, x19
0053f3434 	ldr	x9, [x8, #904]
0053f3438 	ldr	x2, [x8, #912]
0053f343c 	blr	x9
0053f3440 	ldp	x20, x19, [sp, #176]
0053f3444 	ldr	x30, [sp, #144]
0053f3448 	ldp	x22, x21, [sp, #160]
0053f344c 	add	sp, sp, #192
0053f3450 	ret
0053f3454 	bl	#-15083336 ; -> 0x4590d0c
0053f3458 	bl	#-15083348 ; -> 0x4590d04
0053f345c 	bl	#-15083344 ; -> 0x4590d0c
0053f3460 	bl	#-15083348 ; -> 0x4590d0c
0053f3464 	bl	#-15083352 ; -> 0x4590d0c
0053f3468 	bl	#-15083356 ; -> 0x4590d0c
0053f346c 	bl	#-15083360 ; -> 0x4590d0c
0053f3470 	bl	#-15083372 ; -> 0x4590d04
0053f3474 	bl	#-15083376 ; -> 0x4590d04
0053f3478 	bl	#-15083372 ; -> 0x4590d0c
0053f347c 	bl	#-15083384 ; -> 0x4590d04
0053f3480 	bl	#-15083380 ; -> 0x4590d0c
0053f3484 	bl	#-15083392 ; -> 0x4590d04
0053f3488 	mov	x0, x20
0053f348c 	bl	#-15083400 ; -> 0x4590d04
0053f3490 	b	#16 ; -> 0x53f34a0
0053f3494 	b	#12 ; -> 0x53f34a0
0053f3498 	b	#424 ; -> 0x53f3640
0053f349c 	b	#420 ; -> 0x53f3640
0053f34a0 	mov	x21, x1
0053f34a4 	mov	x20, x0
0053f34a8 	cmp	w21, #1
0053f34ac 	b.ne	#48 ; -> 0x53f34dc
0053f34b0 	mov	x0, x20
0053f34b4 	bl	#77038540 ; -> 0x9d6b880
0053f34b8 	ldr	x20, [x0]
0053f34bc 	str	x20, [sp, #8]
0053f34c0 	bl	#77038544 ; -> 0x9d6b890
0053f34c4 	ldr	x8, [sp, #16]
0053f34c8 	mov	w22, wzr
0053f34cc 	mov	x19, xzr
0053f34d0 	b	#-876 ; -> 0x53f3164
0053f34d4 	mov	x21, x1
0053f34d8 	mov	x20, x0
0053f34dc 	add	x0, sp, #8
0053f34e0 	bl	#-19753764 ; -> 0x411c9bc
0053f34e4 	b	#12 ; -> 0x53f34f0
0053f34e8 	mov	x21, x1
0053f34ec 	mov	x20, x0
0053f34f0 	mov	x19, xzr
0053f34f4 	b	#68 ; -> 0x53f3538
0053f34f8 	mov	x21, x1
0053f34fc 	mov	x20, x0
0053f3500 	mov	x19, xzr
0053f3504 	b	#116 ; -> 0x53f3578
0053f3508 	mov	x21, x1
0053f350c 	mov	x20, x0
0053f3510 	mov	x19, xzr
0053f3514 	b	#164 ; -> 0x53f35b8
0053f3518 	mov	x21, x1
0053f351c 	mov	x20, x0
0053f3520 	mov	x19, xzr
0053f3524 	b	#212 ; -> 0x53f35f8
0053f3528 	b	#280 ; -> 0x53f3640
0053f352c 	b	#276 ; -> 0x53f3640
0053f3530 	mov	x21, x1
0053f3534 	mov	x20, x0
0053f3538 	cmp	w21, #1
0053f353c 	b.ne	#40 ; -> 0x53f3564
0053f3540 	mov	x0, x20
0053f3544 	bl	#77038396 ; -> 0x9d6b880
0053f3548 	ldr	x8, [x0]
0053f354c 	str	x8, [sp, #24]
0053f3550 	bl	#77038400 ; -> 0x9d6b890
0053f3554 	mov	w22, wzr
0053f3558 	b	#-904 ; -> 0x53f31d0
0053f355c 	mov	x21, x1
0053f3560 	mov	x20, x0
0053f3564 	add	x0, sp, #24
0053f3568 	bl	#-19753900 ; -> 0x411c9bc
0053f356c 	b	#12 ; -> 0x53f3578
0053f3570 	mov	x21, x1
0053f3574 	mov	x20, x0
0053f3578 	cmp	w21, #1
0053f357c 	b.ne	#40 ; -> 0x53f35a4
0053f3580 	mov	x0, x20
0053f3584 	bl	#77038332 ; -> 0x9d6b880
0053f3588 	ldr	x8, [x0]
0053f358c 	str	x8, [sp, #40]
0053f3590 	bl	#77038336 ; -> 0x9d6b890
0053f3594 	mov	w22, wzr
0053f3598 	b	#-852 ; -> 0x53f3244
0053f359c 	mov	x21, x1
0053f35a0 	mov	x20, x0
0053f35a4 	add	x0, sp, #40
0053f35a8 	bl	#-19753964 ; -> 0x411c9bc
0053f35ac 	b	#12 ; -> 0x53f35b8
0053f35b0 	mov	x21, x1
0053f35b4 	mov	x20, x0
0053f35b8 	cmp	w21, #1
0053f35bc 	b.ne	#40 ; -> 0x53f35e4
0053f35c0 	mov	x0, x20
0053f35c4 	bl	#77038268 ; -> 0x9d6b880
0053f35c8 	ldr	x8, [x0]
0053f35cc 	str	x8, [sp, #56]
0053f35d0 	bl	#77038272 ; -> 0x9d6b890
0053f35d4 	mov	w22, wzr
0053f35d8 	b	#-800 ; -> 0x53f32b8
0053f35dc 	mov	x21, x1
0053f35e0 	mov	x20, x0
0053f35e4 	add	x0, sp, #56
0053f35e8 	bl	#-19754028 ; -> 0x411c9bc
0053f35ec 	b	#12 ; -> 0x53f35f8
0053f35f0 	mov	x21, x1
0053f35f4 	mov	x20, x0
0053f35f8 	cmp	w21, #1
0053f35fc 	b.ne	#40 ; -> 0x53f3624
0053f3600 	mov	x0, x20
0053f3604 	bl	#77038204 ; -> 0x9d6b880
0053f3608 	ldr	x8, [x0]
0053f360c 	str	x8, [sp, #72]
0053f3610 	bl	#77038208 ; -> 0x9d6b890
0053f3614 	mov	w22, wzr
0053f3618 	b	#-748 ; -> 0x53f332c
0053f361c 	mov	x21, x1
0053f3620 	mov	x20, x0
0053f3624 	add	x0, sp, #72
0053f3628 	bl	#-19754092 ; -> 0x411c9bc
0053f362c 	b	#32 ; -> 0x53f364c
0053f3630 	mov	x21, x1
0053f3634 	mov	x20, x0
0053f3638 	b	#20 ; -> 0x53f364c
0053f363c 	b	#4 ; -> 0x53f3640
0053f3640 	mov	x21, x1
0053f3644 	mov	x20, x0
0053f3648 	mov	x19, xzr
0053f364c 	cmp	w21, #1
0053f3650 	b.ne	#36 ; -> 0x53f3674
0053f3654 	mov	x0, x20
0053f3658 	bl	#77038120 ; -> 0x9d6b880
0053f365c 	ldr	x8, [x0]
0053f3660 	str	x8, [sp, #88]
0053f3664 	bl	#77038124 ; -> 0x9d6b890
0053f3668 	mov	w22, wzr
0053f366c 	b	#-716 ; -> 0x53f33a0
0053f3670 	mov	x20, x0
0053f3674 	add	x0, sp, #88
0053f3678 	bl	#-19754172 ; -> 0x411c9bc
0053f367c 	mov	x0, x20
0053f3680 	bl	#-13899364 ; -> 0x46b201c
0053f3684 	bl	#-19754532 ; -> 0x411c860
