004ee65b0 	str	x30, [sp, #-32]!
004ee65b4 	stp	x20, x19, [sp, #16]
004ee65b8 	adrp	x20, #97447936 ; -> 0xabd5000 
004ee65bc 	mov	x19, x0
004ee65c0 	ldrb	w8, [x20, #1466]
004ee65c4 	tbnz	w8, #0, #48 ; -> 0x4ee65f4 
004ee65c8 	adrp	x0, #89169920 ; -> 0xa3f0000 
004ee65cc 	ldr	x0, [x0]
004ee65d0 	bl	#-9788272 ; -> 0x4590a60 
004ee65d4 	adrp	x0, #89178112 ; -> 0xa3f2000 
004ee65d8 	ldr	x0, [x0, #552]
004ee65dc 	bl	#-9788284 ; -> 0x4590a60 
004ee65e0 	adrp	x0, #89341952 ; -> 0xa41a000 
004ee65e4 	ldr	x0, [x0, #3856]
004ee65e8 	bl	#-9788296 ; -> 0x4590a60 
004ee65ec 	mov	w8, #1
004ee65f0 	strb	w8, [x20, #1466]
004ee65f4 	mov	w0, #32783
004ee65f8 	mov	x1, xzr
004ee65fc 	bl	#-2748504 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ee6600 	tbz	w0, #0, #40 ; -> 0x4ee6628 
004ee6604 	mov	w0, #32783
004ee6608 	mov	x1, xzr
004ee660c 	bl	#-2748340 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ee6610 	cbz	x0, #524 ; -> 0x4ee681c 
004ee6614 	mov	x1, x19
004ee6618 	ldp	x20, x19, [sp, #16]
004ee661c 	mov	x2, xzr
004ee6620 	ldr	x30, [sp], #32
004ee6624 	b	#-3571972 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ee6628 	mov	x0, x19
004ee662c 	mov	w1, #1
004ee6630 	bl	#56128 ; -> 0x4ef4170 PlayerBase::SetPlayerAndFriendAnimatorEnable
004ee6634 	mov	x0, x19
004ee6638 	mov	x1, xzr
004ee663c 	bl	#78773040 ; -> 0x9a0616c UnityEngine.MonoBehaviour::StopAllCoroutines
004ee6640 	mov	x0, x19
004ee6644 	bl	#55720 ; -> 0x4ef3fec PlayerBase::Idle
004ee6648 	mov	x0, x19
004ee664c 	bl	#23780 ; -> 0x4eec330 PlayerBase::RemoveSlow
004ee6650 	mov	x0, x19
004ee6654 	bl	#22712 ; -> 0x4eebf0c PlayerBase::MoveSpeedSetting
004ee6658 	mov	x0, x19
004ee665c 	bl	#16916 ; -> 0x4eea870 PlayerBase::HpBar_Initialize
004ee6660 	mov	x0, x19
004ee6664 	bl	#57092 ; -> 0x4ef4568 PlayerBase::Heal_Start
004ee6668 	mov	x0, x19
004ee666c 	bl	#17860 ; -> 0x4eeac30 PlayerBase::Mp_Initialize
004ee6670 	mov	x0, x19
004ee6674 	bl	#52788 ; -> 0x4ef34a8 PlayerBase::MpCharge_Start
004ee6678 	mov	x0, x19
004ee667c 	bl	#56868 ; -> 0x4ef44a0 PlayerBase::SkillUsing_OFF
004ee6680 	mov	x0, x19
004ee6684 	bl	#57144 ; -> 0x4ef45bc PlayerBase::InitFenFire
004ee6688 	mov	x0, x19
004ee668c 	bl	#57360 ; -> 0x4ef469c PlayerBase::ClearWaterReflectActions
004ee6690 	mov	x0, x19
004ee6694 	mov	w1, #1
004ee6698 	bl	#57516 ; -> 0x4ef4744 PlayerBase::Display_Player
004ee669c 	ldr	x0, [x19, #392]
004ee66a0 	cbz	x0, #380 ; -> 0x4ee681c 
004ee66a4 	mov	x1, xzr
004ee66a8 	bl	#78749704 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ee66ac 	cbz	x0, #368 ; -> 0x4ee681c 
004ee66b0 	mov	w1, #1
004ee66b4 	mov	x2, xzr
004ee66b8 	bl	#78763292 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ee66bc 	ldr	x0, [x19, #424]
004ee66c0 	cbz	x0, #348 ; -> 0x4ee681c 
004ee66c4 	mov	x1, xzr
004ee66c8 	bl	#78749672 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ee66cc 	cbz	x0, #336 ; -> 0x4ee681c 
004ee66d0 	mov	w1, #1
004ee66d4 	mov	x2, xzr
004ee66d8 	bl	#78763260 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ee66dc 	mov	x0, x19
004ee66e0 	mov	w1, #1
004ee66e4 	bl	#57680 ; -> 0x4ef4834 PlayerBase::SpiritDisplaySetActive
004ee66e8 	ldr	x0, [x19, #2584]
004ee66ec 	cbz	x0, #304 ; -> 0x4ee681c 
004ee66f0 	mov	w1, wzr
004ee66f4 	mov	x2, xzr
004ee66f8 	bl	#78763228 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ee66fc 	ldr	x0, [x19, #2680]
004ee6700 	cbz	x0, #284 ; -> 0x4ee681c 
004ee6704 	mov	w1, wzr
004ee6708 	mov	x2, xzr
004ee670c 	bl	#78763208 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ee6710 	ldr	x0, [x19, #1880]
004ee6714 	cbz	x0, #264 ; -> 0x4ee681c 
004ee6718 	mov	w1, #1
004ee671c 	mov	x2, xzr
004ee6720 	bl	#78763188 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ee6724 	ldr	x8, [x19, #136]
004ee6728 	cbz	x8, #244 ; -> 0x4ee681c 
004ee672c 	ldr	x0, [x8, #16]
004ee6730 	cbz	x0, #236 ; -> 0x4ee681c 
004ee6734 	mov	w1, #1
004ee6738 	mov	x2, xzr
004ee673c 	bl	#78763160 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ee6740 	adrp	x20, #89341952 ; -> 0xa41a000 
004ee6744 	ldr	x20, [x20, #3856]
004ee6748 	strh	wzr, [x19, #448]
004ee674c 	strb	wzr, [x19, #1984]
004ee6750 	ldr	x0, [x20]
004ee6754 	str	wzr, [x19, #1480]
004ee6758 	ldr	w8, [x0, #228]
004ee675c 	cbnz	w8, #12 ; -> 0x4ee6768 
004ee6760 	bl	#-9788288 ; -> 0x4590be0 
004ee6764 	ldr	x0, [x20]
004ee6768 	ldr	x8, [x0, #184]
004ee676c 	ldr	x8, [x8, #24]
004ee6770 	cbz	x8, #172 ; -> 0x4ee681c 
004ee6774 	ldr	x9, [x8, #24]
004ee6778 	ldr	x0, [x8, #64]
004ee677c 	ldr	x1, [x8, #40]
004ee6780 	blr	x9
004ee6784 	adrp	x19, #89178112 ; -> 0xa3f2000 
004ee6788 	ldr	x19, [x19, #552]
004ee678c 	ldr	x0, [x19]
004ee6790 	ldr	w8, [x0, #228]
004ee6794 	cbnz	w8, #12 ; -> 0x4ee67a0 
004ee6798 	bl	#-9788344 ; -> 0x4590be0 
004ee679c 	ldr	x0, [x19]
004ee67a0 	ldr	x8, [x0, #184]
004ee67a4 	ldr	x0, [x8]
004ee67a8 	cbz	x0, #116 ; -> 0x4ee681c 
004ee67ac 	mov	x1, xzr
004ee67b0 	bl	#-528516 ; -> 0x4e6572c GameManager::InitPlayerInGameDisplays
004ee67b4 	adrp	x8, #89169920 ; -> 0xa3f0000 
004ee67b8 	adrp	x20, #97419264 ; -> 0xabce000 
004ee67bc 	ldr	x8, [x8]
004ee67c0 	ldrb	w9, [x20, #2297]
004ee67c4 	ldr	x8, [x8]
004ee67c8 	ldr	x8, [x8, #184]
004ee67cc 	ldr	x19, [x8]
004ee67d0 	cbnz	w9, #24 ; -> 0x4ee67e8 
004ee67d4 	adrp	x0, #89137152 ; -> 0xa3e8000 
004ee67d8 	ldr	x0, [x0, #632]
004ee67dc 	bl	#-9788796 ; -> 0x4590a60 
004ee67e0 	mov	w8, #1
004ee67e4 	strb	w8, [x20, #2297]
004ee67e8 	cbz	x19, #52 ; -> 0x4ee681c 
004ee67ec 	adrp	x8, #89137152 ; -> 0xa3e8000 
004ee67f0 	add	x9, x19, #396
004ee67f4 	ldr	x8, [x8, #632]
004ee67f8 	ldr	x8, [x8]
004ee67fc 	ldr	x8, [x8, #184]
004ee6800 	ldr	s1, [x8, #8]
004ee6804 	ldr	d0, [x8]
004ee6808 	str	s1, [x19, #404]
004ee680c 	ldp	x20, x19, [sp, #16]
004ee6810 	str	d0, [x9]
004ee6814 	ldr	x30, [sp], #32
004ee6818 	ret
004ee681c 	bl	#-9788176 ; -> 0x4590d0c 
