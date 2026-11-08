004e51d24 	str	x30, [sp, #-64]!
004e51d28 	stp	x24, x23, [sp, #16]
004e51d2c 	stp	x22, x21, [sp, #32]
004e51d30 	stp	x20, x19, [sp, #48]
004e51d34 	adrp	x21, #98058240 ; -> 0xabd5000 
004e51d38 	mov	x19, x1
004e51d3c 	mov	x20, x0
004e51d40 	ldrb	w8, [x21, #581]
004e51d44 	tbnz	w8, #0, #96 ; -> 0x4e51da4 
004e51d48 	adrp	x0, #89772032 ; -> 0xa3ee000 
004e51d4c 	ldr	x0, [x0, #2104]
004e51d50 	bl	#-9179888 ; -> 0x4590a60 
004e51d54 	adrp	x0, #90009600 ; -> 0xa428000 
004e51d58 	ldr	x0, [x0, #2912]
004e51d5c 	bl	#-9179900 ; -> 0x4590a60 
004e51d60 	adrp	x0, #90009600 ; -> 0xa428000 
004e51d64 	ldr	x0, [x0, #2920]
004e51d68 	bl	#-9179912 ; -> 0x4590a60 
004e51d6c 	adrp	x0, #90009600 ; -> 0xa428000 
004e51d70 	ldr	x0, [x0, #2928]
004e51d74 	bl	#-9179924 ; -> 0x4590a60 
004e51d78 	adrp	x0, #90009600 ; -> 0xa428000 
004e51d7c 	ldr	x0, [x0, #2456]
004e51d80 	bl	#-9179936 ; -> 0x4590a60 
004e51d84 	adrp	x0, #90009600 ; -> 0xa428000 
004e51d88 	ldr	x0, [x0, #2936]
004e51d8c 	bl	#-9179948 ; -> 0x4590a60 
004e51d90 	adrp	x0, #90009600 ; -> 0xa428000 
004e51d94 	ldr	x0, [x0, #2944]
004e51d98 	bl	#-9179960 ; -> 0x4590a60 
004e51d9c 	mov	w8, #1
004e51da0 	strb	w8, [x21, #581]
004e51da4 	mov	w0, #7771
004e51da8 	mov	x1, xzr
004e51dac 	bl	#-2140168 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e51db0 	tbz	w0, #0, #52 ; -> 0x4e51de4 
004e51db4 	mov	w0, #7771
004e51db8 	mov	x1, xzr
004e51dbc 	bl	#-2140004 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e51dc0 	cbz	x0, #484 ; -> 0x4e51fa4 
004e51dc4 	mov	x1, x20
004e51dc8 	mov	x2, x19
004e51dcc 	mov	x3, xzr
004e51dd0 	ldp	x20, x19, [sp, #48]
004e51dd4 	ldp	x22, x21, [sp, #32]
004e51dd8 	ldp	x24, x23, [sp, #16]
004e51ddc 	ldr	x30, [sp], #64
004e51de0 	b	#-2962892 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004e51de4 	cbz	x19, #448 ; -> 0x4e51fa4 
004e51de8 	ldr	w8, [x19, #320]
004e51dec 	cmp	w8, #2
004e51df0 	b.eq	#352 ; -> 0x4e51f50 
004e51df4 	cmp	w8, #1
004e51df8 	b.ne	#408 ; -> 0x4e51f90 
004e51dfc 	adrp	x20, #89772032 ; -> 0xa3ee000 
004e51e00 	ldr	x20, [x20, #2104]
004e51e04 	ldr	x0, [x20]
004e51e08 	ldr	w8, [x0, #228]
004e51e0c 	cbnz	w8, #8 ; -> 0x4e51e14 
004e51e10 	bl	#-9179696 ; -> 0x4590be0 
004e51e14 	adrp	x21, #98033664 ; -> 0xabcf000 
004e51e18 	ldrb	w8, [x21, #360]
004e51e1c 	cbnz	w8, #24 ; -> 0x4e51e34 
004e51e20 	adrp	x0, #89772032 ; -> 0xa3ee000 
004e51e24 	ldr	x0, [x0, #2104]
004e51e28 	bl	#-9180104 ; -> 0x4590a60 
004e51e2c 	mov	w8, #1
004e51e30 	strb	w8, [x21, #360]
004e51e34 	ldr	x0, [x20]
004e51e38 	ldr	w8, [x0, #228]
004e51e3c 	cbnz	w8, #12 ; -> 0x4e51e48 
004e51e40 	bl	#-9179744 ; -> 0x4590be0 
004e51e44 	ldr	x0, [x20]
004e51e48 	ldr	x8, [x0, #184]
004e51e4c 	ldr	x8, [x8]
004e51e50 	cbz	x8, #340 ; -> 0x4e51fa4 
004e51e54 	ldr	x8, [x8, #3864]
004e51e58 	cbz	x8, #332 ; -> 0x4e51fa4 
004e51e5c 	adrp	x9, #90009600 ; -> 0xa428000 
004e51e60 	ldr	x9, [x9, #2944]
004e51e64 	ldr	x0, [x8, #16]
004e51e68 	ldr	x1, [x9]
004e51e6c 	bl	#20946096 ; -> 0x624bb1c 
004e51e70 	adrp	x24, #90009600 ; -> 0xa428000 
004e51e74 	mov	x20, x0
004e51e78 	mov	x21, x1
004e51e7c 	ldr	x24, [x24, #2456]
004e51e80 	ldr	x0, [x24]
004e51e84 	ldr	w8, [x0, #228]
004e51e88 	cbnz	w8, #12 ; -> 0x4e51e94 
004e51e8c 	bl	#-9179820 ; -> 0x4590be0 
004e51e90 	ldr	x0, [x24]
004e51e94 	ldr	x8, [x0, #184]
004e51e98 	ldr	x22, [x8, #152]
004e51e9c 	cbnz	x22, #92 ; -> 0x4e51ef8 
004e51ea0 	ldr	w9, [x0, #228]
004e51ea4 	cbnz	w9, #16 ; -> 0x4e51eb4 
004e51ea8 	bl	#-9179848 ; -> 0x4590be0 
004e51eac 	ldr	x8, [x24]
004e51eb0 	ldr	x8, [x8, #184]
004e51eb4 	adrp	x9, #90009600 ; -> 0xa428000 
004e51eb8 	ldr	x9, [x9, #2920]
004e51ebc 	ldr	x23, [x8]
004e51ec0 	ldr	x0, [x9]
004e51ec4 	bl	#-9179592 ; -> 0x4590cfc 
004e51ec8 	adrp	x8, #90009600 ; -> 0xa428000 
004e51ecc 	mov	x1, x23
004e51ed0 	mov	x3, xzr
004e51ed4 	ldr	x8, [x8, #2928]
004e51ed8 	mov	x22, x0
004e51edc 	ldr	x2, [x8]
004e51ee0 	bl	#26126416 ; -> 0x673c730 
004e51ee4 	ldr	x8, [x24]
004e51ee8 	mov	x1, x22
004e51eec 	ldr	x0, [x8, #184]
004e51ef0 	str	x22, [x0, #152]!
004e51ef4 	bl	#-9180400 ; -> 0x4590a04 
004e51ef8 	adrp	x8, #90009600 ; -> 0xa428000 
004e51efc 	mov	x0, x20
004e51f00 	mov	x1, x21
004e51f04 	ldr	x8, [x8, #2936]
004e51f08 	mov	x2, x22
004e51f0c 	ldr	x3, [x8]
004e51f10 	bl	#20966848 ; -> 0x6250cd0 
004e51f14 	cbz	x0, #144 ; -> 0x4e51fa4 
004e51f18 	ldr	x8, [x0, #40]
004e51f1c 	cbz	x8, #136 ; -> 0x4e51fa4 
004e51f20 	ldr	w9, [x8, #24]
004e51f24 	cbz	w9, #132 ; -> 0x4e51fa8 
004e51f28 	ldr	x9, [x19]
004e51f2c 	mov	x0, x19
004e51f30 	ldr	w1, [x8, #32]
004e51f34 	ldp	x20, x19, [sp, #48]
004e51f38 	ldp	x22, x21, [sp, #32]
004e51f3c 	ldr	x2, [x9, #976]
004e51f40 	ldp	x24, x23, [sp, #16]
004e51f44 	ldr	x3, [x9, #968]
004e51f48 	ldr	x30, [sp], #64
004e51f4c 	br	x3
004e51f50 	ldr	x0, [x19, #120]
004e51f54 	cbz	x0, #80 ; -> 0x4e51fa4 
004e51f58 	ldr	x1, [x20, #1448]
004e51f5c 	mov	x2, xzr
004e51f60 	bl	#79036888 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004e51f64 	ldr	x0, [x19, #336]
004e51f68 	cbz	x0, #60 ; -> 0x4e51fa4 
004e51f6c 	ldp	x20, x19, [sp, #48]
004e51f70 	fmov	s0, #1.50000000
004e51f74 	ldp	x22, x21, [sp, #32]
004e51f78 	fmov	s1, #1.50000000
004e51f7c 	ldp	x24, x23, [sp, #16]
004e51f80 	fmov	s2, #1.50000000
004e51f84 	mov	x1, xzr
004e51f88 	ldr	x30, [sp], #64
004e51f8c 	b	#79436480 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004e51f90 	ldp	x20, x19, [sp, #48]
004e51f94 	ldp	x22, x21, [sp, #32]
004e51f98 	ldp	x24, x23, [sp, #16]
004e51f9c 	ldr	x30, [sp], #64
004e51fa0 	ret
004e51fa4 	bl	#-9179800 ; -> 0x4590d0c 
004e51fa8 	bl	#-9179796 ; -> 0x4590d14 
