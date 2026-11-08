0052a3ce4 	str	x30, [sp, #-48]!
0052a3ce8 	stp	x22, x21, [sp, #16]
0052a3cec 	stp	x20, x19, [sp, #32]
0052a3cf0 	adrp	x20, #93536256 ; -> 0xabd7000 
0052a3cf4 	mov	x19, x0
0052a3cf8 	ldrb	w8, [x20, #425]
0052a3cfc 	tbnz	w8, #0, #60 ; -> 0x52a3d38 
0052a3d00 	adrp	x0, #85213184 ; -> 0xa3e7000 
0052a3d04 	ldr	x0, [x0, #2992]
0052a3d08 	bl	#-13709992 ; -> 0x4590a60 
0052a3d0c 	adrp	x0, #85221376 ; -> 0xa3e9000 
0052a3d10 	ldr	x0, [x0, #2504]
0052a3d14 	bl	#-13710004 ; -> 0x4590a60 
0052a3d18 	adrp	x0, #85565440 ; -> 0xa43d000 
0052a3d1c 	ldr	x0, [x0, #2296]
0052a3d20 	bl	#-13710016 ; -> 0x4590a60 
0052a3d24 	adrp	x0, #85565440 ; -> 0xa43d000 
0052a3d28 	ldr	x0, [x0, #1896]
0052a3d2c 	bl	#-13710028 ; -> 0x4590a60 
0052a3d30 	mov	w8, #1
0052a3d34 	strb	w8, [x20, #425]
0052a3d38 	mov	w0, #43218
0052a3d3c 	mov	x1, xzr
0052a3d40 	bl	#-6670236 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a3d44 	tbz	w0, #0, #44 ; -> 0x52a3d70 
0052a3d48 	mov	w0, #43218
0052a3d4c 	mov	x1, xzr
0052a3d50 	bl	#-6670072 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a3d54 	cbz	x0, #292 ; -> 0x52a3e78 
0052a3d58 	mov	x1, x19
0052a3d5c 	ldp	x20, x19, [sp, #32]
0052a3d60 	ldp	x22, x21, [sp, #16]
0052a3d64 	mov	x2, xzr
0052a3d68 	ldr	x30, [sp], #48
0052a3d6c 	b	#-7493708 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052a3d70 	ldrb	w8, [x19, #336]
0052a3d74 	cbz	w8, #244 ; -> 0x52a3e68 
0052a3d78 	adrp	x22, #85565440 ; -> 0xa43d000 
0052a3d7c 	ldr	x22, [x22, #1896]
0052a3d80 	ldr	x0, [x22]
0052a3d84 	ldr	w8, [x0, #228]
0052a3d88 	cbnz	w8, #12 ; -> 0x52a3d94 
0052a3d8c 	bl	#-13709740 ; -> 0x4590be0 
0052a3d90 	ldr	x0, [x22]
0052a3d94 	ldr	x8, [x0, #184]
0052a3d98 	ldr	x20, [x8, #80]
0052a3d9c 	cbnz	x20, #92 ; -> 0x52a3df8 
0052a3da0 	ldr	w9, [x0, #228]
0052a3da4 	cbnz	w9, #16 ; -> 0x52a3db4 
0052a3da8 	bl	#-13709768 ; -> 0x4590be0 
0052a3dac 	ldr	x8, [x22]
0052a3db0 	ldr	x8, [x8, #184]
0052a3db4 	adrp	x9, #85213184 ; -> 0xa3e7000 
0052a3db8 	ldr	x9, [x9, #2992]
0052a3dbc 	ldr	x21, [x8]
0052a3dc0 	ldr	x0, [x9]
0052a3dc4 	bl	#-13709512 ; -> 0x4590cfc 
0052a3dc8 	adrp	x8, #85565440 ; -> 0xa43d000 
0052a3dcc 	mov	x1, x21
0052a3dd0 	mov	x3, xzr
0052a3dd4 	ldr	x8, [x8, #2296]
0052a3dd8 	mov	x20, x0
0052a3ddc 	ldr	x2, [x8]
0052a3de0 	bl	#62049404 ; -> 0x8dd0a5c System.Action::.ctor
0052a3de4 	ldr	x8, [x22]
0052a3de8 	mov	x1, x20
0052a3dec 	ldr	x0, [x8, #184]
0052a3df0 	str	x20, [x0, #80]!
0052a3df4 	bl	#-13710320 ; -> 0x4590a04 
0052a3df8 	add	x0, x19, #328
0052a3dfc 	mov	x1, x20
0052a3e00 	str	x20, [x19, #328]
0052a3e04 	bl	#-13710336 ; -> 0x4590a04 
0052a3e08 	adrp	x21, #85221376 ; -> 0xa3e9000 
0052a3e0c 	ldr	x21, [x21, #2504]
0052a3e10 	ldr	x20, [x19, #288]
0052a3e14 	ldr	x0, [x21]
0052a3e18 	ldr	w8, [x0, #228]
0052a3e1c 	cbnz	w8, #8 ; -> 0x52a3e24 
0052a3e20 	bl	#-13709888 ; -> 0x4590be0 
0052a3e24 	cbz	x20, #84 ; -> 0x52a3e78 
0052a3e28 	ldr	x8, [x21]
0052a3e2c 	mov	x0, x20
0052a3e30 	mov	x2, xzr
0052a3e34 	ldr	x8, [x8, #184]
0052a3e38 	ldr	w1, [x8, #8]
0052a3e3c 	bl	#74438156 ; -> 0x99a1448 UnityEngine.Animator::SetTrigger
0052a3e40 	mov	x0, xzr
0052a3e44 	strb	wzr, [x19, #336]
0052a3e48 	bl	#-11533816 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
0052a3e4c 	cbz	x0, #44 ; -> 0x52a3e78 
0052a3e50 	ldp	x20, x19, [sp, #32]
0052a3e54 	mov	w1, #34
0052a3e58 	ldp	x22, x21, [sp, #16]
0052a3e5c 	mov	x2, xzr
0052a3e60 	ldr	x30, [sp], #48
0052a3e64 	b	#-11509948 ; -> 0x47a9da8 Gear2.GrowSlayer.Logging.KinesisLog::OpeningSkip
0052a3e68 	ldp	x20, x19, [sp, #32]
0052a3e6c 	ldp	x22, x21, [sp, #16]
0052a3e70 	ldr	x30, [sp], #48
0052a3e74 	ret
0052a3e78 	bl	#-13709676 ; -> 0x4590d0c 
