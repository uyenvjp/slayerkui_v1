0051f0cc8 	str	x30, [sp, #-48]!
0051f0ccc 	stp	x22, x21, [sp, #16]
0051f0cd0 	stp	x20, x19, [sp, #32]
0051f0cd4 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f0cd8 	mov	x20, x1
0051f0cdc 	mov	x19, x0
0051f0ce0 	ldrb	w8, [x21, #3154]
0051f0ce4 	tbnz	w8, #0, #72 ; -> 0x51f0d2c 
0051f0ce8 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0cec 	ldr	x0, [x0, #144]
0051f0cf0 	bl	#-12976784 ; -> 0x4590a60 
0051f0cf4 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0cf8 	ldr	x0, [x0, #136]
0051f0cfc 	bl	#-12976796 ; -> 0x4590a60 
0051f0d00 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0d04 	ldr	x0, [x0, #152]
0051f0d08 	bl	#-12976808 ; -> 0x4590a60 
0051f0d0c 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f0d10 	ldr	x0, [x0, #2048]
0051f0d14 	bl	#-12976820 ; -> 0x4590a60 
0051f0d18 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0d1c 	ldr	x0, [x0, #160]
0051f0d20 	bl	#-12976832 ; -> 0x4590a60 
0051f0d24 	mov	w8, #1
0051f0d28 	strb	w8, [x21, #3154]
0051f0d2c 	mov	w0, #41799
0051f0d30 	mov	x1, xzr
0051f0d34 	str	xzr, [sp, #8]
0051f0d38 	bl	#-5937044 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0d3c 	tbz	w0, #0, #48 ; -> 0x51f0d6c 
0051f0d40 	mov	w0, #41799
0051f0d44 	mov	x1, xzr
0051f0d48 	bl	#-5936880 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0d4c 	cbz	x0, #372 ; -> 0x51f0ec0 
0051f0d50 	mov	x1, x19
0051f0d54 	mov	x2, x20
0051f0d58 	mov	x3, xzr
0051f0d5c 	ldp	x20, x19, [sp, #32]
0051f0d60 	ldp	x22, x21, [sp, #16]
0051f0d64 	ldr	x30, [sp], #48
0051f0d68 	b	#-6759764 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
0051f0d6c 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0d70 	ldr	x21, [x21, #2048]
0051f0d74 	ldr	x0, [x21]
0051f0d78 	ldr	w8, [x0, #228]
0051f0d7c 	cbnz	w8, #12 ; -> 0x51f0d88 
0051f0d80 	bl	#-12976544 ; -> 0x4590be0 
0051f0d84 	ldr	x0, [x21]
0051f0d88 	ldr	x8, [x0, #184]
0051f0d8c 	ldr	x0, [x8]
0051f0d90 	cbz	x0, #304 ; -> 0x51f0ec0 
0051f0d94 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0d98 	add	x2, sp, #8
0051f0d9c 	mov	x1, x19
0051f0da0 	ldr	x8, [x8, #136]
0051f0da4 	ldr	x3, [x8]
0051f0da8 	bl	#50043024 ; -> 0x81aa638 
0051f0dac 	tbz	w0, #0, #148 ; -> 0x51f0e40 
0051f0db0 	ldr	x8, [sp, #8]
0051f0db4 	cbz	x8, #268 ; -> 0x51f0ec0 
0051f0db8 	ldr	x0, [x8, #24]
0051f0dbc 	mov	x1, x20
0051f0dc0 	mov	x2, xzr
0051f0dc4 	bl	#61765184 ; -> 0x8cd8404 System.String::op_Inequality
0051f0dc8 	tbz	w0, #0, #232 ; -> 0x51f0eb0 
0051f0dcc 	ldr	x0, [x21]
0051f0dd0 	ldr	w8, [x0, #228]
0051f0dd4 	cbnz	w8, #12 ; -> 0x51f0de0 
0051f0dd8 	bl	#-12976632 ; -> 0x4590be0 
0051f0ddc 	ldr	x0, [x21]
0051f0de0 	adrp	x9, #86286336 ; -> 0xa43a000 
0051f0de4 	ldr	x8, [x0, #184]
0051f0de8 	ldr	x9, [x9, #160]
0051f0dec 	ldr	x21, [x8]
0051f0df0 	ldr	x0, [x9]
0051f0df4 	bl	#-12976376 ; -> 0x4590cfc 
0051f0df8 	mov	x1, xzr
0051f0dfc 	mov	x22, x0
0051f0e00 	bl	#63747112 ; -> 0x8ebc228 System.Object::.ctor
0051f0e04 	mov	x0, x22
0051f0e08 	mov	x1, x20
0051f0e0c 	str	x20, [x0, #24]!
0051f0e10 	bl	#-12977164 ; -> 0x4590a04 
0051f0e14 	mov	w8, #1
0051f0e18 	strb	w8, [x22, #16]
0051f0e1c 	cbz	x21, #164 ; -> 0x51f0ec0 
0051f0e20 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0e24 	mov	x0, x21
0051f0e28 	mov	x1, x19
0051f0e2c 	ldr	x8, [x8, #152]
0051f0e30 	mov	x2, x22
0051f0e34 	ldr	x3, [x8]
0051f0e38 	bl	#50035844 ; -> 0x81a8abc 
0051f0e3c 	b	#116 ; -> 0x51f0eb0 
0051f0e40 	ldr	x0, [x21]
0051f0e44 	ldr	w8, [x0, #228]
0051f0e48 	cbnz	w8, #12 ; -> 0x51f0e54 
0051f0e4c 	bl	#-12976748 ; -> 0x4590be0 
0051f0e50 	ldr	x0, [x21]
0051f0e54 	adrp	x9, #86286336 ; -> 0xa43a000 
0051f0e58 	ldr	x8, [x0, #184]
0051f0e5c 	ldr	x9, [x9, #160]
0051f0e60 	ldr	x21, [x8]
0051f0e64 	ldr	x0, [x9]
0051f0e68 	bl	#-12976492 ; -> 0x4590cfc 
0051f0e6c 	mov	x1, xzr
0051f0e70 	mov	x22, x0
0051f0e74 	bl	#63746996 ; -> 0x8ebc228 System.Object::.ctor
0051f0e78 	mov	x0, x22
0051f0e7c 	mov	x1, x20
0051f0e80 	str	x20, [x0, #24]!
0051f0e84 	bl	#-12977280 ; -> 0x4590a04 
0051f0e88 	mov	w8, #1
0051f0e8c 	strb	w8, [x22, #16]
0051f0e90 	cbz	x21, #48 ; -> 0x51f0ec0 
0051f0e94 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0e98 	mov	x0, x21
0051f0e9c 	mov	x1, x19
0051f0ea0 	ldr	x8, [x8, #144]
0051f0ea4 	mov	x2, x22
0051f0ea8 	ldr	x3, [x8]
0051f0eac 	bl	#50035748 ; -> 0x81a8ad0 
0051f0eb0 	ldp	x20, x19, [sp, #32]
0051f0eb4 	ldp	x22, x21, [sp, #16]
0051f0eb8 	ldr	x30, [sp], #48
0051f0ebc 	ret
0051f0ec0 	bl	#-12976564 ; -> 0x4590d0c 
