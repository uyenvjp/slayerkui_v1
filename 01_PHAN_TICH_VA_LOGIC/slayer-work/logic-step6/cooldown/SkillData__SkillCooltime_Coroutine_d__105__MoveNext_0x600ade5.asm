00530da34 	sub	sp, sp, #192
00530da38 	str	d10, [sp, #128]
00530da3c 	stp	d9, d8, [sp, #144]
00530da40 	stp	x30, x21, [sp, #160]
00530da44 	stp	x20, x19, [sp, #176]
00530da48 	adrp	x19, #93102080 ; -> 0xabd7000 
00530da4c 	mov	x20, x0
00530da50 	ldrb	w8, [x19, #1050]
00530da54 	tbnz	w8, #0, #48 ; -> 0x530da84 
00530da58 	adrp	x0, #84824064 ; -> 0xa3f2000 
00530da5c 	ldr	x0, [x0, #552]
00530da60 	bl	#-14143488 ; -> 0x4590a60 
00530da64 	adrp	x0, #84987904 ; -> 0xa41a000 
00530da68 	ldr	x0, [x0, #3856]
00530da6c 	bl	#-14143500 ; -> 0x4590a60 
00530da70 	adrp	x0, #85106688 ; -> 0xa437000 
00530da74 	ldr	x0, [x0, #912]
00530da78 	bl	#-14143512 ; -> 0x4590a60 
00530da7c 	mov	w8, #1
00530da80 	strb	w8, [x19, #1050]
00530da84 	movi	v0.2d, #0000000000000000
00530da88 	ldr	w8, [x20, #16]
00530da8c 	cmp	w8, #2
00530da90 	stp	q0, q0, [sp, #64]
00530da94 	stp	q0, q0, [sp, #96]
00530da98 	b.hs	#616 ; -> 0x530dd00 
00530da9c 	ldr	x19, [x20, #32]
00530daa0 	mov	w8, #-1
00530daa4 	str	w8, [x20, #16]
00530daa8 	cbz	x19, #628 ; -> 0x530dd1c 
00530daac 	ldr	s0, [x19, #316]
00530dab0 	fcmp	s0, #0.0
00530dab4 	b.le	#372 ; -> 0x530dc28 
00530dab8 	mov	x0, x19
00530dabc 	bl	#-31820 ; -> 0x5305e70 SkillData::get_MaxCooltimePlus
00530dac0 	ldr	s1, [x19, #316]
00530dac4 	fmov	s8, s0
00530dac8 	fsub	s0, s0, s1
00530dacc 	fcmp	s0, #0.0
00530dad0 	b.pl	#8 ; -> 0x530dad8 
00530dad4 	str	s8, [x19, #316]
00530dad8 	mov	x0, x19
00530dadc 	bl	#-33612 ; -> 0x5305790 SkillData::get_SkillBanCheck
00530dae0 	tbnz	w0, #0, #128 ; -> 0x530db60 
00530dae4 	adrp	x21, #84987904 ; -> 0xa41a000 
00530dae8 	ldr	x21, [x21, #3856]
00530daec 	ldr	x0, [x21]
00530daf0 	ldr	w8, [x0, #228]
00530daf4 	cbnz	w8, #12 ; -> 0x530db00 
00530daf8 	bl	#-14143256 ; -> 0x4590be0 
00530dafc 	ldr	x0, [x21]
00530db00 	ldr	x8, [x0, #184]
00530db04 	ldr	x8, [x8]
00530db08 	cbz	x8, #532 ; -> 0x530dd1c 
00530db0c 	ldrb	w8, [x8, #448]
00530db10 	cbz	w8, #80 ; -> 0x530db60 
00530db14 	adrp	x21, #84824064 ; -> 0xa3f2000 
00530db18 	ldr	x21, [x21, #552]
00530db1c 	ldr	s10, [x19, #316]
00530db20 	ldr	x0, [x21]
00530db24 	ldr	w8, [x0, #228]
00530db28 	cbnz	w8, #12 ; -> 0x530db34 
00530db2c 	bl	#-14143308 ; -> 0x4590be0 
00530db30 	ldr	x0, [x21]
00530db34 	ldr	x8, [x0, #184]
00530db38 	ldr	x0, [x8]
00530db3c 	cbz	x0, #480 ; -> 0x530dd1c 
00530db40 	mov	x1, xzr
00530db44 	bl	#-5018096 ; -> 0x4e44954 GameManager::get_GameDeltaTime
00530db48 	mov	x0, x19
00530db4c 	fmov	s9, s0
00530db50 	bl	#-32864 ; -> 0x5305af0 SkillData::get_CoolTimeAddValue
00530db54 	fmul	s0, s9, s0
00530db58 	fsub	s0, s10, s0
00530db5c 	str	s0, [x19, #316]
00530db60 	ldr	x8, [x19, #40]
00530db64 	cbz	x8, #440 ; -> 0x530dd1c 
00530db68 	ldr	x0, [x8, #88]
00530db6c 	cbz	x0, #432 ; -> 0x530dd1c 
00530db70 	ldr	s0, [x19, #316]
00530db74 	fmov	s1, #1.00000000
00530db78 	mov	x1, xzr
00530db7c 	fdiv	s0, s0, s8
00530db80 	fsub	s0, s1, s0
00530db84 	bl	#75592728 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
00530db88 	ldr	s0, [x19, #316]
00530db8c 	fmov	s1, #10.00000000
00530db90 	adrp	x8, #-54411264 ; -> 0x1f29000 
00530db94 	ldr	s2, [x8, #2100]
00530db98 	mov	w8, #2139095040
00530db9c 	fsub	s0, s8, s0
00530dba0 	fmul	s0, s0, s1
00530dba4 	fcvtzs	s1, s0
00530dba8 	scvtf	s1, s1
00530dbac 	fmul	s1, s1, s2
00530dbb0 	fmov	s2, w8
00530dbb4 	adrp	x8, #-54411264 ; -> 0x1f29000 
00530dbb8 	fcmp	s0, s2
00530dbbc 	ldr	s0, [x8, #2356]
00530dbc0 	ldr	x8, [x19, #40]
00530dbc4 	fcsel	s8, s0, s1, eq
00530dbc8 	cbz	x8, #340 ; -> 0x530dd1c 
00530dbcc 	adrp	x9, #85106688 ; -> 0xa437000 
00530dbd0 	ldr	x9, [x9, #912]
00530dbd4 	ldr	x19, [x8, #96]
00530dbd8 	ldr	x0, [x9]
00530dbdc 	ldr	w9, [x0, #228]
00530dbe0 	cbnz	w9, #8 ; -> 0x530dbe8 
00530dbe4 	bl	#-14143492 ; -> 0x4590be0 
00530dbe8 	fmov	s0, s8
00530dbec 	bl	#-9700 ; -> 0x530b608 SkillData::ToString
00530dbf0 	cbz	x19, #300 ; -> 0x530dd1c 
00530dbf4 	ldr	x8, [x19]
00530dbf8 	mov	x1, x0
00530dbfc 	mov	x0, x19
00530dc00 	ldr	x9, [x8, #1512]
00530dc04 	ldr	x2, [x8, #1520]
00530dc08 	blr	x9
00530dc0c 	str	xzr, [x20, #24]!
00530dc10 	mov	x0, x20
00530dc14 	mov	x1, xzr
00530dc18 	bl	#-14144020 ; -> 0x4590a04 
00530dc1c 	mov	w0, #1
00530dc20 	stur	w0, [x20, #-8]
00530dc24 	b	#224 ; -> 0x530dd04 
00530dc28 	ldr	x8, [x19, #40]
00530dc2c 	cbz	x8, #240 ; -> 0x530dd1c 
00530dc30 	ldr	x0, [x8, #80]
00530dc34 	cbz	x0, #232 ; -> 0x530dd1c 
00530dc38 	mov	w1, wzr
00530dc3c 	mov	x2, xzr
00530dc40 	bl	#74407828 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00530dc44 	ldr	x0, [x19, #40]
00530dc48 	mov	w8, #1
00530dc4c 	strb	w8, [x19, #56]
00530dc50 	cbz	x0, #204 ; -> 0x530dd1c 
00530dc54 	bl	#-28704 ; -> 0x5306c34 SkillEquipSlot::SkillUsingCheck
00530dc58 	ldr	x8, [x19, #32]
00530dc5c 	cbz	x8, #192 ; -> 0x530dd1c 
00530dc60 	ldr	w8, [x8, #140]
00530dc64 	cmp	w8, #11
00530dc68 	b.ne	#152 ; -> 0x530dd00 
00530dc6c 	ldr	w8, [x19, #860]
00530dc70 	mov	x0, x19
00530dc74 	add	w20, w8, #1
00530dc78 	mov	x8, sp
00530dc7c 	str	w20, [x19, #860]
00530dc80 	bl	#-29688 ; -> 0x5306888 SkillData::get_MaxUseStackCount
00530dc84 	mov	x0, sp
00530dc88 	mov	x1, xzr
00530dc8c 	bl	#-8108348 ; -> 0x4b52350 SilentInt::op_Implicit
00530dc90 	cmp	w20, w0
00530dc94 	b.ge	#28 ; -> 0x530dcb0 
00530dc98 	mov	x0, x19
00530dc9c 	bl	#-32300 ; -> 0x5305e70 SkillData::get_MaxCooltimePlus
00530dca0 	mov	x0, x19
00530dca4 	str	s0, [x19, #316]
00530dca8 	bl	#-16844 ; -> 0x5309adc SkillData::SkillCoolTimeSetting
00530dcac 	b	#32 ; -> 0x530dccc 
00530dcb0 	add	x8, sp, #64
00530dcb4 	mov	x0, x19
00530dcb8 	bl	#-29744 ; -> 0x5306888 SkillData::get_MaxUseStackCount
00530dcbc 	add	x0, sp, #64
00530dcc0 	mov	x1, xzr
00530dcc4 	bl	#-8109748 ; -> 0x4b51e10 SilentInt::get_Value
00530dcc8 	str	w0, [x19, #860]
00530dccc 	ldr	x8, [x19, #40]
00530dcd0 	cbz	x8, #76 ; -> 0x530dd1c 
00530dcd4 	ldr	x20, [x8, #176]
00530dcd8 	add	x0, x19, #860
00530dcdc 	mov	x1, xzr
00530dce0 	bl	#62286340 ; -> 0x8e746e4 System.Int32::ToString
00530dce4 	cbz	x20, #56 ; -> 0x530dd1c 
00530dce8 	ldr	x8, [x20]
00530dcec 	mov	x1, x0
00530dcf0 	mov	x0, x20
00530dcf4 	ldr	x9, [x8, #1512]
00530dcf8 	ldr	x2, [x8, #1520]
00530dcfc 	blr	x9
00530dd00 	mov	w0, wzr
00530dd04 	ldp	x20, x19, [sp, #176]
00530dd08 	ldr	d10, [sp, #128]
00530dd0c 	ldp	x30, x21, [sp, #160]
00530dd10 	ldp	d9, d8, [sp, #144]
00530dd14 	add	sp, sp, #192
00530dd18 	ret
00530dd1c 	bl	#-14143504 ; -> 0x4590d0c 
