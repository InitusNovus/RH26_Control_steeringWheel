	.file	"LcdInterface.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.HLD_LcdInterface_doButton6Up,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton6Up, @function
HLD_LcdInterface_doButton6Up:
.LFB713:
	.file 1 "0_Src/AppSw/Tricore/HLD/LcdInterface.c"
	.loc 1 375 0
	ret
.LFE713:
	.size	HLD_LcdInterface_doButton6Up, .-HLD_LcdInterface_doButton6Up
.section .text.HLD_LcdInterface_doButton6Down,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton6Down, @function
HLD_LcdInterface_doButton6Down:
.LFB714:
	.loc 1 409 0
	ret
.LFE714:
	.size	HLD_LcdInterface_doButton6Down, .-HLD_LcdInterface_doButton6Down
.section .text.HLD_LcdInterface_doButton5Down,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton5Down, @function
HLD_LcdInterface_doButton5Down:
.LFB712:
	.loc 1 370 0
	.loc 1 371 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL0:
.LFE712:
	.size	HLD_LcdInterface_doButton5Down, .-HLD_LcdInterface_doButton5Down
.section .text.HLD_LcdInterface_doButton5Up,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton5Up, @function
HLD_LcdInterface_doButton5Up:
.LFB711:
	.loc 1 366 0
	.loc 1 367 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL1:
.LFE711:
	.size	HLD_LcdInterface_doButton5Up, .-HLD_LcdInterface_doButton5Up
.section .text.HLD_LcdInterface_doButton4Down,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton4Down, @function
HLD_LcdInterface_doButton4Down:
.LFB710:
	.loc 1 361 0
	.loc 1 362 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL2:
.LFE710:
	.size	HLD_LcdInterface_doButton4Down, .-HLD_LcdInterface_doButton4Down
.section .text.HLD_LcdInterface_doButton4Up,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton4Up, @function
HLD_LcdInterface_doButton4Up:
.LFB709:
	.loc 1 357 0
	.loc 1 358 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL3:
.LFE709:
	.size	HLD_LcdInterface_doButton4Up, .-HLD_LcdInterface_doButton4Up
.section .text.HLD_LcdInterface_doButton3Down,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton3Down, @function
HLD_LcdInterface_doButton3Down:
.LFB708:
	.loc 1 352 0
	.loc 1 353 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL4:
.LFE708:
	.size	HLD_LcdInterface_doButton3Down, .-HLD_LcdInterface_doButton3Down
.section .text.HLD_LcdInterface_doButton3Up,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton3Up, @function
HLD_LcdInterface_doButton3Up:
.LFB707:
	.loc 1 348 0
	.loc 1 349 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL5:
.LFE707:
	.size	HLD_LcdInterface_doButton3Up, .-HLD_LcdInterface_doButton3Up
.section .text.HLD_LcdInterface_doButton2Down,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton2Down, @function
HLD_LcdInterface_doButton2Down:
.LFB706:
	.loc 1 343 0
	.loc 1 344 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL6:
.LFE706:
	.size	HLD_LcdInterface_doButton2Down, .-HLD_LcdInterface_doButton2Down
.section .text.HLD_LcdInterface_doButton2Up,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton2Up, @function
HLD_LcdInterface_doButton2Up:
.LFB705:
	.loc 1 339 0
	.loc 1 340 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL7:
.LFE705:
	.size	HLD_LcdInterface_doButton2Up, .-HLD_LcdInterface_doButton2Up
.section .text.HLD_LcdInterface_doButton1Down,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton1Down, @function
HLD_LcdInterface_doButton1Down:
.LFB704:
	.loc 1 334 0
	.loc 1 335 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL8:
.LFE704:
	.size	HLD_LcdInterface_doButton1Down, .-HLD_LcdInterface_doButton1Down
.section .text.HLD_LcdInterface_doButton1Up,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton1Up, @function
HLD_LcdInterface_doButton1Up:
.LFB703:
	.loc 1 330 0
	.loc 1 331 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL9:
.LFE703:
	.size	HLD_LcdInterface_doButton1Up, .-HLD_LcdInterface_doButton1Up
.section .text.HLD_LcdInterface_doButton0Down,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton0Down, @function
HLD_LcdInterface_doButton0Down:
.LFB702:
	.loc 1 324 0
	.loc 1 325 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL10:
.LFE702:
	.size	HLD_LcdInterface_doButton0Down, .-HLD_LcdInterface_doButton0Down
.section .text.HLD_LcdInterface_doButton0Up,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton0Up, @function
HLD_LcdInterface_doButton0Up:
.LFB701:
	.loc 1 319 0
	.loc 1 320 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL11:
.LFE701:
	.size	HLD_LcdInterface_doButton0Up, .-HLD_LcdInterface_doButton0Up
.section .rodata,"a",@progbits
.LC0:
	.string	""
.section .text.HLD_LcdInterface_doButton.constprop.0,"ax",@progbits
	.align 1
	.type	HLD_LcdInterface_doButton.constprop.0, @function
HLD_LcdInterface_doButton.constprop.0:
.LFB719:
	.loc 1 456 0
.LVL12:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 456 0
	mov	%d15, %d4
	mov.a	%a12, 0
	mov.a	%a15, 0
	jge.u	%d4, 7, .L16
	movh.a	%a15, hi:CSWTCH.7
	movh.a	%a2, hi:CSWTCH.8
	sh	%d2, %d4, 2
	lea	%a15, [%a15] lo:CSWTCH.7
	lea	%a2, [%a2] lo:CSWTCH.8
	addsc.a	%a15, %a15, %d2, 0
	addsc.a	%a2, %a2, %d2, 0
	ld.a	%a15, [%a15]0
	ld.a	%a12, [%a2]0
.L16:
.LVL13:
	.loc 1 493 0
	mul	%d8, %d15, 12
	movh.a	%a13, hi:Button
	lea	%a13, [%a13] lo:Button
	addsc.a	%a4, %a13, %d8, 0
	call	HLD_Lcd_getButton
.LVL14:
	jnz	%d2, .L24
	.loc 1 498 0
	addi	%d8, %d8, 84
	addsc.a	%a4, %a13, %d8, 0
	call	HLD_Lcd_getButton
.LVL15:
	jnz	%d2, .L25
.LVL16:
.L18:
	.loc 1 511 0
	movh.a	%a15, hi:g_Lcd+8
	ld.a	%a6, [%SP] 4
	lea	%a15, [%a15] lo:g_Lcd+8
	movh.a	%a5, hi:.LC0
	mov.aa	%a4, %a15
	lea	%a5, [%a5] lo:.LC0
	call	vsprintf
.LVL17:
	.loc 1 513 0
	rsub	%d15, %d15, 8
	mul	%d4, %d15, 24
	mov	%d5, 50
	mov.aa	%a4, %a15
	add	%d4, -1
	j	GLCD_displayStringLn_col
.LVL18:
.L25:
	.loc 1 501 0
	movh.a	%a15, hi:test
.LVL19:
	.loc 1 500 0
	calli	%a12
.LVL20:
	.loc 1 501 0
	st.w	[%a15] lo:test, %d15
	j	.L18
.LVL21:
.L24:
	.loc 1 495 0
	calli	%a15
.LVL22:
	.loc 1 496 0
	movh.a	%a15, hi:test
.LVL23:
	st.w	[%a15] lo:test, %d15
	j	.L18
.LFE719:
	.size	HLD_LcdInterface_doButton.constprop.0, .-HLD_LcdInterface_doButton.constprop.0
.section .text.HLD_LcdInterface_setPage,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_setPage
	.type	HLD_LcdInterface_setPage, @function
HLD_LcdInterface_setPage:
.LFB692:
	.loc 1 184 0
	.loc 1 185 0
	mov	%d4, 31727
	call	GLCD_setBackColor
.LVL24:
	.loc 1 186 0
	mov.u	%d4, 65535
	call	GLCD_setTextColor
.LVL25:
	.loc 1 207 0
	mov.u	%d4, 65535
	call	GLCD_setBackColor
.LVL26:
	.loc 1 208 0
	mov	%d4, 0
	j	GLCD_setTextColor
.LVL27:
.LFE692:
	.size	HLD_LcdInterface_setPage, .-HLD_LcdInterface_setPage
.section .text.HLD_LcdInterface_init,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_init
	.type	HLD_LcdInterface_init, @function
HLD_LcdInterface_init:
.LFB691:
	.loc 1 172 0
.LVL28:
.LBB18:
.LBB19:
	.loc 1 520 0
	movh.a	%a15, hi:LcdInterface
	ld.bu	%d15, [%a15] lo:LcdInterface
	insert	%d15, %d15, 1, 0, 1
.LVL29:
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	.loc 1 521 0
	insert	%d15, %d15, 1, 1, 1
.LVL30:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 522 0
	insert	%d15, %d15, 1, 2, 1
.LVL31:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 1 523 0
	insert	%d15, %d15, 1, 3, 1
.LVL32:
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	.loc 1 524 0
	insert	%d15, %d15, 1, 4, 1
.LVL33:
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 1 525 0
	insert	%d15, %d15, 1, 5, 1
.LVL34:
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 1 526 0
	insert	%d15, %d15, 1, 6, 1
	st.b	[%a15] lo:LcdInterface, %d15
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 1 532 0
	and	%d15, 255
	jnz.t	%d15, 0, .L56
	.loc 1 536 0
	jnz.t	%d15, 1, .L57
.L29:
	.loc 1 540 0
	jnz.t	%d15, 2, .L58
.L30:
	.loc 1 544 0
	jnz.t	%d15, 3, .L59
