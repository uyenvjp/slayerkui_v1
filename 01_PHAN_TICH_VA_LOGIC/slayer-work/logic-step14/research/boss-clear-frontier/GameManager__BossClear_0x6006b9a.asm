004e4b870 	stp	x30, x21, [sp, #-32]!
004e4b874 	stp	x20, x19, [sp, #16]
004e4b878 	adrp	x21, #98082816 ; -> 0xabd5000 
004e4b87c 	mov	x20, x1
004e4b880 	mov	x19, x0
004e4b884 	ldrb	w8, [x21, #292]
004e4b888 	tbnz	w8, #0, #48 ; -> 0x4e4b8b8 
004e4b88c 	adrp	x0, #90034176 ; -> 0xa428000 
004e4b890 	ldr	x0, [x0, #2136]
004e4b894 	bl	#-9154100 ; -> 0x4590a60 
004e4b898 	adrp	x0, #90034176 ; -> 0xa428000 
004e4b89c 	ldr	x0, [x0, #2144]
004e4b8a0 	bl	#-9154112 ; -> 0x4590a60 
004e4b8a4 	adrp	x0, #90009600 ; -> 0xa422000 
004e4b8a8 	ldr	x0, [x0, #3032]
004e4b8ac 	bl	#-9154124 ; -> 0x4590a60 
004e4b8b0 	mov	w8, #1
004e4b8b4 	strb	w8, [x21, #292]
004e4b8b8 	mov	w0, #30710
004e4b8bc 	mov	x1, xzr
004e4b8c0 	bl	#-2114332 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4b8c4 	tbz	w0, #0, #44 ; -> 0x4e4b8f0 
004e4b8c8 	mov	w0, #30710
004e4b8cc 	mov	x1, xzr
004e4b8d0 	bl	#-2114168 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4b8d4 	cbz	x0, #372 ; -> 0x4e4ba48 
004e4b8d8 	mov	x1, x19
004e4b8dc 	mov	x2, x20
004e4b8e0 	mov	x3, xzr
004e4b8e4 	ldp	x20, x19, [sp, #16]
004e4b8e8 	ldp	x30, x21, [sp], #32
004e4b8ec 	b	#-2937048 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004e4b8f0 	mov	x0, x19
004e4b8f4 	mov	x1, x20
004e4b8f8 	mov	w2, #1
004e4b8fc 	bl	#-21476 ; -> 0x4e46518 GameManager::EnemyRemove
004e4b900 	mov	x0, x19
004e4b904 	bl	#-39344 ; -> 0x4e41f54 GameManager::get_gameMode
004e4b908 	cbz	w0, #44 ; -> 0x4e4b934 
004e4b90c 	mov	x0, x19
004e4b910 	bl	#-39356 ; -> 0x4e41f54 GameManager::get_gameMode
004e4b914 	cmp	w0, #2
004e4b918 	b.ne	#124 ; -> 0x4e4b994 
004e4b91c 	mov	x0, x19
004e4b920 	bl	#600 ; -> 0x4e4bb78 GameManager::BossMode_HpBar_False
004e4b924 	mov	x0, x19
004e4b928 	ldp	x20, x19, [sp, #16]
004e4b92c 	ldp	x30, x21, [sp], #32
004e4b930 	b	#868 ; -> 0x4e4bc94 GameManager::FriendBattleClear
004e4b934 	adrp	x20, #90009600 ; -> 0xa422000 
004e4b938 	ldr	x20, [x20, #3032]
004e4b93c 	ldr	x8, [x20]
004e4b940 	ldr	x8, [x8, #184]
004e4b944 	ldr	x0, [x8]
004e4b948 	cbz	x0, #256 ; -> 0x4e4ba48 
004e4b94c 	mov	x1, xzr
004e4b950 	bl	#4409008 ; -> 0x5280000 ReplayManager::get_NeedRecording
004e4b954 	tbz	w0, #0, #28 ; -> 0x4e4b970 
004e4b958 	ldr	x8, [x20]
004e4b95c 	ldr	x8, [x8, #184]
004e4b960 	ldr	x0, [x8]
004e4b964 	cbz	x0, #228 ; -> 0x4e4ba48 
004e4b968 	mov	x1, xzr
004e4b96c 	bl	#4405896 ; -> 0x527f3f4 ReplayManager::StopRecording
004e4b970 	mov	x0, x19
004e4b974 	bl	#516 ; -> 0x4e4bb78 GameManager::BossMode_HpBar_False
004e4b978 	mov	x0, x19
004e4b97c 	bl	#624 ; -> 0x4e4bbec GameManager::StageBossClear_Coroutine
004e4b980 	mov	x1, x0
004e4b984 	mov	x0, x19
004e4b988 	ldp	x20, x19, [sp, #16]
004e4b98c 	ldp	x30, x21, [sp], #32
004e4b990 	b	#-6508 ; -> 0x4e4a024 GameManager::Start_Clear
004e4b994 	mov	x0, x19
004e4b998 	bl	#-39492 ; -> 0x4e41f54 GameManager::get_gameMode
004e4b99c 	cmp	w0, #1
004e4b9a0 	b.ne	#20 ; -> 0x4e4b9b4 
004e4b9a4 	mov	x0, x19
004e4b9a8 	ldp	x20, x19, [sp, #16]
004e4b9ac 	ldp	x30, x21, [sp], #32
004e4b9b0 	b	#-13700 ; -> 0x4e4842c GameManager::AdventureClear
004e4b9b4 	mov	x0, x19
004e4b9b8 	bl	#-39524 ; -> 0x4e41f54 GameManager::get_gameMode
004e4b9bc 	cmp	w0, #4
004e4b9c0 	b.ne	#20 ; -> 0x4e4b9d4 
004e4b9c4 	mov	x0, x19
004e4b9c8 	ldp	x20, x19, [sp, #16]
004e4b9cc 	ldp	x30, x21, [sp], #32
004e4b9d0 	b	#-12108 ; -> 0x4e48a84 GameManager::MineClear
004e4b9d4 	mov	x0, x19
004e4b9d8 	bl	#-39556 ; -> 0x4e41f54 GameManager::get_gameMode
004e4b9dc 	cmp	w0, #3
004e4b9e0 	b.ne	#108 ; -> 0x4e4ba4c 
004e4b9e4 	ldr	w8, [x19, #1504]
004e4b9e8 	cmp	w8, #1
004e4b9ec 	b.ne	#168 ; -> 0x4e4ba94 
004e4b9f0 	ldr	x0, [x19, #320]
004e4b9f4 	cbz	x0, #84 ; -> 0x4e4ba48 
004e4b9f8 	ldr	w8, [x0, #24]
004e4b9fc 	cmp	w8, #1
004e4ba00 	b.lt	#148 ; -> 0x4e4ba94 
004e4ba04 	adrp	x21, #90034176 ; -> 0xa428000 
004e4ba08 	mov	w20, wzr
004e4ba0c 	ldr	x21, [x21, #2144]
004e4ba10 	ldr	w8, [x0, #24]
004e4ba14 	cmp	w20, w8
004e4ba18 	b.ge	#116 ; -> 0x4e4ba8c 
004e4ba1c 	ldr	x2, [x21]
004e4ba20 	mov	w1, w20
004e4ba24 	bl	#31182748 ; -> 0x6c089c0 
004e4ba28 	cbz	x0, #32 ; -> 0x4e4ba48 
004e4ba2c 	ldr	x8, [x0]
004e4ba30 	ldr	x9, [x8, #1336]
004e4ba34 	ldr	x1, [x8, #1344]
004e4ba38 	blr	x9
004e4ba3c 	ldr	x0, [x19, #320]
004e4ba40 	add	w20, w20, #1
004e4ba44 	cbnz	x0, #-52 ; -> 0x4e4ba10 
004e4ba48 	bl	#-9153852 ; -> 0x4590d0c 
004e4ba4c 	mov	x0, x19
004e4ba50 	bl	#-39676 ; -> 0x4e41f54 GameManager::get_gameMode
004e4ba54 	cmp	w0, #7
004e4ba58 	b.ne	#20 ; -> 0x4e4ba6c 
004e4ba5c 	mov	x0, x19
004e4ba60 	ldp	x20, x19, [sp, #16]
004e4ba64 	ldp	x30, x21, [sp], #32
004e4ba68 	b	#-5096 ; -> 0x4e4a680 GameManager::SkinBattleClear
004e4ba6c 	mov	x0, x19
004e4ba70 	bl	#-39708 ; -> 0x4e41f54 GameManager::get_gameMode
004e4ba74 	cmp	w0, #9
004e4ba78 	b.ne	#44 ; -> 0x4e4baa4 
004e4ba7c 	mov	x0, x19
004e4ba80 	ldp	x20, x19, [sp, #16]
004e4ba84 	ldp	x30, x21, [sp], #32
004e4ba88 	b	#-4892 ; -> 0x4e4a76c GameManager::CampaignClear
004e4ba8c 	mov	x0, x19
004e4ba90 	bl	#-21664 ; -> 0x4e465f0 GameManager::EnemyClear
004e4ba94 	mov	x0, x19
004e4ba98 	ldp	x20, x19, [sp, #16]
004e4ba9c 	ldp	x30, x21, [sp], #32
004e4baa0 	b	#-9620 ; -> 0x4e4950c GameManager::PlayerClassBattleClear
004e4baa4 	mov	x0, x19
004e4baa8 	bl	#-39764 ; -> 0x4e41f54 GameManager::get_gameMode
004e4baac 	cmp	w0, #10
004e4bab0 	b.ne	#20 ; -> 0x4e4bac4 
004e4bab4 	mov	x0, x19
004e4bab8 	ldp	x20, x19, [sp, #16]
004e4babc 	ldp	x30, x21, [sp], #32
004e4bac0 	b	#764 ; -> 0x4e4bdbc GameManager::KnowledgeBattleClear
004e4bac4 	mov	x0, x19
004e4bac8 	bl	#-39796 ; -> 0x4e41f54 GameManager::get_gameMode
004e4bacc 	cmp	w0, #13
004e4bad0 	b.ne	#20 ; -> 0x4e4bae4 
004e4bad4 	mov	x0, x19
004e4bad8 	ldp	x20, x19, [sp, #16]
004e4badc 	ldp	x30, x21, [sp], #32
004e4bae0 	b	#936 ; -> 0x4e4be88 GameManager::SeasonBattleClear
004e4bae4 	mov	x0, x19
004e4bae8 	bl	#-39828 ; -> 0x4e41f54 GameManager::get_gameMode
004e4baec 	cmp	w0, #17
004e4baf0 	b.ne	#20 ; -> 0x4e4bb04 
004e4baf4 	mov	x0, x19
004e4baf8 	ldp	x20, x19, [sp, #16]
004e4bafc 	ldp	x30, x21, [sp], #32
004e4bb00 	b	#-4808 ; -> 0x4e4a838 GameManager::TimeAttackBattleClear
004e4bb04 	mov	x0, x19
004e4bb08 	bl	#-39860 ; -> 0x4e41f54 GameManager::get_gameMode
004e4bb0c 	cmp	w0, #18
004e4bb10 	b.ne	#20 ; -> 0x4e4bb24 
004e4bb14 	mov	x0, x19
004e4bb18 	ldp	x20, x19, [sp, #16]
004e4bb1c 	ldp	x30, x21, [sp], #32
004e4bb20 	b	#-4612 ; -> 0x4e4a91c GameManager::SkillMasteryBattleClear
004e4bb24 	mov	x0, x19
004e4bb28 	bl	#-39892 ; -> 0x4e41f54 GameManager::get_gameMode
004e4bb2c 	cmp	w0, #19
004e4bb30 	b.ne	#24 ; -> 0x4e4bb48 
004e4bb34 	mov	x0, x19
004e4bb38 	ldp	x20, x19, [sp, #16]
004e4bb3c 	mov	w1, #3
004e4bb40 	ldp	x30, x21, [sp], #32
004e4bb44 	b	#-4420 ; -> 0x4e4aa00 GameManager::DragonValleySearchBattleClear
004e4bb48 	mov	x0, x19
004e4bb4c 	bl	#-39928 ; -> 0x4e41f54 GameManager::get_gameMode
004e4bb50 	cmp	w0, #21
004e4bb54 	b.ne	#20 ; -> 0x4e4bb68 
004e4bb58 	mov	x0, x19
004e4bb5c 	ldp	x20, x19, [sp, #16]
004e4bb60 	ldp	x30, x21, [sp], #32
004e4bb64 	b	#-3256 ; -> 0x4e4aeac GameManager::GuildQuestBattleClear
004e4bb68 	mov	x0, x19
004e4bb6c 	ldp	x20, x19, [sp, #16]
004e4bb70 	ldp	x30, x21, [sp], #32
004e4bb74 	b	#-39968 ; -> 0x4e41f54 GameManager::get_gameMode
