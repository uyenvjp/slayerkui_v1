004eb1220 	str	d8, [sp, #-64]!
004eb1224 	stp	x30, x23, [sp, #16]
004eb1228 	stp	x22, x21, [sp, #32]
004eb122c 	stp	x20, x19, [sp, #48]
004eb1230 	adrp	x23, #97665024 ; -> 0xabd5000 
004eb1234 	mov	x20, x3
004eb1238 	mov	x19, x2
004eb123c 	ldrb	w8, [x23, #1035]
004eb1240 	mov	x22, x1
004eb1244 	mov	x21, x0
004eb1248 	tbnz	w8, #0, #36 ; -> 0x4eb126c 
004eb124c 	adrp	x0, #89358336 ; -> 0xa3e9000 
004eb1250 	ldr	x0, [x0, #3552]
004eb1254 	bl	#-9570292 ; -> 0x4590a60 
004eb1258 	adrp	x0, #89350144 ; -> 0xa3e7000 
004eb125c 	ldr	x0, [x0, #1192]
004eb1260 	bl	#-9570304 ; -> 0x4590a60 
004eb1264 	mov	w8, #1
004eb1268 	strb	w8, [x23, #1035]
004eb126c 	mov	w0, #32483
004eb1270 	mov	x1, xzr
004eb1274 	bl	#-2530512 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eb1278 	tbz	w0, #0, #56 ; -> 0x4eb12b0 
004eb127c 	mov	w0, #32483
004eb1280 	mov	x1, xzr
004eb1284 	bl	#-2530348 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eb1288 	cbz	x0, #508 ; -> 0x4eb1484 
004eb128c 	mov	x1, x21
004eb1290 	mov	x2, x22
004eb1294 	mov	x3, x19
004eb1298 	mov	x4, x20
004eb129c 	mov	x5, xzr
004eb12a0 	bl	#-2921612 ; -> 0x4be7e14 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2068
004eb12a4 	mov	x19, x0
004eb12a8 	mov	x20, x1
004eb12ac 	b	#444 ; -> 0x4eb1468 
004eb12b0 	adrp	x8, #89350144 ; -> 0xa3e7000 
004eb12b4 	ldr	x8, [x8, #1192]
004eb12b8 	ldr	x0, [x8]
004eb12bc 	ldr	w8, [x0, #228]
004eb12c0 	cbnz	w8, #8 ; -> 0x4eb12c8 
004eb12c4 	bl	#-9570020 ; -> 0x4590be0 
004eb12c8 	mov	x0, x22
004eb12cc 	mov	x1, xzr
004eb12d0 	mov	x2, xzr
004eb12d4 	bl	#78986428 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
004eb12d8 	tbnz	w0, #0, #400 ; -> 0x4eb1468 
004eb12dc 	cbz	x22, #424 ; -> 0x4eb1484 
004eb12e0 	ldr	x8, [x22, #32]
004eb12e4 	cbz	x8, #388 ; -> 0x4eb1468 
004eb12e8 	ldr	w9, [x8, #140]
004eb12ec 	cmp	w9, #11
004eb12f0 	b.hi	#200 ; -> 0x4eb13b8 
004eb12f4 	mov	w10, #1
004eb12f8 	lsl	w9, w10, w9
004eb12fc 	mov	w10, #2148
004eb1300 	tst	w9, w10
004eb1304 	b.eq	#180 ; -> 0x4eb13b8 
004eb1308 	ldr	s8, [x21, #60]
004eb130c 	fcmp	s8, #0.0
004eb1310 	b.le	#168 ; -> 0x4eb13b8 
004eb1314 	adrp	x8, #89358336 ; -> 0xa3e9000 
004eb1318 	ldr	x8, [x8, #3552]
004eb131c 	ldr	x0, [x8]
004eb1320 	ldr	w8, [x0, #228]
004eb1324 	cbnz	w8, #8 ; -> 0x4eb132c 
004eb1328 	bl	#-9570120 ; -> 0x4590be0 
004eb132c 	mov	w8, #-1027080192
004eb1330 	mov	x1, xzr
004eb1334 	fmov	s0, w8
004eb1338 	adrp	x8, #-49840128 ; -> 0x1f29000 
004eb133c 	ldr	s1, [x8, #2416]
004eb1340 	mov	w8, #2139095040
004eb1344 	fmul	s0, s8, s0
004eb1348 	fadd	s0, s0, s1
004eb134c 	fmov	s1, w8
004eb1350 	mov	x8, #-9223372036854775808
004eb1354 	fcvtzs	x9, s0
004eb1358 	fcmp	s0, s1
004eb135c 	csel	x0, x8, x9, eq
004eb1360 	bl	#70038972 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eb1364 	mov	x2, x0
004eb1368 	mov	x3, x1
004eb136c 	mov	x0, x19
004eb1370 	mov	x1, x20
004eb1374 	mov	x4, xzr
004eb1378 	bl	#70030540 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eb137c 	mov	x19, x0
004eb1380 	mov	x20, x1
004eb1384 	mov	w0, #10000
004eb1388 	mov	x1, xzr
004eb138c 	bl	#70040600 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eb1390 	mov	x2, x0
004eb1394 	mov	x3, x1
004eb1398 	mov	x0, x19
004eb139c 	mov	x1, x20
004eb13a0 	mov	x4, xzr
004eb13a4 	bl	#70030996 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eb13a8 	ldr	x8, [x22, #32]
004eb13ac 	cbz	x8, #216 ; -> 0x4eb1484 
004eb13b0 	mov	x19, x0
004eb13b4 	mov	x20, x1
004eb13b8 	ldr	w8, [x8, #140]
004eb13bc 	cmp	w8, #4
004eb13c0 	b.ne	#168 ; -> 0x4eb1468 
004eb13c4 	ldr	s8, [x21, #64]
004eb13c8 	fcmp	s8, #0.0
004eb13cc 	b.le	#156 ; -> 0x4eb1468 
004eb13d0 	adrp	x8, #89358336 ; -> 0xa3e9000 
004eb13d4 	ldr	x8, [x8, #3552]
004eb13d8 	ldr	x0, [x8]
004eb13dc 	ldr	w8, [x0, #228]
004eb13e0 	cbnz	w8, #8 ; -> 0x4eb13e8 
004eb13e4 	bl	#-9570308 ; -> 0x4590be0 
004eb13e8 	mov	w8, #-1027080192
004eb13ec 	mov	x1, xzr
004eb13f0 	fmov	s0, w8
004eb13f4 	adrp	x8, #-49840128 ; -> 0x1f29000 
004eb13f8 	ldr	s1, [x8, #2416]
004eb13fc 	mov	w8, #2139095040
004eb1400 	fmul	s0, s8, s0
004eb1404 	fadd	s0, s0, s1
004eb1408 	fmov	s1, w8
004eb140c 	mov	x8, #-9223372036854775808
004eb1410 	fcvtzs	x9, s0
004eb1414 	fcmp	s0, s1
004eb1418 	csel	x0, x8, x9, eq
004eb141c 	bl	#70038784 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eb1420 	mov	x2, x0
004eb1424 	mov	x3, x1
004eb1428 	mov	x0, x19
004eb142c 	mov	x1, x20
004eb1430 	mov	x4, xzr
004eb1434 	bl	#70030352 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eb1438 	mov	x19, x0
004eb143c 	mov	x20, x1
004eb1440 	mov	w0, #10000
004eb1444 	mov	x1, xzr
004eb1448 	bl	#70040412 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eb144c 	mov	x2, x0
004eb1450 	mov	x3, x1
004eb1454 	mov	x0, x19
004eb1458 	mov	x1, x20
004eb145c 	mov	x4, xzr
004eb1460 	bl	#70030808 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eb1464 	b	#-448 ; -> 0x4eb12a4 
004eb1468 	mov	x0, x19
004eb146c 	mov	x1, x20
004eb1470 	ldp	x20, x19, [sp, #48]
004eb1474 	ldp	x22, x21, [sp, #32]
004eb1478 	ldp	x30, x23, [sp, #16]
004eb147c 	ldr	d8, [sp], #64
004eb1480 	ret
004eb1484 	bl	#-9570168 ; -> 0x4590d0c 
