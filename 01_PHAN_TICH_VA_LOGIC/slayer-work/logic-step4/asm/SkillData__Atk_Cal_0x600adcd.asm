00530b940 	str	x30, [sp, #-48]!
00530b944 	stp	x22, x21, [sp, #16]
00530b948 	stp	x20, x19, [sp, #32]
00530b94c 	adrp	x20, #93110272 ; -> 0xabd7000 
00530b950 	mov	x19, x0
00530b954 	ldrb	w8, [x20, #1042]
00530b958 	tbnz	w8, #0, #84 ; -> 0x530b9ac 
00530b95c 	adrp	x0, #85065728 ; -> 0xa42b000 
00530b960 	ldr	x0, [x0, #2496]
00530b964 	bl	#-14135044 ; -> 0x4590a60 
00530b968 	adrp	x0, #84815872 ; -> 0xa3ee000 
00530b96c 	ldr	x0, [x0, #2104]
00530b970 	bl	#-14135056 ; -> 0x4590a60 
00530b974 	adrp	x0, #84795392 ; -> 0xa3e9000 
00530b978 	ldr	x0, [x0, #1384]
00530b97c 	bl	#-14135068 ; -> 0x4590a60 
00530b980 	adrp	x0, #84844544 ; -> 0xa3f5000 
00530b984 	ldr	x0, [x0, #3880]
00530b988 	bl	#-14135080 ; -> 0x4590a60 
00530b98c 	adrp	x0, #84832256 ; -> 0xa3f2000 
00530b990 	ldr	x0, [x0, #552]
00530b994 	bl	#-14135092 ; -> 0x4590a60 
00530b998 	adrp	x0, #84819968 ; -> 0xa3ef000 
00530b99c 	ldr	x0, [x0, #3320]
00530b9a0 	bl	#-14135104 ; -> 0x4590a60 
00530b9a4 	mov	w8, #1
00530b9a8 	strb	w8, [x20, #1042]
00530b9ac 	mov	w0, #43303
00530b9b0 	mov	x1, xzr
00530b9b4 	bl	#-7095312 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530b9b8 	tbz	w0, #0, #44 ; -> 0x530b9e4 
00530b9bc 	mov	w0, #43303
00530b9c0 	mov	x1, xzr
00530b9c4 	bl	#-7095148 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530b9c8 	cbz	x0, #1324 ; -> 0x530bef4 
00530b9cc 	mov	x1, x19
00530b9d0 	ldp	x20, x19, [sp, #32]
00530b9d4 	ldp	x22, x21, [sp, #16]
00530b9d8 	mov	x2, xzr
00530b9dc 	ldr	x30, [sp], #48
00530b9e0 	b	#-7918784 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00530b9e4 	ldr	x8, [x19]
00530b9e8 	mov	x0, x19
00530b9ec 	mov	w1, wzr
00530b9f0 	ldr	x9, [x8, #632]
00530b9f4 	ldr	x2, [x8, #640]
00530b9f8 	blr	x9
00530b9fc 	str	x0, [x19, #792]
00530ba00 	add	x0, x19, #800
00530ba04 	str	x1, [x19, #800]
00530ba08 	mov	x1, xzr
00530ba0c 	bl	#-14135304 ; -> 0x4590a04 
00530ba10 	ldr	x8, [x19]
00530ba14 	mov	x0, x19
00530ba18 	mov	w1, #1
00530ba1c 	ldr	x9, [x8, #632]
00530ba20 	ldr	x2, [x8, #640]
00530ba24 	blr	x9
00530ba28 	str	x0, [x19, #808]
00530ba2c 	add	x0, x19, #816
00530ba30 	str	x1, [x19, #816]
00530ba34 	mov	x1, xzr
00530ba38 	bl	#-14135348 ; -> 0x4590a04 
00530ba3c 	ldr	x8, [x19]
00530ba40 	mov	x0, x19
00530ba44 	mov	w1, #2
00530ba48 	ldr	x9, [x8, #632]
00530ba4c 	ldr	x2, [x8, #640]
00530ba50 	blr	x9
00530ba54 	str	x0, [x19, #824]
00530ba58 	add	x0, x19, #832
00530ba5c 	str	x1, [x19, #832]
00530ba60 	mov	x1, xzr
00530ba64 	bl	#-14135392 ; -> 0x4590a04 
00530ba68 	mov	x0, x19
00530ba6c 	bl	#-25024 ; -> 0x53058ac SkillData::get_MasteryLevel
00530ba70 	cmp	w0, #1
00530ba74 	b.lt	#128 ; -> 0x530baf4 
00530ba78 	mov	w20, w0
00530ba7c 	ldr	x1, [x19, #792]
00530ba80 	ldr	x2, [x19, #800]
00530ba84 	mov	x0, x19
00530ba88 	mov	w3, w20
00530ba8c 	bl	#1132 ; -> 0x530bef8 SkillData::MasteryDmgFactor
00530ba90 	str	x0, [x19, #792]
00530ba94 	add	x0, x19, #800
00530ba98 	str	x1, [x19, #800]
00530ba9c 	mov	x1, xzr
00530baa0 	bl	#-14135452 ; -> 0x4590a04 
00530baa4 	ldr	x1, [x19, #808]
00530baa8 	ldr	x2, [x19, #816]
00530baac 	mov	x0, x19
00530bab0 	mov	w3, w20
00530bab4 	bl	#1092 ; -> 0x530bef8 SkillData::MasteryDmgFactor
00530bab8 	str	x0, [x19, #808]
00530babc 	add	x0, x19, #816
00530bac0 	str	x1, [x19, #816]
00530bac4 	mov	x1, xzr
00530bac8 	bl	#-14135492 ; -> 0x4590a04 
00530bacc 	ldr	x1, [x19, #824]
00530bad0 	ldr	x2, [x19, #832]
00530bad4 	mov	x0, x19
00530bad8 	mov	w3, w20
00530badc 	bl	#1052 ; -> 0x530bef8 SkillData::MasteryDmgFactor
00530bae0 	str	x0, [x19, #824]
00530bae4 	add	x0, x19, #832
00530bae8 	str	x1, [x19, #832]
00530baec 	mov	x1, xzr
00530baf0 	bl	#-14135532 ; -> 0x4590a04 
00530baf4 	ldr	x8, [x19, #32]
00530baf8 	cbz	x8, #1020 ; -> 0x530bef4 
00530bafc 	ldr	w8, [x8, #132]
00530bb00 	cmp	w8, #3
00530bb04 	b.ne	#340 ; -> 0x530bc58 
00530bb08 	adrp	x20, #84815872 ; -> 0xa3ee000 
00530bb0c 	ldr	x20, [x20, #2104]
00530bb10 	ldr	x0, [x20]
00530bb14 	ldr	w8, [x0, #228]
00530bb18 	cbnz	w8, #8 ; -> 0x530bb20 
00530bb1c 	bl	#-14135100 ; -> 0x4590be0 
00530bb20 	adrp	x21, #93077504 ; -> 0xabcf000 
00530bb24 	ldrb	w8, [x21, #360]
00530bb28 	cbnz	w8, #24 ; -> 0x530bb40 
00530bb2c 	adrp	x0, #84815872 ; -> 0xa3ee000 
00530bb30 	ldr	x0, [x0, #2104]
00530bb34 	bl	#-14135508 ; -> 0x4590a60 
00530bb38 	mov	w8, #1
00530bb3c 	strb	w8, [x21, #360]
00530bb40 	ldr	x0, [x20]
00530bb44 	ldr	w8, [x0, #228]
00530bb48 	cbnz	w8, #12 ; -> 0x530bb54 
00530bb4c 	bl	#-14135148 ; -> 0x4590be0 
00530bb50 	ldr	x0, [x20]
00530bb54 	ldr	x8, [x0, #184]
00530bb58 	ldr	x9, [x8]
00530bb5c 	cbz	x9, #920 ; -> 0x530bef4 
00530bb60 	ldr	x8, [x19, #32]
00530bb64 	cbz	x8, #912 ; -> 0x530bef4 
00530bb68 	ldr	x0, [x9, #264]
00530bb6c 	cbz	x0, #904 ; -> 0x530bef4 
00530bb70 	adrp	x9, #84844544 ; -> 0xa3f5000 
00530bb74 	ldr	x9, [x9, #3880]
00530bb78 	ldr	w1, [x8, #464]
00530bb7c 	ldr	x2, [x9]
00530bb80 	bl	#47500308 ; -> 0x8058794 
00530bb84 	cbz	x0, #880 ; -> 0x530bef4 
00530bb88 	adrp	x21, #84795392 ; -> 0xa3e9000 
00530bb8c 	mov	x8, x0
00530bb90 	ldr	x21, [x21, #1384]
00530bb94 	ldr	w20, [x8, #444]
00530bb98 	ldr	x0, [x21]
00530bb9c 	ldr	w9, [x0, #228]
00530bba0 	cbnz	w9, #12 ; -> 0x530bbac 
00530bba4 	bl	#-14135236 ; -> 0x4590be0 
00530bba8 	ldr	x0, [x21]
00530bbac 	ldr	x8, [x0, #184]
00530bbb0 	ldr	x8, [x8]
00530bbb4 	cbz	x8, #832 ; -> 0x530bef4 
00530bbb8 	adrp	x9, #85065728 ; -> 0xa42b000 
00530bbbc 	mov	w1, w20
00530bbc0 	ldr	x9, [x9, #2496]
00530bbc4 	ldr	x0, [x8, #17528]
00530bbc8 	ldr	x2, [x9]
00530bbcc 	bl	#12004068 ; -> 0x5e7e6b0 
00530bbd0 	ldr	x2, [x19, #792]
00530bbd4 	ldr	x3, [x19, #800]
00530bbd8 	mov	w21, w0
00530bbdc 	mov	x0, x19
00530bbe0 	mov	w1, w20
00530bbe4 	mov	w4, w21
00530bbe8 	bl	#1380 ; -> 0x530c14c SkillData::MasteryDmgFactor
00530bbec 	str	x0, [x19, #792]
00530bbf0 	add	x0, x19, #800
00530bbf4 	str	x1, [x19, #800]
00530bbf8 	mov	x1, xzr
00530bbfc 	bl	#-14135800 ; -> 0x4590a04 
00530bc00 	ldr	x2, [x19, #808]
00530bc04 	ldr	x3, [x19, #816]
00530bc08 	mov	x0, x19
00530bc0c 	mov	w1, w20
00530bc10 	mov	w4, w21
00530bc14 	bl	#1336 ; -> 0x530c14c SkillData::MasteryDmgFactor
00530bc18 	str	x0, [x19, #808]
00530bc1c 	add	x0, x19, #816
00530bc20 	str	x1, [x19, #816]
00530bc24 	mov	x1, xzr
00530bc28 	bl	#-14135844 ; -> 0x4590a04 
00530bc2c 	ldr	x2, [x19, #824]
00530bc30 	ldr	x3, [x19, #832]
00530bc34 	mov	x0, x19
00530bc38 	mov	w1, w20
00530bc3c 	mov	w4, w21
00530bc40 	bl	#1292 ; -> 0x530c14c SkillData::MasteryDmgFactor
00530bc44 	str	x0, [x19, #824]
00530bc48 	add	x0, x19, #832
00530bc4c 	str	x1, [x19, #832]
00530bc50 	mov	x1, xzr
00530bc54 	bl	#-14135888 ; -> 0x4590a04 
00530bc58 	adrp	x20, #84832256 ; -> 0xa3f2000 
00530bc5c 	ldr	x20, [x20, #552]
00530bc60 	ldr	x0, [x20]
00530bc64 	ldr	w8, [x0, #228]
00530bc68 	cbnz	w8, #12 ; -> 0x530bc74 
00530bc6c 	bl	#-14135436 ; -> 0x4590be0 
00530bc70 	ldr	x0, [x20]
00530bc74 	ldr	x8, [x0, #184]
00530bc78 	ldr	x0, [x8]
00530bc7c 	cbz	x0, #632 ; -> 0x530bef4 
00530bc80 	mov	x1, xzr
00530bc84 	bl	#-5020976 ; -> 0x4e41f54 GameManager::get_gameMode
00530bc88 	cmp	w0, #21
00530bc8c 	b.ne	#316 ; -> 0x530bdc8 
00530bc90 	adrp	x21, #93077504 ; -> 0xabcf000 
00530bc94 	ldrb	w8, [x21, #635]
00530bc98 	cbnz	w8, #24 ; -> 0x530bcb0 
00530bc9c 	adrp	x0, #84819968 ; -> 0xa3ef000 
00530bca0 	ldr	x0, [x0, #3248]
00530bca4 	bl	#-14135876 ; -> 0x4590a60 
00530bca8 	mov	w8, #1
00530bcac 	strb	w8, [x21, #635]
00530bcb0 	adrp	x22, #84819968 ; -> 0xa3ef000 
00530bcb4 	ldr	x22, [x22, #3248]
00530bcb8 	ldr	x8, [x22]
00530bcbc 	ldr	x8, [x8, #184]
00530bcc0 	ldr	x8, [x8]
00530bcc4 	cbz	x8, #560 ; -> 0x530bef4 
00530bcc8 	ldr	x8, [x8, #88]
00530bccc 	cbz	x8, #552 ; -> 0x530bef4 
00530bcd0 	ldr	x0, [x8, #24]
00530bcd4 	cbz	x0, #544 ; -> 0x530bef4 
00530bcd8 	ldr	x3, [x19, #800]
00530bcdc 	ldr	x2, [x19, #792]
00530bce0 	mov	x1, x19
00530bce4 	mov	x4, xzr
00530bce8 	bl	#-1062784 ; -> 0x5208568 GuildManager_Quest_FieldEffect::ApplyActiveSkillDamageBuff
00530bcec 	str	x0, [x19, #792]
00530bcf0 	add	x0, x19, #800
00530bcf4 	str	x1, [x19, #800]
00530bcf8 	mov	x1, xzr
00530bcfc 	bl	#-14136056 ; -> 0x4590a04 
00530bd00 	ldrb	w8, [x21, #635]
00530bd04 	cbnz	w8, #24 ; -> 0x530bd1c 
00530bd08 	adrp	x0, #84819968 ; -> 0xa3ef000 
00530bd0c 	ldr	x0, [x0, #3248]
00530bd10 	bl	#-14135984 ; -> 0x4590a60 
00530bd14 	mov	w8, #1
00530bd18 	strb	w8, [x21, #635]
00530bd1c 	ldr	x8, [x22]
00530bd20 	ldr	x8, [x8, #184]
00530bd24 	ldr	x8, [x8]
00530bd28 	cbz	x8, #460 ; -> 0x530bef4 
00530bd2c 	ldr	x8, [x8, #88]
00530bd30 	cbz	x8, #452 ; -> 0x530bef4 
00530bd34 	ldr	x0, [x8, #24]
00530bd38 	cbz	x0, #444 ; -> 0x530bef4 
00530bd3c 	ldr	x3, [x19, #816]
00530bd40 	ldr	x2, [x19, #808]
00530bd44 	mov	x1, x19
00530bd48 	mov	x4, xzr
00530bd4c 	bl	#-1062884 ; -> 0x5208568 GuildManager_Quest_FieldEffect::ApplyActiveSkillDamageBuff
00530bd50 	str	x0, [x19, #808]
00530bd54 	add	x0, x19, #816
00530bd58 	str	x1, [x19, #816]
00530bd5c 	mov	x1, xzr
00530bd60 	bl	#-14136156 ; -> 0x4590a04 
00530bd64 	ldrb	w8, [x21, #635]
00530bd68 	cbnz	w8, #24 ; -> 0x530bd80 
00530bd6c 	adrp	x0, #84819968 ; -> 0xa3ef000 
00530bd70 	ldr	x0, [x0, #3248]
00530bd74 	bl	#-14136084 ; -> 0x4590a60 
00530bd78 	mov	w8, #1
00530bd7c 	strb	w8, [x21, #635]
00530bd80 	ldr	x8, [x22]
00530bd84 	ldr	x8, [x8, #184]
00530bd88 	ldr	x8, [x8]
00530bd8c 	cbz	x8, #360 ; -> 0x530bef4 
00530bd90 	ldr	x8, [x8, #88]
00530bd94 	cbz	x8, #352 ; -> 0x530bef4 
00530bd98 	ldr	x0, [x8, #24]
00530bd9c 	cbz	x0, #344 ; -> 0x530bef4 
00530bda0 	ldr	x3, [x19, #832]
00530bda4 	ldr	x2, [x19, #824]
00530bda8 	mov	x1, x19
00530bdac 	mov	x4, xzr
00530bdb0 	bl	#-1062984 ; -> 0x5208568 GuildManager_Quest_FieldEffect::ApplyActiveSkillDamageBuff
00530bdb4 	str	x0, [x19, #824]
00530bdb8 	add	x0, x19, #832
00530bdbc 	str	x1, [x19, #832]
00530bdc0 	mov	x1, xzr
00530bdc4 	bl	#-14136256 ; -> 0x4590a04 
00530bdc8 	ldr	x0, [x20]
00530bdcc 	ldr	w8, [x0, #228]
00530bdd0 	cbnz	w8, #12 ; -> 0x530bddc 
00530bdd4 	bl	#-14135796 ; -> 0x4590be0 
00530bdd8 	ldr	x0, [x20]
00530bddc 	ldr	x8, [x0, #184]
00530bde0 	ldr	x0, [x8]
00530bde4 	cbz	x0, #272 ; -> 0x530bef4 
00530bde8 	mov	x1, xzr
00530bdec 	bl	#-5021336 ; -> 0x4e41f54 GameManager::get_gameMode
00530bdf0 	cmp	w0, #24
00530bdf4 	b.ne	#240 ; -> 0x530bee4 
00530bdf8 	adrp	x8, #84819968 ; -> 0xa3ef000 
00530bdfc 	ldr	x8, [x8, #3320]
00530be00 	ldr	x8, [x8]
00530be04 	ldr	x0, [x8, #32]
00530be08 	add	x8, x0, #309
00530be0c 	ldrh	w8, [x8]
00530be10 	tbnz	w8, #0, #8 ; -> 0x530be18 
00530be14 	bl	#-13905644 ; -> 0x45c8f28 
00530be18 	ldr	x8, [x0, #192]
00530be1c 	ldr	x0, [x8, #16]
00530be20 	add	x8, x0, #309
00530be24 	ldrh	w8, [x8]
00530be28 	tbnz	w8, #0, #8 ; -> 0x530be30 
00530be2c 	bl	#-13905668 ; -> 0x45c8f28 
00530be30 	ldr	x8, [x0, #184]
00530be34 	ldr	x8, [x8]
00530be38 	cbz	x8, #188 ; -> 0x530bef4 
00530be3c 	ldr	x8, [x8, #48]
00530be40 	cbz	x8, #180 ; -> 0x530bef4 
00530be44 	ldr	x20, [x8, #104]
00530be48 	cbz	x20, #156 ; -> 0x530bee4 
00530be4c 	ldr	x3, [x19, #800]
00530be50 	ldr	x2, [x19, #792]
00530be54 	mov	x0, x20
00530be58 	mov	x1, x19
00530be5c 	mov	x4, xzr
00530be60 	bl	#-4566080 ; -> 0x4eb1220 WorldBossManager_Battle_FieldEffect::ApplyActiveSkillDamagePenalty
00530be64 	str	x0, [x19, #792]
00530be68 	add	x0, x19, #800
00530be6c 	str	x1, [x19, #800]
00530be70 	mov	x1, xzr
00530be74 	bl	#-14136432 ; -> 0x4590a04 
00530be78 	ldr	x2, [x19, #808]
00530be7c 	ldr	x3, [x19, #816]
00530be80 	mov	x0, x20
00530be84 	mov	x1, x19
00530be88 	mov	x4, xzr
00530be8c 	bl	#-4566124 ; -> 0x4eb1220 WorldBossManager_Battle_FieldEffect::ApplyActiveSkillDamagePenalty
00530be90 	str	x0, [x19, #808]
00530be94 	add	x0, x19, #816
00530be98 	str	x1, [x19, #816]
00530be9c 	mov	x1, xzr
00530bea0 	bl	#-14136476 ; -> 0x4590a04 
00530bea4 	ldr	x2, [x19, #824]
00530bea8 	ldr	x3, [x19, #832]
00530beac 	mov	x0, x20
00530beb0 	mov	x1, x19
00530beb4 	mov	x4, xzr
00530beb8 	bl	#-4566168 ; -> 0x4eb1220 WorldBossManager_Battle_FieldEffect::ApplyActiveSkillDamagePenalty
00530bebc 	mov	x8, x0
00530bec0 	mov	x9, x1
00530bec4 	add	x0, x19, #832
00530bec8 	str	x8, [x19, #824]
00530becc 	ldp	x22, x21, [sp, #16]
00530bed0 	str	x9, [x19, #832]
00530bed4 	ldp	x20, x19, [sp, #32]
00530bed8 	mov	x1, xzr
00530bedc 	ldr	x30, [sp], #48
00530bee0 	b	#-14136540 ; -> 0x4590a04 
00530bee4 	ldp	x20, x19, [sp, #32]
00530bee8 	ldp	x22, x21, [sp, #16]
00530beec 	ldr	x30, [sp], #48
00530bef0 	ret
00530bef4 	bl	#-14135784 ; -> 0x4590d0c 
