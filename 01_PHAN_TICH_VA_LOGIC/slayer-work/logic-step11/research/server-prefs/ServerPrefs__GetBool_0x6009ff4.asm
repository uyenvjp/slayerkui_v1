0051f0fac 	sub	sp, sp, #48
0051f0fb0 	stp	x30, x21, [sp, #16]
0051f0fb4 	stp	x20, x19, [sp, #32]
0051f0fb8 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f0fbc 	mov	w19, w1
0051f0fc0 	mov	x20, x0
0051f0fc4 	ldrb	w8, [x21, #3156]
0051f0fc8 	tbnz	w8, #0, #36 ; -> 0x51f0fec 
0051f0fcc 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0fd0 	ldr	x0, [x0, #136]
0051f0fd4 	bl	#-12977524 ; -> 0x4590a60 
0051f0fd8 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f0fdc 	ldr	x0, [x0, #2048]
0051f0fe0 	bl	#-12977536 ; -> 0x4590a60 
0051f0fe4 	mov	w8, #1
0051f0fe8 	strb	w8, [x21, #3156]
0051f0fec 	mov	w0, #1929
0051f0ff0 	mov	x1, xzr
0051f0ff4 	str	xzr, [sp, #8]
0051f0ff8 	strb	wzr, [sp, #4]
0051f0ffc 	bl	#-5937752 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f1000 	tbz	w0, #0, #48 ; -> 0x51f1030 
0051f1004 	mov	w0, #1929
0051f1008 	mov	x1, xzr
0051f100c 	bl	#-5937588 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f1010 	cbz	x0, #188 ; -> 0x51f10cc 
0051f1014 	and	w2, w19, #0x1
0051f1018 	mov	x1, x20
0051f101c 	mov	x3, xzr
0051f1020 	ldp	x20, x19, [sp, #32]
0051f1024 	ldp	x30, x21, [sp, #16]
0051f1028 	add	sp, sp, #48
0051f102c 	b	#-6703068 ; -> 0x4b8c850 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_271
0051f1030 	adrp	x21, #85979136 ; -> 0xa3f0000 
0051f1034 	ldr	x21, [x21, #2048]
0051f1038 	ldr	x0, [x21]
0051f103c 	ldr	w8, [x0, #228]
0051f1040 	cbnz	w8, #12 ; -> 0x51f104c 
0051f1044 	bl	#-12977252 ; -> 0x4590be0 
0051f1048 	ldr	x0, [x21]
0051f104c 	ldr	x8, [x0, #184]
0051f1050 	ldr	x0, [x8]
0051f1054 	cbz	x0, #120 ; -> 0x51f10cc 
0051f1058 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f105c 	add	x2, sp, #8
0051f1060 	mov	x1, x20
0051f1064 	ldr	x8, [x8, #136]
0051f1068 	ldr	x3, [x8]
0051f106c 	bl	#50042316 ; -> 0x81aa638 
0051f1070 	tbz	w0, #0, #72 ; -> 0x51f10b8 
0051f1074 	ldr	x8, [sp, #8]
0051f1078 	cbz	x8, #84 ; -> 0x51f10cc 
0051f107c 	adrp	x9, #85942272 ; -> 0xa3e7000 
0051f1080 	ldr	x9, [x9, #1248]
0051f1084 	ldr	x20, [x8, #24]
0051f1088 	ldr	x0, [x9, #40]
0051f108c 	ldr	w9, [x0, #228]
0051f1090 	cbnz	w9, #8 ; -> 0x51f1098 
0051f1094 	bl	#-12977332 ; -> 0x4590be0 
0051f1098 	add	x1, sp, #4
0051f109c 	mov	x0, x20
0051f10a0 	mov	x2, xzr
0051f10a4 	bl	#62797360 ; -> 0x8dd46d4 System.Boolean::TryParse
0051f10a8 	tbz	w0, #0, #16 ; -> 0x51f10b8 
0051f10ac 	ldrb	w8, [sp, #4]
0051f10b0 	cmp	w8, #0
0051f10b4 	cset	w19, ne
0051f10b8 	and	w0, w19, #0x1
0051f10bc 	ldp	x20, x19, [sp, #32]
0051f10c0 	ldp	x30, x21, [sp, #16]
0051f10c4 	add	sp, sp, #48
0051f10c8 	ret
0051f10cc 	bl	#-12977088 ; -> 0x4590d0c 
