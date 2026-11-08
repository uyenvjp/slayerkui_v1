004f15fa8 	str	x30, [sp, #-32]!
004f15fac 	stp	x20, x19, [sp, #16]
004f15fb0 	adrp	x20, #97255424 ; -> 0xabd5000 
004f15fb4 	mov	x19, x0
004f15fb8 	ldrb	w8, [x20, #1714]
004f15fbc 	tbnz	w8, #0, #36 ; -> 0x4f15fe0 
004f15fc0 	adrp	x0, #88948736 ; -> 0xa3e9000 
004f15fc4 	ldr	x0, [x0, #1384]
004f15fc8 	bl	#-9983336 ; -> 0x4590a60 
004f15fcc 	adrp	x0, #88973312 ; -> 0xa3ef000 
004f15fd0 	ldr	x0, [x0, #3424]
004f15fd4 	bl	#-9983348 ; -> 0x4590a60 
004f15fd8 	mov	w8, #1
004f15fdc 	strb	w8, [x20, #1714]
004f15fe0 	mov	w0, #33182
004f15fe4 	mov	x1, xzr
004f15fe8 	bl	#-2943556 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f15fec 	tbz	w0, #0, #40 ; -> 0x4f16014 
004f15ff0 	mov	w0, #33182
004f15ff4 	mov	x1, xzr
004f15ff8 	bl	#-2943392 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f15ffc 	cbz	x0, #116 ; -> 0x4f16070 
004f16000 	mov	x1, x19
004f16004 	ldp	x20, x19, [sp, #16]
004f16008 	mov	x2, xzr
004f1600c 	ldr	x30, [sp], #32
004f16010 	b	#-3767024 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f16014 	adrp	x8, #88969216 ; -> 0xa3ef000 
004f16018 	adrp	x20, #88944640 ; -> 0xa3e9000 
004f1601c 	mov	x1, x19
004f16020 	ldr	x8, [x8, #3424]
004f16024 	ldr	x9, [x8]
004f16028 	ldr	x9, [x9, #184]
004f1602c 	str	x19, [x9]
004f16030 	ldr	x8, [x8]
004f16034 	ldr	x20, [x20, #1384]
004f16038 	ldr	x0, [x8, #184]
004f1603c 	bl	#-9983544 ; -> 0x4590a04 
004f16040 	ldr	x0, [x20]
004f16044 	ldr	w8, [x0, #228]
004f16048 	cbnz	w8, #12 ; -> 0x4f16054 
004f1604c 	bl	#-9983084 ; -> 0x4590be0 
004f16050 	ldr	x0, [x20]
004f16054 	ldr	x8, [x0, #184]
004f16058 	ldr	x1, [x8]
004f1605c 	str	x1, [x19, #144]!
004f16060 	mov	x0, x19
004f16064 	ldp	x20, x19, [sp, #16]
004f16068 	ldr	x30, [sp], #32
004f1606c 	b	#-9983592 ; -> 0x4590a04 
004f16070 	bl	#-9982820 ; -> 0x4590d0c 
