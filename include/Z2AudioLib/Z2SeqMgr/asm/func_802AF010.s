/* 802AF010 002ABF50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AF014 002ABF54  7C 08 02 A6 */	mflr r0
/* 802AF018 002ABF58  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AF01C 002ABF5C  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF020 002ABF60  48 0B 31 B9 */	bl _savegpr_28
/* 802AF024 002ABF64  7C 7C 1B 78 */	mr r28, r3
/* 802AF028 002ABF68  7C 9D 23 78 */	mr r29, r4
/* 802AF02C 002ABF6C  7C BE 2B 78 */	mr r30, r5
/* 802AF030 002ABF70  7C DF 33 78 */	mr r31, r6
/* 802AF034 002ABF74  3C 80 01 00 */	lis r4, 0x0100005A@ha
/* 802AF038 002ABF78  38 04 00 5A */	addi r0, r4, 0x0100005A@l
/* 802AF03C 002ABF7C  7C 1D 00 00 */	cmpw r29, r0
/* 802AF040 002ABF80  41 82 01 84 */	beq lbl_802AF1C4
/* 802AF044 002ABF84  40 80 00 30 */	bge lbl_802AF074
/* 802AF048 002ABF88  38 04 00 0D */	addi r0, r4, 0xd
/* 802AF04C 002ABF8C  7C 1D 00 00 */	cmpw r29, r0
/* 802AF050 002ABF90  41 82 00 B8 */	beq lbl_802AF108
/* 802AF054 002ABF94  40 80 00 10 */	bge lbl_802AF064
/* 802AF058 002ABF98  2C 1D FF FF */	cmpwi r29, -1
/* 802AF05C 002ABF9C  41 82 03 94 */	beq lbl_802AF3F0
/* 802AF060 002ABFA0  48 00 01 E0 */	b lbl_802AF240
lbl_802AF064:
/* 802AF064 002ABFA4  38 04 00 13 */	addi r0, r4, 0x13
/* 802AF068 002ABFA8  7C 1D 00 00 */	cmpw r29, r0
/* 802AF06C 002ABFAC  41 82 00 C0 */	beq lbl_802AF12C
/* 802AF070 002ABFB0  48 00 01 D0 */	b lbl_802AF240
lbl_802AF074:
/* 802AF074 002ABFB4  38 04 00 95 */	addi r0, r4, 0x95
/* 802AF078 002ABFB8  7C 1D 00 00 */	cmpw r29, r0
/* 802AF07C 002ABFBC  41 82 01 94 */	beq lbl_802AF210
/* 802AF080 002ABFC0  40 80 00 24 */	bge lbl_802AF0A4
/* 802AF084 002ABFC4  38 04 00 86 */	addi r0, r4, 0x86
/* 802AF088 002ABFC8  7C 1D 00 00 */	cmpw r29, r0
/* 802AF08C 002ABFCC  41 82 01 68 */	beq lbl_802AF1F4
/* 802AF090 002ABFD0  41 80 01 B0 */	blt lbl_802AF240
/* 802AF094 002ABFD4  38 04 00 89 */	addi r0, r4, 0x89
/* 802AF098 002ABFD8  7C 1D 00 00 */	cmpw r29, r0
/* 802AF09C 002ABFDC  40 80 01 A4 */	bge lbl_802AF240
/* 802AF0A0 002ABFE0  48 00 01 70 */	b lbl_802AF210
lbl_802AF0A4:
/* 802AF0A4 002ABFE4  3C 80 02 00 */	lis r4, 0x0200005D@ha
/* 802AF0A8 002ABFE8  38 84 00 5D */	addi r4, r4, 0x0200005D@l
/* 802AF0AC 002ABFEC  7C 1D 20 00 */	cmpw r29, r4
/* 802AF0B0 002ABFF0  41 82 00 0C */	beq lbl_802AF0BC
/* 802AF0B4 002ABFF4  48 00 01 8C */	b lbl_802AF240
/* 802AF0B8 002ABFF8  48 00 03 38 */	b lbl_802AF3F0
lbl_802AF0BC:
/* 802AF0BC 002ABFFC  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 802AF0C0 002AC000  38 00 00 21 */	li r0, 0x21
/* 802AF0C4 002AC004  90 1C 00 80 */	stw r0, 0x80(r28)
/* 802AF0C8 002AC008  C0 62 BF 98 */	lfs f3, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF0CC 002AC00C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF0D0 002AC010  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 802AF0D4 002AC014  C8 22 BF A8 */	lfd f1, lbl_804559A8-_SDA2_BASE_(r2)
/* 802AF0D8 002AC018  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF0DC 002AC01C  3C 00 43 30 */	lis r0, 0x4330
/* 802AF0E0 002AC020  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF0E4 002AC024  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF0E8 002AC028  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF0EC 002AC02C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF0F0 002AC030  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 802AF0F4 002AC034  D0 7C 00 7C */	stfs f3, 0x7c(r28)
/* 802AF0F8 002AC038  48 00 0A 9D */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 802AF0FC 002AC03C  7F 83 E3 78 */	mr r3, r28
/* 802AF100 002AC040  48 00 0D 19 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 802AF104 002AC044  48 00 02 EC */	b lbl_802AF3F0
lbl_802AF108:
/* 802AF108 002AC048  3B E0 00 01 */	li r31, 1
/* 802AF10C 002AC04C  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF110 002AC050  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 802AF114 002AC054  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF118 002AC058  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802AF11C 002AC05C  38 00 00 00 */	li r0, 0
/* 802AF120 002AC060  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802AF124 002AC064  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 802AF128 002AC068  48 00 01 18 */	b lbl_802AF240
lbl_802AF12C:
/* 802AF12C 002AC06C  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AF130 002AC070  28 03 00 00 */	cmplwi r3, 0
/* 802AF134 002AC074  41 82 00 10 */	beq lbl_802AF144
/* 802AF138 002AC078  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AF13C 002AC07C  90 01 00 08 */	stw r0, 8(r1)
/* 802AF140 002AC080  48 00 00 08 */	b lbl_802AF148
lbl_802AF144:
/* 802AF144 002AC084  38 00 FF FF */	li r0, -1
lbl_802AF148:
/* 802AF148 002AC088  7C 1D 00 40 */	cmplw r29, r0
/* 802AF14C 002AC08C  41 82 02 A4 */	beq lbl_802AF3F0
/* 802AF150 002AC090  38 00 00 00 */	li r0, 0
/* 802AF154 002AC094  80 6D 86 00 */	lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802AF158 002AC098  98 03 00 1C */	stb r0, 0x1c(r3)
/* 802AF15C 002AC09C  80 6D 86 00 */	lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802AF160 002AC0A0  38 80 00 00 */	li r4, 0
/* 802AF164 002AC0A4  48 00 77 7D */	bl setSceneExist__10Z2SceneMgrFb
/* 802AF168 002AC0A8  7F 83 E3 78 */	mr r3, r28
/* 802AF16C 002AC0AC  38 80 00 01 */	li r4, 1
/* 802AF170 002AC0B0  48 00 4F F5 */	bl Z2SeqMgr_NS_setBattleBgmOff
/* 802AF174 002AC0B4  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802AF178 002AC0B8  38 63 07 28 */	addi r3, r3, 0x728
/* 802AF17C 002AC0BC  38 80 00 00 */	li r4, 0
/* 802AF180 002AC0C0  4B FF 2C BD */	bl JAISeqMgr_NS_stop_X1_
/* 802AF184 002AC0C4  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802AF188 002AC0C8  38 63 07 9C */	addi r3, r3, 0x79c
/* 802AF18C 002AC0CC  38 80 00 00 */	li r4, 0
/* 802AF190 002AC0D0  4B FF 4E D9 */	bl JAIStreamMgr_NS_stop_X1_
/* 802AF194 002AC0D4  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802AF198 002AC0D8  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802AF19C 002AC0DC  38 81 00 10 */	addi r4, r1, 0x10
/* 802AF1A0 002AC0E0  7F 85 E3 78 */	mr r5, r28
/* 802AF1A4 002AC0E4  38 C0 00 00 */	li r6, 0
/* 802AF1A8 002AC0E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF1AC 002AC0EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF1B0 002AC0F0  7D 89 03 A6 */	mtctr r12
/* 802AF1B4 002AC0F4  4E 80 04 21 */	bctrl 
/* 802AF1B8 002AC0F8  38 00 00 FF */	li r0, 0xff
/* 802AF1BC 002AC0FC  98 1C 00 BC */	stb r0, 0xbc(r28)
/* 802AF1C0 002AC100  48 00 02 30 */	b lbl_802AF3F0
lbl_802AF1C4:
/* 802AF1C4 002AC104  80 6D 8D E0 */	lwz r3, lbl_80451360-_SDA_BASE_(r13)
/* 802AF1C8 002AC108  28 03 00 00 */	cmplwi r3, 0
/* 802AF1CC 002AC10C  41 82 00 74 */	beq lbl_802AF240
/* 802AF1D0 002AC110  80 63 00 04 */	lwz r3, 4(r3)
/* 802AF1D4 002AC114  28 03 00 00 */	cmplwi r3, 0
/* 802AF1D8 002AC118  41 82 00 68 */	beq lbl_802AF240
/* 802AF1DC 002AC11C  C0 23 00 04 */	lfs f1, 4(r3)
/* 802AF1E0 002AC120  C0 02 BF A0 */	lfs f0, lbl_804559A0-_SDA2_BASE_(r2)
/* 802AF1E4 002AC124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AF1E8 002AC128  40 81 00 58 */	ble lbl_802AF240
/* 802AF1EC 002AC12C  3B A4 00 65 */	addi r29, r4, 0x65
/* 802AF1F0 002AC130  48 00 00 50 */	b lbl_802AF240
lbl_802AF1F4:
/* 802AF1F4 002AC134  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF1F8 002AC138  D0 1C 00 74 */	stfs f0, 0x74(r28)
/* 802AF1FC 002AC13C  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF200 002AC140  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 802AF204 002AC144  38 00 00 00 */	li r0, 0
/* 802AF208 002AC148  90 1C 00 80 */	stw r0, 0x80(r28)
/* 802AF20C 002AC14C  D0 1C 00 7C */	stfs f0, 0x7c(r28)
lbl_802AF210:
/* 802AF210 002AC150  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802AF214 002AC154  28 03 00 00 */	cmplwi r3, 0
/* 802AF218 002AC158  41 82 00 0C */	beq lbl_802AF224
/* 802AF21C 002AC15C  38 80 00 00 */	li r4, 0
/* 802AF220 002AC160  4B FF 32 BD */	bl stop__8JAISoundFUl
lbl_802AF224:
/* 802AF224 002AC164  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF228 002AC168  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 802AF22C 002AC16C  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF230 002AC170  D0 1C 00 68 */	stfs f0, 0x68(r28)
/* 802AF234 002AC174  38 00 00 00 */	li r0, 0
/* 802AF238 002AC178  90 1C 00 70 */	stw r0, 0x70(r28)
/* 802AF23C 002AC17C  D0 1C 00 6C */	stfs f0, 0x6c(r28)
lbl_802AF240:
/* 802AF240 002AC180  80 6D 85 FC */	lwz r3, lbl_80450B7C-_SDA_BASE_(r13)
/* 802AF244 002AC184  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802AF248 002AC188  28 00 00 09 */	cmplwi r0, 9
/* 802AF24C 002AC18C  40 82 00 54 */	bne lbl_802AF2A0
/* 802AF250 002AC190  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AF254 002AC194  28 03 00 00 */	cmplwi r3, 0
/* 802AF258 002AC198  41 82 00 0C */	beq lbl_802AF264
/* 802AF25C 002AC19C  38 80 00 00 */	li r4, 0
/* 802AF260 002AC1A0  4B FF 32 7D */	bl stop__8JAISoundFUl
lbl_802AF264:
/* 802AF264 002AC1A4  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF268 002AC1A8  40 82 00 48 */	bne lbl_802AF2B0
/* 802AF26C 002AC1AC  80 7C 00 04 */	lwz r3, 4(r28)
/* 802AF270 002AC1B0  28 03 00 00 */	cmplwi r3, 0
/* 802AF274 002AC1B4  41 82 00 0C */	beq lbl_802AF280
/* 802AF278 002AC1B8  38 80 00 00 */	li r4, 0
/* 802AF27C 002AC1BC  4B FF 32 61 */	bl stop__8JAISoundFUl
lbl_802AF280:
/* 802AF280 002AC1C0  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF284 002AC1C4  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 802AF288 002AC1C8  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF28C 002AC1CC  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802AF290 002AC1D0  38 00 00 00 */	li r0, 0
/* 802AF294 002AC1D4  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802AF298 002AC1D8  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 802AF29C 002AC1DC  48 00 00 14 */	b lbl_802AF2B0
lbl_802AF2A0:
/* 802AF2A0 002AC1E0  7F 83 E3 78 */	mr r3, r28
/* 802AF2A4 002AC1E4  38 80 00 00 */	li r4, 0
/* 802AF2A8 002AC1E8  7F E5 FB 78 */	mr r5, r31
/* 802AF2AC 002AC1EC  48 00 01 5D */	bl bgmStop__8Z2SeqMgrFUll
lbl_802AF2B0:
/* 802AF2B0 002AC1F0  3C 1D FF 00 */	addis r0, r29, 0xff00
/* 802AF2B4 002AC1F4  28 00 00 00 */	cmplwi r0, 0
/* 802AF2B8 002AC1F8  41 82 00 0C */	beq lbl_802AF2C4
/* 802AF2BC 002AC1FC  28 00 00 01 */	cmplwi r0, 1
/* 802AF2C0 002AC200  40 82 00 10 */	bne lbl_802AF2D0
lbl_802AF2C4:
/* 802AF2C4 002AC204  7F 83 E3 78 */	mr r3, r28
/* 802AF2C8 002AC208  48 00 61 95 */	bl Z2SeqMgr_NS_fieldBgmStart
/* 802AF2CC 002AC20C  48 00 00 30 */	b lbl_802AF2FC
lbl_802AF2D0:
/* 802AF2D0 002AC210  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802AF2D4 002AC214  80 6D 85 E0 */	lwz r3, lbl_80450B60-_SDA_BASE_(r13)
/* 802AF2D8 002AC218  38 81 00 0C */	addi r4, r1, 0xc
/* 802AF2DC 002AC21C  7F 85 E3 78 */	mr r5, r28
/* 802AF2E0 002AC220  38 C0 00 00 */	li r6, 0
/* 802AF2E4 002AC224  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF2E8 002AC228  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF2EC 002AC22C  7D 89 03 A6 */	mtctr r12
/* 802AF2F0 002AC230  4E 80 04 21 */	bctrl 
/* 802AF2F4 002AC234  38 00 00 FF */	li r0, 0xff
/* 802AF2F8 002AC238  98 1C 00 BC */	stb r0, 0xbc(r28)
lbl_802AF2FC:
/* 802AF2FC 002AC23C  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF300 002AC240  40 82 00 6C */	bne lbl_802AF36C
/* 802AF304 002AC244  28 1E 00 00 */	cmplwi r30, 0
/* 802AF308 002AC248  41 82 00 64 */	beq lbl_802AF36C
/* 802AF30C 002AC24C  C0 22 BF 9C */	lfs f1, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF310 002AC250  D0 3C 00 14 */	stfs f1, 0x14(r28)
/* 802AF314 002AC254  41 82 00 40 */	beq lbl_802AF354
/* 802AF318 002AC258  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 802AF31C 002AC25C  93 DC 00 20 */	stw r30, 0x20(r28)
/* 802AF320 002AC260  C0 62 BF 98 */	lfs f3, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF324 002AC264  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF328 002AC268  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 802AF32C 002AC26C  C8 22 BF A8 */	lfd f1, lbl_804559A8-_SDA2_BASE_(r2)
/* 802AF330 002AC270  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF334 002AC274  3C 00 43 30 */	lis r0, 0x4330
/* 802AF338 002AC278  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF33C 002AC27C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF340 002AC280  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF344 002AC284  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF348 002AC288  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802AF34C 002AC28C  D0 7C 00 1C */	stfs f3, 0x1c(r28)
/* 802AF350 002AC290  48 00 00 1C */	b lbl_802AF36C
lbl_802AF354:
/* 802AF354 002AC294  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF358 002AC298  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 802AF35C 002AC29C  D0 3C 00 18 */	stfs f1, 0x18(r28)
/* 802AF360 002AC2A0  38 00 00 00 */	li r0, 0
/* 802AF364 002AC2A4  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802AF368 002AC2A8  D0 3C 00 1C */	stfs f1, 0x1c(r28)
lbl_802AF36C:
/* 802AF36C 002AC2AC  3C 1D FF 00 */	addis r0, r29, 0xff00
/* 802AF370 002AC2B0  28 00 00 4D */	cmplwi r0, 0x4d
/* 802AF374 002AC2B4  41 82 00 1C */	beq lbl_802AF390
/* 802AF378 002AC2B8  28 00 00 04 */	cmplwi r0, 4
/* 802AF37C 002AC2BC  41 82 00 14 */	beq lbl_802AF390
/* 802AF380 002AC2C0  28 00 00 87 */	cmplwi r0, 0x87
/* 802AF384 002AC2C4  41 82 00 0C */	beq lbl_802AF390
/* 802AF388 002AC2C8  28 00 00 05 */	cmplwi r0, 5
/* 802AF38C 002AC2CC  40 82 00 10 */	bne lbl_802AF39C
lbl_802AF390:
/* 802AF390 002AC2D0  7F 83 E3 78 */	mr r3, r28
/* 802AF394 002AC2D4  38 80 00 00 */	li r4, 0
/* 802AF398 002AC2D8  48 00 0B F5 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_802AF39C:
/* 802AF39C 002AC2DC  88 1C 00 D0 */	lbz r0, 0xd0(r28)
/* 802AF3A0 002AC2E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802AF3A4 002AC2E4  41 82 00 30 */	beq lbl_802AF3D4
/* 802AF3A8 002AC2E8  80 6D 85 FC */	lwz r3, lbl_80450B7C-_SDA_BASE_(r13)
/* 802AF3AC 002AC2EC  48 00 73 89 */	bl checkDayTime__11Z2StatusMgrFv
/* 802AF3B0 002AC2F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AF3B4 002AC2F4  40 82 00 20 */	bne lbl_802AF3D4
/* 802AF3B8 002AC2F8  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF3BC 002AC2FC  D0 1C 00 A4 */	stfs f0, 0xa4(r28)
/* 802AF3C0 002AC300  D0 1C 00 A8 */	stfs f0, 0xa8(r28)
/* 802AF3C4 002AC304  38 00 00 00 */	li r0, 0
/* 802AF3C8 002AC308  90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 802AF3CC 002AC30C  D0 1C 00 AC */	stfs f0, 0xac(r28)
/* 802AF3D0 002AC310  48 00 00 20 */	b lbl_802AF3F0
lbl_802AF3D4:
/* 802AF3D4 002AC314  C0 02 BF 98 */	lfs f0, lbl_80455998-_SDA2_BASE_(r2)
/* 802AF3D8 002AC318  D0 1C 00 A4 */	stfs f0, 0xa4(r28)
/* 802AF3DC 002AC31C  C0 02 BF 9C */	lfs f0, lbl_8045599C-_SDA2_BASE_(r2)
/* 802AF3E0 002AC320  D0 1C 00 A8 */	stfs f0, 0xa8(r28)
/* 802AF3E4 002AC324  38 00 00 00 */	li r0, 0
/* 802AF3E8 002AC328  90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 802AF3EC 002AC32C  D0 1C 00 AC */	stfs f0, 0xac(r28)
lbl_802AF3F0:
/* 802AF3F0 002AC330  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF3F4 002AC334  48 0B 2E 31 */	bl _restgpr_28
/* 802AF3F8 002AC338  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AF3FC 002AC33C  7C 08 03 A6 */	mtlr r0
/* 802AF400 002AC340  38 21 00 30 */	addi r1, r1, 0x30
/* 802AF404 002AC344  4E 80 00 20 */	blr 