/* 80200F08 001FDE48  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80200F0C 001FDE4C  7C 08 02 A6 */ mflr r0
/* 80200F10 001FDE50  90 01 00 14 */ stw r0, 0x14(r1)
/* 80200F14 001FDE54  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80200F18 001FDE58  7C 7F 1B 79 */ or. r31, r3, r3
/* 80200F1C 001FDE5C  41 82 00 1C */ beq lbl_80200F38
/* 80200F20 001FDE60  3C A0 80 3C */ lis r5, lbl_803BF16C@ha
/* 80200F24 001FDE64  38 05 F1 6C */ addi r0, r5, lbl_803BF16C@l
/* 80200F28 001FDE68  90 1F 00 00 */ stw r0, 0(r31)
/* 80200F2C 001FDE6C  7C 80 07 35 */ extsh. r0, r4
/* 80200F30 001FDE70  40 81 00 08 */ ble lbl_80200F38
/* 80200F34 001FDE74  48 0C DE 09 */ bl __dl__FPv
lbl_80200F38:
/* 80200F38 001FDE78  7F E3 FB 78 */ mr r3, r31
/* 80200F3C 001FDE7C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80200F40 001FDE80  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80200F44 001FDE84  7C 08 03 A6 */ mtlr r0
/* 80200F48 001FDE88  38 21 00 10 */ addi r1, r1, 0x10
/* 80200F4C 001FDE8C  4E 80 00 20 */ blr