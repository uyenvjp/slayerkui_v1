0053f3e58 	sub	sp, sp, #160
0053f3e5c 	stp	x30, x23, [sp, #112]
0053f3e60 	stp	x22, x21, [sp, #128]
0053f3e64 	stp	x20, x19, [sp, #144]
0053f3e68 	adrp	x21, #92160000 ; -> 0xabd7000
0053f3e6c 	mov	x19, x1
0053f3e70 	mov	x20, x0
0053f3e74 	ldrb	w8, [x21, #2674]
0053f3e78 	tbnz	w8, #0, #72 ; -> 0x53f3ec0
0053f3e7c 	adrp	x0, #84209664 ; -> 0xa442000
0053f3e80 	ldr	x0, [x0, #2144]
0053f3e84 	bl	#-15086628 ; -> 0x4590a60
0053f3e88 	adrp	x0, #84086784 ; -> 0xa424000
0053f3e8c 	ldr	x0, [x0, #1472]
0053f3e90 	bl	#-15086640 ; -> 0x4590a60
0053f3e94 	adrp	x0, #84209664 ; -> 0xa442000
0053f3e98 	ldr	x0, [x0, #2152]
0053f3e9c 	bl	#-15086652 ; -> 0x4590a60
0053f3ea0 	adrp	x0, #83836928 ; -> 0xa3e7000
0053f3ea4 	ldr	x0, [x0, #1440]
0053f3ea8 	bl	#-15086664 ; -> 0x4590a60
0053f3eac 	adrp	x0, #83841024 ; -> 0xa3e8000
0053f3eb0 	ldr	x0, [x0, #160]
0053f3eb4 	bl	#-15086676 ; -> 0x4590a60
0053f3eb8 	mov	w8, #1
0053f3ebc 	strb	w8, [x21, #2674]
0053f3ec0 	mov	w0, #45303
0053f3ec4 	mov	x1, xzr
0053f3ec8 	stp	xzr, xzr, [sp, #96]
0053f3ecc 	stp	xzr, xzr, [sp, #80]
0053f3ed0 	stp	xzr, xzr, [sp, #64]
0053f3ed4 	bl	#-8046896 ; -> 0x4c475a4 [WrappersManagerImpl::IsPatched]
0053f3ed8 	tbz	w0, #0, #52 ; -> 0x53f3f0c
0053f3edc 	mov	w0, #45303
0053f3ee0 	mov	x1, xzr
0053f3ee4 	bl	#-8046732 ; -> 0x4c47658 [WrappersManagerImpl::GetPatch]
0053f3ee8 	cbz	x0, #332 ; -> 0x53f4034
0053f3eec 	mov	x1, x20
0053f3ef0 	mov	x2, x19
0053f3ef4 	mov	x3, xzr
0053f3ef8 	ldp	x20, x19, [sp, #144]
0053f3efc 	ldp	x22, x21, [sp, #128]
0053f3f00 	ldp	x30, x23, [sp, #112]
0053f3f04 	add	sp, sp, #160
0053f3f08 	b	#-8869620 ; -> 0x4b7e814 [ILFixDynamicMethodWrapper::__Gen_Wrap_4]
0053f3f0c 	adrp	x23, #83841024 ; -> 0xa3e8000
0053f3f10 	ldr	x23, [x23, #160]
0053f3f14 	ldr	x0, [x23]
0053f3f18 	bl	#-15086108 ; -> 0x4590cfc
0053f3f1c 	mov	x1, xzr
0053f3f20 	mov	x22, x0
0053f3f24 	bl	#61033356 ; -> 0x8e28ab0
0053f3f28 	adrp	x8, #84209664 ; -> 0xa442000
0053f3f2c 	add	x9, sp, #104
0053f3f30 	ldr	x8, [x8, #2152]
0053f3f34 	str	x22, [sp, #104]
0053f3f38 	stp	xzr, x9, [sp, #48]
0053f3f3c 	ldr	x0, [x8]
0053f3f40 	bl	#-15086148 ; -> 0x4590cfc
0053f3f44 	mov	x1, x22
0053f3f48 	mov	w2, wzr
0053f3f4c 	mov	x3, xzr
0053f3f50 	mov	x21, x0
0053f3f54 	bl	#67506596 ; -> 0x94550f8
0053f3f58 	add	x8, sp, #96
0053f3f5c 	str	x21, [sp, #96]
0053f3f60 	stp	xzr, x8, [sp, #32]
0053f3f64 	cbz	x20, #212 ; -> 0x53f4038
0053f3f68 	cbz	x21, #208 ; -> 0x53f4038
0053f3f6c 	ldr	x8, [x21]
0053f3f70 	ldr	w3, [x20, #24]
0053f3f74 	ldr	x9, [x8, #904]
0053f3f78 	ldr	x4, [x8, #912]
0053f3f7c 	mov	x0, x21
0053f3f80 	mov	x1, x20
0053f3f84 	mov	w2, wzr
0053f3f88 	blr	x9
0053f3f8c 	mov	x20, xzr
0053f3f90 	mov	w22, #3
0053f3f94 	add	x8, sp, #96
0053f3f98 	ldr	x21, [x8]
0053f3f9c 	cbz	x21, #100 ; -> 0x53f4000
0053f3fa0 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3fa4 	ldr	x8, [x21]
0053f3fa8 	ldr	x10, [x10, #1440]
0053f3fac 	ldrh	w9, [x8, #302]
0053f3fb0 	ldr	x1, [x10]
0053f3fb4 	cbz	x9, #36 ; -> 0x53f3fd8
0053f3fb8 	ldr	x10, [x8, #176]
0053f3fbc 	add	x10, x10, #8
0053f3fc0 	ldur	x11, [x10, #-8]
0053f3fc4 	cmp	x11, x1
0053f3fc8 	b.eq	#32 ; -> 0x53f3fe8
0053f3fcc 	subs	x9, x9, #1
0053f3fd0 	add	x10, x10, #16
0053f3fd4 	b.ne	#-20 ; -> 0x53f3fc0
0053f3fd8 	mov	x0, x21
0053f3fdc 	mov	w2, wzr
0053f3fe0 	bl	#-14855548 ; -> 0x45c9264
0053f3fe4 	b	#16 ; -> 0x53f3ff4
0053f3fe8 	ldrsw	x9, [x10]
0053f3fec 	add	x8, x8, x9, lsl #4
0053f3ff0 	add	x0, x8, #312
0053f3ff4 	ldp	x8, x1, [x0]
0053f3ff8 	mov	x0, x21
0053f3ffc 	blr	x8
0053f4000 	cbnz	x20, #60 ; -> 0x53f403c
0053f4004 	cmp	w22, #3
0053f4008 	b.eq	#8 ; -> 0x53f4010
0053f400c 	cbnz	w22, #180 ; -> 0x53f40c0
0053f4010 	ldr	x0, [sp, #104]
0053f4014 	cbz	x0, #48 ; -> 0x53f4044
0053f4018 	ldr	x8, [x0]
0053f401c 	ldr	x1, [x8, #1024]
0053f4020 	ldr	x9, [x8, #1016]
0053f4024 	blr	x9
0053f4028 	mov	x20, x0
0053f402c 	mov	w22, #4
0053f4030 	b	#148 ; -> 0x53f40c4
0053f4034 	bl	#-15086376 ; -> 0x4590d0c
0053f4038 	bl	#-15086380 ; -> 0x4590d0c
0053f403c 	mov	x0, x20
0053f4040 	bl	#-15086396 ; -> 0x4590d04
0053f4044 	bl	#-15086392 ; -> 0x4590d0c
0053f4048 	b	#80 ; -> 0x53f4098
0053f404c 	b	#76 ; -> 0x53f4098
0053f4050 	mov	x20, x1
0053f4054 	mov	x21, x0
0053f4058 	cmp	w20, #1
0053f405c 	b.ne	#44 ; -> 0x53f4088
0053f4060 	mov	x0, x21
0053f4064 	bl	#77035548 ; -> 0x9d6b880
0053f4068 	ldr	x20, [x0]
0053f406c 	str	x20, [sp, #32]
0053f4070 	bl	#77035552 ; -> 0x9d6b890
0053f4074 	ldr	x8, [sp, #40]
0053f4078 	mov	w22, wzr
0053f407c 	b	#-228 ; -> 0x53f3f98
0053f4080 	mov	x20, x1
0053f4084 	mov	x21, x0
0053f4088 	add	x0, sp, #32
0053f408c 	bl	#-19756752 ; -> 0x411c9bc
0053f4090 	b	#16 ; -> 0x53f40a0
0053f4094 	b	#4 ; -> 0x53f4098
0053f4098 	mov	x20, x1
0053f409c 	mov	x21, x0
0053f40a0 	cmp	w20, #1
0053f40a4 	b.ne	#1108 ; -> 0x53f44f8
0053f40a8 	mov	x0, x21
0053f40ac 	bl	#77035476 ; -> 0x9d6b880
0053f40b0 	ldr	x8, [x0]
0053f40b4 	str	x8, [sp, #48]
0053f40b8 	bl	#77035480 ; -> 0x9d6b890
0053f40bc 	mov	w22, wzr
0053f40c0 	mov	x20, xzr
0053f40c4 	ldr	x8, [sp, #56]
0053f40c8 	ldr	x21, [x8]
0053f40cc 	cbz	x21, #100 ; -> 0x53f4130
0053f40d0 	adrp	x10, #83832832 ; -> 0xa3e7000
0053f40d4 	ldr	x8, [x21]
0053f40d8 	ldr	x10, [x10, #1440]
0053f40dc 	ldrh	w9, [x8, #302]
0053f40e0 	ldr	x1, [x10]
0053f40e4 	cbz	x9, #36 ; -> 0x53f4108
0053f40e8 	ldr	x10, [x8, #176]
0053f40ec 	add	x10, x10, #8
0053f40f0 	ldur	x11, [x10, #-8]
0053f40f4 	cmp	x11, x1
0053f40f8 	b.eq	#32 ; -> 0x53f4118
0053f40fc 	subs	x9, x9, #1
0053f4100 	add	x10, x10, #16
0053f4104 	b.ne	#-20 ; -> 0x53f40f0
0053f4108 	mov	x0, x21
0053f410c 	mov	w2, wzr
0053f4110 	bl	#-14855852 ; -> 0x45c9264
0053f4114 	b	#16 ; -> 0x53f4124
0053f4118 	ldrsw	x9, [x10]
0053f411c 	add	x8, x8, x9, lsl #4
0053f4120 	add	x0, x8, #312
0053f4124 	ldp	x8, x1, [x0]
0053f4128 	mov	x0, x21
0053f412c 	blr	x8
0053f4130 	ldr	x0, [sp, #48]
0053f4134 	cbnz	x0, #908 ; -> 0x53f44c0
0053f4138 	orr	w8, w22, #0x4
0053f413c 	cmp	w8, #4
0053f4140 	b.ne	#876 ; -> 0x53f44ac
0053f4144 	adrp	x8, #84205568 ; -> 0xa442000
0053f4148 	ldr	x8, [x8, #2144]
0053f414c 	ldr	x0, [x8]
0053f4150 	ldr	w8, [x0, #228]
0053f4154 	cbnz	w8, #8 ; -> 0x53f415c
0053f4158 	bl	#-15086968 ; -> 0x4590be0
0053f415c 	mov	x0, xzr
0053f4160 	bl	#59859796 ; -> 0x8d0a4b4
0053f4164 	mov	x21, x0
0053f4168 	add	x8, sp, #88
0053f416c 	str	x0, [sp, #88]
0053f4170 	stp	xzr, x8, [sp, #48]
0053f4174 	bl	#-7232 ; -> 0x53f2534 [JsonCryptoCompressor::GetAesKey]
0053f4178 	mov	x1, x0
0053f417c 	cbz	x21, #840 ; -> 0x53f44c4
0053f4180 	ldr	x8, [x21]
0053f4184 	ldr	x9, [x8, #520]
0053f4188 	ldr	x2, [x8, #528]
0053f418c 	mov	x0, x21
0053f4190 	blr	x9
0053f4194 	ldr	x21, [sp, #88]
0053f4198 	bl	#-7132 ; -> 0x53f25bc [JsonCryptoCompressor::GetAesIV]
0053f419c 	mov	x1, x0
0053f41a0 	cbz	x21, #808 ; -> 0x53f44c8
0053f41a4 	ldr	x8, [x21]
0053f41a8 	ldp	x9, x2, [x8, #488]
0053f41ac 	mov	x0, x21
0053f41b0 	blr	x9
0053f41b4 	ldr	x0, [sp, #88]
0053f41b8 	cbz	x0, #788 ; -> 0x53f44cc
0053f41bc 	ldr	x8, [x0]
0053f41c0 	ldr	x9, [x8, #616]
0053f41c4 	ldr	x2, [x8, #624]
0053f41c8 	mov	w1, #1
0053f41cc 	blr	x9
0053f41d0 	ldr	x0, [sp, #88]
0053f41d4 	cbz	x0, #764 ; -> 0x53f44d0
0053f41d8 	ldr	x8, [x0]
0053f41dc 	ldr	x9, [x8, #648]
0053f41e0 	ldr	x2, [x8, #656]
0053f41e4 	mov	w1, #2
0053f41e8 	blr	x9
0053f41ec 	ldr	x0, [sp, #88]
0053f41f0 	cbz	x0, #740 ; -> 0x53f44d4
0053f41f4 	ldr	x8, [x0]
0053f41f8 	ldr	x1, [x8, #672]
0053f41fc 	ldr	x9, [x8, #664]
0053f4200 	blr	x9
0053f4204 	str	x0, [sp, #80]
0053f4208 	ldr	x0, [x23]
0053f420c 	add	x8, sp, #80
0053f4210 	stp	xzr, x8, [sp, #32]
0053f4214 	bl	#-15086872 ; -> 0x4590cfc
0053f4218 	mov	x1, xzr
0053f421c 	mov	x21, x0
0053f4220 	bl	#61032592 ; -> 0x8e28ab0
0053f4224 	adrp	x8, #84082688 ; -> 0xa424000
0053f4228 	add	x9, sp, #72
0053f422c 	ldr	x8, [x8, #1472]
0053f4230 	ldr	x23, [sp, #80]
0053f4234 	str	x21, [sp, #72]
0053f4238 	stp	xzr, x9, [sp, #16]
0053f423c 	ldr	x0, [x8]
0053f4240 	bl	#-15086916 ; -> 0x4590cfc
0053f4244 	mov	x1, x21
0053f4248 	mov	x2, x23
0053f424c 	mov	w3, #1
0053f4250 	mov	x4, xzr
0053f4254 	mov	x22, x0
0053f4258 	bl	#59834580 ; -> 0x8d0432c
0053f425c 	add	x8, sp, #64
0053f4260 	str	x22, [sp, #64]
0053f4264 	stp	xzr, x8, [sp]
0053f4268 	cbz	x20, #624 ; -> 0x53f44d8
0053f426c 	cbz	x22, #620 ; -> 0x53f44d8
0053f4270 	ldr	x8, [x22]
0053f4274 	ldr	w3, [x20, #24]
0053f4278 	ldr	x9, [x8, #904]
0053f427c 	ldr	x4, [x8, #912]
0053f4280 	mov	x0, x22
0053f4284 	mov	x1, x20
0053f4288 	mov	w2, wzr
0053f428c 	blr	x9
0053f4290 	ldr	x0, [sp, #64]
0053f4294 	cbz	x0, #588 ; -> 0x53f44e0
0053f4298 	mov	x1, xzr
0053f429c 	bl	#59835644 ; -> 0x8d04798
0053f42a0 	ldr	x0, [sp, #72]
0053f42a4 	cbz	x0, #580 ; -> 0x53f44e8
0053f42a8 	ldr	x8, [x0]
0053f42ac 	ldr	x1, [x8, #1024]
0053f42b0 	ldr	x9, [x8, #1016]
0053f42b4 	blr	x9
0053f42b8 	mov	x20, x0
0053f42bc 	mov	x21, xzr
0053f42c0 	mov	w23, #5
0053f42c4 	add	x8, sp, #64
0053f42c8 	ldr	x22, [x8]
0053f42cc 	cbz	x22, #100 ; -> 0x53f4330
0053f42d0 	adrp	x10, #83832832 ; -> 0xa3e7000
0053f42d4 	ldr	x8, [x22]
0053f42d8 	ldr	x10, [x10, #1440]
0053f42dc 	ldrh	w9, [x8, #302]
0053f42e0 	ldr	x1, [x10]
0053f42e4 	cbz	x9, #36 ; -> 0x53f4308
0053f42e8 	ldr	x10, [x8, #176]
0053f42ec 	add	x10, x10, #8
0053f42f0 	ldur	x11, [x10, #-8]
0053f42f4 	cmp	x11, x1
0053f42f8 	b.eq	#32 ; -> 0x53f4318
0053f42fc 	subs	x9, x9, #1
0053f4300 	add	x10, x10, #16
0053f4304 	b.ne	#-20 ; -> 0x53f42f0
0053f4308 	mov	x0, x22
0053f430c 	mov	w2, wzr
0053f4310 	bl	#-14856364 ; -> 0x45c9264
0053f4314 	b	#16 ; -> 0x53f4324
0053f4318 	ldrsw	x9, [x10]
0053f431c 	add	x8, x8, x9, lsl #4
0053f4320 	add	x0, x8, #312
0053f4324 	ldp	x8, x1, [x0]
0053f4328 	mov	x0, x22
0053f432c 	blr	x8
0053f4330 	cbnz	x21, #444 ; -> 0x53f44ec
0053f4334 	ldr	x8, [sp, #24]
0053f4338 	ldr	x21, [x8]
0053f433c 	cbz	x21, #100 ; -> 0x53f43a0
0053f4340 	adrp	x10, #83832832 ; -> 0xa3e7000
0053f4344 	ldr	x8, [x21]
0053f4348 	ldr	x10, [x10, #1440]
0053f434c 	ldrh	w9, [x8, #302]
0053f4350 	ldr	x1, [x10]
0053f4354 	cbz	x9, #36 ; -> 0x53f4378
0053f4358 	ldr	x10, [x8, #176]
0053f435c 	add	x10, x10, #8
0053f4360 	ldur	x11, [x10, #-8]
0053f4364 	cmp	x11, x1
0053f4368 	b.eq	#32 ; -> 0x53f4388
0053f436c 	subs	x9, x9, #1
0053f4370 	add	x10, x10, #16
0053f4374 	b.ne	#-20 ; -> 0x53f4360
0053f4378 	mov	x0, x21
0053f437c 	mov	w2, wzr
0053f4380 	bl	#-14856476 ; -> 0x45c9264
0053f4384 	b	#16 ; -> 0x53f4394
0053f4388 	ldrsw	x9, [x10]
0053f438c 	add	x8, x8, x9, lsl #4
0053f4390 	add	x0, x8, #312
0053f4394 	ldp	x8, x1, [x0]
0053f4398 	mov	x0, x21
0053f439c 	blr	x8
0053f43a0 	ldr	x0, [sp, #16]
0053f43a4 	cbnz	x0, #320 ; -> 0x53f44e4
0053f43a8 	ldr	x8, [sp, #40]
0053f43ac 	ldr	x21, [x8]
0053f43b0 	cbz	x21, #100 ; -> 0x53f4414
0053f43b4 	adrp	x10, #83832832 ; -> 0xa3e7000
0053f43b8 	ldr	x8, [x21]
0053f43bc 	ldr	x10, [x10, #1440]
0053f43c0 	ldrh	w9, [x8, #302]
0053f43c4 	ldr	x1, [x10]
0053f43c8 	cbz	x9, #36 ; -> 0x53f43ec
0053f43cc 	ldr	x10, [x8, #176]
0053f43d0 	add	x10, x10, #8
0053f43d4 	ldur	x11, [x10, #-8]
0053f43d8 	cmp	x11, x1
0053f43dc 	b.eq	#32 ; -> 0x53f43fc
0053f43e0 	subs	x9, x9, #1
0053f43e4 	add	x10, x10, #16
0053f43e8 	b.ne	#-20 ; -> 0x53f43d4
0053f43ec 	mov	x0, x21
0053f43f0 	mov	w2, wzr
0053f43f4 	bl	#-14856592 ; -> 0x45c9264
0053f43f8 	b	#16 ; -> 0x53f4408
0053f43fc 	ldrsw	x9, [x10]
0053f4400 	add	x8, x8, x9, lsl #4
0053f4404 	add	x0, x8, #312
0053f4408 	ldp	x8, x1, [x0]
0053f440c 	mov	x0, x21
0053f4410 	blr	x8
0053f4414 	ldr	x0, [sp, #32]
0053f4418 	cbnz	x0, #196 ; -> 0x53f44dc
0053f441c 	ldr	x8, [sp, #56]
0053f4420 	ldr	x21, [x8]
0053f4424 	cbz	x21, #100 ; -> 0x53f4488
0053f4428 	adrp	x10, #83832832 ; -> 0xa3e7000
0053f442c 	ldr	x8, [x21]
0053f4430 	ldr	x10, [x10, #1440]
0053f4434 	ldrh	w9, [x8, #302]
0053f4438 	ldr	x1, [x10]
0053f443c 	cbz	x9, #36 ; -> 0x53f4460
0053f4440 	ldr	x10, [x8, #176]
0053f4444 	add	x10, x10, #8
0053f4448 	ldur	x11, [x10, #-8]
0053f444c 	cmp	x11, x1
0053f4450 	b.eq	#32 ; -> 0x53f4470
0053f4454 	subs	x9, x9, #1
0053f4458 	add	x10, x10, #16
0053f445c 	b.ne	#-20 ; -> 0x53f4448
0053f4460 	mov	x0, x21
0053f4464 	mov	w2, wzr
0053f4468 	bl	#-14856708 ; -> 0x45c9264
0053f446c 	b	#16 ; -> 0x53f447c
0053f4470 	ldrsw	x9, [x10]
0053f4474 	add	x8, x8, x9, lsl #4
0053f4478 	add	x0, x8, #312
0053f447c 	ldp	x8, x1, [x0]
0053f4480 	mov	x0, x21
0053f4484 	blr	x8
0053f4488 	ldr	x0, [sp, #48]
0053f448c 	cbnz	x0, #52 ; -> 0x53f44c0
0053f4490 	cmp	w23, #5
0053f4494 	b.eq	#8 ; -> 0x53f449c
0053f4498 	cbnz	w23, #20 ; -> 0x53f44ac
0053f449c 	mov	x0, x19
0053f44a0 	mov	x1, x20
0053f44a4 	mov	x2, xzr
0053f44a8 	bl	#61082080 ; -> 0x8e34e88
0053f44ac 	ldp	x20, x19, [sp, #144]
0053f44b0 	ldp	x22, x21, [sp, #128]
0053f44b4 	ldp	x30, x23, [sp, #112]
0053f44b8 	add	sp, sp, #160
0053f44bc 	ret
0053f44c0 	bl	#-15087548 ; -> 0x4590d04
0053f44c4 	bl	#-15087544 ; -> 0x4590d0c
0053f44c8 	bl	#-15087548 ; -> 0x4590d0c
0053f44cc 	bl	#-15087552 ; -> 0x4590d0c
0053f44d0 	bl	#-15087556 ; -> 0x4590d0c
0053f44d4 	bl	#-15087560 ; -> 0x4590d0c
0053f44d8 	bl	#-15087564 ; -> 0x4590d0c
0053f44dc 	bl	#-15087576 ; -> 0x4590d04
0053f44e0 	bl	#-15087572 ; -> 0x4590d0c
0053f44e4 	bl	#-15087584 ; -> 0x4590d04
0053f44e8 	bl	#-15087580 ; -> 0x4590d0c
0053f44ec 	mov	x0, x21
0053f44f0 	bl	#-15087596 ; -> 0x4590d04
0053f44f4 	mov	x21, x0
0053f44f8 	add	x0, sp, #48
0053f44fc 	bl	#-19757888 ; -> 0x411c9bc
0053f4500 	b	#340 ; -> 0x53f4654
0053f4504 	b	#20 ; -> 0x53f4518
0053f4508 	b	#16 ; -> 0x53f4518
0053f450c 	b	#268 ; -> 0x53f4618
0053f4510 	b	#264 ; -> 0x53f4618
0053f4514 	b	#4 ; -> 0x53f4518
0053f4518 	mov	x22, x1
0053f451c 	mov	x21, x0
0053f4520 	cmp	w22, #1
0053f4524 	b.ne	#48 ; -> 0x53f4554
0053f4528 	mov	x0, x21
0053f452c 	bl	#77034324 ; -> 0x9d6b880
0053f4530 	ldr	x21, [x0]
0053f4534 	str	x21, [sp]
0053f4538 	bl	#77034328 ; -> 0x9d6b890
0053f453c 	ldr	x8, [sp, #8]
0053f4540 	mov	w23, wzr
0053f4544 	mov	x20, xzr
0053f4548 	b	#-640 ; -> 0x53f42c8
0053f454c 	mov	x22, x1
0053f4550 	mov	x21, x0
0053f4554 	mov	x0, sp
0053f4558 	bl	#-19757980 ; -> 0x411c9bc
0053f455c 	b	#12 ; -> 0x53f4568
0053f4560 	mov	x22, x1
0053f4564 	mov	x21, x0
0053f4568 	mov	x20, xzr
0053f456c 	b	#36 ; -> 0x53f4590
0053f4570 	mov	x22, x1
0053f4574 	mov	x21, x0
0053f4578 	mov	x20, xzr
0053f457c 	b	#84 ; -> 0x53f45d0
0053f4580 	b	#152 ; -> 0x53f4618
0053f4584 	b	#148 ; -> 0x53f4618
0053f4588 	mov	x22, x1
0053f458c 	mov	x21, x0
0053f4590 	cmp	w22, #1
0053f4594 	b.ne	#40 ; -> 0x53f45bc
0053f4598 	mov	x0, x21
0053f459c 	bl	#77034212 ; -> 0x9d6b880
0053f45a0 	ldr	x8, [x0]
0053f45a4 	str	x8, [sp, #16]
0053f45a8 	bl	#77034216 ; -> 0x9d6b890
0053f45ac 	mov	w23, wzr
0053f45b0 	b	#-636 ; -> 0x53f4334
0053f45b4 	mov	x22, x1
0053f45b8 	mov	x21, x0
0053f45bc 	add	x0, sp, #16
0053f45c0 	bl	#-19758084 ; -> 0x411c9bc
0053f45c4 	b	#12 ; -> 0x53f45d0
0053f45c8 	mov	x22, x1
0053f45cc 	mov	x21, x0
0053f45d0 	cmp	w22, #1
0053f45d4 	b.ne	#40 ; -> 0x53f45fc
0053f45d8 	mov	x0, x21
0053f45dc 	bl	#77034148 ; -> 0x9d6b880
0053f45e0 	ldr	x8, [x0]
0053f45e4 	str	x8, [sp, #32]
0053f45e8 	bl	#77034152 ; -> 0x9d6b890
0053f45ec 	mov	w23, wzr
0053f45f0 	b	#-584 ; -> 0x53f43a8
0053f45f4 	mov	x22, x1
0053f45f8 	mov	x21, x0
0053f45fc 	add	x0, sp, #32
0053f4600 	bl	#-19758148 ; -> 0x411c9bc
0053f4604 	b	#32 ; -> 0x53f4624
0053f4608 	mov	x22, x1
0053f460c 	mov	x21, x0
0053f4610 	b	#20 ; -> 0x53f4624
0053f4614 	b	#4 ; -> 0x53f4618
0053f4618 	mov	x22, x1
0053f461c 	mov	x21, x0
0053f4620 	mov	x20, xzr
0053f4624 	cmp	w22, #1
0053f4628 	b.ne	#36 ; -> 0x53f464c
0053f462c 	mov	x0, x21
0053f4630 	bl	#77034064 ; -> 0x9d6b880
0053f4634 	ldr	x8, [x0]
0053f4638 	str	x8, [sp, #48]
0053f463c 	bl	#77034068 ; -> 0x9d6b890
0053f4640 	mov	w23, wzr
0053f4644 	b	#-552 ; -> 0x53f441c
0053f4648 	mov	x21, x0
0053f464c 	add	x0, sp, #48
0053f4650 	bl	#-19758228 ; -> 0x411c9bc
0053f4654 	mov	x0, x21
0053f4658 	bl	#-13903420 ; -> 0x46b201c
0053f465c 	bl	#-19758588 ; -> 0x411c860
