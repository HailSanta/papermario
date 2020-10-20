.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240220_A642B0
/* A642B0 80240220 27BDFC78 */  addiu     $sp, $sp, -0x388
/* A642B4 80240224 AFB60378 */  sw        $s6, 0x378($sp)
/* A642B8 80240228 0080B02D */  daddu     $s6, $a0, $zero
/* A642BC 8024022C AFBF037C */  sw        $ra, 0x37c($sp)
/* A642C0 80240230 AFB50374 */  sw        $s5, 0x374($sp)
/* A642C4 80240234 AFB40370 */  sw        $s4, 0x370($sp)
/* A642C8 80240238 AFB3036C */  sw        $s3, 0x36c($sp)
/* A642CC 8024023C AFB20368 */  sw        $s2, 0x368($sp)
/* A642D0 80240240 AFB10364 */  sw        $s1, 0x364($sp)
/* A642D4 80240244 AFB00360 */  sw        $s0, 0x360($sp)
/* A642D8 80240248 F7B40380 */  sdc1      $f20, 0x380($sp)
/* A642DC 8024024C 8ED20148 */  lw        $s2, 0x148($s6)
/* A642E0 80240250 86440008 */  lh        $a0, 8($s2)
/* A642E4 80240254 0C00EABB */  jal       get_npc_unsafe
/* A642E8 80240258 00A0802D */   daddu    $s0, $a1, $zero
/* A642EC 8024025C 86440008 */  lh        $a0, 8($s2)
/* A642F0 80240260 0040882D */  daddu     $s1, $v0, $zero
/* A642F4 80240264 0C00FB3A */  jal       get_enemy
/* A642F8 80240268 2484FFFF */   addiu    $a0, $a0, -1
/* A642FC 8024026C 84440008 */  lh        $a0, 8($v0)
/* A64300 80240270 0C00EABB */  jal       get_npc_unsafe
/* A64304 80240274 0000A82D */   daddu    $s5, $zero, $zero
/* A64308 80240278 27B30020 */  addiu     $s3, $sp, 0x20
/* A6430C 8024027C 16000005 */  bnez      $s0, .L80240294
/* A64310 80240280 0040A02D */   daddu    $s4, $v0, $zero
/* A64314 80240284 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A64318 80240288 30420004 */  andi      $v0, $v0, 4
/* A6431C 8024028C 10400018 */  beqz      $v0, .L802402F0
/* A64320 80240290 00000000 */   nop      
.L80240294:
/* A64324 80240294 3C030024 */  lui       $v1, 0x24
/* A64328 80240298 34630102 */  ori       $v1, $v1, 0x102
/* A6432C 8024029C 3C041620 */  lui       $a0, 0x1620
/* A64330 802402A0 AEC00070 */  sw        $zero, 0x70($s6)
/* A64334 802402A4 8E220000 */  lw        $v0, ($s1)
/* A64338 802402A8 34840040 */  ori       $a0, $a0, 0x40
/* A6433C 802402AC A620008E */  sh        $zero, 0x8e($s1)
/* A64340 802402B0 00431025 */  or        $v0, $v0, $v1
/* A64344 802402B4 AE220000 */  sw        $v0, ($s1)
/* A64348 802402B8 8E420000 */  lw        $v0, ($s2)
/* A6434C 802402BC 3C013ECC */  lui       $at, 0x3ecc
/* A64350 802402C0 3421CCCD */  ori       $at, $at, 0xcccd
/* A64354 802402C4 44810000 */  mtc1      $at, $f0
/* A64358 802402C8 00441025 */  or        $v0, $v0, $a0
/* A6435C 802402CC AE420000 */  sw        $v0, ($s2)
/* A64360 802402D0 E6200054 */  swc1      $f0, 0x54($s1)
/* A64364 802402D4 E6200058 */  swc1      $f0, 0x58($s1)
/* A64368 802402D8 8E4300B0 */  lw        $v1, 0xb0($s2)
/* A6436C 802402DC 30620004 */  andi      $v0, $v1, 4
/* A64370 802402E0 10400003 */  beqz      $v0, .L802402F0
/* A64374 802402E4 2402FFFB */   addiu    $v0, $zero, -5
/* A64378 802402E8 00621024 */  and       $v0, $v1, $v0
/* A6437C 802402EC AE4200B0 */  sw        $v0, 0xb0($s2)
.L802402F0:
/* A64380 802402F0 8EC30070 */  lw        $v1, 0x70($s6)
/* A64384 802402F4 2C620005 */  sltiu     $v0, $v1, 5
/* A64388 802402F8 10400101 */  beqz      $v0, .L80240700
/* A6438C 802402FC 00031080 */   sll      $v0, $v1, 2
/* A64390 80240300 3C018024 */  lui       $at, 0x8024
/* A64394 80240304 00220821 */  addu      $at, $at, $v0
/* A64398 80240308 8C222F70 */  lw        $v0, 0x2f70($at)
/* A6439C 8024030C 00400008 */  jr        $v0
/* A643A0 80240310 00000000 */   nop      
/* A643A4 80240314 3C01C47A */  lui       $at, 0xc47a
/* A643A8 80240318 44810000 */  mtc1      $at, $f0
/* A643AC 8024031C 24020014 */  addiu     $v0, $zero, 0x14
/* A643B0 80240320 AE400078 */  sw        $zero, 0x78($s2)
/* A643B4 80240324 A62200A6 */  sh        $v0, 0xa6($s1)
/* A643B8 80240328 A62200A8 */  sh        $v0, 0xa8($s1)
/* A643BC 8024032C 24020001 */  addiu     $v0, $zero, 1
/* A643C0 80240330 AE200038 */  sw        $zero, 0x38($s1)
/* A643C4 80240334 AE200040 */  sw        $zero, 0x40($s1)
/* A643C8 80240338 E620003C */  swc1      $f0, 0x3c($s1)
/* A643CC 8024033C AE40006C */  sw        $zero, 0x6c($s2)
/* A643D0 80240340 AEC20070 */  sw        $v0, 0x70($s6)
/* A643D4 80240344 8E50006C */  lw        $s0, 0x6c($s2)
/* A643D8 80240348 24020001 */  addiu     $v0, $zero, 1
/* A643DC 8024034C 160200EC */  bne       $s0, $v0, .L80240700
/* A643E0 80240350 24150002 */   addiu    $s5, $zero, 2
/* A643E4 80240354 AE55006C */  sw        $s5, 0x6c($s2)
/* A643E8 80240358 C6800038 */  lwc1      $f0, 0x38($s4)
/* A643EC 8024035C E6600038 */  swc1      $f0, 0x38($s3)
/* A643F0 80240360 C680003C */  lwc1      $f0, 0x3c($s4)
/* A643F4 80240364 E660003C */  swc1      $f0, 0x3c($s3)
/* A643F8 80240368 C6800040 */  lwc1      $f0, 0x40($s4)
/* A643FC 8024036C E6600040 */  swc1      $f0, 0x40($s3)
/* A64400 80240370 C6820034 */  lwc1      $f2, 0x34($s4)
/* A64404 80240374 3C014387 */  lui       $at, 0x4387
/* A64408 80240378 44810000 */  mtc1      $at, $f0
/* A6440C 8024037C 00000000 */  nop       
/* A64410 80240380 46020001 */  sub.s     $f0, $f0, $f2
/* A64414 80240384 C6480074 */  lwc1      $f8, 0x74($s2)
/* A64418 80240388 46804220 */  cvt.s.w   $f8, $f8
/* A6441C 8024038C 44054000 */  mfc1      $a1, $f8
/* A64420 80240390 44060000 */  mfc1      $a2, $f0
/* A64424 80240394 0C00EA95 */  jal       npc_move_heading
/* A64428 80240398 0260202D */   daddu    $a0, $s3, $zero
/* A6442C 8024039C C6600038 */  lwc1      $f0, 0x38($s3)
/* A64430 802403A0 E6200038 */  swc1      $f0, 0x38($s1)
/* A64434 802403A4 C680003C */  lwc1      $f0, 0x3c($s4)
/* A64438 802403A8 C6420070 */  lwc1      $f2, 0x70($s2)
/* A6443C 802403AC 468010A0 */  cvt.s.w   $f2, $f2
/* A64440 802403B0 46020000 */  add.s     $f0, $f0, $f2
/* A64444 802403B4 3C014024 */  lui       $at, 0x4024
/* A64448 802403B8 4481A800 */  mtc1      $at, $f21
/* A6444C 802403BC 4480A000 */  mtc1      $zero, $f20
/* A64450 802403C0 E620003C */  swc1      $f0, 0x3c($s1)
/* A64454 802403C4 C6600040 */  lwc1      $f0, 0x40($s3)
/* A64458 802403C8 E6200040 */  swc1      $f0, 0x40($s1)
/* A6445C 802403CC A2500007 */  sb        $s0, 7($s2)
/* A64460 802403D0 C6200038 */  lwc1      $f0, 0x38($s1)
/* A64464 802403D4 3C014066 */  lui       $at, 0x4066
/* A64468 802403D8 34216666 */  ori       $at, $at, 0x6666
/* A6446C 802403DC 44811000 */  mtc1      $at, $f2
/* A64470 802403E0 4600020D */  trunc.w.s $f8, $f0
/* A64474 802403E4 44024000 */  mfc1      $v0, $f8
/* A64478 802403E8 00000000 */  nop       
/* A6447C 802403EC A6420010 */  sh        $v0, 0x10($s2)
/* A64480 802403F0 C620003C */  lwc1      $f0, 0x3c($s1)
/* A64484 802403F4 3C13800F */  lui       $s3, %hi(gPlayerStatusPtr)
/* A64488 802403F8 26737B30 */  addiu     $s3, $s3, %lo(gPlayerStatusPtr)
/* A6448C 802403FC 4600020D */  trunc.w.s $f8, $f0
/* A64490 80240400 44024000 */  mfc1      $v0, $f8
/* A64494 80240404 00000000 */  nop       
/* A64498 80240408 A6420012 */  sh        $v0, 0x12($s2)
/* A6449C 8024040C C6200040 */  lwc1      $f0, 0x40($s1)
/* A644A0 80240410 8E630000 */  lw        $v1, ($s3)
/* A644A4 80240414 4600020D */  trunc.w.s $f8, $f0
/* A644A8 80240418 44024000 */  mfc1      $v0, $f8
/* A644AC 8024041C 00000000 */  nop       
/* A644B0 80240420 A6420014 */  sh        $v0, 0x14($s2)
/* A644B4 80240424 E6220018 */  swc1      $f2, 0x18($s1)
/* A644B8 80240428 C460002C */  lwc1      $f0, 0x2c($v1)
/* A644BC 8024042C C6220038 */  lwc1      $f2, 0x38($s1)
/* A644C0 80240430 46000021 */  cvt.d.s   $f0, $f0
/* A644C4 80240434 46340000 */  add.d     $f0, $f0, $f20
/* A644C8 80240438 C4640028 */  lwc1      $f4, 0x28($v1)
/* A644CC 8024043C 44806000 */  mtc1      $zero, $f12
/* A644D0 80240440 46041081 */  sub.s     $f2, $f2, $f4
/* A644D4 80240444 C62E003C */  lwc1      $f14, 0x3c($s1)
/* A644D8 80240448 46200020 */  cvt.s.d   $f0, $f0
/* A644DC 8024044C 46001085 */  abs.s     $f2, $f2
/* A644E0 80240450 44070000 */  mfc1      $a3, $f0
/* A644E4 80240454 44061000 */  mfc1      $a2, $f2
/* A644E8 80240458 0C00A720 */  jal       atan2
/* A644EC 8024045C 00000000 */   nop      
/* A644F0 80240460 3C018024 */  lui       $at, 0x8024
/* A644F4 80240464 D4222F88 */  ldc1      $f2, 0x2f88($at)
/* A644F8 80240468 46000021 */  cvt.d.s   $f0, $f0
/* A644FC 8024046C 46220001 */  sub.d     $f0, $f0, $f2
/* A64500 80240470 46200020 */  cvt.s.d   $f0, $f0
/* A64504 80240474 4600020D */  trunc.w.s $f8, $f0
/* A64508 80240478 44044000 */  mfc1      $a0, $f8
/* A6450C 8024047C 00000000 */  nop       
/* A64510 80240480 00042400 */  sll       $a0, $a0, 0x10
/* A64514 80240484 0C00A4F5 */  jal       cosine
/* A64518 80240488 00042403 */   sra      $a0, $a0, 0x10
/* A6451C 8024048C C6220018 */  lwc1      $f2, 0x18($s1)
/* A64520 80240490 46020002 */  mul.s     $f0, $f0, $f2
/* A64524 80240494 00000000 */  nop       
/* A64528 80240498 C62C0038 */  lwc1      $f12, 0x38($s1)
/* A6452C 8024049C C62E0040 */  lwc1      $f14, 0x40($s1)
/* A64530 802404A0 8E620000 */  lw        $v0, ($s3)
/* A64534 802404A4 E620001C */  swc1      $f0, 0x1c($s1)
/* A64538 802404A8 8C460028 */  lw        $a2, 0x28($v0)
/* A6453C 802404AC 0C00A720 */  jal       atan2
/* A64540 802404B0 8C470030 */   lw       $a3, 0x30($v0)
/* A64544 802404B4 8E620000 */  lw        $v0, ($s3)
/* A64548 802404B8 E620000C */  swc1      $f0, 0xc($s1)
/* A6454C 802404BC C440002C */  lwc1      $f0, 0x2c($v0)
/* A64550 802404C0 46000021 */  cvt.d.s   $f0, $f0
/* A64554 802404C4 46340000 */  add.d     $f0, $f0, $f20
/* A64558 802404C8 46200020 */  cvt.s.d   $f0, $f0
/* A6455C 802404CC E7A00010 */  swc1      $f0, 0x10($sp)
/* A64560 802404D0 C4400030 */  lwc1      $f0, 0x30($v0)
/* A64564 802404D4 E7A00014 */  swc1      $f0, 0x14($sp)
/* A64568 802404D8 C62C0038 */  lwc1      $f12, 0x38($s1)
/* A6456C 802404DC C62E003C */  lwc1      $f14, 0x3c($s1)
/* A64570 802404E0 8E260040 */  lw        $a2, 0x40($s1)
/* A64574 802404E4 0C00A7CB */  jal       dist3D
/* A64578 802404E8 8C470028 */   lw       $a3, 0x28($v0)
/* A6457C 802404EC C6220018 */  lwc1      $f2, 0x18($s1)
/* A64580 802404F0 46020003 */  div.s     $f0, $f0, $f2
/* A64584 802404F4 4600020D */  trunc.w.s $f8, $f0
/* A64588 802404F8 44104000 */  mfc1      $s0, $f8
/* A6458C 802404FC 00000000 */  nop       
/* A64590 80240500 5A000001 */  blezl     $s0, .L80240508
/* A64594 80240504 24100001 */   addiu    $s0, $zero, 1
.L80240508:
/* A64598 80240508 8E620000 */  lw        $v0, ($s3)
/* A6459C 8024050C C624003C */  lwc1      $f4, 0x3c($s1)
/* A645A0 80240510 3C014120 */  lui       $at, 0x4120
/* A645A4 80240514 44811000 */  mtc1      $at, $f2
/* A645A8 80240518 C4400028 */  lwc1      $f0, 0x28($v0)
/* A645AC 8024051C E7A00010 */  swc1      $f0, 0x10($sp)
/* A645B0 80240520 C440002C */  lwc1      $f0, 0x2c($v0)
/* A645B4 80240524 46020000 */  add.s     $f0, $f0, $f2
/* A645B8 80240528 3C014160 */  lui       $at, 0x4160
/* A645BC 8024052C 44811000 */  mtc1      $at, $f2
/* A645C0 80240530 00000000 */  nop       
/* A645C4 80240534 46022100 */  add.s     $f4, $f4, $f2
/* A645C8 80240538 46020000 */  add.s     $f0, $f0, $f2
/* A645CC 8024053C 44062000 */  mfc1      $a2, $f4
/* A645D0 80240540 E7A00014 */  swc1      $f0, 0x14($sp)
/* A645D4 80240544 C4400030 */  lwc1      $f0, 0x30($v0)
/* A645D8 80240548 AFB0001C */  sw        $s0, 0x1c($sp)
/* A645DC 8024054C E7A00018 */  swc1      $f0, 0x18($sp)
/* A645E0 80240550 8E250038 */  lw        $a1, 0x38($s1)
/* A645E4 80240554 8E270040 */  lw        $a3, 0x40($s1)
/* A645E8 80240558 0C01BFD4 */  jal       func_8006FF50
/* A645EC 8024055C 0000202D */   daddu    $a0, $zero, $zero
/* A645F0 80240560 AE420078 */  sw        $v0, 0x78($s2)
/* A645F4 80240564 A630008E */  sh        $s0, 0x8e($s1)
/* A645F8 80240568 080901C0 */  j         .L80240700
/* A645FC 8024056C AED50070 */   sw       $s5, 0x70($s6)
/* A64600 80240570 9622008E */  lhu       $v0, 0x8e($s1)
/* A64604 80240574 2442FFFF */  addiu     $v0, $v0, -1
/* A64608 80240578 A622008E */  sh        $v0, 0x8e($s1)
/* A6460C 8024057C 00021400 */  sll       $v0, $v0, 0x10
/* A64610 80240580 58400001 */  blezl     $v0, .L80240588
/* A64614 80240584 24150014 */   addiu    $s5, $zero, 0x14
.L80240588:
/* A64618 80240588 16A0000A */  bnez      $s5, .L802405B4
/* A6461C 8024058C 00000000 */   nop      
/* A64620 80240590 8E250018 */  lw        $a1, 0x18($s1)
/* A64624 80240594 8E26000C */  lw        $a2, 0xc($s1)
/* A64628 80240598 0C00EA95 */  jal       npc_move_heading
/* A6462C 8024059C 0220202D */   daddu    $a0, $s1, $zero
/* A64630 802405A0 C620003C */  lwc1      $f0, 0x3c($s1)
/* A64634 802405A4 C622001C */  lwc1      $f2, 0x1c($s1)
/* A64638 802405A8 46020000 */  add.s     $f0, $f0, $f2
/* A6463C 802405AC 080901C0 */  j         .L80240700
/* A64640 802405B0 E620003C */   swc1     $f0, 0x3c($s1)
.L802405B4:
/* A64644 802405B4 862200A8 */  lh        $v0, 0xa8($s1)
/* A64648 802405B8 3C013FE0 */  lui       $at, 0x3fe0
/* A6464C 802405BC 44810800 */  mtc1      $at, $f1
/* A64650 802405C0 44800000 */  mtc1      $zero, $f0
/* A64654 802405C4 44821000 */  mtc1      $v0, $f2
/* A64658 802405C8 00000000 */  nop       
/* A6465C 802405CC 468010A1 */  cvt.d.w   $f2, $f2
/* A64660 802405D0 46201082 */  mul.d     $f2, $f2, $f0
/* A64664 802405D4 00000000 */  nop       
/* A64668 802405D8 C620003C */  lwc1      $f0, 0x3c($s1)
/* A6466C 802405DC AE20001C */  sw        $zero, 0x1c($s1)
/* A64670 802405E0 46000021 */  cvt.d.s   $f0, $f0
/* A64674 802405E4 46220001 */  sub.d     $f0, $f0, $f2
/* A64678 802405E8 AE200018 */  sw        $zero, 0x18($s1)
/* A6467C 802405EC 24020003 */  addiu     $v0, $zero, 3
/* A64680 802405F0 46200020 */  cvt.s.d   $f0, $f0
/* A64684 802405F4 E620003C */  swc1      $f0, 0x3c($s1)
/* A64688 802405F8 AE42006C */  sw        $v0, 0x6c($s2)
/* A6468C 802405FC 24020004 */  addiu     $v0, $zero, 4
/* A64690 80240600 A620008E */  sh        $zero, 0x8e($s1)
/* A64694 80240604 080901C0 */  j         .L80240700
/* A64698 80240608 AEC20070 */   sw       $v0, 0x70($s6)
/* A6469C 8024060C 9622008E */  lhu       $v0, 0x8e($s1)
/* A646A0 80240610 24420001 */  addiu     $v0, $v0, 1
/* A646A4 80240614 A622008E */  sh        $v0, 0x8e($s1)
/* A646A8 80240618 00021400 */  sll       $v0, $v0, 0x10
/* A646AC 8024061C 00021C03 */  sra       $v1, $v0, 0x10
/* A646B0 80240620 28620007 */  slti      $v0, $v1, 7
/* A646B4 80240624 10400027 */  beqz      $v0, .L802406C4
/* A646B8 80240628 24020007 */   addiu    $v0, $zero, 7
/* A646BC 8024062C 8622008E */  lh        $v0, 0x8e($s1)
/* A646C0 80240630 3C01401C */  lui       $at, 0x401c
/* A646C4 80240634 44810800 */  mtc1      $at, $f1
/* A646C8 80240638 44800000 */  mtc1      $zero, $f0
/* A646CC 8024063C 44822000 */  mtc1      $v0, $f4
/* A646D0 80240640 00000000 */  nop       
/* A646D4 80240644 46802120 */  cvt.s.w   $f4, $f4
/* A646D8 80240648 46002121 */  cvt.d.s   $f4, $f4
/* A646DC 8024064C 46202102 */  mul.d     $f4, $f4, $f0
/* A646E0 80240650 00000000 */  nop       
/* A646E4 80240654 44821000 */  mtc1      $v0, $f2
/* A646E8 80240658 00000000 */  nop       
/* A646EC 8024065C 468010A0 */  cvt.s.w   $f2, $f2
/* A646F0 80240660 460010A1 */  cvt.d.s   $f2, $f2
/* A646F4 80240664 46201082 */  mul.d     $f2, $f2, $f0
/* A646F8 80240668 00000000 */  nop       
/* A646FC 8024066C C620003C */  lwc1      $f0, 0x3c($s1)
/* A64700 80240670 3C01400C */  lui       $at, 0x400c
/* A64704 80240674 44813800 */  mtc1      $at, $f7
/* A64708 80240678 44803000 */  mtc1      $zero, $f6
/* A6470C 8024067C 46000021 */  cvt.d.s   $f0, $f0
/* A64710 80240680 46260001 */  sub.d     $f0, $f0, $f6
/* A64714 80240684 3C014034 */  lui       $at, 0x4034
/* A64718 80240688 44813800 */  mtc1      $at, $f7
/* A6471C 8024068C 44803000 */  mtc1      $zero, $f6
/* A64720 80240690 00000000 */  nop       
/* A64724 80240694 46262100 */  add.d     $f4, $f4, $f6
/* A64728 80240698 46200020 */  cvt.s.d   $f0, $f0
/* A6472C 8024069C E620003C */  swc1      $f0, 0x3c($s1)
/* A64730 802406A0 46261080 */  add.d     $f2, $f2, $f6
/* A64734 802406A4 4620220D */  trunc.w.d $f8, $f4
/* A64738 802406A8 44024000 */  mfc1      $v0, $f8
/* A6473C 802406AC 00000000 */  nop       
/* A64740 802406B0 A62200A6 */  sh        $v0, 0xa6($s1)
/* A64744 802406B4 4620120D */  trunc.w.d $f8, $f2
/* A64748 802406B8 44024000 */  mfc1      $v0, $f8
/* A6474C 802406BC 080901C0 */  j         .L80240700
/* A64750 802406C0 A62200A8 */   sh       $v0, 0xa8($s1)
.L802406C4:
/* A64754 802406C4 1462000A */  bne       $v1, $v0, .L802406F0
/* A64758 802406C8 28620010 */   slti     $v0, $v1, 0x10
/* A6475C 802406CC 3C01C47A */  lui       $at, 0xc47a
/* A64760 802406D0 44810000 */  mtc1      $at, $f0
/* A64764 802406D4 24020014 */  addiu     $v0, $zero, 0x14
/* A64768 802406D8 AE200038 */  sw        $zero, 0x38($s1)
/* A6476C 802406DC AE200040 */  sw        $zero, 0x40($s1)
/* A64770 802406E0 A62200A6 */  sh        $v0, 0xa6($s1)
/* A64774 802406E4 A62200A8 */  sh        $v0, 0xa8($s1)
/* A64778 802406E8 080901C0 */  j         .L80240700
/* A6477C 802406EC E620003C */   swc1     $f0, 0x3c($s1)
.L802406F0:
/* A64780 802406F0 14400003 */  bnez      $v0, .L80240700
/* A64784 802406F4 00000000 */   nop      
/* A64788 802406F8 AE40006C */  sw        $zero, 0x6c($s2)
/* A6478C 802406FC AEC00070 */  sw        $zero, 0x70($s6)
.L80240700:
/* A64790 80240700 8FBF037C */  lw        $ra, 0x37c($sp)
/* A64794 80240704 8FB60378 */  lw        $s6, 0x378($sp)
/* A64798 80240708 8FB50374 */  lw        $s5, 0x374($sp)
/* A6479C 8024070C 8FB40370 */  lw        $s4, 0x370($sp)
/* A647A0 80240710 8FB3036C */  lw        $s3, 0x36c($sp)
/* A647A4 80240714 8FB20368 */  lw        $s2, 0x368($sp)
/* A647A8 80240718 8FB10364 */  lw        $s1, 0x364($sp)
/* A647AC 8024071C 8FB00360 */  lw        $s0, 0x360($sp)
/* A647B0 80240720 D7B40380 */  ldc1      $f20, 0x380($sp)
/* A647B4 80240724 0000102D */  daddu     $v0, $zero, $zero
/* A647B8 80240728 03E00008 */  jr        $ra
/* A647BC 8024072C 27BD0388 */   addiu    $sp, $sp, 0x388
