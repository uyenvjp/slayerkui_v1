004ef6160 	sub	sp, sp, #256
004ef6164 	str	x30, [sp, #192]
004ef6168 	stp	x24, x23, [sp, #208]
004ef616c 	stp	x22, x21, [sp, #224]
004ef6170 	stp	x20, x19, [sp, #240]
004ef6174 	adrp	x20, #97382400 ; -> 0xabd5000 
004ef6178 	mov	x19, x0
004ef617c 	ldrb	w8, [x20, #1480]
004ef6180 	tbnz	w8, #0, #156 ; -> 0x4ef621c 
004ef6184 	adrp	x0, #89075712 ; -> 0xa3e9000 
004ef6188 	ldr	x0, [x0, #1144]
004ef618c 	bl	#-9852716 ; -> 0x4590a60 
004ef6190 	adrp	x0, #89284608 ; -> 0xa41c000 
004ef6194 	ldr	x0, [x0, #736]
004ef6198 	bl	#-9852728 ; -> 0x4590a60 
004ef619c 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef61a0 	ldr	x0, [x0, #2512]
004ef61a4 	bl	#-9852740 ; -> 0x4590a60 
004ef61a8 	adrp	x0, #89124864 ; -> 0xa3f5000 
004ef61ac 	ldr	x0, [x0, #3904]
004ef61b0 	bl	#-9852752 ; -> 0x4590a60 
004ef61b4 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef61b8 	ldr	x0, [x0, #2520]
004ef61bc 	bl	#-9852764 ; -> 0x4590a60 
004ef61c0 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef61c4 	ldr	x0, [x0, #2528]
004ef61c8 	bl	#-9852776 ; -> 0x4590a60 
004ef61cc 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef61d0 	ldr	x0, [x0, #2536]
004ef61d4 	bl	#-9852788 ; -> 0x4590a60 
004ef61d8 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef61dc 	ldr	x0, [x0, #2544]
004ef61e0 	bl	#-9852800 ; -> 0x4590a60 
004ef61e4 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef61e8 	ldr	x0, [x0, #2552]
004ef61ec 	bl	#-9852812 ; -> 0x4590a60 
004ef61f0 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef61f4 	ldr	x0, [x0, #2560]
004ef61f8 	bl	#-9852824 ; -> 0x4590a60 
004ef61fc 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef6200 	ldr	x0, [x0, #2568]
004ef6204 	bl	#-9852836 ; -> 0x4590a60 
004ef6208 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef620c 	ldr	x0, [x0, #2576]
004ef6210 	bl	#-9852848 ; -> 0x4590a60 
004ef6214 	mov	w8, #1
004ef6218 	strb	w8, [x20, #1480]
004ef621c 	movi	v0.2d, #0000000000000000
004ef6220 	mov	w0, #31563
004ef6224 	mov	x1, xzr
004ef6228 	stp	xzr, xzr, [sp, #96]
004ef622c 	str	xzr, [sp, #112]
004ef6230 	stp	xzr, xzr, [sp, #64]
004ef6234 	str	xzr, [sp, #80]
004ef6238 	stp	q0, q0, [sp]
004ef623c 	stp	q0, q0, [sp, #32]
004ef6240 	bl	#-2813084 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef6244 	tbz	w0, #0, #52 ; -> 0x4ef6278 
004ef6248 	mov	w0, #31563
004ef624c 	mov	x1, xzr
004ef6250 	bl	#-2812920 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef6254 	cbz	x0, #712 ; -> 0x4ef651c 
004ef6258 	mov	x1, x19
004ef625c 	ldp	x20, x19, [sp, #240]
004ef6260 	ldp	x22, x21, [sp, #224]
004ef6264 	mov	x2, xzr
004ef6268 	ldp	x24, x23, [sp, #208]
004ef626c 	ldr	x30, [sp, #192]
004ef6270 	add	sp, sp, #256
004ef6274 	b	#-3632704 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
004ef6278 	add	x0, x19, #2120
004ef627c 	mov	x1, xzr
004ef6280 	bl	#-3820428 ; -> 0x4b516f4 SilentFloat::get_Value
004ef6284 	fabs	s0, s0
004ef6288 	adrp	x8, #-50122752 ; -> 0x1f29000 
004ef628c 	ldr	s1, [x8, #2272]
004ef6290 	fcmp	s0, s1
004ef6294 	b.pl	#612 ; -> 0x4ef64f8 
004ef6298 	adrp	x8, #89124864 ; -> 0xa3f5000 
004ef629c 	ldr	x8, [x8, #3904]
004ef62a0 	ldr	x8, [x8]
004ef62a4 	ldr	x8, [x8, #184]
004ef62a8 	ldr	x8, [x8]
004ef62ac 	cbz	x8, #624 ; -> 0x4ef651c 
004ef62b0 	adrp	x9, #89346048 ; -> 0xa42b000 
004ef62b4 	ldr	x9, [x9, #2576]
004ef62b8 	ldr	x0, [x8, #360]
004ef62bc 	ldr	x1, [x9]
004ef62c0 	bl	#20273244 ; -> 0x624bb1c 
004ef62c4 	adrp	x24, #89346048 ; -> 0xa42b000 
004ef62c8 	mov	x20, x0
004ef62cc 	mov	x21, x1
004ef62d0 	ldr	x24, [x24, #2544]
004ef62d4 	ldr	x0, [x24]
004ef62d8 	ldr	w8, [x0, #228]
004ef62dc 	cbnz	w8, #12 ; -> 0x4ef62e8 
004ef62e0 	bl	#-9852672 ; -> 0x4590be0 
004ef62e4 	ldr	x0, [x24]
004ef62e8 	ldr	x8, [x0, #184]
004ef62ec 	ldr	x22, [x8, #8]
004ef62f0 	cbnz	x22, #92 ; -> 0x4ef634c 
004ef62f4 	ldr	w9, [x0, #228]
004ef62f8 	cbnz	w9, #16 ; -> 0x4ef6308 
004ef62fc 	bl	#-9852700 ; -> 0x4590be0 
004ef6300 	ldr	x8, [x24]
004ef6304 	ldr	x8, [x8, #184]
004ef6308 	adrp	x9, #89284608 ; -> 0xa41c000 
004ef630c 	ldr	x9, [x9, #736]
004ef6310 	ldr	x23, [x8]
004ef6314 	ldr	x0, [x9]
004ef6318 	bl	#-9852444 ; -> 0x4590cfc 
004ef631c 	adrp	x8, #89346048 ; -> 0xa42b000 
004ef6320 	mov	x1, x23
004ef6324 	mov	x3, xzr
004ef6328 	ldr	x8, [x8, #2520]
004ef632c 	mov	x22, x0
004ef6330 	ldr	x2, [x8]
004ef6334 	bl	#25453564 ; -> 0x673c730 
004ef6338 	ldr	x8, [x24]
004ef633c 	mov	x1, x22
004ef6340 	ldr	x0, [x8, #184]
004ef6344 	str	x22, [x0, #8]!
004ef6348 	bl	#-9853252 ; -> 0x4590a04 
004ef634c 	adrp	x8, #89346048 ; -> 0xa42b000 
004ef6350 	mov	x0, x20
004ef6354 	mov	x1, x21
004ef6358 	ldr	x8, [x8, #2568]
004ef635c 	mov	x2, x22
004ef6360 	ldr	x3, [x8]
004ef6364 	add	x8, sp, #160
004ef6368 	bl	#20423520 ; -> 0x62706c8 
004ef636c 	ldr	x0, [x24]
004ef6370 	ldr	w8, [x0, #228]
004ef6374 	cbnz	w8, #12 ; -> 0x4ef6380 
004ef6378 	bl	#-9852824 ; -> 0x4590be0 
004ef637c 	ldr	x0, [x24]
004ef6380 	ldr	x8, [x0, #184]
004ef6384 	ldr	x20, [x8, #16]
004ef6388 	cbz	x20, #16 ; -> 0x4ef6398 
004ef638c 	ldr	q0, [sp, #160]
004ef6390 	ldr	x8, [sp, #176]
004ef6394 	b	#116 ; -> 0x4ef6408 
004ef6398 	ldr	q0, [sp, #160]
004ef639c 	ldr	x9, [sp, #176]
004ef63a0 	ldr	w10, [x0, #228]
004ef63a4 	str	q0, [sp, #64]
004ef63a8 	str	x9, [sp, #80]
004ef63ac 	cbnz	w10, #16 ; -> 0x4ef63bc 
004ef63b0 	bl	#-9852880 ; -> 0x4590be0 
004ef63b4 	ldr	x8, [x24]
004ef63b8 	ldr	x8, [x8, #184]
004ef63bc 	adrp	x9, #89346048 ; -> 0xa42b000 
004ef63c0 	ldr	x9, [x9, #2512]
004ef63c4 	ldr	x21, [x8]
004ef63c8 	ldr	x0, [x9]
004ef63cc 	bl	#-9852624 ; -> 0x4590cfc 
004ef63d0 	adrp	x8, #89346048 ; -> 0xa42b000 
004ef63d4 	mov	x1, x21
004ef63d8 	mov	x3, xzr
004ef63dc 	ldr	x8, [x8, #2528]
004ef63e0 	mov	x20, x0
004ef63e4 	ldr	x2, [x8]
004ef63e8 	bl	#25459916 ; -> 0x673e0b4 
004ef63ec 	ldr	x8, [x24]
004ef63f0 	mov	x1, x20
004ef63f4 	ldr	x0, [x8, #184]
004ef63f8 	str	x20, [x0, #16]!
004ef63fc 	bl	#-9853432 ; -> 0x4590a04 
004ef6400 	ldr	q0, [sp, #64]
004ef6404 	ldr	x8, [sp, #80]
004ef6408 	str	q0, [sp, #96]
004ef640c 	add	x0, sp, #128
004ef6410 	mov	x1, x20
004ef6414 	str	x8, [sp, #112]
004ef6418 	adrp	x8, #89346048 ; -> 0xa42b000 
004ef641c 	ldr	q0, [sp, #96]
004ef6420 	ldr	x8, [x8, #2552]
004ef6424 	ldr	x9, [sp, #112]
004ef6428 	str	q0, [sp, #128]
004ef642c 	ldr	x2, [x8]
004ef6430 	add	x8, sp, #160
004ef6434 	str	x9, [sp, #144]
004ef6438 	bl	#20318180 ; -> 0x6256c1c 
004ef643c 	ldr	x0, [x24]
004ef6440 	ldr	w8, [x0, #228]
004ef6444 	cbnz	w8, #12 ; -> 0x4ef6450 
004ef6448 	bl	#-9853032 ; -> 0x4590be0 
004ef644c 	ldr	x0, [x24]
004ef6450 	ldr	x8, [x0, #184]
004ef6454 	ldr	x20, [x8, #24]
004ef6458 	cbz	x20, #12 ; -> 0x4ef6464 
004ef645c 	ldp	q0, q1, [sp, #160]
004ef6460 	b	#104 ; -> 0x4ef64c8 
004ef6464 	ldp	q0, q1, [sp, #160]
004ef6468 	ldr	w9, [x0, #228]
004ef646c 	stp	q0, q1, [sp]
004ef6470 	cbnz	w9, #16 ; -> 0x4ef6480 
004ef6474 	bl	#-9853076 ; -> 0x4590be0 
004ef6478 	ldr	x8, [x24]
004ef647c 	ldr	x8, [x8, #184]
004ef6480 	adrp	x9, #89075712 ; -> 0xa3e9000 
004ef6484 	ldr	x9, [x9, #1144]
004ef6488 	ldr	x21, [x8]
004ef648c 	ldr	x0, [x9]
004ef6490 	bl	#-9852820 ; -> 0x4590cfc 
004ef6494 	adrp	x8, #89346048 ; -> 0xa42b000 
004ef6498 	mov	x1, x21
004ef649c 	mov	x3, xzr
004ef64a0 	ldr	x8, [x8, #2536]
004ef64a4 	mov	x20, x0
004ef64a8 	ldr	x2, [x8]
004ef64ac 	bl	#25465880 ; -> 0x673f8c4 
004ef64b0 	ldr	x8, [x24]
004ef64b4 	mov	x1, x20
004ef64b8 	ldr	x0, [x8, #184]
004ef64bc 	str	x20, [x0, #24]!
004ef64c0 	bl	#-9853628 ; -> 0x4590a04 
004ef64c4 	ldp	q0, q1, [sp]
004ef64c8 	stp	q0, q1, [sp, #32]
004ef64cc 	adrp	x8, #89346048 ; -> 0xa42b000 
004ef64d0 	add	x0, sp, #160
004ef64d4 	ldr	x8, [x8, #2560]
004ef64d8 	ldp	q0, q1, [sp, #32]
004ef64dc 	mov	x1, x20
004ef64e0 	ldr	x2, [x8]
004ef64e4 	stp	q0, q1, [sp, #160]
004ef64e8 	bl	#20347128 ; -> 0x625dde0 
004ef64ec 	add	x0, x19, #2120
004ef64f0 	mov	x1, xzr
004ef64f4 	bl	#-3819836 ; -> 0x4b51bb8 SilentFloat::set_Value
004ef64f8 	add	x0, x19, #2120
004ef64fc 	mov	x1, xzr
004ef6500 	bl	#-3821068 ; -> 0x4b516f4 SilentFloat::get_Value
004ef6504 	ldp	x20, x19, [sp, #240]
004ef6508 	ldr	x30, [sp, #192]
004ef650c 	ldp	x22, x21, [sp, #224]
004ef6510 	ldp	x24, x23, [sp, #208]
004ef6514 	add	sp, sp, #256
004ef6518 	ret
004ef651c 	bl	#-9852944 ; -> 0x4590d0c 
