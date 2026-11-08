004eea90c 	str	d8, [sp, #-32]!
004eea910 	str	x30, [sp, #8]
004eea914 	stp	x20, x19, [sp, #16]
004eea918 	adrp	x20, #97431552 ; -> 0xabd5000 
004eea91c 	mov	x19, x0
004eea920 	ldrb	w8, [x20, #1438]
004eea924 	tbnz	w8, #0, #36 ; -> 0x4eea948 
004eea928 	adrp	x0, #89325568 ; -> 0xa41a000 
004eea92c 	ldr	x0, [x0, #3856]
004eea930 	bl	#-9805520 ; -> 0x4590a60 
004eea934 	adrp	x0, #89395200 ; -> 0xa42b000 
004eea938 	ldr	x0, [x0, #2272]
004eea93c 	bl	#-9805532 ; -> 0x4590a60 
004eea940 	mov	w8, #1
004eea944 	strb	w8, [x20, #1438]
004eea948 	mov	w0, #6772
004eea94c 	mov	x1, xzr
004eea950 	bl	#-2765740 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eea954 	tbz	w0, #0, #44 ; -> 0x4eea980 
004eea958 	mov	w0, #6772
004eea95c 	mov	x1, xzr
004eea960 	bl	#-2765576 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eea964 	cbz	x0, #308 ; -> 0x4eeaa98 
004eea968 	mov	x1, x19
004eea96c 	ldp	x20, x19, [sp, #16]
004eea970 	ldr	x30, [sp, #8]
004eea974 	mov	x2, xzr
004eea978 	ldr	d8, [sp], #32
004eea97c 	b	#-3589212 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004eea980 	adrp	x20, #89325568 ; -> 0xa41a000 
004eea984 	ldr	x20, [x20, #3856]
004eea988 	ldr	x0, [x20]
004eea98c 	ldr	w8, [x0, #228]
004eea990 	cbnz	w8, #12 ; -> 0x4eea99c 
004eea994 	bl	#-9805236 ; -> 0x4590be0 
004eea998 	ldr	x0, [x20]
004eea99c 	ldr	x8, [x0, #184]
004eea9a0 	fmov	s0, #1.00000000
004eea9a4 	ldr	s1, [x8, #12]
004eea9a8 	fcmp	s1, s0
004eea9ac 	b.pl	#120 ; -> 0x4eeaa24 
004eea9b0 	ldr	x8, [x19]
004eea9b4 	mov	x0, x19
004eea9b8 	ldp	x9, x1, [x8, #440]
004eea9bc 	blr	x9
004eea9c0 	ldr	x0, [x20]
004eea9c4 	fmov	s8, s0
004eea9c8 	ldr	w8, [x0, #228]
004eea9cc 	cbnz	w8, #12 ; -> 0x4eea9d8 
004eea9d0 	bl	#-9805296 ; -> 0x4590be0 
004eea9d4 	ldr	x0, [x20]
004eea9d8 	ldr	x8, [x19, #336]
004eea9dc 	cbz	x8, #188 ; -> 0x4eeaa98 
004eea9e0 	ldr	x9, [x0, #184]
004eea9e4 	mov	x0, x8
004eea9e8 	mov	x2, xzr
004eea9ec 	ldr	s0, [x9, #12]
004eea9f0 	adrp	x9, #89395200 ; -> 0xa42b000 
004eea9f4 	ldr	x9, [x9, #2272]
004eea9f8 	fmul	s8, s8, s0
004eea9fc 	ldr	x1, [x9]
004eeaa00 	fmov	s0, s8
004eeaa04 	bl	#78340140 ; -> 0x99a0a30 UnityEngine.Animator::SetFloat
004eeaa08 	ldr	x8, [x19, #896]
004eeaa0c 	cbz	x8, #124 ; -> 0x4eeaa88 
004eeaa10 	fmov	s0, s8
004eeaa14 	ldr	x0, [x8, #64]
004eeaa18 	ldr	x1, [x8, #40]
004eeaa1c 	ldr	x2, [x8, #24]
004eeaa20 	b	#88 ; -> 0x4eeaa78 
004eeaa24 	ldr	x8, [x19]
004eeaa28 	ldr	x20, [x19, #336]
004eeaa2c 	mov	x0, x19
004eeaa30 	ldp	x9, x1, [x8, #440]
004eeaa34 	blr	x9
004eeaa38 	cbz	x20, #96 ; -> 0x4eeaa98 
004eeaa3c 	adrp	x8, #89395200 ; -> 0xa42b000 
004eeaa40 	mov	x0, x20
004eeaa44 	mov	x2, xzr
004eeaa48 	ldr	x8, [x8, #2272]
004eeaa4c 	ldr	x1, [x8]
004eeaa50 	bl	#78340064 ; -> 0x99a0a30 UnityEngine.Animator::SetFloat
004eeaa54 	ldr	x20, [x19, #896]
004eeaa58 	cbz	x20, #48 ; -> 0x4eeaa88 
004eeaa5c 	ldr	x8, [x19]
004eeaa60 	mov	x0, x19
004eeaa64 	ldp	x9, x1, [x8, #440]
004eeaa68 	blr	x9
004eeaa6c 	ldr	x0, [x20, #64]
004eeaa70 	ldr	x1, [x20, #40]
004eeaa74 	ldr	x2, [x20, #24]
004eeaa78 	ldp	x20, x19, [sp, #16]
004eeaa7c 	ldr	x30, [sp, #8]
004eeaa80 	ldr	d8, [sp], #32
004eeaa84 	br	x2
004eeaa88 	ldp	x20, x19, [sp, #16]
004eeaa8c 	ldr	x30, [sp, #8]
004eeaa90 	ldr	d8, [sp], #32
004eeaa94 	ret
004eeaa98 	bl	#-9805196 ; -> 0x4590d0c 
