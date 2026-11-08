004f1766c 	sub	sp, sp, #256
004f17670 	stp	x2, x30, [sp, #200]
004f17674 	stp	x22, x21, [sp, #224]
004f17678 	stp	x20, x19, [sp, #240]
004f1767c 	adrp	x22, #97247232 ; -> 0xabd5000 
004f17680 	mov	x20, x2
004f17684 	mov	x21, x1
004f17688 	ldrb	w8, [x22, #1723]
004f1768c 	mov	x19, x0
004f17690 	str	x1, [sp, #192]
004f17694 	tbnz	w8, #0, #60 ; -> 0x4f176d0 
004f17698 	adrp	x0, #88940544 ; -> 0xa3e9000 
004f1769c 	ldr	x0, [x0, #3552]
004f176a0 	bl	#-9989184 ; -> 0x4590a60 
004f176a4 	adrp	x0, #88940544 ; -> 0xa3e9000 
004f176a8 	ldr	x0, [x0, #1384]
004f176ac 	bl	#-9989196 ; -> 0x4590a60 
004f176b0 	adrp	x0, #89120768 ; -> 0xa415000 
004f176b4 	ldr	x0, [x0, #3136]
004f176b8 	bl	#-9989208 ; -> 0x4590a60 
004f176bc 	adrp	x0, #89198592 ; -> 0xa428000 
004f176c0 	ldr	x0, [x0, #2904]
004f176c4 	bl	#-9989220 ; -> 0x4590a60 
004f176c8 	mov	w8, #1
004f176cc 	strb	w8, [x22, #1723]
004f176d0 	mov	w0, #33201
004f176d4 	mov	x1, xzr
004f176d8 	bl	#-2949428 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f176dc 	tbz	w0, #0, #52 ; -> 0x4f17710 
004f176e0 	mov	w0, #33201
004f176e4 	mov	x1, xzr
004f176e8 	bl	#-2949264 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f176ec 	cbz	x0, #744 ; -> 0x4f179d4 
004f176f0 	mov	x1, x19
004f176f4 	mov	x2, x21
004f176f8 	mov	x3, x20
004f176fc 	mov	x4, xzr
004f17700 	bl	#-3633436 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
004f17704 	mov	x19, x0
004f17708 	mov	x20, x1
004f1770c 	b	#684 ; -> 0x4f179b8 
004f17710 	ldr	x0, [x19, #144]
004f17714 	cbz	x0, #704 ; -> 0x4f179d4 
004f17718 	mov	x1, x21
004f1771c 	mov	x2, x20
004f17720 	mov	x3, xzr
004f17724 	bl	#-1875140 ; -> 0x4d4da60 DatabaseManager::Exp_Cal
004f17728 	adrp	x8, #89198592 ; -> 0xa428000 
004f1772c 	ldr	x8, [x8, #2904]
004f17730 	stp	x0, x1, [sp, #192]
004f17734 	ldr	x8, [x8]
004f17738 	mov	x0, x8
004f1773c 	bl	#38213396 ; -> 0x7388e50 
004f17740 	cbz	x0, #660 ; -> 0x4f179d4 
004f17744 	add	x1, sp, #192
004f17748 	mov	x2, xzr
004f1774c 	bl	#-1657724 ; -> 0x4d82bd0 HotTimeScrollManager::ApplyExp
004f17750 	adrp	x20, #89120768 ; -> 0xa415000 
004f17754 	ldr	x20, [x20, #3136]
004f17758 	ldr	x0, [x20]
004f1775c 	ldr	w8, [x0, #228]
004f17760 	cbnz	w8, #12 ; -> 0x4f1776c 
004f17764 	bl	#-9988996 ; -> 0x4590be0 
004f17768 	ldr	x0, [x20]
004f1776c 	ldr	x8, [x0, #184]
004f17770 	add	x0, sp, #144
004f17774 	mov	x1, xzr
004f17778 	ldp	q0, q1, [x8]
004f1777c 	ldr	q2, [x8, #32]
004f17780 	str	q2, [sp, #176]
004f17784 	stp	q0, q1, [sp, #144]
004f17788 	bl	#-8603348 ; -> 0x46e30b4 Liapp.SecureVariable.LiappSecureBool::op_Implicit
004f1778c 	tbz	w0, #0, #40 ; -> 0x4f177b4 
004f17790 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f17794 	ldr	x8, [x8, #3552]
004f17798 	ldp	x20, x21, [sp, #192]
004f1779c 	ldr	x0, [x8]
004f177a0 	ldr	w8, [x0, #228]
004f177a4 	cbnz	w8, #8 ; -> 0x4f177ac 
004f177a8 	bl	#-9989064 ; -> 0x4590be0 
004f177ac 	mov	w0, #2
004f177b0 	b	#184 ; -> 0x4f17868 
004f177b4 	ldr	x0, [x20]
004f177b8 	ldr	w8, [x0, #228]
004f177bc 	cbnz	w8, #12 ; -> 0x4f177c8 
004f177c0 	bl	#-9989088 ; -> 0x4590be0 
004f177c4 	ldr	x0, [x20]
004f177c8 	ldr	x8, [x0, #184]
004f177cc 	add	x0, sp, #96
004f177d0 	mov	x1, xzr
004f177d4 	ldp	q0, q1, [x8, #48]
004f177d8 	ldr	q2, [x8, #80]
004f177dc 	str	q2, [sp, #128]
004f177e0 	stp	q0, q1, [sp, #96]
004f177e4 	bl	#-8603440 ; -> 0x46e30b4 Liapp.SecureVariable.LiappSecureBool::op_Implicit
004f177e8 	tbz	w0, #0, #40 ; -> 0x4f17810 
004f177ec 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f177f0 	ldr	x8, [x8, #3552]
004f177f4 	ldp	x20, x21, [sp, #192]
004f177f8 	ldr	x0, [x8]
004f177fc 	ldr	w8, [x0, #228]
004f17800 	cbnz	w8, #8 ; -> 0x4f17808 
004f17804 	bl	#-9989156 ; -> 0x4590be0 
004f17808 	mov	w0, #4
004f1780c 	b	#92 ; -> 0x4f17868 
004f17810 	ldr	x0, [x20]
004f17814 	ldr	w8, [x0, #228]
004f17818 	cbnz	w8, #12 ; -> 0x4f17824 
004f1781c 	bl	#-9989180 ; -> 0x4590be0 
004f17820 	ldr	x0, [x20]
004f17824 	ldr	x8, [x0, #184]
004f17828 	add	x0, sp, #48
004f1782c 	mov	x1, xzr
004f17830 	ldp	q0, q1, [x8, #96]
004f17834 	ldr	q2, [x8, #128]
004f17838 	str	q2, [sp, #80]
004f1783c 	stp	q0, q1, [sp, #48]
004f17840 	bl	#-8603532 ; -> 0x46e30b4 Liapp.SecureVariable.LiappSecureBool::op_Implicit
004f17844 	tbz	w0, #0, #72 ; -> 0x4f1788c 
004f17848 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f1784c 	ldr	x8, [x8, #3552]
004f17850 	ldp	x20, x21, [sp, #192]
004f17854 	ldr	x0, [x8]
004f17858 	ldr	w8, [x0, #228]
004f1785c 	cbnz	w8, #8 ; -> 0x4f17864 
004f17860 	bl	#-9989248 ; -> 0x4590be0 
004f17864 	mov	w0, #5
004f17868 	mov	x1, xzr
004f1786c 	bl	#69621560 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f17870 	mov	x2, x0
004f17874 	mov	x3, x1
004f17878 	mov	x0, x20
004f1787c 	mov	x1, x21
004f17880 	mov	x4, xzr
004f17884 	bl	#69611456 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004f17888 	stp	x0, x1, [sp, #192]
004f1788c 	ldr	x8, [x19, #144]
004f17890 	cbz	x8, #324 ; -> 0x4f179d4 
004f17894 	ldr	q0, [x8, #3472]
004f17898 	ldr	q1, [x8, #3488]
004f1789c 	mov	x0, sp
004f178a0 	ldr	q2, [x8, #3504]
004f178a4 	mov	x1, xzr
004f178a8 	stp	q0, q1, [sp]
004f178ac 	str	q2, [sp, #32]
004f178b0 	bl	#-8604388 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f178b4 	cmp	w0, #1
004f178b8 	b.lt	#72 ; -> 0x4f17900 
004f178bc 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f178c0 	ldr	x8, [x8, #3552]
004f178c4 	ldp	x20, x21, [sp, #192]
004f178c8 	ldr	x0, [x8]
004f178cc 	ldr	w8, [x0, #228]
004f178d0 	cbnz	w8, #8 ; -> 0x4f178d8 
004f178d4 	bl	#-9989364 ; -> 0x4590be0 
004f178d8 	mov	w0, #3
004f178dc 	mov	x1, xzr
004f178e0 	bl	#69621444 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f178e4 	mov	x2, x0
004f178e8 	mov	x3, x1
004f178ec 	mov	x0, x20
004f178f0 	mov	x1, x21
004f178f4 	mov	x4, xzr
004f178f8 	bl	#69611340 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004f178fc 	stp	x0, x1, [sp, #192]
004f17900 	ldr	x0, [x19, #144]
004f17904 	cbz	x0, #208 ; -> 0x4f179d4 
004f17908 	mov	w1, #2
004f1790c 	mov	x2, xzr
004f17910 	bl	#-1815572 ; -> 0x4d5c4fc DatabaseManager::EventBuff_Active
004f17914 	ldp	x19, x20, [sp, #192]
004f17918 	tbz	w0, #0, #160 ; -> 0x4f179b8 
004f1791c 	adrp	x21, #88940544 ; -> 0xa3e9000 
004f17920 	ldr	x21, [x21, #1384]
004f17924 	ldr	x0, [x21]
004f17928 	ldr	w8, [x0, #228]
004f1792c 	cbnz	w8, #12 ; -> 0x4f17938 
004f17930 	bl	#-9989456 ; -> 0x4590be0 
004f17934 	ldr	x0, [x21]
004f17938 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f1793c 	ldr	x8, [x8, #3552]
004f17940 	ldr	x9, [x0, #184]
004f17944 	ldr	x8, [x8]
004f17948 	ldr	w21, [x9, #332]
004f1794c 	ldr	w10, [x8, #228]
004f17950 	cbnz	w10, #12 ; -> 0x4f1795c 
004f17954 	mov	x0, x8
004f17958 	bl	#-9989496 ; -> 0x4590be0 
004f1795c 	mov	w0, w21
004f17960 	mov	x1, xzr
004f17964 	bl	#69621312 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f17968 	mov	x2, x0
004f1796c 	mov	x3, x1
004f17970 	mov	x0, x19
004f17974 	mov	x1, x20
004f17978 	mov	x4, xzr
004f1797c 	bl	#69611208 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004f17980 	mov	x19, x0
004f17984 	mov	x20, x1
004f17988 	mov	w0, #100
004f1798c 	mov	x1, xzr
004f17990 	bl	#69621268 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f17994 	mov	x2, x0
004f17998 	mov	x3, x1
004f1799c 	mov	x0, x19
004f179a0 	mov	x1, x20
004f179a4 	mov	x4, xzr
004f179a8 	bl	#69611664 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004f179ac 	mov	x19, x0
004f179b0 	mov	x20, x1
004f179b4 	stp	x0, x1, [sp, #192]
004f179b8 	mov	x0, x19
004f179bc 	mov	x1, x20
004f179c0 	ldr	x30, [sp, #208]
004f179c4 	ldp	x20, x19, [sp, #240]
004f179c8 	ldp	x22, x21, [sp, #224]
004f179cc 	add	sp, sp, #256
004f179d0 	ret
004f179d4 	bl	#-9989320 ; -> 0x4590d0c 
