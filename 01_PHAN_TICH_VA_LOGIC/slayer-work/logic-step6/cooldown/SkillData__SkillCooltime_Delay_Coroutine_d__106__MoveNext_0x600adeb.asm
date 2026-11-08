00530dd6c 	sub	sp, sp, #272
00530dd70 	str	d8, [sp, #224]
00530dd74 	str	x29, [sp, #232]
00530dd78 	stp	x30, x21, [sp, #240]
00530dd7c 	stp	x20, x19, [sp, #256]
00530dd80 	adrp	x20, #93102080 ; -> 0xabd7000 
00530dd84 	mov	x19, x0
00530dd88 	ldrb	w8, [x20, #1051]
00530dd8c 	tbnz	w8, #0, #48 ; -> 0x530ddbc 
00530dd90 	adrp	x0, #84824064 ; -> 0xa3f2000 
00530dd94 	ldr	x0, [x0, #552]
00530dd98 	bl	#-14144312 ; -> 0x4590a60 
00530dd9c 	adrp	x0, #84987904 ; -> 0xa41a000 
00530dda0 	ldr	x0, [x0, #3856]
00530dda4 	bl	#-14144324 ; -> 0x4590a60 
00530dda8 	adrp	x0, #85106688 ; -> 0xa437000 
00530ddac 	ldr	x0, [x0, #912]
00530ddb0 	bl	#-14144336 ; -> 0x4590a60 
00530ddb4 	mov	w8, #1
00530ddb8 	strb	w8, [x20, #1051]
00530ddbc 	ldr	w8, [x19, #16]
00530ddc0 	cmp	w8, #2
00530ddc4 	b.hs	#520 ; -> 0x530dfcc 
00530ddc8 	ldr	x20, [x19, #32]
00530ddcc 	mov	w8, #-1
00530ddd0 	str	w8, [x19, #16]
00530ddd4 	cbz	x20, #532 ; -> 0x530dfe8 
00530ddd8 	ldr	s0, [x20, #316]
00530dddc 	fcmp	s0, #0.0
00530dde0 	b.le	#444 ; -> 0x530df9c 
00530dde4 	add	x0, sp, #152
00530dde8 	add	x1, x20, #96
00530ddec 	mov	w2, #72
00530ddf0 	bl	#77978368 ; -> 0x9d6b8f0 
00530ddf4 	add	x0, sp, #152
00530ddf8 	mov	x1, xzr
00530ddfc 	bl	#-8110292 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530de00 	ldr	s1, [x20, #316]
00530de04 	fsub	s0, s0, s1
00530de08 	fcmp	s0, #0.0
00530de0c 	b.pl	#20 ; -> 0x530de20 
00530de10 	add	x0, x20, #96
00530de14 	mov	x1, xzr
00530de18 	bl	#-8111908 ; -> 0x4b516f4 SilentFloat::get_Value
00530de1c 	str	s0, [x20, #316]
00530de20 	mov	x0, x20
00530de24 	bl	#-34452 ; -> 0x5305790 SkillData::get_SkillBanCheck
00530de28 	tbnz	w0, #0, #112 ; -> 0x530de98 
00530de2c 	adrp	x21, #84987904 ; -> 0xa41a000 
00530de30 	ldr	x21, [x21, #3856]
00530de34 	ldr	x0, [x21]
00530de38 	ldr	w8, [x0, #228]
00530de3c 	cbnz	w8, #12 ; -> 0x530de48 
00530de40 	bl	#-14144096 ; -> 0x4590be0 
00530de44 	ldr	x0, [x21]
00530de48 	ldr	x8, [x0, #184]
00530de4c 	ldr	x8, [x8]
00530de50 	cbz	x8, #408 ; -> 0x530dfe8 
00530de54 	ldrb	w8, [x8, #448]
00530de58 	cbz	w8, #64 ; -> 0x530de98 
00530de5c 	adrp	x21, #84824064 ; -> 0xa3f2000 
00530de60 	ldr	x21, [x21, #552]
00530de64 	ldr	s8, [x20, #316]
00530de68 	ldr	x0, [x21]
00530de6c 	ldr	w8, [x0, #228]
00530de70 	cbnz	w8, #12 ; -> 0x530de7c 
00530de74 	bl	#-14144148 ; -> 0x4590be0 
00530de78 	ldr	x0, [x21]
00530de7c 	ldr	x8, [x0, #184]
00530de80 	ldr	x0, [x8]
00530de84 	cbz	x0, #356 ; -> 0x530dfe8 
00530de88 	mov	x1, xzr
00530de8c 	bl	#-5018936 ; -> 0x4e44954 GameManager::get_GameDeltaTime
00530de90 	fsub	s0, s8, s0
00530de94 	str	s0, [x20, #316]
00530de98 	ldr	x8, [x20, #40]
00530de9c 	cbz	x8, #332 ; -> 0x530dfe8 
00530dea0 	ldr	x21, [x8, #88]
00530dea4 	ldr	s8, [x20, #316]
00530dea8 	add	x0, sp, #80
00530deac 	add	x1, x20, #96
00530deb0 	mov	w2, #72
00530deb4 	bl	#77978172 ; -> 0x9d6b8f0 
00530deb8 	add	x0, sp, #80
00530debc 	mov	x1, xzr
00530dec0 	bl	#-8110488 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530dec4 	cbz	x21, #292 ; -> 0x530dfe8 
00530dec8 	fdiv	s0, s8, s0
00530decc 	fmov	s1, #1.00000000
00530ded0 	mov	x0, x21
00530ded4 	mov	x1, xzr
00530ded8 	fsub	s0, s1, s0
00530dedc 	bl	#75591872 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
00530dee0 	add	x0, sp, #8
00530dee4 	add	x1, x20, #96
00530dee8 	mov	w2, #72
00530deec 	bl	#77978116 ; -> 0x9d6b8f0 
00530def0 	add	x0, sp, #8
00530def4 	mov	x1, xzr
00530def8 	bl	#-8110544 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530defc 	ldr	s1, [x20, #316]
00530df00 	adrp	x8, #-54411264 ; -> 0x1f29000 
00530df04 	ldr	s2, [x8, #2100]
00530df08 	mov	w8, #2139095040
00530df0c 	fsub	s0, s0, s1
00530df10 	fmov	s1, #10.00000000
00530df14 	fmul	s0, s0, s1
00530df18 	fcvtzs	s1, s0
00530df1c 	scvtf	s1, s1
00530df20 	fmul	s1, s1, s2
00530df24 	fmov	s2, w8
00530df28 	adrp	x8, #-54411264 ; -> 0x1f29000 
00530df2c 	fcmp	s0, s2
00530df30 	ldr	s0, [x8, #2356]
00530df34 	ldr	x8, [x20, #40]
00530df38 	fcsel	s8, s0, s1, eq
00530df3c 	cbz	x8, #172 ; -> 0x530dfe8 
00530df40 	adrp	x9, #85106688 ; -> 0xa437000 
00530df44 	ldr	x9, [x9, #912]
00530df48 	ldr	x20, [x8, #96]
00530df4c 	ldr	x0, [x9]
00530df50 	ldr	w9, [x0, #228]
00530df54 	cbnz	w9, #8 ; -> 0x530df5c 
00530df58 	bl	#-14144376 ; -> 0x4590be0 
00530df5c 	fmov	s0, s8
00530df60 	bl	#-10584 ; -> 0x530b608 SkillData::ToString
00530df64 	cbz	x20, #132 ; -> 0x530dfe8 
00530df68 	ldr	x8, [x20]
00530df6c 	mov	x1, x0
00530df70 	mov	x0, x20
00530df74 	ldr	x9, [x8, #1512]
00530df78 	ldr	x2, [x8, #1520]
00530df7c 	blr	x9
00530df80 	str	xzr, [x19, #24]!
00530df84 	mov	x0, x19
00530df88 	mov	x1, xzr
00530df8c 	bl	#-14144904 ; -> 0x4590a04 
00530df90 	mov	w0, #1
00530df94 	stur	w0, [x19, #-8]
00530df98 	b	#56 ; -> 0x530dfd0 
00530df9c 	ldr	x8, [x20, #40]
00530dfa0 	cbz	x8, #72 ; -> 0x530dfe8 
00530dfa4 	ldr	x0, [x8, #80]
00530dfa8 	cbz	x0, #64 ; -> 0x530dfe8 
00530dfac 	mov	w1, wzr
00530dfb0 	mov	x2, xzr
00530dfb4 	bl	#74406944 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00530dfb8 	ldr	x0, [x20, #40]
00530dfbc 	mov	w8, #1
00530dfc0 	strb	w8, [x20, #56]
00530dfc4 	cbz	x0, #36 ; -> 0x530dfe8 
00530dfc8 	bl	#-29588 ; -> 0x5306c34 SkillEquipSlot::SkillUsingCheck
00530dfcc 	mov	w0, wzr
00530dfd0 	ldp	x20, x19, [sp, #256]
00530dfd4 	ldr	x29, [sp, #232]
00530dfd8 	ldp	x30, x21, [sp, #240]
00530dfdc 	ldr	d8, [sp, #224]
00530dfe0 	add	sp, sp, #272
00530dfe4 	ret
00530dfe8 	bl	#-14144220 ; -> 0x4590d0c 
