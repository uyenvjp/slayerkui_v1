0050ca0bc 	str	x30, [sp, #-48]!
0050ca0c0 	stp	x22, x21, [sp, #16]
0050ca0c4 	stp	x20, x19, [sp, #32]
0050ca0c8 	adrp	x20, #95469568 ; -> 0xabd6000 
0050ca0cc 	mov	w19, w0
0050ca0d0 	ldrb	w8, [x20, #861]
0050ca0d4 	tbnz	w8, #0, #84 ; -> 0x50ca128 
0050ca0d8 	adrp	x0, #87179264 ; -> 0xa3ee000 
0050ca0dc 	ldr	x0, [x0, #3648]
0050ca0e0 	bl	#-11769472 ; -> 0x4590a60 
0050ca0e4 	adrp	x0, #87461888 ; -> 0xa433000 
0050ca0e8 	ldr	x0, [x0, #3632]
0050ca0ec 	bl	#-11769484 ; -> 0x4590a60 
0050ca0f0 	adrp	x0, #87158784 ; -> 0xa3e9000 
0050ca0f4 	ldr	x0, [x0, #1384]
0050ca0f8 	bl	#-11769496 ; -> 0x4590a60 
0050ca0fc 	adrp	x0, #87191552 ; -> 0xa3f1000 
0050ca100 	ldr	x0, [x0, #2632]
0050ca104 	bl	#-11769508 ; -> 0x4590a60 
0050ca108 	adrp	x0, #87461888 ; -> 0xa433000 
0050ca10c 	ldr	x0, [x0, #3640]
0050ca110 	bl	#-11769520 ; -> 0x4590a60 
0050ca114 	adrp	x0, #87461888 ; -> 0xa433000 
0050ca118 	ldr	x0, [x0, #3648]
0050ca11c 	bl	#-11769532 ; -> 0x4590a60 
0050ca120 	mov	w8, #1
0050ca124 	strb	w8, [x20, #861]
0050ca128 	mov	w0, #3765
0050ca12c 	mov	x1, xzr
0050ca130 	bl	#-4729740 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050ca134 	tbz	w0, #0, #44 ; -> 0x50ca160 
0050ca138 	mov	w0, #3765
0050ca13c 	mov	x1, xzr
0050ca140 	bl	#-4729576 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050ca144 	cbz	x0, #272 ; -> 0x50ca254 
0050ca148 	mov	w1, w19
0050ca14c 	ldp	x20, x19, [sp, #32]
0050ca150 	ldp	x22, x21, [sp, #16]
0050ca154 	mov	x2, xzr
0050ca158 	ldr	x30, [sp], #48
0050ca15c 	b	#-5521520 ; -> 0x4b860ec IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_152
0050ca160 	adrp	x8, #87461888 ; -> 0xa433000 
0050ca164 	adrp	x21, #87461888 ; -> 0xa433000 
0050ca168 	ldr	x8, [x8, #3648]
0050ca16c 	ldr	x21, [x21, #3632]
0050ca170 	ldr	x0, [x8]
0050ca174 	bl	#-11768952 ; -> 0x4590cfc 
0050ca178 	mov	x1, xzr
0050ca17c 	mov	x20, x0
0050ca180 	bl	#-9123140 ; -> 0x4816c3c APIManager+<>c__DisplayClass98_0::.ctor
0050ca184 	ldr	x0, [x21]
0050ca188 	bl	#-11768972 ; -> 0x4590cfc 
0050ca18c 	mov	x1, xzr
0050ca190 	mov	x21, x0
0050ca194 	bl	#60209476 ; -> 0x8a35ad8 GrowSlayer.ClearBossStageRequest::.ctor
0050ca198 	cbz	x21, #188 ; -> 0x50ca254 
0050ca19c 	adrp	x22, #87158784 ; -> 0xa3e9000 
0050ca1a0 	ldr	x22, [x22, #1384]
0050ca1a4 	str	w19, [x21, #24]
0050ca1a8 	ldr	x0, [x22]
0050ca1ac 	ldr	w8, [x0, #228]
0050ca1b0 	cbnz	w8, #12 ; -> 0x50ca1bc 
0050ca1b4 	bl	#-11769300 ; -> 0x4590be0 
0050ca1b8 	ldr	x0, [x22]
0050ca1bc 	ldr	x8, [x0, #184]
0050ca1c0 	ldr	w9, [x8, #304]
0050ca1c4 	ldr	s0, [x8, #300]
0050ca1c8 	mov	w8, #1
0050ca1cc 	strb	w8, [x21, #44]
0050ca1d0 	str	w9, [x21, #40]
0050ca1d4 	str	s0, [x21, #48]
0050ca1d8 	cbz	x20, #124 ; -> 0x50ca254 
0050ca1dc 	mov	x22, x20
0050ca1e0 	mov	x1, x21
0050ca1e4 	str	x21, [x22, #16]!
0050ca1e8 	mov	x0, x22
0050ca1ec 	bl	#-11769832 ; -> 0x4590a04 
0050ca1f0 	adrp	x8, #87191552 ; -> 0xa3f1000 
0050ca1f4 	ldr	x8, [x8, #2632]
0050ca1f8 	ldr	x0, [x8]
0050ca1fc 	bl	#-11769088 ; -> 0x4590cfc 
0050ca200 	adrp	x8, #87461888 ; -> 0xa433000 
0050ca204 	mov	x1, x20
0050ca208 	mov	x3, xzr
0050ca20c 	ldr	x8, [x8, #3640]
0050ca210 	mov	x19, x0
0050ca214 	ldr	x2, [x8]
0050ca218 	bl	#23487452 ; -> 0x67305f4 
0050ca21c 	adrp	x8, #87179264 ; -> 0xa3ee000 
0050ca220 	ldr	x8, [x8, #3648]
0050ca224 	ldr	x20, [x22]
0050ca228 	ldr	x0, [x8]
0050ca22c 	ldr	w8, [x0, #228]
0050ca230 	cbnz	w8, #8 ; -> 0x50ca238 
0050ca234 	bl	#-11769428 ; -> 0x4590be0 
0050ca238 	mov	x1, x19
0050ca23c 	mov	x2, x20
0050ca240 	mov	w0, #116
0050ca244 	ldp	x20, x19, [sp, #32]
0050ca248 	ldp	x22, x21, [sp, #16]
0050ca24c 	ldr	x30, [sp], #48
0050ca250 	b	#-34828 ; -> 0x50c1a44 APIManager::AddRequest
0050ca254 	bl	#-11769160 ; -> 0x4590d0c 
