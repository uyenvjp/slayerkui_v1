004fd8d80 	sub	sp, sp, #96
004fd8d84 	stp	x30, x23, [sp, #48]
004fd8d88 	stp	x22, x21, [sp, #64]
004fd8d8c 	stp	x20, x19, [sp, #80]
004fd8d90 	adrp	x21, #96456704 ; -> 0xabd5000 
004fd8d94 	mov	x20, x1
004fd8d98 	mov	x19, x0
004fd8d9c 	ldrb	w8, [x21, #3180]
004fd8da0 	tbnz	w8, #0, #60 ; -> 0x4fd8ddc 
004fd8da4 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8da8 	ldr	x0, [x0, #1328]
004fd8dac 	bl	#-10781516 ; -> 0x4590a60 
004fd8db0 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8db4 	ldr	x0, [x0, #1440]
004fd8db8 	bl	#-10781528 ; -> 0x4590a60 
004fd8dbc 	adrp	x0, #88145920 ; -> 0xa3e8000 
004fd8dc0 	ldr	x0, [x0, #160]
004fd8dc4 	bl	#-10781540 ; -> 0x4590a60 
004fd8dc8 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8dcc 	ldr	x0, [x0, #416]
004fd8dd0 	bl	#-10781552 ; -> 0x4590a60 
004fd8dd4 	mov	w8, #1
004fd8dd8 	strb	w8, [x21, #3180]
004fd8ddc 	mov	w0, #3438
004fd8de0 	mov	x1, xzr
004fd8de4 	str	xzr, [sp, #40]
004fd8de8 	str	wzr, [sp, #32]
004fd8dec 	bl	#-3741768 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd8df0 	tbz	w0, #0, #52 ; -> 0x4fd8e24 
004fd8df4 	mov	w0, #3438
004fd8df8 	mov	x1, xzr
004fd8dfc 	bl	#-3741604 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd8e00 	cbz	x0, #396 ; -> 0x4fd8f8c 
004fd8e04 	mov	x1, x19
004fd8e08 	mov	x2, x20
004fd8e0c 	mov	x3, xzr
004fd8e10 	ldp	x20, x19, [sp, #80]
004fd8e14 	ldp	x22, x21, [sp, #64]
004fd8e18 	ldp	x30, x23, [sp, #48]
004fd8e1c 	add	sp, sp, #96
004fd8e20 	b	#-4557448 ; -> 0x4b80398 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_42
004fd8e24 	cbz	x20, #164 ; -> 0x4fd8ec8 
004fd8e28 	ldr	x8, [x20, #24]
004fd8e2c 	cbz	x8, #156 ; -> 0x4fd8ec8 
004fd8e30 	adrp	x8, #88145920 ; -> 0xa3e8000 
004fd8e34 	ldr	x8, [x8, #160]
004fd8e38 	ldr	x0, [x8]
004fd8e3c 	bl	#-10780992 ; -> 0x4590cfc 
004fd8e40 	mov	x1, x20
004fd8e44 	mov	w2, wzr
004fd8e48 	mov	x3, xzr
004fd8e4c 	mov	x21, x0
004fd8e50 	bl	#65338864 ; -> 0x8e28c40 System.IO.MemoryStream::.ctor
004fd8e54 	add	x23, sp, #40
004fd8e58 	str	x21, [sp, #40]
004fd8e5c 	stp	xzr, x23, [sp, #8]
004fd8e60 	mov	x0, x19
004fd8e64 	mov	x1, x21
004fd8e68 	bl	#-964 ; -> 0x4fd8aa4 IFixRuntimePatcher::ApplyIFixPatch
004fd8e6c 	mov	w19, w0
004fd8e70 	mov	x20, xzr
004fd8e74 	mov	w22, wzr
004fd8e78 	ldr	x21, [x23]
004fd8e7c 	cbz	x21, #152 ; -> 0x4fd8f14 
004fd8e80 	adrp	x10, #88141824 ; -> 0xa3e7000 
004fd8e84 	ldr	x8, [x21]
004fd8e88 	ldr	x10, [x10, #1440]
004fd8e8c 	ldrh	w9, [x8, #302]
004fd8e90 	ldr	x1, [x10]
004fd8e94 	cbz	x9, #36 ; -> 0x4fd8eb8 
004fd8e98 	ldr	x10, [x8, #176]
004fd8e9c 	add	x10, x10, #8
004fd8ea0 	ldur	x11, [x10, #-8]
004fd8ea4 	cmp	x11, x1
004fd8ea8 	b.eq	#84 ; -> 0x4fd8efc 
004fd8eac 	subs	x9, x9, #1
004fd8eb0 	add	x10, x10, #16
004fd8eb4 	b.ne	#-20 ; -> 0x4fd8ea0 
004fd8eb8 	mov	x0, x21
004fd8ebc 	mov	w2, wzr
004fd8ec0 	bl	#-10550364 ; -> 0x45c9264 
004fd8ec4 	b	#68 ; -> 0x4fd8f08 
004fd8ec8 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd8ecc 	ldr	x8, [x8, #1328]
004fd8ed0 	ldr	x0, [x8]
004fd8ed4 	ldr	w8, [x0, #228]
004fd8ed8 	cbnz	w8, #8 ; -> 0x4fd8ee0 
004fd8edc 	bl	#-10781436 ; -> 0x4590be0 
004fd8ee0 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd8ee4 	mov	x1, xzr
004fd8ee8 	ldr	x8, [x8, #416]
004fd8eec 	ldr	x0, [x8]
004fd8ef0 	bl	#77496372 ; -> 0x99c0f24 UnityEngine.Debug::LogError
004fd8ef4 	mov	w19, wzr
004fd8ef8 	b	#124 ; -> 0x4fd8f74 
004fd8efc 	ldrsw	x9, [x10]
004fd8f00 	add	x8, x8, x9, lsl #4
004fd8f04 	add	x0, x8, #312
004fd8f08 	ldp	x8, x1, [x0]
004fd8f0c 	mov	x0, x21
004fd8f10 	blr	x8
004fd8f14 	cbnz	x20, #124 ; -> 0x4fd8f90 
004fd8f18 	cbz	w22, #92 ; -> 0x4fd8f74 
004fd8f1c 	ldr	w8, [sp, #32]
004fd8f20 	sub	w20, w8, #1
004fd8f24 	add	x8, sp, #24
004fd8f28 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8f2c 	ldr	x19, [x8, w20, sxtw #3]
004fd8f30 	ldr	x0, [x0, #424]
004fd8f34 	bl	#-10781888 ; -> 0x4590a74 
004fd8f38 	mov	x1, x19
004fd8f3c 	mov	x2, xzr
004fd8f40 	bl	#63896900 ; -> 0x8cc8c84 System.String::Format
004fd8f44 	mov	x19, x0
004fd8f48 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8f4c 	ldr	x0, [x0, #1328]
004fd8f50 	bl	#-10781916 ; -> 0x4590a74 
004fd8f54 	ldr	w8, [x0, #228]
004fd8f58 	cbnz	w8, #8 ; -> 0x4fd8f60 
004fd8f5c 	bl	#-10781564 ; -> 0x4590be0 
004fd8f60 	mov	x0, x19
004fd8f64 	mov	x1, xzr
004fd8f68 	bl	#77496252 ; -> 0x99c0f24 UnityEngine.Debug::LogError
004fd8f6c 	mov	w19, wzr
004fd8f70 	str	w20, [sp, #32]
004fd8f74 	and	w0, w19, #0x1
004fd8f78 	ldp	x20, x19, [sp, #80]
004fd8f7c 	ldp	x22, x21, [sp, #64]
004fd8f80 	ldp	x30, x23, [sp, #48]
004fd8f84 	add	sp, sp, #96
004fd8f88 	ret
004fd8f8c 	bl	#-10781312 ; -> 0x4590d0c 
004fd8f90 	mov	x0, x20
004fd8f94 	bl	#-10781328 ; -> 0x4590d04 
004fd8f98 	mov	x20, x1
004fd8f9c 	mov	x19, x0
004fd8fa0 	cmp	w20, #1
004fd8fa4 	b.ne	#48 ; -> 0x4fd8fd4 
004fd8fa8 	mov	x0, x19
004fd8fac 	bl	#81340628 ; -> 0x9d6b880 
004fd8fb0 	ldr	x20, [x0]
004fd8fb4 	str	x20, [sp, #8]
004fd8fb8 	bl	#81340632 ; -> 0x9d6b890 
004fd8fbc 	ldr	x23, [sp, #16]
004fd8fc0 	mov	w19, wzr
004fd8fc4 	mov	w22, #1
004fd8fc8 	b	#-336 ; -> 0x4fd8e78 
004fd8fcc 	mov	x20, x1
004fd8fd0 	mov	x19, x0
004fd8fd4 	add	x0, sp, #8
004fd8fd8 	bl	#-15451676 ; -> 0x411c9bc 
004fd8fdc 	b	#16 ; -> 0x4fd8fec 
004fd8fe0 	b	#4 ; -> 0x4fd8fe4 
004fd8fe4 	mov	x20, x1
004fd8fe8 	mov	x19, x0
004fd8fec 	cmp	w20, #1
004fd8ff0 	b.ne	#116 ; -> 0x4fd9064 
004fd8ff4 	mov	x0, x19
004fd8ff8 	bl	#81340552 ; -> 0x9d6b880 
004fd8ffc 	mov	x19, x0
004fd9000 	adrp	x0, #88137728 ; -> 0xa3e7000 
004fd9004 	ldr	x0, [x0, #3064]
004fd9008 	bl	#-10782100 ; -> 0x4590a74 
004fd900c 	ldr	x8, [x19]
004fd9010 	ldr	x1, [x8]
004fd9014 	bl	#-10780416 ; -> 0x4591114 
004fd9018 	tbz	w0, #0, #36 ; -> 0x4fd903c 
004fd901c 	ldrsw	x20, [sp, #32]
004fd9020 	ldr	x8, [x19]
004fd9024 	add	x9, sp, #24
004fd9028 	str	x8, [x9, x20, lsl #3]
004fd902c 	add	w8, w20, #1
004fd9030 	str	w8, [sp, #32]
004fd9034 	bl	#81340508 ; -> 0x9d6b890 
004fd9038 	b	#-276 ; -> 0x4fd8f24 
004fd903c 	mov	w0, #8
004fd9040 	bl	#81340528 ; -> 0x9d6b8b0 
004fd9044 	ldr	x8, [x19]
004fd9048 	str	x8, [x0]
004fd904c 	adrp	x1, #81362944 ; -> 0x9d71000 
004fd9050 	add	x1, x1, #3672
004fd9054 	mov	x2, xzr
004fd9058 	bl	#81340520 ; -> 0x9d6b8c0 
004fd905c 	mov	x19, x0
004fd9060 	bl	#81340464 ; -> 0x9d6b890 
004fd9064 	mov	x0, x19
004fd9068 	bl	#-9597004 ; -> 0x46b201c 
004fd906c 	bl	#-15452172 ; -> 0x411c860 
