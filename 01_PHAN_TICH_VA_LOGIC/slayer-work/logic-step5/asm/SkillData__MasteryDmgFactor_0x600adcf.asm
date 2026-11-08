00530bef8 	str	x30, [sp, #-64]!
00530befc 	stp	x24, x23, [sp, #16]
00530bf00 	stp	x22, x21, [sp, #32]
00530bf04 	stp	x20, x19, [sp, #48]
00530bf08 	adrp	x23, #93110272 ; -> 0xabd7000 
00530bf0c 	mov	w21, w3
00530bf10 	mov	x19, x2
00530bf14 	ldrb	w8, [x23, #1044]
00530bf18 	mov	x20, x1
00530bf1c 	mov	x22, x0
00530bf20 	tbnz	w8, #0, #48 ; -> 0x530bf50 
00530bf24 	adrp	x0, #84795392 ; -> 0xa3e9000 
00530bf28 	ldr	x0, [x0, #3552]
00530bf2c 	bl	#-14136524 ; -> 0x4590a60 
00530bf30 	adrp	x0, #84815872 ; -> 0xa3ee000 
00530bf34 	ldr	x0, [x0, #2104]
00530bf38 	bl	#-14136536 ; -> 0x4590a60 
00530bf3c 	adrp	x0, #85094400 ; -> 0xa432000 
00530bf40 	ldr	x0, [x0, #2800]
00530bf44 	bl	#-14136548 ; -> 0x4590a60 
00530bf48 	mov	w8, #1
00530bf4c 	strb	w8, [x23, #1044]
00530bf50 	mov	w0, #43304
00530bf54 	mov	x1, xzr
00530bf58 	str	xzr, [sp, #8]
00530bf5c 	bl	#-7096760 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530bf60 	tbz	w0, #0, #60 ; -> 0x530bf9c 
00530bf64 	mov	w0, #43304
00530bf68 	mov	x1, xzr
00530bf6c 	bl	#-7096596 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530bf70 	cbz	x0, #472 ; -> 0x530c148 
00530bf74 	mov	x1, x22
00530bf78 	mov	x2, x20
00530bf7c 	mov	x3, x19
00530bf80 	mov	w4, w21
00530bf84 	ldp	x20, x19, [sp, #48]
00530bf88 	ldp	x22, x21, [sp, #32]
00530bf8c 	mov	x5, xzr
00530bf90 	ldp	x24, x23, [sp, #16]
00530bf94 	ldr	x30, [sp], #64
00530bf98 	b	#-7506476 ; -> 0x4be356c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1972
00530bf9c 	adrp	x23, #84815872 ; -> 0xa3ee000 
00530bfa0 	ldr	x23, [x23, #2104]
00530bfa4 	ldr	x0, [x23]
00530bfa8 	ldr	w8, [x0, #228]
00530bfac 	cbnz	w8, #8 ; -> 0x530bfb4 
00530bfb0 	bl	#-14136272 ; -> 0x4590be0 
00530bfb4 	adrp	x24, #93077504 ; -> 0xabcf000 
00530bfb8 	ldrb	w8, [x24, #360]
00530bfbc 	cbnz	w8, #24 ; -> 0x530bfd4 
00530bfc0 	adrp	x0, #84815872 ; -> 0xa3ee000 
00530bfc4 	ldr	x0, [x0, #2104]
00530bfc8 	bl	#-14136680 ; -> 0x4590a60 
00530bfcc 	mov	w8, #1
00530bfd0 	strb	w8, [x24, #360]
00530bfd4 	ldr	x0, [x23]
00530bfd8 	ldr	w8, [x0, #228]
00530bfdc 	cbnz	w8, #12 ; -> 0x530bfe8 
00530bfe0 	bl	#-14136320 ; -> 0x4590be0 
00530bfe4 	ldr	x0, [x23]
00530bfe8 	ldr	x8, [x0, #184]
00530bfec 	ldr	x9, [x8]
00530bff0 	cbz	x9, #344 ; -> 0x530c148 
00530bff4 	ldr	x8, [x22, #32]
00530bff8 	cbz	x8, #336 ; -> 0x530c148 
00530bffc 	ldr	x0, [x9, #888]
00530c000 	cbz	x0, #328 ; -> 0x530c148 
00530c004 	adrp	x9, #85090304 ; -> 0xa432000 
00530c008 	add	x2, sp, #8
00530c00c 	ldr	x9, [x9, #2800]
00530c010 	ldr	w1, [x8, #444]
00530c014 	ldr	x3, [x9]
00530c018 	bl	#47841336 ; -> 0x80ac050 
00530c01c 	tbz	w0, #0, #272 ; -> 0x530c12c 
00530c020 	cmp	w21, #2
00530c024 	b.le	#52 ; -> 0x530c058 
00530c028 	cmp	w21, #3
00530c02c 	b.eq	#84 ; -> 0x530c080 
00530c030 	cmp	w21, #4
00530c034 	b.eq	#100 ; -> 0x530c098 
00530c038 	cmp	w21, #5
00530c03c 	b.ne	#240 ; -> 0x530c12c 
00530c040 	ldr	x8, [sp, #8]
00530c044 	cbz	x8, #260 ; -> 0x530c148 
00530c048 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c04c 	ldr	x9, [x9, #3552]
00530c050 	ldr	w21, [x8, #40]
00530c054 	b	#112 ; -> 0x530c0c4 
00530c058 	cmp	w21, #1
00530c05c 	b.eq	#84 ; -> 0x530c0b0 
00530c060 	cmp	w21, #2
00530c064 	b.ne	#200 ; -> 0x530c12c 
00530c068 	ldr	x8, [sp, #8]
00530c06c 	cbz	x8, #220 ; -> 0x530c148 
00530c070 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c074 	ldr	x9, [x9, #3552]
00530c078 	ldr	w21, [x8, #28]
00530c07c 	b	#72 ; -> 0x530c0c4 
00530c080 	ldr	x8, [sp, #8]
00530c084 	cbz	x8, #196 ; -> 0x530c148 
00530c088 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c08c 	ldr	x9, [x9, #3552]
00530c090 	ldr	w21, [x8, #32]
00530c094 	b	#48 ; -> 0x530c0c4 
00530c098 	ldr	x8, [sp, #8]
00530c09c 	cbz	x8, #172 ; -> 0x530c148 
00530c0a0 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c0a4 	ldr	x9, [x9, #3552]
00530c0a8 	ldr	w21, [x8, #36]
00530c0ac 	b	#24 ; -> 0x530c0c4 
00530c0b0 	ldr	x8, [sp, #8]
00530c0b4 	cbz	x8, #148 ; -> 0x530c148 
00530c0b8 	adrp	x9, #84791296 ; -> 0xa3e9000 
00530c0bc 	ldr	x9, [x9, #3552]
00530c0c0 	ldr	w21, [x8, #24]
00530c0c4 	ldr	x0, [x9]
00530c0c8 	ldr	w9, [x0, #228]
00530c0cc 	cbnz	w9, #8 ; -> 0x530c0d4 
00530c0d0 	bl	#-14136560 ; -> 0x4590be0 
00530c0d4 	mov	w0, w21
00530c0d8 	mov	x1, xzr
00530c0dc 	bl	#65474248 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c0e0 	mov	x2, x0
00530c0e4 	mov	x3, x1
00530c0e8 	mov	x0, x20
00530c0ec 	mov	x1, x19
00530c0f0 	mov	x4, xzr
00530c0f4 	bl	#65464144 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c0f8 	mov	x19, x0
00530c0fc 	mov	x20, x1
00530c100 	mov	w0, #100
00530c104 	mov	x1, xzr
00530c108 	bl	#65474204 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c10c 	mov	x2, x0
00530c110 	mov	x3, x1
00530c114 	mov	x0, x19
00530c118 	mov	x1, x20
00530c11c 	mov	x4, xzr
00530c120 	bl	#65464600 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530c124 	mov	x20, x0
00530c128 	mov	x19, x1
00530c12c 	mov	x0, x20
00530c130 	mov	x1, x19
00530c134 	ldp	x20, x19, [sp, #48]
00530c138 	ldp	x22, x21, [sp, #32]
00530c13c 	ldp	x24, x23, [sp, #16]
00530c140 	ldr	x30, [sp], #64
00530c144 	ret
00530c148 	bl	#-14136380 ; -> 0x4590d0c 
