/* 80167EF4 00164E34  94 21 FF 30 */ stwu r1, -0xd0(r1)
/* 80167EF8 00164E38  7C 08 02 A6 */ mflr r0
/* 80167EFC 00164E3C  90 01 00 D4 */ stw r0, 0xd4(r1)
/* 80167F00 00164E40  DB E1 00 C0 */ stfd f31, 0xc0(r1)
/* 80167F04 00164E44  F3 E1 00 C8 */ psq_st f31, 200(r1), 0, 0
/* 80167F08 00164E48  93 E1 00 BC */ stw r31, 0xbc(r1)
/* 80167F0C 00164E4C  93 C1 00 B8 */ stw r30, 0xb8(r1)
/* 80167F10 00164E50  7C 9E 23 78 */ mr r30, r4
/* 80167F14 00164E54  C3 E2 9C AC */ lfs f31, lbl_804536AC-_SDA2_BASE_(r2)
/* 80167F18 00164E58  C0 04 00 00 */ lfs f0, 0(r4)
/* 80167F1C 00164E5C  D0 01 00 08 */ stfs f0, 8(r1)
/* 80167F20 00164E60  C0 04 00 04 */ lfs f0, 4(r4)
/* 80167F24 00164E64  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80167F28 00164E68  C0 04 00 08 */ lfs f0, 8(r4)
/* 80167F2C 00164E6C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80167F30 00164E70  38 61 00 68 */ addi r3, r1, 0x68
/* 80167F34 00164E74  4B F1 10 C1 */ bl dBgS_RoofChk
/* 80167F38 00164E78  38 61 00 8C */ addi r3, r1, 0x8c
/* 80167F3C 00164E7C  4B F1 0F B1 */ bl dBgS_PolyPassChk_NS_SetUnderwaterRoof
/* 80167F40 00164E80  C0 01 00 08 */ lfs f0, 8(r1)
/* 80167F44 00164E84  D0 01 00 A4 */ stfs f0, 0xa4(r1)
/* 80167F48 00164E88  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80167F4C 00164E8C  D0 01 00 A8 */ stfs f0, 0xa8(r1)
/* 80167F50 00164E90  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80167F54 00164E94  D0 01 00 AC */ stfs f0, 0xac(r1)
/* 80167F58 00164E98  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80167F5C 00164E9C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80167F60 00164EA0  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 80167F64 00164EA4  7F E3 FB 78 */ mr r3, r31
/* 80167F68 00164EA8  38 81 00 68 */ addi r4, r1, 0x68
/* 80167F6C 00164EAC  4B F0 D5 31 */ bl dBgS_NS_RoofChk
/* 80167F70 00164EB0  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80167F74 00164EB4  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 80167F78 00164EB8  40 80 00 08 */ bge lbl_80167F80
/* 80167F7C 00164EBC  D0 21 00 0C */ stfs f1, 0xc(r1)
lbl_80167F80:
/* 80167F80 00164EC0  38 61 00 14 */ addi r3, r1, 0x14
/* 80167F84 00164EC4  4B F0 FA 7D */ bl dBgS_CamGndChk_Wtr
/* 80167F88 00164EC8  38 61 00 14 */ addi r3, r1, 0x14
/* 80167F8C 00164ECC  38 81 00 08 */ addi r4, r1, 8
/* 80167F90 00164ED0  48 0F FD 99 */ bl cBgS_GndChk_NS_SetPos_X1_
/* 80167F94 00164ED4  7F E3 FB 78 */ mr r3, r31
/* 80167F98 00164ED8  38 81 00 14 */ addi r4, r1, 0x14
/* 80167F9C 00164EDC  4B F0 C5 05 */ bl cBgS_NS_GroundCross
/* 80167FA0 00164EE0  C0 1E 00 04 */ lfs f0, 4(r30)
/* 80167FA4 00164EE4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80167FA8 00164EE8  40 81 00 08 */ ble lbl_80167FB0
/* 80167FAC 00164EEC  FF E0 08 90 */ fmr f31, f1
lbl_80167FB0:
/* 80167FB0 00164EF0  38 61 00 14 */ addi r3, r1, 0x14
/* 80167FB4 00164EF4  38 80 FF FF */ li r4, -1
/* 80167FB8 00164EF8  4B F0 FA E1 */ bl dBgS_CamGndChk_Wtr_NS_dtor
/* 80167FBC 00164EFC  38 61 00 68 */ addi r3, r1, 0x68
/* 80167FC0 00164F00  38 80 FF FF */ li r4, -1
/* 80167FC4 00164F04  4B F1 10 CD */ bl dBgS_RoofChk_NS_dtor
/* 80167FC8 00164F08  FC 20 F8 90 */ fmr f1, f31
/* 80167FCC 00164F0C  E3 E1 00 C8 */ psq_l f31, 200(r1), 0, 0
/* 80167FD0 00164F10  CB E1 00 C0 */ lfd f31, 0xc0(r1)
/* 80167FD4 00164F14  83 E1 00 BC */ lwz r31, 0xbc(r1)
/* 80167FD8 00164F18  83 C1 00 B8 */ lwz r30, 0xb8(r1)
/* 80167FDC 00164F1C  80 01 00 D4 */ lwz r0, 0xd4(r1)
/* 80167FE0 00164F20  7C 08 03 A6 */ mtlr r0
/* 80167FE4 00164F24  38 21 00 D0 */ addi r1, r1, 0xd0
/* 80167FE8 00164F28  4E 80 00 20 */ blr
