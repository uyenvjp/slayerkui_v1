004ef1050 	sub	sp, sp, #160
004ef1054 	str	d8, [sp, #128]
004ef1058 	str	x30, [sp, #136]
004ef105c 	stp	x20, x19, [sp, #144]
004ef1060 	adrp	x20, #97402880 ; -> 0xabd5000 
004ef1064 	mov	x19, x0
004ef1068 	ldrb	w8, [x20, #1448]
004ef106c 	tbnz	w8, #0, #24 ; -> 0x4ef1084 
004ef1070 	adrp	x0, #89092096 ; -> 0xa3e8000 
004ef1074 	ldr	x0, [x0, #1536]
004ef1078 	bl	#-9831960 ; -> 0x4590a60 
004ef107c 	mov	w8, #1
004ef1080 	strb	w8, [x20, #1448]
004ef1084 	mov	w0, #2371
004ef1088 	mov	x1, xzr
004ef108c 	bl	#-2792168 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef1090 	tbz	w0, #0, #48 ; -> 0x4ef10c0 
004ef1094 	mov	w0, #2371
004ef1098 	mov	x1, xzr
004ef109c 	bl	#-2792004 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef10a0 	cbz	x0, #220 ; -> 0x4ef117c 
004ef10a4 	mov	x1, x19
004ef10a8 	ldp	x20, x19, [sp, #144]
004ef10ac 	ldr	x30, [sp, #136]
004ef10b0 	ldr	d8, [sp, #128]
004ef10b4 	mov	x2, xzr
004ef10b8 	add	sp, sp, #160
004ef10bc 	b	#-3594936 ; -> 0x4b83604 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_105
004ef10c0 	ldr	x8, [x19, #312]
004ef10c4 	cbz	x8, #184 ; -> 0x4ef117c 
004ef10c8 	ldr	q0, [x8, #2688]
004ef10cc 	ldr	q1, [x8, #2704]
004ef10d0 	add	x0, sp, #64
004ef10d4 	ldr	q2, [x8, #2720]
004ef10d8 	mov	x1, xzr
004ef10dc 	stp	q0, q1, [sp, #64]
004ef10e0 	ldr	q0, [x8, #2736]
004ef10e4 	stp	q2, q0, [sp, #96]
004ef10e8 	bl	#-3794920 ; -> 0x4b52900 SilentLong::op_Implicit
004ef10ec 	ldr	x8, [x19, #312]
004ef10f0 	cbz	x8, #140 ; -> 0x4ef117c 
004ef10f4 	ldr	q0, [x8, #2752]
004ef10f8 	ldr	q1, [x8, #2768]
004ef10fc 	mov	x20, x0
004ef1100 	ldr	q2, [x8, #2784]
004ef1104 	mov	x0, sp
004ef1108 	mov	x1, xzr
004ef110c 	stp	q0, q1, [sp]
004ef1110 	ldr	q0, [x8, #2800]
004ef1114 	stp	q2, q0, [sp, #32]
004ef1118 	bl	#-3799800 ; -> 0x4b51620 SilentDouble::op_Implicit
004ef111c 	adrp	x8, #89092096 ; -> 0xa3e8000 
004ef1120 	fmov	d8, d0
004ef1124 	ldr	x8, [x8, #1536]
004ef1128 	ldr	x0, [x8]
004ef112c 	ldr	w8, [x0, #228]
004ef1130 	cbnz	w8, #8 ; -> 0x4ef1138 
004ef1134 	bl	#-9831764 ; -> 0x4590be0 
004ef1138 	frintp	d0, d8
004ef113c 	scvtf	d1, x20
004ef1140 	mov	x9, #9218868437227405312
004ef1144 	ldr	x30, [sp, #136]
004ef1148 	ldr	d8, [sp, #128]
004ef114c 	fadd	d0, d0, d1
004ef1150 	fmov	d1, x9
004ef1154 	mov	x9, #100
004ef1158 	movk	x9, #32768, lsl #48
004ef115c 	fcvtzs	x8, d0
004ef1160 	fcmp	d0, d1
004ef1164 	add	x8, x8, #100
004ef1168 	csel	x0, x9, x8, eq
004ef116c 	str	x0, [x19, #1656]
004ef1170 	ldp	x20, x19, [sp, #144]
004ef1174 	add	sp, sp, #160
004ef1178 	ret
004ef117c 	bl	#-9831536 ; -> 0x4590d0c 
