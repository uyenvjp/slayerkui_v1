0052a477c 	stp	x30, x21, [sp, #-32]!
0052a4780 	stp	x20, x19, [sp, #16]
0052a4784 	adrp	x20, #93532160 ; -> 0xabd7000 
0052a4788 	mov	x19, x0
0052a478c 	ldrb	w8, [x20, #429]
0052a4790 	tbnz	w8, #0, #48 ; -> 0x52a47c0 
0052a4794 	adrp	x0, #85241856 ; -> 0xa3ef000 
0052a4798 	ldr	x0, [x0, #616]
0052a479c 	bl	#-13712700 ; -> 0x4590a60 
0052a47a0 	adrp	x0, #85217280 ; -> 0xa3e9000 
0052a47a4 	ldr	x0, [x0, #1384]
0052a47a8 	bl	#-13712712 ; -> 0x4590a60 
0052a47ac 	adrp	x0, #85278720 ; -> 0xa3f8000 
0052a47b0 	ldr	x0, [x0, #480]
0052a47b4 	bl	#-13712724 ; -> 0x4590a60 
0052a47b8 	mov	w8, #1
0052a47bc 	strb	w8, [x20, #429]
0052a47c0 	mov	w0, #43236
0052a47c4 	mov	x1, xzr
0052a47c8 	bl	#-6672932 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a47cc 	tbz	w0, #0, #40 ; -> 0x52a47f4 
0052a47d0 	mov	w0, #43236
0052a47d4 	mov	x1, xzr
0052a47d8 	bl	#-6672768 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a47dc 	cbz	x0, #268 ; -> 0x52a48e8 
0052a47e0 	mov	x1, x19
0052a47e4 	ldp	x20, x19, [sp, #16]
0052a47e8 	mov	x2, xzr
0052a47ec 	ldp	x30, x21, [sp], #32
0052a47f0 	b	#-7496400 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052a47f4 	ldr	w8, [x19, #216]
0052a47f8 	cmn	w8, #1
0052a47fc 	b.eq	#152 ; -> 0x52a4894 
0052a4800 	ldr	x0, [x19, #208]
0052a4804 	cbz	x0, #228 ; -> 0x52a48e8 
0052a4808 	mov	w1, wzr
0052a480c 	mov	x2, xzr
0052a4810 	bl	#78200540 ; -> 0x9d386ec UnityEngine.UI.Selectable::set_interactable
0052a4814 	ldr	x8, [x19, #192]
0052a4818 	cbz	x8, #208 ; -> 0x52a48e8 
0052a481c 	ldr	x0, [x8, #384]
0052a4820 	cbz	x0, #200 ; -> 0x52a48e8 
0052a4824 	mov	x1, xzr
0052a4828 	bl	#61055556 ; -> 0x8cdea6c System.String::Trim
0052a482c 	adrp	x21, #85217280 ; -> 0xa3e9000 
0052a4830 	mov	x20, x0
0052a4834 	ldr	x21, [x21, #1384]
0052a4838 	ldr	x8, [x21]
0052a483c 	ldr	w9, [x8, #228]
0052a4840 	cbnz	w9, #16 ; -> 0x52a4850 
0052a4844 	mov	x0, x8
0052a4848 	bl	#-13712488 ; -> 0x4590be0 
0052a484c 	ldr	x8, [x21]
0052a4850 	ldr	x8, [x8, #184]
0052a4854 	ldr	x0, [x8]
0052a4858 	cbz	x0, #144 ; -> 0x52a48e8 
0052a485c 	adrp	x8, #85278720 ; -> 0xa3f8000 
0052a4860 	mov	x1, x20
0052a4864 	mov	x3, xzr
0052a4868 	ldr	x8, [x8, #480]
0052a486c 	ldr	x2, [x8]
0052a4870 	bl	#-5568296 ; -> 0x4d55148 DatabaseManager::NameCheck
0052a4874 	tbz	w0, #0, #88 ; -> 0x52a48cc 
0052a4878 	mov	x0, x19
0052a487c 	mov	x1, x20
0052a4880 	bl	#-524 ; -> 0x52a4674 SignManager::MakeCharacter
0052a4884 	ldp	x20, x19, [sp, #16]
0052a4888 	mov	x2, xzr
0052a488c 	ldp	x30, x21, [sp], #32
0052a4890 	b	#69181820 ; -> 0x949ea0c Cysharp.Threading.Tasks.UniTaskExtensions::Forget
0052a4894 	adrp	x8, #85241856 ; -> 0xa3ef000 
0052a4898 	mov	x0, xzr
0052a489c 	ldr	x8, [x8, #616]
0052a48a0 	ldr	x8, [x8]
0052a48a4 	ldr	x8, [x8, #184]
0052a48a8 	ldr	x19, [x8]
0052a48ac 	bl	#-10040644 ; -> 0x4911368 STR::get_PLS_SELECT_CHARACTER
0052a48b0 	cbz	x19, #56 ; -> 0x52a48e8 
0052a48b4 	mov	x1, x0
0052a48b8 	mov	x0, x19
0052a48bc 	mov	x2, xzr
0052a48c0 	ldp	x20, x19, [sp, #16]
0052a48c4 	ldp	x30, x21, [sp], #32
0052a48c8 	b	#-5975464 ; -> 0x4cf1b20 AlarmManager::AlarmText
0052a48cc 	ldr	x0, [x19, #208]
0052a48d0 	cbz	x0, #24 ; -> 0x52a48e8 
0052a48d4 	ldp	x20, x19, [sp, #16]
0052a48d8 	mov	w1, #1
0052a48dc 	mov	x2, xzr
0052a48e0 	ldp	x30, x21, [sp], #32
0052a48e4 	b	#78200328 ; -> 0x9d386ec UnityEngine.UI.Selectable::set_interactable
0052a48e8 	bl	#-13712348 ; -> 0x4590d0c 
