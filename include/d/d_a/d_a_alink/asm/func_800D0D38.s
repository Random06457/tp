/* 800D0D38 000CDC78  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800D0D3C 000CDC7C  7C 08 02 A6 */ mflr r0
/* 800D0D40 000CDC80  90 01 00 34 */ stw r0, 0x34(r1)
/* 800D0D44 000CDC84  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 800D0D48 000CDC88  93 C1 00 28 */ stw r30, 0x28(r1)
/* 800D0D4C 000CDC8C  7C 7E 1B 78 */ mr r30, r3
/* 800D0D50 000CDC90  A8 03 00 08 */ lha r0, 8(r3)
/* 800D0D54 000CDC94  2C 00 01 B4 */ cmpwi r0, 0x1b4
/* 800D0D58 000CDC98  40 82 00 7C */ bne lbl_800D0DD4
/* 800D0D5C 000CDC9C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D0D60 000CDCA0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D0D64 000CDCA4  83 E3 5D B4 */ lwz r31, 0x5db4(r3)
/* 800D0D68 000CDCA8  C0 5F 04 D8 */ lfs f2, 0x4d8(r31)
/* 800D0D6C 000CDCAC  C0 1F 04 D0 */ lfs f0, 0x4d0(r31)
/* 800D0D70 000CDCB0  D0 01 00 08 */ stfs f0, 8(r1)
/* 800D0D74 000CDCB4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D0D78 000CDCB8  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 800D0D7C 000CDCBC  D0 41 00 10 */ stfs f2, 0x10(r1)
/* 800D0D80 000CDCC0  C0 5E 04 D8 */ lfs f2, 0x4d8(r30)
/* 800D0D84 000CDCC4  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 800D0D88 000CDCC8  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800D0D8C 000CDCCC  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 800D0D90 000CDCD0  D0 41 00 1C */ stfs f2, 0x1c(r1)
/* 800D0D94 000CDCD4  38 61 00 08 */ addi r3, r1, 8
/* 800D0D98 000CDCD8  38 81 00 14 */ addi r4, r1, 0x14
/* 800D0D9C 000CDCDC  48 27 66 01 */ bl PSVECSquareDistance
/* 800D0DA0 000CDCE0  C0 02 92 CC */ lfs f0, lbl_80452CCC-_SDA2_BASE_(r2)
/* 800D0DA4 000CDCE4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D0DA8 000CDCE8  40 80 00 44 */ bge lbl_800D0DEC
/* 800D0DAC 000CDCEC  C0 3F 04 D4 */ lfs f1, 0x4d4(r31)
/* 800D0DB0 000CDCF0  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800D0DB4 000CDCF4  EC 01 00 28 */ fsubs f0, f1, f0
/* 800D0DB8 000CDCF8  FC 00 02 10 */ fabs f0, f0
/* 800D0DBC 000CDCFC  FC 20 00 18 */ frsp f1, f0
/* 800D0DC0 000CDD00  C0 02 92 D0 */ lfs f0, lbl_80452CD0-_SDA2_BASE_(r2)
/* 800D0DC4 000CDD04  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D0DC8 000CDD08  40 80 00 24 */ bge lbl_800D0DEC
/* 800D0DCC 000CDD0C  7F C3 F3 78 */ mr r3, r30
/* 800D0DD0 000CDD10  48 00 00 20 */ b lbl_800D0DF0
lbl_800D0DD4:
/* 800D0DD4 000CDD14  2C 00 02 0E */ cmpwi r0, 0x20e
/* 800D0DD8 000CDD18  40 82 00 14 */ bne lbl_800D0DEC
/* 800D0DDC 000CDD1C  88 1E 27 40 */ lbz r0, 0x2740(r30)
/* 800D0DE0 000CDD20  28 00 00 00 */ cmplwi r0, 0
/* 800D0DE4 000CDD24  41 82 00 08 */ beq lbl_800D0DEC
/* 800D0DE8 000CDD28  48 00 00 08 */ b lbl_800D0DF0
lbl_800D0DEC:
/* 800D0DEC 000CDD2C  38 60 00 00 */ li r3, 0
lbl_800D0DF0:
/* 800D0DF0 000CDD30  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 800D0DF4 000CDD34  83 C1 00 28 */ lwz r30, 0x28(r1)
/* 800D0DF8 000CDD38  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800D0DFC 000CDD3C  7C 08 03 A6 */ mtlr r0
/* 800D0E00 000CDD40  38 21 00 30 */ addi r1, r1, 0x30
/* 800D0E04 000CDD44  4E 80 00 20 */ blr
