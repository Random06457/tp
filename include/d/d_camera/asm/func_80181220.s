/* 80181220 0017E160  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80181224 0017E164  7C 08 02 A6 */ mflr r0
/* 80181228 0017E168  90 01 00 34 */ stw r0, 0x34(r1)
/* 8018122C 0017E16C  39 61 00 30 */ addi r11, r1, 0x30
/* 80181230 0017E170  48 1E 0F 15 */ bl func_80362144
/* 80181234 0017E174  93 E1 00 14 */ stw r31, 0x14(r1)
/* 80181238 0017E178  7C 7F 1B 78 */ mr r31, r3
/* 8018123C 0017E17C  FF A0 08 90 */ fmr f29, f1
/* 80181240 0017E180  FF C0 10 90 */ fmr f30, f2
/* 80181244 0017E184  FF E0 18 90 */ fmr f31, f3
/* 80181248 0017E188  38 80 00 00 */ li r4, 0
/* 8018124C 0017E18C  48 00 00 2D */ bl dCamera_c_NS_SetBlureActor
/* 80181250 0017E190  D3 BF 07 18 */ stfs f29, 0x718(r31)
/* 80181254 0017E194  D3 DF 07 1C */ stfs f30, 0x71c(r31)
/* 80181258 0017E198  D3 FF 07 20 */ stfs f31, 0x720(r31)
/* 8018125C 0017E19C  39 61 00 30 */ addi r11, r1, 0x30
/* 80181260 0017E1A0  48 1E 0F 31 */ bl func_80362190
/* 80181264 0017E1A4  83 E1 00 14 */ lwz r31, 0x14(r1)
/* 80181268 0017E1A8  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8018126C 0017E1AC  7C 08 03 A6 */ mtlr r0
/* 80181270 0017E1B0  38 21 00 30 */ addi r1, r1, 0x30
/* 80181274 0017E1B4  4E 80 00 20 */ blr
