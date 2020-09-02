.include "macros.inc"

.section .text, "ax" # 80192434


.global dFile_info_c
dFile_info_c:
/* 80192434 0018F374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192438 0018F378  7C 08 02 A6 */	mflr r0
/* 8019243C 0018F37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192440 0018F380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192444 0018F384  7C 7F 1B 78 */	mr r31, r3
/* 80192448 0018F388  3C C0 80 3C */	lis r6, lbl_803BB598@ha
/* 8019244C 0018F38C  38 06 B5 98 */	addi r0, r6, lbl_803BB598@l
/* 80192450 0018F390  90 03 00 00 */	stw r0, 0(r3)
/* 80192454 0018F394  3C C0 80 3A */	lis r6, lbl_803A6F88@ha
/* 80192458 0018F398  38 06 6F 88 */	addi r0, r6, lbl_803A6F88@l
/* 8019245C 0018F39C  90 03 00 08 */	stw r0, 8(r3)
/* 80192460 0018F3A0  3C C0 80 3C */	lis r6, lbl_803BB588@ha
/* 80192464 0018F3A4  38 06 B5 88 */	addi r0, r6, lbl_803BB588@l
/* 80192468 0018F3A8  90 03 00 08 */	stw r0, 8(r3)
/* 8019246C 0018F3AC  90 83 00 04 */	stw r4, 4(r3)
/* 80192470 0018F3B0  98 A3 00 22 */	stb r5, 0x22(r3)
/* 80192474 0018F3B4  38 00 00 00 */	li r0, 0
/* 80192478 0018F3B8  90 03 00 14 */	stw r0, 0x14(r3)
/* 8019247C 0018F3BC  48 00 00 F5 */	bl dFile_info_c_NS_screenSet
/* 80192480 0018F3C0  38 00 00 00 */	li r0, 0
/* 80192484 0018F3C4  98 1F 00 20 */	stb r0, 0x20(r31)
/* 80192488 0018F3C8  7F E3 FB 78 */	mr r3, r31
/* 8019248C 0018F3CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80192490 0018F3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192494 0018F3D4  7C 08 03 A6 */	mtlr r0
/* 80192498 0018F3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019249C 0018F3DC  4E 80 00 20 */	blr 
/* 801924A0 0018F3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801924A4 0018F3E4  7C 08 02 A6 */	mflr r0
/* 801924A8 0018F3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801924AC 0018F3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801924B0 0018F3F0  93 C1 00 08 */	stw r30, 8(r1)
/* 801924B4 0018F3F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 801924B8 0018F3F8  7C 9F 23 78 */	mr r31, r4
/* 801924BC 0018F3FC  41 82 00 98 */	beq lbl_80192554
/* 801924C0 0018F400  3C 60 80 3C */	lis r3, lbl_803BB598@ha
/* 801924C4 0018F404  38 03 B5 98 */	addi r0, r3, lbl_803BB598@l
/* 801924C8 0018F408  90 1E 00 00 */	stw r0, 0(r30)
/* 801924CC 0018F40C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801924D0 0018F410  28 03 00 00 */	cmplwi r3, 0
/* 801924D4 0018F414  41 82 00 18 */	beq lbl_801924EC
/* 801924D8 0018F418  38 80 00 01 */	li r4, 1
/* 801924DC 0018F41C  81 83 00 00 */	lwz r12, 0(r3)
/* 801924E0 0018F420  81 8C 00 08 */	lwz r12, 8(r12)
/* 801924E4 0018F424  7D 89 03 A6 */	mtctr r12
/* 801924E8 0018F428  4E 80 04 21 */	bctrl 
lbl_801924EC:
/* 801924EC 0018F42C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801924F0 0018F430  28 03 00 00 */	cmplwi r3, 0
/* 801924F4 0018F434  41 82 00 18 */	beq lbl_8019250C
/* 801924F8 0018F438  38 80 00 01 */	li r4, 1
/* 801924FC 0018F43C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192500 0018F440  81 8C 00 08 */	lwz r12, 8(r12)
/* 80192504 0018F444  7D 89 03 A6 */	mtctr r12
/* 80192508 0018F448  4E 80 04 21 */	bctrl 
lbl_8019250C:
/* 8019250C 0018F44C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80192510 0018F450  28 03 00 00 */	cmplwi r3, 0
/* 80192514 0018F454  41 82 00 18 */	beq lbl_8019252C
/* 80192518 0018F458  38 80 00 01 */	li r4, 1
/* 8019251C 0018F45C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192520 0018F460  81 8C 00 08 */	lwz r12, 8(r12)
/* 80192524 0018F464  7D 89 03 A6 */	mtctr r12
/* 80192528 0018F468  4E 80 04 21 */	bctrl 
lbl_8019252C:
/* 8019252C 0018F46C  4B E8 25 01 */	bl mDoExt_removeMesgFont
/* 80192530 0018F470  34 1E 00 08 */	addic. r0, r30, 8
/* 80192534 0018F474  41 82 00 10 */	beq lbl_80192544
/* 80192538 0018F478  3C 60 80 3C */	lis r3, lbl_803BB588@ha
/* 8019253C 0018F47C  38 03 B5 88 */	addi r0, r3, lbl_803BB588@l
/* 80192540 0018F480  90 1E 00 08 */	stw r0, 8(r30)
lbl_80192544:
/* 80192544 0018F484  7F E0 07 35 */	extsh. r0, r31
/* 80192548 0018F488  40 81 00 0C */	ble lbl_80192554
/* 8019254C 0018F48C  7F C3 F3 78 */	mr r3, r30
/* 80192550 0018F490  48 13 C7 ED */	bl __dl
lbl_80192554:
/* 80192554 0018F494  7F C3 F3 78 */	mr r3, r30
/* 80192558 0018F498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019255C 0018F49C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80192560 0018F4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192564 0018F4A4  7C 08 03 A6 */	mtlr r0
/* 80192568 0018F4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019256C 0018F4AC  4E 80 00 20 */	blr 

