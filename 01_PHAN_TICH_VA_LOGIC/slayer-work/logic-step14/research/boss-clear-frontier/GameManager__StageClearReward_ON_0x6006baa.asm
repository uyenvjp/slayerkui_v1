004e4d13c 	sub	sp, sp, #96
004e4d140 	str	x30, [sp, #48]
004e4d144 	stp	x22, x21, [sp, #64]
004e4d148 	stp	x20, x19, [sp, #80]
004e4d14c 	adrp	x20, #98074624 ; -> 0xabd5000 
004e4d150 	mov	x19, x0
004e4d154 	ldrb	w8, [x20, #308]
004e4d158 	tbnz	w8, #0, #36 ; -> 0x4e4d17c 
004e4d15c 	adrp	x0, #89767936 ; -> 0xa3e9000 
004e4d160 	ldr	x0, [x0, #3552]
004e4d164 	bl	#-9160452 ; -> 0x4590a60 
004e4d168 	adrp	x0, #89767936 ; -> 0xa3e9000 
004e4d16c 	ldr	x0, [x0, #2488]
004e4d170 	bl	#-9160464 ; -> 0x4590a60 
004e4d174 	mov	w8, #1
004e4d178 	strb	w8, [x20, #308]
004e4d17c 	mov	w0, #30807
004e4d180 	mov	x1, xzr
004e4d184 	bl	#-2120672 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4d188 	tbz	w0, #0, #48 ; -> 0x4e4d1b8 
004e4d18c 	mov	w0, #30807
004e4d190 	mov	x1, xzr
004e4d194 	bl	#-2120508 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4d198 	cbz	x0, #408 ; -> 0x4e4d330 
004e4d19c 	mov	x1, x19
004e4d1a0 	ldp	x20, x19, [sp, #80]
004e4d1a4 	ldp	x22, x21, [sp, #64]
004e4d1a8 	mov	x2, xzr
004e4d1ac 	ldr	x30, [sp, #48]
004e4d1b0 	add	sp, sp, #96
004e4d1b4 	b	#-2944148 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e4d1b8 	ldr	x0, [x19, #352]
004e4d1bc 	cbz	x0, #372 ; -> 0x4e4d330 
004e4d1c0 	mov	w1, #1
004e4d1c4 	mov	x2, xzr
004e4d1c8 	bl	#79391244 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e4d1cc 	ldr	x0, [x19, #520]
004e4d1d0 	cbz	x0, #352 ; -> 0x4e4d330 
004e4d1d4 	ldr	x20, [x19, #360]
004e4d1d8 	mov	x1, xzr
004e4d1dc 	bl	#5581152 ; -> 0x539fb3c StageInfo::get_StageName
004e4d1e0 	cbz	x20, #336 ; -> 0x4e4d330 
004e4d1e4 	ldr	x8, [x20]
004e4d1e8 	mov	x1, x0
004e4d1ec 	mov	x0, x20
004e4d1f0 	ldr	x9, [x8, #1512]
004e4d1f4 	ldr	x2, [x8, #1520]
004e4d1f8 	blr	x9
004e4d1fc 	ldr	x8, [x19, #520]
004e4d200 	cbz	x8, #304 ; -> 0x4e4d330 
004e4d204 	add	x0, x8, #616
004e4d208 	mov	x1, xzr
004e4d20c 	bl	#-3131320 ; -> 0x4b50a54 SilentBigInt::get_Value
004e4d210 	adrp	x8, #89767936 ; -> 0xa3e9000 
004e4d214 	mov	x20, x0
004e4d218 	mov	x21, x1
004e4d21c 	ldr	x8, [x8, #3552]
004e4d220 	ldr	x0, [x8]
004e4d224 	ldr	w8, [x0, #228]
004e4d228 	cbnz	w8, #8 ; -> 0x4e4d230 
004e4d22c 	bl	#-9160268 ; -> 0x4590be0 
004e4d230 	mov	w0, #10
004e4d234 	mov	x1, xzr
004e4d238 	bl	#70450540 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004e4d23c 	mov	x2, x0
004e4d240 	mov	x3, x1
004e4d244 	mov	x0, x20
004e4d248 	mov	x1, x21
004e4d24c 	mov	x4, xzr
004e4d250 	bl	#70440436 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004e4d254 	stp	x0, x1, [x19, #392]
004e4d258 	add	x0, x19, #400
004e4d25c 	mov	x1, xzr
004e4d260 	bl	#-9160796 ; -> 0x4590a04 
004e4d264 	adrp	x8, #89767936 ; -> 0xa3e9000 
004e4d268 	ldr	x8, [x8, #2488]
004e4d26c 	ldp	x21, x22, [x19, #392]
004e4d270 	ldr	x20, [x19, #368]
004e4d274 	ldr	x0, [x8]
004e4d278 	ldr	w8, [x0, #228]
004e4d27c 	cbnz	w8, #8 ; -> 0x4e4d284 
004e4d280 	bl	#-9160352 ; -> 0x4590be0 
004e4d284 	mov	x0, x21
004e4d288 	mov	x1, x22
004e4d28c 	mov	x2, xzr
004e4d290 	bl	#-3089712 ; -> 0x4b5ad60 Localization::ToString
004e4d294 	cbz	x20, #156 ; -> 0x4e4d330 
004e4d298 	ldr	x8, [x20]
004e4d29c 	mov	x1, x0
004e4d2a0 	mov	x0, x20
004e4d2a4 	ldr	x9, [x8, #1512]
004e4d2a8 	ldr	x2, [x8, #1520]
004e4d2ac 	blr	x9
004e4d2b0 	ldr	x8, [x19, #520]
004e4d2b4 	cbz	x8, #124 ; -> 0x4e4d330 
004e4d2b8 	ldp	q0, q1, [x8, #656]
004e4d2bc 	mov	x0, sp
004e4d2c0 	ldr	q2, [x8, #688]
004e4d2c4 	mov	x1, xzr
004e4d2c8 	stp	q0, q1, [sp]
004e4d2cc 	str	q2, [sp, #32]
004e4d2d0 	bl	#-7778948 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e4d2d4 	add	x8, x0, x0, lsl #2
004e4d2d8 	ldr	x20, [x19, #376]
004e4d2dc 	mov	x1, xzr
004e4d2e0 	lsl	x0, x8, #1
004e4d2e4 	str	x0, [x19, #408]
004e4d2e8 	bl	#-3091628 ; -> 0x4b5a63c Localization::ToString
004e4d2ec 	cbz	x20, #68 ; -> 0x4e4d330 
004e4d2f0 	ldr	x8, [x20]
004e4d2f4 	mov	x1, x0
004e4d2f8 	mov	x0, x20
004e4d2fc 	ldr	x9, [x8, #1512]
004e4d300 	ldr	x2, [x8, #1520]
004e4d304 	blr	x9
004e4d308 	mov	x0, x19
004e4d30c 	bl	#40 ; -> 0x4e4d334 GameManager::Auto_NextStage
004e4d310 	mov	x1, x0
004e4d314 	mov	x0, x19
004e4d318 	bl	#196 ; -> 0x4e4d3dc GameManager::StopAndGoIE_AutoNextStage
004e4d31c 	ldp	x20, x19, [sp, #80]
004e4d320 	ldr	x30, [sp, #48]
004e4d324 	ldp	x22, x21, [sp, #64]
004e4d328 	add	sp, sp, #96
004e4d32c 	ret
004e4d330 	bl	#-9160228 ; -> 0x4590d0c 
