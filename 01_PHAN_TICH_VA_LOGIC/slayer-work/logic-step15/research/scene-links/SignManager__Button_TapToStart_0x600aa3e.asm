00529f9a0 	stp	x30, x21, [sp, #-32]!
00529f9a4 	stp	x20, x19, [sp, #16]
00529f9a8 	adrp	x20, #93552640 ; -> 0xabd7000 
00529f9ac 	mov	x19, x0
00529f9b0 	ldrb	w8, [x20, #390]
00529f9b4 	tbnz	w8, #0, #84 ; -> 0x529fa08 
00529f9b8 	adrp	x0, #85229568 ; -> 0xa3e7000 
00529f9bc 	ldr	x0, [x0, #1328]
00529f9c0 	bl	#-13692768 ; -> 0x4590a60 
00529f9c4 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529f9c8 	ldr	x0, [x0, #1352]
00529f9cc 	bl	#-13692780 ; -> 0x4590a60 
00529f9d0 	adrp	x0, #85581824 ; -> 0xa43d000 
00529f9d4 	ldr	x0, [x0, #1920]
00529f9d8 	bl	#-13692792 ; -> 0x4590a60 
00529f9dc 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529f9e0 	ldr	x0, [x0, #2512]
00529f9e4 	bl	#-13692804 ; -> 0x4590a60 
00529f9e8 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529f9ec 	ldr	x0, [x0, #1344]
00529f9f0 	bl	#-13692816 ; -> 0x4590a60 
00529f9f4 	adrp	x0, #85581824 ; -> 0xa43d000 
00529f9f8 	ldr	x0, [x0, #1928]
00529f9fc 	bl	#-13692828 ; -> 0x4590a60 
00529fa00 	mov	w8, #1
00529fa04 	strb	w8, [x20, #390]
00529fa08 	mov	w0, #43103
00529fa0c 	mov	x1, xzr
00529fa10 	bl	#-6653036 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00529fa14 	tbz	w0, #0, #40 ; -> 0x529fa3c 
00529fa18 	mov	w0, #43103
00529fa1c 	mov	x1, xzr
00529fa20 	bl	#-6652872 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00529fa24 	cbz	x0, #548 ; -> 0x529fc48 
00529fa28 	mov	x1, x19
00529fa2c 	ldp	x20, x19, [sp, #16]
00529fa30 	mov	x2, xzr
00529fa34 	ldp	x30, x21, [sp], #32
00529fa38 	b	#-7476504 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00529fa3c 	adrp	x8, #85229568 ; -> 0xa3e7000 
00529fa40 	adrp	x20, #85581824 ; -> 0xa43d000 
00529fa44 	ldr	x8, [x8, #1328]
00529fa48 	ldr	x0, [x8]
00529fa4c 	ldr	w8, [x0, #228]
00529fa50 	ldr	x20, [x20, #1928]
00529fa54 	cbnz	w8, #8 ; -> 0x529fa5c 
00529fa58 	bl	#-13692536 ; -> 0x4590be0 
00529fa5c 	ldr	x0, [x20]
00529fa60 	mov	x1, xzr
00529fa64 	bl	#74583668 ; -> 0x99c08d8 UnityEngine.Debug::Log
00529fa68 	ldr	x0, [x19, #96]
00529fa6c 	cbz	x0, #476 ; -> 0x529fc48 
00529fa70 	mov	w1, wzr
00529fa74 	mov	x2, xzr
00529fa78 	bl	#74858844 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529fa7c 	adrp	x20, #85237760 ; -> 0xa3e9000 
00529fa80 	ldr	x20, [x20, #2512]
00529fa84 	ldr	x0, [x20]
00529fa88 	bl	#34509768 ; -> 0x7388e50 
00529fa8c 	cbz	x0, #444 ; -> 0x529fc48 
00529fa90 	mov	x1, xzr
00529fa94 	bl	#1567772 ; -> 0x541e6b0 Network.NetworkHandler::get_LookupLoginResponse
00529fa98 	cbz	x0, #148 ; -> 0x529fb2c 
00529fa9c 	ldr	x0, [x20]
00529faa0 	bl	#34509744 ; -> 0x7388e50 
00529faa4 	cbz	x0, #420 ; -> 0x529fc48 
00529faa8 	mov	x1, xzr
00529faac 	bl	#1567748 ; -> 0x541e6b0 Network.NetworkHandler::get_LookupLoginResponse
00529fab0 	cbz	x0, #408 ; -> 0x529fc48 
00529fab4 	mov	x1, xzr
00529fab8 	bl	#1700388 ; -> 0x543ecdc Integration.LookupLoginResponse::get_IsNewUser
00529fabc 	tbz	w0, #0, #112 ; -> 0x529fb2c 
00529fac0 	ldr	x0, [x19, #376]
00529fac4 	cbz	x0, #388 ; -> 0x529fc48 
00529fac8 	mov	w1, wzr
00529facc 	mov	x2, xzr
00529fad0 	bl	#74858756 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529fad4 	adrp	x8, #85237760 ; -> 0xa3e9000 
00529fad8 	ldr	x8, [x8, #1352]
00529fadc 	ldr	x0, [x8]
00529fae0 	bl	#-13692388 ; -> 0x4590cfc 
00529fae4 	adrp	x8, #85581824 ; -> 0xa43d000 
00529fae8 	mov	x1, x19
00529faec 	mov	x3, xzr
00529faf0 	ldr	x8, [x8, #1920]
00529faf4 	mov	x20, x0
00529faf8 	ldr	x2, [x8]
00529fafc 	bl	#21578280 ; -> 0x6733d24 
00529fb00 	adrp	x8, #85237760 ; -> 0xa3e9000 
00529fb04 	ldr	x8, [x8, #1344]
00529fb08 	ldr	x0, [x8]
00529fb0c 	ldr	w8, [x0, #228]
00529fb10 	cbnz	w8, #8 ; -> 0x529fb18 
00529fb14 	bl	#-13692724 ; -> 0x4590be0 
00529fb18 	mov	x0, x20
00529fb1c 	ldp	x20, x19, [sp, #16]
00529fb20 	mov	x1, xzr
00529fb24 	ldp	x30, x21, [sp], #32
00529fb28 	b	#69142804 ; -> 0x949043c Cysharp.Threading.Tasks.UniTask::Void
00529fb2c 	ldrb	w8, [x19, #393]
00529fb30 	cbz	w8, #36 ; -> 0x529fb54 
00529fb34 	ldr	w8, [x19, #40]
00529fb38 	cmp	w8, #2
00529fb3c 	b.eq	#192 ; -> 0x529fbfc 
00529fb40 	cbnz	w8, #204 ; -> 0x529fc0c 
00529fb44 	mov	x0, x19
00529fb48 	ldp	x20, x19, [sp, #16]
00529fb4c 	ldp	x30, x21, [sp], #32
00529fb50 	b	#252 ; -> 0x529fc4c SignManager::Migration_Google_Login
00529fb54 	adrp	x20, #93540352 ; -> 0xabd4000 
00529fb58 	ldrb	w8, [x20, #2990]
00529fb5c 	cbnz	w8, #24 ; -> 0x529fb74 
00529fb60 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529fb64 	ldr	x0, [x0, #2272]
00529fb68 	bl	#-13693192 ; -> 0x4590a60 
00529fb6c 	mov	w8, #1
00529fb70 	strb	w8, [x20, #2990]
00529fb74 	adrp	x21, #85237760 ; -> 0xa3e9000 
00529fb78 	ldr	x21, [x21, #2272]
00529fb7c 	ldr	x8, [x21]
00529fb80 	ldr	x8, [x8, #184]
00529fb84 	ldr	x8, [x8]
00529fb88 	cbz	x8, #192 ; -> 0x529fc48 
00529fb8c 	ldr	x0, [x8, #32]
00529fb90 	cbz	x0, #184 ; -> 0x529fc48 
00529fb94 	mov	x1, xzr
00529fb98 	bl	#7450084 ; -> 0x59ba97c Firebase.Auth.FirebaseAuth::get_CurrentUser
00529fb9c 	cbz	x0, #124 ; -> 0x529fc18 
00529fba0 	ldrb	w8, [x20, #2990]
00529fba4 	str	wzr, [x19, #40]
00529fba8 	cbnz	w8, #24 ; -> 0x529fbc0 
00529fbac 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529fbb0 	ldr	x0, [x0, #2272]
00529fbb4 	bl	#-13693268 ; -> 0x4590a60 
00529fbb8 	mov	w8, #1
00529fbbc 	strb	w8, [x20, #2990]
00529fbc0 	ldr	x8, [x21]
00529fbc4 	ldr	x8, [x8, #184]
00529fbc8 	ldr	x20, [x8]
00529fbcc 	cbz	x20, #124 ; -> 0x529fc48 
00529fbd0 	ldr	x0, [x20, #32]
00529fbd4 	cbz	x0, #116 ; -> 0x529fc48 
00529fbd8 	mov	x1, xzr
00529fbdc 	bl	#7450016 ; -> 0x59ba97c Firebase.Auth.FirebaseAuth::get_CurrentUser
00529fbe0 	mov	x1, x0
00529fbe4 	str	x0, [x20, #40]!
00529fbe8 	mov	x0, x20
00529fbec 	bl	#-13693416 ; -> 0x4590a04 
00529fbf0 	mov	x0, x19
00529fbf4 	bl	#88 ; -> 0x529fc4c SignManager::Migration_Google_Login
00529fbf8 	b	#40 ; -> 0x529fc20 
00529fbfc 	mov	x0, x19
00529fc00 	ldp	x20, x19, [sp, #16]
00529fc04 	ldp	x30, x21, [sp], #32
00529fc08 	b	#244 ; -> 0x529fcfc SignManager::Migration_IOS_Login
00529fc0c 	ldp	x20, x19, [sp, #16]
00529fc10 	ldp	x30, x21, [sp], #32
00529fc14 	ret
00529fc18 	mov	x0, x19
00529fc1c 	bl	#400 ; -> 0x529fdac SignManager::GoogleLoginProcess
00529fc20 	mov	x0, xzr
00529fc24 	bl	#-5795448 ; -> 0x4d18dac SoundManager::get_instance
00529fc28 	cbz	x0, #32 ; -> 0x529fc48 
00529fc2c 	ldr	x8, [x0]
00529fc30 	ldp	x20, x19, [sp, #16]
00529fc34 	mov	x1, xzr
00529fc38 	ldr	x2, [x8, #2688]
00529fc3c 	ldr	x3, [x8, #2680]
00529fc40 	ldp	x30, x21, [sp], #32
00529fc44 	br	x3
00529fc48 	bl	#-13692732 ; -> 0x4590d0c 