.global dFile_info_c_NS_screenSet
dFile_info_c_NS_screenSet:
/* 80192570 0018F4B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80192574 0018F4B4  7C 08 02 A6 */	mflr r0
/* 80192578 0018F4B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019257C 0018F4BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80192580 0018F4C0  48 1C FC 51 */	bl func_803621D0
/* 80192584 0018F4C4  7C 7F 1B 78 */	mr r31, r3
/* 80192588 0018F4C8  38 60 01 18 */	li r3, 0x118
/* 8019258C 0018F4CC  48 13 C6 C1 */	bl __nw
/* 80192590 0018F4D0  7C 60 1B 79 */	or. r0, r3, r3
/* 80192594 0018F4D4  41 82 00 0C */	beq lbl_801925A0
/* 80192598 0018F4D8  48 16 5F 01 */	bl J2DScreen
/* 8019259C 0018F4DC  7C 60 1B 78 */	mr r0, r3
lbl_801925A0:
/* 801925A0 0018F4E0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801925A4 0018F4E4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801925A8 0018F4E8  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 801925AC 0018F4EC  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 801925B0 0018F4F0  3C A0 01 10 */	lis r5, 0x110
/* 801925B4 0018F4F4  80 DF 00 04 */	lwz r6, 4(r31)
/* 801925B8 0018F4F8  48 16 60 91 */	bl J2DScreen_NS_setPriority
/* 801925BC 0018F4FC  4B E8 24 35 */	bl mDoExt_getMesgFont
/* 801925C0 0018F500  90 7F 00 10 */	stw r3, 0x10(r31)
/* 801925C4 0018F504  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801925C8 0018F508  3C 80 5F 65 */	lis r4, 0x5F656631@ha
/* 801925CC 0018F50C  38 C4 66 31 */	addi r6, r4, 0x5F656631@l
/* 801925D0 0018F510  3C 80 77 5F */	lis r4, 0x775F6370@ha
/* 801925D4 0018F514  38 A4 63 70 */	addi r5, r4, 0x775F6370@l
/* 801925D8 0018F518  81 83 00 00 */	lwz r12, 0(r3)
/* 801925DC 0018F51C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801925E0 0018F520  7D 89 03 A6 */	mtctr r12
/* 801925E4 0018F524  4E 80 04 21 */	bctrl 
/* 801925E8 0018F528  38 00 00 00 */	li r0, 0
/* 801925EC 0018F52C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801925F0 0018F530  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801925F4 0018F534  3C 80 74 5F */	lis r4, 0x745F6931@ha
/* 801925F8 0018F538  38 C4 69 31 */	addi r6, r4, 0x745F6931@l
/* 801925FC 0018F53C  3C 80 77 5F */	lis r4, 0x775F6461@ha
/* 80192600 0018F540  38 A4 64 61 */	addi r5, r4, 0x775F6461@l
/* 80192604 0018F544  81 83 00 00 */	lwz r12, 0(r3)
/* 80192608 0018F548  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8019260C 0018F54C  7D 89 03 A6 */	mtctr r12
/* 80192610 0018F550  4E 80 04 21 */	bctrl 
/* 80192614 0018F554  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80192618 0018F558  38 60 00 1C */	li r3, 0x1c
/* 8019261C 0018F55C  48 13 C6 31 */	bl __nw
/* 80192620 0018F560  7C 60 1B 79 */	or. r0, r3, r3
/* 80192624 0018F564  41 82 00 28 */	beq lbl_8019264C
/* 80192628 0018F568  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8019262C 0018F56C  3C A0 74 5F */	lis r5, 0x745F6931@ha
/* 80192630 0018F570  38 C5 69 31 */	addi r6, r5, 0x745F6931@l
/* 80192634 0018F574  3C A0 77 5F */	lis r5, 0x775F6461@ha
/* 80192638 0018F578  38 A5 64 61 */	addi r5, r5, 0x775F6461@l
/* 8019263C 0018F57C  38 E0 00 02 */	li r7, 2
/* 80192640 0018F580  39 00 00 00 */	li r8, 0
/* 80192644 0018F584  48 0C 2D B9 */	bl CPaneMgrAlpha_X1_
/* 80192648 0018F588  7C 60 1B 78 */	mr r0, r3
lbl_8019264C:
/* 8019264C 0018F58C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80192650 0018F590  38 60 00 1C */	li r3, 0x1c
/* 80192654 0018F594  48 13 C5 F9 */	bl __nw
/* 80192658 0018F598  7C 60 1B 79 */	or. r0, r3, r3
/* 8019265C 0018F59C  41 82 00 28 */	beq lbl_80192684
/* 80192660 0018F5A0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80192664 0018F5A4  3C A0 61 5F */	lis r5, 0x615F6931@ha
/* 80192668 0018F5A8  38 C5 69 31 */	addi r6, r5, 0x615F6931@l
/* 8019266C 0018F5AC  3C A0 77 5F */	lis r5, 0x775F6E64@ha
/* 80192670 0018F5B0  38 A5 6E 64 */	addi r5, r5, 0x775F6E64@l
/* 80192674 0018F5B4  38 E0 00 02 */	li r7, 2
/* 80192678 0018F5B8  39 00 00 00 */	li r8, 0
/* 8019267C 0018F5BC  48 0C 2D 81 */	bl CPaneMgrAlpha_X1_
/* 80192680 0018F5C0  7C 60 1B 78 */	mr r0, r3
lbl_80192684:
/* 80192684 0018F5C4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80192688 0018F5C8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8019268C 0018F5CC  3C 80 74 5F */	lis r4, 0x745F3032@ha
/* 80192690 0018F5D0  38 C4 30 32 */	addi r6, r4, 0x745F3032@l
/* 80192694 0018F5D4  3C 80 66 5F */	lis r4, 0x665F735F@ha
/* 80192698 0018F5D8  38 A4 73 5F */	addi r5, r4, 0x665F735F@l
/* 8019269C 0018F5DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801926A0 0018F5E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801926A4 0018F5E4  7D 89 03 A6 */	mtctr r12
/* 801926A8 0018F5E8  4E 80 04 21 */	bctrl 
/* 801926AC 0018F5EC  90 61 00 08 */	stw r3, 8(r1)
/* 801926B0 0018F5F0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801926B4 0018F5F4  3C 80 74 5F */	lis r4, 0x745F3032@ha
/* 801926B8 0018F5F8  38 C4 30 32 */	addi r6, r4, 0x745F3032@l
/* 801926BC 0018F5FC  3C 80 66 5F */	lis r4, 0x665F705F@ha
/* 801926C0 0018F600  38 A4 70 5F */	addi r5, r4, 0x665F705F@l
/* 801926C4 0018F604  81 83 00 00 */	lwz r12, 0(r3)
/* 801926C8 0018F608  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801926CC 0018F60C  7D 89 03 A6 */	mtctr r12
/* 801926D0 0018F610  4E 80 04 21 */	bctrl 
/* 801926D4 0018F614  90 61 00 0C */	stw r3, 0xc(r1)
/* 801926D8 0018F618  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801926DC 0018F61C  3C 80 74 5F */	lis r4, 0x745F3031@ha
/* 801926E0 0018F620  38 C4 30 31 */	addi r6, r4, 0x745F3031@l
/* 801926E4 0018F624  3C 80 77 5F */	lis r4, 0x775F735F@ha
/* 801926E8 0018F628  38 A4 73 5F */	addi r5, r4, 0x775F735F@l
/* 801926EC 0018F62C  81 83 00 00 */	lwz r12, 0(r3)
/* 801926F0 0018F630  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801926F4 0018F634  7D 89 03 A6 */	mtctr r12
/* 801926F8 0018F638  4E 80 04 21 */	bctrl 
/* 801926FC 0018F63C  38 00 00 00 */	li r0, 0
/* 80192700 0018F640  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80192704 0018F644  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80192708 0018F648  3C 80 74 5F */	lis r4, 0x745F3031@ha
/* 8019270C 0018F64C  38 C4 30 31 */	addi r6, r4, 0x745F3031@l
/* 80192710 0018F650  3C 80 77 5F */	lis r4, 0x775F705F@ha
/* 80192714 0018F654  38 A4 70 5F */	addi r5, r4, 0x775F705F@l
/* 80192718 0018F658  81 83 00 00 */	lwz r12, 0(r3)
/* 8019271C 0018F65C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192720 0018F660  7D 89 03 A6 */	mtctr r12
/* 80192724 0018F664  4E 80 04 21 */	bctrl 
/* 80192728 0018F668  3B C0 00 00 */	li r30, 0
/* 8019272C 0018F66C  9B C3 00 B0 */	stb r30, 0xb0(r3)
/* 80192730 0018F670  3B 40 00 00 */	li r26, 0
/* 80192734 0018F674  3B A1 00 08 */	addi r29, r1, 8
/* 80192738 0018F678  3C 60 80 39 */	lis r3, lbl_803948B8@ha
/* 8019273C 0018F67C  3B 83 48 B8 */	addi r28, r3, lbl_803948B8@l
lbl_80192740:
/* 80192740 0018F680  7F 7D F0 2E */	lwzx r27, r29, r30
/* 80192744 0018F684  7F 63 DB 78 */	mr r3, r27
/* 80192748 0018F688  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8019274C 0018F68C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80192750 0018F690  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80192754 0018F694  7D 89 03 A6 */	mtctr r12
/* 80192758 0018F698  4E 80 04 21 */	bctrl 
/* 8019275C 0018F69C  7F 63 DB 78 */	mr r3, r27
/* 80192760 0018F6A0  38 80 00 20 */	li r4, 0x20
/* 80192764 0018F6A4  38 BC 00 20 */	addi r5, r28, 0x20
/* 80192768 0018F6A8  4C C6 31 82 */	crclr 6
/* 8019276C 0018F6AC  48 16 DF E1 */	bl J2DTextBox_NS_setString_X1_
/* 80192770 0018F6B0  3B 5A 00 01 */	addi r26, r26, 1
/* 80192774 0018F6B4  2C 1A 00 02 */	cmpwi r26, 2
/* 80192778 0018F6B8  3B DE 00 04 */	addi r30, r30, 4
/* 8019277C 0018F6BC  41 80 FF C4 */	blt lbl_80192740
/* 80192780 0018F6C0  80 61 00 08 */	lwz r3, 8(r1)
/* 80192784 0018F6C4  48 16 DE D5 */	bl J2DTextBox_NS_getStringPtr
/* 80192788 0018F6C8  7C 65 1B 78 */	mr r5, r3
/* 8019278C 0018F6CC  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80192790 0018F6D0  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80192794 0018F6D4  38 80 03 D0 */	li r4, 0x3d0
/* 80192798 0018F6D8  38 C0 00 00 */	li r6, 0
/* 8019279C 0018F6DC  48 08 9A B5 */	bl dMeter2Info_c_NS_getString
/* 801927A0 0018F6E0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801927A4 0018F6E4  48 16 DE B5 */	bl J2DTextBox_NS_getStringPtr
/* 801927A8 0018F6E8  7C 65 1B 78 */	mr r5, r3
/* 801927AC 0018F6EC  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 801927B0 0018F6F0  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 801927B4 0018F6F4  38 80 03 D1 */	li r4, 0x3d1
/* 801927B8 0018F6F8  38 C0 00 00 */	li r6, 0
/* 801927BC 0018F6FC  48 08 9A 95 */	bl dMeter2Info_c_NS_getString
/* 801927C0 0018F700  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801927C4 0018F704  3C 80 6D 65 */	lis r4, 0x6D653031@ha
/* 801927C8 0018F708  38 C4 30 31 */	addi r6, r4, 0x6D653031@l
/* 801927CC 0018F70C  3C 80 66 5F */	lis r4, 0x665F6E61@ha
/* 801927D0 0018F710  38 A4 6E 61 */	addi r5, r4, 0x665F6E61@l
/* 801927D4 0018F714  81 83 00 00 */	lwz r12, 0(r3)
/* 801927D8 0018F718  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801927DC 0018F71C  7D 89 03 A6 */	mtctr r12
/* 801927E0 0018F720  4E 80 04 21 */	bctrl 
/* 801927E4 0018F724  90 61 00 08 */	stw r3, 8(r1)
/* 801927E8 0018F728  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801927EC 0018F72C  3C 80 65 77 */	lis r4, 0x65775F31@ha
/* 801927F0 0018F730  38 C4 5F 31 */	addi r6, r4, 0x65775F31@l
/* 801927F4 0018F734  3C 80 00 66 */	lis r4, 0x00665F6E@ha
/* 801927F8 0018F738  38 A4 5F 6E */	addi r5, r4, 0x00665F6E@l
/* 801927FC 0018F73C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192800 0018F740  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192804 0018F744  7D 89 03 A6 */	mtctr r12
/* 80192808 0018F748  4E 80 04 21 */	bctrl 
/* 8019280C 0018F74C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80192810 0018F750  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80192814 0018F754  3C 80 6D 65 */	lis r4, 0x6D653031@ha
/* 80192818 0018F758  38 C4 30 31 */	addi r6, r4, 0x6D653031@l
/* 8019281C 0018F75C  3C 80 77 5F */	lis r4, 0x775F6E61@ha
/* 80192820 0018F760  38 A4 6E 61 */	addi r5, r4, 0x775F6E61@l
/* 80192824 0018F764  81 83 00 00 */	lwz r12, 0(r3)
/* 80192828 0018F768  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8019282C 0018F76C  7D 89 03 A6 */	mtctr r12
/* 80192830 0018F770  4E 80 04 21 */	bctrl 
/* 80192834 0018F774  38 00 00 00 */	li r0, 0
/* 80192838 0018F778  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8019283C 0018F77C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80192840 0018F780  3C 80 65 77 */	lis r4, 0x65775F31@ha
/* 80192844 0018F784  38 C4 5F 31 */	addi r6, r4, 0x65775F31@l
/* 80192848 0018F788  3C 80 00 77 */	lis r4, 0x00775F6E@ha
/* 8019284C 0018F78C  38 A4 5F 6E */	addi r5, r4, 0x00775F6E@l
/* 80192850 0018F790  81 83 00 00 */	lwz r12, 0(r3)
/* 80192854 0018F794  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192858 0018F798  7D 89 03 A6 */	mtctr r12
/* 8019285C 0018F79C  4E 80 04 21 */	bctrl 
/* 80192860 0018F7A0  38 00 00 00 */	li r0, 0
/* 80192864 0018F7A4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80192868 0018F7A8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8019286C 0018F7AC  3C 80 6D 65 */	lis r4, 0x6D653031@ha
/* 80192870 0018F7B0  38 C4 30 31 */	addi r6, r4, 0x6D653031@l
/* 80192874 0018F7B4  3C 80 77 5F */	lis r4, 0x775F7469@ha
/* 80192878 0018F7B8  38 A4 74 69 */	addi r5, r4, 0x775F7469@l
/* 8019287C 0018F7BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80192880 0018F7C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192884 0018F7C4  7D 89 03 A6 */	mtctr r12
/* 80192888 0018F7C8  4E 80 04 21 */	bctrl 
/* 8019288C 0018F7CC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80192890 0018F7D0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80192894 0018F7D4  3C 80 69 6D */	lis r4, 0x696D3031@ha
/* 80192898 0018F7D8  38 C4 30 31 */	addi r6, r4, 0x696D3031@l
/* 8019289C 0018F7DC  3C 80 77 5F */	lis r4, 0x775F7074@ha
/* 801928A0 0018F7E0  38 A4 70 74 */	addi r5, r4, 0x775F7074@l
/* 801928A4 0018F7E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801928A8 0018F7E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801928AC 0018F7EC  7D 89 03 A6 */	mtctr r12
/* 801928B0 0018F7F0  4E 80 04 21 */	bctrl 
/* 801928B4 0018F7F4  90 61 00 14 */	stw r3, 0x14(r1)
/* 801928B8 0018F7F8  3B 40 00 00 */	li r26, 0
/* 801928BC 0018F7FC  3B C0 00 00 */	li r30, 0
/* 801928C0 0018F800  3B 81 00 08 */	addi r28, r1, 8
/* 801928C4 0018F804  3C 60 80 39 */	lis r3, lbl_803948B8@ha
/* 801928C8 0018F808  3B A3 48 B8 */	addi r29, r3, lbl_803948B8@l
lbl_801928CC:
/* 801928CC 0018F80C  7F 7C F0 2E */	lwzx r27, r28, r30
/* 801928D0 0018F810  7F 63 DB 78 */	mr r3, r27
/* 801928D4 0018F814  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 801928D8 0018F818  81 9B 00 00 */	lwz r12, 0(r27)
/* 801928DC 0018F81C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801928E0 0018F820  7D 89 03 A6 */	mtctr r12
/* 801928E4 0018F824  4E 80 04 21 */	bctrl 
/* 801928E8 0018F828  7F 63 DB 78 */	mr r3, r27
/* 801928EC 0018F82C  38 80 00 40 */	li r4, 0x40
/* 801928F0 0018F830  38 BD 00 20 */	addi r5, r29, 0x20
/* 801928F4 0018F834  4C C6 31 82 */	crclr 6
/* 801928F8 0018F838  48 16 DE 55 */	bl J2DTextBox_NS_setString_X1_
/* 801928FC 0018F83C  3B 5A 00 01 */	addi r26, r26, 1
/* 80192900 0018F840  2C 1A 00 04 */	cmpwi r26, 4
/* 80192904 0018F844  3B DE 00 04 */	addi r30, r30, 4
/* 80192908 0018F848  41 80 FF C4 */	blt lbl_801928CC
/* 8019290C 0018F84C  80 61 00 08 */	lwz r3, 8(r1)
/* 80192910 0018F850  48 16 DD 49 */	bl J2DTextBox_NS_getStringPtr
/* 80192914 0018F854  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 80192918 0018F858  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8019291C 0018F85C  48 16 DD 3D */	bl J2DTextBox_NS_getStringPtr
/* 80192920 0018F860  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80192924 0018F864  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80192928 0018F868  48 16 DD 31 */	bl J2DTextBox_NS_getStringPtr
/* 8019292C 0018F86C  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80192930 0018F870  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80192934 0018F874  48 16 DD 25 */	bl J2DTextBox_NS_getStringPtr
/* 80192938 0018F878  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8019293C 0018F87C  39 61 00 30 */	addi r11, r1, 0x30
/* 80192940 0018F880  48 1C F8 DD */	bl func_8036221C
/* 80192944 0018F884  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80192948 0018F888  7C 08 03 A6 */	mtlr r0
/* 8019294C 0018F88C  38 21 00 30 */	addi r1, r1, 0x30
/* 80192950 0018F890  4E 80 00 20 */	blr 

