004f16074 	stp	x30, x23, [sp, #-48]!
004f16078 	stp	x22, x21, [sp, #16]
004f1607c 	stp	x20, x19, [sp, #32]
004f16080 	adrp	x20, #97251328 ; -> 0xabd5000 
004f16084 	mov	x19, x0
004f16088 	ldrb	w8, [x20, #1715]
004f1608c 	tbnz	w8, #0, #48 ; -> 0x4f160bc 
004f16090 	adrp	x0, #88936448 ; -> 0xa3e7000 
004f16094 	ldr	x0, [x0, #2992]
004f16098 	bl	#-9983544 ; -> 0x4590a60 
004f1609c 	adrp	x0, #89219072 ; -> 0xa42c000 
004f160a0 	ldr	x0, [x0, #448]
004f160a4 	bl	#-9983556 ; -> 0x4590a60 
004f160a8 	adrp	x0, #88969216 ; -> 0xa3ef000 
004f160ac 	ldr	x0, [x0, #3424]
004f160b0 	bl	#-9983568 ; -> 0x4590a60 
004f160b4 	mov	w8, #1
004f160b8 	strb	w8, [x20, #1715]
004f160bc 	mov	w0, #33183
004f160c0 	mov	x1, xzr
004f160c4 	bl	#-2943776 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f160c8 	tbz	w0, #0, #44 ; -> 0x4f160f4 
004f160cc 	mov	w0, #33183
004f160d0 	mov	x1, xzr
004f160d4 	bl	#-2943612 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f160d8 	cbz	x0, #196 ; -> 0x4f1619c 
004f160dc 	mov	x1, x19
004f160e0 	ldp	x20, x19, [sp, #32]
004f160e4 	ldp	x22, x21, [sp, #16]
004f160e8 	mov	x2, xzr
004f160ec 	ldp	x30, x23, [sp], #48
004f160f0 	b	#-3767248 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f160f4 	adrp	x22, #88969216 ; -> 0xa3ef000 
004f160f8 	adrp	x23, #88936448 ; -> 0xa3e7000 
004f160fc 	adrp	x21, #89219072 ; -> 0xa42c000 
004f16100 	ldr	x22, [x22, #3424]
004f16104 	ldr	x8, [x22]
004f16108 	ldr	x23, [x23, #2992]
004f1610c 	ldr	x8, [x8, #184]
004f16110 	ldr	x21, [x21, #448]
004f16114 	ldr	x0, [x23]
004f16118 	ldr	x20, [x8, #8]
004f1611c 	bl	#-9983008 ; -> 0x4590cfc 
004f16120 	ldr	x2, [x21]
004f16124 	mov	x1, x19
004f16128 	mov	x3, xzr
004f1612c 	mov	x21, x0
004f16130 	bl	#65775916 ; -> 0x8dd0a5c System.Action::.ctor
004f16134 	mov	x0, x20
004f16138 	mov	x1, x21
004f1613c 	mov	x2, xzr
004f16140 	bl	#66753888 ; -> 0x8ebf6a0 System.Delegate::Combine
004f16144 	mov	x8, x0
004f16148 	cbz	x0, #52 ; -> 0x4f1617c 
004f1614c 	ldr	x1, [x23]
004f16150 	ldr	x9, [x8]
004f16154 	cmp	x9, x1
004f16158 	b.ne	#28 ; -> 0x4f16174 
004f1615c 	ldr	x9, [x22]
004f16160 	ldr	x0, [x9, #184]
004f16164 	str	x8, [x0, #8]!
004f16168 	ldr	x9, [x8]
004f1616c 	cmp	x9, x1
004f16170 	b.eq	#24 ; -> 0x4f16188 
004f16174 	mov	x0, x8
004f16178 	bl	#-9982188 ; -> 0x459108c 
004f1617c 	ldr	x9, [x22]
004f16180 	ldr	x0, [x9, #184]
004f16184 	str	xzr, [x0, #8]!
004f16188 	ldp	x20, x19, [sp, #32]
004f1618c 	mov	x1, x8
004f16190 	ldp	x22, x21, [sp, #16]
004f16194 	ldp	x30, x23, [sp], #48
004f16198 	b	#-9983892 ; -> 0x4590a04 
004f1619c 	bl	#-9983120 ; -> 0x4590d0c 
