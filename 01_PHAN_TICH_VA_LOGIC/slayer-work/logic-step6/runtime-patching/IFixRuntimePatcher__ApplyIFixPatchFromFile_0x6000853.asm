004fd8788 	sub	sp, sp, #96
004fd878c 	stp	x30, x23, [sp, #48]
004fd8790 	stp	x22, x21, [sp, #64]
004fd8794 	stp	x20, x19, [sp, #80]
004fd8798 	adrp	x21, #96456704 ; -> 0xabd5000 
004fd879c 	mov	x19, x1
004fd87a0 	mov	x20, x0
004fd87a4 	ldrb	w8, [x21, #3179]
004fd87a8 	tbnz	w8, #0, #60 ; -> 0x4fd87e4 
004fd87ac 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd87b0 	ldr	x0, [x0, #1328]
004fd87b4 	bl	#-10779988 ; -> 0x4590a60 
004fd87b8 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd87bc 	ldr	x0, [x0, #376]
004fd87c0 	bl	#-10780000 ; -> 0x4590a60 
004fd87c4 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd87c8 	ldr	x0, [x0, #1440]
004fd87cc 	bl	#-10780012 ; -> 0x4590a60 
004fd87d0 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd87d4 	ldr	x0, [x0, #384]
004fd87d8 	bl	#-10780024 ; -> 0x4590a60 
004fd87dc 	mov	w8, #1
004fd87e0 	strb	w8, [x21, #3179]
004fd87e4 	mov	w0, #3419
004fd87e8 	mov	x1, xzr
004fd87ec 	str	xzr, [sp, #40]
004fd87f0 	str	wzr, [sp, #32]
004fd87f4 	bl	#-3740240 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd87f8 	tbz	w0, #0, #52 ; -> 0x4fd882c 
004fd87fc 	mov	w0, #3419
004fd8800 	mov	x1, xzr
004fd8804 	bl	#-3740076 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd8808 	cbz	x0, #432 ; -> 0x4fd89b8 
004fd880c 	mov	x1, x20
004fd8810 	mov	x2, x19
004fd8814 	mov	x3, xzr
004fd8818 	ldp	x20, x19, [sp, #80]
004fd881c 	ldp	x22, x21, [sp, #64]
004fd8820 	ldp	x30, x23, [sp, #48]
004fd8824 	add	sp, sp, #96
004fd8828 	b	#-4555920 ; -> 0x4b80398 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_42
004fd882c 	mov	x0, x19
004fd8830 	mov	x1, xzr
004fd8834 	bl	#65353144 ; -> 0x8e2bdec System.IO.File::Exists
004fd8838 	tbz	w0, #0, #164 ; -> 0x4fd88dc 
004fd883c 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd8840 	ldr	x8, [x8, #376]
004fd8844 	ldr	x0, [x8]
004fd8848 	bl	#-10779468 ; -> 0x4590cfc 
004fd884c 	mov	x1, x19
004fd8850 	mov	w2, #3
004fd8854 	mov	w3, #1
004fd8858 	mov	w4, #1
004fd885c 	mov	x5, xzr
004fd8860 	mov	x21, x0
004fd8864 	bl	#65464072 ; -> 0x8e46f6c System.IO.FileStream::.ctor
004fd8868 	add	x22, sp, #40
004fd886c 	str	x21, [sp, #40]
004fd8870 	stp	xzr, x22, [sp, #8]
004fd8874 	mov	x0, x20
004fd8878 	mov	x1, x21
004fd887c 	bl	#552 ; -> 0x4fd8aa4 IFixRuntimePatcher::ApplyIFixPatch
004fd8880 	mov	w20, w0
004fd8884 	mov	x21, xzr
004fd8888 	mov	w23, wzr
004fd888c 	ldr	x22, [x22]
004fd8890 	cbz	x22, #172 ; -> 0x4fd893c 
004fd8894 	adrp	x10, #88141824 ; -> 0xa3e7000 
004fd8898 	ldr	x8, [x22]
004fd889c 	ldr	x10, [x10, #1440]
004fd88a0 	ldrh	w9, [x8, #302]
004fd88a4 	ldr	x1, [x10]
004fd88a8 	cbz	x9, #36 ; -> 0x4fd88cc 
004fd88ac 	ldr	x10, [x8, #176]
004fd88b0 	add	x10, x10, #8
004fd88b4 	ldur	x11, [x10, #-8]
004fd88b8 	cmp	x11, x1
004fd88bc 	b.eq	#104 ; -> 0x4fd8924 
004fd88c0 	subs	x9, x9, #1
004fd88c4 	add	x10, x10, #16
004fd88c8 	b.ne	#-20 ; -> 0x4fd88b4 
004fd88cc 	mov	x0, x22
004fd88d0 	mov	w2, wzr
004fd88d4 	bl	#-10548848 ; -> 0x45c9264 
004fd88d8 	b	#88 ; -> 0x4fd8930 
004fd88dc 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd88e0 	ldr	x8, [x8, #384]
004fd88e4 	ldr	x0, [x8]
004fd88e8 	mov	x1, x19
004fd88ec 	mov	x2, xzr
004fd88f0 	bl	#63911256 ; -> 0x8ccbe48 System.String::Concat
004fd88f4 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd88f8 	mov	x20, x0
004fd88fc 	ldr	x8, [x8, #1328]
004fd8900 	ldr	x0, [x8]
004fd8904 	ldr	w8, [x0, #228]
004fd8908 	cbnz	w8, #8 ; -> 0x4fd8910 
004fd890c 	bl	#-10779948 ; -> 0x4590be0 
004fd8910 	mov	x0, x20
004fd8914 	mov	x1, xzr
004fd8918 	bl	#77488296 ; -> 0x99be9c0 UnityEngine.Debug::LogWarning
004fd891c 	mov	w20, wzr
004fd8920 	b	#128 ; -> 0x4fd89a0 
004fd8924 	ldrsw	x9, [x10]
004fd8928 	add	x8, x8, x9, lsl #4
004fd892c 	add	x0, x8, #312
004fd8930 	ldp	x8, x1, [x0]
004fd8934 	mov	x0, x22
004fd8938 	blr	x8
004fd893c 	cbnz	x21, #128 ; -> 0x4fd89bc 
004fd8940 	cbz	w23, #96 ; -> 0x4fd89a0 
004fd8944 	ldr	w8, [sp, #32]
004fd8948 	sub	w21, w8, #1
004fd894c 	add	x8, sp, #24
004fd8950 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8954 	ldr	x20, [x8, w21, sxtw #3]
004fd8958 	ldr	x0, [x0, #392]
004fd895c 	bl	#-10780392 ; -> 0x4590a74 
004fd8960 	mov	x1, x19
004fd8964 	mov	x2, x20
004fd8968 	mov	x3, xzr
004fd896c 	bl	#63971656 ; -> 0x8cdaab4 System.String::Format
004fd8970 	mov	x19, x0
004fd8974 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8978 	ldr	x0, [x0, #1328]
004fd897c 	bl	#-10780424 ; -> 0x4590a74 
004fd8980 	ldr	w8, [x0, #228]
004fd8984 	cbnz	w8, #8 ; -> 0x4fd898c 
004fd8988 	bl	#-10780072 ; -> 0x4590be0 
004fd898c 	mov	x0, x19
004fd8990 	mov	x1, xzr
004fd8994 	bl	#77497744 ; -> 0x99c0f24 UnityEngine.Debug::LogError
004fd8998 	mov	w20, wzr
004fd899c 	str	w21, [sp, #32]
004fd89a0 	and	w0, w20, #0x1
004fd89a4 	ldp	x20, x19, [sp, #80]
004fd89a8 	ldp	x22, x21, [sp, #64]
004fd89ac 	ldp	x30, x23, [sp, #48]
004fd89b0 	add	sp, sp, #96
004fd89b4 	ret
004fd89b8 	bl	#-10779820 ; -> 0x4590d0c 
004fd89bc 	mov	x0, x21
004fd89c0 	bl	#-10779836 ; -> 0x4590d04 
004fd89c4 	mov	x21, x1
004fd89c8 	mov	x20, x0
004fd89cc 	cmp	w21, #1
004fd89d0 	b.ne	#48 ; -> 0x4fd8a00 
004fd89d4 	mov	x0, x20
004fd89d8 	bl	#81342120 ; -> 0x9d6b880 
004fd89dc 	ldr	x21, [x0]
004fd89e0 	str	x21, [sp, #8]
004fd89e4 	bl	#81342124 ; -> 0x9d6b890 
004fd89e8 	ldr	x22, [sp, #16]
004fd89ec 	mov	w20, wzr
004fd89f0 	mov	w23, #1
004fd89f4 	b	#-360 ; -> 0x4fd888c 
004fd89f8 	mov	x21, x1
004fd89fc 	mov	x20, x0
004fd8a00 	add	x0, sp, #8
004fd8a04 	bl	#-15450184 ; -> 0x411c9bc 
004fd8a08 	b	#24 ; -> 0x4fd8a20 
004fd8a0c 	b	#12 ; -> 0x4fd8a18 
004fd8a10 	b	#8 ; -> 0x4fd8a18 
004fd8a14 	b	#4 ; -> 0x4fd8a18 
004fd8a18 	mov	x21, x1
004fd8a1c 	mov	x20, x0
004fd8a20 	cmp	w21, #1
004fd8a24 	b.ne	#116 ; -> 0x4fd8a98 
004fd8a28 	mov	x0, x20
004fd8a2c 	bl	#81342036 ; -> 0x9d6b880 
004fd8a30 	mov	x20, x0
004fd8a34 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8a38 	ldr	x0, [x0, #3064]
004fd8a3c 	bl	#-10780616 ; -> 0x4590a74 
004fd8a40 	ldr	x8, [x20]
004fd8a44 	ldr	x1, [x8]
004fd8a48 	bl	#-10778932 ; -> 0x4591114 
004fd8a4c 	tbz	w0, #0, #36 ; -> 0x4fd8a70 
004fd8a50 	ldrsw	x21, [sp, #32]
004fd8a54 	ldr	x8, [x20]
004fd8a58 	add	x9, sp, #24
004fd8a5c 	str	x8, [x9, x21, lsl #3]
004fd8a60 	add	w8, w21, #1
004fd8a64 	str	w8, [sp, #32]
004fd8a68 	bl	#81341992 ; -> 0x9d6b890 
004fd8a6c 	b	#-288 ; -> 0x4fd894c 
004fd8a70 	mov	w0, #8
004fd8a74 	bl	#81342012 ; -> 0x9d6b8b0 
004fd8a78 	ldr	x8, [x20]
004fd8a7c 	str	x8, [x0]
004fd8a80 	adrp	x1, #81367040 ; -> 0x9d71000 
004fd8a84 	add	x1, x1, #3672
004fd8a88 	mov	x2, xzr
004fd8a8c 	bl	#81342004 ; -> 0x9d6b8c0 
004fd8a90 	mov	x20, x0
004fd8a94 	bl	#81341948 ; -> 0x9d6b890 
004fd8a98 	mov	x0, x20
004fd8a9c 	bl	#-9595520 ; -> 0x46b201c 
004fd8aa0 	bl	#-15450688 ; -> 0x411c860 
