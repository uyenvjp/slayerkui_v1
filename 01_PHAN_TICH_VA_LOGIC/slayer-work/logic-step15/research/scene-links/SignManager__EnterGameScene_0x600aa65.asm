0052a392c 	sub	sp, sp, #64
0052a3930 	str	x30, [sp, #16]
0052a3934 	stp	x22, x21, [sp, #32]
0052a3938 	stp	x20, x19, [sp, #48]
0052a393c 	adrp	x20, #93536256 ; -> 0xabd7000 
0052a3940 	mov	x19, x0
0052a3944 	ldrb	w8, [x20, #423]
0052a3948 	tbnz	w8, #0, #108 ; -> 0x52a39b4 
0052a394c 	adrp	x0, #85221376 ; -> 0xa3e9000 
0052a3950 	ldr	x0, [x0, #1384]
0052a3954 	bl	#-13709044 ; -> 0x4590a60 
0052a3958 	adrp	x0, #85225472 ; -> 0xa3ea000 
0052a395c 	ldr	x0, [x0, #1352]
0052a3960 	bl	#-13709056 ; -> 0x4590a60 
0052a3964 	adrp	x0, #85225472 ; -> 0xa3ea000 
0052a3968 	ldr	x0, [x0, #2808]
0052a396c 	bl	#-13709068 ; -> 0x4590a60 
0052a3970 	adrp	x0, #85245952 ; -> 0xa3ef000 
0052a3974 	ldr	x0, [x0, #3688]
0052a3978 	bl	#-13709080 ; -> 0x4590a60 
0052a397c 	adrp	x0, #85229568 ; -> 0xa3eb000 
0052a3980 	ldr	x0, [x0, #456]
0052a3984 	bl	#-13709092 ; -> 0x4590a60 
0052a3988 	adrp	x0, #85241856 ; -> 0xa3ee000 
0052a398c 	ldr	x0, [x0, #2504]
0052a3990 	bl	#-13709104 ; -> 0x4590a60 
0052a3994 	adrp	x0, #85221376 ; -> 0xa3e9000 
0052a3998 	ldr	x0, [x0, #736]
0052a399c 	bl	#-13709116 ; -> 0x4590a60 
0052a39a0 	adrp	x0, #85565440 ; -> 0xa43d000 
0052a39a4 	ldr	x0, [x0, #2288]
0052a39a8 	bl	#-13709128 ; -> 0x4590a60 
0052a39ac 	mov	w8, #1
0052a39b0 	strb	w8, [x20, #423]
0052a39b4 	mov	w0, #43151
0052a39b8 	mov	x1, xzr
0052a39bc 	stp	xzr, xzr, [sp]
0052a39c0 	bl	#-6669340 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a39c4 	tbz	w0, #0, #48 ; -> 0x52a39f4 
0052a39c8 	mov	w0, #43151
0052a39cc 	mov	x1, xzr
0052a39d0 	bl	#-6669176 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a39d4 	cbz	x0, #556 ; -> 0x52a3c00 
0052a39d8 	mov	x1, x19
0052a39dc 	ldp	x20, x19, [sp, #48]
0052a39e0 	ldp	x22, x21, [sp, #32]
0052a39e4 	mov	x2, xzr
0052a39e8 	ldr	x30, [sp, #16]
0052a39ec 	add	sp, sp, #64
0052a39f0 	b	#-7492816 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052a39f4 	ldrb	w8, [x19, #352]
0052a39f8 	cbz	w8, #200 ; -> 0x52a3ac0 
0052a39fc 	adrp	x21, #85241856 ; -> 0xa3ee000 
0052a3a00 	ldr	x21, [x21, #2504]
0052a3a04 	ldr	x8, [x21]
0052a3a08 	ldr	x8, [x8, #184]
0052a3a0c 	ldr	x20, [x8]
0052a3a10 	cbz	x20, #496 ; -> 0x52a3c00 
0052a3a14 	mov	x0, x20
0052a3a18 	mov	x1, xzr
0052a3a1c 	bl	#-5931636 ; -> 0x4cfb7a8 TimeManager::get_CurrentDateTime
0052a3a20 	ldr	x8, [x21]
0052a3a24 	str	x0, [x20, #48]
0052a3a28 	mov	x0, xzr
0052a3a2c 	ldr	x8, [x8, #184]
0052a3a30 	ldr	x22, [x8]
0052a3a34 	bl	#74875296 ; -> 0x9a0bbd4 UnityEngine.Time::get_realtimeSinceStartup
0052a3a38 	cbz	x22, #456 ; -> 0x52a3c00 
0052a3a3c 	adrp	x8, #85229568 ; -> 0xa3eb000 
0052a3a40 	ldr	x8, [x8, #456]
0052a3a44 	ldr	x9, [x21]
0052a3a48 	str	s0, [x22, #40]
0052a3a4c 	ldr	x0, [x8]
0052a3a50 	ldr	x8, [x9, #184]
0052a3a54 	ldr	w9, [x0, #228]
0052a3a58 	ldr	x20, [x8]
0052a3a5c 	cbnz	w9, #8 ; -> 0x52a3a64 
0052a3a60 	bl	#-13708928 ; -> 0x4590be0 
0052a3a64 	mov	x0, xzr
0052a3a68 	bl	#1200740 ; -> 0x53c8ccc TimeApp::get_UtcNow
0052a3a6c 	adrp	x9, #85225472 ; -> 0xa3ea000 
0052a3a70 	mov	x8, x0
0052a3a74 	ldr	x9, [x9, #1352]
0052a3a78 	stp	x8, x1, [sp]
0052a3a7c 	ldr	x0, [x9]
0052a3a80 	ldr	w9, [x0, #228]
0052a3a84 	cbnz	w9, #8 ; -> 0x52a3a8c 
0052a3a88 	bl	#-13708968 ; -> 0x4590be0 
0052a3a8c 	mov	x0, sp
0052a3a90 	mov	x1, xzr
0052a3a94 	bl	#62612460 ; -> 0x8e59e80 System.DateTimeOffset::get_UtcDateTime
0052a3a98 	cbz	x20, #360 ; -> 0x52a3c00 
0052a3a9c 	ldr	x8, [x21]
0052a3aa0 	str	x0, [x20, #56]
0052a3aa4 	ldr	x8, [x8, #184]
0052a3aa8 	ldr	x20, [x8]
0052a3aac 	cbz	x20, #340 ; -> 0x52a3c00 
0052a3ab0 	mov	x0, x20
0052a3ab4 	mov	x1, xzr
0052a3ab8 	bl	#-5931792 ; -> 0x4cfb7a8 TimeManager::get_CurrentDateTime
0052a3abc 	str	x0, [x20, #112]
0052a3ac0 	adrp	x20, #85241856 ; -> 0xa3ee000 
0052a3ac4 	ldr	x20, [x20, #2504]
0052a3ac8 	ldr	x8, [x20]
0052a3acc 	ldr	x8, [x8, #184]
0052a3ad0 	ldr	x0, [x8]
0052a3ad4 	cbz	x0, #300 ; -> 0x52a3c00 
0052a3ad8 	mov	x1, xzr
0052a3adc 	bl	#-5932412 ; -> 0x4cfb560 TimeManager::Realtime_Start
0052a3ae0 	adrp	x21, #85221376 ; -> 0xa3e9000 
0052a3ae4 	ldr	x21, [x21, #1384]
0052a3ae8 	ldr	x0, [x21]
0052a3aec 	ldr	w8, [x0, #228]
0052a3af0 	cbnz	w8, #12 ; -> 0x52a3afc 
0052a3af4 	bl	#-13709076 ; -> 0x4590be0 
0052a3af8 	ldr	x0, [x21]
0052a3afc 	ldr	x8, [x20]
0052a3b00 	ldr	x8, [x8, #184]
0052a3b04 	ldr	x21, [x8]
0052a3b08 	cbz	x21, #248 ; -> 0x52a3c00 
0052a3b0c 	adrp	x8, #85225472 ; -> 0xa3ea000 
0052a3b10 	ldr	x8, [x8, #2808]
0052a3b14 	ldr	x9, [x0, #184]
0052a3b18 	ldr	x8, [x8]
0052a3b1c 	ldr	x20, [x9]
0052a3b20 	ldr	w10, [x8, #228]
0052a3b24 	cbnz	w10, #12 ; -> 0x52a3b30 
0052a3b28 	mov	x0, x8
0052a3b2c 	bl	#-13709132 ; -> 0x4590be0 
0052a3b30 	add	x0, x21, #104
0052a3b34 	mov	x1, xzr
0052a3b38 	bl	#62603448 ; -> 0x8e57bf0 System.DateTime::ToString
0052a3b3c 	mov	x21, x0
0052a3b40 	mov	x0, xzr
0052a3b44 	bl	#74884104 ; -> 0x9a0df4c UnityEngine.SystemInfo::get_deviceUniqueIdentifier
0052a3b48 	cbz	x20, #184 ; -> 0x52a3c00 
0052a3b4c 	adrp	x8, #85565440 ; -> 0xa43d000 
0052a3b50 	mov	x3, x0
0052a3b54 	mov	x0, x20
0052a3b58 	ldr	x8, [x8, #2288]
0052a3b5c 	mov	x2, x21
0052a3b60 	mov	x4, xzr
0052a3b64 	ldr	x1, [x8]
0052a3b68 	bl	#-5544708 ; -> 0x4d5a064 DatabaseManager::Post_DataLoginLog
0052a3b6c 	ldr	x0, [x19, #32]
0052a3b70 	cbz	x0, #144 ; -> 0x52a3c00 
0052a3b74 	mov	x1, xzr
0052a3b78 	bl	#-5651048 ; -> 0x4d40110 DatabaseManager::ServerRegionSetting
0052a3b7c 	adrp	x8, #85245952 ; -> 0xa3ef000 
0052a3b80 	adrp	x20, #85221376 ; -> 0xa3e9000 
0052a3b84 	ldr	x8, [x8, #3688]
0052a3b88 	ldr	x8, [x8]
0052a3b8c 	ldr	x20, [x20, #736]
0052a3b90 	ldrb	w9, [x19, #352]
0052a3b94 	ldr	x8, [x8, #184]
0052a3b98 	ldr	x0, [x20]
0052a3b9c 	ldr	x19, [x8]
0052a3ba0 	ldr	w8, [x0, #228]
0052a3ba4 	cbz	w9, #32 ; -> 0x52a3bc4 
0052a3ba8 	cbnz	w8, #8 ; -> 0x52a3bb0 
0052a3bac 	bl	#-13709260 ; -> 0x4590be0 
0052a3bb0 	cbz	x19, #80 ; -> 0x52a3c00 
0052a3bb4 	ldr	x8, [x20]
0052a3bb8 	ldr	x8, [x8, #184]
0052a3bbc 	ldr	x1, [x8, #128]
0052a3bc0 	b	#28 ; -> 0x52a3bdc 
0052a3bc4 	cbnz	w8, #8 ; -> 0x52a3bcc 
0052a3bc8 	bl	#-13709288 ; -> 0x4590be0 
0052a3bcc 	cbz	x19, #52 ; -> 0x52a3c00 
0052a3bd0 	ldr	x8, [x20]
0052a3bd4 	ldr	x8, [x8, #184]
0052a3bd8 	ldr	x1, [x8, #104]
0052a3bdc 	mov	x0, x19
0052a3be0 	mov	w2, wzr
0052a3be4 	mov	x3, xzr
0052a3be8 	bl	#-5874636 ; -> 0x4d0981c EffectManager::SceneChange_Start
0052a3bec 	ldp	x20, x19, [sp, #48]
0052a3bf0 	ldr	x30, [sp, #16]
0052a3bf4 	ldp	x22, x21, [sp, #32]
0052a3bf8 	add	sp, sp, #64
0052a3bfc 	ret
0052a3c00 	bl	#-13709044 ; -> 0x4590d0c 
