0051efd24 	sub	sp, sp, #48
0051efd28 	stp	x30, x21, [sp, #16]
0051efd2c 	stp	x20, x19, [sp, #32]
0051efd30 	adrp	x20, #94269440 ; -> 0xabd6000 
0051efd34 	mov	x19, x0
0051efd38 	ldrb	w8, [x20, #3143]
0051efd3c 	tbnz	w8, #0, #60 ; -> 0x51efd78 
0051efd40 	adrp	x0, #86290432 ; -> 0xa43a000 
0051efd44 	ldr	x0, [x0, #16]
0051efd48 	bl	#-12972776 ; -> 0x4590a60 
0051efd4c 	adrp	x0, #86290432 ; -> 0xa43a000 
0051efd50 	ldr	x0, [x0, #24]
0051efd54 	bl	#-12972788 ; -> 0x4590a60 
0051efd58 	adrp	x0, #85962752 ; -> 0xa3ea000 
0051efd5c 	ldr	x0, [x0, #1488]
0051efd60 	bl	#-12972800 ; -> 0x4590a60 
0051efd64 	adrp	x0, #85987328 ; -> 0xa3f0000 
0051efd68 	ldr	x0, [x0, #2048]
0051efd6c 	bl	#-12972812 ; -> 0x4590a60 
0051efd70 	mov	w8, #1
0051efd74 	strb	w8, [x20, #3143]
0051efd78 	mov	w0, #33707
0051efd7c 	mov	x1, xzr
0051efd80 	bl	#-5933020 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051efd84 	tbz	w0, #0, #44 ; -> 0x51efdb0 
0051efd88 	mov	w0, #33707
0051efd8c 	mov	x1, xzr
0051efd90 	bl	#-5932856 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051efd94 	cbz	x0, #276 ; -> 0x51efea8 
0051efd98 	mov	x1, x19
0051efd9c 	ldp	x20, x19, [sp, #32]
0051efda0 	ldp	x30, x21, [sp, #16]
0051efda4 	mov	x2, xzr
0051efda8 	add	sp, sp, #48
0051efdac 	b	#-6756492 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0051efdb0 	mov	x0, x19
0051efdb4 	mov	x1, xzr
0051efdb8 	bl	#-11192164 ; -> 0x4743654 Gear2Framework.Common.ExtensionMethods::IsNullOrEmpty
0051efdbc 	tbnz	w0, #0, #152 ; -> 0x51efe54 
0051efdc0 	adrp	x8, #85962752 ; -> 0xa3ea000 
0051efdc4 	ldr	x8, [x8, #1488]
0051efdc8 	str	xzr, [sp]
0051efdcc 	ldr	x0, [x8]
0051efdd0 	ldr	w8, [x0, #228]
0051efdd4 	cbnz	w8, #8 ; -> 0x51efddc 
0051efdd8 	bl	#-12972536 ; -> 0x4590be0 
0051efddc 	adrp	x8, #86290432 ; -> 0xa43a000 
0051efde0 	ldr	x8, [x8, #24]
0051efde4 	ldr	x1, [x8]
0051efde8 	mov	x0, x19
0051efdec 	bl	#14158516 ; -> 0x5f708a0 
0051efdf0 	adrp	x21, #85987328 ; -> 0xa3f0000 
0051efdf4 	mov	x20, x0
0051efdf8 	ldr	x21, [x21, #2048]
0051efdfc 	ldr	x0, [x21]
0051efe00 	ldr	w8, [x0, #228]
0051efe04 	cbnz	w8, #12 ; -> 0x51efe10 
0051efe08 	bl	#-12972584 ; -> 0x4590be0 
0051efe0c 	ldr	x0, [x21]
0051efe10 	ldr	x8, [x0, #184]
0051efe14 	str	x20, [x8]
0051efe18 	ldr	x8, [x21]
0051efe1c 	ldr	x0, [x8, #184]
0051efe20 	mov	x1, x20
0051efe24 	bl	#-12973088 ; -> 0x4590a04 
0051efe28 	mov	x19, xzr
0051efe2c 	mov	w20, wzr
0051efe30 	adrp	x8, #85987328 ; -> 0xa3f0000 
0051efe34 	ldr	x8, [x8, #2048]
0051efe38 	ldr	x0, [x8]
0051efe3c 	ldr	w8, [x0, #228]
0051efe40 	cbnz	w8, #8 ; -> 0x51efe48 
0051efe44 	bl	#-12972644 ; -> 0x4590be0 
0051efe48 	bl	#1180 ; -> 0x51f02e4 ServerPrefs::ResetAllDirtyFlag
0051efe4c 	cbnz	x19, #96 ; -> 0x51efeac 
0051efe50 	cbz	w20, #72 ; -> 0x51efe98 
0051efe54 	adrp	x19, #85987328 ; -> 0xa3f0000 
0051efe58 	ldr	x19, [x19, #2048]
0051efe5c 	ldr	x0, [x19]
0051efe60 	ldr	w8, [x0, #228]
0051efe64 	cbnz	w8, #12 ; -> 0x51efe70 
0051efe68 	bl	#-12972680 ; -> 0x4590be0 
0051efe6c 	ldr	x0, [x19]
0051efe70 	ldr	x8, [x0, #184]
0051efe74 	ldr	x0, [x8]
0051efe78 	cbz	x0, #48 ; -> 0x51efea8 
0051efe7c 	adrp	x8, #86290432 ; -> 0xa43a000 
0051efe80 	ldr	x8, [x8, #16]
0051efe84 	ldp	x20, x19, [sp, #32]
0051efe88 	ldp	x30, x21, [sp, #16]
0051efe8c 	ldr	x1, [x8]
0051efe90 	add	sp, sp, #48
0051efe94 	b	#50040260 ; -> 0x81a8c58 
0051efe98 	ldp	x20, x19, [sp, #32]
0051efe9c 	ldp	x30, x21, [sp, #16]
0051efea0 	add	sp, sp, #48
0051efea4 	ret
0051efea8 	bl	#-12972444 ; -> 0x4590d0c 
0051efeac 	mov	x0, x19
0051efeb0 	bl	#-12972460 ; -> 0x4590d04 
0051efeb4 	mov	x20, x0
0051efeb8 	b	#8 ; -> 0x51efec0 
0051efebc 	mov	x20, x0
0051efec0 	cmp	w1, #1
0051efec4 	b.ne	#224 ; -> 0x51effa4 
0051efec8 	mov	x0, x20
0051efecc 	bl	#79149492 ; -> 0x9d6b880 
0051efed0 	mov	x20, x0
0051efed4 	adrp	x0, #85950464 ; -> 0xa3e7000 
0051efed8 	ldr	x0, [x0, #3064]
0051efedc 	bl	#-12973160 ; -> 0x4590a74 
0051efee0 	ldr	x8, [x20]
0051efee4 	ldr	x1, [x8]
0051efee8 	bl	#-12971476 ; -> 0x4591114 
0051efeec 	tbz	w0, #0, #116 ; -> 0x51eff60 
0051efef0 	bl	#79149472 ; -> 0x9d6b890 
0051efef4 	adrp	x0, #86290432 ; -> 0xa43a000 
0051efef8 	ldr	x0, [x0, #32]
0051efefc 	bl	#-12973192 ; -> 0x4590a74 
0051eff00 	mov	x1, x19
0051eff04 	mov	x2, xzr
0051eff08 	bl	#61718336 ; -> 0x8ccbe48 System.String::Concat
0051eff0c 	mov	x1, xzr
0051eff10 	bl	#-11268684 ; -> 0x4730cc4 Gear2Framework.Debug.Gear2Debug::LogError
0051eff14 	adrp	x0, #85987328 ; -> 0xa3f0000 
0051eff18 	ldr	x0, [x0, #2048]
0051eff1c 	bl	#-12973224 ; -> 0x4590a74 
0051eff20 	ldr	w8, [x0, #228]
0051eff24 	cbnz	w8, #8 ; -> 0x51eff2c 
0051eff28 	bl	#-12972872 ; -> 0x4590be0 
0051eff2c 	adrp	x0, #85987328 ; -> 0xa3f0000 
0051eff30 	ldr	x0, [x0, #2048]
0051eff34 	bl	#-12973248 ; -> 0x4590a74 
0051eff38 	ldr	x8, [x0, #184]
0051eff3c 	ldr	x19, [x8]
0051eff40 	cbz	x19, #64 ; -> 0x51eff80 
0051eff44 	adrp	x0, #86290432 ; -> 0xa43a000 
0051eff48 	ldr	x0, [x0, #16]
0051eff4c 	bl	#-12973272 ; -> 0x4590a74 
0051eff50 	mov	x1, x0
0051eff54 	mov	x0, x19
0051eff58 	bl	#50040064 ; -> 0x81a8c58 
0051eff5c 	b	#-308 ; -> 0x51efe28 
0051eff60 	mov	w0, #8
0051eff64 	bl	#79149388 ; -> 0x9d6b8b0 
0051eff68 	ldr	x8, [x20]
0051eff6c 	str	x8, [x0]
0051eff70 	adrp	x1, #79175680 ; -> 0x9d71000 
0051eff74 	add	x1, x1, #3672
0051eff78 	mov	x2, xzr
0051eff7c 	bl	#79149380 ; -> 0x9d6b8c0 
0051eff80 	bl	#-12972660 ; -> 0x4590d0c 
0051eff84 	b	#28 ; -> 0x51effa0 
0051eff88 	mov	x19, x1
0051eff8c 	mov	x20, x0
0051eff90 	bl	#79149312 ; -> 0x9d6b890 
0051eff94 	mov	w1, w19
0051eff98 	b	#12 ; -> 0x51effa4 
0051eff9c 	b	#4 ; -> 0x51effa0 
0051effa0 	mov	x20, x0
0051effa4 	mov	w8, #1
0051effa8 	cmp	w1, w8
0051effac 	b.ne	#36 ; -> 0x51effd0 
0051effb0 	mov	x0, x20
0051effb4 	bl	#79149260 ; -> 0x9d6b880 
0051effb8 	ldr	x19, [x0]
0051effbc 	str	x19, [sp]
0051effc0 	bl	#79149264 ; -> 0x9d6b890 
0051effc4 	mov	w20, #1
0051effc8 	b	#-408 ; -> 0x51efe30 
0051effcc 	mov	x20, x0
0051effd0 	mov	x0, sp
0051effd4 	bl	#-17588312 ; -> 0x4129f7c 
0051effd8 	mov	x0, x20
0051effdc 	bl	#-11788224 ; -> 0x46b201c 
0051effe0 	bl	#-17643392 ; -> 0x411c860 
