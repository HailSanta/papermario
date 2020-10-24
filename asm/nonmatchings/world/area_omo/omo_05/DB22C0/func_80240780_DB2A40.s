.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240780_DB2A40
/* DB2A40 80240780 27BDFF98 */  addiu     $sp, $sp, -0x68
/* DB2A44 80240784 AFB30054 */  sw        $s3, 0x54($sp)
/* DB2A48 80240788 0080982D */  daddu     $s3, $a0, $zero
/* DB2A4C 8024078C AFBF0060 */  sw        $ra, 0x60($sp)
/* DB2A50 80240790 AFB5005C */  sw        $s5, 0x5c($sp)
/* DB2A54 80240794 AFB40058 */  sw        $s4, 0x58($sp)
/* DB2A58 80240798 AFB20050 */  sw        $s2, 0x50($sp)
/* DB2A5C 8024079C AFB1004C */  sw        $s1, 0x4c($sp)
/* DB2A60 802407A0 AFB00048 */  sw        $s0, 0x48($sp)
/* DB2A64 802407A4 8E710148 */  lw        $s1, 0x148($s3)
/* DB2A68 802407A8 86240008 */  lh        $a0, 8($s1)
/* DB2A6C 802407AC 0C00EABB */  jal       get_npc_unsafe
/* DB2A70 802407B0 00A0802D */   daddu    $s0, $a1, $zero
/* DB2A74 802407B4 8E63000C */  lw        $v1, 0xc($s3)
/* DB2A78 802407B8 0260202D */  daddu     $a0, $s3, $zero
/* DB2A7C 802407BC 8C650000 */  lw        $a1, ($v1)
/* DB2A80 802407C0 0C0B1EAF */  jal       get_variable
/* DB2A84 802407C4 0040902D */   daddu    $s2, $v0, $zero
/* DB2A88 802407C8 AFA00018 */  sw        $zero, 0x18($sp)
/* DB2A8C 802407CC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2A90 802407D0 8C630030 */  lw        $v1, 0x30($v1)
/* DB2A94 802407D4 AFA3001C */  sw        $v1, 0x1c($sp)
/* DB2A98 802407D8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2A9C 802407DC 8C63001C */  lw        $v1, 0x1c($v1)
/* DB2AA0 802407E0 AFA30020 */  sw        $v1, 0x20($sp)
/* DB2AA4 802407E4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2AA8 802407E8 8C630024 */  lw        $v1, 0x24($v1)
/* DB2AAC 802407EC AFA30024 */  sw        $v1, 0x24($sp)
/* DB2AB0 802407F0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2AB4 802407F4 8C630028 */  lw        $v1, 0x28($v1)
/* DB2AB8 802407F8 27B50018 */  addiu     $s5, $sp, 0x18
/* DB2ABC 802407FC AFA30028 */  sw        $v1, 0x28($sp)
/* DB2AC0 80240800 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2AC4 80240804 3C014282 */  lui       $at, 0x4282
/* DB2AC8 80240808 44810000 */  mtc1      $at, $f0
/* DB2ACC 8024080C 8C63002C */  lw        $v1, 0x2c($v1)
/* DB2AD0 80240810 0040A02D */  daddu     $s4, $v0, $zero
/* DB2AD4 80240814 E7A00030 */  swc1      $f0, 0x30($sp)
/* DB2AD8 80240818 A7A00034 */  sh        $zero, 0x34($sp)
/* DB2ADC 8024081C 16000005 */  bnez      $s0, .L80240834
/* DB2AE0 80240820 AFA3002C */   sw       $v1, 0x2c($sp)
/* DB2AE4 80240824 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DB2AE8 80240828 30420004 */  andi      $v0, $v0, 4
/* DB2AEC 8024082C 10400044 */  beqz      $v0, .L80240940
/* DB2AF0 80240830 00000000 */   nop      
.L80240834:
/* DB2AF4 80240834 2404F7FF */  addiu     $a0, $zero, -0x801
/* DB2AF8 80240838 AE600070 */  sw        $zero, 0x70($s3)
/* DB2AFC 8024083C A640008E */  sh        $zero, 0x8e($s2)
/* DB2B00 80240840 8E2200CC */  lw        $v0, 0xcc($s1)
/* DB2B04 80240844 8E430000 */  lw        $v1, ($s2)
/* DB2B08 80240848 8C420000 */  lw        $v0, ($v0)
/* DB2B0C 8024084C 00641824 */  and       $v1, $v1, $a0
/* DB2B10 80240850 AE430000 */  sw        $v1, ($s2)
/* DB2B14 80240854 AE420028 */  sw        $v0, 0x28($s2)
/* DB2B18 80240858 8E2200D0 */  lw        $v0, 0xd0($s1)
/* DB2B1C 8024085C 8C420034 */  lw        $v0, 0x34($v0)
/* DB2B20 80240860 54400005 */  bnel      $v0, $zero, .L80240878
/* DB2B24 80240864 2402FDFF */   addiu    $v0, $zero, -0x201
/* DB2B28 80240868 34620200 */  ori       $v0, $v1, 0x200
/* DB2B2C 8024086C 2403FFF7 */  addiu     $v1, $zero, -9
/* DB2B30 80240870 08090220 */  j         .L80240880
/* DB2B34 80240874 00431024 */   and      $v0, $v0, $v1
.L80240878:
/* DB2B38 80240878 00621024 */  and       $v0, $v1, $v0
/* DB2B3C 8024087C 34420008 */  ori       $v0, $v0, 8
.L80240880:
/* DB2B40 80240880 AE420000 */  sw        $v0, ($s2)
/* DB2B44 80240884 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DB2B48 80240888 30420004 */  andi      $v0, $v0, 4
/* DB2B4C 8024088C 10400004 */  beqz      $v0, .L802408A0
/* DB2B50 80240890 24020063 */   addiu    $v0, $zero, 0x63
/* DB2B54 80240894 AE620070 */  sw        $v0, 0x70($s3)
/* DB2B58 80240898 0809022E */  j         .L802408B8
/* DB2B5C 8024089C AE600074 */   sw       $zero, 0x74($s3)
.L802408A0:
/* DB2B60 802408A0 8E220000 */  lw        $v0, ($s1)
/* DB2B64 802408A4 3C034000 */  lui       $v1, 0x4000
/* DB2B68 802408A8 00431024 */  and       $v0, $v0, $v1
/* DB2B6C 802408AC 10400002 */  beqz      $v0, .L802408B8
/* DB2B70 802408B0 2402000C */   addiu    $v0, $zero, 0xc
/* DB2B74 802408B4 AE620070 */  sw        $v0, 0x70($s3)
.L802408B8:
/* DB2B78 802408B8 3C06BFFF */  lui       $a2, 0xbfff
/* DB2B7C 802408BC 34C6FFFF */  ori       $a2, $a2, 0xffff
/* DB2B80 802408C0 27A50038 */  addiu     $a1, $sp, 0x38
/* DB2B84 802408C4 2404FFFB */  addiu     $a0, $zero, -5
/* DB2B88 802408C8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DB2B8C 802408CC 8E230000 */  lw        $v1, ($s1)
/* DB2B90 802408D0 3C0142C8 */  lui       $at, 0x42c8
/* DB2B94 802408D4 44810000 */  mtc1      $at, $f0
/* DB2B98 802408D8 00441024 */  and       $v0, $v0, $a0
/* DB2B9C 802408DC 00661824 */  and       $v1, $v1, $a2
/* DB2BA0 802408E0 AE2200B0 */  sw        $v0, 0xb0($s1)
/* DB2BA4 802408E4 AE230000 */  sw        $v1, ($s1)
/* DB2BA8 802408E8 864200A8 */  lh        $v0, 0xa8($s2)
/* DB2BAC 802408EC 27A70040 */  addiu     $a3, $sp, 0x40
/* DB2BB0 802408F0 E7A00044 */  swc1      $f0, 0x44($sp)
/* DB2BB4 802408F4 C6460038 */  lwc1      $f6, 0x38($s2)
/* DB2BB8 802408F8 C640003C */  lwc1      $f0, 0x3c($s2)
/* DB2BBC 802408FC C6420040 */  lwc1      $f2, 0x40($s2)
/* DB2BC0 80240900 44822000 */  mtc1      $v0, $f4
/* DB2BC4 80240904 00000000 */  nop       
/* DB2BC8 80240908 46802120 */  cvt.s.w   $f4, $f4
/* DB2BCC 8024090C 27A20044 */  addiu     $v0, $sp, 0x44
/* DB2BD0 80240910 46040000 */  add.s     $f0, $f0, $f4
/* DB2BD4 80240914 E7A60038 */  swc1      $f6, 0x38($sp)
/* DB2BD8 80240918 E7A20040 */  swc1      $f2, 0x40($sp)
/* DB2BDC 8024091C E7A0003C */  swc1      $f0, 0x3c($sp)
/* DB2BE0 80240920 AFA20010 */  sw        $v0, 0x10($sp)
/* DB2BE4 80240924 8E440080 */  lw        $a0, 0x80($s2)
/* DB2BE8 80240928 0C0372DF */  jal       func_800DCB7C
/* DB2BEC 8024092C 27A6003C */   addiu    $a2, $sp, 0x3c
/* DB2BF0 80240930 10400003 */  beqz      $v0, .L80240940
/* DB2BF4 80240934 00000000 */   nop      
/* DB2BF8 80240938 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* DB2BFC 8024093C E640003C */  swc1      $f0, 0x3c($s2)
.L80240940:
/* DB2C00 80240940 8E630070 */  lw        $v1, 0x70($s3)
/* DB2C04 80240944 2C620064 */  sltiu     $v0, $v1, 0x64
/* DB2C08 80240948 10400038 */  beqz      $v0, .L80240A2C
/* DB2C0C 8024094C 00031080 */   sll      $v0, $v1, 2
/* DB2C10 80240950 3C018024 */  lui       $at, 0x8024
/* DB2C14 80240954 00220821 */  addu      $at, $at, $v0
/* DB2C18 80240958 8C225460 */  lw        $v0, 0x5460($at)
/* DB2C1C 8024095C 00400008 */  jr        $v0
/* DB2C20 80240960 00000000 */   nop      
/* DB2C24 80240964 0260202D */  daddu     $a0, $s3, $zero
/* DB2C28 80240968 0280282D */  daddu     $a1, $s4, $zero
/* DB2C2C 8024096C 0C012568 */  jal       func_800495A0
/* DB2C30 80240970 02A0302D */   daddu    $a2, $s5, $zero
/* DB2C34 80240974 0260202D */  daddu     $a0, $s3, $zero
/* DB2C38 80240978 0280282D */  daddu     $a1, $s4, $zero
/* DB2C3C 8024097C 0C0125AE */  jal       func_800496B8
/* DB2C40 80240980 02A0302D */   daddu    $a2, $s5, $zero
/* DB2C44 80240984 0809028B */  j         .L80240A2C
/* DB2C48 80240988 00000000 */   nop      
/* DB2C4C 8024098C 0260202D */  daddu     $a0, $s3, $zero
/* DB2C50 80240990 0280282D */  daddu     $a1, $s4, $zero
/* DB2C54 80240994 0C09015B */  jal       func_8024056C_DB282C
/* DB2C58 80240998 02A0302D */   daddu    $a2, $s5, $zero
/* DB2C5C 8024099C 0260202D */  daddu     $a0, $s3, $zero
/* DB2C60 802409A0 0280282D */  daddu     $a1, $s4, $zero
/* DB2C64 802409A4 0C09016F */  jal       func_802405BC_DB287C
/* DB2C68 802409A8 02A0302D */   daddu    $a2, $s5, $zero
/* DB2C6C 802409AC 0809028B */  j         .L80240A2C
/* DB2C70 802409B0 00000000 */   nop      
/* DB2C74 802409B4 0260202D */  daddu     $a0, $s3, $zero
/* DB2C78 802409B8 0280282D */  daddu     $a1, $s4, $zero
/* DB2C7C 802409BC 0C01278F */  jal       func_80049E3C
/* DB2C80 802409C0 02A0302D */   daddu    $a2, $s5, $zero
/* DB2C84 802409C4 0260202D */  daddu     $a0, $s3, $zero
/* DB2C88 802409C8 0280282D */  daddu     $a1, $s4, $zero
/* DB2C8C 802409CC 0C0127B3 */  jal       func_80049ECC
/* DB2C90 802409D0 02A0302D */   daddu    $a2, $s5, $zero
/* DB2C94 802409D4 0809028B */  j         .L80240A2C
/* DB2C98 802409D8 00000000 */   nop      
/* DB2C9C 802409DC 0260202D */  daddu     $a0, $s3, $zero
/* DB2CA0 802409E0 0280282D */  daddu     $a1, $s4, $zero
/* DB2CA4 802409E4 0C0127DF */  jal       func_80049F7C
/* DB2CA8 802409E8 02A0302D */   daddu    $a2, $s5, $zero
/* DB2CAC 802409EC 0260202D */  daddu     $a0, $s3, $zero
/* DB2CB0 802409F0 0280282D */  daddu     $a1, $s4, $zero
/* DB2CB4 802409F4 0C012849 */  jal       func_8004A124
/* DB2CB8 802409F8 02A0302D */   daddu    $a2, $s5, $zero
/* DB2CBC 802409FC 8E630070 */  lw        $v1, 0x70($s3)
/* DB2CC0 80240A00 2402000E */  addiu     $v0, $zero, 0xe
/* DB2CC4 80240A04 14620009 */  bne       $v1, $v0, .L80240A2C
/* DB2CC8 80240A08 00000000 */   nop      
/* DB2CCC 80240A0C 0260202D */  daddu     $a0, $s3, $zero
/* DB2CD0 80240A10 0280282D */  daddu     $a1, $s4, $zero
/* DB2CD4 80240A14 0C0128FA */  jal       func_8004A3E8
/* DB2CD8 80240A18 02A0302D */   daddu    $a2, $s5, $zero
/* DB2CDC 80240A1C 0809028B */  j         .L80240A2C
/* DB2CE0 80240A20 00000000 */   nop      
/* DB2CE4 80240A24 0C0129CF */  jal       func_8004A73C
/* DB2CE8 80240A28 0260202D */   daddu    $a0, $s3, $zero
.L80240A2C:
/* DB2CEC 80240A2C 8FBF0060 */  lw        $ra, 0x60($sp)
/* DB2CF0 80240A30 8FB5005C */  lw        $s5, 0x5c($sp)
/* DB2CF4 80240A34 8FB40058 */  lw        $s4, 0x58($sp)
/* DB2CF8 80240A38 8FB30054 */  lw        $s3, 0x54($sp)
/* DB2CFC 80240A3C 8FB20050 */  lw        $s2, 0x50($sp)
/* DB2D00 80240A40 8FB1004C */  lw        $s1, 0x4c($sp)
/* DB2D04 80240A44 8FB00048 */  lw        $s0, 0x48($sp)
/* DB2D08 80240A48 0000102D */  daddu     $v0, $zero, $zero
/* DB2D0C 80240A4C 03E00008 */  jr        $ra
/* DB2D10 80240A50 27BD0068 */   addiu    $sp, $sp, 0x68