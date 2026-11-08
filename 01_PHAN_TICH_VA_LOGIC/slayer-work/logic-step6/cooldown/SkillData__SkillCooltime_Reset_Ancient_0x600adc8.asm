00530b238 	stp	x30, x19, [sp, #-16]!
00530b23c 	mov	x19, x0
00530b240 	mov	w0, #37540
00530b244 	mov	x1, xzr
00530b248 	bl	#-7093412 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530b24c 	tbz	w0, #0, #36 ; -> 0x530b270 
00530b250 	mov	w0, #37540
00530b254 	mov	x1, xzr
00530b258 	bl	#-7093248 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530b25c 	cbz	x0, #88 ; -> 0x530b2b4 
00530b260 	mov	x1, x19
00530b264 	mov	x2, xzr
00530b268 	ldp	x30, x19, [sp], #16
00530b26c 	b	#-7916876 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00530b270 	ldr	x8, [x19, #32]
00530b274 	cbz	x8, #64 ; -> 0x530b2b4 
00530b278 	ldr	w8, [x8, #140]
00530b27c 	cmp	w8, #10
00530b280 	b.eq	#32 ; -> 0x530b2a0 
00530b284 	cmp	w8, #4
00530b288 	b.eq	#24 ; -> 0x530b2a0 
00530b28c 	cmp	w8, #2
00530b290 	b.ne	#28 ; -> 0x530b2ac 
00530b294 	mov	x0, x19
00530b298 	ldp	x30, x19, [sp], #16
00530b29c 	b	#-6080 ; -> 0x5309adc SkillData::SkillCoolTimeSetting
00530b2a0 	mov	x0, x19
00530b2a4 	ldp	x30, x19, [sp], #16
00530b2a8 	b	#-7456 ; -> 0x5309588 SkillData::AttackCountSetting
00530b2ac 	ldp	x30, x19, [sp], #16
00530b2b0 	ret
00530b2b4 	bl	#-14132648 ; -> 0x4590d0c 
