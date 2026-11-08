0052a3e7c 	str	x30, [sp, #-48]!
0052a3e80 	stp	x22, x21, [sp, #16]
0052a3e84 	stp	x20, x19, [sp, #32]
0052a3e88 	adrp	x20, #93536256 ; -> 0xabd7000 
0052a3e8c 	mov	x19, x0
0052a3e90 	ldrb	w8, [x20, #426]
0052a3e94 	tbnz	w8, #0, #60 ; -> 0x52a3ed0 
0052a3e98 	adrp	x0, #85213184 ; -> 0xa3e7000 
0052a3e9c 	ldr	x0, [x0, #2992]
0052a3ea0 	bl	#-13710400 ; -> 0x4590a60 
0052a3ea4 	adrp	x0, #85221376 ; -> 0xa3e9000 
0052a3ea8 	ldr	x0, [x0, #2504]
0052a3eac 	bl	#-13710412 ; -> 0x4590a60 
0052a3eb0 	adrp	x0, #85565440 ; -> 0xa43d000 
0052a3eb4 	ldr	x0, [x0, #2304]
0052a3eb8 	bl	#-13710424 ; -> 0x4590a60 
0052a3ebc 	adrp	x0, #85565440 ; -> 0xa43d000 
0052a3ec0 	ldr	x0, [x0, #1896]
0052a3ec4 	bl	#-13710436 ; -> 0x4590a60 
0052a3ec8 	mov	w8, #1
0052a3ecc 	strb	w8, [x20, #426]
0052a3ed0 	mov	w0, #43220
0052a3ed4 	mov	x1, xzr
0052a3ed8 	bl	#-6670644 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a3edc 	tbz	w0, #0, #44 ; -> 0x52a3f08 
0052a3ee0 	mov	w0, #43220
0052a3ee4 	mov	x1, xzr
0052a3ee8 	bl	#-6670480 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a3eec 	cbz	x0, #292 ; -> 0x52a4010 
0052a3ef0 	mov	x1, x19
0052a3ef4 	ldp	x20, x19, [sp, #32]
0052a3ef8 	ldp	x22, x21, [sp, #16]
0052a3efc 	mov	x2, xzr
0052a3f00 	ldr	x30, [sp], #48
0052a3f04 	b	#-7494116 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052a3f08 	ldrb	w8, [x19, #336]
0052a3f0c 	cbz	w8, #244 ; -> 0x52a4000 
0052a3f10 	adrp	x22, #85565440 ; -> 0xa43d000 
0052a3f14 	ldr	x22, [x22, #1896]
0052a3f18 	ldr	x0, [x22]
0052a3f1c 	ldr	w8, [x0, #228]
0052a3f20 	cbnz	w8, #12 ; -> 0x52a3f2c 
0052a3f24 	bl	#-13710148 ; -> 0x4590be0 
0052a3f28 	ldr	x0, [x22]
0052a3f2c 	ldr	x8, [x0, #184]
0052a3f30 	ldr	x20, [x8, #88]
0052a3f34 	cbnz	x20, #92 ; -> 0x52a3f90 
0052a3f38 	ldr	w9, [x0, #228]
0052a3f3c 	cbnz	w9, #16 ; -> 0x52a3f4c 
0052a3f40 	bl	#-13710176 ; -> 0x4590be0 
0052a3f44 	ldr	x8, [x22]
0052a3f48 	ldr	x8, [x8, #184]
0052a3f4c 	adrp	x9, #85213184 ; -> 0xa3e7000 
0052a3f50 	ldr	x9, [x9, #2992]
0052a3f54 	ldr	x21, [x8]
0052a3f58 	ldr	x0, [x9]
0052a3f5c 	bl	#-13709920 ; -> 0x4590cfc 
0052a3f60 	adrp	x8, #85565440 ; -> 0xa43d000 
0052a3f64 	mov	x1, x21
0052a3f68 	mov	x3, xzr
0052a3f6c 	ldr	x8, [x8, #2304]
0052a3f70 	mov	x20, x0
0052a3f74 	ldr	x2, [x8]
0052a3f78 	bl	#62048996 ; -> 0x8dd0a5c System.Action::.ctor
0052a3f7c 	ldr	x8, [x22]
0052a3f80 	mov	x1, x20
0052a3f84 	ldr	x0, [x8, #184]
0052a3f88 	str	x20, [x0, #88]!
0052a3f8c 	bl	#-13710728 ; -> 0x4590a04 
0052a3f90 	add	x0, x19, #328
0052a3f94 	mov	x1, x20
0052a3f98 	str	x20, [x19, #328]
0052a3f9c 	bl	#-13710744 ; -> 0x4590a04 
0052a3fa0 	adrp	x21, #85221376 ; -> 0xa3e9000 
0052a3fa4 	ldr	x21, [x21, #2504]
0052a3fa8 	ldr	x20, [x19, #288]
0052a3fac 	ldr	x0, [x21]
0052a3fb0 	ldr	w8, [x0, #228]
0052a3fb4 	cbnz	w8, #8 ; -> 0x52a3fbc 
0052a3fb8 	bl	#-13710296 ; -> 0x4590be0 
0052a3fbc 	cbz	x20, #84 ; -> 0x52a4010 
0052a3fc0 	ldr	x8, [x21]
0052a3fc4 	mov	x0, x20
0052a3fc8 	mov	x2, xzr
0052a3fcc 	ldr	x8, [x8, #184]
0052a3fd0 	ldr	w1, [x8, #8]
0052a3fd4 	bl	#74437748 ; -> 0x99a1448 UnityEngine.Animator::SetTrigger
0052a3fd8 	mov	x0, xzr
0052a3fdc 	strb	wzr, [x19, #336]
0052a3fe0 	bl	#-11534224 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
0052a3fe4 	cbz	x0, #44 ; -> 0x52a4010 
0052a3fe8 	ldp	x20, x19, [sp, #32]
0052a3fec 	mov	w1, #33
0052a3ff0 	ldp	x22, x21, [sp, #16]
0052a3ff4 	mov	x2, xzr
0052a3ff8 	ldr	x30, [sp], #48
0052a3ffc 	b	#-11510356 ; -> 0x47a9da8 Gear2.GrowSlayer.Logging.KinesisLog::OpeningSkip
0052a4000 	ldp	x20, x19, [sp, #32]
0052a4004 	ldp	x22, x21, [sp, #16]
0052a4008 	ldr	x30, [sp], #48
0052a400c 	ret
0052a4010 	bl	#-13710084 ; -> 0x4590d0c 