.global dFile_info_c_NS_setSaveData
dFile_info_c_NS_setSaveData:
/* 80192954 0018F894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192958 0018F898  7C 08 02 A6 */	mflr r0
/* 8019295C 0018F89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192960 0018F8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80192964 0018F8A4  48 1C F8 79 */	bl func_803621DC
/* 80192968 0018F8A8  7C 7F 1B 78 */	mr r31, r3
/* 8019296C 0018F8AC  7C 9D 23 78 */	mr r29, r4
/* 80192970 0018F8B0  2C 05 00 00 */	cmpwi r5, 0
/* 80192974 0018F8B4  41 82 00 F8 */	beq lbl_80192A6C
/* 80192978 0018F8B8  3B DD 01 B4 */	addi r30, r29, 0x1b4
/* 8019297C 0018F8BC  88 1D 01 B4 */	lbz r0, 0x1b4(r29)
/* 80192980 0018F8C0  7C 00 07 75 */	extsb. r0, r0
/* 80192984 0018F8C4  40 82 00 B8 */	bne lbl_80192A3C
/* 80192988 0018F8C8  88 1F 00 22 */	lbz r0, 0x22(r31)
/* 8019298C 0018F8CC  28 00 00 01 */	cmplwi r0, 1
/* 80192990 0018F8D0  40 82 00 8C */	bne lbl_80192A1C
/* 80192994 0018F8D4  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 80192998 0018F8D8  3C A0 80 40 */	lis r5, lbl_804061C0@ha
/* 8019299C 0018F8DC  38 A5 61 C0 */	addi r5, r5, lbl_804061C0@l
/* 801929A0 0018F8E0  88 05 0F 18 */	lbz r0, 0xf18(r5)
/* 801929A4 0018F8E4  7C 06 00 40 */	cmplw r6, r0
/* 801929A8 0018F8E8  40 82 00 74 */	bne lbl_80192A1C
/* 801929AC 0018F8EC  A0 05 00 02 */	lhz r0, 2(r5)
/* 801929B0 0018F8F0  B0 1D 00 02 */	sth r0, 2(r29)
/* 801929B4 0018F8F4  48 00 00 ED */	bl dFile_info_c_NS_setHeartCnt
/* 801929B8 0018F8F8  38 00 00 0C */	li r0, 0xc
/* 801929BC 0018F8FC  B0 1D 00 02 */	sth r0, 2(r29)
/* 801929C0 0018F900  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 801929C4 0018F904  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 801929C8 0018F908  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801929CC 0018F90C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801929D0 0018F910  48 1D 61 5D */	bl func_80368B2C
/* 801929D4 0018F914  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801929D8 0018F918  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 801929DC 0018F91C  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 801929E0 0018F920  38 84 00 20 */	addi r4, r4, 0x20
/* 801929E4 0018F924  48 1D 61 49 */	bl func_80368B2C
/* 801929E8 0018F928  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801929EC 0018F92C  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 801929F0 0018F930  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 801929F4 0018F934  38 84 00 20 */	addi r4, r4, 0x20
/* 801929F8 0018F938  48 1D 61 35 */	bl func_80368B2C
/* 801929FC 0018F93C  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80192A00 0018F940  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80192A04 0018F944  38 80 00 4D */	li r4, 0x4d
/* 80192A08 0018F948  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80192A0C 0018F94C  38 C0 00 00 */	li r6, 0
/* 80192A10 0018F950  48 08 98 41 */	bl dMeter2Info_c_NS_getString
/* 80192A14 0018F954  38 60 00 02 */	li r3, 2
/* 80192A18 0018F958  48 00 00 70 */	b lbl_80192A88
lbl_80192A1C:
/* 80192A1C 0018F95C  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80192A20 0018F960  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80192A24 0018F964  38 80 00 4D */	li r4, 0x4d
/* 80192A28 0018F968  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80192A2C 0018F96C  38 C0 00 00 */	li r6, 0
/* 80192A30 0018F970  48 08 98 21 */	bl dMeter2Info_c_NS_getString
/* 80192A34 0018F974  38 60 00 01 */	li r3, 1
/* 80192A38 0018F978  48 00 00 50 */	b lbl_80192A88
lbl_80192A3C:
/* 80192A3C 0018F97C  48 00 00 65 */	bl dFile_info_c_NS_setHeartCnt
/* 80192A40 0018F980  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80192A44 0018F984  7F C4 F3 78 */	mr r4, r30
/* 80192A48 0018F988  48 1D 60 E5 */	bl func_80368B2C
/* 80192A4C 0018F98C  7F E3 FB 78 */	mr r3, r31
/* 80192A50 0018F990  7F A4 EB 78 */	mr r4, r29
/* 80192A54 0018F994  48 00 01 B5 */	bl dFile_info_c_NS_setSaveDate
/* 80192A58 0018F998  7F E3 FB 78 */	mr r3, r31
/* 80192A5C 0018F99C  7F A4 EB 78 */	mr r4, r29
/* 80192A60 0018F9A0  48 00 02 11 */	bl dFile_info_c_NS_setPlayTime
/* 80192A64 0018F9A4  38 60 00 00 */	li r3, 0
/* 80192A68 0018F9A8  48 00 00 20 */	b lbl_80192A88
lbl_80192A6C:
/* 80192A6C 0018F9AC  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80192A70 0018F9B0  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80192A74 0018F9B4  38 80 00 51 */	li r4, 0x51
/* 80192A78 0018F9B8  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80192A7C 0018F9BC  38 C0 00 00 */	li r6, 0
/* 80192A80 0018F9C0  48 08 97 D1 */	bl dMeter2Info_c_NS_getString
/* 80192A84 0018F9C4  38 60 FF FF */	li r3, -1
lbl_80192A88:
/* 80192A88 0018F9C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80192A8C 0018F9CC  48 1C F7 9D */	bl func_80362228
/* 80192A90 0018F9D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192A94 0018F9D4  7C 08 03 A6 */	mtlr r0
/* 80192A98 0018F9D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80192A9C 0018F9DC  4E 80 00 20 */	blr 

