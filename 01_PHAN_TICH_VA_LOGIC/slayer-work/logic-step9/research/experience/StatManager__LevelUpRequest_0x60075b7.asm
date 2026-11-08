004f162d4 	sub	sp, sp, #128
004f162d8 	str	x30, [sp, #96]
004f162dc 	stp	x20, x19, [sp, #112]
004f162e0 	adrp	x20, #97251328 ; -> 0xabd5000 
004f162e4 	mov	x19, x0
004f162e8 	ldrb	w8, [x20, #1736]
004f162ec 	tbnz	w8, #0, #60 ; -> 0x4f16328 
004f162f0 	adrp	x0, #88965120 ; -> 0xa3ee000 
004f162f4 	ldr	x0, [x0, #3648]
004f162f8 	bl	#-9984152 ; -> 0x4590a60 
004f162fc 	adrp	x0, #88944640 ; -> 0xa3e9000 
004f16300 	ldr	x0, [x0, #1384]
004f16304 	bl	#-9984164 ; -> 0x4590a60 
004f16308 	adrp	x0, #89128960 ; -> 0xa416000 
004f1630c 	ldr	x0, [x0, #1664]
004f16310 	bl	#-9984176 ; -> 0x4590a60 
004f16314 	adrp	x0, #88993792 ; -> 0xa3f5000 
004f16318 	ldr	x0, [x0, #3904]
004f1631c 	bl	#-9984188 ; -> 0x4590a60 
004f16320 	mov	w8, #1
004f16324 	strb	w8, [x20, #1736]
004f16328 	mov	w0, #7841
004f1632c 	mov	x1, xzr
004f16330 	bl	#-2944396 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f16334 	tbz	w0, #0, #44 ; -> 0x4f16360 
004f16338 	mov	w0, #7841
004f1633c 	mov	x1, xzr
004f16340 	bl	#-2944232 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f16344 	cbz	x0, #480 ; -> 0x4f16524 
004f16348 	mov	x1, x19
004f1634c 	ldp	x20, x19, [sp, #112]
004f16350 	ldr	x30, [sp, #96]
004f16354 	mov	x2, xzr
004f16358 	add	sp, sp, #128
004f1635c 	b	#-3767868 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f16360 	ldr	w8, [x19, #228]
004f16364 	cmp	w8, #1
004f16368 	b.lt	#428 ; -> 0x4f16514 
004f1636c 	mov	x0, xzr
004f16370 	bl	#3588160 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004f16374 	cbz	x0, #432 ; -> 0x4f16524 
004f16378 	mov	x1, xzr
004f1637c 	bl	#3588568 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004f16380 	cbz	x0, #420 ; -> 0x4f16524 
004f16384 	ldr	w3, [x19, #228]
004f16388 	mov	w1, #9
004f1638c 	mov	x2, xzr
004f16390 	mov	x4, xzr
004f16394 	bl	#3619468 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004f16398 	adrp	x20, #89128960 ; -> 0xa416000 
004f1639c 	ldr	x20, [x20, #1664]
004f163a0 	str	wzr, [x19, #228]
004f163a4 	ldr	x8, [x20]
004f163a8 	ldr	x8, [x8, #184]
004f163ac 	ldr	x0, [x8]
004f163b0 	cbz	x0, #372 ; -> 0x4f16524 
004f163b4 	mov	w1, wzr
004f163b8 	mov	x2, xzr
004f163bc 	bl	#3555364 ; -> 0x527a3e0 QuestManager::NoticeCheck_Achievement
004f163c0 	ldr	x8, [x20]
004f163c4 	ldr	x8, [x8, #184]
004f163c8 	ldr	x0, [x8]
004f163cc 	cbz	x0, #344 ; -> 0x4f16524 
004f163d0 	mov	w1, #11
004f163d4 	mov	x2, xzr
004f163d8 	bl	#3564416 ; -> 0x527c758 QuestManager::UpdateQuestType
004f163dc 	adrp	x8, #88993792 ; -> 0xa3f5000 
004f163e0 	ldr	x8, [x8, #3904]
004f163e4 	ldr	x8, [x8]
004f163e8 	ldr	x8, [x8, #184]
004f163ec 	ldr	x0, [x8]
004f163f0 	cbz	x0, #308 ; -> 0x4f16524 
004f163f4 	mov	x1, xzr
004f163f8 	bl	#1565476 ; -> 0x509471c SkillManager::SetActiveSkillGainShortCut
004f163fc 	ldr	x0, [x19, #240]
004f16400 	cbz	x0, #292 ; -> 0x4f16524 
004f16404 	mov	w1, wzr
004f16408 	mov	x2, xzr
004f1640c 	bl	#78567368 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004f16410 	ldr	x0, [x19, #240]
004f16414 	cbz	x0, #272 ; -> 0x4f16524 
004f16418 	mov	w1, #1
004f1641c 	mov	x2, xzr
004f16420 	bl	#78567348 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004f16424 	ldr	x8, [x19, #144]
004f16428 	cbz	x8, #252 ; -> 0x4f16524 
004f1642c 	ldur	q0, [x8, #168]
004f16430 	ldur	q1, [x8, #184]
004f16434 	add	x0, sp, #48
004f16438 	ldur	q2, [x8, #200]
004f1643c 	mov	x1, xzr
004f16440 	stp	q0, q1, [sp, #48]
004f16444 	str	q2, [sp, #80]
004f16448 	bl	#-8599164 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f1644c 	cmp	w0, #265
004f16450 	b.lt	#12 ; -> 0x4f1645c 
004f16454 	mov	x0, x19
004f16458 	bl	#12336 ; -> 0x4f19488 StatManager::ForceOption_Stat_Update
004f1645c 	mov	x0, xzr
004f16460 	bl	#-2086580 ; -> 0x4d18dac SoundManager::get_instance
004f16464 	cbz	x0, #192 ; -> 0x4f16524 
004f16468 	ldr	x8, [x0]
004f1646c 	mov	x1, xzr
004f16470 	ldr	x9, [x8, #1320]
004f16474 	ldr	x2, [x8, #1328]
004f16478 	blr	x9
004f1647c 	adrp	x19, #88944640 ; -> 0xa3e9000 
004f16480 	ldr	x19, [x19, #1384]
004f16484 	ldr	x0, [x19]
004f16488 	ldr	w8, [x0, #228]
004f1648c 	cbnz	w8, #12 ; -> 0x4f16498 
004f16490 	bl	#-9984176 ; -> 0x4590be0 
004f16494 	ldr	x0, [x19]
004f16498 	ldr	x8, [x0, #184]
004f1649c 	ldr	x8, [x8]
004f164a0 	cbz	x8, #132 ; -> 0x4f16524 
004f164a4 	ldur	q0, [x8, #168]
004f164a8 	ldur	q1, [x8, #184]
004f164ac 	mov	x0, sp
004f164b0 	ldur	q2, [x8, #200]
004f164b4 	mov	x1, xzr
004f164b8 	stp	q0, q1, [sp]
004f164bc 	str	q2, [sp, #32]
004f164c0 	bl	#-8599284 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f164c4 	ldr	x8, [x19]
004f164c8 	ldr	x8, [x8, #184]
004f164cc 	ldr	x8, [x8]
004f164d0 	cbz	x8, #84 ; -> 0x4f16524 
004f164d4 	mov	w19, w0
004f164d8 	mov	x0, x8
004f164dc 	mov	x1, xzr
004f164e0 	bl	#-1925392 ; -> 0x4d403d0 DatabaseManager::get_SyncExp
004f164e4 	adrp	x8, #88965120 ; -> 0xa3ee000 
004f164e8 	mov	x20, x0
004f164ec 	ldr	x8, [x8, #3648]
004f164f0 	ldr	x8, [x8]
004f164f4 	ldr	w9, [x8, #228]
004f164f8 	cbnz	w9, #12 ; -> 0x4f16504 
004f164fc 	mov	x0, x8
004f16500 	bl	#-9984288 ; -> 0x4590be0 
004f16504 	mov	w0, w19
004f16508 	mov	x1, x20
004f1650c 	mov	x2, xzr
004f16510 	bl	#1793444 ; -> 0x50cc2b4 APIManager::LevelUp
004f16514 	ldp	x20, x19, [sp, #112]
004f16518 	ldr	x30, [sp, #96]
004f1651c 	add	sp, sp, #128
004f16520 	ret
004f16524 	bl	#-9984024 ; -> 0x4590d0c 
