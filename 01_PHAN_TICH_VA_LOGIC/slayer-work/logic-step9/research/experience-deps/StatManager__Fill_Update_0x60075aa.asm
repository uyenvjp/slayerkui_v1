004f16c8c 	sub	sp, sp, #160
004f16c90 	str	d8, [sp, #96]
004f16c94 	str	x30, [sp, #104]
004f16c98 	stp	x24, x23, [sp, #112]
004f16c9c 	stp	x22, x21, [sp, #128]
004f16ca0 	stp	x20, x19, [sp, #144]
004f16ca4 	adrp	x20, #97251328 ; -> 0xabd5000 
004f16ca8 	mov	x19, x0
004f16cac 	ldrb	w8, [x20, #1727]
004f16cb0 	tbnz	w8, #0, #144 ; -> 0x4f16d40 
004f16cb4 	adrp	x0, #88944640 ; -> 0xa3e9000 
004f16cb8 	ldr	x0, [x0, #3552]
004f16cbc 	bl	#-9986652 ; -> 0x4590a60 
004f16cc0 	adrp	x0, #88944640 ; -> 0xa3e9000 
004f16cc4 	ldr	x0, [x0, #1384]
004f16cc8 	bl	#-9986664 ; -> 0x4590a60 
004f16ccc 	adrp	x0, #88944640 ; -> 0xa3e9000 
004f16cd0 	ldr	x0, [x0, #2488]
004f16cd4 	bl	#-9986676 ; -> 0x4590a60 
004f16cd8 	adrp	x0, #88973312 ; -> 0xa3f0000 
004f16cdc 	ldr	x0, [x0, #752]
004f16ce0 	bl	#-9986688 ; -> 0x4590a60 
004f16ce4 	adrp	x0, #88973312 ; -> 0xa3f0000 
004f16ce8 	ldr	x0, [x0, #584]
004f16cec 	bl	#-9986700 ; -> 0x4590a60 
004f16cf0 	adrp	x0, #89202688 ; -> 0xa428000 
004f16cf4 	ldr	x0, [x0, #3064]
004f16cf8 	bl	#-9986712 ; -> 0x4590a60 
004f16cfc 	adrp	x0, #88944640 ; -> 0xa3e9000 
004f16d00 	ldr	x0, [x0, #736]
004f16d04 	bl	#-9986724 ; -> 0x4590a60 
004f16d08 	adrp	x0, #88969216 ; -> 0xa3ef000 
004f16d0c 	ldr	x0, [x0, #3336]
004f16d10 	bl	#-9986736 ; -> 0x4590a60 
004f16d14 	adrp	x0, #88997888 ; -> 0xa3f6000 
004f16d18 	ldr	x0, [x0, #1504]
004f16d1c 	bl	#-9986748 ; -> 0x4590a60 
004f16d20 	adrp	x0, #88944640 ; -> 0xa3e9000 
004f16d24 	ldr	x0, [x0, #1536]
004f16d28 	bl	#-9986760 ; -> 0x4590a60 
004f16d2c 	adrp	x0, #89219072 ; -> 0xa42c000 
004f16d30 	ldr	x0, [x0, #480]
004f16d34 	bl	#-9986772 ; -> 0x4590a60 
004f16d38 	mov	w8, #1
004f16d3c 	strb	w8, [x20, #1727]
004f16d40 	mov	w0, #7810
004f16d44 	mov	x1, xzr
004f16d48 	bl	#-2946980 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f16d4c 	tbz	w0, #0, #56 ; -> 0x4f16d84 
004f16d50 	mov	w0, #7810
004f16d54 	mov	x1, xzr
004f16d58 	bl	#-2946816 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f16d5c 	cbz	x0, #940 ; -> 0x4f17108 
004f16d60 	mov	x1, x19
004f16d64 	ldp	x20, x19, [sp, #144]
004f16d68 	ldp	x22, x21, [sp, #128]
004f16d6c 	mov	x2, xzr
004f16d70 	ldp	x24, x23, [sp, #112]
004f16d74 	ldr	x30, [sp, #104]
004f16d78 	ldr	d8, [sp, #96]
004f16d7c 	add	sp, sp, #160
004f16d80 	b	#-3770464 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f16d84 	adrp	x22, #88944640 ; -> 0xa3e9000 
004f16d88 	ldr	x22, [x22, #1384]
004f16d8c 	ldr	x20, [x19, #72]
004f16d90 	ldr	x0, [x22]
004f16d94 	ldr	w8, [x0, #228]
004f16d98 	cbnz	w8, #12 ; -> 0x4f16da4 
004f16d9c 	bl	#-9986492 ; -> 0x4590be0 
004f16da0 	ldr	x0, [x22]
004f16da4 	ldr	x8, [x19, #144]
004f16da8 	cbz	x8, #864 ; -> 0x4f17108 
004f16dac 	add	x10, x8, #264
004f16db0 	ldr	x9, [x0, #184]
004f16db4 	ldr	x8, [x8, #296]
004f16db8 	ldp	q0, q1, [x10]
004f16dbc 	add	x0, sp, #48
004f16dc0 	ldr	x21, [x9]
004f16dc4 	mov	x1, xzr
004f16dc8 	str	x8, [sp, #80]
004f16dcc 	stp	q0, q1, [sp, #48]
004f16dd0 	bl	#-3956128 ; -> 0x4b51030 SilentBigInt::op_Implicit
004f16dd4 	cbz	x21, #820 ; -> 0x4f17108 
004f16dd8 	mov	x2, x0
004f16ddc 	mov	x3, x1
004f16de0 	mov	x0, x21
004f16de4 	mov	x1, x2
004f16de8 	mov	x2, x3
004f16dec 	mov	w3, wzr
004f16df0 	mov	x4, xzr
004f16df4 	bl	#-1847884 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
004f16df8 	ldr	x8, [x22]
004f16dfc 	ldp	q1, q0, [x19, #160]
004f16e00 	ldr	x9, [x19, #192]
004f16e04 	mov	x21, x0
004f16e08 	mov	x0, sp
004f16e0c 	ldr	x8, [x8, #184]
004f16e10 	mov	x1, xzr
004f16e14 	ldr	x22, [x8]
004f16e18 	str	x9, [sp, #32]
004f16e1c 	stp	q1, q0, [sp]
004f16e20 	bl	#-3956208 ; -> 0x4b51030 SilentBigInt::op_Implicit
004f16e24 	cbz	x22, #740 ; -> 0x4f17108 
004f16e28 	mov	x2, x0
004f16e2c 	mov	x3, x1
004f16e30 	mov	x0, x22
004f16e34 	mov	x1, x2
004f16e38 	mov	x2, x3
004f16e3c 	mov	w3, wzr
004f16e40 	mov	x4, xzr
004f16e44 	bl	#-1847964 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
004f16e48 	adrp	x8, #88973312 ; -> 0xa3f0000 
004f16e4c 	mov	x22, x0
004f16e50 	ldr	x8, [x8, #584]
004f16e54 	ldr	x23, [x8]
004f16e58 	adrp	x8, #88997888 ; -> 0xa3f6000 
004f16e5c 	ldr	x8, [x8, #1504]
004f16e60 	ldr	x9, [x23, #56]
004f16e64 	ldr	x24, [x8]
004f16e68 	cbnz	x9, #32 ; -> 0x4f16e88 
004f16e6c 	adrp	x0, #88965120 ; -> 0xa3ee000 
004f16e70 	ldr	x0, [x0, #2056]
004f16e74 	bl	#-9987092 ; -> 0x4590a60 
004f16e78 	ldr	x8, [x23, #56]
004f16e7c 	cbnz	x8, #12 ; -> 0x4f16e88 
004f16e80 	mov	x0, x23
004f16e84 	bl	#-9756416 ; -> 0x45c8f84 
004f16e88 	adrp	x8, #88965120 ; -> 0xa3ee000 
004f16e8c 	ldr	x8, [x8, #2056]
004f16e90 	ldr	x0, [x8]
004f16e94 	ldr	w8, [x0, #228]
004f16e98 	cbnz	w8, #8 ; -> 0x4f16ea0 
004f16e9c 	bl	#-9986748 ; -> 0x4590be0 
004f16ea0 	ldr	x8, [x23, #56]
004f16ea4 	mov	x0, x24
004f16ea8 	mov	x1, x21
004f16eac 	mov	x2, x22
004f16eb0 	ldr	x3, [x8, #16]
004f16eb4 	bl	#-7578504 ; -> 0x47dcb2c 
004f16eb8 	cbz	x20, #592 ; -> 0x4f17108 
004f16ebc 	ldr	x8, [x20]
004f16ec0 	mov	x1, x0
004f16ec4 	mov	x0, x20
004f16ec8 	ldr	x9, [x8, #1512]
004f16ecc 	ldr	x2, [x8, #1520]
004f16ed0 	blr	x9
004f16ed4 	ldr	x8, [x19, #144]
004f16ed8 	cbz	x8, #560 ; -> 0x4f17108 
004f16edc 	ldr	x20, [x19, #64]
004f16ee0 	ldr	x21, [x19, #40]
004f16ee4 	add	x0, x8, #264
004f16ee8 	mov	x1, xzr
004f16eec 	bl	#-3957912 ; -> 0x4b50a54 SilentBigInt::get_Value
004f16ef0 	adrp	x8, #88944640 ; -> 0xa3e9000 
004f16ef4 	mov	x22, x0
004f16ef8 	mov	x23, x1
004f16efc 	ldr	x8, [x8, #3552]
004f16f00 	ldr	x0, [x8]
004f16f04 	ldr	w8, [x0, #228]
004f16f08 	cbnz	w8, #8 ; -> 0x4f16f10 
004f16f0c 	bl	#-9986860 ; -> 0x4590be0 
004f16f10 	mov	x0, x22
004f16f14 	mov	x1, x23
004f16f18 	mov	x2, xzr
004f16f1c 	bl	#69625528 ; -> 0x917d5d4 System.Numerics.BigInteger::op_Explicit
004f16f20 	add	x0, x19, #160
004f16f24 	mov	x1, xzr
004f16f28 	fmov	d8, d0
004f16f2c 	bl	#-3957976 ; -> 0x4b50a54 SilentBigInt::get_Value
004f16f30 	mov	x2, xzr
004f16f34 	bl	#69625504 ; -> 0x917d5d4 System.Numerics.BigInteger::op_Explicit
004f16f38 	cbz	x21, #464 ; -> 0x4f17108 
004f16f3c 	fdiv	d0, d8, d0
004f16f40 	mov	x0, x21
004f16f44 	mov	x1, xzr
004f16f48 	fcvt	s8, d0
004f16f4c 	fmov	s0, s8
004f16f50 	bl	#79749196 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004f16f54 	cbz	x20, #436 ; -> 0x4f17108 
004f16f58 	fmov	s0, s8
004f16f5c 	mov	x0, x20
004f16f60 	mov	x1, xzr
004f16f64 	bl	#79749176 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004f16f68 	ldr	x8, [x19, #64]
004f16f6c 	cbz	x8, #412 ; -> 0x4f17108 
004f16f70 	adrp	x9, #88944640 ; -> 0xa3e9000 
004f16f74 	ldr	x9, [x9, #2488]
004f16f78 	ldr	x20, [x19, #80]
004f16f7c 	ldr	x21, [x19, #48]
004f16f80 	ldr	s8, [x8, #244]
004f16f84 	ldr	x0, [x9]
004f16f88 	ldr	w9, [x0, #228]
004f16f8c 	cbnz	w9, #8 ; -> 0x4f16f94 
004f16f90 	bl	#-9986992 ; -> 0x4590be0 
004f16f94 	mov	w8, #1120403456
004f16f98 	mov	x1, xzr
004f16f9c 	fmov	s0, w8
004f16fa0 	adrp	x8, #88969216 ; -> 0xa3ef000 
004f16fa4 	ldr	x8, [x8, #3336]
004f16fa8 	fmul	s0, s8, s0
004f16fac 	ldr	x0, [x8]
004f16fb0 	bl	#-3917176 ; -> 0x4b5aa38 Localization::ToString
004f16fb4 	adrp	x8, #88944640 ; -> 0xa3e9000 
004f16fb8 	mov	x2, xzr
004f16fbc 	ldr	x8, [x8, #1536]
004f16fc0 	ldr	x1, [x8]
004f16fc4 	bl	#64704132 ; -> 0x8ccbe48 System.String::Concat
004f16fc8 	cbz	x21, #320 ; -> 0x4f17108 
004f16fcc 	ldr	x8, [x21]
004f16fd0 	mov	x22, x0
004f16fd4 	mov	x0, x21
004f16fd8 	mov	x1, x22
004f16fdc 	ldr	x9, [x8, #1512]
004f16fe0 	ldr	x2, [x8, #1520]
004f16fe4 	blr	x9
004f16fe8 	cbz	x20, #288 ; -> 0x4f17108 
004f16fec 	ldr	x8, [x20]
004f16ff0 	mov	x0, x20
004f16ff4 	mov	x1, x22
004f16ff8 	ldr	x9, [x8, #1512]
004f16ffc 	ldr	x2, [x8, #1520]
004f17000 	blr	x9
004f17004 	ldr	x8, [x19, #64]
004f17008 	cbz	x8, #256 ; -> 0x4f17108 
004f1700c 	fmov	s0, #1.00000000
004f17010 	ldr	s1, [x8, #244]
004f17014 	ldr	x19, [x19, #112]
004f17018 	fcmp	s1, s0
004f1701c 	b.ge	#104 ; -> 0x4f17084 
004f17020 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f17024 	ldr	x8, [x8, #736]
004f17028 	ldr	x0, [x8]
004f1702c 	ldr	w8, [x0, #228]
004f17030 	cbnz	w8, #8 ; -> 0x4f17038 
004f17034 	bl	#-9987156 ; -> 0x4590be0 
004f17038 	adrp	x8, #89214976 ; -> 0xa42c000 
004f1703c 	mov	x1, xzr
004f17040 	ldr	x8, [x8, #480]
004f17044 	ldr	x0, [x8]
004f17048 	bl	#-2069836 ; -> 0x4d1dafc UsefulManager::hexToColor
004f1704c 	cbz	x19, #188 ; -> 0x4f17108 
004f17050 	ldr	x8, [x19]
004f17054 	mov	x0, x19
004f17058 	ldr	x9, [x8, #680]
004f1705c 	ldr	x1, [x8, #688]
004f17060 	blr	x9
004f17064 	adrp	x8, #88969216 ; -> 0xa3f0000 
004f17068 	ldr	x8, [x8, #752]
004f1706c 	ldr	x8, [x8]
004f17070 	ldr	x8, [x8, #184]
004f17074 	ldr	x0, [x8]
004f17078 	cbz	x0, #144 ; -> 0x4f17108 
004f1707c 	mov	w1, wzr
004f17080 	b	#68 ; -> 0x4f170c4 
004f17084 	cbz	x19, #132 ; -> 0x4f17108 
004f17088 	ldr	x8, [x19]
004f1708c 	fmov	s1, #1.00000000
004f17090 	fmov	s2, #1.00000000
004f17094 	fmov	s3, #1.00000000
004f17098 	mov	x0, x19
004f1709c 	ldr	x9, [x8, #680]
004f170a0 	ldr	x1, [x8, #688]
004f170a4 	blr	x9
004f170a8 	adrp	x8, #88969216 ; -> 0xa3f0000 
004f170ac 	ldr	x8, [x8, #752]
004f170b0 	ldr	x8, [x8]
004f170b4 	ldr	x8, [x8, #184]
004f170b8 	ldr	x0, [x8]
004f170bc 	cbz	x0, #76 ; -> 0x4f17108 
004f170c0 	mov	w1, #1
004f170c4 	mov	x2, xzr
004f170c8 	bl	#-345028 ; -> 0x4ec2d04 NoticeManager::LevelUp_Notice_OnOff
004f170cc 	adrp	x8, #89198592 ; -> 0xa428000 
004f170d0 	ldr	x8, [x8, #3064]
004f170d4 	ldr	x8, [x8]
004f170d8 	ldr	x8, [x8, #184]
004f170dc 	ldr	x0, [x8]
004f170e0 	cbz	x0, #40 ; -> 0x4f17108 
004f170e4 	mov	x1, xzr
004f170e8 	bl	#4986052 ; -> 0x53d85ac TrainingManager::SetAdditionalTrainingExp
004f170ec 	ldp	x20, x19, [sp, #144]
004f170f0 	ldr	x30, [sp, #104]
004f170f4 	ldp	x22, x21, [sp, #128]
004f170f8 	ldr	d8, [sp, #96]
004f170fc 	ldp	x24, x23, [sp, #112]
004f17100 	add	sp, sp, #160
004f17104 	ret
004f17108 	bl	#-9987068 ; -> 0x4590d0c 
