/* 800DC79C 000D96DC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800DC7A0 000D96E0  7C 08 02 A6 */ mflr r0
/* 800DC7A4 000D96E4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800DC7A8 000D96E8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800DC7AC 000D96EC  93 C1 00 08 */ stw r30, 8(r1)
/* 800DC7B0 000D96F0  7C 7E 1B 78 */ mr r30, r3
/* 800DC7B4 000D96F4  80 03 05 78 */ lwz r0, 0x578(r3)
/* 800DC7B8 000D96F8  54 00 02 53 */ rlwinm. r0, r0, 0, 9, 9
/* 800DC7BC 000D96FC  40 82 00 F0 */ bne lbl_800DC8AC
/* 800DC7C0 000D9700  3B E0 00 00 */ li r31, 0
/* 800DC7C4 000D9704  39 40 00 00 */ li r10, 0
/* 800DC7C8 000D9708  38 60 00 00 */ li r3, 0
/* 800DC7CC 000D970C  38 C0 FF FF */ li r6, -1
/* 800DC7D0 000D9710  7C 65 1B 78 */ mr r5, r3
/* 800DC7D4 000D9714  38 00 00 10 */ li r0, 0x10
/* 800DC7D8 000D9718  7C 09 03 A6 */ mtctr r0
lbl_800DC7DC:
/* 800DC7DC 000D971C  39 03 28 B0 */ addi r8, r3, 0x28b0
/* 800DC7E0 000D9720  7C FE 40 2E */ lwzx r7, r30, r8
/* 800DC7E4 000D9724  3C 07 00 01 */ addis r0, r7, 1
/* 800DC7E8 000D9728  28 00 FF FF */ cmplwi r0, 0xffff
/* 800DC7EC 000D972C  41 82 00 34 */ beq lbl_800DC820
/* 800DC7F0 000D9730  39 2A 2F 7C */ addi r9, r10, 0x2f7c
/* 800DC7F4 000D9734  7C FE 48 AE */ lbzx r7, r30, r9
/* 800DC7F8 000D9738  28 07 00 00 */ cmplwi r7, 0
/* 800DC7FC 000D973C  41 82 00 0C */ beq lbl_800DC808
/* 800DC800 000D9740  2C 04 00 00 */ cmpwi r4, 0
/* 800DC804 000D9744  41 82 00 14 */ beq lbl_800DC818
lbl_800DC808:
/* 800DC808 000D9748  7C DE 41 2E */ stwx r6, r30, r8
/* 800DC80C 000D974C  7C BE 49 AE */ stbx r5, r30, r9
/* 800DC810 000D9750  3B FF 00 01 */ addi r31, r31, 1
/* 800DC814 000D9754  48 00 00 0C */ b lbl_800DC820
lbl_800DC818:
/* 800DC818 000D9758  38 07 FF FF */ addi r0, r7, -1
/* 800DC81C 000D975C  7C 1E 49 AE */ stbx r0, r30, r9
lbl_800DC820:
/* 800DC820 000D9760  39 4A 00 01 */ addi r10, r10, 1
/* 800DC824 000D9764  38 63 00 04 */ addi r3, r3, 4
/* 800DC828 000D9768  42 00 FF B4 */ bdnz lbl_800DC7DC
/* 800DC82C 000D976C  7F E0 07 35 */ extsh. r0, r31
/* 800DC830 000D9770  41 82 00 7C */ beq lbl_800DC8AC
/* 800DC834 000D9774  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DC838 000D9778  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DC83C 000D977C  88 03 00 15 */ lbz r0, 0x15(r3)
/* 800DC840 000D9780  28 00 00 FF */ cmplwi r0, 0xff
/* 800DC844 000D9784  41 82 00 5C */ beq lbl_800DC8A0
/* 800DC848 000D9788  38 60 00 43 */ li r3, 0x43
/* 800DC84C 000D978C  38 80 00 01 */ li r4, 1
/* 800DC850 000D9790  4B FB B6 91 */ bl checkItemGet__FUci
/* 800DC854 000D9794  2C 03 00 00 */ cmpwi r3, 0
/* 800DC858 000D9798  41 82 00 48 */ beq lbl_800DC8A0
/* 800DC85C 000D979C  7F E0 07 34 */ extsh r0, r31
/* 800DC860 000D97A0  2C 00 00 01 */ cmpwi r0, 1
/* 800DC864 000D97A4  38 80 00 0E */ li r4, 0xe
/* 800DC868 000D97A8  40 82 00 08 */ bne lbl_800DC870
/* 800DC86C 000D97AC  38 80 00 11 */ li r4, 0x11
lbl_800DC870:
/* 800DC870 000D97B0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DC874 000D97B4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DC878 000D97B8  A8 03 5D F4 */ lha r0, 0x5df4(r3)
/* 800DC87C 000D97BC  7C 00 FA 14 */ add r0, r0, r31
/* 800DC880 000D97C0  B0 03 5D F4 */ sth r0, 0x5df4(r3)
/* 800DC884 000D97C4  38 7E 04 D0 */ addi r3, r30, 0x4d0
/* 800DC888 000D97C8  38 A0 FF FF */ li r5, -1
/* 800DC88C 000D97CC  38 C0 00 00 */ li r6, 0
/* 800DC890 000D97D0  38 E0 00 00 */ li r7, 0
/* 800DC894 000D97D4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DC898 000D97D8  FC 40 08 90 */ fmr f2, f1
/* 800DC89C 000D97DC  4B F3 F9 61 */ bl fopAcM_createItemForSimpleDemo
lbl_800DC8A0:
/* 800DC8A0 000D97E0  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800DC8A4 000D97E4  60 00 00 01 */ ori r0, r0, 1
/* 800DC8A8 000D97E8  90 1E 05 80 */ stw r0, 0x580(r30)
lbl_800DC8AC:
/* 800DC8AC 000D97EC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800DC8B0 000D97F0  83 C1 00 08 */ lwz r30, 8(r1)
/* 800DC8B4 000D97F4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800DC8B8 000D97F8  7C 08 03 A6 */ mtlr r0
/* 800DC8BC 000D97FC  38 21 00 10 */ addi r1, r1, 0x10
/* 800DC8C0 000D9800  4E 80 00 20 */ blr