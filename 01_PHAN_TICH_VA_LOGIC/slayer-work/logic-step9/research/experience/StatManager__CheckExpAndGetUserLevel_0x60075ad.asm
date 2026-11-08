004f18274 	sub	sp, sp, #480
004f18278 	str	x29, [sp, #384]
004f1827c 	stp	x30, x27, [sp, #400]
004f18280 	stp	x26, x25, [sp, #416]
004f18284 	stp	x24, x23, [sp, #432]
004f18288 	stp	x22, x21, [sp, #448]
004f1828c 	stp	x20, x19, [sp, #464]
004f18290 	adrp	x20, #97243136 ; -> 0xabd5000 
004f18294 	mov	x19, x0
004f18298 	ldrb	w8, [x20, #1730]
004f1829c 	tbnz	w8, #0, #48 ; -> 0x4f182cc 
004f182a0 	adrp	x0, #88936448 ; -> 0xa3e9000 
004f182a4 	ldr	x0, [x0, #3552]
004f182a8 	bl	#-9992264 ; -> 0x4590a60 
004f182ac 	adrp	x0, #88956928 ; -> 0xa3ee000 
004f182b0 	ldr	x0, [x0, #2104]
004f182b4 	bl	#-9992276 ; -> 0x4590a60 
004f182b8 	adrp	x0, #89210880 ; -> 0xa42c000 
004f182bc 	ldr	x0, [x0, #472]
004f182c0 	bl	#-9992288 ; -> 0x4590a60 
004f182c4 	mov	w8, #1
004f182c8 	strb	w8, [x20, #1730]
004f182cc 	movi	v0.2d, #0000000000000000
004f182d0 	mov	w0, #7604
004f182d4 	mov	x1, xzr
004f182d8 	str	xzr, [sp, #368]
004f182dc 	stp	q0, q0, [sp, #304]
004f182e0 	stp	q0, q0, [sp, #336]
004f182e4 	str	q0, [sp, #288]
004f182e8 	bl	#-2952516 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f182ec 	tbz	w0, #0, #60 ; -> 0x4f18328 
004f182f0 	mov	w0, #7604
004f182f4 	mov	x1, xzr
004f182f8 	bl	#-2952352 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f182fc 	cbz	x0, #596 ; -> 0x4f18550 
004f18300 	mov	x1, x19
004f18304 	ldp	x20, x19, [sp, #464]
004f18308 	ldp	x22, x21, [sp, #448]
004f1830c 	mov	x2, xzr
004f18310 	ldp	x24, x23, [sp, #432]
004f18314 	ldr	x29, [sp, #384]
004f18318 	ldp	x26, x25, [sp, #416]
004f1831c 	ldp	x30, x27, [sp, #400]
004f18320 	add	sp, sp, #480
004f18324 	b	#-3758116 ; -> 0x4b82b00 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_91
004f18328 	ldr	x8, [x19, #144]
004f1832c 	cbz	x8, #548 ; -> 0x4f18550 
004f18330 	add	x9, x8, #264
004f18334 	ldr	x8, [x8, #296]
004f18338 	add	x0, x19, #160
004f1833c 	ldp	q0, q1, [x9]
004f18340 	mov	x1, xzr
004f18344 	str	x8, [sp, #368]
004f18348 	stp	q0, q1, [sp, #336]
004f1834c 	bl	#-3963128 ; -> 0x4b50a54 SilentBigInt::get_Value
004f18350 	ldr	x8, [x19, #144]
004f18354 	cbz	x8, #508 ; -> 0x4f18550 
004f18358 	ldur	q0, [x8, #168]
004f1835c 	ldur	q1, [x8, #184]
004f18360 	adrp	x24, #88936448 ; -> 0xa3e9000 
004f18364 	adrp	x19, #88956928 ; -> 0xa3ee000 
004f18368 	ldur	q2, [x8, #200]
004f1836c 	ldr	x24, [x24, #3552]
004f18370 	ldr	x19, [x19, #2104]
004f18374 	stp	q0, q1, [sp, #288]
004f18378 	adrp	x25, #89210880 ; -> 0xa42c000 
004f1837c 	ldr	x25, [x25, #472]
004f18380 	mov	x20, x0
004f18384 	mov	x21, x1
004f18388 	adrp	x26, #97218560 ; -> 0xabcf000 
004f1838c 	str	q2, [sp, #320]
004f18390 	mov	w27, #1
004f18394 	ldp	q0, q1, [sp, #336]
004f18398 	add	x0, sp, #48
004f1839c 	ldr	x8, [sp, #368]
004f183a0 	mov	x1, xzr
004f183a4 	stp	q0, q1, [sp, #48]
004f183a8 	str	x8, [sp, #80]
004f183ac 	bl	#-3961724 ; -> 0x4b51030 SilentBigInt::op_Implicit
004f183b0 	mov	x22, x0
004f183b4 	ldr	x0, [x24]
004f183b8 	mov	x23, x1
004f183bc 	ldr	w8, [x0, #228]
004f183c0 	cbnz	w8, #8 ; -> 0x4f183c8 
004f183c4 	bl	#-9992164 ; -> 0x4590be0 
004f183c8 	mov	x0, x22
004f183cc 	mov	x1, x23
004f183d0 	mov	x2, x20
004f183d4 	mov	x3, x21
004f183d8 	mov	x4, xzr
004f183dc 	bl	#69624688 ; -> 0x917e74c System.Numerics.BigInteger::op_GreaterThanOrEqual
004f183e0 	tbz	w0, #0, #308 ; -> 0x4f18514 
004f183e4 	add	x0, sp, #336
004f183e8 	mov	x1, xzr
004f183ec 	bl	#-3963288 ; -> 0x4b50a54 SilentBigInt::get_Value
004f183f0 	mov	x22, x0
004f183f4 	ldr	x0, [x24]
004f183f8 	mov	x23, x1
004f183fc 	ldr	w8, [x0, #228]
004f18400 	cbnz	w8, #8 ; -> 0x4f18408 
004f18404 	bl	#-9992228 ; -> 0x4590be0 
004f18408 	mov	x0, x22
004f1840c 	mov	x1, x23
004f18410 	mov	x2, x20
004f18414 	mov	x3, x21
004f18418 	mov	x4, xzr
004f1841c 	bl	#69617388 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004f18420 	mov	x2, x0
004f18424 	mov	x3, x1
004f18428 	add	x0, sp, #336
004f1842c 	mov	x1, x2
004f18430 	mov	x2, x3
004f18434 	mov	x3, xzr
004f18438 	bl	#-3962432 ; -> 0x4b50df8 SilentBigInt::set_Value
004f1843c 	ldp	q0, q1, [sp, #288]
004f18440 	add	x8, sp, #240
004f18444 	ldr	q2, [sp, #320]
004f18448 	add	x0, sp, #192
004f1844c 	mov	x1, xzr
004f18450 	stp	q0, q1, [sp, #192]
004f18454 	str	q2, [sp, #224]
004f18458 	bl	#-8607452 ; -> 0x46e2d7c Liapp.SecureVariable.LiappSecureInt::op_Increment
004f1845c 	ldp	q0, q1, [sp, #240]
004f18460 	add	x0, sp, #144
004f18464 	ldr	q2, [sp, #272]
004f18468 	mov	x1, xzr
004f1846c 	stp	q0, q1, [sp, #288]
004f18470 	str	q2, [sp, #320]
004f18474 	stp	q0, q1, [sp, #144]
004f18478 	str	q2, [sp, #176]
004f1847c 	bl	#-8607408 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f18480 	mov	w20, w0
004f18484 	bl	#-1112 ; -> 0x4f1802c StatManager::get_UserMaxLevel
004f18488 	cmp	w20, w0
004f1848c 	b.ge	#136 ; -> 0x4f18514 
004f18490 	ldr	x0, [x19]
004f18494 	ldr	w8, [x0, #228]
004f18498 	cbnz	w8, #8 ; -> 0x4f184a0 
004f1849c 	bl	#-9992380 ; -> 0x4590be0 
004f184a0 	ldrb	w8, [x26, #360]
004f184a4 	cbnz	w8, #16 ; -> 0x4f184b4 
004f184a8 	mov	x0, x19
004f184ac 	bl	#-9992780 ; -> 0x4590a60 
004f184b0 	strb	w27, [x26, #360]
004f184b4 	ldr	x0, [x19]
004f184b8 	ldr	w8, [x0, #228]
004f184bc 	cbnz	w8, #12 ; -> 0x4f184c8 
004f184c0 	bl	#-9992416 ; -> 0x4590be0 
004f184c4 	ldr	x0, [x19]
004f184c8 	ldr	x8, [x0, #184]
004f184cc 	ldr	x8, [x8]
004f184d0 	cbz	x8, #128 ; -> 0x4f18550 
004f184d4 	ldp	q0, q1, [sp, #288]
004f184d8 	add	x0, sp, #96
004f184dc 	ldr	q2, [sp, #320]
004f184e0 	ldr	x20, [x8, #352]
004f184e4 	mov	x1, xzr
004f184e8 	stp	q0, q1, [sp, #96]
004f184ec 	str	q2, [sp, #128]
004f184f0 	bl	#-8607524 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f184f4 	cbz	x20, #92 ; -> 0x4f18550 
004f184f8 	ldr	x2, [x25]
004f184fc 	mov	w1, w0
004f18500 	mov	x0, x20
004f18504 	bl	#51499768 ; -> 0x80357fc 
004f18508 	mov	x20, x0
004f1850c 	mov	x21, x1
004f18510 	b	#-380 ; -> 0x4f18394 
004f18514 	ldp	q0, q1, [sp, #288]
004f18518 	mov	x0, sp
004f1851c 	ldr	q2, [sp, #320]
004f18520 	mov	x1, xzr
004f18524 	stp	q0, q1, [sp]
004f18528 	str	q2, [sp, #32]
004f1852c 	bl	#-8607584 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f18530 	ldp	x20, x19, [sp, #464]
004f18534 	ldr	x29, [sp, #384]
004f18538 	ldp	x22, x21, [sp, #448]
004f1853c 	ldp	x24, x23, [sp, #432]
004f18540 	ldp	x26, x25, [sp, #416]
004f18544 	ldp	x30, x27, [sp, #400]
004f18548 	add	sp, sp, #480
004f1854c 	ret
004f18550 	bl	#-9992260 ; -> 0x4590d0c 