.L31:
	.loc 1 548 0
	jnz.t	%d15, 4, .L60
.L32:
	.loc 1 552 0
	jnz.t	%d15, 5, .L61
.L33:
	.loc 1 556 0
	jnz.t	%d15, 6, .L62
.L34:
.LBE33:
.LBE32:
	.loc 1 181 0
	j	HLD_LcdInterface_setPage
.LVL35:
.L62:
.LBB36:
.LBB34:
	.loc 1 558 0
	movh.a	%a4, hi:UD_buttons_image
	mov	%d4, 0
	mov	%d5, 23
	mov	%d6, 48
	mov	%d7, 24
	lea	%a4, [%a4] lo:UD_buttons_image
	call	GLCD_bitmap
.LVL36:
.LBE34:
.LBE36:
	.loc 1 181 0
	j	HLD_LcdInterface_setPage
.LVL37:
.L61:
.LBB37:
.LBB35:
	.loc 1 554 0
	movh.a	%a4, hi:UD_buttons_image
	mov	%d4, 0
	mov	%d5, 47
	mov	%d6, 48
	mov	%d7, 24
	lea	%a4, [%a4] lo:UD_buttons_image
	call	GLCD_bitmap
.LVL38:
	ld.bu	%d15, [%a15] lo:LcdInterface
	.loc 1 556 0
	jz.t	%d15, 6, .L34
	j	.L62
.L60:
	.loc 1 550 0
	movh.a	%a4, hi:UD_buttons_image
	mov	%d4, 0
	mov	%d5, 71
	mov	%d6, 48
	mov	%d7, 24
	lea	%a4, [%a4] lo:UD_buttons_image
	call	GLCD_bitmap
.LVL39:
	ld.bu	%d15, [%a15] lo:LcdInterface
	.loc 1 552 0
	jz.t	%d15, 5, .L33
	j	.L61
.L59:
	.loc 1 546 0
	movh.a	%a4, hi:UD_buttons_image
	mov	%d4, 0
	mov	%d5, 95
	mov	%d6, 48
	mov	%d7, 24
	lea	%a4, [%a4] lo:UD_buttons_image
	call	GLCD_bitmap
.LVL40:
	ld.bu	%d15, [%a15] lo:LcdInterface
	.loc 1 548 0
	jz.t	%d15, 4, .L32
	j	.L60
.L58:
	.loc 1 542 0
	movh.a	%a4, hi:UD_buttons_image
	mov	%d4, 0
	mov	%d5, 119
	mov	%d6, 48
	mov	%d7, 24
	lea	%a4, [%a4] lo:UD_buttons_image
	call	GLCD_bitmap
.LVL41:
	ld.bu	%d15, [%a15] lo:LcdInterface
	.loc 1 544 0
	jz.t	%d15, 3, .L31
	j	.L59
.L57:
	.loc 1 538 0
	movh.a	%a4, hi:UD_buttons_image
	mov	%d4, 0
	mov	%d5, 143
	mov	%d6, 48
	mov	%d7, 24
	lea	%a4, [%a4] lo:UD_buttons_image
	call	GLCD_bitmap
.LVL42:
	ld.bu	%d15, [%a15] lo:LcdInterface
	.loc 1 540 0
	jz.t	%d15, 2, .L30
	j	.L58
.L56:
	.loc 1 534 0
	movh.a	%a4, hi:UD_buttons_image
	mov	%d4, 0
	mov	%d5, 167
	mov	%d6, 48
	mov	%d7, 24
	lea	%a4, [%a4] lo:UD_buttons_image
	call	GLCD_bitmap
.LVL43:
	ld.bu	%d15, [%a15] lo:LcdInterface
	.loc 1 536 0
	jz.t	%d15, 1, .L29
	j	.L57
.LBE35:
.LBE37:
.LFE691:
	.size	HLD_LcdInterface_init, .-HLD_LcdInterface_init
.section .text.HLD_LcdInterface_page1,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_page1
	.type	HLD_LcdInterface_page1, @function
HLD_LcdInterface_page1:
.LFB693:
	.loc 1 233 0
	.loc 1 236 0
	mov	%d4, 0
	call	HLD_LcdInterface_doButton.constprop.0
.LVL44:
	.loc 1 239 0
	mov	%d4, 1
	call	HLD_LcdInterface_doButton.constprop.0
.LVL45:
	.loc 1 242 0
	mov	%d4, 2
	call	HLD_LcdInterface_doButton.constprop.0
.LVL46:
	.loc 1 245 0
	mov	%d4, 3
	call	HLD_LcdInterface_doButton.constprop.0
.LVL47:
	.loc 1 248 0
	mov	%d4, 4
	call	HLD_LcdInterface_doButton.constprop.0
.LVL48:
	.loc 1 251 0
	mov	%d4, 5
	j	HLD_LcdInterface_doButton.constprop.0
.LVL49:
.LFE693:
	.size	HLD_LcdInterface_page1, .-HLD_LcdInterface_page1
.section .text.HLD_LcdInterface_page1_1,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_page1_1
	.type	HLD_LcdInterface_page1_1, @function
HLD_LcdInterface_page1_1:
.LFB694:
	.loc 1 259 0
	ret
.LFE694:
	.size	HLD_LcdInterface_page1_1, .-HLD_LcdInterface_page1_1
.section .text.HLD_LcdInterface_page2,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_page2
	.type	HLD_LcdInterface_page2, @function
HLD_LcdInterface_page2:
.LFB695:
	.loc 1 282 0
	ret
.LFE695:
	.size	HLD_LcdInterface_page2, .-HLD_LcdInterface_page2
.section .text.HLD_LcdInterface_page2_1,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_page2_1
	.type	HLD_LcdInterface_page2_1, @function
HLD_LcdInterface_page2_1:
.LFB696:
	.loc 1 292 0
	ret
.LFE696:
	.size	HLD_LcdInterface_page2_1, .-HLD_LcdInterface_page2_1
.section .text.HLD_LcdInterface_page3,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_page3
	.type	HLD_LcdInterface_page3, @function
HLD_LcdInterface_page3:
.LFB697:
	.loc 1 296 0
	ret
.LFE697:
	.size	HLD_LcdInterface_page3, .-HLD_LcdInterface_page3
.section .text.HLD_LcdInterface_page3_1,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_page3_1
	.type	HLD_LcdInterface_page3_1, @function
HLD_LcdInterface_page3_1:
.LFB698:
	.loc 1 300 0
	ret
.LFE698:
	.size	HLD_LcdInterface_page3_1, .-HLD_LcdInterface_page3_1
.section .text.HLD_LcdInterface_doStart,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_doStart
	.type	HLD_LcdInterface_doStart, @function
HLD_LcdInterface_doStart:
.LFB699:
	.loc 1 310 0
	.loc 1 311 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL50:
.LFE699:
	.size	HLD_LcdInterface_doStart, .-HLD_LcdInterface_doStart
.section .text.HLD_LcdInterface_doStop,"ax",@progbits
	.align 1
	.global	HLD_LcdInterface_doStop
	.type	HLD_LcdInterface_doStop, @function
HLD_LcdInterface_doStop:
.LFB700:
	.loc 1 314 0
	.loc 1 315 0
	movh.a	%a4, hi:Beep_pattern1
	lea	%a4, [%a4] lo:Beep_pattern1
	j	HLD_GtmTomBeeper_start
.LVL51:
.LFE700:
	.size	HLD_LcdInterface_doStop, .-HLD_LcdInterface_doStop
.section .rodata.CSWTCH.8,"a",@progbits
	.align 2
	.type	CSWTCH.8, @object
	.size	CSWTCH.8, 28
CSWTCH.8:
	.word	HLD_LcdInterface_doButton0Down
	.word	HLD_LcdInterface_doButton1Down
	.word	HLD_LcdInterface_doButton2Down
	.word	HLD_LcdInterface_doButton3Down
	.word	HLD_LcdInterface_doButton4Down
	.word	HLD_LcdInterface_doButton5Down
	.word	HLD_LcdInterface_doButton6Down
.section .rodata.CSWTCH.7,"a",@progbits
	.align 2
	.type	CSWTCH.7, @object
	.size	CSWTCH.7, 28
CSWTCH.7:
	.word	HLD_LcdInterface_doButton0Up
	.word	HLD_LcdInterface_doButton1Up
	.word	HLD_LcdInterface_doButton2Up
	.word	HLD_LcdInterface_doButton3Up
	.word	HLD_LcdInterface_doButton4Up
	.word	HLD_LcdInterface_doButton5Up
	.word	HLD_LcdInterface_doButton6Up
	.global	c
.section .bss.c,"aw",@nobits
	.type	c, @object
	.size	c, 1
c:
	.zero	1
	.global	b
.section .bss.b,"aw",@nobits
	.type	b, @object
	.size	b, 1
b:
	.zero	1
	.global	a
.section .bss.a,"aw",@nobits
	.type	a, @object
	.size	a, 1
a:
	.zero	1
	.global	kph
.section .bss.kph,"aw",@nobits
	.align 2
	.type	kph, @object
	.size	kph, 4
kph:
	.zero	4
	.global	temp
.section .bss.temp,"aw",@nobits
	.align 2
	.type	temp, @object
	.size	temp, 4
temp:
	.zero	4
	.global	testf
.section .bss.testf,"aw",@nobits
	.align 2
	.type	testf, @object
	.size	testf, 4
testf:
	.zero	4
	.global	test
.section .bss.test,"aw",@nobits
	.align 2
	.type	test, @object
	.size	test, 4
test:
	.zero	4
	.global	Increment
