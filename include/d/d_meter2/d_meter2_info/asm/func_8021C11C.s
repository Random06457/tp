/* 8021C11C 0021905C  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 8021C120 00219060  7C 08 02 A6 */ mflr r0
/* 8021C124 00219064  90 01 00 74 */ stw r0, 0x74(r1)
/* 8021C128 00219068  39 61 00 70 */ addi r11, r1, 0x70
/* 8021C12C 0021906C  48 14 60 AD */ bl _savegpr_28
/* 8021C130 00219070  7C 7C 1B 78 */ mr r28, r3
/* 8021C134 00219074  7C 9D 23 78 */ mr r29, r4
/* 8021C138 00219078  7C BE 2B 78 */ mr r30, r5
/* 8021C13C 0021907C  7C DF 33 78 */ mr r31, r6
/* 8021C140 00219080  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021C144 00219084  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021C148 00219088  88 03 4F AD */ lbz r0, 0x4fad(r3)
/* 8021C14C 0021908C  28 00 00 00 */ cmplwi r0, 0
/* 8021C150 00219090  41 82 00 0C */ beq lbl_8021C15C
/* 8021C154 00219094  38 60 00 00 */ li r3, 0
/* 8021C158 00219098  48 00 00 6C */ b lbl_8021C1C4
lbl_8021C15C:
/* 8021C15C 0021909C  B3 BC 00 A4 */ sth r29, 0xa4(r28)
/* 8021C160 002190A0  38 61 00 08 */ addi r3, r1, 8
/* 8021C164 002190A4  48 02 DD 9D */ bl dMsgFlow_c
/* 8021C168 002190A8  38 61 00 08 */ addi r3, r1, 8
/* 8021C16C 002190AC  38 80 00 00 */ li r4, 0
/* 8021C170 002190B0  57 A5 04 3E */ clrlwi r5, r29, 0x10
/* 8021C174 002190B4  38 C0 00 00 */ li r6, 0
/* 8021C178 002190B8  38 E0 00 00 */ li r7, 0
/* 8021C17C 002190BC  48 02 DE 15 */ bl dMsgFlow_c_NS_init
/* 8021C180 002190C0  38 61 00 08 */ addi r3, r1, 8
/* 8021C184 002190C4  38 80 00 00 */ li r4, 0
/* 8021C188 002190C8  38 A0 00 00 */ li r5, 0
/* 8021C18C 002190CC  38 C0 00 00 */ li r6, 0
/* 8021C190 002190D0  48 02 E1 49 */ bl dMsgFlow_c_NS_doFlow
/* 8021C194 002190D4  3C 60 00 01 */ lis r3, 0x0000FFFF@ha
/* 8021C198 002190D8  38 03 FF FF */ addi r0, r3, 0x0000FFFF@l
/* 8021C19C 002190DC  B0 1C 00 A4 */ sth r0, 0xa4(r28)
/* 8021C1A0 002190E0  38 61 00 08 */ addi r3, r1, 8
/* 8021C1A4 002190E4  48 02 E3 95 */ bl dMsgFlow_c_NS_getMsgNo
/* 8021C1A8 002190E8  B0 7C 00 A6 */ sth r3, 0xa6(r28)
/* 8021C1AC 002190EC  B3 DC 00 A8 */ sth r30, 0xa8(r28)
/* 8021C1B0 002190F0  9B FC 00 F1 */ stb r31, 0xf1(r28)
/* 8021C1B4 002190F4  38 61 00 08 */ addi r3, r1, 8
/* 8021C1B8 002190F8  38 80 FF FF */ li r4, -1
/* 8021C1BC 002190FC  48 02 DD 8D */ bl dMsgFlow_c_NS_dtor
/* 8021C1C0 00219100  38 60 00 01 */ li r3, 1
lbl_8021C1C4:
/* 8021C1C4 00219104  39 61 00 70 */ addi r11, r1, 0x70
/* 8021C1C8 00219108  48 14 60 5D */ bl _restgpr_28
/* 8021C1CC 0021910C  80 01 00 74 */ lwz r0, 0x74(r1)
/* 8021C1D0 00219110  7C 08 03 A6 */ mtlr r0
/* 8021C1D4 00219114  38 21 00 70 */ addi r1, r1, 0x70
/* 8021C1D8 00219118  4E 80 00 20 */ blr
