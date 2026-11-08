004fd84b8 	str	x30, [sp, #-48]!
004fd84bc 	stp	x22, x21, [sp, #16]
004fd84c0 	stp	x20, x19, [sp, #32]
004fd84c4 	adrp	x22, #96456704 ; -> 0xabd5000 
004fd84c8 	mov	x19, x2
004fd84cc 	mov	x20, x1
004fd84d0 	ldrb	w8, [x22, #3178]
004fd84d4 	mov	x21, x0
004fd84d8 	tbnz	w8, #0, #108 ; -> 0x4fd8544 
004fd84dc 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd84e0 	ldr	x0, [x0, #1328]
004fd84e4 	bl	#-10779268 ; -> 0x4590a60 
004fd84e8 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd84ec 	ldr	x0, [x0, #3504]
004fd84f0 	bl	#-10779280 ; -> 0x4590a60 
004fd84f4 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd84f8 	ldr	x0, [x0, #328]
004fd84fc 	bl	#-10779292 ; -> 0x4590a60 
004fd8500 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8504 	ldr	x0, [x0, #336]
004fd8508 	bl	#-10779304 ; -> 0x4590a60 
004fd850c 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8510 	ldr	x0, [x0, #344]
004fd8514 	bl	#-10779316 ; -> 0x4590a60 
004fd8518 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd851c 	ldr	x0, [x0, #352]
004fd8520 	bl	#-10779328 ; -> 0x4590a60 
004fd8524 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8528 	ldr	x0, [x0, #360]
004fd852c 	bl	#-10779340 ; -> 0x4590a60 
004fd8530 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8534 	ldr	x0, [x0, #368]
004fd8538 	bl	#-10779352 ; -> 0x4590a60 
004fd853c 	mov	w8, #1
004fd8540 	strb	w8, [x22, #3178]
004fd8544 	mov	w0, #3435
004fd8548 	mov	x1, xzr
004fd854c 	bl	#-3739560 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd8550 	tbz	w0, #0, #52 ; -> 0x4fd8584 
004fd8554 	mov	w0, #3435
004fd8558 	mov	x1, xzr
004fd855c 	bl	#-3739396 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd8560 	cbz	x0, #544 ; -> 0x4fd8780 
004fd8564 	mov	x1, x21
004fd8568 	mov	x2, x20
004fd856c 	mov	x3, x19
004fd8570 	ldp	x20, x19, [sp, #32]
004fd8574 	mov	x4, xzr
004fd8578 	ldp	x22, x21, [sp, #16]
004fd857c 	ldr	x30, [sp], #48
004fd8580 	b	#-4495420 ; -> 0x4b8ed44 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_318
004fd8584 	mov	x0, x19
004fd8588 	mov	x1, xzr
004fd858c 	bl	#63966744 ; -> 0x8cd93a4 System.String::IsNullOrEmpty
004fd8590 	tbz	w0, #0, #56 ; -> 0x4fd85c8 
004fd8594 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd8598 	ldr	x8, [x8, #1328]
004fd859c 	ldr	x0, [x8]
004fd85a0 	ldr	w8, [x0, #228]
004fd85a4 	cbnz	w8, #8 ; -> 0x4fd85ac 
004fd85a8 	bl	#-10779080 ; -> 0x4590be0 
004fd85ac 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd85b0 	mov	x1, xzr
004fd85b4 	ldr	x8, [x8, #360]
004fd85b8 	ldr	x0, [x8]
004fd85bc 	bl	#77489156 ; -> 0x99be9c0 UnityEngine.Debug::LogWarning
004fd85c0 	mov	w0, #1
004fd85c4 	b	#428 ; -> 0x4fd8770 
004fd85c8 	cbz	x20, #120 ; -> 0x4fd8640 
004fd85cc 	ldr	x8, [x20, #24]
004fd85d0 	cbz	x8, #112 ; -> 0x4fd8640 
004fd85d4 	mov	x0, x21
004fd85d8 	mov	x1, x20
004fd85dc 	bl	#-952 ; -> 0x4fd8224 IFixRuntimePatcher::ComputeSHA256Hash
004fd85e0 	mov	x1, x19
004fd85e4 	mov	w2, #5
004fd85e8 	mov	x3, xzr
004fd85ec 	mov	x20, x0
004fd85f0 	bl	#63961956 ; -> 0x8cd8154 System.String::Equals
004fd85f4 	tbz	w0, #0, #116 ; -> 0x4fd8668 
004fd85f8 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd85fc 	mov	x1, x20
004fd8600 	mov	x2, xzr
004fd8604 	ldr	x8, [x8, #344]
004fd8608 	ldr	x0, [x8]
004fd860c 	bl	#63911996 ; -> 0x8ccbe48 System.String::Concat
004fd8610 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd8614 	mov	x19, x0
004fd8618 	ldr	x8, [x8, #1328]
004fd861c 	ldr	x8, [x8]
004fd8620 	ldr	w9, [x8, #228]
004fd8624 	cbnz	w9, #12 ; -> 0x4fd8630 
004fd8628 	mov	x0, x8
004fd862c 	bl	#-10779212 ; -> 0x4590be0 
004fd8630 	mov	x0, x19
004fd8634 	mov	x1, xzr
004fd8638 	bl	#77496992 ; -> 0x99c08d8 UnityEngine.Debug::Log
004fd863c 	b	#-124 ; -> 0x4fd85c0 
004fd8640 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd8644 	ldr	x8, [x8, #1328]
004fd8648 	ldr	x0, [x8]
004fd864c 	ldr	w8, [x0, #228]
004fd8650 	cbnz	w8, #8 ; -> 0x4fd8658 
004fd8654 	bl	#-10779252 ; -> 0x4590be0 
004fd8658 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd865c 	ldr	x8, [x8, #328]
004fd8660 	ldr	x0, [x8]
004fd8664 	b	#256 ; -> 0x4fd8764 
004fd8668 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd866c 	mov	w1, #5
004fd8670 	ldr	x8, [x8, #3504]
004fd8674 	ldr	x0, [x8]
004fd8678 	bl	#-10779432 ; -> 0x4590b50 
004fd867c 	cbz	x0, #260 ; -> 0x4fd8780 
004fd8680 	ldr	w8, [x0, #24]
004fd8684 	mov	x21, x0
004fd8688 	cbz	w8, #252 ; -> 0x4fd8784 
004fd868c 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd8690 	mov	x22, x21
004fd8694 	ldr	x8, [x8, #368]
004fd8698 	ldr	x1, [x8]
004fd869c 	str	x1, [x22, #32]!
004fd86a0 	mov	x0, x22
004fd86a4 	bl	#-10779808 ; -> 0x4590a04 
004fd86a8 	ldur	w8, [x22, #-8]
004fd86ac 	tst	w8, #0xfffffffe
004fd86b0 	b.eq	#212 ; -> 0x4fd8784 
004fd86b4 	mov	x22, x21
004fd86b8 	mov	x1, x19
004fd86bc 	str	x19, [x22, #40]!
004fd86c0 	mov	x0, x22
004fd86c4 	bl	#-10779840 ; -> 0x4590a04 
004fd86c8 	ldur	w8, [x22, #-16]
004fd86cc 	cmp	w8, #2
004fd86d0 	b.ls	#180 ; -> 0x4fd8784 
004fd86d4 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd86d8 	mov	x19, x21
004fd86dc 	ldr	x8, [x8, #336]
004fd86e0 	ldr	x1, [x8]
004fd86e4 	str	x1, [x19, #48]!
004fd86e8 	mov	x0, x19
004fd86ec 	bl	#-10779880 ; -> 0x4590a04 
004fd86f0 	ldur	w8, [x19, #-24]
004fd86f4 	tst	w8, #0xfffffffc
004fd86f8 	b.eq	#140 ; -> 0x4fd8784 
004fd86fc 	mov	x19, x21
004fd8700 	mov	x1, x20
004fd8704 	str	x20, [x19, #56]!
004fd8708 	mov	x0, x19
004fd870c 	bl	#-10779912 ; -> 0x4590a04 
004fd8710 	ldur	w8, [x19, #-32]
004fd8714 	cmp	w8, #4
004fd8718 	b.ls	#108 ; -> 0x4fd8784 
004fd871c 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd8720 	mov	x0, x21
004fd8724 	ldr	x8, [x8, #352]
004fd8728 	ldr	x1, [x8]
004fd872c 	str	x1, [x0, #64]!
004fd8730 	bl	#-10779948 ; -> 0x4590a04 
004fd8734 	mov	x0, x21
004fd8738 	mov	x1, xzr
004fd873c 	bl	#63971456 ; -> 0x8cda7bc System.String::Concat
004fd8740 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd8744 	mov	x19, x0
004fd8748 	ldr	x8, [x8, #1328]
004fd874c 	ldr	x8, [x8]
004fd8750 	ldr	w9, [x8, #228]
004fd8754 	cbnz	w9, #12 ; -> 0x4fd8760 
004fd8758 	mov	x0, x8
004fd875c 	bl	#-10779516 ; -> 0x4590be0 
004fd8760 	mov	x0, x19
004fd8764 	mov	x1, xzr
004fd8768 	bl	#77498300 ; -> 0x99c0f24 UnityEngine.Debug::LogError
004fd876c 	mov	w0, wzr
004fd8770 	ldp	x20, x19, [sp, #32]
004fd8774 	ldp	x22, x21, [sp, #16]
004fd8778 	ldr	x30, [sp], #48
004fd877c 	ret
004fd8780 	bl	#-10779252 ; -> 0x4590d0c 
004fd8784 	bl	#-10779248 ; -> 0x4590d14 