.global dFile_info_c_NS_setHeartCnt
dFile_info_c_NS_setHeartCnt:
/* 80192AA0 0018F9E0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80192AA4 0018F9E4  7C 08 02 A6 */	mflr r0
/* 80192AA8 0018F9E8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80192AAC 0018F9EC  39 61 00 80 */	addi r11, r1, 0x80
/* 80192AB0 0018F9F0  48 1C F7 11 */	bl func_803621C0
/* 80192AB4 0018F9F4  7C 78 1B 78 */	mr r24, r3
/* 80192AB8 0018F9F8  7C 99 23 78 */	mr r25, r4
/* 80192ABC 0018F9FC  A0 84 00 02 */	lhz r4, 2(r4)
/* 80192AC0 0018FA00  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80192AC4 0018FA04  38 60 00 05 */	li r3, 5
/* 80192AC8 0018FA08  7F 80 1B D6 */	divw r28, r0, r3
/* 80192ACC 0018FA0C  7C 04 1B D6 */	divw r0, r4, r3
/* 80192AD0 0018FA10  7C 00 19 D6 */	mullw r0, r0, r3
/* 80192AD4 0018FA14  7F 60 20 51 */	subf. r27, r0, r4
/* 80192AD8 0018FA18  41 82 00 08 */	beq lbl_80192AE0
/* 80192ADC 0018FA1C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80192AE0:
/* 80192AE0 0018FA20  3B 40 00 00 */	li r26, 0
/* 80192AE4 0018FA24  3A E0 00 00 */	li r23, 0
/* 80192AE8 0018FA28  3A C0 00 00 */	li r22, 0
/* 80192AEC 0018FA2C  57 64 10 3A */	slwi r4, r27, 2
/* 80192AF0 0018FA30  3C 60 80 3C */	lis r3, lbl_803BB548@ha
/* 80192AF4 0018FA34  38 03 B5 48 */	addi r0, r3, lbl_803BB548@l
/* 80192AF8 0018FA38  7C 60 22 14 */	add r3, r0, r4
/* 80192AFC 0018FA3C  3B C3 FF FC */	addi r30, r3, -4
/* 80192B00 0018FA40  3C 60 80 3C */	lis r3, lbl_803BB4A8@ha
/* 80192B04 0018FA44  3B E3 B4 A8 */	addi r31, r3, lbl_803BB4A8@l
/* 80192B08 0018FA48  3B A1 00 08 */	addi r29, r1, 8
lbl_80192B0C:
/* 80192B0C 0018FA4C  80 78 00 0C */	lwz r3, 0xc(r24)
/* 80192B10 0018FA50  7C 9F B2 14 */	add r4, r31, r22
/* 80192B14 0018FA54  80 A4 00 00 */	lwz r5, 0(r4)
/* 80192B18 0018FA58  80 C4 00 04 */	lwz r6, 4(r4)
/* 80192B1C 0018FA5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192B20 0018FA60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192B24 0018FA64  7D 89 03 A6 */	mtctr r12
/* 80192B28 0018FA68  4E 80 04 21 */	bctrl 
/* 80192B2C 0018FA6C  7C 7D B9 2E */	stwx r3, r29, r23
/* 80192B30 0018FA70  A0 79 00 00 */	lhz r3, 0(r25)
/* 80192B34 0018FA74  38 00 00 05 */	li r0, 5
/* 80192B38 0018FA78  7C 03 03 D6 */	divw r0, r3, r0
/* 80192B3C 0018FA7C  7C 1A 00 00 */	cmpw r26, r0
/* 80192B40 0018FA80  40 80 00 90 */	bge lbl_80192BD0
/* 80192B44 0018FA84  38 00 00 01 */	li r0, 1
/* 80192B48 0018FA88  7C 7D B8 2E */	lwzx r3, r29, r23
/* 80192B4C 0018FA8C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80192B50 0018FA90  7C 1A E0 00 */	cmpw r26, r28
/* 80192B54 0018FA94  40 80 00 58 */	bge lbl_80192BAC
/* 80192B58 0018FA98  2C 1B 00 00 */	cmpwi r27, 0
/* 80192B5C 0018FA9C  41 82 00 2C */	beq lbl_80192B88
/* 80192B60 0018FAA0  38 1C FF FF */	addi r0, r28, -1
/* 80192B64 0018FAA4  7C 1A 00 00 */	cmpw r26, r0
/* 80192B68 0018FAA8  40 82 00 20 */	bne lbl_80192B88
/* 80192B6C 0018FAAC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80192B70 0018FAB0  38 A0 00 00 */	li r5, 0
/* 80192B74 0018FAB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80192B78 0018FAB8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80192B7C 0018FABC  7D 89 03 A6 */	mtctr r12
/* 80192B80 0018FAC0  4E 80 04 21 */	bctrl 
/* 80192B84 0018FAC4  48 00 00 58 */	b lbl_80192BDC
lbl_80192B88:
/* 80192B88 0018FAC8  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 80192B8C 0018FACC  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 80192B90 0018FAD0  38 84 00 21 */	addi r4, r4, 0x21
/* 80192B94 0018FAD4  38 A0 00 00 */	li r5, 0
/* 80192B98 0018FAD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80192B9C 0018FADC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80192BA0 0018FAE0  7D 89 03 A6 */	mtctr r12
/* 80192BA4 0018FAE4  4E 80 04 21 */	bctrl 
/* 80192BA8 0018FAE8  48 00 00 34 */	b lbl_80192BDC
lbl_80192BAC:
/* 80192BAC 0018FAEC  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 80192BB0 0018FAF0  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 80192BB4 0018FAF4  38 84 00 21 */	addi r4, r4, 0x21
/* 80192BB8 0018FAF8  38 A0 00 00 */	li r5, 0
/* 80192BBC 0018FAFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80192BC0 0018FB00  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80192BC4 0018FB04  7D 89 03 A6 */	mtctr r12
/* 80192BC8 0018FB08  4E 80 04 21 */	bctrl 
/* 80192BCC 0018FB0C  48 00 00 10 */	b lbl_80192BDC
lbl_80192BD0:
/* 80192BD0 0018FB10  38 00 00 00 */	li r0, 0
/* 80192BD4 0018FB14  7C 7D B8 2E */	lwzx r3, r29, r23
/* 80192BD8 0018FB18  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_80192BDC:
/* 80192BDC 0018FB1C  3B 5A 00 01 */	addi r26, r26, 1
/* 80192BE0 0018FB20  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80192BE4 0018FB24  3A F7 00 04 */	addi r23, r23, 4
/* 80192BE8 0018FB28  3A D6 00 08 */	addi r22, r22, 8
/* 80192BEC 0018FB2C  41 80 FF 20 */	blt lbl_80192B0C
/* 80192BF0 0018FB30  39 61 00 80 */	addi r11, r1, 0x80
/* 80192BF4 0018FB34  48 1C F6 19 */	bl func_8036220C
/* 80192BF8 0018FB38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80192BFC 0018FB3C  7C 08 03 A6 */	mtlr r0
/* 80192C00 0018FB40  38 21 00 80 */	addi r1, r1, 0x80
/* 80192C04 0018FB44  4E 80 00 20 */	blr 

