/* 800E3994 000E08D4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800E3998 000E08D8  7C 08 02 A6 */ mflr r0
/* 800E399C 000E08DC  90 01 00 34 */ stw r0, 0x34(r1)
/* 800E39A0 000E08E0  DB E1 00 20 */ stfd f31, 0x20(r1)
/* 800E39A4 000E08E4  F3 E1 00 28 */ psq_st f31, 40(r1), 0, 0
/* 800E39A8 000E08E8  DB C1 00 10 */ stfd f30, 0x10(r1)
/* 800E39AC 000E08EC  F3 C1 00 18 */ psq_st f30, 24(r1), 0, 0
/* 800E39B0 000E08F0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800E39B4 000E08F4  7C 7F 1B 78 */ mr r31, r3
/* 800E39B8 000E08F8  FF C0 08 90 */ fmr f30, f1
/* 800E39BC 000E08FC  FF E0 10 90 */ fmr f31, f2
/* 800E39C0 000E0900  28 04 00 00 */ cmplwi r4, 0
/* 800E39C4 000E0904  41 82 00 10 */ beq lbl_800E39D4
/* 800E39C8 000E0908  38 7F 1E 4C */ addi r3, r31, 0x1e4c
/* 800E39CC 000E090C  48 18 47 7D */ bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800E39D0 000E0910  48 00 00 0C */ b lbl_800E39DC
lbl_800E39D4:
/* 800E39D4 000E0914  38 7F 1E 4C */ addi r3, r31, 0x1e4c
/* 800E39D8 000E0918  48 18 47 49 */ bl ClearPi__13cBgS_PolyInfoFv
lbl_800E39DC:
/* 800E39DC 000E091C  C0 22 94 08 */ lfs f1, lbl_80452E08-_SDA2_BASE_(r2)
/* 800E39E0 000E0920  EC 01 07 B2 */ fmuls f0, f1, f30
/* 800E39E4 000E0924  D0 1F 34 2C */ stfs f0, 0x342c(r31)
/* 800E39E8 000E0928  EC 01 07 F2 */ fmuls f0, f1, f31
/* 800E39EC 000E092C  D0 1F 34 30 */ stfs f0, 0x3430(r31)
/* 800E39F0 000E0930  E3 E1 00 28 */ psq_l f31, 40(r1), 0, 0
/* 800E39F4 000E0934  CB E1 00 20 */ lfd f31, 0x20(r1)
/* 800E39F8 000E0938  E3 C1 00 18 */ psq_l f30, 24(r1), 0, 0
/* 800E39FC 000E093C  CB C1 00 10 */ lfd f30, 0x10(r1)
/* 800E3A00 000E0940  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800E3A04 000E0944  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800E3A08 000E0948  7C 08 03 A6 */ mtlr r0
/* 800E3A0C 000E094C  38 21 00 30 */ addi r1, r1, 0x30
/* 800E3A10 000E0950  4E 80 00 20 */ blr