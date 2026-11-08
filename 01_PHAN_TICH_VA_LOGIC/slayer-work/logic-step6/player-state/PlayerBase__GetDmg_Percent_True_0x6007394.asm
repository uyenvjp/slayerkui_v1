004ef83d8 	str	d10, [sp, #-64]!
004ef83dc 	stp	d9, d8, [sp, #8]
004ef83e0 	str	x30, [sp, #24]
004ef83e4 	stp	x22, x21, [sp, #32]
004ef83e8 	stp	x20, x19, [sp, #48]
004ef83ec 	fmov	s9, s1
004ef83f0 	fmov	s8, s0
004ef83f4 	adrp	x22, #97374208 ; -> 0xabd5000 
004ef83f8 	ldrb	w8, [x22, #1489]
004ef83fc 	mov	x20, x2
004ef8400 	mov	w21, w1
004ef8404 	mov	x19, x0
004ef8408 	tbnz	w8, #0, #48 ; -> 0x4ef8438 
004ef840c 	adrp	x0, #89067520 ; -> 0xa3e9000 
004ef8410 	ldr	x0, [x0, #3552]
004ef8414 	bl	#-9861556 ; -> 0x4590a60 
004ef8418 	adrp	x0, #89067520 ; -> 0xa3e9000 
004ef841c 	ldr	x0, [x0, #736]
004ef8420 	bl	#-9861568 ; -> 0x4590a60 
004ef8424 	adrp	x0, #89288704 ; -> 0xa41f000 
004ef8428 	ldr	x0, [x0, #1848]
004ef842c 	bl	#-9861580 ; -> 0x4590a60 
004ef8430 	mov	w8, #1
004ef8434 	strb	w8, [x22, #1489]
004ef8438 	mov	w0, #32930
004ef843c 	mov	x1, xzr
004ef8440 	bl	#-2821788 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef8444 	tbz	w0, #0, #68 ; -> 0x4ef8488 
004ef8448 	mov	w0, #32930
004ef844c 	mov	x1, xzr
004ef8450 	bl	#-2821624 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef8454 	cbz	x0, #676 ; -> 0x4ef86f8 
004ef8458 	mov	x1, x19
004ef845c 	fmov	s0, s8
004ef8460 	fmov	s1, s9
004ef8464 	mov	w2, w21
004ef8468 	mov	x3, x20
004ef846c 	ldr	x30, [sp, #24]
004ef8470 	ldp	x20, x19, [sp, #48]
004ef8474 	mov	x4, xzr
004ef8478 	ldp	x22, x21, [sp, #32]
004ef847c 	ldp	d9, d8, [sp, #8]
004ef8480 	ldr	d10, [sp], #64
004ef8484 	b	#-3205376 ; -> 0x4be9b84 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2102
004ef8488 	ldr	w8, [x19, #36]
004ef848c 	cmp	w8, #3
004ef8490 	b.eq	#564 ; -> 0x4ef86c4 
004ef8494 	ldrb	w8, [x19, #448]
004ef8498 	cbz	w8, #556 ; -> 0x4ef86c4 
004ef849c 	cbz	x20, #76 ; -> 0x4ef84e8 
004ef84a0 	mov	x0, x19
004ef84a4 	bl	#-38524 ; -> 0x4eeee28 PlayerBase::get_Resistance
004ef84a8 	adrp	x8, #89067520 ; -> 0xa3e9000 
004ef84ac 	fmov	s10, s0
004ef84b0 	ldr	x8, [x8, #736]
004ef84b4 	ldr	x0, [x8]
004ef84b8 	ldr	w8, [x0, #228]
004ef84bc 	cbnz	w8, #8 ; -> 0x4ef84c4 
004ef84c0 	bl	#-9861344 ; -> 0x4590be0 
004ef84c4 	fmov	s0, s9
004ef84c8 	fmov	s1, s10
004ef84cc 	mov	x0, xzr
004ef84d0 	bl	#-1922128 ; -> 0x4d23080 UsefulManager::Player_MissProbability
004ef84d4 	tbnz	w0, #0, #20 ; -> 0x4ef84e8 
004ef84d8 	ldr	x8, [x20, #24]
004ef84dc 	ldr	x0, [x20, #64]
004ef84e0 	ldr	x1, [x20, #40]
004ef84e4 	blr	x8
004ef84e8 	ldr	x0, [x19, #336]
004ef84ec 	cbz	x0, #524 ; -> 0x4ef86f8 
004ef84f0 	adrp	x8, #89288704 ; -> 0xa41f000 
004ef84f4 	mov	x2, xzr
004ef84f8 	ldr	x8, [x8, #1848]
004ef84fc 	ldr	x1, [x8]
004ef8500 	bl	#78286248 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
004ef8504 	ldr	x8, [x19]
004ef8508 	mov	x0, x19
004ef850c 	ldr	x9, [x8, #584]
004ef8510 	ldr	x1, [x8, #592]
004ef8514 	blr	x9
004ef8518 	mov	x0, xzr
004ef851c 	bl	#-1963888 ; -> 0x4d18dac SoundManager::get_instance
004ef8520 	cbz	x0, #472 ; -> 0x4ef86f8 
004ef8524 	ldr	x8, [x0]
004ef8528 	mov	x1, xzr
004ef852c 	ldr	x9, [x8, #1864]
004ef8530 	ldr	x2, [x8, #1872]
004ef8534 	blr	x9
004ef8538 	mov	x0, x19
004ef853c 	mov	x1, xzr
004ef8540 	bl	#1171524 ; -> 0x5016584 Character::get_Hp_max
004ef8544 	adrp	x8, #89067520 ; -> 0xa3e9000 
004ef8548 	mov	x20, x0
004ef854c 	mov	x21, x1
004ef8550 	ldr	x8, [x8, #3552]
004ef8554 	ldr	x0, [x8]
004ef8558 	ldr	w8, [x0, #228]
004ef855c 	cbnz	w8, #8 ; -> 0x4ef8564 
004ef8560 	bl	#-9861504 ; -> 0x4590be0 
004ef8564 	mov	w8, #1120403456
004ef8568 	mov	x1, xzr
004ef856c 	fmov	s0, w8
004ef8570 	mov	w8, #2139095040
004ef8574 	fmov	s1, w8
004ef8578 	mov	w8, #-2147483648
004ef857c 	fmul	s0, s8, s0
004ef8580 	fcvtzs	w9, s0
004ef8584 	fcmp	s0, s1
004ef8588 	csel	w0, w8, w9, eq
004ef858c 	bl	#69749272 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef8590 	mov	x2, x0
004ef8594 	mov	x3, x1
004ef8598 	mov	x0, x20
004ef859c 	mov	x1, x21
004ef85a0 	mov	x4, xzr
004ef85a4 	bl	#69739168 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef85a8 	mov	x20, x0
004ef85ac 	mov	x21, x1
004ef85b0 	mov	w0, #10000
004ef85b4 	mov	x1, xzr
004ef85b8 	bl	#69749228 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef85bc 	mov	x2, x0
004ef85c0 	mov	x3, x1
004ef85c4 	mov	x0, x20
004ef85c8 	mov	x1, x21
004ef85cc 	mov	x4, xzr
004ef85d0 	bl	#69739624 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef85d4 	mov	x20, x0
004ef85d8 	mov	x21, x1
004ef85dc 	mov	x0, x19
004ef85e0 	mov	x1, xzr
004ef85e4 	bl	#1171548 ; -> 0x5016640 Character::get_Hp_cur
004ef85e8 	mov	x2, x20
004ef85ec 	mov	x3, x21
004ef85f0 	mov	x4, xzr
004ef85f4 	bl	#69747988 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004ef85f8 	mov	x2, x0
004ef85fc 	mov	x3, x1
004ef8600 	mov	x0, x19
004ef8604 	mov	x1, x2
004ef8608 	mov	x2, x3
004ef860c 	mov	x3, xzr
004ef8610 	bl	#1171580 ; -> 0x501668c Character::set_Hp_cur
004ef8614 	ldr	x8, [x19, #1840]
004ef8618 	cbz	x8, #224 ; -> 0x4ef86f8 
004ef861c 	ldr	x9, [x8, #24]
004ef8620 	ldr	x0, [x8, #64]
004ef8624 	ldr	x1, [x8, #40]
004ef8628 	blr	x9
004ef862c 	ldr	x8, [x19]
004ef8630 	mov	x0, x19
004ef8634 	ldr	x9, [x8, #648]
004ef8638 	ldr	x1, [x8, #656]
004ef863c 	blr	x9
004ef8640 	ldr	x0, [x19, #168]
004ef8644 	cbz	x0, #180 ; -> 0x4ef86f8 
004ef8648 	mov	x1, xzr
004ef864c 	bl	#78752480 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef8650 	ldr	x8, [x19]
004ef8654 	mov	x0, x19
004ef8658 	mov	x1, x20
004ef865c 	mov	x2, x21
004ef8660 	mov	w3, #1
004ef8664 	ldr	x9, [x8, #680]
004ef8668 	ldr	x4, [x8, #688]
004ef866c 	blr	x9
004ef8670 	mov	x0, x19
004ef8674 	mov	x1, xzr
004ef8678 	bl	#1171400 ; -> 0x5016640 Character::get_Hp_cur
004ef867c 	mov	x2, xzr
004ef8680 	mov	x3, xzr
004ef8684 	bl	#69755568 ; -> 0x917e934 System.Numerics.BigInteger::op_LessThanOrEqual
004ef8688 	tbz	w0, #0, #60 ; -> 0x4ef86c4 
004ef868c 	mov	w8, #1120403456
004ef8690 	fmov	s0, w8
004ef8694 	fcmp	s8, s0
004ef8698 	b.pl	#68 ; -> 0x4ef86dc 
004ef869c 	ldrb	w8, [x19, #2360]
004ef86a0 	cbz	w8, #60 ; -> 0x4ef86dc 
004ef86a4 	mov	x0, x19
004ef86a8 	ldp	x20, x19, [sp, #48]
004ef86ac 	ldp	x22, x21, [sp, #32]
004ef86b0 	mov	w1, #1
004ef86b4 	ldp	d9, d8, [sp, #8]
004ef86b8 	ldr	x30, [sp, #24]
004ef86bc 	ldr	d10, [sp], #64
004ef86c0 	b	#-3396 ; -> 0x4ef797c PlayerBase::FakeDeath
004ef86c4 	ldp	x20, x19, [sp, #48]
004ef86c8 	ldr	x30, [sp, #24]
004ef86cc 	ldp	x22, x21, [sp, #32]
004ef86d0 	ldp	d9, d8, [sp, #8]
004ef86d4 	ldr	d10, [sp], #64
004ef86d8 	ret
004ef86dc 	mov	x0, x19
004ef86e0 	ldp	x20, x19, [sp, #48]
004ef86e4 	ldp	x22, x21, [sp, #32]
004ef86e8 	ldr	x30, [sp, #24]
004ef86ec 	ldp	d9, d8, [sp, #8]
004ef86f0 	ldr	d10, [sp], #64
004ef86f4 	b	#-3012 ; -> 0x4ef7b30 PlayerBase::Death
004ef86f8 	bl	#-9861612 ; -> 0x4590d0c 