.global dFile_info_c_NS_setSaveDate
dFile_info_c_NS_setSaveDate:
/* 80192C08 0018FB48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80192C0C 0018FB4C  7C 08 02 A6 */	mflr r0
/* 80192C10 0018FB50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80192C14 0018FB54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80192C18 0018FB58  7C 7F 1B 78 */	mr r31, r3
/* 80192C1C 0018FB5C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80192C20 0018FB60  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 80192C24 0018FB64  38 A1 00 08 */	addi r5, r1, 8
/* 80192C28 0018FB68  48 1A FD 4D */	bl OSTicksToCalendarTime
/* 80192C2C 0018FB6C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80192C30 0018FB70  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 80192C34 0018FB74  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 80192C38 0018FB78  38 84 00 31 */	addi r4, r4, 0x31
/* 80192C3C 0018FB7C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80192C40 0018FB80  38 A5 00 01 */	addi r5, r5, 1
/* 80192C44 0018FB84  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80192C48 0018FB88  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 80192C4C 0018FB8C  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80192C50 0018FB90  81 21 00 0C */	lwz r9, 0xc(r1)
/* 80192C54 0018FB94  4C C6 31 82 */	crclr 6
/* 80192C58 0018FB98  48 1D 38 85 */	bl func_803664DC
/* 80192C5C 0018FB9C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80192C60 0018FBA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80192C64 0018FBA4  7C 08 03 A6 */	mtlr r0
/* 80192C68 0018FBA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80192C6C 0018FBAC  4E 80 00 20 */	blr 

