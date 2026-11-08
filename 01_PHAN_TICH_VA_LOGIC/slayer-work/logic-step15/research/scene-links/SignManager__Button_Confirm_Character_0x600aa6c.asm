0052a4588 	str	x30, [sp, #-32]!
0052a458c 	stp	x20, x19, [sp, #16]
0052a4590 	adrp	x20, #93532160 ; -> 0xabd7000 
0052a4594 	mov	x19, x0
0052a4598 	ldrb	w8, [x20, #428]
0052a459c 	tbnz	w8, #0, #36 ; -> 0x52a45c0 
0052a45a0 	adrp	x0, #85241856 ; -> 0xa3ef000 
0052a45a4 	ldr	x0, [x0, #616]
0052a45a8 	bl	#-13712200 ; -> 0x4590a60 
0052a45ac 	adrp	x0, #85209088 ; -> 0xa3e7000 
0052a45b0 	ldr	x0, [x0, #3440]
0052a45b4 	bl	#-13712212 ; -> 0x4590a60 
0052a45b8 	mov	w8, #1
0052a45bc 	strb	w8, [x20, #428]
0052a45c0 	mov	w0, #43223
0052a45c4 	mov	x1, xzr
0052a45c8 	bl	#-6672420 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a45cc 	tbz	w0, #0, #40 ; -> 0x52a45f4 
0052a45d0 	mov	w0, #43223
0052a45d4 	mov	x1, xzr
0052a45d8 	bl	#-6672256 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a45dc 	cbz	x0, #148 ; -> 0x52a4670 
0052a45e0 	mov	x1, x19
0052a45e4 	ldp	x20, x19, [sp, #16]
0052a45e8 	mov	x2, xzr
0052a45ec 	ldr	x30, [sp], #32
0052a45f0 	b	#-7495888 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052a45f4 	ldr	w8, [x19, #216]
0052a45f8 	cmn	w8, #1
0052a45fc 	b.eq	#60 ; -> 0x52a4638 
0052a4600 	ldr	x0, [x19, #264]
0052a4604 	cbz	x0, #108 ; -> 0x52a4670 
0052a4608 	mov	w1, wzr
0052a460c 	mov	x2, xzr
0052a4610 	bl	#78201052 ; -> 0x9d386ec UnityEngine.UI.Selectable::set_interactable
0052a4614 	adrp	x8, #85209088 ; -> 0xa3e7000 
0052a4618 	mov	x0, x19
0052a461c 	ldr	x8, [x8, #3440]
0052a4620 	ldr	x1, [x8]
0052a4624 	bl	#80 ; -> 0x52a4674 SignManager::MakeCharacter
0052a4628 	ldp	x20, x19, [sp, #16]
0052a462c 	mov	x2, xzr
0052a4630 	ldr	x30, [sp], #32
0052a4634 	b	#69182424 ; -> 0x949ea0c Cysharp.Threading.Tasks.UniTaskExtensions::Forget
0052a4638 	adrp	x8, #85241856 ; -> 0xa3ef000 
0052a463c 	mov	x0, xzr
0052a4640 	ldr	x8, [x8, #616]
0052a4644 	ldr	x8, [x8]
0052a4648 	ldr	x8, [x8, #184]
0052a464c 	ldr	x19, [x8]
0052a4650 	bl	#-10040040 ; -> 0x4911368 STR::get_PLS_SELECT_CHARACTER
0052a4654 	cbz	x19, #28 ; -> 0x52a4670 
0052a4658 	mov	x1, x0
0052a465c 	mov	x0, x19
0052a4660 	mov	x2, xzr
0052a4664 	ldp	x20, x19, [sp, #16]
0052a4668 	ldr	x30, [sp], #32
0052a466c 	b	#-5974860 ; -> 0x4cf1b20 AlarmManager::AlarmText
0052a4670 	bl	#-13711716 ; -> 0x4590d0c 
