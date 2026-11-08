0048215cc 	sub	sp, sp, #160
0048215d0 	stp	x30, x27, [sp, #80]
0048215d4 	stp	x26, x25, [sp, #96]
0048215d8 	stp	x24, x23, [sp, #112]
0048215dc 	stp	x22, x21, [sp, #128]
0048215e0 	stp	x20, x19, [sp, #144]
0048215e4 	adrp	x27, #104521728 ; -> 0xabcf000 
0048215e8 	mov	x26, x7
0048215ec 	mov	x21, x6
0048215f0 	ldrb	w8, [x27, #1144]
0048215f4 	mov	x22, x5
0048215f8 	mov	x23, x4
0048215fc 	mov	x24, x3
004821600 	mov	x25, x2
004821604 	mov	x20, x1
004821608 	mov	w19, w0
00482160c 	stp	x2, x3, [sp, #64]
004821610 	stp	x4, x5, [sp, #48]
004821614 	stp	x6, x7, [sp, #32]
004821618 	tbnz	w8, #0, #72 ; -> 0x4821660 
00482161c 	adrp	x0, #96272384 ; -> 0xa3f1000 
004821620 	ldr	x0, [x0, #3848]
004821624 	bl	#-2689988 ; -> 0x4590a60 
004821628 	adrp	x0, #96239616 ; -> 0xa3e9000 
00482162c 	ldr	x0, [x0, #3552]
004821630 	bl	#-2690000 ; -> 0x4590a60 
004821634 	adrp	x0, #96272384 ; -> 0xa3f1000 
004821638 	ldr	x0, [x0, #3856]
00482163c 	bl	#-2690012 ; -> 0x4590a60 
004821640 	adrp	x0, #96272384 ; -> 0xa3f1000 
004821644 	ldr	x0, [x0, #3864]
004821648 	bl	#-2690024 ; -> 0x4590a60 
00482164c 	adrp	x0, #96272384 ; -> 0xa3f1000 
004821650 	ldr	x0, [x0, #3872]
004821654 	bl	#-2690036 ; -> 0x4590a60 
004821658 	mov	w8, #1
00482165c 	strb	w8, [x27, #1144]
004821660 	mov	w0, #1977
004821664 	mov	x1, xzr
004821668 	bl	#4349756 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00482166c 	tbz	w0, #0, #60 ; -> 0x48216a8 
004821670 	mov	w0, #1977
004821674 	mov	x1, xzr
004821678 	bl	#4349920 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00482167c 	cbz	x0, #612 ; -> 0x48218e0 
004821680 	mov	w1, w19
004821684 	mov	x2, x20
004821688 	mov	x3, x25
00482168c 	mov	x4, x24
004821690 	mov	x5, x23
004821694 	mov	x6, x22
004821698 	stp	x26, xzr, [sp, #8]
00482169c 	str	x21, [sp]
0048216a0 	bl	#3587184 ; -> 0x4b8d310 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_285
0048216a4 	b	#544 ; -> 0x48218c4 
0048216a8 	cbz	x20, #568 ; -> 0x48218e0 
0048216ac 	adrp	x25, #96239616 ; -> 0xa3e9000 
0048216b0 	ldr	x25, [x25, #3552]
0048216b4 	ldr	x21, [x20, #32]
0048216b8 	ldr	x0, [x25]
0048216bc 	ldr	w8, [x0, #228]
0048216c0 	cbnz	w8, #8 ; -> 0x48216c8 
0048216c4 	bl	#-2689764 ; -> 0x4590be0 
0048216c8 	add	x0, sp, #64
0048216cc 	mov	x1, xzr
0048216d0 	bl	#76918636 ; -> 0x917c63c System.Numerics.BigInteger::ToString
0048216d4 	mov	x1, x0
0048216d8 	mov	x0, x21
0048216dc 	mov	x2, xzr
0048216e0 	bl	#72052004 ; -> 0x8cd8404 System.String::op_Inequality
0048216e4 	tbz	w0, #0, #128 ; -> 0x4821764 
0048216e8 	adrp	x8, #96272384 ; -> 0xa3f1000 
0048216ec 	ldr	x8, [x8, #3848]
0048216f0 	ldr	w21, [x20, #24]
0048216f4 	ldr	x0, [x8]
0048216f8 	ldr	w8, [x0, #228]
0048216fc 	cbnz	w8, #8 ; -> 0x4821704 
004821700 	bl	#-2689824 ; -> 0x4590be0 
004821704 	mov	w0, w21
004821708 	mov	x1, xzr
00482170c 	bl	#5280580 ; -> 0x4d2aa50 BigIntegerCurrency::ToCurrencyTypes
004821710 	ldr	x8, [x25]
004821714 	ldp	x21, x22, [sp, #64]
004821718 	ldr	x24, [x20, #32]
00482171c 	mov	w23, w0
004821720 	ldr	w9, [x8, #228]
004821724 	cbnz	w9, #12 ; -> 0x4821730 
004821728 	mov	x0, x8
00482172c 	bl	#-2689868 ; -> 0x4590be0 
004821730 	mov	x0, x24
004821734 	mov	x1, xzr
004821738 	bl	#76909856 ; -> 0x917a458 System.Numerics.BigInteger::Parse
00482173c 	adrp	x8, #96272384 ; -> 0xa3f1000 
004821740 	mov	x5, x0
004821744 	mov	x6, x1
004821748 	ldr	x8, [x8, #3856]
00482174c 	mov	w1, w19
004821750 	mov	w2, w23
004821754 	mov	x3, x21
004821758 	mov	x4, x22
00482175c 	ldr	x0, [x8]
004821760 	bl	#388 ; -> 0x48218e4 APIValidator::PostLog
004821764 	ldr	x0, [x25]
004821768 	ldr	x21, [x20, #40]
00482176c 	ldr	w8, [x0, #228]
004821770 	cbnz	w8, #8 ; -> 0x4821778 
004821774 	bl	#-2689940 ; -> 0x4590be0 
004821778 	add	x0, sp, #48
00482177c 	mov	x1, xzr
004821780 	bl	#76918460 ; -> 0x917c63c System.Numerics.BigInteger::ToString
004821784 	mov	x1, x0
004821788 	mov	x0, x21
00482178c 	mov	x2, xzr
004821790 	bl	#72051828 ; -> 0x8cd8404 System.String::op_Inequality
004821794 	tbz	w0, #0, #128 ; -> 0x4821814 
004821798 	adrp	x8, #96272384 ; -> 0xa3f1000 
00482179c 	ldr	x8, [x8, #3848]
0048217a0 	ldr	w21, [x20, #24]
0048217a4 	ldr	x0, [x8]
0048217a8 	ldr	w8, [x0, #228]
0048217ac 	cbnz	w8, #8 ; -> 0x48217b4 
0048217b0 	bl	#-2690000 ; -> 0x4590be0 
0048217b4 	mov	w0, w21
0048217b8 	mov	x1, xzr
0048217bc 	bl	#5280404 ; -> 0x4d2aa50 BigIntegerCurrency::ToCurrencyTypes
0048217c0 	ldr	x8, [x25]
0048217c4 	ldp	x21, x22, [sp, #48]
0048217c8 	ldr	x24, [x20, #40]
0048217cc 	mov	w23, w0
0048217d0 	ldr	w9, [x8, #228]
0048217d4 	cbnz	w9, #12 ; -> 0x48217e0 
0048217d8 	mov	x0, x8
0048217dc 	bl	#-2690044 ; -> 0x4590be0 
0048217e0 	mov	x0, x24
0048217e4 	mov	x1, xzr
0048217e8 	bl	#76909680 ; -> 0x917a458 System.Numerics.BigInteger::Parse
0048217ec 	adrp	x8, #96272384 ; -> 0xa3f1000 
0048217f0 	mov	x5, x0
0048217f4 	mov	x6, x1
0048217f8 	ldr	x8, [x8, #3864]
0048217fc 	mov	w1, w19
004821800 	mov	w2, w23
004821804 	mov	x3, x21
004821808 	mov	x4, x22
00482180c 	ldr	x0, [x8]
004821810 	bl	#212 ; -> 0x48218e4 APIValidator::PostLog
004821814 	ldr	x0, [x25]
004821818 	ldr	x21, [x20, #48]
00482181c 	ldr	w8, [x0, #228]
004821820 	cbnz	w8, #8 ; -> 0x4821828 
004821824 	bl	#-2690116 ; -> 0x4590be0 
004821828 	add	x0, sp, #32
00482182c 	mov	x1, xzr
004821830 	bl	#76918284 ; -> 0x917c63c System.Numerics.BigInteger::ToString
004821834 	mov	x1, x0
004821838 	mov	x0, x21
00482183c 	mov	x2, xzr
004821840 	bl	#72051652 ; -> 0x8cd8404 System.String::op_Inequality
004821844 	tbz	w0, #0, #128 ; -> 0x48218c4 
004821848 	adrp	x8, #96272384 ; -> 0xa3f1000 
00482184c 	ldr	x8, [x8, #3848]
004821850 	ldr	w21, [x20, #24]
004821854 	ldr	x0, [x8]
004821858 	ldr	w8, [x0, #228]
00482185c 	cbnz	w8, #8 ; -> 0x4821864 
004821860 	bl	#-2690176 ; -> 0x4590be0 
004821864 	mov	w0, w21
004821868 	mov	x1, xzr
00482186c 	bl	#5280228 ; -> 0x4d2aa50 BigIntegerCurrency::ToCurrencyTypes
004821870 	ldr	x8, [x25]
004821874 	ldp	x21, x22, [sp, #32]
004821878 	ldr	x23, [x20, #48]
00482187c 	mov	w20, w0
004821880 	ldr	w9, [x8, #228]
004821884 	cbnz	w9, #12 ; -> 0x4821890 
004821888 	mov	x0, x8
00482188c 	bl	#-2690220 ; -> 0x4590be0 
004821890 	mov	x0, x23
004821894 	mov	x1, xzr
004821898 	bl	#76909504 ; -> 0x917a458 System.Numerics.BigInteger::Parse
00482189c 	adrp	x8, #96272384 ; -> 0xa3f1000 
0048218a0 	mov	x5, x0
0048218a4 	mov	x6, x1
0048218a8 	ldr	x8, [x8, #3872]
0048218ac 	mov	w1, w19
0048218b0 	mov	w2, w20
0048218b4 	mov	x3, x21
0048218b8 	mov	x4, x22
0048218bc 	ldr	x0, [x8]
0048218c0 	bl	#36 ; -> 0x48218e4 APIValidator::PostLog
0048218c4 	ldp	x20, x19, [sp, #144]
0048218c8 	ldp	x22, x21, [sp, #128]
0048218cc 	ldp	x24, x23, [sp, #112]
0048218d0 	ldp	x26, x25, [sp, #96]
0048218d4 	ldp	x30, x27, [sp, #80]
0048218d8 	add	sp, sp, #160
0048218dc 	ret
0048218e0 	bl	#-2690004 ; -> 0x4590d0c 
