/* 8021C370 002192B0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8021C374 002192B4  7C 08 02 A6 */ mflr r0
/* 8021C378 002192B8  90 01 00 24 */ stw r0, 0x24(r1)
/* 8021C37C 002192BC  39 61 00 20 */ addi r11, r1, 0x20
/* 8021C380 002192C0  48 14 5E 59 */ bl _savegpr_28
/* 8021C384 002192C4  7C 7C 1B 78 */ mr r28, r3
/* 8021C388 002192C8  7C 9D 23 78 */ mr r29, r4
/* 8021C38C 002192CC  7C BE 2B 78 */ mr r30, r5
/* 8021C390 002192D0  7C DF 33 78 */ mr r31, r6
/* 8021C394 002192D4  7F C3 F3 78 */ mr r3, r30
/* 8021C398 002192D8  3C 80 80 3A */ lis r4, lbl_80399168@ha
/* 8021C39C 002192DC  38 84 91 68 */ addi r4, r4, lbl_80399168@l
/* 8021C3A0 002192E0  48 14 C7 8D */ bl strcpy
/* 8021C3A4 002192E4  80 7C 00 10 */ lwz r3, 0x10(r28)
/* 8021C3A8 002192E8  28 03 00 00 */ cmplwi r3, 0
/* 8021C3AC 002192EC  40 82 00 34 */ bne lbl_8021C3E0
/* 8021C3B0 002192F0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021C3B4 002192F4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021C3B8 002192F8  80 A3 5C F4 */ lwz r5, 0x5cf4(r3)
/* 8021C3BC 002192FC  3C 60 52 4F */ lis r3, 0x524F4F54@ha
/* 8021C3C0 00219300  38 63 4F 54 */ addi r3, r3, 0x524F4F54@l
/* 8021C3C4 00219304  3C 80 80 3A */ lis r4, lbl_80399168@ha
/* 8021C3C8 00219308  38 84 91 68 */ addi r4, r4, lbl_80399168@l
/* 8021C3CC 0021930C  38 84 00 01 */ addi r4, r4, 1
/* 8021C3D0 00219310  48 0B 97 69 */ bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 8021C3D4 00219314  28 03 00 00 */ cmplwi r3, 0
/* 8021C3D8 00219318  40 82 00 08 */ bne lbl_8021C3E0
/* 8021C3DC 0021931C  48 00 01 50 */ b lbl_8021C52C
lbl_8021C3E0:
/* 8021C3E0 00219320  38 83 00 20 */ addi r4, r3, 0x20
/* 8021C3E4 00219324  80 63 00 24 */ lwz r3, 0x24(r3)
/* 8021C3E8 00219328  38 C3 00 08 */ addi r6, r3, 8
/* 8021C3EC 0021932C  7C C4 32 14 */ add r6, r4, r6
/* 8021C3F0 00219330  38 E0 00 00 */ li r7, 0
/* 8021C3F4 00219334  A0 64 00 08 */ lhz r3, 8(r4)
/* 8021C3F8 00219338  48 00 01 00 */ b lbl_8021C4F8
lbl_8021C3FC:
/* 8021C3FC 0021933C  54 E0 04 3E */ clrlwi r0, r7, 0x10
/* 8021C400 00219340  1C 00 00 14 */ mulli r0, r0, 0x14
/* 8021C404 00219344  7C A4 02 14 */ add r5, r4, r0
/* 8021C408 00219348  A0 05 00 14 */ lhz r0, 0x14(r5)
/* 8021C40C 0021934C  7C 1D 00 40 */ cmplw r29, r0
/* 8021C410 00219350  40 82 00 E4 */ bne lbl_8021C4F4
/* 8021C414 00219354  80 05 00 10 */ lwz r0, 0x10(r5)
/* 8021C418 00219358  7C C6 02 14 */ add r6, r6, r0
/* 8021C41C 0021935C  38 E0 00 00 */ li r7, 0
/* 8021C420 00219360  38 60 00 00 */ li r3, 0
/* 8021C424 00219364  48 00 00 AC */ b lbl_8021C4D0
lbl_8021C428:
/* 8021C428 00219368  7C 86 3A 14 */ add r4, r6, r7
/* 8021C42C 0021936C  88 04 00 00 */ lbz r0, 0(r4)
/* 8021C430 00219370  28 00 00 1A */ cmplwi r0, 0x1a
/* 8021C434 00219374  40 82 00 74 */ bne lbl_8021C4A8
/* 8021C438 00219378  88 04 00 02 */ lbz r0, 2(r4)
/* 8021C43C 0021937C  28 00 00 FF */ cmplwi r0, 0xff
/* 8021C440 00219380  40 82 00 58 */ bne lbl_8021C498
/* 8021C444 00219384  88 04 00 03 */ lbz r0, 3(r4)
/* 8021C448 00219388  28 00 00 00 */ cmplwi r0, 0
/* 8021C44C 0021938C  40 82 00 4C */ bne lbl_8021C498
/* 8021C450 00219390  88 04 00 04 */ lbz r0, 4(r4)
/* 8021C454 00219394  28 00 00 02 */ cmplwi r0, 2
/* 8021C458 00219398  40 82 00 40 */ bne lbl_8021C498
/* 8021C45C 0021939C  88 04 00 01 */ lbz r0, 1(r4)
/* 8021C460 002193A0  7C 03 07 74 */ extsb r3, r0
/* 8021C464 002193A4  35 03 FF FA */ addic. r8, r3, -6
/* 8021C468 002193A8  88 04 00 05 */ lbz r0, 5(r4)
/* 8021C46C 002193AC  7C 00 07 74 */ extsb r0, r0
/* 8021C470 002193B0  54 03 08 3C */ slwi r3, r0, 1
/* 8021C474 002193B4  39 20 00 00 */ li r9, 0
/* 8021C478 002193B8  7D 09 03 A6 */ mtctr r8
/* 8021C47C 002193BC  40 81 00 1C */ ble lbl_8021C498
lbl_8021C480:
/* 8021C480 002193C0  38 09 00 06 */ addi r0, r9, 6
/* 8021C484 002193C4  7C 04 00 AE */ lbzx r0, r4, r0
/* 8021C488 002193C8  98 1E 00 00 */ stb r0, 0(r30)
/* 8021C48C 002193CC  3B DE 00 01 */ addi r30, r30, 1
/* 8021C490 002193D0  39 29 00 01 */ addi r9, r9, 1
/* 8021C494 002193D4  42 00 FF EC */ bdnz lbl_8021C480
lbl_8021C498:
/* 8021C498 002193D8  88 04 00 01 */ lbz r0, 1(r4)
/* 8021C49C 002193DC  7C 00 07 74 */ extsb r0, r0
/* 8021C4A0 002193E0  7C E7 02 14 */ add r7, r7, r0
/* 8021C4A4 002193E4  48 00 00 2C */ b lbl_8021C4D0
lbl_8021C4A8:
/* 8021C4A8 002193E8  2C 03 00 00 */ cmpwi r3, 0
/* 8021C4AC 002193EC  40 81 00 0C */ ble lbl_8021C4B8
/* 8021C4B0 002193F0  38 63 FF FF */ addi r3, r3, -1
/* 8021C4B4 002193F4  48 00 00 0C */ b lbl_8021C4C0
lbl_8021C4B8:
/* 8021C4B8 002193F8  98 1E 00 00 */ stb r0, 0(r30)
/* 8021C4BC 002193FC  3B DE 00 01 */ addi r30, r30, 1
lbl_8021C4C0:
/* 8021C4C0 00219400  88 04 00 00 */ lbz r0, 0(r4)
/* 8021C4C4 00219404  7C 00 07 75 */ extsb. r0, r0
/* 8021C4C8 00219408  41 82 00 10 */ beq lbl_8021C4D8
/* 8021C4CC 0021940C  38 E7 00 01 */ addi r7, r7, 1
lbl_8021C4D0:
/* 8021C4D0 00219410  2C 07 02 00 */ cmpwi r7, 0x200
/* 8021C4D4 00219414  41 80 FF 54 */ blt lbl_8021C428
lbl_8021C4D8:
/* 8021C4D8 00219418  28 1F 00 00 */ cmplwi r31, 0
/* 8021C4DC 0021941C  41 82 00 50 */ beq lbl_8021C52C
/* 8021C4E0 00219420  7F E3 FB 78 */ mr r3, r31
/* 8021C4E4 00219424  38 85 00 10 */ addi r4, r5, 0x10
/* 8021C4E8 00219428  38 A0 00 14 */ li r5, 0x14
/* 8021C4EC 0021942C  4B DE 70 55 */ bl func_80003540
/* 8021C4F0 00219430  48 00 00 3C */ b lbl_8021C52C
lbl_8021C4F4:
/* 8021C4F4 00219434  38 E7 00 01 */ addi r7, r7, 1
lbl_8021C4F8:
/* 8021C4F8 00219438  54 E0 04 3E */ clrlwi r0, r7, 0x10
/* 8021C4FC 0021943C  7C 00 18 40 */ cmplw r0, r3
/* 8021C500 00219440  41 80 FE FC */ blt lbl_8021C3FC
/* 8021C504 00219444  80 1C 00 10 */ lwz r0, 0x10(r28)
/* 8021C508 00219448  28 00 00 00 */ cmplwi r0, 0
/* 8021C50C 0021944C  40 82 00 20 */ bne lbl_8021C52C
/* 8021C510 00219450  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021C514 00219454  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021C518 00219458  80 63 5C F4 */ lwz r3, 0x5cf4(r3)
/* 8021C51C 0021945C  81 83 00 00 */ lwz r12, 0(r3)
/* 8021C520 00219460  81 8C 00 24 */ lwz r12, 0x24(r12)
/* 8021C524 00219464  7D 89 03 A6 */ mtctr r12
/* 8021C528 00219468  4E 80 04 21 */ bctrl
lbl_8021C52C:
/* 8021C52C 0021946C  39 61 00 20 */ addi r11, r1, 0x20
/* 8021C530 00219470  48 14 5C F5 */ bl _restgpr_28
/* 8021C534 00219474  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8021C538 00219478  7C 08 03 A6 */ mtlr r0
/* 8021C53C 0021947C  38 21 00 20 */ addi r1, r1, 0x20
/* 8021C540 00219480  4E 80 00 20 */ blr
