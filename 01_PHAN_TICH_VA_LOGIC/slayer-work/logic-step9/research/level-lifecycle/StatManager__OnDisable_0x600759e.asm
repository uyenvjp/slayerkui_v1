004f161a0 	stp	x30, x23, [sp, #-48]!
004f161a4 	stp	x22, x21, [sp, #16]
004f161a8 	stp	x20, x19, [sp, #32]
004f161ac 	adrp	x20, #97251328 ; -> 0xabd5000 
004f161b0 	mov	x19, x0
004f161b4 	ldrb	w8, [x20, #1716]
004f161b8 	tbnz	w8, #0, #48 ; -> 0x4f161e8 
004f161bc 	adrp	x0, #88936448 ; -> 0xa3e7000 
004f161c0 	ldr	x0, [x0, #2992]
004f161c4 	bl	#-9983844 ; -> 0x4590a60 
004f161c8 	adrp	x0, #89219072 ; -> 0xa42c000 
004f161cc 	ldr	x0, [x0, #448]
004f161d0 	bl	#-9983856 ; -> 0x4590a60 
004f161d4 	adrp	x0, #88969216 ; -> 0xa3ef000 
004f161d8 	ldr	x0, [x0, #3424]
004f161dc 	bl	#-9983868 ; -> 0x4590a60 
004f161e0 	mov	w8, #1
004f161e4 	strb	w8, [x20, #1716]
004f161e8 	mov	w0, #33186
004f161ec 	mov	x1, xzr
004f161f0 	bl	#-2944076 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f161f4 	tbz	w0, #0, #44 ; -> 0x4f16220 
004f161f8 	mov	w0, #33186
004f161fc 	mov	x1, xzr
004f16200 	bl	#-2943912 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f16204 	cbz	x0, #204 ; -> 0x4f162d0 
004f16208 	mov	x1, x19
004f1620c 	ldp	x20, x19, [sp, #32]
004f16210 	ldp	x22, x21, [sp, #16]
004f16214 	mov	x2, xzr
004f16218 	ldp	x30, x23, [sp], #48
004f1621c 	b	#-3767548 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f16220 	adrp	x22, #88969216 ; -> 0xa3ef000 
004f16224 	adrp	x23, #88936448 ; -> 0xa3e7000 
004f16228 	adrp	x21, #89219072 ; -> 0xa42c000 
004f1622c 	ldr	x22, [x22, #3424]
004f16230 	ldr	x8, [x22]
004f16234 	ldr	x23, [x23, #2992]
004f16238 	ldr	x8, [x8, #184]
004f1623c 	ldr	x21, [x21, #448]
004f16240 	ldr	x0, [x23]
004f16244 	ldr	x20, [x8, #8]
004f16248 	bl	#-9983308 ; -> 0x4590cfc 
004f1624c 	ldr	x2, [x21]
004f16250 	mov	x1, x19
004f16254 	mov	x3, xzr
004f16258 	mov	x21, x0
004f1625c 	bl	#65775616 ; -> 0x8dd0a5c System.Action::.ctor
004f16260 	mov	x0, x20
004f16264 	mov	x1, x21
004f16268 	mov	x2, xzr
004f1626c 	bl	#66754080 ; -> 0x8ebf88c System.Delegate::Remove
004f16270 	mov	x8, x0
004f16274 	cbz	x0, #52 ; -> 0x4f162a8 
004f16278 	ldr	x1, [x23]
004f1627c 	ldr	x9, [x8]
004f16280 	cmp	x9, x1
004f16284 	b.ne	#28 ; -> 0x4f162a0 
004f16288 	ldr	x9, [x22]
004f1628c 	ldr	x0, [x9, #184]
004f16290 	str	x8, [x0, #8]!
004f16294 	ldr	x9, [x8]
004f16298 	cmp	x9, x1
004f1629c 	b.eq	#24 ; -> 0x4f162b4 
004f162a0 	mov	x0, x8
004f162a4 	bl	#-9982488 ; -> 0x459108c 
004f162a8 	ldr	x9, [x22]
004f162ac 	ldr	x0, [x9, #184]
004f162b0 	str	xzr, [x0, #8]!
004f162b4 	mov	x1, x8
004f162b8 	bl	#-9984180 ; -> 0x4590a04 
004f162bc 	mov	x0, x19
004f162c0 	ldp	x20, x19, [sp, #32]
004f162c4 	ldp	x22, x21, [sp, #16]
004f162c8 	ldp	x30, x23, [sp], #48
004f162cc 	b	#8 ; -> 0x4f162d4 StatManager::LevelUpRequest
004f162d0 	bl	#-9983428 ; -> 0x4590d0c 
