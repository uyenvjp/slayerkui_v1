004ef11dc 	stp	d11, d10, [sp, #-128]!
004ef11e0 	stp	d9, d8, [sp, #16]
004ef11e4 	str	x29, [sp, #32]
004ef11e8 	stp	x30, x27, [sp, #48]
004ef11ec 	stp	x26, x25, [sp, #64]
004ef11f0 	stp	x24, x23, [sp, #80]
004ef11f4 	stp	x22, x21, [sp, #96]
004ef11f8 	stp	x20, x19, [sp, #112]
004ef11fc 	sub	sp, sp, #880
004ef1200 	mrs	x24, TPIDR_EL0
004ef1204 	adrp	x20, #97402880 ; -> 0xabd5000 
004ef1208 	mov	x19, x0
004ef120c 	ldr	x8, [x24, #40]
004ef1210 	add	x25, sp, #704
004ef1214 	str	x8, [sp, #872]
004ef1218 	ldrb	w8, [x20, #1449]
004ef121c 	tbnz	w8, #0, #84 ; -> 0x4ef1270 
004ef1220 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef1224 	ldr	x0, [x0, #2352]
004ef1228 	bl	#-9832392 ; -> 0x4590a60 
004ef122c 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef1230 	ldr	x0, [x0, #2360]
004ef1234 	bl	#-9832404 ; -> 0x4590a60 
004ef1238 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef123c 	ldr	x0, [x0, #2368]
004ef1240 	bl	#-9832416 ; -> 0x4590a60 
004ef1244 	adrp	x0, #89112576 ; -> 0xa3ed000 
004ef1248 	ldr	x0, [x0, #3016]
004ef124c 	bl	#-9832428 ; -> 0x4590a60 
004ef1250 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef1254 	ldr	x0, [x0, #2376]
004ef1258 	bl	#-9832440 ; -> 0x4590a60 
004ef125c 	adrp	x0, #89124864 ; -> 0xa3f0000 
004ef1260 	ldr	x0, [x0, #1296]
004ef1264 	bl	#-9832452 ; -> 0x4590a60 
004ef1268 	mov	w8, #1
004ef126c 	strb	w8, [x20, #1449]
004ef1270 	movi	v0.2d, #0000000000000000
004ef1274 	mov	w0, #2375
004ef1278 	mov	x1, xzr
004ef127c 	stur	q0, [x25, #143]
004ef1280 	stp	q0, q0, [x25]
004ef1284 	stp	q0, q0, [x25, #80]
004ef1288 	stp	q0, q0, [x25, #112]
004ef128c 	stur	q0, [x25, #63]
004ef1290 	stp	q0, q0, [x25, #32]
004ef1294 	bl	#-2792688 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef1298 	tbz	w0, #0, #84 ; -> 0x4ef12ec 
004ef129c 	mov	w0, #2375
004ef12a0 	mov	x1, xzr
004ef12a4 	bl	#-2792524 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef12a8 	cbz	x0, #836 ; -> 0x4ef15ec 
004ef12ac 	ldr	x8, [x24, #40]
004ef12b0 	ldr	x9, [sp, #872]
004ef12b4 	cmp	x8, x9
004ef12b8 	b.ne	#840 ; -> 0x4ef1600 
004ef12bc 	mov	x1, x19
004ef12c0 	mov	x2, xzr
004ef12c4 	add	sp, sp, #880
004ef12c8 	ldp	x20, x19, [sp, #112]
004ef12cc 	ldr	x29, [sp, #32]
004ef12d0 	ldp	x22, x21, [sp, #96]
004ef12d4 	ldp	x24, x23, [sp, #80]
004ef12d8 	ldp	x26, x25, [sp, #64]
004ef12dc 	ldp	x30, x27, [sp, #48]
004ef12e0 	ldp	d9, d8, [sp, #16]
004ef12e4 	ldp	d11, d10, [sp], #128
004ef12e8 	b	#-3598312 ; -> 0x4b82b00 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_91
004ef12ec 	ldr	x8, [x19, #312]
004ef12f0 	cbz	x8, #764 ; -> 0x4ef15ec 
004ef12f4 	mov	w9, #9880
004ef12f8 	add	x0, sp, #560
004ef12fc 	mov	w2, #72
004ef1300 	add	x1, x8, x9
004ef1304 	bl	#82290156 ; -> 0x9d6b8f0 
004ef1308 	add	x0, sp, #560
004ef130c 	mov	x1, xzr
004ef1310 	bl	#-3798504 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef1314 	ldr	x8, [x19, #312]
004ef1318 	cbz	x8, #724 ; -> 0x4ef15ec 
004ef131c 	mov	w9, #9160
004ef1320 	fmov	s8, s0
004ef1324 	add	x26, sp, #80
004ef1328 	add	x8, x8, x9
004ef132c 	add	x0, sp, #496
004ef1330 	mov	x1, xzr
004ef1334 	ldp	q0, q1, [x8]
004ef1338 	stp	q0, q1, [x26, #416]
004ef133c 	ldp	q0, q2, [x8, #32]
004ef1340 	stp	q0, q2, [x26, #448]
004ef1344 	bl	#-3796980 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1348 	ldr	x8, [x19, #312]
004ef134c 	cbz	x8, #672 ; -> 0x4ef15ec 
004ef1350 	mov	w9, #8384
004ef1354 	mov	w20, w0
004ef1358 	add	x0, sp, #424
004ef135c 	add	x1, x8, x9
004ef1360 	mov	w2, #72
004ef1364 	bl	#82290060 ; -> 0x9d6b8f0 
004ef1368 	add	x0, sp, #424
004ef136c 	mov	x1, xzr
004ef1370 	bl	#-3798600 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef1374 	ldr	x8, [x19, #312]
004ef1378 	cbz	x8, #628 ; -> 0x4ef15ec 
004ef137c 	mov	w9, #5576
004ef1380 	add	x0, sp, #352
004ef1384 	mov	w2, #72
004ef1388 	add	x1, x8, x9
004ef138c 	fmov	s9, s0
004ef1390 	bl	#82290016 ; -> 0x9d6b8f0 
004ef1394 	add	x0, sp, #352
004ef1398 	mov	x1, xzr
004ef139c 	bl	#-3798644 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef13a0 	ldr	x8, [x19, #312]
004ef13a4 	cbz	x8, #584 ; -> 0x4ef15ec 
004ef13a8 	fmov	s10, s0
004ef13ac 	ldr	q0, [x8, #17008]
004ef13b0 	ldr	q1, [x8, #17024]
004ef13b4 	ldr	q2, [x8, #17040]
004ef13b8 	add	x0, sp, #288
004ef13bc 	mov	x1, xzr
004ef13c0 	stp	q0, q1, [x26, #208]
004ef13c4 	ldr	q0, [x8, #17056]
004ef13c8 	stp	q2, q0, [x26, #240]
004ef13cc 	bl	#-3797116 ; -> 0x4b52350 SilentInt::op_Implicit
004ef13d0 	ldr	x8, [x19, #312]
004ef13d4 	cbz	x8, #536 ; -> 0x4ef15ec 
004ef13d8 	ldr	q0, [x8, #18000]
004ef13dc 	ldr	q1, [x8, #18016]
004ef13e0 	mov	w21, w0
004ef13e4 	ldr	q2, [x8, #18032]
004ef13e8 	add	x0, sp, #224
004ef13ec 	mov	x1, xzr
004ef13f0 	stp	q0, q1, [x26, #144]
004ef13f4 	ldr	q0, [x8, #18048]
004ef13f8 	stp	q2, q0, [x26, #176]
004ef13fc 	bl	#-3797164 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1400 	ldr	x8, [x19, #312]
004ef1404 	cbz	x8, #488 ; -> 0x4ef15ec 
004ef1408 	mov	w9, #20696
004ef140c 	mov	w22, w0
004ef1410 	add	x0, sp, #160
004ef1414 	add	x8, x8, x9
004ef1418 	mov	x1, xzr
004ef141c 	ldp	q0, q1, [x8]
004ef1420 	stp	q0, q1, [x26, #80]
004ef1424 	ldp	q0, q2, [x8, #32]
004ef1428 	stp	q0, q2, [x26, #112]
004ef142c 	bl	#-3797212 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1430 	adrp	x27, #97378304 ; -> 0xabcf000 
004ef1434 	mov	w23, w0
004ef1438 	ldrb	w8, [x27, #636]
004ef143c 	cbnz	w8, #24 ; -> 0x4ef1454 
004ef1440 	adrp	x0, #89120768 ; -> 0xa3ef000 
004ef1444 	ldr	x0, [x0, #3328]
004ef1448 	bl	#-9832936 ; -> 0x4590a60 
004ef144c 	mov	w8, #1
004ef1450 	strb	w8, [x27, #636]
004ef1454 	adrp	x8, #89120768 ; -> 0xa3ef000 
004ef1458 	ldr	x8, [x8, #3328]
004ef145c 	ldr	x8, [x8]
004ef1460 	ldr	x8, [x8, #184]
004ef1464 	ldr	x8, [x8]
004ef1468 	cbz	x8, #264 ; -> 0x4ef1570 
004ef146c 	ldr	x8, [x8, #104]
004ef1470 	cbz	x8, #380 ; -> 0x4ef15ec 
004ef1474 	add	x0, sp, #632
004ef1478 	add	x1, x8, #424
004ef147c 	mov	w2, #72
004ef1480 	bl	#82289776 ; -> 0x9d6b8f0 
004ef1484 	movi	v0.2d, #0000000000000000
004ef1488 	adrp	x8, #89366528 ; -> 0xa42b000 
004ef148c 	add	x0, sp, #80
004ef1490 	add	x1, sp, #632
004ef1494 	add	x25, sp, #80
004ef1498 	str	q0, [x26, #64]
004ef149c 	ldr	x8, [x8, #2368]
004ef14a0 	stp	q0, q0, [sp, #80]
004ef14a4 	stp	q0, q0, [sp, #112]
004ef14a8 	ldr	x2, [x8]
004ef14ac 	bl	#34274108 ; -> 0x6fa0fe8 
004ef14b0 	ldrb	w26, [sp, #80]
004ef14b4 	add	x0, sp, #704
004ef14b8 	orr	x1, x25, #0x1
004ef14bc 	mov	w2, #79
004ef14c0 	bl	#82289712 ; -> 0x9d6b8f0 
004ef14c4 	add	x0, sp, #784
004ef14c8 	add	x1, sp, #704
004ef14cc 	mov	w2, #79
004ef14d0 	add	x25, sp, #784
004ef14d4 	bl	#82289692 ; -> 0x9d6b8f0 
004ef14d8 	movi	d11, #0000000000000000
004ef14dc 	cbz	w26, #180 ; -> 0x4ef1590 
004ef14e0 	add	x0, sp, #8
004ef14e4 	orr	x1, x25, #0x7
004ef14e8 	mov	w2, #72
004ef14ec 	bl	#82289668 ; -> 0x9d6b8f0 
004ef14f0 	add	x0, sp, #8
004ef14f4 	mov	x1, xzr
004ef14f8 	bl	#-3798992 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef14fc 	adrp	x25, #89112576 ; -> 0xa3ed000 
004ef1500 	add	x0, sp, #80
004ef1504 	ldr	x25, [x25, #3016]
004ef1508 	str	xzr, [sp, #80]
004ef150c 	ldr	x1, [x25]
004ef1510 	bl	#34275288 ; -> 0x6fa14e8 
004ef1514 	ldr	x8, [sp, #80]
004ef1518 	tst	x8, #0xff
004ef151c 	b.eq	#116 ; -> 0x4ef1590 
004ef1520 	scvtf	s0, w20
004ef1524 	scvtf	s1, w21
004ef1528 	lsr	x8, x8, #32
004ef152c 	ldr	x1, [x25]
004ef1530 	add	x0, sp, #80
004ef1534 	str	xzr, [sp, #80]
004ef1538 	fadd	s0, s8, s0
004ef153c 	fadd	s0, s0, s9
004ef1540 	fadd	s0, s0, s10
004ef1544 	fadd	s0, s0, s1
004ef1548 	scvtf	s1, w22
004ef154c 	fadd	s0, s0, s1
004ef1550 	scvtf	s1, w23
004ef1554 	fadd	s0, s0, s1
004ef1558 	fmov	s1, w8
004ef155c 	fadd	s0, s0, s1
004ef1560 	bl	#34275208 ; -> 0x6fa14e8 
004ef1564 	ldr	s0, [sp, #84]
004ef1568 	fcvt	d11, s0
004ef156c 	b	#36 ; -> 0x4ef1590 
004ef1570 	movi	v0.2d, #0000000000000000
004ef1574 	movi	d11, #0000000000000000
004ef1578 	stur	q0, [x25, #63]
004ef157c 	stp	q0, q0, [x25]
004ef1580 	stp	q0, q0, [x25, #32]
004ef1584 	stp	q0, q0, [x25, #80]
004ef1588 	stp	q0, q0, [x25, #112]
004ef158c 	stur	q0, [x25, #143]
004ef1590 	mov	x9, #9218868437227405312
004ef1594 	fcvtzs	w8, d11
004ef1598 	fmov	d0, x9
004ef159c 	mov	w9, #100
004ef15a0 	movk	w9, #32768, lsl #16
004ef15a4 	fcmp	d11, d0
004ef15a8 	add	w8, w8, #100
004ef15ac 	csel	w0, w9, w8, eq
004ef15b0 	str	w0, [x19, #1664]
004ef15b4 	ldr	x8, [x24, #40]
004ef15b8 	ldr	x9, [sp, #872]
004ef15bc 	cmp	x8, x9
004ef15c0 	b.ne	#64 ; -> 0x4ef1600 
004ef15c4 	add	sp, sp, #880
004ef15c8 	ldp	x20, x19, [sp, #112]
004ef15cc 	ldr	x29, [sp, #32]
004ef15d0 	ldp	x22, x21, [sp, #96]
004ef15d4 	ldp	x24, x23, [sp, #80]
004ef15d8 	ldp	x26, x25, [sp, #64]
004ef15dc 	ldp	x30, x27, [sp, #48]
004ef15e0 	ldp	d9, d8, [sp, #16]
004ef15e4 	ldp	d11, d10, [sp], #128
004ef15e8 	ret
004ef15ec 	ldr	x8, [x24, #40]
004ef15f0 	ldr	x9, [sp, #872]
004ef15f4 	cmp	x8, x9
004ef15f8 	b.ne	#8 ; -> 0x4ef1600 
004ef15fc 	bl	#-9832688 ; -> 0x4590d0c 
004ef1600 	bl	#82289472 ; -> 0x9d6b940 
