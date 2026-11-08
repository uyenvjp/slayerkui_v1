004e50c80 	str	d8, [sp, #-80]!
004e50c84 	stp	x29, x30, [sp, #16]
004e50c88 	stp	x24, x23, [sp, #32]
004e50c8c 	stp	x22, x21, [sp, #48]
004e50c90 	stp	x20, x19, [sp, #64]
004e50c94 	sub	sp, sp, #480
004e50c98 	adrp	x20, #98062336 ; -> 0xabd5000
004e50c9c 	mov	x21, x2
004e50ca0 	mov	x22, x1
004e50ca4 	ldrb	w8, [x20, #335]
004e50ca8 	mov	x19, x0
004e50cac 	tbnz	w8, #0, #84 ; -> 0x4e50d00
004e50cb0 	adrp	x0, #89755648 ; -> 0xa3e9000
004e50cb4 	ldr	x0, [x0, #3552]
004e50cb8 	bl	#-9175640 ; -> 0x4590a60
004e50cbc 	adrp	x0, #89776128 ; -> 0xa3ee000
004e50cc0 	ldr	x0, [x0, #2104]
004e50cc4 	bl	#-9175652 ; -> 0x4590a60
004e50cc8 	adrp	x0, #89755648 ; -> 0xa3e9000
004e50ccc 	ldr	x0, [x0, #1384]
004e50cd0 	bl	#-9175664 ; -> 0x4590a60
004e50cd4 	adrp	x0, #90013696 ; -> 0xa428000
004e50cd8 	ldr	x0, [x0, #2896]
004e50cdc 	bl	#-9175676 ; -> 0x4590a60
004e50ce0 	adrp	x0, #89935872 ; -> 0xa415000
004e50ce4 	ldr	x0, [x0, #3136]
004e50ce8 	bl	#-9175688 ; -> 0x4590a60
004e50cec 	adrp	x0, #90013696 ; -> 0xa428000
004e50cf0 	ldr	x0, [x0, #2904]
004e50cf4 	bl	#-9175700 ; -> 0x4590a60
004e50cf8 	mov	w8, #1
004e50cfc 	strb	w8, [x20, #335]
004e50d00 	mov	w0, #4859
004e50d04 	mov	x1, xzr
004e50d08 	stp	xzr, xzr, [sp, #464]
004e50d0c 	bl	#-2135912 ; -> 0x4c475a4 [WrappersManagerImpl::IsPatched]
004e50d10 	tbz	w0, #0, #64 ; -> 0x4e50d50
004e50d14 	mov	w0, #4859
004e50d18 	mov	x1, xzr
004e50d1c 	bl	#-2135748 ; -> 0x4c47658 [WrappersManagerImpl::GetPatch]
004e50d20 	cbz	x0, #1460 ; -> 0x4e512d4
004e50d24 	mov	x1, x19
004e50d28 	mov	x2, x22
004e50d2c 	mov	x3, x21
004e50d30 	mov	x4, xzr
004e50d34 	add	sp, sp, #480
004e50d38 	ldp	x20, x19, [sp, #64]
004e50d3c 	ldp	x22, x21, [sp, #48]
004e50d40 	ldp	x24, x23, [sp, #32]
004e50d44 	ldp	x29, x30, [sp, #16]
004e50d48 	ldr	d8, [sp], #80
004e50d4c 	b	#-2819944 ; -> 0x4ba05e4 [ILFixDynamicMethodWrapper::__Gen_Wrap_648]
004e50d50 	ldr	x0, [x19, #32]
004e50d54 	cbz	x0, #1408 ; -> 0x4e512d4
004e50d58 	add	x8, sp, #400
004e50d5c 	mov	x1, xzr
004e50d60 	add	x20, x19, #1280
004e50d64 	bl	#-1065816 ; -> 0x4d4ca0c [DatabaseManager::get_GoldAmountAdd]
004e50d68 	ldp	q0, q1, [sp, #400]
004e50d6c 	add	x0, sp, #336
004e50d70 	mov	x1, xzr
004e50d74 	stp	q0, q1, [sp, #336]
004e50d78 	ldp	q0, q2, [sp, #432]
004e50d7c 	stp	q0, q2, [sp, #368]
004e50d80 	bl	#-3138688 ; -> 0x4b52900
004e50d84 	adrp	x24, #89755648 ; -> 0xa3e9000
004e50d88 	mov	x23, x0
004e50d8c 	ldr	x24, [x24, #3552]
004e50d90 	ldr	x8, [x24]
004e50d94 	ldr	w9, [x8, #228]
004e50d98 	cbnz	w9, #12 ; -> 0x4e50da4
004e50d9c 	mov	x0, x8
004e50da0 	bl	#-9175488 ; -> 0x4590be0
004e50da4 	mov	x0, x23
004e50da8 	mov	x1, xzr
004e50dac 	bl	#70433648 ; -> 0x917c91c
004e50db0 	mov	x2, x0
004e50db4 	mov	x3, x1
004e50db8 	mov	x0, x22
004e50dbc 	mov	x1, x21
004e50dc0 	mov	x4, xzr
004e50dc4 	bl	#70425216 ; -> 0x917a844
004e50dc8 	mov	x21, x0
004e50dcc 	mov	x22, x1
004e50dd0 	mov	w0, #100
004e50dd4 	mov	x1, xzr
004e50dd8 	bl	#70435276 ; -> 0x917cfa4
004e50ddc 	mov	x2, x0
004e50de0 	mov	x3, x1
004e50de4 	mov	x0, x21
004e50de8 	mov	x1, x22
004e50dec 	mov	x4, xzr
004e50df0 	bl	#70425672 ; -> 0x917aa38
004e50df4 	mov	x2, x0
004e50df8 	mov	x3, x1
004e50dfc 	mov	x0, x20
004e50e00 	mov	x1, x2
004e50e04 	mov	x2, x3
004e50e08 	mov	x3, xzr
004e50e0c 	bl	#-3145748 ; -> 0x4b50df8
004e50e10 	mov	x0, x20
004e50e14 	mov	x1, xzr
004e50e18 	bl	#-3146692 ; -> 0x4b50a54
004e50e1c 	adrp	x8, #90013696 ; -> 0xa428000
004e50e20 	ldr	x8, [x8, #2904]
004e50e24 	stp	x0, x1, [sp, #464]
004e50e28 	ldr	x8, [x8]
004e50e2c 	mov	x0, x8
004e50e30 	bl	#39026720 ; -> 0x7388e50
004e50e34 	cbz	x0, #1184 ; -> 0x4e512d4
004e50e38 	add	x1, sp, #464
004e50e3c 	mov	x2, xzr
004e50e40 	bl	#-844044 ; -> 0x4d82d34 [HotTimeScrollManager::ApplyGold]
004e50e44 	ldp	x1, x2, [sp, #464]
004e50e48 	mov	x0, x20
004e50e4c 	mov	x3, xzr
004e50e50 	bl	#-3145816 ; -> 0x4b50df8
004e50e54 	adrp	x21, #89935872 ; -> 0xa415000
004e50e58 	ldr	x21, [x21, #3136]
004e50e5c 	ldr	x0, [x21]
004e50e60 	ldr	w8, [x0, #228]
004e50e64 	cbnz	w8, #12 ; -> 0x4e50e70
004e50e68 	bl	#-9175688 ; -> 0x4590be0
004e50e6c 	ldr	x0, [x21]
004e50e70 	ldr	x8, [x0, #184]
004e50e74 	add	x0, sp, #288
004e50e78 	mov	x1, xzr
004e50e7c 	ldp	q0, q1, [x8]
004e50e80 	ldr	q2, [x8, #32]
004e50e84 	str	q2, [sp, #320]
004e50e88 	stp	q0, q1, [sp, #288]
004e50e8c 	bl	#-7790040 ; -> 0x46e30b4
004e50e90 	tbz	w0, #0, #36 ; -> 0x4e50eb4
004e50e94 	mov	x0, x20
004e50e98 	mov	x1, xzr
004e50e9c 	bl	#-3146824 ; -> 0x4b50a54
004e50ea0 	mov	x21, x0
004e50ea4 	ldr	x0, [x24]
004e50ea8 	mov	x22, x1
004e50eac 	mov	w23, #2
004e50eb0 	b	#176 ; -> 0x4e50f60
004e50eb4 	ldr	x0, [x21]
004e50eb8 	ldr	w8, [x0, #228]
004e50ebc 	cbnz	w8, #12 ; -> 0x4e50ec8
004e50ec0 	bl	#-9175776 ; -> 0x4590be0
004e50ec4 	ldr	x0, [x21]
004e50ec8 	ldr	x8, [x0, #184]
004e50ecc 	add	x0, sp, #240
004e50ed0 	mov	x1, xzr
004e50ed4 	ldp	q0, q1, [x8, #48]
004e50ed8 	ldr	q2, [x8, #80]
004e50edc 	str	q2, [sp, #272]
004e50ee0 	stp	q0, q1, [sp, #240]
004e50ee4 	bl	#-7790128 ; -> 0x46e30b4
004e50ee8 	tbz	w0, #0, #36 ; -> 0x4e50f0c
004e50eec 	mov	x0, x20
004e50ef0 	mov	x1, xzr
004e50ef4 	bl	#-3146912 ; -> 0x4b50a54
004e50ef8 	mov	x21, x0
004e50efc 	ldr	x0, [x24]
004e50f00 	mov	x22, x1
004e50f04 	mov	w23, #4
004e50f08 	b	#88 ; -> 0x4e50f60
004e50f0c 	ldr	x0, [x21]
004e50f10 	ldr	w8, [x0, #228]
004e50f14 	cbnz	w8, #12 ; -> 0x4e50f20
004e50f18 	bl	#-9175864 ; -> 0x4590be0
004e50f1c 	ldr	x0, [x21]
004e50f20 	ldr	x8, [x0, #184]
004e50f24 	add	x0, sp, #192
004e50f28 	mov	x1, xzr
004e50f2c 	ldp	q0, q1, [x8, #96]
004e50f30 	ldr	q2, [x8, #128]
004e50f34 	str	q2, [sp, #224]
004e50f38 	stp	q0, q1, [sp, #192]
004e50f3c 	bl	#-7790216 ; -> 0x46e30b4
004e50f40 	tbz	w0, #0, #108 ; -> 0x4e50fac
004e50f44 	mov	x0, x20
004e50f48 	mov	x1, xzr
004e50f4c 	bl	#-3147000 ; -> 0x4b50a54
004e50f50 	mov	x21, x0
004e50f54 	ldr	x0, [x24]
004e50f58 	mov	x22, x1
004e50f5c 	mov	w23, #5
004e50f60 	ldr	w8, [x0, #228]
004e50f64 	cbnz	w8, #8 ; -> 0x4e50f6c
004e50f68 	bl	#-9175944 ; -> 0x4590be0
004e50f6c 	mov	w0, w23
004e50f70 	mov	x1, xzr
004e50f74 	bl	#70434864 ; -> 0x917cfa4
004e50f78 	mov	x2, x0
004e50f7c 	mov	x3, x1
004e50f80 	mov	x0, x21
004e50f84 	mov	x1, x22
004e50f88 	mov	x4, xzr
004e50f8c 	bl	#70424760 ; -> 0x917a844
004e50f90 	mov	x2, x0
004e50f94 	mov	x3, x1
004e50f98 	mov	x0, x20
004e50f9c 	mov	x1, x2
004e50fa0 	mov	x2, x3
004e50fa4 	mov	x3, xzr
004e50fa8 	bl	#-3146160 ; -> 0x4b50df8
004e50fac 	ldr	x8, [x19, #32]
004e50fb0 	cbz	x8, #804 ; -> 0x4e512d4
004e50fb4 	ldur	q0, [x8, #72]
004e50fb8 	ldur	q1, [x8, #88]
004e50fbc 	add	x0, sp, #144
004e50fc0 	ldur	q2, [x8, #104]
004e50fc4 	mov	x1, xzr
004e50fc8 	stp	q0, q1, [sp, #144]
004e50fcc 	str	q2, [sp, #176]
004e50fd0 	bl	#-7791108 ; -> 0x46e2dcc
004e50fd4 	cmp	w0, #90
004e50fd8 	b.lt	#376 ; -> 0x4e51150
004e50fdc 	ldr	x8, [x19, #32]
004e50fe0 	cbz	x8, #756 ; -> 0x4e512d4
004e50fe4 	ldur	q0, [x8, #72]
004e50fe8 	ldur	q1, [x8, #88]
004e50fec 	add	x0, sp, #96
004e50ff0 	ldur	q2, [x8, #104]
004e50ff4 	mov	x1, xzr
004e50ff8 	stp	q0, q1, [sp, #96]
004e50ffc 	str	q2, [sp, #128]
004e51000 	bl	#-7791156 ; -> 0x46e2dcc
004e51004 	adrp	x22, #89772032 ; -> 0xa3ee000
004e51008 	mov	w21, w0
004e5100c 	ldr	x22, [x22, #2104]
004e51010 	ldr	x8, [x22]
004e51014 	ldr	w9, [x8, #228]
004e51018 	cbnz	w9, #12 ; -> 0x4e51024
004e5101c 	mov	x0, x8
004e51020 	bl	#-9176128 ; -> 0x4590be0
004e51024 	adrp	x23, #98033664 ; -> 0xabcf000
004e51028 	ldrb	w8, [x23, #360]
004e5102c 	cbnz	w8, #24 ; -> 0x4e51044
004e51030 	adrp	x0, #89772032 ; -> 0xa3ee000
004e51034 	ldr	x0, [x0, #2104]
004e51038 	bl	#-9176536 ; -> 0x4590a60
004e5103c 	mov	w8, #1
004e51040 	strb	w8, [x23, #360]
004e51044 	ldr	x0, [x22]
004e51048 	ldr	w8, [x0, #228]
004e5104c 	cbnz	w8, #12 ; -> 0x4e51058
004e51050 	bl	#-9176176 ; -> 0x4590be0
004e51054 	ldr	x0, [x22]
004e51058 	ldr	x8, [x0, #184]
004e5105c 	ldr	x8, [x8]
004e51060 	cbz	x8, #628 ; -> 0x4e512d4
004e51064 	ldr	x0, [x8, #216]
004e51068 	cbz	x0, #620 ; -> 0x4e512d4
004e5106c 	mov	w8, #26215
004e51070 	movk	w8, #26214, lsl #16
004e51074 	smull	x8, w21, w8
004e51078 	lsr	x9, x8, #63
004e5107c 	asr	x8, x8, #34
004e51080 	add	w8, w8, w9
004e51084 	adrp	x9, #90009600 ; -> 0xa428000
004e51088 	add	w8, w8, w8, lsl #2
004e5108c 	ldr	x9, [x9, #2896]
004e51090 	lsl	w1, w8, #1
004e51094 	ldr	x2, [x9]
004e51098 	bl	#52485600 ; -> 0x805ee78
004e5109c 	mov	x0, x20
004e510a0 	mov	x1, xzr
004e510a4 	fmov	s8, s0
004e510a8 	bl	#-3147348 ; -> 0x4b50a54
004e510ac 	mov	x21, x0
004e510b0 	ldr	x0, [x24]
004e510b4 	mov	x22, x1
004e510b8 	ldr	w8, [x0, #228]
004e510bc 	cbnz	w8, #8 ; -> 0x4e510c4
004e510c0 	bl	#-9176288 ; -> 0x4590be0
004e510c4 	mov	w8, #1120403456
004e510c8 	mov	x1, xzr
004e510cc 	fmov	s0, w8
004e510d0 	mov	w8, #2139095040
004e510d4 	fmov	s1, w8
004e510d8 	mov	w8, #-2147483648
004e510dc 	fmul	s0, s8, s0
004e510e0 	fcvtzs	w9, s0
004e510e4 	fcmp	s0, s1
004e510e8 	csel	w0, w8, w9, eq
004e510ec 	bl	#70434488 ; -> 0x917cfa4
004e510f0 	mov	x2, x0
004e510f4 	mov	x3, x1
004e510f8 	mov	x0, x21
004e510fc 	mov	x1, x22
004e51100 	mov	x4, xzr
004e51104 	bl	#70424384 ; -> 0x917a844
004e51108 	mov	x21, x0
004e5110c 	mov	x22, x1
004e51110 	mov	w0, #100
004e51114 	mov	x1, xzr
004e51118 	bl	#70434444 ; -> 0x917cfa4
004e5111c 	mov	x2, x0
004e51120 	mov	x3, x1
004e51124 	mov	x0, x21
004e51128 	mov	x1, x22
004e5112c 	mov	x4, xzr
004e51130 	bl	#70424840 ; -> 0x917aa38
004e51134 	mov	x2, x0
004e51138 	mov	x3, x1
004e5113c 	mov	x0, x20
004e51140 	mov	x1, x2
004e51144 	mov	x2, x3
004e51148 	mov	x3, xzr
004e5114c 	bl	#-3146580 ; -> 0x4b50df8
004e51150 	ldr	x0, [x19, #32]
004e51154 	cbz	x0, #384 ; -> 0x4e512d4
004e51158 	mov	w1, #1
004e5115c 	mov	x2, xzr
004e51160 	bl	#-1002596 ; -> 0x4d5c4fc [DatabaseManager::EventBuff_Active]
004e51164 	tbz	w0, #0, #188 ; -> 0x4e51220
004e51168 	mov	x0, x20
004e5116c 	mov	x1, xzr
004e51170 	bl	#-3147548 ; -> 0x4b50a54
004e51174 	adrp	x23, #89751552 ; -> 0xa3e9000
004e51178 	mov	x21, x0
004e5117c 	mov	x22, x1
004e51180 	ldr	x23, [x23, #1384]
004e51184 	ldr	x0, [x23]
004e51188 	ldr	w8, [x0, #228]
004e5118c 	cbnz	w8, #12 ; -> 0x4e51198
004e51190 	bl	#-9176496 ; -> 0x4590be0
004e51194 	ldr	x0, [x23]
004e51198 	ldr	x8, [x24]
004e5119c 	ldr	x9, [x0, #184]
004e511a0 	ldr	w10, [x8, #228]
004e511a4 	ldr	w23, [x9, #328]
004e511a8 	cbnz	w10, #12 ; -> 0x4e511b4
004e511ac 	mov	x0, x8
004e511b0 	bl	#-9176528 ; -> 0x4590be0
004e511b4 	mov	w0, w23
004e511b8 	mov	x1, xzr
004e511bc 	bl	#70434280 ; -> 0x917cfa4
004e511c0 	mov	x2, x0
004e511c4 	mov	x3, x1
004e511c8 	mov	x0, x21
004e511cc 	mov	x1, x22
004e511d0 	mov	x4, xzr
004e511d4 	bl	#70424176 ; -> 0x917a844
004e511d8 	mov	x21, x0
004e511dc 	mov	x22, x1
004e511e0 	mov	w0, #100
004e511e4 	mov	x1, xzr
004e511e8 	bl	#70434236 ; -> 0x917cfa4
004e511ec 	mov	x2, x0
004e511f0 	mov	x3, x1
004e511f4 	mov	x0, x21
004e511f8 	mov	x1, x22
004e511fc 	mov	x4, xzr
004e51200 	bl	#70424632 ; -> 0x917aa38
004e51204 	mov	x2, x0
004e51208 	mov	x3, x1
004e5120c 	mov	x0, x20
004e51210 	mov	x1, x2
004e51214 	mov	x2, x3
004e51218 	mov	x3, xzr
004e5121c 	bl	#-3146788 ; -> 0x4b50df8
004e51220 	ldr	x8, [x19, #32]
004e51224 	cbz	x8, #176 ; -> 0x4e512d4
004e51228 	ldr	q0, [x8, #3424]
004e5122c 	ldr	q1, [x8, #3440]
004e51230 	add	x0, sp, #48
004e51234 	ldr	q2, [x8, #3456]
004e51238 	mov	x1, xzr
004e5123c 	stp	q0, q1, [sp, #48]
004e51240 	str	q2, [sp, #80]
004e51244 	bl	#-7791736 ; -> 0x46e2dcc
004e51248 	cmp	w0, #1
004e5124c 	b.lt	#80 ; -> 0x4e5129c
004e51250 	mov	x0, x20
004e51254 	mov	x1, xzr
004e51258 	bl	#-3147780 ; -> 0x4b50a54
004e5125c 	mov	x19, x0
004e51260 	ldr	x0, [x24]
004e51264 	mov	x20, x1
004e51268 	ldr	w8, [x0, #228]
004e5126c 	cbnz	w8, #8 ; -> 0x4e51274
004e51270 	bl	#-9176720 ; -> 0x4590be0
004e51274 	mov	w0, #3
004e51278 	mov	x1, xzr
004e5127c 	bl	#70434088 ; -> 0x917cfa4
004e51280 	mov	x2, x0
004e51284 	mov	x3, x1
004e51288 	mov	x0, x19
004e5128c 	mov	x1, x20
004e51290 	mov	x4, xzr
004e51294 	bl	#70423984 ; -> 0x917a844
004e51298 	b	#32 ; -> 0x4e512b8
004e5129c 	ldp	q0, q1, [x20]
004e512a0 	mov	x0, sp
004e512a4 	ldr	x8, [x20, #32]
004e512a8 	mov	x1, xzr
004e512ac 	stp	q0, q1, [sp]
004e512b0 	str	x8, [sp, #32]
004e512b4 	bl	#-3146372 ; -> 0x4b51030
004e512b8 	add	sp, sp, #480
004e512bc 	ldp	x20, x19, [sp, #64]
004e512c0 	ldp	x22, x21, [sp, #48]
004e512c4 	ldp	x24, x23, [sp, #32]
004e512c8 	ldp	x29, x30, [sp, #16]
004e512cc 	ldr	d8, [sp], #80
004e512d0 	ret
004e512d4 	bl	#-9176520 ; -> 0x4590d0c