.global dFile_info_c_NS_setPlayTime
dFile_info_c_NS_setPlayTime:
/* 80192C70 0018FBB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192C74 0018FBB4  7C 08 02 A6 */	mflr r0
/* 80192C78 0018FBB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80192C7C 0018FBBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80192C80 0018FBC0  48 1C F5 59 */	bl func_803621D8
/* 80192C84 0018FBC4  7C 7C 1B 78 */	mr r28, r3
/* 80192C88 0018FBC8  80 64 01 A8 */	lwz r3, 0x1a8(r4)
/* 80192C8C 0018FBCC  80 84 01 AC */	lwz r4, 0x1ac(r4)
/* 80192C90 0018FBD0  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 80192C94 0018FBD4  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 80192C98 0018FBD8  54 06 F0 BE */	srwi r6, r0, 2
/* 80192C9C 0018FBDC  38 A0 00 00 */	li r5, 0
/* 80192CA0 0018FBE0  48 1C F6 85 */	bl func_80362324
/* 80192CA4 0018FBE4  7C 9D 23 78 */	mr r29, r4
/* 80192CA8 0018FBE8  7C 7E 1B 78 */	mr r30, r3
/* 80192CAC 0018FBEC  3C A0 00 37 */	lis r5, 0x0036EE44@ha
/* 80192CB0 0018FBF0  38 E5 EE 44 */	addi r7, r5, 0x0036EE44@l
/* 80192CB4 0018FBF4  38 00 00 00 */	li r0, 0
/* 80192CB8 0018FBF8  6F C6 80 00 */	xoris r6, r30, 0x8000
/* 80192CBC 0018FBFC  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80192CC0 0018FC00  7C 07 E8 10 */	subfc r0, r7, r29
/* 80192CC4 0018FC04  7C A5 31 10 */	subfe r5, r5, r6
/* 80192CC8 0018FC08  7C A6 31 10 */	subfe r5, r6, r6
/* 80192CCC 0018FC0C  7C A5 00 D1 */	neg. r5, r5
/* 80192CD0 0018FC10  40 82 00 20 */	bne lbl_80192CF0
/* 80192CD4 0018FC14  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 80192CD8 0018FC18  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 80192CDC 0018FC1C  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 80192CE0 0018FC20  38 84 00 48 */	addi r4, r4, 0x48
/* 80192CE4 0018FC24  4C C6 31 82 */	crclr 6
/* 80192CE8 0018FC28  48 1D 37 F5 */	bl func_803664DC
/* 80192CEC 0018FC2C  48 00 00 54 */	b lbl_80192D40
lbl_80192CF0:
/* 80192CF0 0018FC30  38 A0 00 00 */	li r5, 0
/* 80192CF4 0018FC34  38 C0 0E 10 */	li r6, 0xe10
/* 80192CF8 0018FC38  48 1C F8 49 */	bl func_80362540
/* 80192CFC 0018FC3C  38 A0 00 00 */	li r5, 0
/* 80192D00 0018FC40  38 C0 00 3C */	li r6, 0x3c
/* 80192D04 0018FC44  48 1C F6 21 */	bl func_80362324
/* 80192D08 0018FC48  7C 9F 23 78 */	mr r31, r4
/* 80192D0C 0018FC4C  7F C3 F3 78 */	mr r3, r30
/* 80192D10 0018FC50  7F A4 EB 78 */	mr r4, r29
/* 80192D14 0018FC54  38 A0 00 00 */	li r5, 0
/* 80192D18 0018FC58  38 C0 0E 10 */	li r6, 0xe10
/* 80192D1C 0018FC5C  48 1C F6 09 */	bl func_80362324
/* 80192D20 0018FC60  7C 85 23 78 */	mr r5, r4
/* 80192D24 0018FC64  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 80192D28 0018FC68  3C 80 80 39 */	lis r4, lbl_803948B8@ha
/* 80192D2C 0018FC6C  38 84 48 B8 */	addi r4, r4, lbl_803948B8@l
/* 80192D30 0018FC70  38 84 00 4F */	addi r4, r4, 0x4f
/* 80192D34 0018FC74  7F E6 FB 78 */	mr r6, r31
/* 80192D38 0018FC78  4C C6 31 82 */	crclr 6
/* 80192D3C 0018FC7C  48 1D 37 A1 */	bl func_803664DC
lbl_80192D40:
/* 80192D40 0018FC80  39 61 00 20 */	addi r11, r1, 0x20
/* 80192D44 0018FC84  48 1C F4 E1 */	bl func_80362224
/* 80192D48 0018FC88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80192D4C 0018FC8C  7C 08 03 A6 */	mtlr r0
/* 80192D50 0018FC90  38 21 00 20 */	addi r1, r1, 0x20
/* 80192D54 0018FC94  4E 80 00 20 */	blr 
/* 80192D58 0018FC98  4E 80 00 20 */	blr 
/* 80192D5C 0018FC9C  4E 80 00 20 */	blr 

