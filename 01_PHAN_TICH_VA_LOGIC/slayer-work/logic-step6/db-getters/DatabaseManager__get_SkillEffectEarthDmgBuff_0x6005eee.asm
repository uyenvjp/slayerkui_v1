004d5137c 	sub	sp, sp, #176
004d51380 	stp	x30, x23, [sp, #128]
004d51384 	stp	x22, x21, [sp, #144]
004d51388 	stp	x20, x19, [sp, #160]
004d5138c 	adrp	x21, #99102720 ; -> 0xabd4000 
004d51390 	mov	x20, x0
004d51394 	mov	x19, x8
004d51398 	ldrb	w9, [x21, #2883]
004d5139c 	tbnz	w9, #0, #84 ; -> 0x4d513f0 
004d513a0 	adrp	x0, #90800128 ; -> 0xa3e9000 
004d513a4 	ldr	x0, [x0, #1384]
004d513a8 	bl	#-8128840 ; -> 0x4590a60 
004d513ac 	adrp	x0, #91033600 ; -> 0xa422000 
004d513b0 	ldr	x0, [x0, #2408]
004d513b4 	bl	#-8128852 ; -> 0x4590a60 
004d513b8 	adrp	x0, #91033600 ; -> 0xa422000 
004d513bc 	ldr	x0, [x0, #2416]
004d513c0 	bl	#-8128864 ; -> 0x4590a60 
004d513c4 	adrp	x0, #91033600 ; -> 0xa422000 
004d513c8 	ldr	x0, [x0, #2424]
004d513cc 	bl	#-8128876 ; -> 0x4590a60 
004d513d0 	adrp	x0, #91033600 ; -> 0xa422000 
004d513d4 	ldr	x0, [x0, #2432]
004d513d8 	bl	#-8128888 ; -> 0x4590a60 
004d513dc 	adrp	x0, #91033600 ; -> 0xa422000 
004d513e0 	ldr	x0, [x0, #2440]
004d513e4 	bl	#-8128900 ; -> 0x4590a60 
004d513e8 	mov	w8, #1
004d513ec 	strb	w8, [x21, #2883]
004d513f0 	movi	v0.2d, #0000000000000000
004d513f4 	mov	w0, #27330
004d513f8 	mov	x1, xzr
004d513fc 	str	xzr, [sp, #112]
004d51400 	stp	q0, q0, [sp, #80]
004d51404 	bl	#-1089120 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d51408 	tbz	w0, #0, #44 ; -> 0x4d51434 
004d5140c 	mov	w0, #27330
004d51410 	mov	x1, xzr
004d51414 	bl	#-1088956 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d51418 	cbz	x0, #236 ; -> 0x4d51504 
004d5141c 	add	x8, sp, #8
004d51420 	mov	x1, x20
004d51424 	mov	x2, xzr
004d51428 	bl	#-1885288 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d5142c 	add	x1, sp, #8
004d51430 	b	#180 ; -> 0x4d514e4 
004d51434 	movi	d0, #0000000000000000
004d51438 	adrp	x21, #90800128 ; -> 0xa3e9000 
004d5143c 	mov	w22, #13520
004d51440 	ldr	x21, [x21, #1384]
004d51444 	add	x0, x20, x22
004d51448 	mov	x1, xzr
004d5144c 	bl	#-2095252 ; -> 0x4b51bb8 SilentFloat::set_Value
004d51450 	ldr	x0, [x21]
004d51454 	ldr	w8, [x0, #228]
004d51458 	cbnz	w8, #12 ; -> 0x4d51464 
004d5145c 	bl	#-8128636 ; -> 0x4590be0 
004d51460 	ldr	x0, [x21]
004d51464 	ldr	x8, [x0, #184]
004d51468 	ldr	x0, [x8, #192]
004d5146c 	cbz	x0, #152 ; -> 0x4d51504 
004d51470 	adrp	x8, #91033600 ; -> 0xa422000 
004d51474 	add	x23, sp, #80
004d51478 	ldr	x8, [x8, #2408]
004d5147c 	ldr	x1, [x8]
004d51480 	add	x8, sp, #80
004d51484 	bl	#55234840 ; -> 0x81fe59c 
004d51488 	adrp	x21, #91033600 ; -> 0xa422000 
004d5148c 	ldr	x21, [x21, #2424]
004d51490 	stp	xzr, x23, [sp, #8]
004d51494 	ldr	x1, [x21]
004d51498 	add	x0, sp, #80
004d5149c 	bl	#24220776 ; -> 0x646a904 
004d514a0 	tbz	w0, #0, #44 ; -> 0x4d514cc 
004d514a4 	ldr	x23, [sp, #104]
004d514a8 	add	x0, x20, x22
004d514ac 	mov	x1, xzr
004d514b0 	bl	#-2096572 ; -> 0x4b516f4 SilentFloat::get_Value
004d514b4 	fmov	s1, w23
004d514b8 	fadd	s0, s0, s1
004d514bc 	add	x0, x20, x22
004d514c0 	mov	x1, xzr
004d514c4 	bl	#-2095372 ; -> 0x4b51bb8 SilentFloat::set_Value
004d514c8 	b	#-52 ; -> 0x4d51494 
004d514cc 	adrp	x8, #91033600 ; -> 0xa422000 
004d514d0 	add	x0, sp, #80
004d514d4 	ldr	x8, [x8, #2416]
004d514d8 	ldr	x1, [x8]
004d514dc 	bl	#24221012 ; -> 0x646aa30 
004d514e0 	add	x1, x20, x22
004d514e4 	mov	x0, x19
004d514e8 	mov	w2, #72
004d514ec 	bl	#83993604 ; -> 0x9d6b8f0 
004d514f0 	ldp	x20, x19, [sp, #160]
004d514f4 	ldp	x22, x21, [sp, #144]
004d514f8 	ldp	x30, x23, [sp, #128]
004d514fc 	add	sp, sp, #176
004d51500 	ret
004d51504 	bl	#-8128504 ; -> 0x4590d0c 
004d51508 	b	#8 ; -> 0x4d51510 
004d5150c 	b	#4 ; -> 0x4d51510 
004d51510 	mov	x21, x0
004d51514 	cmp	w1, #1
004d51518 	b.ne	#60 ; -> 0x4d51554 
004d5151c 	mov	x0, x21
004d51520 	bl	#83993440 ; -> 0x9d6b880 
004d51524 	ldr	x21, [x0]
004d51528 	str	x21, [sp, #8]
004d5152c 	bl	#83993444 ; -> 0x9d6b890 
004d51530 	adrp	x8, #91033600 ; -> 0xa422000 
004d51534 	ldr	x8, [x8, #2416]
004d51538 	ldr	x0, [sp, #16]
004d5153c 	ldr	x1, [x8]
004d51540 	bl	#24220912 ; -> 0x646aa30 
004d51544 	cbz	x21, #-100 ; -> 0x4d514e0 
004d51548 	mov	x0, x21
004d5154c 	bl	#-8128584 ; -> 0x4590d04 
004d51550 	mov	x21, x0
004d51554 	add	x0, sp, #8
004d51558 	bl	#-12763744 ; -> 0x41252f8 
004d5155c 	mov	x0, x21
004d51560 	bl	#-6944068 ; -> 0x46b201c 
004d51564 	bl	#-12799236 ; -> 0x411c860 
