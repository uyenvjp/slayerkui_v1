004e85d4c 	str	d8, [sp, #-64]!
004e85d50 	str	x29, [sp, #8]
004e85d54 	stp	x30, x23, [sp, #16]
004e85d58 	stp	x22, x21, [sp, #32]
004e85d5c 	stp	x20, x19, [sp, #48]
004e85d60 	sub	sp, sp, #1584
004e85d64 	adrp	x19, #97845248 ; -> 0xabd5000 
004e85d68 	mov	x20, x0
004e85d6c 	ldrb	w8, [x19, #709]
004e85d70 	tbnz	w8, #0, #264 ; -> 0x4e85e78 
004e85d74 	adrp	x0, #89559040 ; -> 0xa3ee000 
004e85d78 	ldr	x0, [x0, #3648]
004e85d7c 	bl	#-9392924 ; -> 0x4590a60 
004e85d80 	adrp	x0, #89530368 ; -> 0xa3e7000 
004e85d84 	ldr	x0, [x0, #2992]
004e85d88 	bl	#-9392936 ; -> 0x4590a60 
004e85d8c 	adrp	x0, #89747456 ; -> 0xa41c000 
004e85d90 	ldr	x0, [x0, #3400]
004e85d94 	bl	#-9392948 ; -> 0x4590a60 
004e85d98 	adrp	x0, #89722880 ; -> 0xa416000 
004e85d9c 	ldr	x0, [x0, #2136]
004e85da0 	bl	#-9392960 ; -> 0x4590a60 
004e85da4 	adrp	x0, #89559040 ; -> 0xa3ee000 
004e85da8 	ldr	x0, [x0, #2104]
004e85dac 	bl	#-9392972 ; -> 0x4590a60 
004e85db0 	adrp	x0, #89538560 ; -> 0xa3e9000 
004e85db4 	ldr	x0, [x0, #1384]
004e85db8 	bl	#-9392984 ; -> 0x4590a60 
004e85dbc 	adrp	x0, #89800704 ; -> 0xa429000 
004e85dc0 	ldr	x0, [x0, #1800]
004e85dc4 	bl	#-9392996 ; -> 0x4590a60 
004e85dc8 	adrp	x0, #89575424 ; -> 0xa3f2000 
004e85dcc 	ldr	x0, [x0, #552]
004e85dd0 	bl	#-9393008 ; -> 0x4590a60 
004e85dd4 	adrp	x0, #89538560 ; -> 0xa3e9000 
004e85dd8 	ldr	x0, [x0, #1264]
004e85ddc 	bl	#-9393020 ; -> 0x4590a60 
004e85de0 	adrp	x0, #89563136 ; -> 0xa3ef000 
004e85de4 	ldr	x0, [x0, #3120]
004e85de8 	bl	#-9393032 ; -> 0x4590a60 
004e85dec 	adrp	x0, #89747456 ; -> 0xa41c000 
004e85df0 	ldr	x0, [x0, #512]
004e85df4 	bl	#-9393044 ; -> 0x4590a60 
004e85df8 	adrp	x0, #89759744 ; -> 0xa41f000 
004e85dfc 	ldr	x0, [x0, #1008]
004e85e00 	bl	#-9393056 ; -> 0x4590a60 
004e85e04 	adrp	x0, #89722880 ; -> 0xa416000 
004e85e08 	ldr	x0, [x0, #1664]
004e85e0c 	bl	#-9393068 ; -> 0x4590a60 
004e85e10 	adrp	x0, #89800704 ; -> 0xa429000 
004e85e14 	ldr	x0, [x0, #1808]
004e85e18 	bl	#-9393080 ; -> 0x4590a60 
004e85e1c 	adrp	x0, #89722880 ; -> 0xa416000 
004e85e20 	ldr	x0, [x0, #2312]
004e85e24 	bl	#-9393092 ; -> 0x4590a60 
004e85e28 	adrp	x0, #89800704 ; -> 0xa429000 
004e85e2c 	ldr	x0, [x0, #1816]
004e85e30 	bl	#-9393104 ; -> 0x4590a60 
004e85e34 	adrp	x0, #89800704 ; -> 0xa429000 
004e85e38 	ldr	x0, [x0, #1824]
004e85e3c 	bl	#-9393116 ; -> 0x4590a60 
004e85e40 	adrp	x0, #89800704 ; -> 0xa429000 
004e85e44 	ldr	x0, [x0, #1832]
004e85e48 	bl	#-9393128 ; -> 0x4590a60 
004e85e4c 	adrp	x0, #89800704 ; -> 0xa429000 
004e85e50 	ldr	x0, [x0, #1840]
004e85e54 	bl	#-9393140 ; -> 0x4590a60 
004e85e58 	adrp	x0, #89800704 ; -> 0xa429000 
004e85e5c 	ldr	x0, [x0, #1848]
004e85e60 	bl	#-9393152 ; -> 0x4590a60 
004e85e64 	adrp	x0, #89796608 ; -> 0xa428000 
004e85e68 	ldr	x0, [x0, #2048]
004e85e6c 	bl	#-9393164 ; -> 0x4590a60 
004e85e70 	mov	w8, #1
004e85e74 	strb	w8, [x19, #709]
004e85e78 	ldr	w23, [x20, #16]
004e85e7c 	ldr	x19, [x20, #32]
004e85e80 	cbz	w23, #1140 ; -> 0x4e862f4 
004e85e84 	cmp	w23, #1
004e85e88 	b.ne	#2524 ; -> 0x4e86864 
004e85e8c 	mov	w8, #-1
004e85e90 	str	w8, [x20, #16]
004e85e94 	cbz	x19, #3800 ; -> 0x4e86d6c 
004e85e98 	ldr	x0, [x19, #456]
004e85e9c 	cbz	x0, #3792 ; -> 0x4e86d6c 
004e85ea0 	mov	w1, wzr
004e85ea4 	mov	x2, xzr
004e85ea8 	bl	#79158572 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e85eac 	ldr	x0, [x19, #464]
004e85eb0 	cbz	x0, #3772 ; -> 0x4e86d6c 
004e85eb4 	mov	w1, wzr
004e85eb8 	mov	x2, xzr
004e85ebc 	bl	#79158552 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e85ec0 	mov	x0, xzr
004e85ec4 	bl	#4179180 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e85ec8 	cbz	x0, #3748 ; -> 0x4e86d6c 
004e85ecc 	mov	x1, xzr
004e85ed0 	bl	#4179588 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004e85ed4 	cbz	x0, #3736 ; -> 0x4e86d6c 
004e85ed8 	mov	w1, #11
004e85edc 	mov	x2, xzr
004e85ee0 	mov	w3, #1
004e85ee4 	mov	x4, xzr
004e85ee8 	bl	#4210488 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004e85eec 	mov	x0, xzr
004e85ef0 	bl	#4179136 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e85ef4 	cbz	x0, #3704 ; -> 0x4e86d6c 
004e85ef8 	mov	x1, xzr
004e85efc 	bl	#4179544 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004e85f00 	cbz	x0, #3692 ; -> 0x4e86d6c 
004e85f04 	mov	w1, #12
004e85f08 	mov	x2, xzr
004e85f0c 	mov	w3, #1
004e85f10 	mov	x4, xzr
004e85f14 	bl	#4210444 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004e85f18 	mov	x0, xzr
004e85f1c 	bl	#4179092 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e85f20 	cbz	x0, #3660 ; -> 0x4e86d6c 
004e85f24 	mov	x1, xzr
004e85f28 	bl	#4179500 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004e85f2c 	cbz	x0, #3648 ; -> 0x4e86d6c 
004e85f30 	mov	w1, #38
004e85f34 	mov	x2, xzr
004e85f38 	mov	w3, #1
004e85f3c 	mov	x4, xzr
004e85f40 	bl	#4210400 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004e85f44 	mov	x0, xzr
004e85f48 	bl	#4179048 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e85f4c 	cbz	x0, #3616 ; -> 0x4e86d6c 
004e85f50 	mov	x1, xzr
004e85f54 	bl	#4179456 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004e85f58 	cbz	x0, #3604 ; -> 0x4e86d6c 
004e85f5c 	mov	w1, #29
004e85f60 	mov	x2, xzr
004e85f64 	mov	w3, #1
004e85f68 	mov	x4, xzr
004e85f6c 	bl	#4210356 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004e85f70 	mov	x0, xzr
004e85f74 	bl	#4179004 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e85f78 	cbz	x0, #3572 ; -> 0x4e86d6c 
004e85f7c 	mov	x1, xzr
004e85f80 	bl	#4179412 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004e85f84 	cbz	x0, #3560 ; -> 0x4e86d6c 
004e85f88 	mov	w1, #58
004e85f8c 	mov	x2, xzr
004e85f90 	mov	w3, #1
004e85f94 	mov	x4, xzr
004e85f98 	bl	#4210312 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004e85f9c 	adrp	x21, #89575424 ; -> 0xa3f2000 
004e85fa0 	ldr	x21, [x21, #552]
004e85fa4 	ldr	x0, [x21]
004e85fa8 	ldr	w8, [x0, #228]
004e85fac 	cbnz	w8, #12 ; -> 0x4e85fb8 
004e85fb0 	bl	#-9393104 ; -> 0x4590be0 
004e85fb4 	ldr	x0, [x21]
004e85fb8 	ldr	x8, [x0, #184]
004e85fbc 	ldr	x8, [x8, #40]
004e85fc0 	cbz	x8, #20 ; -> 0x4e85fd4 
004e85fc4 	ldr	x9, [x8, #24]
004e85fc8 	ldr	x0, [x8, #64]
004e85fcc 	ldr	x1, [x8, #40]
004e85fd0 	blr	x9
004e85fd4 	ldr	x8, [x20, #40]
004e85fd8 	cbz	x8, #3476 ; -> 0x4e86d6c 
004e85fdc 	strb	wzr, [x8, #28]
004e85fe0 	ldr	x8, [x19, #32]
004e85fe4 	cbz	x8, #3464 ; -> 0x4e86d6c 
004e85fe8 	ldur	q0, [x8, #120]
004e85fec 	ldur	q1, [x8, #136]
004e85ff0 	add	x0, sp, #1248
004e85ff4 	ldur	q2, [x8, #152]
004e85ff8 	mov	x1, xzr
004e85ffc 	str	q0, [sp, #1248]
004e86000 	str	q1, [sp, #1264]
004e86004 	str	q2, [sp, #1280]
004e86008 	bl	#-8008252 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e8600c 	ldr	w8, [x19, #72]
004e86010 	sub	w9, w8, #1
004e86014 	ldr	x8, [x19, #32]
004e86018 	cmp	w0, w9
004e8601c 	b.ge	#1292 ; -> 0x4e86528 
004e86020 	cbz	x8, #3404 ; -> 0x4e86d6c 
004e86024 	ldur	q0, [x8, #120]
004e86028 	ldur	q1, [x8, #136]
004e8602c 	add	x0, sp, #1200
004e86030 	ldur	q2, [x8, #152]
004e86034 	mov	x1, xzr
004e86038 	str	q0, [sp, #1200]
004e8603c 	str	q1, [sp, #1216]
004e86040 	str	q2, [sp, #1232]
004e86044 	bl	#-8008312 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86048 	ldr	x22, [x19, #32]
004e8604c 	cbz	x22, #3360 ; -> 0x4e86d6c 
004e86050 	ldur	q0, [x22, #120]
004e86054 	ldur	q1, [x22, #136]
004e86058 	mov	w21, w0
004e8605c 	ldur	q2, [x22, #152]
004e86060 	add	x8, sp, #1536
004e86064 	add	x0, sp, #1152
004e86068 	mov	x1, xzr
004e8606c 	str	q0, [sp, #1152]
004e86070 	str	q1, [sp, #1168]
004e86074 	str	q2, [sp, #1184]
004e86078 	bl	#-8008444 ; -> 0x46e2d7c Liapp.SecureVariable.LiappSecureInt::op_Increment
004e8607c 	ldr	q0, [sp, #1536]
004e86080 	ldr	q1, [sp, #1552]
004e86084 	add	x0, x22, #120
004e86088 	ldr	q2, [sp, #1568]
004e8608c 	mov	x1, xzr
004e86090 	stur	q0, [x22, #120]
004e86094 	stur	q1, [x22, #136]
004e86098 	stur	q2, [x22, #152]
004e8609c 	bl	#-9393816 ; -> 0x4590a04 
004e860a0 	ldr	x8, [x19, #32]
004e860a4 	cbz	x8, #3272 ; -> 0x4e86d6c 
004e860a8 	ldur	q0, [x8, #120]
004e860ac 	ldur	q1, [x8, #136]
004e860b0 	add	x0, sp, #1104
004e860b4 	ldur	q2, [x8, #152]
004e860b8 	mov	x1, xzr
004e860bc 	str	q0, [sp, #1104]
004e860c0 	str	q1, [sp, #1120]
004e860c4 	str	q2, [sp, #1136]
004e860c8 	bl	#-8008444 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e860cc 	ldr	x8, [x19, #32]
004e860d0 	cbz	x8, #3228 ; -> 0x4e86d6c 
004e860d4 	ldur	q0, [x8, #72]
004e860d8 	ldur	q1, [x8, #88]
004e860dc 	mov	w22, w0
004e860e0 	ldur	q2, [x8, #104]
004e860e4 	add	x0, sp, #1056
004e860e8 	mov	x1, xzr
004e860ec 	str	q0, [sp, #1056]
004e860f0 	str	q1, [sp, #1072]
004e860f4 	str	q2, [sp, #1088]
004e860f8 	bl	#-8008492 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e860fc 	adrp	x8, #89554944 ; -> 0xa3ee000 
004e86100 	cmp	w22, w0
004e86104 	ldr	x8, [x8, #3648]
004e86108 	ldr	x0, [x8]
004e8610c 	ldr	w8, [x0, #228]
004e86110 	b.le	#1688 ; -> 0x4e867a8 
004e86114 	cbnz	w8, #8 ; -> 0x4e8611c 
004e86118 	bl	#-9393464 ; -> 0x4590be0 
004e8611c 	mov	w0, w21
004e86120 	mov	x1, xzr
004e86124 	bl	#2375576 ; -> 0x50ca0bc APIManager::ClearBossStage
004e86128 	ldr	x8, [x20, #40]
004e8612c 	cbz	x8, #3136 ; -> 0x4e86d6c 
004e86130 	mov	w9, #1
004e86134 	mov	x0, xzr
004e86138 	strb	w9, [x8, #28]
004e8613c 	bl	#4178548 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e86140 	cbz	x0, #3116 ; -> 0x4e86d6c 
004e86144 	mov	x1, xzr
004e86148 	bl	#4178956 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004e8614c 	cbz	x0, #3104 ; -> 0x4e86d6c 
004e86150 	mov	w1, #4
004e86154 	mov	x2, xzr
004e86158 	mov	w3, #1
004e8615c 	mov	x4, xzr
004e86160 	bl	#4209856 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004e86164 	ldr	x8, [x19, #32]
004e86168 	cbz	x8, #3076 ; -> 0x4e86d6c 
004e8616c 	ldur	q0, [x8, #120]
004e86170 	ldur	q1, [x8, #136]
004e86174 	add	x0, x8, #72
004e86178 	ldur	q2, [x8, #152]
004e8617c 	mov	x1, xzr
004e86180 	stur	q0, [x8, #72]
004e86184 	stur	q1, [x8, #88]
004e86188 	stur	q2, [x8, #104]
004e8618c 	bl	#-9394056 ; -> 0x4590a04 
004e86190 	adrp	x21, #89534464 ; -> 0xa3e9000 
004e86194 	ldr	x21, [x21, #1384]
004e86198 	ldr	x0, [x21]
004e8619c 	ldr	w8, [x0, #228]
004e861a0 	cbnz	w8, #12 ; -> 0x4e861ac 
004e861a4 	bl	#-9393604 ; -> 0x4590be0 
004e861a8 	ldr	x0, [x21]
004e861ac 	ldr	x8, [x0, #184]
004e861b0 	ldr	x8, [x8, #224]
004e861b4 	cbz	x8, #3000 ; -> 0x4e86d6c 
004e861b8 	ldr	x9, [x8, #24]
004e861bc 	ldr	x0, [x8, #64]
004e861c0 	ldr	x1, [x8, #40]
004e861c4 	blr	x9
004e861c8 	adrp	x8, #89743360 ; -> 0xa41c000 
004e861cc 	ldr	x8, [x8, #512]
004e861d0 	ldr	x8, [x8]
004e861d4 	ldr	x8, [x8, #184]
004e861d8 	ldr	x0, [x8]
004e861dc 	cbz	x0, #2960 ; -> 0x4e86d6c 
004e861e0 	mov	w1, #8
004e861e4 	mov	x2, xzr
004e861e8 	bl	#4123356 ; -> 0x5274cc4 MiniQuestManager::MiniQuest_Update
004e861ec 	adrp	x8, #89718784 ; -> 0xa416000 
004e861f0 	ldr	x8, [x8, #1664]
004e861f4 	ldr	x8, [x8]
004e861f8 	ldr	x8, [x8, #184]
004e861fc 	ldr	x0, [x8]
004e86200 	cbz	x0, #2924 ; -> 0x4e86d6c 
004e86204 	mov	w1, #8
004e86208 	mov	x2, xzr
004e8620c 	bl	#4154700 ; -> 0x527c758 QuestManager::UpdateQuestType
004e86210 	ldr	x8, [x19, #32]
004e86214 	cbz	x8, #2904 ; -> 0x4e86d6c 
004e86218 	ldur	q0, [x8, #72]
004e8621c 	ldur	q1, [x8, #88]
004e86220 	add	x0, sp, #1008
004e86224 	ldur	q2, [x8, #104]
004e86228 	mov	x1, xzr
004e8622c 	stp	q0, q1, [sp, #1008]
004e86230 	str	q2, [sp, #1040]
004e86234 	bl	#-8008808 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86238 	cmp	w0, #20
004e8623c 	b.le	#1612 ; -> 0x4e86888 
004e86240 	ldr	x8, [x19, #32]
004e86244 	cbz	x8, #2856 ; -> 0x4e86d6c 
004e86248 	ldur	q0, [x8, #72]
004e8624c 	ldur	q1, [x8, #88]
004e86250 	add	x0, sp, #720
004e86254 	ldur	q2, [x8, #104]
004e86258 	mov	x1, xzr
004e8625c 	stp	q0, q1, [sp, #720]
004e86260 	str	q2, [sp, #752]
004e86264 	bl	#-8008856 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86268 	mov	w8, #52429
004e8626c 	mov	w9, #39320
004e86270 	movk	w8, #52428, lsl #16
004e86274 	movk	w9, #6553, lsl #16
004e86278 	madd	w8, w0, w8, w9
004e8627c 	mov	w9, #52428
004e86280 	movk	w9, #3276, lsl #16
004e86284 	ror	w8, w8, #2
004e86288 	cmp	w8, w9
004e8628c 	b.ls	#2104 ; -> 0x4e86ac4 
004e86290 	ldr	x8, [x19, #32]
004e86294 	cbz	x8, #2776 ; -> 0x4e86d6c 
004e86298 	ldur	q0, [x8, #72]
004e8629c 	ldur	q1, [x8, #88]
004e862a0 	mov	w0, #60
004e862a4 	ldur	q2, [x8, #104]
004e862a8 	add	x8, sp, #1488
004e862ac 	mov	x1, xzr
004e862b0 	str	q0, [sp, #1536]
004e862b4 	str	q1, [sp, #1552]
004e862b8 	str	q2, [sp, #1568]
004e862bc 	bl	#-8037088 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e862c0 	ldr	q0, [sp, #1536]
004e862c4 	ldr	q1, [sp, #1552]
004e862c8 	add	x0, sp, #384
004e862cc 	ldr	q2, [sp, #1568]
004e862d0 	add	x1, sp, #336
004e862d4 	stp	q0, q1, [sp, #384]
004e862d8 	ldr	q0, [sp, #1488]
004e862dc 	ldr	q1, [sp, #1504]
004e862e0 	str	q2, [sp, #416]
004e862e4 	ldr	q2, [sp, #1520]
004e862e8 	stp	q0, q1, [sp, #336]
004e862ec 	str	q2, [sp, #368]
004e862f0 	b	#1160 ; -> 0x4e86778 
004e862f4 	adrp	x8, #89796608 ; -> 0xa429000 
004e862f8 	mov	w9, #-1
004e862fc 	ldr	x8, [x8, #1824]
004e86300 	str	w9, [x20, #16]
004e86304 	ldr	x0, [x8]
004e86308 	bl	#-9393676 ; -> 0x4590cfc 
004e8630c 	mov	x1, xzr
004e86310 	mov	x21, x0
004e86314 	bl	#67329812 ; -> 0x8ebc228 System.Object::.ctor
004e86318 	mov	x22, x20
004e8631c 	mov	x1, x21
004e86320 	str	x21, [x22, #40]!
004e86324 	mov	x0, x22
004e86328 	bl	#-9394468 ; -> 0x4590a04 
004e8632c 	ldr	x0, [x22]
004e86330 	cbz	x0, #2620 ; -> 0x4e86d6c 
004e86334 	ldr	x1, [x20, #32]
004e86338 	str	x1, [x0, #16]!
004e8633c 	bl	#-9394488 ; -> 0x4590a04 
004e86340 	cbz	x19, #2604 ; -> 0x4e86d6c 
004e86344 	ldr	x8, [x19, #32]
004e86348 	cbz	x8, #2596 ; -> 0x4e86d6c 
004e8634c 	ldur	q0, [x8, #120]
004e86350 	ldur	q1, [x8, #136]
004e86354 	mov	w0, #999
004e86358 	ldur	q2, [x8, #152]
004e8635c 	add	x8, sp, #1488
004e86360 	mov	x1, xzr
004e86364 	str	q0, [sp, #1536]
004e86368 	str	q1, [sp, #1552]
004e8636c 	str	q2, [sp, #1568]
004e86370 	bl	#-8037268 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86374 	ldr	q0, [sp, #1536]
004e86378 	ldr	q1, [sp, #1552]
004e8637c 	add	x0, sp, #1440
004e86380 	ldr	q2, [sp, #1568]
004e86384 	add	x1, sp, #1392
004e86388 	mov	x2, xzr
004e8638c 	str	q0, [sp, #1440]
004e86390 	ldr	q0, [sp, #1488]
004e86394 	str	q1, [sp, #1456]
004e86398 	ldr	q1, [sp, #1504]
004e8639c 	str	q2, [sp, #1472]
004e863a0 	ldr	q2, [sp, #1520]
004e863a4 	str	q0, [sp, #1392]
004e863a8 	str	q1, [sp, #1408]
004e863ac 	str	q2, [sp, #1424]
004e863b0 	bl	#-8008632 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e863b4 	tbz	w0, #0, #156 ; -> 0x4e86450 
004e863b8 	ldr	x8, [x19, #32]
004e863bc 	cbz	x8, #2480 ; -> 0x4e86d6c 
004e863c0 	ldur	q0, [x8, #72]
004e863c4 	ldur	q1, [x8, #88]
004e863c8 	mov	w0, #999
004e863cc 	ldur	q2, [x8, #104]
004e863d0 	add	x8, sp, #1488
004e863d4 	mov	x1, xzr
004e863d8 	str	q0, [sp, #1536]
004e863dc 	str	q1, [sp, #1552]
004e863e0 	str	q2, [sp, #1568]
004e863e4 	bl	#-8037384 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e863e8 	ldr	q0, [sp, #1536]
004e863ec 	ldr	q1, [sp, #1552]
004e863f0 	add	x0, sp, #1344
004e863f4 	ldr	q2, [sp, #1568]
004e863f8 	add	x1, sp, #1296
004e863fc 	mov	x2, xzr
004e86400 	str	q0, [sp, #1344]
004e86404 	ldr	q0, [sp, #1488]
004e86408 	str	q1, [sp, #1360]
004e8640c 	ldr	q1, [sp, #1504]
004e86410 	str	q2, [sp, #1376]
004e86414 	ldr	q2, [sp, #1520]
004e86418 	str	q0, [sp, #1296]
004e8641c 	str	q1, [sp, #1312]
004e86420 	str	q2, [sp, #1328]
004e86424 	bl	#-8008748 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e86428 	tbz	w0, #0, #40 ; -> 0x4e86450 
004e8642c 	mov	x0, xzr
004e86430 	bl	#-1496708 ; -> 0x4d18dac SoundManager::get_instance
004e86434 	cbz	x0, #2360 ; -> 0x4e86d6c 
004e86438 	mov	x1, xzr
004e8643c 	bl	#-1496224 ; -> 0x4d18f9c SoundManager::get_BGM
004e86440 	cbz	x0, #2348 ; -> 0x4e86d6c 
004e86444 	mov	x1, xzr
004e86448 	bl	#563520 ; -> 0x4f0fd88 SoundBase::Stop
004e8644c 	b	#24 ; -> 0x4e86464 
004e86450 	mov	x0, xzr
004e86454 	bl	#-1496744 ; -> 0x4d18dac SoundManager::get_instance
004e86458 	cbz	x0, #2324 ; -> 0x4e86d6c 
004e8645c 	mov	x1, xzr
004e86460 	bl	#-1481588 ; -> 0x4d1c8ec SoundManager::BOSS_VICTORY_SOUND
004e86464 	mov	x0, x19
004e86468 	mov	x1, xzr
004e8646c 	bl	#-229172 ; -> 0x4e4e538 GameManager::Stop_TimeLimit
004e86470 	adrp	x21, #89534464 ; -> 0xa3e9000 
004e86474 	ldr	x21, [x21, #1384]
004e86478 	ldr	s8, [x19, #496]
004e8647c 	ldr	x0, [x21]
004e86480 	ldr	w8, [x0, #228]
004e86484 	cbnz	w8, #12 ; -> 0x4e86490 
004e86488 	bl	#-9394344 ; -> 0x4590be0 
004e8648c 	ldr	x0, [x21]
004e86490 	ldr	x8, [x0, #184]
004e86494 	mov	x0, xzr
004e86498 	str	s8, [x8, #300]
004e8649c 	bl	#1007264 ; -> 0x4f7c33c DamageInfoManager::get_Instance
004e864a0 	cbz	x0, #2252 ; -> 0x4e86d6c 
004e864a4 	mov	w8, #3
004e864a8 	mov	w1, #3
004e864ac 	mov	x2, xzr
004e864b0 	str	w8, [x0, #24]
004e864b4 	mov	x0, x19
004e864b8 	bl	#-232844 ; -> 0x4e4d72c GameManager::OnBattleEnd_Analytics
004e864bc 	ldr	x0, [x19, #456]
004e864c0 	strb	wzr, [x19, #336]
004e864c4 	cbz	x0, #2216 ; -> 0x4e86d6c 
004e864c8 	mov	w1, #1
004e864cc 	mov	x2, xzr
004e864d0 	bl	#79156996 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e864d4 	ldr	x0, [x19, #464]
004e864d8 	cbz	x0, #2196 ; -> 0x4e86d6c 
004e864dc 	mov	w1, #1
004e864e0 	mov	x2, xzr
004e864e4 	mov	w19, #1
004e864e8 	bl	#79156972 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e864ec 	adrp	x8, #89534464 ; -> 0xa3e9000 
004e864f0 	ldr	x8, [x8, #1264]
004e864f4 	ldr	x0, [x8]
004e864f8 	ldr	w8, [x0, #228]
004e864fc 	cbnz	w8, #8 ; -> 0x4e86504 
004e86500 	bl	#-9394464 ; -> 0x4590be0 
004e86504 	fmov	s0, #1.50000000
004e86508 	mov	x0, xzr
004e8650c 	bl	#-3330628 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004e86510 	mov	x1, x0
004e86514 	str	x0, [x20, #24]!
004e86518 	mov	x0, x20
004e8651c 	bl	#-9394968 ; -> 0x4590a04 
004e86520 	stur	w19, [x20, #-8]
004e86524 	b	#832 ; -> 0x4e86864 
004e86528 	cbz	x8, #2116 ; -> 0x4e86d6c 
004e8652c 	ldur	q0, [x8, #72]
004e86530 	ldur	q1, [x8, #88]
004e86534 	add	x0, sp, #288
004e86538 	ldur	q2, [x8, #104]
004e8653c 	mov	x1, xzr
004e86540 	stp	q0, q1, [sp, #288]
004e86544 	str	q2, [sp, #320]
004e86548 	bl	#-8009596 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e8654c 	ldr	w8, [x19, #72]
004e86550 	cmp	w0, w8
004e86554 	b.ge	#616 ; -> 0x4e867bc 
004e86558 	ldr	x8, [x19, #32]
004e8655c 	cbz	x8, #2064 ; -> 0x4e86d6c 
004e86560 	ldur	q0, [x8, #120]
004e86564 	ldur	q1, [x8, #136]
004e86568 	add	x0, sp, #240
004e8656c 	ldur	q2, [x8, #152]
004e86570 	mov	x1, xzr
004e86574 	stp	q0, q1, [sp, #240]
004e86578 	str	q2, [sp, #272]
004e8657c 	bl	#-8009648 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86580 	adrp	x8, #89554944 ; -> 0xa3ee000 
004e86584 	mov	w21, w0
004e86588 	ldr	x8, [x8, #3648]
004e8658c 	ldr	x8, [x8]
004e86590 	ldr	w9, [x8, #228]
004e86594 	cbnz	w9, #12 ; -> 0x4e865a0 
004e86598 	mov	x0, x8
004e8659c 	bl	#-9394620 ; -> 0x4590be0 
004e865a0 	mov	w0, w21
004e865a4 	mov	x1, xzr
004e865a8 	bl	#2374420 ; -> 0x50ca0bc APIManager::ClearBossStage
004e865ac 	ldr	x8, [x20, #40]
004e865b0 	cbz	x8, #1980 ; -> 0x4e86d6c 
004e865b4 	mov	w9, #1
004e865b8 	mov	x1, xzr
004e865bc 	strb	w9, [x8, #28]
004e865c0 	add	x8, sp, #1536
004e865c4 	ldr	w0, [x19, #72]
004e865c8 	ldr	x21, [x19, #32]
004e865cc 	bl	#-8037872 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e865d0 	cbz	x21, #1948 ; -> 0x4e86d6c 
004e865d4 	ldr	q0, [sp, #1536]
004e865d8 	ldr	q1, [sp, #1552]
004e865dc 	add	x0, x21, #72
004e865e0 	ldr	q2, [sp, #1568]
004e865e4 	mov	x1, xzr
004e865e8 	stur	q0, [x21, #72]
004e865ec 	stur	q1, [x21, #88]
004e865f0 	stur	q2, [x21, #104]
004e865f4 	bl	#-9395184 ; -> 0x4590a04 
004e865f8 	adrp	x21, #89534464 ; -> 0xa3e9000 
004e865fc 	ldr	x21, [x21, #1384]
004e86600 	ldr	x0, [x21]
004e86604 	ldr	w8, [x0, #228]
004e86608 	cbnz	w8, #12 ; -> 0x4e86614 
004e8660c 	bl	#-9394732 ; -> 0x4590be0 
004e86610 	ldr	x0, [x21]
004e86614 	ldr	x8, [x0, #184]
004e86618 	ldr	x8, [x8, #224]
004e8661c 	cbz	x8, #1872 ; -> 0x4e86d6c 
004e86620 	ldr	x9, [x8, #24]
004e86624 	ldr	x0, [x8, #64]
004e86628 	ldr	x1, [x8, #40]
004e8662c 	blr	x9
004e86630 	adrp	x8, #89743360 ; -> 0xa41c000 
004e86634 	ldr	x8, [x8, #512]
004e86638 	ldr	x8, [x8]
004e8663c 	ldr	x8, [x8, #184]
004e86640 	ldr	x0, [x8]
004e86644 	cbz	x0, #1832 ; -> 0x4e86d6c 
004e86648 	mov	w1, #8
004e8664c 	mov	x2, xzr
004e86650 	bl	#4122228 ; -> 0x5274cc4 MiniQuestManager::MiniQuest_Update
004e86654 	adrp	x8, #89718784 ; -> 0xa416000 
004e86658 	ldr	x8, [x8, #1664]
004e8665c 	ldr	x8, [x8]
004e86660 	ldr	x8, [x8, #184]
004e86664 	ldr	x0, [x8]
004e86668 	cbz	x0, #1796 ; -> 0x4e86d6c 
004e8666c 	mov	w1, #8
004e86670 	mov	x2, xzr
004e86674 	bl	#4153572 ; -> 0x527c758 QuestManager::UpdateQuestType
004e86678 	ldr	x8, [x21]
004e8667c 	ldr	x8, [x8, #184]
004e86680 	ldr	x0, [x8]
004e86684 	cbz	x0, #1768 ; -> 0x4e86d6c 
004e86688 	mov	w1, wzr
004e8668c 	mov	w2, wzr
004e86690 	mov	x3, xzr
004e86694 	bl	#-1261256 ; -> 0x4d527cc DatabaseManager::TryCallKinesisLog
004e86698 	ldr	x8, [x19, #32]
004e8669c 	cbz	x8, #1744 ; -> 0x4e86d6c 
004e866a0 	ldur	q0, [x8, #72]
004e866a4 	ldur	q1, [x8, #88]
004e866a8 	add	x0, sp, #192
004e866ac 	ldur	q2, [x8, #104]
004e866b0 	mov	x1, xzr
004e866b4 	stp	q0, q1, [sp, #192]
004e866b8 	str	q2, [sp, #224]
004e866bc 	bl	#-8009968 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e866c0 	cmp	w0, #80
004e866c4 	b.lt	#84 ; -> 0x4e86718 
004e866c8 	ldr	x8, [x19, #32]
004e866cc 	cbz	x8, #1696 ; -> 0x4e86d6c 
004e866d0 	ldur	q0, [x8, #72]
004e866d4 	ldur	q1, [x8, #88]
004e866d8 	add	x0, sp, #144
004e866dc 	ldur	q2, [x8, #104]
004e866e0 	mov	x1, xzr
004e866e4 	stp	q0, q1, [sp, #144]
004e866e8 	str	q2, [sp, #176]
004e866ec 	bl	#-8010016 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e866f0 	mov	w8, #52429
004e866f4 	mov	w9, #39320
004e866f8 	movk	w8, #52428, lsl #16
004e866fc 	movk	w9, #6553, lsl #16
004e86700 	madd	w8, w0, w8, w9
004e86704 	mov	w9, #52428
004e86708 	movk	w9, #3276, lsl #16
004e8670c 	ror	w8, w8, #2
004e86710 	cmp	w8, w9
004e86714 	b.ls	#932 ; -> 0x4e86ab8 
004e86718 	ldr	x8, [x19, #32]
004e8671c 	cbz	x8, #1616 ; -> 0x4e86d6c 
004e86720 	ldur	q0, [x8, #72]
004e86724 	ldur	q1, [x8, #88]
004e86728 	mov	w0, #60
004e8672c 	ldur	q2, [x8, #104]
004e86730 	add	x8, sp, #1488
004e86734 	mov	x1, xzr
004e86738 	str	q0, [sp, #1536]
004e8673c 	str	q1, [sp, #1552]
004e86740 	str	q2, [sp, #1568]
004e86744 	bl	#-8038248 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86748 	ldr	q0, [sp, #1536]
004e8674c 	ldr	q1, [sp, #1552]
004e86750 	add	x0, sp, #96
004e86754 	ldr	q2, [sp, #1568]
004e86758 	add	x1, sp, #48
004e8675c 	stp	q0, q1, [sp, #96]
004e86760 	ldr	q0, [sp, #1488]
004e86764 	ldr	q1, [sp, #1504]
004e86768 	str	q2, [sp, #128]
004e8676c 	ldr	q2, [sp, #1520]
004e86770 	stp	q0, q1, [sp, #48]
004e86774 	str	q2, [sp, #80]
004e86778 	mov	x2, xzr
004e8677c 	bl	#-8009604 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e86780 	tbz	w0, #0, #60 ; -> 0x4e867bc 
004e86784 	adrp	x8, #89718784 ; -> 0xa416000 
004e86788 	ldr	x8, [x8, #2312]
004e8678c 	ldr	x8, [x8]
004e86790 	ldr	x8, [x8, #184]
004e86794 	ldr	x0, [x8]
004e86798 	cbz	x0, #1492 ; -> 0x4e86d6c 
004e8679c 	mov	x1, xzr
004e867a0 	bl	#5247608 ; -> 0x5387a18 SoulWeaponManager::SoulWeapon_OpenCheck
004e867a4 	b	#24 ; -> 0x4e867bc 
004e867a8 	cbnz	w8, #8 ; -> 0x4e867b0 
004e867ac 	bl	#-9395148 ; -> 0x4590be0 
004e867b0 	mov	w0, w21
004e867b4 	mov	x1, xzr
004e867b8 	bl	#2373892 ; -> 0x50ca0bc APIManager::ClearBossStage
004e867bc 	ldr	x21, [x20, #40]
004e867c0 	cbz	x21, #1452 ; -> 0x4e86d6c 
004e867c4 	ldrb	w8, [x21, #28]
004e867c8 	cbz	w8, #148 ; -> 0x4e8685c 
004e867cc 	ldr	x8, [x19, #32]
004e867d0 	cbz	x8, #1436 ; -> 0x4e86d6c 
004e867d4 	ldur	q0, [x8, #120]
004e867d8 	ldur	q1, [x8, #136]
004e867dc 	mov	x0, sp
004e867e0 	ldur	q2, [x8, #152]
004e867e4 	mov	x1, xzr
004e867e8 	stp	q0, q1, [sp]
004e867ec 	str	q2, [sp, #32]
004e867f0 	bl	#-8010276 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e867f4 	ldr	x8, [x20, #40]
004e867f8 	cbz	x8, #1396 ; -> 0x4e86d6c 
004e867fc 	mov	w1, w0
004e86800 	add	x2, x8, #24
004e86804 	mov	x0, x19
004e86808 	mov	x3, xzr
004e8680c 	bl	#-212504 ; -> 0x4e529f4 GameManager::TryGetFriendDialogue
004e86810 	ldr	x21, [x20, #40]
004e86814 	tbz	w0, #0, #68 ; -> 0x4e86858 
004e86818 	adrp	x8, #89792512 ; -> 0xa428000 
004e8681c 	ldr	x8, [x8, #2048]
004e86820 	ldr	x0, [x8]
004e86824 	bl	#-9394984 ; -> 0x4590cfc 
004e86828 	adrp	x8, #89796608 ; -> 0xa429000 
004e8682c 	mov	x1, x21
004e86830 	mov	x19, x0
004e86834 	ldr	x8, [x8, #1816]
004e86838 	ldr	x2, [x8]
004e8683c 	bl	#-37596 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e86840 	ldr	x0, [x20, #40]
004e86844 	cbz	x0, #1320 ; -> 0x4e86d6c 
004e86848 	ldr	w1, [x0, #24]
004e8684c 	mov	x2, x19
004e86850 	bl	#-30128 ; -> 0x4e7f2a0 GameManager+<>c__DisplayClass110_0::<StageBossClear_Coroutine>g__FriendStorySetting|1
004e86854 	b	#16 ; -> 0x4e86864 
004e86858 	cbz	x21, #1300 ; -> 0x4e86d6c 
004e8685c 	mov	x0, x21
004e86860 	bl	#-31976 ; -> 0x4e7eb78 GameManager+<>c__DisplayClass110_0::<StageBossClear_Coroutine>g__StageClearSetting|0
004e86864 	cmp	w23, #0
004e86868 	cset	w0, eq
004e8686c 	add	sp, sp, #1584
004e86870 	ldp	x20, x19, [sp, #48]
004e86874 	ldr	x29, [sp, #8]
004e86878 	ldp	x22, x21, [sp, #32]
004e8687c 	ldp	x30, x23, [sp, #16]
004e86880 	ldr	d8, [sp], #64
004e86884 	ret
004e86888 	adrp	x8, #89796608 ; -> 0xa429000 
004e8688c 	ldr	x8, [x8, #1840]
004e86890 	ldr	x0, [x8]
004e86894 	bl	#-9395096 ; -> 0x4590cfc 
004e86898 	mov	x1, xzr
004e8689c 	mov	x21, x0
004e868a0 	bl	#67328392 ; -> 0x8ebc228 System.Object::.ctor
004e868a4 	cbz	x21, #1224 ; -> 0x4e86d6c 
004e868a8 	ldr	x1, [x20, #40]
004e868ac 	mov	x0, x21
004e868b0 	str	x1, [x0, #24]!
004e868b4 	bl	#-9395888 ; -> 0x4590a04 
004e868b8 	ldr	x8, [x19, #32]
004e868bc 	cbz	x8, #1200 ; -> 0x4e86d6c 
004e868c0 	ldur	q0, [x8, #120]
004e868c4 	ldur	q1, [x8, #136]
004e868c8 	add	x0, sp, #960
004e868cc 	ldur	q2, [x8, #152]
004e868d0 	mov	x1, xzr
004e868d4 	stp	q0, q1, [sp, #960]
004e868d8 	str	q2, [sp, #992]
004e868dc 	bl	#-8010512 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e868e0 	mov	w1, w0
004e868e4 	add	x2, x21, #16
004e868e8 	mov	x0, x19
004e868ec 	mov	x3, xzr
004e868f0 	bl	#-212732 ; -> 0x4e529f4 GameManager::TryGetFriendDialogue
004e868f4 	tbz	w0, #0, #68 ; -> 0x4e86938 
004e868f8 	adrp	x8, #89792512 ; -> 0xa428000 
004e868fc 	ldr	x8, [x8, #2048]
004e86900 	ldr	x0, [x8]
004e86904 	bl	#-9395208 ; -> 0x4590cfc 
004e86908 	adrp	x8, #89796608 ; -> 0xa429000 
004e8690c 	mov	x1, x21
004e86910 	mov	x20, x0
004e86914 	ldr	x8, [x8, #1832]
004e86918 	ldr	x2, [x8]
004e8691c 	bl	#-37820 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e86920 	ldr	x0, [x21, #24]
004e86924 	cbz	x0, #1096 ; -> 0x4e86d6c 
004e86928 	ldur	w1, [x21, #16]
004e8692c 	mov	x2, x20
004e86930 	bl	#-30352 ; -> 0x4e7f2a0 GameManager+<>c__DisplayClass110_0::<StageBossClear_Coroutine>g__FriendStorySetting|1
004e86934 	b	#16 ; -> 0x4e86944 
004e86938 	mov	x0, x19
004e8693c 	mov	x1, xzr
004e86940 	bl	#-235524 ; -> 0x4e4d13c GameManager::StageClearReward_ON
004e86944 	ldr	x8, [x19, #32]
004e86948 	cbz	x8, #1060 ; -> 0x4e86d6c 
004e8694c 	ldur	q0, [x8, #72]
004e86950 	ldur	q1, [x8, #88]
004e86954 	mov	w0, #6
004e86958 	ldur	q2, [x8, #104]
004e8695c 	add	x8, sp, #1488
004e86960 	mov	x1, xzr
004e86964 	str	q0, [sp, #1536]
004e86968 	str	q1, [sp, #1552]
004e8696c 	str	q2, [sp, #1568]
004e86970 	bl	#-8038804 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86974 	ldr	q0, [sp, #1536]
004e86978 	ldr	q1, [sp, #1552]
004e8697c 	add	x0, sp, #912
004e86980 	ldr	q2, [sp, #1568]
004e86984 	add	x1, sp, #864
004e86988 	mov	x2, xzr
004e8698c 	stp	q0, q1, [sp, #912]
004e86990 	ldr	q0, [sp, #1488]
004e86994 	ldr	q1, [sp, #1504]
004e86998 	str	q2, [sp, #944]
004e8699c 	ldr	q2, [sp, #1520]
004e869a0 	stp	q0, q1, [sp, #864]
004e869a4 	str	q2, [sp, #896]
004e869a8 	bl	#-8010160 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e869ac 	tbz	w0, #0, #56 ; -> 0x4e869e4 
004e869b0 	adrp	x8, #89743360 ; -> 0xa41c000 
004e869b4 	ldr	x8, [x8, #3400]
004e869b8 	ldr	x0, [x8]
004e869bc 	bl	#-9395392 ; -> 0x4590cfc 
004e869c0 	adrp	x8, #89796608 ; -> 0xa429000 
004e869c4 	mov	x2, xzr
004e869c8 	mov	x20, x0
004e869cc 	ldr	x8, [x8, #1848]
004e869d0 	ldr	x1, [x8]
004e869d4 	bl	#-8120900 ; -> 0x46c7f90 AdjustSdk.AdjustEvent::.ctor
004e869d8 	mov	x0, x20
004e869dc 	mov	x1, xzr
004e869e0 	bl	#-8183988 ; -> 0x46b892c AdjustSdk.Adjust::TrackEvent
004e869e4 	ldr	x8, [x19, #32]
004e869e8 	cbz	x8, #900 ; -> 0x4e86d6c 
004e869ec 	ldur	q0, [x8, #72]
004e869f0 	ldur	q1, [x8, #88]
004e869f4 	mov	w0, #20
004e869f8 	ldur	q2, [x8, #104]
004e869fc 	add	x8, sp, #1488
004e86a00 	mov	x1, xzr
004e86a04 	str	q0, [sp, #1536]
004e86a08 	str	q1, [sp, #1552]
004e86a0c 	str	q2, [sp, #1568]
004e86a10 	bl	#-8038964 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86a14 	ldr	q0, [sp, #1536]
004e86a18 	ldr	q1, [sp, #1552]
004e86a1c 	add	x0, sp, #816
004e86a20 	ldr	q2, [sp, #1568]
004e86a24 	add	x1, sp, #768
004e86a28 	mov	x2, xzr
004e86a2c 	stp	q0, q1, [sp, #816]
004e86a30 	ldr	q0, [sp, #1488]
004e86a34 	ldr	q1, [sp, #1504]
004e86a38 	str	q2, [sp, #848]
004e86a3c 	ldr	q2, [sp, #1520]
004e86a40 	stp	q0, q1, [sp, #768]
004e86a44 	str	q2, [sp, #800]
004e86a48 	bl	#-8010320 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e86a4c 	tbz	w0, #0, #-488 ; -> 0x4e86864 
004e86a50 	mov	x0, xzr
004e86a54 	bl	#3767000 ; -> 0x521e52c NewUserGrowthManager::get_Instance
004e86a58 	cbz	x0, #788 ; -> 0x4e86d6c 
004e86a5c 	mov	x1, xzr
004e86a60 	bl	#3767164 ; -> 0x521e5dc NewUserGrowthManager::IsRewardPossible
004e86a64 	tbz	w0, #0, #40 ; -> 0x4e86a8c 
004e86a68 	adrp	x8, #89559040 ; -> 0xa3ef000 
004e86a6c 	ldr	x8, [x8, #3120]
004e86a70 	ldr	x8, [x8]
004e86a74 	ldr	x8, [x8, #184]
004e86a78 	ldr	x0, [x8]
004e86a7c 	cbz	x0, #752 ; -> 0x4e86d6c 
004e86a80 	mov	w1, #1
004e86a84 	mov	x2, xzr
004e86a88 	bl	#3754480 ; -> 0x521b478 MailBoxManager::MailBoxNotice_Check
004e86a8c 	adrp	x8, #89755648 ; -> 0xa41f000 
004e86a90 	ldr	x8, [x8, #1008]
004e86a94 	ldr	x8, [x8]
004e86a98 	ldr	x8, [x8, #184]
004e86a9c 	ldr	x0, [x8]
004e86aa0 	cbz	x0, #716 ; -> 0x4e86d6c 
004e86aa4 	mov	x1, xzr
004e86aa8 	bl	#-1662028 ; -> 0x4cf0e5c ProductManager::UpdateStagePackageList
004e86aac 	mov	w8, #1
004e86ab0 	strb	w8, [x19, #337]
004e86ab4 	b	#-592 ; -> 0x4e86864 
004e86ab8 	mov	w8, #1
004e86abc 	strb	w8, [x19, #336]
004e86ac0 	b	#-772 ; -> 0x4e867bc 
004e86ac4 	ldr	x8, [x19, #32]
004e86ac8 	cbz	x8, #676 ; -> 0x4e86d6c 
004e86acc 	ldur	q0, [x8, #72]
004e86ad0 	ldur	q1, [x8, #88]
004e86ad4 	add	x0, sp, #672
004e86ad8 	ldur	q2, [x8, #104]
004e86adc 	mov	x1, xzr
004e86ae0 	stp	q0, q1, [sp, #672]
004e86ae4 	str	q2, [sp, #704]
004e86ae8 	bl	#-8011036 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86aec 	cmp	w0, #80
004e86af0 	b.lt	#384 ; -> 0x4e86c70 
004e86af4 	ldr	x8, [x19, #32]
004e86af8 	mov	w9, #1
004e86afc 	strb	w9, [x19, #336]
004e86b00 	cbz	x8, #620 ; -> 0x4e86d6c 
004e86b04 	ldur	q0, [x8, #72]
004e86b08 	ldur	q1, [x8, #88]
004e86b0c 	mov	w0, #80
004e86b10 	ldur	q2, [x8, #104]
004e86b14 	add	x8, sp, #1488
004e86b18 	mov	x1, xzr
004e86b1c 	str	q0, [sp, #1536]
004e86b20 	str	q1, [sp, #1552]
004e86b24 	str	q2, [sp, #1568]
004e86b28 	bl	#-8039244 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86b2c 	ldr	q0, [sp, #1536]
004e86b30 	ldr	q1, [sp, #1552]
004e86b34 	add	x0, sp, #624
004e86b38 	ldr	q2, [sp, #1568]
004e86b3c 	add	x1, sp, #576
004e86b40 	mov	x2, xzr
004e86b44 	stp	q0, q1, [sp, #624]
004e86b48 	ldr	q0, [sp, #1488]
004e86b4c 	ldr	q1, [sp, #1504]
004e86b50 	str	q2, [sp, #656]
004e86b54 	ldr	q2, [sp, #1520]
004e86b58 	stp	q0, q1, [sp, #576]
004e86b5c 	str	q2, [sp, #608]
004e86b60 	bl	#-8010600 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e86b64 	ldr	x8, [x19, #32]
004e86b68 	tbz	w0, #0, #88 ; -> 0x4e86bc0 
004e86b6c 	cbz	x8, #512 ; -> 0x4e86d6c 
004e86b70 	ldr	x9, [x8, #48]
004e86b74 	cbz	x9, #504 ; -> 0x4e86d6c 
004e86b78 	ldrb	w9, [x9, #39]
004e86b7c 	cbz	w9, #72 ; -> 0x4e86bc4 
004e86b80 	adrp	x8, #89526272 ; -> 0xa3e7000 
004e86b84 	ldr	x8, [x8, #2992]
004e86b88 	ldr	x0, [x8]
004e86b8c 	bl	#-9395856 ; -> 0x4590cfc 
004e86b90 	adrp	x8, #89796608 ; -> 0xa429000 
004e86b94 	mov	x1, x19
004e86b98 	mov	x3, xzr
004e86b9c 	ldr	x8, [x8, #1800]
004e86ba0 	mov	x21, x0
004e86ba4 	ldr	x2, [x8]
004e86ba8 	bl	#66363060 ; -> 0x8dd0a5c System.Action::.ctor
004e86bac 	add	x0, x19, #344
004e86bb0 	mov	x1, x21
004e86bb4 	str	x21, [x19, #344]
004e86bb8 	bl	#-9396660 ; -> 0x4590a04 
004e86bbc 	ldr	x8, [x19, #32]
004e86bc0 	cbz	x8, #428 ; -> 0x4e86d6c 
004e86bc4 	adrp	x21, #89796608 ; -> 0xa429000 
004e86bc8 	ldr	x21, [x21, #1808]
004e86bcc 	ldur	q0, [x8, #72]
004e86bd0 	ldur	q1, [x8, #88]
004e86bd4 	ldur	q2, [x8, #104]
004e86bd8 	ldr	x0, [x21]
004e86bdc 	str	q0, [sp, #1536]
004e86be0 	str	q1, [sp, #1552]
004e86be4 	ldr	w8, [x0, #228]
004e86be8 	str	q2, [sp, #1568]
004e86bec 	cbnz	w8, #12 ; -> 0x4e86bf8 
004e86bf0 	bl	#-9396240 ; -> 0x4590be0 
004e86bf4 	ldr	x0, [x21]
004e86bf8 	ldr	x8, [x0, #184]
004e86bfc 	mov	x1, xzr
004e86c00 	ldr	w0, [x8, #8]
004e86c04 	add	x8, sp, #1488
004e86c08 	bl	#-8039468 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86c0c 	ldr	q0, [sp, #1536]
004e86c10 	ldr	q1, [sp, #1552]
004e86c14 	add	x0, sp, #528
004e86c18 	ldr	q2, [sp, #1568]
004e86c1c 	add	x1, sp, #480
004e86c20 	mov	x2, xzr
004e86c24 	stp	q0, q1, [sp, #528]
004e86c28 	ldr	q0, [sp, #1488]
004e86c2c 	ldr	q1, [sp, #1504]
004e86c30 	str	q2, [sp, #560]
004e86c34 	ldr	q2, [sp, #1520]
004e86c38 	stp	q0, q1, [sp, #480]
004e86c3c 	str	q2, [sp, #512]
004e86c40 	bl	#-8010824 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e86c44 	tbz	w0, #0, #44 ; -> 0x4e86c70 
004e86c48 	ldr	x0, [x21]
004e86c4c 	ldr	w8, [x0, #228]
004e86c50 	cbnz	w8, #12 ; -> 0x4e86c5c 
004e86c54 	bl	#-9396340 ; -> 0x4590be0 
004e86c58 	ldr	x0, [x21]
004e86c5c 	ldr	x8, [x0, #184]
004e86c60 	ldr	x0, [x8]
004e86c64 	cbz	x0, #264 ; -> 0x4e86d6c 
004e86c68 	mov	x1, xzr
004e86c6c 	bl	#4981380 ; -> 0x5346ef0 SkillStoneManager::SkillStoneTabOpenCheck
004e86c70 	adrp	x8, #89755648 ; -> 0xa41f000 
004e86c74 	ldr	x8, [x8, #1008]
004e86c78 	ldr	x8, [x8]
004e86c7c 	ldr	x8, [x8, #184]
004e86c80 	ldr	x0, [x8]
004e86c84 	cbz	x0, #232 ; -> 0x4e86d6c 
004e86c88 	mov	x1, xzr
004e86c8c 	bl	#-1662512 ; -> 0x4cf0e5c ProductManager::UpdateStagePackageList
004e86c90 	adrp	x21, #89796608 ; -> 0xa429000 
004e86c94 	ldr	x21, [x21, #1808]
004e86c98 	ldr	x0, [x21]
004e86c9c 	ldr	w8, [x0, #228]
004e86ca0 	cbnz	w8, #12 ; -> 0x4e86cac 
004e86ca4 	bl	#-9396420 ; -> 0x4590be0 
004e86ca8 	ldr	x0, [x21]
004e86cac 	ldr	x8, [x0, #184]
004e86cb0 	ldr	x0, [x8]
004e86cb4 	cbz	x0, #184 ; -> 0x4e86d6c 
004e86cb8 	mov	x1, xzr
004e86cbc 	bl	#4978148 ; -> 0x53462a0 SkillStoneManager::CheckReddot
004e86cc0 	adrp	x8, #89554944 ; -> 0xa3ee000 
004e86cc4 	ldr	x8, [x8, #2104]
004e86cc8 	ldr	x0, [x8]
004e86ccc 	ldr	w8, [x0, #228]
004e86cd0 	cbnz	w8, #8 ; -> 0x4e86cd8 
004e86cd4 	bl	#-9396468 ; -> 0x4590be0 
004e86cd8 	mov	x0, xzr
004e86cdc 	bl	#-6520296 ; -> 0x484eef4 
004e86ce0 	cbz	x0, #140 ; -> 0x4e86d6c 
004e86ce4 	ldr	x8, [x19, #32]
004e86ce8 	cbz	x8, #132 ; -> 0x4e86d6c 
004e86cec 	ldur	q0, [x8, #72]
004e86cf0 	ldur	q1, [x8, #88]
004e86cf4 	mov	x1, xzr
004e86cf8 	ldur	q2, [x8, #104]
004e86cfc 	ldr	x21, [x0, #120]
004e86d00 	add	x0, sp, #432
004e86d04 	stp	q0, q1, [sp, #432]
004e86d08 	str	q2, [sp, #464]
004e86d0c 	bl	#-8011584 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e86d10 	adrp	x8, #89718784 ; -> 0xa416000 
004e86d14 	mov	w1, w0
004e86d18 	mov	x0, x21
004e86d1c 	ldr	x8, [x8, #2136]
004e86d20 	ldr	x2, [x8]
004e86d24 	bl	#16742588 ; -> 0x5e7e5e0 
004e86d28 	cbz	x0, #-2712 ; -> 0x4e86290 
004e86d2c 	ldr	w21, [x0, #76]
004e86d30 	cmp	w21, #14
004e86d34 	b.lt	#-2724 ; -> 0x4e86290 
004e86d38 	cmp	w21, #21
004e86d3c 	b.eq	#-2732 ; -> 0x4e86290 
004e86d40 	cmp	w21, #27
004e86d44 	b.eq	#-2740 ; -> 0x4e86290 
004e86d48 	mov	x0, xzr
004e86d4c 	bl	#-7220476 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
004e86d50 	cbz	x0, #28 ; -> 0x4e86d6c 
004e86d54 	mov	w1, wzr
004e86d58 	mov	w2, #13
004e86d5c 	mov	w3, w21
004e86d60 	mov	x4, xzr
004e86d64 	bl	#-7193552 ; -> 0x47aa994 Gear2.GrowSlayer.Logging.KinesisLog::OutFit
004e86d68 	b	#-2776 ; -> 0x4e86290 
004e86d6c 	bl	#-9396320 ; -> 0x4590d0c 
