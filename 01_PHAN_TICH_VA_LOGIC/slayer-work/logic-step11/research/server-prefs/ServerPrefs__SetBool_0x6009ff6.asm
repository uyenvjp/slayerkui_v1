0051f11b4 	sub	sp, sp, #64
0051f11b8 	str	x30, [sp, #16]
0051f11bc 	stp	x22, x21, [sp, #32]
0051f11c0 	stp	x20, x19, [sp, #48]
0051f11c4 	adrp	x21, #94261248 ; -> 0xabd6000 
0051f11c8 	mov	w20, w1
0051f11cc 	mov	x19, x0
0051f11d0 	ldrb	w8, [x21, #3158]
0051f11d4 	strb	w1, [sp, #28]
0051f11d8 	tbnz	w8, #0, #72 ; -> 0x51f1220 
0051f11dc 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f11e0 	ldr	x0, [x0, #144]
0051f11e4 	bl	#-12978052 ; -> 0x4590a60 
0051f11e8 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f11ec 	ldr	x0, [x0, #136]
0051f11f0 	bl	#-12978064 ; -> 0x4590a60 
0051f11f4 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f11f8 	ldr	x0, [x0, #152]
0051f11fc 	bl	#-12978076 ; -> 0x4590a60 
0051f1200 	adrp	x0, #85979136 ; -> 0xa3f0000 
0051f1204 	ldr	x0, [x0, #2048]
0051f1208 	bl	#-12978088 ; -> 0x4590a60 
0051f120c 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f1210 	ldr	x0, [x0, #160]
0051f1214 	bl	#-12978100 ; -> 0x4590a60 
0051f1218 	mov	w8, #1
0051f121c 	strb	w8, [x21, #3158]
0051f1220 	mov	w0, #8830
0051f1224 	mov	x1, xzr
0051f1228 	str	xzr, [sp, #8]
0051f122c 	strb	wzr, [sp, #24]
0051f1230 	bl	#-5938316 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f1234 	tbz	w0, #0, #52 ; -> 0x51f1268 
0051f1238 	mov	w0, #8830
0051f123c 	mov	x1, xzr
0051f1240 	bl	#-5938152 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f1244 	cbz	x0, #512 ; -> 0x51f1444 
0051f1248 	and	w2, w20, #0x1
0051f124c 	mov	x1, x19
0051f1250 	ldr	x30, [sp, #16]
0051f1254 	ldp	x20, x19, [sp, #48]
0051f1258 	mov	x3, xzr
0051f125c 	ldp	x22, x21, [sp, #32]
0051f1260 	add	sp, sp, #64
0051f1264 	b	#-6756716 ; -> 0x4b7f8f8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_26
0051f1268 	adrp	x21, #85979136 ; -> 0xa3f0000 
0051f126c 	ldr	x21, [x21, #2048]
0051f1270 	ldr	x0, [x21]
0051f1274 	ldr	w8, [x0, #228]
0051f1278 	cbnz	w8, #12 ; -> 0x51f1284 
0051f127c 	bl	#-12977820 ; -> 0x4590be0 
0051f1280 	ldr	x0, [x21]
0051f1284 	ldr	x8, [x0, #184]
0051f1288 	ldr	x0, [x8]
0051f128c 	cbz	x0, #440 ; -> 0x51f1444 
0051f1290 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1294 	add	x2, sp, #8
0051f1298 	mov	x1, x19
0051f129c 	ldr	x8, [x8, #136]
0051f12a0 	ldr	x3, [x8]
0051f12a4 	bl	#50041748 ; -> 0x81aa638 
0051f12a8 	tbz	w0, #0, #232 ; -> 0x51f1390 
0051f12ac 	ldr	x8, [sp, #8]
0051f12b0 	cbz	x8, #404 ; -> 0x51f1444 
0051f12b4 	adrp	x22, #85942272 ; -> 0xa3e7000 
0051f12b8 	ldr	x22, [x22, #1248]
0051f12bc 	ldr	x20, [x8, #24]
0051f12c0 	ldr	x0, [x22, #40]
0051f12c4 	ldr	w9, [x0, #228]
0051f12c8 	cbnz	w9, #8 ; -> 0x51f12d0 
0051f12cc 	bl	#-12977900 ; -> 0x4590be0 
0051f12d0 	add	x1, sp, #24
0051f12d4 	mov	x0, x20
0051f12d8 	mov	x2, xzr
0051f12dc 	bl	#62796792 ; -> 0x8dd46d4 System.Boolean::TryParse
0051f12e0 	tbz	w0, #0, #336 ; -> 0x51f1430 
0051f12e4 	ldrb	w8, [sp, #24]
0051f12e8 	ldrb	w9, [sp, #28]
0051f12ec 	cmp	w8, w9
0051f12f0 	b.eq	#320 ; -> 0x51f1430 
0051f12f4 	ldr	x0, [x21]
0051f12f8 	ldr	w8, [x0, #228]
0051f12fc 	cbnz	w8, #12 ; -> 0x51f1308 
0051f1300 	bl	#-12977952 ; -> 0x4590be0 
0051f1304 	ldr	x0, [x21]
0051f1308 	ldr	x8, [x22, #40]
0051f130c 	ldr	x9, [x0, #184]
0051f1310 	ldr	w10, [x8, #228]
0051f1314 	ldr	x20, [x9]
0051f1318 	cbnz	w10, #12 ; -> 0x51f1324 
0051f131c 	mov	x0, x8
0051f1320 	bl	#-12977984 ; -> 0x4590be0 
0051f1324 	add	x0, sp, #28
0051f1328 	mov	x1, xzr
0051f132c 	bl	#62795168 ; -> 0x8dd40cc System.Boolean::ToString
0051f1330 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1334 	mov	x22, x0
0051f1338 	ldr	x8, [x8, #160]
0051f133c 	ldr	x8, [x8]
0051f1340 	mov	x0, x8
0051f1344 	bl	#-12977736 ; -> 0x4590cfc 
0051f1348 	mov	x1, xzr
0051f134c 	mov	x21, x0
0051f1350 	bl	#63745752 ; -> 0x8ebc228 System.Object::.ctor
0051f1354 	mov	x0, x21
0051f1358 	mov	x1, x22
0051f135c 	str	x22, [x0, #24]!
0051f1360 	bl	#-12978524 ; -> 0x4590a04 
0051f1364 	mov	w8, #1
0051f1368 	strb	w8, [x21, #16]
0051f136c 	cbz	x20, #216 ; -> 0x51f1444 
0051f1370 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1374 	mov	x0, x20
0051f1378 	mov	x1, x19
0051f137c 	ldr	x8, [x8, #152]
0051f1380 	mov	x2, x21
0051f1384 	ldr	x3, [x8]
0051f1388 	bl	#50034484 ; -> 0x81a8abc 
0051f138c 	b	#164 ; -> 0x51f1430 
0051f1390 	ldr	x0, [x21]
0051f1394 	ldr	w8, [x0, #228]
0051f1398 	cbnz	w8, #12 ; -> 0x51f13a4 
0051f139c 	bl	#-12978108 ; -> 0x4590be0 
0051f13a0 	ldr	x0, [x21]
0051f13a4 	adrp	x8, #85942272 ; -> 0xa3e7000 
0051f13a8 	ldr	x8, [x8, #1248]
0051f13ac 	ldr	x9, [x0, #184]
0051f13b0 	ldr	x8, [x8, #40]
0051f13b4 	ldr	x20, [x9]
0051f13b8 	ldr	w10, [x8, #228]
0051f13bc 	cbnz	w10, #12 ; -> 0x51f13c8 
0051f13c0 	mov	x0, x8
0051f13c4 	bl	#-12978148 ; -> 0x4590be0 
0051f13c8 	add	x0, sp, #28
0051f13cc 	mov	x1, xzr
0051f13d0 	bl	#62795004 ; -> 0x8dd40cc System.Boolean::ToString
0051f13d4 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f13d8 	mov	x22, x0
0051f13dc 	ldr	x8, [x8, #160]
0051f13e0 	ldr	x8, [x8]
0051f13e4 	mov	x0, x8
0051f13e8 	bl	#-12977900 ; -> 0x4590cfc 
0051f13ec 	mov	x1, xzr
0051f13f0 	mov	x21, x0
0051f13f4 	bl	#63745588 ; -> 0x8ebc228 System.Object::.ctor
0051f13f8 	mov	x0, x21
0051f13fc 	mov	x1, x22
0051f1400 	str	x22, [x0, #24]!
0051f1404 	bl	#-12978688 ; -> 0x4590a04 
0051f1408 	mov	w8, #1
0051f140c 	strb	w8, [x21, #16]
0051f1410 	cbz	x20, #52 ; -> 0x51f1444 
0051f1414 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1418 	mov	x0, x20
0051f141c 	mov	x1, x19
0051f1420 	ldr	x8, [x8, #144]
0051f1424 	mov	x2, x21
0051f1428 	ldr	x3, [x8]
0051f142c 	bl	#50034340 ; -> 0x81a8ad0 
0051f1430 	ldp	x20, x19, [sp, #48]
0051f1434 	ldr	x30, [sp, #16]
0051f1438 	ldp	x22, x21, [sp, #32]
0051f143c 	add	sp, sp, #64
0051f1440 	ret
0051f1444 	bl	#-12977976 ; -> 0x4590d0c 
