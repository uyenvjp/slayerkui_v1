0051f1524 	str	x30, [sp, #-32]!
0051f1528 	stp	x20, x19, [sp, #16]
0051f152c 	adrp	x20, #94261248 ; -> 0xabd6000 
0051f1530 	mov	x19, x0
0051f1534 	ldrb	w8, [x20, #3160]
0051f1538 	tbnz	w8, #0, #36 ; -> 0x51f155c 
0051f153c 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f1540 	ldr	x0, [x0, #168]
0051f1544 	bl	#-12978916 ; -> 0x4590a60 
0051f1548 	adrp	x0, #85979136 ; -> 0xa3f0000 
0051f154c 	ldr	x0, [x0, #2048]
0051f1550 	bl	#-12978928 ; -> 0x4590a60 
0051f1554 	mov	w8, #1
0051f1558 	strb	w8, [x20, #3160]
0051f155c 	mov	w0, #41801
0051f1560 	mov	x1, xzr
0051f1564 	bl	#-5939136 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f1568 	tbz	w0, #0, #40 ; -> 0x51f1590 
0051f156c 	mov	w0, #41801
0051f1570 	mov	x1, xzr
0051f1574 	bl	#-5938972 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f1578 	cbz	x0, #124 ; -> 0x51f15f4 
0051f157c 	mov	x1, x19
0051f1580 	ldp	x20, x19, [sp, #16]
0051f1584 	mov	x2, xzr
0051f1588 	ldr	x30, [sp], #32
0051f158c 	b	#-6750156 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
0051f1590 	mov	x0, x19
0051f1594 	mov	x1, xzr
0051f1598 	bl	#-11198276 ; -> 0x4743654 Gear2Framework.Common.ExtensionMethods::IsNullOrEmpty
0051f159c 	tbz	w0, #0, #20 ; -> 0x51f15b0 
0051f15a0 	ldp	x20, x19, [sp, #16]
0051f15a4 	mov	w0, wzr
0051f15a8 	ldr	x30, [sp], #32
0051f15ac 	ret
0051f15b0 	adrp	x20, #85979136 ; -> 0xa3f0000 
0051f15b4 	ldr	x20, [x20, #2048]
0051f15b8 	ldr	x0, [x20]
0051f15bc 	ldr	w8, [x0, #228]
0051f15c0 	cbnz	w8, #12 ; -> 0x51f15cc 
0051f15c4 	bl	#-12978660 ; -> 0x4590be0 
0051f15c8 	ldr	x0, [x20]
0051f15cc 	ldr	x8, [x0, #184]
0051f15d0 	ldr	x0, [x8]
0051f15d4 	cbz	x0, #32 ; -> 0x51f15f4 
0051f15d8 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f15dc 	mov	x1, x19
0051f15e0 	ldr	x8, [x8, #168]
0051f15e4 	ldp	x20, x19, [sp, #16]
0051f15e8 	ldr	x2, [x8]
0051f15ec 	ldr	x30, [sp], #32
0051f15f0 	b	#50034388 ; -> 0x81a8cc4 
0051f15f4 	bl	#-12978408 ; -> 0x4590d0c 