.section .data.Increment,"aw",@progbits
	.align 2
	.type	Increment, @object
	.size	Increment, 32
Increment:
	.word	1167867904
	.zero	4
	.word	1028443341
	.zero	20
	.global	Button
.section .data.Button,"aw",@progbits
	.align 1
	.type	Button, @object
	.size	Button, 168
Button:
	.uaword	0
	.short	474
	.short	739
	.short	2681
	.short	3029
	.uaword	0
	.short	474
	.short	739
	.short	2333
	.short	2681
	.uaword	0
	.short	474
	.short	739
	.short	1985
	.short	2333
	.uaword	0
	.short	474
	.short	739
	.short	1637
	.short	1985
	.uaword	0
	.short	474
	.short	739
	.short	1289
	.short	1637
	.uaword	0
	.short	474
	.short	739
	.short	941
	.short	1289
	.uaword	0
	.short	474
	.short	739
	.short	593
	.short	941
	.uaword	0
	.short	210
	.short	474
	.short	2681
	.short	3029
	.uaword	0
	.short	210
	.short	474
	.short	2333
	.short	2681
	.uaword	0
	.short	210
	.short	474
	.short	1985
	.short	2333
	.uaword	0
	.short	210
	.short	474
	.short	1637
	.short	1985
	.uaword	0
	.short	210
	.short	474
	.short	1289
	.short	1637
	.uaword	0
	.short	210
	.short	474
	.short	941
	.short	1289
	.uaword	0
	.short	210
	.short	474
	.short	593
	.short	941
	.global	LcdInterface
.section .bss.LcdInterface,"aw",@nobits
	.type	LcdInterface, @object
	.size	LcdInterface, 1
LcdInterface:
	.zero	1
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB713
	.uaword	.LFE713-.LFB713
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB714
	.uaword	.LFE714-.LFB714
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB712
	.uaword	.LFE712-.LFB712
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB711
	.uaword	.LFE711-.LFB711
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB710
	.uaword	.LFE710-.LFB710
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB709
	.uaword	.LFE709-.LFB709
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB708
	.uaword	.LFE708-.LFB708
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB707
	.uaword	.LFE707-.LFB707
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB706
	.uaword	.LFE706-.LFB706
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB705
	.uaword	.LFE705-.LFB705
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB704
	.uaword	.LFE704-.LFB704
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB703
	.uaword	.LFE703-.LFB703
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB702
	.uaword	.LFE702-.LFB702
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB701
	.uaword	.LFE701-.LFB701
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB719
	.uaword	.LFE719-.LFB719
	.byte	0x4
	.uaword	.LCFI0-.LFB719
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB692
	.uaword	.LFE692-.LFB692
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB691
	.uaword	.LFE691-.LFB691
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB693
	.uaword	.LFE693-.LFB693
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB694
	.uaword	.LFE694-.LFB694
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB695
	.uaword	.LFE695-.LFB695
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB696
	.uaword	.LFE696-.LFB696
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB697
	.uaword	.LFE697-.LFB697
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB698
	.uaword	.LFE698-.LFB698
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB699
	.uaword	.LFE699-.LFB699
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB700
	.uaword	.LFE700-.LFB700
	.align 2