.global dFile_info_c_NS__draw
dFile_info_c_NS__draw:
/* 80192D60 0018FCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192D64 0018FCA4  7C 08 02 A6 */	mflr r0
/* 80192D68 0018FCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192D6C 0018FCAC  7C 66 1B 78 */	mr r6, r3
/* 80192D70 0018FCB0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80192D74 0018FCB4  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80192D78 0018FCB8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80192D7C 0018FCBC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80192D80 0018FCC0  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80192D84 0018FCC4  38 C6 00 08 */	addi r6, r6, 8
/* 80192D88 0018FCC8  4B EC 3A 0D */	bl dDlst_list_c_NS_set
/* 80192D8C 0018FCCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192D90 0018FCD0  7C 08 03 A6 */	mtlr r0
/* 80192D94 0018FCD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80192D98 0018FCD8  4E 80 00 20 */	blr 
/* 80192D9C 0018FCDC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80192DA0 0018FCE0  7C 08 02 A6 */	mflr r0
/* 80192DA4 0018FCE4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80192DA8 0018FCE8  39 61 00 50 */	addi r11, r1, 0x50
/* 80192DAC 0018FCEC  48 1C F4 31 */	bl func_803621DC
/* 80192DB0 0018FCF0  7C 7D 1B 78 */	mr r29, r3
/* 80192DB4 0018FCF4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80192DB8 0018FCF8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80192DBC 0018FCFC  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80192DC0 0018FD00  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80192DC4 0018FD04  28 03 00 00 */	cmplwi r3, 0
/* 80192DC8 0018FD08  41 82 00 94 */	beq lbl_80192E5C
/* 80192DCC 0018FD0C  38 03 00 80 */	addi r0, r3, 0x80
/* 80192DD0 0018FD10  7C 1E 03 78 */	mr r30, r0
/* 80192DD4 0018FD14  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80192DD8 0018FD18  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80192DDC 0018FD1C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80192DE0 0018FD20  EC 41 00 28 */	fsubs f2, f1, f0
/* 80192DE4 0018FD24  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80192DE8 0018FD28  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80192DEC 0018FD2C  EC 61 00 28 */	fsubs f3, f1, f0
/* 80192DF0 0018FD30  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80192DF4 0018FD34  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80192DF8 0018FD38  EC 81 00 28 */	fsubs f4, f1, f0
/* 80192DFC 0018FD3C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80192E00 0018FD40  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80192E04 0018FD44  EC 01 00 28 */	fsubs f0, f1, f0
/* 80192E08 0018FD48  38 61 00 08 */	addi r3, r1, 8
/* 80192E0C 0018FD4C  EC 20 20 24 */	fdivs f1, f0, f4
/* 80192E10 0018FD50  EC 43 10 24 */	fdivs f2, f3, f2
/* 80192E14 0018FD54  C0 62 9F F8 */	lfs f3, lbl_804539F8-_SDA2_BASE_(r2)
/* 80192E18 0018FD58  48 1B 3B 51 */	bl PSMTXScale
/* 80192E1C 0018FD5C  7F C3 F3 78 */	mr r3, r30
/* 80192E20 0018FD60  38 81 00 08 */	addi r4, r1, 8
/* 80192E24 0018FD64  7F C5 F3 78 */	mr r5, r30
/* 80192E28 0018FD68  48 1B 36 BD */	bl PSMTXConcat
/* 80192E2C 0018FD6C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80192E30 0018FD70  3C 80 6D 5F */	lis r4, 0x6D5F3032@ha
/* 80192E34 0018FD74  38 C4 30 32 */	addi r6, r4, 0x6D5F3032@l
/* 80192E38 0018FD78  38 A0 00 4E */	li r5, 0x4e
/* 80192E3C 0018FD7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80192E40 0018FD80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80192E44 0018FD84  7D 89 03 A6 */	mtctr r12
/* 80192E48 0018FD88  4E 80 04 21 */	bctrl 
/* 80192E4C 0018FD8C  7C 64 1B 78 */	mr r4, r3
/* 80192E50 0018FD90  7F C3 F3 78 */	mr r3, r30
/* 80192E54 0018FD94  38 84 00 50 */	addi r4, r4, 0x50
/* 80192E58 0018FD98  48 1B 36 59 */	bl PSMTXCopy
lbl_80192E5C:
/* 80192E5C 0018FD9C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80192E60 0018FDA0  C0 22 9F FC */	lfs f1, lbl_804539FC-_SDA2_BASE_(r2)
/* 80192E64 0018FDA4  FC 40 08 90 */	fmr f2, f1
/* 80192E68 0018FDA8  7F E4 FB 78 */	mr r4, r31
/* 80192E6C 0018FDAC  48 16 60 69 */	bl J2DScreen_NS_draw
/* 80192E70 0018FDB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80192E74 0018FDB4  48 1C F3 B5 */	bl func_80362228
/* 80192E78 0018FDB8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80192E7C 0018FDBC  7C 08 03 A6 */	mtlr r0
/* 80192E80 0018FDC0  38 21 00 50 */	addi r1, r1, 0x50
/* 80192E84 0018FDC4  4E 80 00 20 */	blr 
/* 80192E88 0018FDC8  3C 60 80 3C */	lis r3, lbl_803BB498@ha
/* 80192E8C 0018FDCC  38 A3 B4 98 */	addi r5, r3, lbl_803BB498@l
/* 80192E90 0018FDD0  80 65 00 C0 */	lwz r3, 0xc0(r5)
/* 80192E94 0018FDD4  80 05 00 C4 */	lwz r0, 0xc4(r5)
/* 80192E98 0018FDD8  90 65 00 D8 */	stw r3, 0xd8(r5)
/* 80192E9C 0018FDDC  90 05 00 DC */	stw r0, 0xdc(r5)
/* 80192EA0 0018FDE0  80 05 00 C8 */	lwz r0, 0xc8(r5)
/* 80192EA4 0018FDE4  90 05 00 E0 */	stw r0, 0xe0(r5)
/* 80192EA8 0018FDE8  38 85 00 D8 */	addi r4, r5, 0xd8
/* 80192EAC 0018FDEC  80 65 00 CC */	lwz r3, 0xcc(r5)
/* 80192EB0 0018FDF0  80 05 00 D0 */	lwz r0, 0xd0(r5)
/* 80192EB4 0018FDF4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80192EB8 0018FDF8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80192EBC 0018FDFC  80 05 00 D4 */	lwz r0, 0xd4(r5)
/* 80192EC0 0018FE00  90 04 00 14 */	stw r0, 0x14(r4)
/* 80192EC4 0018FE04  4E 80 00 20 */	blr 
/* 80192EC8 0018FE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192ECC 0018FE0C  7C 08 02 A6 */	mflr r0
/* 80192ED0 0018FE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192ED4 0018FE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192ED8 0018FE18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80192EDC 0018FE1C  41 82 00 1C */	beq lbl_80192EF8
/* 80192EE0 0018FE20  3C A0 80 3C */	lis r5, lbl_803BB588@ha
/* 80192EE4 0018FE24  38 05 B5 88 */	addi r0, r5, lbl_803BB588@l
/* 80192EE8 0018FE28  90 1F 00 00 */	stw r0, 0(r31)
/* 80192EEC 0018FE2C  7C 80 07 35 */	extsh. r0, r4
/* 80192EF0 0018FE30  40 81 00 08 */	ble lbl_80192EF8
/* 80192EF4 0018FE34  48 13 BE 49 */	bl __dl
lbl_80192EF8:
/* 80192EF8 0018FE38  7F E3 FB 78 */	mr r3, r31
/* 80192EFC 0018FE3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80192F00 0018FE40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192F04 0018FE44  7C 08 03 A6 */	mtlr r0
/* 80192F08 0018FE48  38 21 00 10 */	addi r1, r1, 0x10
/* 80192F0C 0018FE4C  4E 80 00 20 */	blr 
