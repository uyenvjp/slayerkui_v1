004eefb30 	sub	sp, sp, #448
004eefb34 	str	d8, [sp, #384]
004eefb38 	str	x29, [sp, #392]
004eefb3c 	stp	x30, x23, [sp, #400]
004eefb40 	stp	x22, x21, [sp, #416]
004eefb44 	stp	x20, x19, [sp, #432]
004eefb48 	adrp	x21, #97411072 ; -> 0xabd5000 
004eefb4c 	mov	x20, x0
004eefb50 	mov	x19, x8
004eefb54 	ldrb	w9, [x21, #1442]
004eefb58 	tbnz	w9, #0, #24 ; -> 0x4eefb70 
004eefb5c 	adrp	x0, #89100288 ; -> 0xa3e8000 
004eefb60 	ldr	x0, [x0, #1536]
004eefb64 	bl	#-9826564 ; -> 0x4590a60 
004eefb68 	mov	w8, #1
004eefb6c 	strb	w8, [x21, #1442]
004eefb70 	mov	w0, #4402
004eefb74 	mov	x1, xzr
004eefb78 	bl	#-2786772 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eefb7c 	tbz	w0, #0, #52 ; -> 0x4eefbb0 
004eefb80 	mov	w0, #4402
004eefb84 	mov	x1, xzr
004eefb88 	bl	#-2786608 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eefb8c 	cbz	x0, #476 ; -> 0x4eefd68 
004eefb90 	add	x8, sp, #320
004eefb94 	mov	x1, x20
004eefb98 	mov	x2, xzr
004eefb9c 	bl	#-3584816 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004eefba0 	ldp	q0, q1, [sp, #320]
004eefba4 	str	q0, [x19]
004eefba8 	ldp	q0, q2, [sp, #352]
004eefbac 	b	#408 ; -> 0x4eefd44 
004eefbb0 	ldr	x8, [x20, #312]
004eefbb4 	cbz	x8, #436 ; -> 0x4eefd68 
004eefbb8 	ldr	q0, [x8, #2048]
004eefbbc 	ldr	q1, [x8, #2064]
004eefbc0 	add	x0, sp, #256
004eefbc4 	ldr	q2, [x8, #2080]
004eefbc8 	mov	x1, xzr
004eefbcc 	stp	q0, q1, [sp, #256]
004eefbd0 	ldr	q0, [x8, #2096]
004eefbd4 	stp	q2, q0, [sp, #288]
004eefbd8 	bl	#-3789528 ; -> 0x4b52900 SilentLong::op_Implicit
004eefbdc 	ldr	x8, [x20, #312]
004eefbe0 	cbz	x8, #392 ; -> 0x4eefd68 
004eefbe4 	ldr	q0, [x8, #2944]
004eefbe8 	ldr	q1, [x8, #2960]
004eefbec 	mov	x22, x0
004eefbf0 	ldr	q2, [x8, #2976]
004eefbf4 	add	x0, sp, #192
004eefbf8 	mov	x1, xzr
004eefbfc 	stp	q0, q1, [sp, #192]
004eefc00 	ldr	q0, [x8, #2992]
004eefc04 	stp	q2, q0, [sp, #224]
004eefc08 	bl	#-3789576 ; -> 0x4b52900 SilentLong::op_Implicit
004eefc0c 	ldr	x8, [x20, #312]
004eefc10 	cbz	x8, #344 ; -> 0x4eefd68 
004eefc14 	adrp	x9, #89100288 ; -> 0xa3e8000 
004eefc18 	mov	x23, x0
004eefc1c 	add	x21, x20, #1256
004eefc20 	ldr	x9, [x9, #1536]
004eefc24 	ldr	d8, [x8, #3008]
004eefc28 	ldr	x0, [x9]
004eefc2c 	ldr	w9, [x0, #228]
004eefc30 	cbnz	w9, #8 ; -> 0x4eefc38 
004eefc34 	bl	#-9826388 ; -> 0x4590be0 
004eefc38 	add	x8, x23, #100
004eefc3c 	frintp	d0, d8
004eefc40 	scvtf	d2, x22
004eefc44 	scvtf	d1, x8
004eefc48 	mov	x8, #4636737291354636288
004eefc4c 	mov	x0, x21
004eefc50 	mov	x2, xzr
004eefc54 	fadd	d0, d0, d1
004eefc58 	fmov	d1, x8
004eefc5c 	mov	x8, #9218868437227405312
004eefc60 	fmul	d0, d0, d2
004eefc64 	fdiv	d0, d0, d1
004eefc68 	fmov	d1, x8
004eefc6c 	mov	x8, #-9223372036854775808
004eefc70 	fcvtzs	x9, d0
004eefc74 	fcmp	d0, d1
004eefc78 	csel	x1, x8, x9, eq
004eefc7c 	bl	#-3790048 ; -> 0x4b5279c SilentLong::set_Value
004eefc80 	ldp	q0, q1, [x21]
004eefc84 	add	x0, sp, #128
004eefc88 	mov	x1, xzr
004eefc8c 	stp	q0, q1, [sp, #128]
004eefc90 	ldp	q0, q2, [x21, #32]
004eefc94 	stp	q0, q2, [sp, #160]
004eefc98 	bl	#-3789720 ; -> 0x4b52900 SilentLong::op_Implicit
004eefc9c 	ldr	x8, [x20, #312]
004eefca0 	cbz	x8, #200 ; -> 0x4eefd68 
004eefca4 	ldr	q0, [x8, #18128]
004eefca8 	ldr	q1, [x8, #18144]
004eefcac 	mov	x22, x0
004eefcb0 	ldr	q2, [x8, #18160]
004eefcb4 	add	x0, sp, #64
004eefcb8 	mov	x1, xzr
004eefcbc 	stp	q0, q1, [sp, #64]
004eefcc0 	ldr	q0, [x8, #18176]
004eefcc4 	stp	q2, q0, [sp, #96]
004eefcc8 	bl	#-3791224 ; -> 0x4b52350 SilentInt::op_Implicit
004eefccc 	ldr	x8, [x20, #312]
004eefcd0 	cbz	x8, #152 ; -> 0x4eefd68 
004eefcd4 	mov	w9, #21080
004eefcd8 	mov	w20, w0
004eefcdc 	mov	x0, sp
004eefce0 	add	x8, x8, x9
004eefce4 	mov	x1, xzr
004eefce8 	ldp	q0, q1, [x8]
004eefcec 	stp	q0, q1, [sp]
004eefcf0 	ldp	q0, q2, [x8, #32]
004eefcf4 	stp	q0, q2, [sp, #32]
004eefcf8 	bl	#-3791272 ; -> 0x4b52350 SilentInt::op_Implicit
004eefcfc 	add	w8, w20, w0
004eefd00 	mov	x9, #55051
004eefd04 	mov	x0, x21
004eefd08 	add	w8, w8, #100
004eefd0c 	movk	x9, #28835, lsl #16
004eefd10 	mov	x2, xzr
004eefd14 	sxtw	x8, w8
004eefd18 	movk	x9, #2621, lsl #32
004eefd1c 	movk	x9, #41943, lsl #48
004eefd20 	mul	x8, x22, x8
004eefd24 	smulh	x9, x8, x9
004eefd28 	add	x8, x9, x8
004eefd2c 	asr	x9, x8, #6
004eefd30 	add	x1, x9, x8, lsr #63
004eefd34 	bl	#-3790232 ; -> 0x4b5279c SilentLong::set_Value
004eefd38 	ldp	q0, q1, [x21]
004eefd3c 	str	q0, [x19]
004eefd40 	ldp	q0, q2, [x21, #32]
004eefd44 	stp	q1, q0, [x19, #16]
004eefd48 	ldp	x22, x21, [sp, #416]
004eefd4c 	str	q2, [x19, #48]
004eefd50 	ldr	x29, [sp, #392]
004eefd54 	ldr	d8, [sp, #384]
004eefd58 	ldp	x20, x19, [sp, #432]
004eefd5c 	ldp	x30, x23, [sp, #400]
004eefd60 	add	sp, sp, #448
004eefd64 	ret
004eefd68 	bl	#-9826396 ; -> 0x4590d0c 