.LEFDE48:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h"
	.file 5 "0_Src/AppSw/Tricore/HLD/Lcd.h"
	.file 6 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_regdef.h"
	.file 9 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
	.file 10 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
	.file 11 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h"
	.file 12 "0_Src/AppSw/Tricore/HLD/BasicModules/Stm/Stm.h"
	.file 13 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/IMU/IMU.h"
	.file 14 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/Led.h"
	.file 15 "0_Src/AppSw/Tricore/HLD/LCD_graphic/UD_buttons.h"
	.file 16 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h"
	.file 17 "0_Src/AppSw/Tricore/HLD/LCD/glcd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3111
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/AppSw/Tricore/HLD/LcdInterface.c"
	.string	"C:\\\\Google drive\\\\RH_Workspace\\\\_AccumuatorManager_TC237"
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1b9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x1d8
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1f3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x175
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x181
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x234
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1b9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x287
	.uleb128 0x5
	.uaword	0x28c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29c
	.uleb128 0x7
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1e5
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0x77
	.uaword	0x2d7
	.uleb128 0x9
	.string	"module"
	.byte	0x3
	.byte	0x79
	.uaword	0x296
	.byte	0
	.uleb128 0x9
	.string	"index"
	.byte	0x3
	.byte	0x7a
	.uaword	0x209
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x7b
	.uaword	0x2b1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0xa
	.uaword	0x1b9
	.uaword	0x311
	.uleb128 0xb
	.uaword	0x311
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.uaword	0x1b9
	.uaword	0x32d
	.uleb128 0xb
	.uaword	0x311
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x4
	.byte	0x28
	.uaword	0x343
	.uleb128 0xc
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x4
	.byte	0x62
	.uaword	0x32d
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x30
	.uaword	0x383
	.uleb128 0x9
	.string	"x"
	.byte	0x5
	.byte	0x32
	.uaword	0x2f1
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0x5
	.byte	0x33
	.uaword	0x2f1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x2d
	.byte	0x5
	.byte	0x2e
	.uaword	0x427
	.uleb128 0x9
	.string	"touch"
	.byte	0x5
	.byte	0x34
	.uaword	0x366
	.byte	0
	.uleb128 0x9
	.string	"text"
	.byte	0x5
	.byte	0x36
	.uaword	0x427
	.byte	0x8
	.uleb128 0x9
	.string	"page"
	.byte	0x5
	.byte	0x37
	.uaword	0x1ac
	.byte	0x28
	.uleb128 0x9
	.string	"lastPage"
	.byte	0x5
	.byte	0x38
	.uaword	0x437
	.byte	0x29
	.uleb128 0x9
	.string	"arrayPage"
	.byte	0x5
	.byte	0x39
	.uaword	0x1ac
	.byte	0x2a
	.uleb128 0x9
	.string	"arrayLastPage"
	.byte	0x5
	.byte	0x3a
	.uaword	0x437
	.byte	0x2b
	.uleb128 0xd
	.string	"array"
	.byte	0x5
	.byte	0x3c
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2c
	.uleb128 0xd
	.string	"isRun"
	.byte	0x5
	.byte	0x3d
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2c
	.uleb128 0xd
	.string	"arrayEnabled"
	.byte	0x5
	.byte	0x3e
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2c
	.byte	0
	.uleb128 0xa
	.uaword	0x28c
	.uaword	0x437
	.uleb128 0xb
	.uaword	0x311
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.uaword	0x1ac
	.uleb128 0x3
	.string	"Lcd_t"
	.byte	0x5
	.byte	0x40
	.uaword	0x383
	.uleb128 0x8
	.byte	0xc
	.byte	0x5
	.byte	0x4d
	.uaword	0x494
	.uleb128 0x9
	.string	"accum"
	.byte	0x5
	.byte	0x4f
	.uaword	0x217
	.byte	0
	.uleb128 0x9
	.string	"xmin"
	.byte	0x5
	.byte	0x50
	.uaword	0x494
	.byte	0x4
	.uleb128 0x9
	.string	"xmax"
	.byte	0x5
	.byte	0x51
	.uaword	0x494
	.byte	0x6
	.uleb128 0x9
	.string	"ymin"
	.byte	0x5
	.byte	0x52
	.uaword	0x494
	.byte	0x8
	.uleb128 0x9
	.string	"ymax"
	.byte	0x5
	.byte	0x53
	.uaword	0x494
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.uaword	0x1e5
	.uleb128 0x3
	.string	"TouchButton_t"
	.byte	0x5
	.byte	0x54
	.uaword	0x449
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.byte	0x32
	.uaword	0x4da
	.uleb128 0xf
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxSrc_Tos_dma"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x6
	.byte	0x35
	.uaword	0x4ae
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.byte	0x74
	.uaword	0x51a
	.uleb128 0xf
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxCpu_Index_none"
	.sleb128 1
	.byte	0
	.uleb128 0x10
	.string	"_Ifx_STM_ACCEN0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x72e
	.uleb128 0xd
	.string	"EN0"
	.byte	0x8
	.byte	0x2f
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x8
	.byte	0x30
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0x8
	.byte	0x31
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0x8
	.byte	0x32
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0x8
	.byte	0x33
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0x8
	.byte	0x34
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0x8
	.byte	0x35
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0x8
	.byte	0x36
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0x8
	.byte	0x37
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0x8
	.byte	0x38
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0x8
	.byte	0x39
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0x8
	.byte	0x3a
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0x8
	.byte	0x3b
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0x8
	.byte	0x3c
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0x8
	.byte	0x3d
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0x8
	.byte	0x3e
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EN16"
	.byte	0x8
	.byte	0x3f
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"EN17"
	.byte	0x8
	.byte	0x40
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"EN18"
	.byte	0x8
	.byte	0x41
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"EN19"
	.byte	0x8
	.byte	0x42
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"EN20"
	.byte	0x8
	.byte	0x43
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"EN21"
	.byte	0x8
	.byte	0x44
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"EN22"
	.byte	0x8
	.byte	0x45
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"EN23"
	.byte	0x8
	.byte	0x46
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EN24"
	.byte	0x8
	.byte	0x47
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"EN25"
	.byte	0x8
	.byte	0x48
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"EN26"
	.byte	0x8
	.byte	0x49
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"EN27"
	.byte	0x8
	.byte	0x4a
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EN28"
	.byte	0x8
	.byte	0x4b
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"EN29"
	.byte	0x8
	.byte	0x4c
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"EN30"
	.byte	0x8
	.byte	0x4d
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"EN31"
	.byte	0x8
	.byte	0x4e
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0_Bits"
	.byte	0x8
	.byte	0x4f
	.uaword	0x51a
	.uleb128 0x10
	.string	"_Ifx_STM_ACCEN1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x52
	.uaword	0x776
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x8
	.byte	0x54
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN1_Bits"
	.byte	0x8
	.byte	0x55
	.uaword	0x749
	.uleb128 0x10
	.string	"_Ifx_STM_CAP_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.uaword	0x7bb
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x5a
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAP_Bits"
	.byte	0x8
	.byte	0x5b
	.uaword	0x791
	.uleb128 0x10
	.string	"_Ifx_STM_CAPSV_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x5e
	.uaword	0x7ff
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.byte	0x60
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAPSV_Bits"
	.byte	0x8
	.byte	0x61
	.uaword	0x7d3
	.uleb128 0x10
	.string	"_Ifx_STM_CLC_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x64
	.uaword	0x882
	.uleb128 0xd
	.string	"DISR"
	.byte	0x8
	.byte	0x66
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"DISS"
	.byte	0x8
	.byte	0x67
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0x68
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EDIS"
	.byte	0x8
	.byte	0x69
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x8
	.byte	0x6a
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CLC_Bits"
	.byte	0x8
	.byte	0x6b
	.uaword	0x819
	.uleb128 0x10
	.string	"_Ifx_STM_CMCON_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x6e
	.uaword	0x95c
	.uleb128 0xd
	.string	"MSIZE0"
	.byte	0x8
	.byte	0x70
	.uaword	0x2f1
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"reserved_5"
	.byte	0x8
	.byte	0x71
	.uaword	0x2f1
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"MSTART0"
	.byte	0x8
	.byte	0x72
	.uaword	0x2f1
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"reserved_13"
	.byte	0x8
	.byte	0x73
	.uaword	0x2f1
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"MSIZE1"
	.byte	0x8
	.byte	0x74
	.uaword	0x2f1
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"reserved_21"
	.byte	0x8
	.byte	0x75
	.uaword	0x2f1
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"MSTART1"
	.byte	0x8
	.byte	0x76
	.uaword	0x2f1
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"reserved_29"
	.byte	0x8
	.byte	0x77
	.uaword	0x2f1
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMCON_Bits"
	.byte	0x8
	.byte	0x78
	.uaword	0x89a
	.uleb128 0x10
	.string	"_Ifx_STM_CMP_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x7b
	.uaword	0x9a3
	.uleb128 0xd
	.string	"CMPVAL"
	.byte	0x8
	.byte	0x7d
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMP_Bits"
	.byte	0x8
	.byte	0x7e
	.uaword	0x976
	.uleb128 0x10
	.string	"_Ifx_STM_ICR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x81
	.uaword	0xa6e
	.uleb128 0xd
	.string	"CMP0EN"
	.byte	0x8
	.byte	0x83
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"CMP0IR"
	.byte	0x8
	.byte	0x84
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"CMP0OS"
	.byte	0x8
	.byte	0x85
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"reserved_3"
	.byte	0x8
	.byte	0x86
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"CMP1EN"
	.byte	0x8
	.byte	0x87
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"CMP1IR"
	.byte	0x8
	.byte	0x88
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"CMP1OS"
	.byte	0x8
	.byte	0x89
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"reserved_7"
	.byte	0x8
	.byte	0x8a
	.uaword	0x2f1
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ICR_Bits"
	.byte	0x8
	.byte	0x8b
	.uaword	0x9bb
	.uleb128 0x10
	.string	"_Ifx_STM_ID_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x8e
	.uaword	0xada
	.uleb128 0xd
	.string	"MODREV"
	.byte	0x8
	.byte	0x90
	.uaword	0x2f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0x8
	.byte	0x91
	.uaword	0x2f1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"MODNUMBER"
	.byte	0x8
	.byte	0x92
	.uaword	0x2f1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ID_Bits"
	.byte	0x8
	.byte	0x93
	.uaword	0xa86
	.uleb128 0x10
	.string	"_Ifx_STM_ISCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x96
	.uaword	0xb68
	.uleb128 0xd
	.string	"CMP0IRR"
	.byte	0x8
	.byte	0x98
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"CMP0IRS"
	.byte	0x8
	.byte	0x99
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"CMP1IRR"
	.byte	0x8
	.byte	0x9a
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"CMP1IRS"
	.byte	0x8
	.byte	0x9b
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x8
	.byte	0x9c
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ISCR_Bits"
	.byte	0x8
	.byte	0x9d
	.uaword	0xaf1
	.uleb128 0x10
	.string	"_Ifx_STM_KRST0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa0
	.uaword	0xbcf
	.uleb128 0xd
	.string	"RST"
	.byte	0x8
	.byte	0xa2
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"RSTSTAT"
	.byte	0x8
	.byte	0xa3
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.byte	0xa4
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST0_Bits"
	.byte	0x8
	.byte	0xa5
	.uaword	0xb81
	.uleb128 0x10
	.string	"_Ifx_STM_KRST1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa8
	.uaword	0xc24
	.uleb128 0xd
	.string	"RST"
	.byte	0x8
	.byte	0xaa
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xab
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST1_Bits"
	.byte	0x8
	.byte	0xac
	.uaword	0xbe9
	.uleb128 0x10
	.string	"_Ifx_STM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xaf
	.uaword	0xc7b
	.uleb128 0xd
	.string	"CLR"
	.byte	0x8
	.byte	0xb1
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.byte	0xb2
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRSTCLR_Bits"
	.byte	0x8
	.byte	0xb3
	.uaword	0xc3e
	.uleb128 0x10
	.string	"_Ifx_STM_OCS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb6
	.uaword	0xd0a
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x8
	.byte	0xb8
	.uaword	0x2f1
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SUS"
	.byte	0x8
	.byte	0xb9
	.uaword	0x2f1
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"SUS_P"
	.byte	0x8
	.byte	0xba
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"SUSSTA"
	.byte	0x8
	.byte	0xbb
	.uaword	0x2f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"reserved_30"
	.byte	0x8
	.byte	0xbc
	.uaword	0x2f1
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_OCS_Bits"
	.byte	0x8
	.byte	0xbd
	.uaword	0xc97
	.uleb128 0x10
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc0
	.uaword	0xd51
	.uleb128 0xd
	.string	"STM31_0"
	.byte	0x8
	.byte	0xc2
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x8
	.byte	0xc3
	.uaword	0xd22
	.uleb128 0x10
	.string	"_Ifx_STM_TIM0SV_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc6
	.uaword	0xd9b
	.uleb128 0xd
	.string	"STM31_0"
	.byte	0x8
	.byte	0xc8
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0SV_Bits"
	.byte	0x8
	.byte	0xc9
	.uaword	0xd6a
	.uleb128 0x10
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xcc
	.uaword	0xde5
	.uleb128 0xd
	.string	"STM35_4"
	.byte	0x8
	.byte	0xce
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0x8
	.byte	0xcf
	.uaword	0xdb6
	.uleb128 0x10
	.string	"_Ifx_STM_TIM2_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd2
	.uaword	0xe2d
	.uleb128 0xd
	.string	"STM39_8"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM2_Bits"
	.byte	0x8
	.byte	0xd5
	.uaword	0xdfe
	.uleb128 0x10
	.string	"_Ifx_STM_TIM3_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd8
	.uaword	0xe76
	.uleb128 0xd
	.string	"STM43_12"
	.byte	0x8
	.byte	0xda
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM3_Bits"
	.byte	0x8
	.byte	0xdb
	.uaword	0xe46
	.uleb128 0x10
	.string	"_Ifx_STM_TIM4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xde
	.uaword	0xebf
	.uleb128 0xd
	.string	"STM47_16"
	.byte	0x8
	.byte	0xe0
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM4_Bits"
	.byte	0x8
	.byte	0xe1
	.uaword	0xe8f
	.uleb128 0x10
	.string	"_Ifx_STM_TIM5_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xe4
	.uaword	0xf08
	.uleb128 0xd
	.string	"STM51_20"
	.byte	0x8
	.byte	0xe6
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM5_Bits"
	.byte	0x8
	.byte	0xe7
	.uaword	0xed8
	.uleb128 0x10
	.string	"_Ifx_STM_TIM6_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xea
	.uaword	0xf51
	.uleb128 0xd
	.string	"STM63_32"
	.byte	0x8
	.byte	0xec
	.uaword	0x2f1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM6_Bits"
	.byte	0x8
	.byte	0xed
	.uaword	0xf21
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.byte	0xf5
	.uaword	0xf8e
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.byte	0xf7
	.uaword	0x2f1
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.byte	0xf8
	.uaword	0x196
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.byte	0xf9
	.uaword	0x72e
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0"
	.byte	0x8
	.byte	0xfa
	.uaword	0xf6a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.byte	0xfd
	.uaword	0xfca
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.byte	0xff
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x776
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_ACCEN1"
	.byte	0x8
	.uahalf	0x102
	.uaword	0xfa4
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x105
	.uaword	0x1009
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x107
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x108
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x109
	.uaword	0x7bb
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_CAP"
	.byte	0x8
	.uahalf	0x10a
	.uaword	0xfe1
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x1045
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x7ff
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_CAPSV"
	.byte	0x8
	.uahalf	0x112
	.uaword	0x101d
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1083
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x119
	.uaword	0x882
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_CLC"
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x105b
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x10bf
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x95c
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_CMCON"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x1097
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x125
	.uaword	0x10fd
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x128
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x129
	.uaword	0x9a3
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_CMP"
	.byte	0x8
	.uahalf	0x12a
	.uaword	0x10d5
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x1139
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x131
	.uaword	0xa6e
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_ICR"
	.byte	0x8
	.uahalf	0x132
	.uaword	0x1111
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x135
	.uaword	0x1175
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x139
	.uaword	0xada
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_ID"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x114d
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x11b0
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x141
	.uaword	0xb68
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_ISCR"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x1188
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x145
	.uaword	0x11ed
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x149
	.uaword	0xbcf
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_KRST0"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x11c5
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x14d
	.uaword	0x122b
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x150
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x151
	.uaword	0xc24
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_KRST1"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x1203
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x155
	.uaword	0x1269
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x158
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x159
	.uaword	0xc7b
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_KRSTCLR"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x1241
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x12a9
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x161
	.uaword	0xd0a
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_OCS"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x1281
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x165
	.uaword	0x12e5
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x169
	.uaword	0xd51
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM0"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x12bd
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x1322
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x170
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x171
	.uaword	0xd9b
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM0SV"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x12fa
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x175
	.uaword	0x1361
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x177
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x179
	.uaword	0xde5
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM1"
	.byte	0x8
	.uahalf	0x17a
	.uaword	0x1339
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x139e
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x181
	.uaword	0xe2d
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM2"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x1376
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x185
	.uaword	0x13db
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x188
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x189
	.uaword	0xe76
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM3"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x13b3
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x1418
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x191
	.uaword	0xebf
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM4"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x13f0
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x195
	.uaword	0x1455
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x199
	.uaword	0xf08
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM5"
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x142d
	.uleb128 0x16
	.byte	0x4
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x1492
	.uleb128 0x14
	.string	"U"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x2f1
	.uleb128 0x14
	.string	"I"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x196
	.uleb128 0x14
	.string	"B"
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0xf51
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM_TIM6"
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x146a
	.uleb128 0x17
	.string	"_Ifx_STM"
	.uahalf	0x100
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x1640
	.uleb128 0x18
	.string	"CLC"
	.byte	0x8
	.uahalf	0x1af
	.uaword	0x1083
	.byte	0
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x301
	.byte	0x4
	.uleb128 0x18
	.string	"ID"
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x1175
	.byte	0x8
	.uleb128 0x18
	.string	"reserved_C"
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x301
	.byte	0xc
	.uleb128 0x18
	.string	"TIM0"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x12e5
	.byte	0x10
	.uleb128 0x18
	.string	"TIM1"
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x1361
	.byte	0x14
	.uleb128 0x18
	.string	"TIM2"
	.byte	0x8
	.uahalf	0x1b5
	.uaword	0x139e
	.byte	0x18
	.uleb128 0x18
	.string	"TIM3"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x13db
	.byte	0x1c
	.uleb128 0x18
	.string	"TIM4"
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x1418
	.byte	0x20
	.uleb128 0x18
	.string	"TIM5"
	.byte	0x8
	.uahalf	0x1b8
	.uaword	0x1455
	.byte	0x24
	.uleb128 0x18
	.string	"TIM6"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x1492
	.byte	0x28
	.uleb128 0x18
	.string	"CAP"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x1009
	.byte	0x2c
	.uleb128 0x18
	.string	"CMP"
	.byte	0x8
	.uahalf	0x1bb
	.uaword	0x1640
	.byte	0x30
	.uleb128 0x18
	.string	"CMCON"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x10bf
	.byte	0x38
	.uleb128 0x18
	.string	"ICR"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x1139
	.byte	0x3c
	.uleb128 0x18
	.string	"ISCR"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x11b0
	.byte	0x40
	.uleb128 0x18
	.string	"reserved_44"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x31d
	.byte	0x44
	.uleb128 0x18
	.string	"TIM0SV"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x1322
	.byte	0x50
	.uleb128 0x18
	.string	"CAPSV"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x1045
	.byte	0x54
	.uleb128 0x18
	.string	"reserved_58"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x1650
	.byte	0x58
	.uleb128 0x18
	.string	"OCS"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x12a9
	.byte	0xe8
	.uleb128 0x18
	.string	"KRSTCLR"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x1269
	.byte	0xec
	.uleb128 0x18
	.string	"KRST1"
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x122b
	.byte	0xf0
	.uleb128 0x18
	.string	"KRST0"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x11ed
	.byte	0xf4
	.uleb128 0x18
	.string	"ACCEN1"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0xfca
	.byte	0xf8
	.uleb128 0x18
	.string	"ACCEN0"
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0xf8e
	.byte	0xfc
	.byte	0
	.uleb128 0xa
	.uaword	0x10fd
	.uaword	0x1650
	.uleb128 0xb
	.uaword	0x311
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.uaword	0x1b9
	.uaword	0x1660
	.uleb128 0xb
	.uaword	0x311
	.byte	0x8f
	.byte	0
	.uleb128 0x15
	.string	"Ifx_STM"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x1670
	.uleb128 0x1a
	.uaword	0x14a7
	.uleb128 0x3
	.string	"IfxCpu_mutexLock"
	.byte	0x9
	.byte	0x62
	.uaword	0x2f1
	.uleb128 0xe
	.byte	0x1
	.byte	0xa
	.byte	0x84
	.uaword	0x16c2
	.uleb128 0xf
	.string	"IfxStm_Comparator_0"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxStm_Comparator_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_Comparator"
	.byte	0xa
	.byte	0x87
	.uaword	0x168d
	.uleb128 0xe
	.byte	0x1
	.byte	0xa
	.byte	0x8c
	.uaword	0x1726
	.uleb128 0xf
	.string	"IfxStm_ComparatorInterrupt_ir0"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxStm_ComparatorInterrupt_ir1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorInterrupt"
	.byte	0xa
	.byte	0x8f
	.uaword	0x16db
	.uleb128 0xe
	.byte	0x1
	.byte	0xa
	.byte	0x94
	.uaword	0x1ae7
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_0"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_1"
	.sleb128 1
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_2"
	.sleb128 2
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_3"
	.sleb128 3
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_4"
	.sleb128 4
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_5"
	.sleb128 5
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_6"
	.sleb128 6
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_7"
	.sleb128 7
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_8"
	.sleb128 8
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_9"
	.sleb128 9
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_10"
	.sleb128 10
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_11"
	.sleb128 11
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_12"
	.sleb128 12
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_13"
	.sleb128 13
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_14"
	.sleb128 14
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_15"
	.sleb128 15
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_16"
	.sleb128 16
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_17"
	.sleb128 17
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_18"
	.sleb128 18
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_19"
	.sleb128 19
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_20"
	.sleb128 20
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_21"
	.sleb128 21
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_22"
	.sleb128 22
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_23"
	.sleb128 23
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_24"
	.sleb128 24
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_25"
	.sleb128 25
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_26"
	.sleb128 26
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_27"
	.sleb128 27
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_28"
	.sleb128 28
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_29"
	.sleb128 29
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_30"
	.sleb128 30
	.uleb128 0xf
	.string	"IfxStm_ComparatorOffset_31"
	.sleb128 31
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorOffset"
	.byte	0xa
	.byte	0xb5
	.uaword	0x1748
	.uleb128 0xe
	.byte	0x1
	.byte	0xa
	.byte	0xba
	.uaword	0x1ee5
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_1Bit"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_2Bits"
	.sleb128 1
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_3Bits"
	.sleb128 2
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_4Bits"
	.sleb128 3
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_5Bits"
	.sleb128 4
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_6Bits"
	.sleb128 5
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_7Bits"
	.sleb128 6
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_8Bits"
	.sleb128 7
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_9Bits"
	.sleb128 8
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_10Bits"
	.sleb128 9
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_11Bits"
	.sleb128 10
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_12Bits"
	.sleb128 11
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_13Bits"
	.sleb128 12
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_14Bits"
	.sleb128 13
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_15Bits"
	.sleb128 14
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_16Bits"
	.sleb128 15
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_17Bits"
	.sleb128 16
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_18Bits"
	.sleb128 17
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_19Bits"
	.sleb128 18
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_20Bits"
	.sleb128 19
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_21Bits"
	.sleb128 20
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_22Bits"
	.sleb128 21
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_23Bits"
	.sleb128 22
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_24Bits"
	.sleb128 23
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_25Bits"
	.sleb128 24
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_26Bits"
	.sleb128 25
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_27Bits"
	.sleb128 26
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_28Bits"
	.sleb128 27
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_29Bits"
	.sleb128 28
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_30Bits"
	.sleb128 29
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_31Bits"
	.sleb128 30
	.uleb128 0xf
	.string	"IfxStm_ComparatorSize_32Bits"
	.sleb128 31
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorSize"
	.byte	0xa
	.byte	0xdb
	.uaword	0x1b06
	.uleb128 0x8
	.byte	0xc
	.byte	0xa
	.byte	0xf9
	.uaword	0x1fa2
	.uleb128 0x9
	.string	"comparator"
	.byte	0xa
	.byte	0xfb
	.uaword	0x16c2
	.byte	0
	.uleb128 0x9
	.string	"comparatorInterrupt"
	.byte	0xa
	.byte	0xfc
	.uaword	0x1726
	.byte	0x1
	.uleb128 0x9
	.string	"compareOffset"
	.byte	0xa
	.byte	0xfd
	.uaword	0x1ae7
	.byte	0x2
	.uleb128 0x9
	.string	"compareSize"
	.byte	0xa
	.byte	0xfe
	.uaword	0x1ee5
	.byte	0x3
	.uleb128 0x9
	.string	"ticks"
	.byte	0xa
	.byte	0xff
	.uaword	0x217
	.byte	0x4
	.uleb128 0x18
	.string	"triggerPriority"
	.byte	0xa
	.uahalf	0x100
	.uaword	0x29d
	.byte	0x8
	.uleb128 0x18
	.string	"typeOfService"
	.byte	0xa
	.uahalf	0x101
	.uaword	0x4da
	.byte	0xa
	.byte	0
	.uleb128 0x15
	.string	"IfxStm_CompareConfig"
	.byte	0xa
	.uahalf	0x102
	.uaword	0x1f02
	.uleb128 0xe
	.byte	0x1
	.byte	0xb
	.byte	0x1e
	.uaword	0x2032
	.uleb128 0xf
	.string	"end"
	.sleb128 0
	.uleb128 0xf
	.string	"repeat"
	.sleb128 1
	.uleb128 0xf
	.string	"note_whole"
	.sleb128 2
	.uleb128 0xf
	.string	"note_half"
	.sleb128 3
	.uleb128 0xf
	.string	"note_quarter"
	.sleb128 4
	.uleb128 0xf
	.string	"note_eighth"
	.sleb128 5
	.uleb128 0xf
	.string	"note_sixteenth"
	.sleb128 6
	.uleb128 0xf
	.string	"note_thirtysecond"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"noteBeat_t"
	.byte	0xb
	.byte	0x27
	.uaword	0x1fbf
	.uleb128 0xe
	.byte	0x1
	.byte	0xb
	.byte	0x2a
	.uaword	0x2143
	.uleb128 0xf
	.string	"rest"
	.sleb128 0
	.uleb128 0xf
	.string	"note_C5"
	.sleb128 1
	.uleb128 0xf
	.string	"note_Cs5"
	.sleb128 2
	.uleb128 0xf
	.string	"note_D5"
	.sleb128 3
	.uleb128 0xf
	.string	"note_Ds5"
	.sleb128 4
	.uleb128 0xf
	.string	"note_E5"
	.sleb128 5
	.uleb128 0xf
	.string	"note_F5"
	.sleb128 6
	.uleb128 0xf
	.string	"note_Fs5"
	.sleb128 7
	.uleb128 0xf
	.string	"note_G5"
	.sleb128 8
	.uleb128 0xf
	.string	"note_Gs5"
	.sleb128 9
	.uleb128 0xf
	.string	"note_A5"
	.sleb128 10
	.uleb128 0xf
	.string	"note_As5"
	.sleb128 11
	.uleb128 0xf
	.string	"note_B5"
	.sleb128 12
	.uleb128 0xf
	.string	"note_C6"
	.sleb128 13
	.uleb128 0xf
	.string	"note_Cs6"
	.sleb128 14
	.uleb128 0xf
	.string	"note_D6"
	.sleb128 15
	.uleb128 0xf
	.string	"note_Ds6"
	.sleb128 16
	.uleb128 0xf
	.string	"note_E6"
	.sleb128 17
	.uleb128 0xf
	.string	"note_F6"
	.sleb128 18
	.uleb128 0xf
	.string	"note_Fs6"
	.sleb128 19
	.uleb128 0xf
	.string	"note_G6"
	.sleb128 20
	.uleb128 0xf
	.string	"note_Gs6"
	.sleb128 21
	.uleb128 0xf
	.string	"note_A6"
	.sleb128 22
	.uleb128 0xf
	.string	"note_C7"
	.sleb128 23
	.byte	0
	.uleb128 0x3
	.string	"notePitch_t"
	.byte	0xb
	.byte	0x2e
	.uaword	0x2044
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.byte	0x34
	.uaword	0x2185
	.uleb128 0x9
	.string	"beat"
	.byte	0xb
	.byte	0x36
	.uaword	0x2032
	.byte	0
	.uleb128 0x9
	.string	"note"
	.byte	0xb
	.byte	0x37
	.uaword	0x2143
	.byte	0x1
	.uleb128 0x9
	.string	"tie"
	.byte	0xb
	.byte	0x38
	.uaword	0x247
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"note_t"
	.byte	0xb
	.byte	0x39
	.uaword	0x2156
	.uleb128 0x1a
	.uaword	0x247
	.uleb128 0x4
	.byte	0x4
	.uaword	0x219e
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28c
	.uleb128 0x8
	.byte	0x1
	.byte	0xc
	.byte	0x31
	.uaword	0x21f6
	.uleb128 0xd
	.string	"Led107"
	.byte	0xc
	.byte	0x33
	.uaword	0x2193
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"Led108"
	.byte	0xc
	.byte	0x34
	.uaword	0x2193
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"Led109"
	.byte	0xc
	.byte	0x35
	.uaword	0x2193
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"Led110"
	.byte	0xc
	.byte	0x36
	.uaword	0x2193
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.byte	0xc
	.byte	0x27
	.uaword	0x2211
	.uleb128 0x13
	.string	"U"
	.byte	0xc
	.byte	0x30
	.uaword	0x1ac
	.uleb128 0x13
	.string	"B"
	.byte	0xc
	.byte	0x37
	.uaword	0x21a5
	.byte	0
	.uleb128 0x3
	.string	"Stm_LedState"
	.byte	0xc
	.byte	0x39
	.uaword	0x21f6
	.uleb128 0x8
	.byte	0x18
	.byte	0xc
	.byte	0x3b
	.uaword	0x2270
	.uleb128 0x9
	.string	"stmSfr"
	.byte	0xc
	.byte	0x3d
	.uaword	0x2270
	.byte	0
	.uleb128 0x9
	.string	"stmConfig"
	.byte	0xc
	.byte	0x3e
	.uaword	0x1fa2
	.byte	0x4
	.uleb128 0x9
	.string	"LedState"
	.byte	0xc
	.byte	0x3f
	.uaword	0x2211
	.byte	0x10
	.uleb128 0x9
	.string	"counter"
	.byte	0xc
	.byte	0x40
	.uaword	0x2276
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1660
	.uleb128 0x1a
	.uaword	0x209
	.uleb128 0x3
	.string	"Stm_data"
	.byte	0xc
	.byte	0x41
	.uaword	0x2225
	.uleb128 0x8
	.byte	0x1c
	.byte	0xd
	.byte	0x22
	.uaword	0x22fe
	.uleb128 0x9
	.string	"Gyro_x"
	.byte	0xd
	.byte	0x24
	.uaword	0x225
	.byte	0
	.uleb128 0x9
	.string	"Gyro_y"
	.byte	0xd
	.byte	0x25
	.uaword	0x225
	.byte	0x4
	.uleb128 0x9
	.string	"Gyro_z"
	.byte	0xd
	.byte	0x26
	.uaword	0x225
	.byte	0x8
	.uleb128 0x9
	.string	"Accel_x"
	.byte	0xd
	.byte	0x28
	.uaword	0x225
	.byte	0xc
	.uleb128 0x9
	.string	"Accel_y"
	.byte	0xd
	.byte	0x29
	.uaword	0x225
	.byte	0x10
	.uleb128 0x9
	.string	"Accel_z"
	.byte	0xd
	.byte	0x2a
	.uaword	0x225
	.byte	0x14
	.uleb128 0x9
	.string	"isOk"
	.byte	0xd
	.byte	0x2c
	.uaword	0x247
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"HLD_Imu_data_t"
	.byte	0xd
	.byte	0x2d
	.uaword	0x228b
	.uleb128 0x8
	.byte	0x20
	.byte	0xd
	.byte	0x42
	.uaword	0x2338
	.uleb128 0x9
	.string	"mutex"
	.byte	0xd
	.byte	0x44
	.uaword	0x1675
	.byte	0
	.uleb128 0x9
	.string	"data"
	.byte	0xd
	.byte	0x45
	.uaword	0x22fe
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0xe
	.byte	0xd
	.byte	0x48
	.uaword	0x23ad
	.uleb128 0x9
	.string	"Gyro_x"
	.byte	0xd
	.byte	0x4b
	.uaword	0x1ca
	.byte	0
	.uleb128 0x9
	.string	"Gyro_y"
	.byte	0xd
	.byte	0x4c
	.uaword	0x1ca
	.byte	0x2
	.uleb128 0x9
	.string	"Gyro_z"
	.byte	0xd
	.byte	0x4d
	.uaword	0x1ca
	.byte	0x4
	.uleb128 0x9
	.string	"Accel_x"
	.byte	0xd
	.byte	0x4f
	.uaword	0x1ca
	.byte	0x6
	.uleb128 0x9
	.string	"Accel_y"
	.byte	0xd
	.byte	0x50
	.uaword	0x1ca
	.byte	0x8
	.uleb128 0x9
	.string	"Accel_z"
	.byte	0xd
	.byte	0x51
	.uaword	0x1ca
	.byte	0xa
	.uleb128 0x9
	.string	"WhoAmI"
	.byte	0xd
	.byte	0x53
	.uaword	0x1e5
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4c
	.byte	0xd
	.byte	0x30
	.uaword	0x23de
	.uleb128 0x9
	.string	"data"
	.byte	0xd
	.byte	0x41
	.uaword	0x22fe
	.byte	0
	.uleb128 0x9
	.string	"shared"
	.byte	0xd
	.byte	0x46
	.uaword	0x2314
	.byte	0x1c
	.uleb128 0x9
	.string	"MPU"
	.byte	0xd
	.byte	0x54
	.uaword	0x2338
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.string	"HLD_Imu_t"
	.byte	0xd
	.byte	0x57
	.uaword	0x23ad
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x34
	.uaword	0x2492
	.uleb128 0xd
	.string	"Button0set"
	.byte	0x1
	.byte	0x36
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"Button1set"
	.byte	0x1
	.byte	0x37
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"Button2set"
	.byte	0x1
	.byte	0x38
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"Button3set"
	.byte	0x1
	.byte	0x39
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"Button4set"
	.byte	0x1
	.byte	0x3a
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"Button5set"
	.byte	0x1
	.byte	0x3b
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"Button6set"
	.byte	0x1
	.byte	0x3c
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"LcdInterface_t"
	.byte	0x1
	.byte	0x3d
	.uaword	0x23ef
	.uleb128 0x8
	.byte	0x20
	.byte	0x1
	.byte	0x3e
	.uaword	0x2519
	.uleb128 0x9
	.string	"inc0"
	.byte	0x1
	.byte	0x40
	.uaword	0x225
	.byte	0
	.uleb128 0x9
	.string	"inc1"
	.byte	0x1
	.byte	0x41
	.uaword	0x225
	.byte	0x4
	.uleb128 0x9
	.string	"inc2"
	.byte	0x1
	.byte	0x42
	.uaword	0x225
	.byte	0x8
	.uleb128 0x9
	.string	"inc3"
	.byte	0x1
	.byte	0x43
	.uaword	0x225
	.byte	0xc
	.uleb128 0x9
	.string	"inc4"
	.byte	0x1
	.byte	0x44
	.uaword	0x225
	.byte	0x10
	.uleb128 0x9
	.string	"inc5"
	.byte	0x1
	.byte	0x45
	.uaword	0x225
	.byte	0x14
	.uleb128 0x9
	.string	"inc6"
	.byte	0x1
	.byte	0x46
	.uaword	0x225
	.byte	0x18
	.uleb128 0x9
	.string	"inc7"
	.byte	0x1
	.byte	0x47
	.uaword	0x225
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.string	"LcdInterface_Increment"
	.byte	0x1
	.byte	0x48
	.uaword	0x24a8
	.uleb128 0x1c
	.string	"HLD_LcdInterface_doButton"
	.byte	0x1
	.uahalf	0x1c8
	.byte	0x1
	.byte	0x1
	.uaword	0x25a4
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1ac
	.uleb128 0x1e
	.string	"fmt"
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x281
	.uleb128 0x1f
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x196
	.uleb128 0x20
	.string	"ap"
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x357
	.uleb128 0x20
	.string	"up"
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x25ab
	.uleb128 0x20
	.string	"down"
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0x25ab
	.byte	0
	.uleb128 0x21
	.uaword	0x25ab
	.uleb128 0x1f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25a4
	.uleb128 0x22
	.string	"HLD_LcdInterface_doButton6Up"
	.byte	0x1
	.uahalf	0x176
	.byte	0x1
	.uaword	.LFB713
	.uaword	.LFE713
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x22
	.string	"HLD_LcdInterface_doButton6Down"
	.byte	0x1
	.uahalf	0x198
	.byte	0x1
	.uaword	.LFB714
	.uaword	.LFE714
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton5Down"
	.byte	0x1
	.uahalf	0x171
	.byte	0x1
	.uaword	.LFB712
	.uaword	.LFE712
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x264b
	.uleb128 0x24
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton5Up"
	.byte	0x1
	.uahalf	0x16d
	.byte	0x1
	.uaword	.LFB711
	.uaword	.LFE711
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2687
	.uleb128 0x24
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton4Down"
	.byte	0x1
	.uahalf	0x168
	.byte	0x1
	.uaword	.LFB710
	.uaword	.LFE710
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x26c5
	.uleb128 0x24
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton4Up"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.uaword	.LFB709
	.uaword	.LFE709
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2701
	.uleb128 0x24
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton3Down"
	.byte	0x1
	.uahalf	0x15f
	.byte	0x1
	.uaword	.LFB708
	.uaword	.LFE708
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x273f
	.uleb128 0x24
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton3Up"
	.byte	0x1
	.uahalf	0x15b
	.byte	0x1
	.uaword	.LFB707
	.uaword	.LFE707
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x277b
	.uleb128 0x24
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton2Down"
	.byte	0x1
	.uahalf	0x156
	.byte	0x1
	.uaword	.LFB706
	.uaword	.LFE706
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x27b9
	.uleb128 0x24
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton2Up"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	.LFB705
	.uaword	.LFE705
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x27f5
	.uleb128 0x24
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton1Down"
	.byte	0x1
	.uahalf	0x14d
	.byte	0x1
	.uaword	.LFB704
	.uaword	.LFE704
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2833
	.uleb128 0x24
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton1Up"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.uaword	.LFB703
	.uaword	.LFE703
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x286f
	.uleb128 0x24
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton0Down"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB702
	.uaword	.LFE702
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x28ad
	.uleb128 0x24
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x23
	.string	"HLD_LcdInterface_doButton0Up"
	.byte	0x1
	.uahalf	0x13e
	.byte	0x1
	.uaword	.LFB701
	.uaword	.LFE701
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x28e9
	.uleb128 0x24
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x25
	.uaword	0x2537
	.uaword	.LFB719
	.uaword	.LFE719
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x299f
	.uleb128 0x26
	.uaword	0x255b
	.uaword	.LLST0
	.uleb128 0x1f
	.uleb128 0x27
	.uaword	0x2574
	.uleb128 0x28
	.uaword	0x2580
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x29
	.uaword	0x258b
	.uaword	.LLST1
	.uleb128 0x29
	.uaword	0x2596
	.uaword	.LLST2
	.uleb128 0x2a
	.uaword	0x2567
	.byte	0x6
	.byte	0x3
	.uaword	.LC0
	.byte	0x9f
	.uleb128 0x2b
	.uaword	.LVL14
	.uaword	0x301e
	.uaword	0x2949
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL15
	.uaword	0x301e
	.uaword	0x2960
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL17
	.uaword	0x304a
	.uaword	0x297d
	.uleb128 0x2c
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x3071
	.uleb128 0x2c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x31
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"HLD_LcdInterface_setPage"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.uaword	.LFB692
	.uaword	.LFE692
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2a1a
	.uleb128 0x2b
	.uaword	.LVL24
	.uaword	0x30a4
	.uaword	0x29e1
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x7bef
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL25
	.uaword	0x30c6
	.uaword	0x29f5
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL26
	.uaword	0x30a4
	.uaword	0x2a09
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL27
	.byte	0x1
	.uaword	0x30c6
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"HLD_LcdInterface_setButton"
	.byte	0x1
	.uahalf	0x204
	.byte	0x1
	.byte	0x1
	.uaword	0x2a4c
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x204
	.uaword	0x1ac
	.byte	0
	.uleb128 0x2f
	.string	"HLD_LcdInterface_drawButton"
	.byte	0x1
	.uahalf	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"HLD_LcdInterface_init"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	.LFB691
	.uaword	.LFE691
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c6e
	.uleb128 0x30
	.uaword	0x2a1a
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.byte	0xad
	.uaword	0x2ab2
	.uleb128 0x31
	.uaword	0x2a3f
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x2a1a
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0xae
	.uaword	0x2acc
	.uleb128 0x31
	.uaword	0x2a3f
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.uaword	0x2a1a
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0xaf
	.uaword	0x2ae6
	.uleb128 0x31
	.uaword	0x2a3f
	.byte	0x2
	.byte	0
	.uleb128 0x30
	.uaword	0x2a1a
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0xb0
	.uaword	0x2b00
	.uleb128 0x31
	.uaword	0x2a3f
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.uaword	0x2a1a
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.byte	0xb1
	.uaword	0x2b1a
	.uleb128 0x31
	.uaword	0x2a3f
	.byte	0x4
	.byte	0
	.uleb128 0x30
	.uaword	0x2a1a
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0xb2
	.uaword	0x2b34
	.uleb128 0x31
	.uaword	0x2a3f
	.byte	0x5
	.byte	0
	.uleb128 0x30
	.uaword	0x2a1a
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0xb3
	.uaword	0x2b4e
	.uleb128 0x31
	.uaword	0x2a3f
	.byte	0x6
	.byte	0
	.uleb128 0x32
	.uaword	0x2a4c
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb4
	.uaword	0x2c59
	.uleb128 0x2b
	.uaword	.LVL36
	.uaword	0x30e8
	.uaword	0x2b84
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x48
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x47
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL38
	.uaword	0x30e8
	.uaword	0x2ba8
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x48
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL39
	.uaword	0x30e8
	.uaword	0x2bcc
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x48
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x47
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL40
	.uaword	0x30e8
	.uaword	0x2bf0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x48
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x5f
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL41
	.uaword	0x30e8
	.uaword	0x2c14
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x48
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL42
	.uaword	0x30e8
	.uaword	0x2c38
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x48
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x8f
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.uaword	.LVL43
	.uaword	0x30e8
	.uleb128 0x2c
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x48
	.uleb128 0x2c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xa7
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL35
	.byte	0x1
	.uaword	0x299f
	.uleb128 0x24
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x299f
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"HLD_LcdInterface_page1"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	.LFB693
	.uaword	.LFE693
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d09
	.uleb128 0x2b
	.uaword	.LVL44
	.uaword	0x28e9
	.uaword	0x2cac
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL45
	.uaword	0x28e9
	.uaword	0x2cbf
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL46
	.uaword	0x28e9
	.uaword	0x2cd2
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL47
	.uaword	0x28e9
	.uaword	0x2ce5
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL48
	.uaword	0x28e9
	.uaword	0x2cf8
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL49
	.byte	0x1
	.uaword	0x28e9
	.uleb128 0x2c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"HLD_LcdInterface_page1_1"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	.LFB694
	.uaword	.LFE694
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"HLD_LcdInterface_page2"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.uaword	.LFB695
	.uaword	.LFE695
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"HLD_LcdInterface_page2_1"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	.LFB696
	.uaword	.LFE696
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"HLD_LcdInterface_page3"
	.byte	0x1
	.uahalf	0x127
	.byte	0x1
	.uaword	.LFB697
	.uaword	.LFE697
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2dbf
	.uleb128 0x20
	.string	"text"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x2dbf
	.byte	0
	.uleb128 0xa
	.uaword	0x28c
	.uaword	0x2dcf
	.uleb128 0xb
	.uaword	0x311
	.byte	0x1d
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"HLD_LcdInterface_page3_1"
	.byte	0x1
	.uahalf	0x12b
	.byte	0x1
	.uaword	.LFB698
	.uaword	.LFE698
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"HLD_LcdInterface_doStart"
	.byte	0x1
	.uahalf	0x135
	.byte	0x1
	.uaword	.LFB699
	.uaword	.LFE699
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e32
	.uleb128 0x24
	.uaword	.LVL50
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"HLD_LcdInterface_doStop"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	.LFB700
	.uaword	.LFE700
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e6a
	.uleb128 0x24
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x2ff1
	.byte	0
	.uleb128 0x36
	.string	"g_Lcd"
	.byte	0x5
	.byte	0x58
	.uaword	0x43c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x2d7
	.uaword	0x2e89
	.uleb128 0xb
	.uaword	0x311
	.byte	0
	.byte	0
	.uleb128 0x36
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0x90
	.uaword	0x2ea6
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x2e79
	.uleb128 0xa
	.uaword	0x2185
	.uaword	0x2eb6
	.uleb128 0x37
	.byte	0
	.uleb128 0x36
	.string	"Beep_pattern1"
	.byte	0xb
	.byte	0x49
	.uaword	0x2eab
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"g_Stm"
	.byte	0xe
	.byte	0x2a
	.uaword	0x227b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"HLD_Imu"
	.byte	0xd
	.byte	0x5b
	.uaword	0x23de
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1f3
	.uaword	0x2ef8
	.uleb128 0x37
	.byte	0
	.uleb128 0x36
	.string	"UD_buttons_image"
	.byte	0xf
	.byte	0x6
	.uaword	0x2f12
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x2eed
	.uleb128 0x38
	.string	"LcdInterface"
	.byte	0x1
	.byte	0x4c
	.uaword	0x2492
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LcdInterface
	.uleb128 0xa
	.uaword	0x499
	.uaword	0x2f48
	.uleb128 0xb
	.uaword	0x311
	.byte	0x1
	.uleb128 0xb
	.uaword	0x311
	.byte	0x6
	.byte	0
	.uleb128 0x38
	.string	"Button"
	.byte	0x1
	.byte	0x58
	.uaword	0x2f32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Button
	.uleb128 0x38
	.string	"Increment"
	.byte	0x1
	.byte	0x6e
	.uaword	0x2519
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Increment
	.uleb128 0x38
	.string	"test"
	.byte	0x1
	.byte	0x74
	.uaword	0x2276
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	test
	.uleb128 0x38
	.string	"testf"
	.byte	0x1
	.byte	0x75
	.uaword	0x225
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testf
	.uleb128 0x38
	.string	"temp"
	.byte	0x1
	.byte	0x76
	.uaword	0x225
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	temp
	.uleb128 0x38
	.string	"kph"
	.byte	0x1
	.byte	0x77
	.uaword	0x209
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	kph
	.uleb128 0x38
	.string	"a"
	.byte	0x1
	.byte	0x78
	.uaword	0x1ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	a
	.uleb128 0x38
	.string	"b"
	.byte	0x1
	.byte	0x79
	.uaword	0x1ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	b
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.byte	0x7a
	.uaword	0x1ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	c
	.uleb128 0x39
	.byte	0x1
	.string	"HLD_GtmTomBeeper_start"
	.byte	0xb
	.byte	0x69
	.byte	0x1
	.byte	0x1
	.uaword	0x3018
	.uleb128 0x3a
	.uaword	0x3018
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2185
	.uleb128 0x3b
	.byte	0x1
	.string	"HLD_Lcd_getButton"
	.byte	0x5
	.byte	0x60
	.byte	0x1
	.uaword	0x247
	.byte	0x1
	.uaword	0x3044
	.uleb128 0x3a
	.uaword	0x3044
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x499
	.uleb128 0x3b
	.byte	0x1
	.string	"vsprintf"
	.byte	0x10
	.byte	0xc4
	.byte	0x1
	.uaword	0x196
	.byte	0x1
	.uaword	0x3071
	.uleb128 0x3a
	.uaword	0x219f
	.uleb128 0x3a
	.uaword	0x281
	.uleb128 0x3a
	.uaword	0x294
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"GLCD_displayStringLn_col"
	.byte	0x11
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uaword	0x30a4
	.uleb128 0x3a
	.uaword	0x2f1
	.uleb128 0x3a
	.uaword	0x2f1
	.uleb128 0x3a
	.uaword	0x281
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"GLCD_setBackColor"
	.byte	0x11
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uaword	0x30c6
	.uleb128 0x3a
	.uaword	0x1f3
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"GLCD_setTextColor"
	.byte	0x11
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uaword	0x30e8
	.uleb128 0x3a
	.uaword	0x1f3
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"GLCD_bitmap"
	.byte	0x11
	.byte	0x54
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x2f1
	.uleb128 0x3a
	.uaword	0x2f1
	.uleb128 0x3a
	.uaword	0x2f1
	.uleb128 0x3a
	.uaword	0x2f1
	.uleb128 0x3a
	.uaword	0x2198
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL12
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LFE719
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE719
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xdc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB713
	.uaword	.LFE713-.LFB713
	.uaword	.LFB714
	.uaword	.LFE714-.LFB714
	.uaword	.LFB712
	.uaword	.LFE712-.LFB712
	.uaword	.LFB711
	.uaword	.LFE711-.LFB711
	.uaword	.LFB710
	.uaword	.LFE710-.LFB710
	.uaword	.LFB709
	.uaword	.LFE709-.LFB709
	.uaword	.LFB708
	.uaword	.LFE708-.LFB708
	.uaword	.LFB707
	.uaword	.LFE707-.LFB707
	.uaword	.LFB706
	.uaword	.LFE706-.LFB706
	.uaword	.LFB705
	.uaword	.LFE705-.LFB705
	.uaword	.LFB704
	.uaword	.LFE704-.LFB704
	.uaword	.LFB703
	.uaword	.LFE703-.LFB703
	.uaword	.LFB702
	.uaword	.LFE702-.LFB702
	.uaword	.LFB701
	.uaword	.LFE701-.LFB701
	.uaword	.LFB719
	.uaword	.LFE719-.LFB719
	.uaword	.LFB692
	.uaword	.LFE692-.LFB692
	.uaword	.LFB691
	.uaword	.LFE691-.LFB691
	.uaword	.LFB693
	.uaword	.LFE693-.LFB693
	.uaword	.LFB694
	.uaword	.LFE694-.LFB694
	.uaword	.LFB695
	.uaword	.LFE695-.LFB695
	.uaword	.LFB696
	.uaword	.LFE696-.LFB696
	.uaword	.LFB697
	.uaword	.LFE697-.LFB697
	.uaword	.LFB698
	.uaword	.LFE698-.LFB698
	.uaword	.LFB699
	.uaword	.LFE699-.LFB699
	.uaword	.LFB700
	.uaword	.LFE700-.LFB700
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LFB713
	.uaword	.LFE713
	.uaword	.LFB714
	.uaword	.LFE714
	.uaword	.LFB712
	.uaword	.LFE712
	.uaword	.LFB711
	.uaword	.LFE711
	.uaword	.LFB710
	.uaword	.LFE710
	.uaword	.LFB709
	.uaword	.LFE709
	.uaword	.LFB708
	.uaword	.LFE708
	.uaword	.LFB707
	.uaword	.LFE707
	.uaword	.LFB706
	.uaword	.LFE706
	.uaword	.LFB705
	.uaword	.LFE705
	.uaword	.LFB704
	.uaword	.LFE704
	.uaword	.LFB703
	.uaword	.LFE703
	.uaword	.LFB702
	.uaword	.LFE702
	.uaword	.LFB701
	.uaword	.LFE701
	.uaword	.LFB719
	.uaword	.LFE719
	.uaword	.LFB692
	.uaword	.LFE692
	.uaword	.LFB691
	.uaword	.LFE691
	.uaword	.LFB693
	.uaword	.LFE693
	.uaword	.LFB694
	.uaword	.LFE694
	.uaword	.LFB695
	.uaword	.LFE695
	.uaword	.LFB696
	.uaword	.LFE696
	.uaword	.LFB697
	.uaword	.LFE697
	.uaword	.LFB698
	.uaword	.LFE698
	.uaword	.LFB699
	.uaword	.LFE699
	.uaword	.LFB700
	.uaword	.LFE700
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_0"
.LASF4:
	.string	"reserved_1"
.LASF2:
	.string	"reserved_2"
.LASF3:
	.string	"reserved_4"
.LASF5:
	.string	"buttonNum"
.LASF1:
	.string	"STMCAP63_32"
	.extern	GLCD_bitmap,STT_FUNC,0
	.extern	UD_buttons_image,STT_OBJECT,-1
	.extern	GLCD_setTextColor,STT_FUNC,0
	.extern	GLCD_setBackColor,STT_FUNC,0
	.extern	GLCD_displayStringLn_col,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.extern	g_Lcd,STT_OBJECT,45
	.extern	HLD_Lcd_getButton,STT_FUNC,0
	.extern	HLD_GtmTomBeeper_start,STT_FUNC,0
	.extern	Beep_pattern1,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
