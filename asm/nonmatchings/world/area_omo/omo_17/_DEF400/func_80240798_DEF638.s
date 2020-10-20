.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240798_DEF638
/* DEF638 80240798 27BDFF98 */  addiu     $sp, $sp, -0x68
/* DEF63C 8024079C AFB30054 */  sw        $s3, 0x54($sp)
/* DEF640 802407A0 0080982D */  daddu     $s3, $a0, $zero
/* DEF644 802407A4 AFBF0060 */  sw        $ra, 0x60($sp)
/* DEF648 802407A8 AFB5005C */  sw        $s5, 0x5c($sp)
/* DEF64C 802407AC AFB40058 */  sw        $s4, 0x58($sp)
/* DEF650 802407B0 AFB20050 */  sw        $s2, 0x50($sp)
/* DEF654 802407B4 AFB1004C */  sw        $s1, 0x4c($sp)
/* DEF658 802407B8 AFB00048 */  sw        $s0, 0x48($sp)
/* DEF65C 802407BC 8E710148 */  lw        $s1, 0x148($s3)
/* DEF660 802407C0 86240008 */  lh        $a0, 8($s1)
/* DEF664 802407C4 0C00EABB */  jal       get_npc_unsafe
/* DEF668 802407C8 00A0802D */   daddu    $s0, $a1, $zero
/* DEF66C 802407CC 8E63000C */  lw        $v1, 0xc($s3)
/* DEF670 802407D0 0260202D */  daddu     $a0, $s3, $zero
/* DEF674 802407D4 8C650000 */  lw        $a1, ($v1)
/* DEF678 802407D8 0C0B1EAF */  jal       get_variable
/* DEF67C 802407DC 0040902D */   daddu    $s2, $v0, $zero
/* DEF680 802407E0 AFA00018 */  sw        $zero, 0x18($sp)
/* DEF684 802407E4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DEF688 802407E8 8C630030 */  lw        $v1, 0x30($v1)
/* DEF68C 802407EC AFA3001C */  sw        $v1, 0x1c($sp)
/* DEF690 802407F0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DEF694 802407F4 8C63001C */  lw        $v1, 0x1c($v1)
/* DEF698 802407F8 AFA30020 */  sw        $v1, 0x20($sp)
/* DEF69C 802407FC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DEF6A0 80240800 8C630024 */  lw        $v1, 0x24($v1)
/* DEF6A4 80240804 AFA30024 */  sw        $v1, 0x24($sp)
/* DEF6A8 80240808 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DEF6AC 8024080C 8C630028 */  lw        $v1, 0x28($v1)
/* DEF6B0 80240810 27B50018 */  addiu     $s5, $sp, 0x18
/* DEF6B4 80240814 AFA30028 */  sw        $v1, 0x28($sp)
/* DEF6B8 80240818 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DEF6BC 8024081C 3C014282 */  lui       $at, 0x4282
/* DEF6C0 80240820 44810000 */  mtc1      $at, $f0
/* DEF6C4 80240824 8C63002C */  lw        $v1, 0x2c($v1)
/* DEF6C8 80240828 0040A02D */  daddu     $s4, $v0, $zero
/* DEF6CC 8024082C E7A00030 */  swc1      $f0, 0x30($sp)
/* DEF6D0 80240830 A7A00034 */  sh        $zero, 0x34($sp)
/* DEF6D4 80240834 16000005 */  bnez      $s0, .L8024084C
/* DEF6D8 80240838 AFA3002C */   sw       $v1, 0x2c($sp)
/* DEF6DC 8024083C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DEF6E0 80240840 30420004 */  andi      $v0, $v0, 4
/* DEF6E4 80240844 10400044 */  beqz      $v0, .L80240958
/* DEF6E8 80240848 00000000 */   nop      
.L8024084C:
/* DEF6EC 8024084C 2404F7FF */  addiu     $a0, $zero, -0x801
/* DEF6F0 80240850 AE600070 */  sw        $zero, 0x70($s3)
/* DEF6F4 80240854 A640008E */  sh        $zero, 0x8e($s2)
/* DEF6F8 80240858 8E2200CC */  lw        $v0, 0xcc($s1)
/* DEF6FC 8024085C 8E430000 */  lw        $v1, ($s2)
/* DEF700 80240860 8C420000 */  lw        $v0, ($v0)
/* DEF704 80240864 00641824 */  and       $v1, $v1, $a0
/* DEF708 80240868 AE430000 */  sw        $v1, ($s2)
/* DEF70C 8024086C AE420028 */  sw        $v0, 0x28($s2)
/* DEF710 80240870 8E2200D0 */  lw        $v0, 0xd0($s1)
/* DEF714 80240874 8C420034 */  lw        $v0, 0x34($v0)
/* DEF718 80240878 54400005 */  bnel      $v0, $zero, .L80240890
/* DEF71C 8024087C 2402FDFF */   addiu    $v0, $zero, -0x201
/* DEF720 80240880 34620200 */  ori       $v0, $v1, 0x200
/* DEF724 80240884 2403FFF7 */  addiu     $v1, $zero, -9
/* DEF728 80240888 08090226 */  j         .L80240898
/* DEF72C 8024088C 00431024 */   and      $v0, $v0, $v1
.L80240890:
/* DEF730 80240890 00621024 */  and       $v0, $v1, $v0
/* DEF734 80240894 34420008 */  ori       $v0, $v0, 8
.L80240898:
/* DEF738 80240898 AE420000 */  sw        $v0, ($s2)
/* DEF73C 8024089C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DEF740 802408A0 30420004 */  andi      $v0, $v0, 4
/* DEF744 802408A4 10400004 */  beqz      $v0, .L802408B8
/* DEF748 802408A8 24020063 */   addiu    $v0, $zero, 0x63
/* DEF74C 802408AC AE620070 */  sw        $v0, 0x70($s3)
/* DEF750 802408B0 08090234 */  j         .L802408D0
/* DEF754 802408B4 AE600074 */   sw       $zero, 0x74($s3)
.L802408B8:
/* DEF758 802408B8 8E220000 */  lw        $v0, ($s1)
/* DEF75C 802408BC 3C034000 */  lui       $v1, 0x4000
/* DEF760 802408C0 00431024 */  and       $v0, $v0, $v1
/* DEF764 802408C4 10400002 */  beqz      $v0, .L802408D0
/* DEF768 802408C8 2402000C */   addiu    $v0, $zero, 0xc
/* DEF76C 802408CC AE620070 */  sw        $v0, 0x70($s3)
.L802408D0:
/* DEF770 802408D0 3C06BFFF */  lui       $a2, 0xbfff
/* DEF774 802408D4 34C6FFFF */  ori       $a2, $a2, 0xffff
/* DEF778 802408D8 27A50038 */  addiu     $a1, $sp, 0x38
/* DEF77C 802408DC 2404FFFB */  addiu     $a0, $zero, -5
/* DEF780 802408E0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DEF784 802408E4 8E230000 */  lw        $v1, ($s1)
/* DEF788 802408E8 3C0142C8 */  lui       $at, 0x42c8
/* DEF78C 802408EC 44810000 */  mtc1      $at, $f0
/* DEF790 802408F0 00441024 */  and       $v0, $v0, $a0
/* DEF794 802408F4 00661824 */  and       $v1, $v1, $a2
/* DEF798 802408F8 AE2200B0 */  sw        $v0, 0xb0($s1)
/* DEF79C 802408FC AE230000 */  sw        $v1, ($s1)
/* DEF7A0 80240900 864200A8 */  lh        $v0, 0xa8($s2)
/* DEF7A4 80240904 27A70040 */  addiu     $a3, $sp, 0x40
/* DEF7A8 80240908 E7A00044 */  swc1      $f0, 0x44($sp)
/* DEF7AC 8024090C C6460038 */  lwc1      $f6, 0x38($s2)
/* DEF7B0 80240910 C640003C */  lwc1      $f0, 0x3c($s2)
/* DEF7B4 80240914 C6420040 */  lwc1      $f2, 0x40($s2)
/* DEF7B8 80240918 44822000 */  mtc1      $v0, $f4
/* DEF7BC 8024091C 00000000 */  nop       
/* DEF7C0 80240920 46802120 */  cvt.s.w   $f4, $f4
/* DEF7C4 80240924 27A20044 */  addiu     $v0, $sp, 0x44
/* DEF7C8 80240928 46040000 */  add.s     $f0, $f0, $f4
/* DEF7CC 8024092C E7A60038 */  swc1      $f6, 0x38($sp)
/* DEF7D0 80240930 E7A20040 */  swc1      $f2, 0x40($sp)
/* DEF7D4 80240934 E7A0003C */  swc1      $f0, 0x3c($sp)
/* DEF7D8 80240938 AFA20010 */  sw        $v0, 0x10($sp)
/* DEF7DC 8024093C 8E440080 */  lw        $a0, 0x80($s2)
/* DEF7E0 80240940 0C0372DF */  jal       func_800DCB7C
/* DEF7E4 80240944 27A6003C */   addiu    $a2, $sp, 0x3c
/* DEF7E8 80240948 10400003 */  beqz      $v0, .L80240958
/* DEF7EC 8024094C 00000000 */   nop      
/* DEF7F0 80240950 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* DEF7F4 80240954 E640003C */  swc1      $f0, 0x3c($s2)
.L80240958:
/* DEF7F8 80240958 8E630070 */  lw        $v1, 0x70($s3)
/* DEF7FC 8024095C 2C620064 */  sltiu     $v0, $v1, 0x64
/* DEF800 80240960 10400050 */  beqz      $v0, .L80240AA4
/* DEF804 80240964 00031080 */   sll      $v0, $v1, 2
/* DEF808 80240968 3C018024 */  lui       $at, 0x8024
/* DEF80C 8024096C 00220821 */  addu      $at, $at, $v0
/* DEF810 80240970 8C227620 */  lw        $v0, 0x7620($at)
/* DEF814 80240974 00400008 */  jr        $v0
/* DEF818 80240978 00000000 */   nop      
/* DEF81C 8024097C 0260202D */  daddu     $a0, $s3, $zero
/* DEF820 80240980 0280282D */  daddu     $a1, $s4, $zero
/* DEF824 80240984 0C012568 */  jal       func_800495A0
/* DEF828 80240988 02A0302D */   daddu    $a2, $s5, $zero
/* DEF82C 8024098C 0260202D */  daddu     $a0, $s3, $zero
/* DEF830 80240990 0280282D */  daddu     $a1, $s4, $zero
/* DEF834 80240994 0C0125AE */  jal       func_800496B8
/* DEF838 80240998 02A0302D */   daddu    $a2, $s5, $zero
/* DEF83C 8024099C 080902A9 */  j         .L80240AA4
/* DEF840 802409A0 00000000 */   nop      
/* DEF844 802409A4 0260202D */  daddu     $a0, $s3, $zero
/* DEF848 802409A8 0280282D */  daddu     $a1, $s4, $zero
/* DEF84C 802409AC 0C0126D1 */  jal       func_80049B44
/* DEF850 802409B0 02A0302D */   daddu    $a2, $s5, $zero
/* DEF854 802409B4 0260202D */  daddu     $a0, $s3, $zero
/* DEF858 802409B8 0280282D */  daddu     $a1, $s4, $zero
/* DEF85C 802409BC 0C012701 */  jal       func_80049C04
/* DEF860 802409C0 02A0302D */   daddu    $a2, $s5, $zero
/* DEF864 802409C4 080902A9 */  j         .L80240AA4
/* DEF868 802409C8 00000000 */   nop      
/* DEF86C 802409CC 0260202D */  daddu     $a0, $s3, $zero
/* DEF870 802409D0 0280282D */  daddu     $a1, $s4, $zero
/* DEF874 802409D4 0C01278F */  jal       func_80049E3C
/* DEF878 802409D8 02A0302D */   daddu    $a2, $s5, $zero
/* DEF87C 802409DC 0260202D */  daddu     $a0, $s3, $zero
/* DEF880 802409E0 0280282D */  daddu     $a1, $s4, $zero
/* DEF884 802409E4 0C0127B3 */  jal       func_80049ECC
/* DEF888 802409E8 02A0302D */   daddu    $a2, $s5, $zero
/* DEF88C 802409EC 080902A9 */  j         .L80240AA4
/* DEF890 802409F0 00000000 */   nop      
/* DEF894 802409F4 0260202D */  daddu     $a0, $s3, $zero
/* DEF898 802409F8 0280282D */  daddu     $a1, $s4, $zero
/* DEF89C 802409FC 0C0127DF */  jal       func_80049F7C
/* DEF8A0 80240A00 02A0302D */   daddu    $a2, $s5, $zero
/* DEF8A4 80240A04 0260202D */  daddu     $a0, $s3, $zero
/* DEF8A8 80240A08 0280282D */  daddu     $a1, $s4, $zero
/* DEF8AC 80240A0C 0C012849 */  jal       func_8004A124
/* DEF8B0 80240A10 02A0302D */   daddu    $a2, $s5, $zero
/* DEF8B4 80240A14 8E630070 */  lw        $v1, 0x70($s3)
/* DEF8B8 80240A18 2402000E */  addiu     $v0, $zero, 0xe
/* DEF8BC 80240A1C 14620021 */  bne       $v1, $v0, .L80240AA4
/* DEF8C0 80240A20 00000000 */   nop      
/* DEF8C4 80240A24 0260202D */  daddu     $a0, $s3, $zero
/* DEF8C8 80240A28 0280282D */  daddu     $a1, $s4, $zero
/* DEF8CC 80240A2C 0C090158 */  jal       func_80240560
/* DEF8D0 80240A30 02A0302D */   daddu    $a2, $s5, $zero
/* DEF8D4 80240A34 8E630070 */  lw        $v1, 0x70($s3)
/* DEF8D8 80240A38 2402000F */  addiu     $v0, $zero, 0xf
/* DEF8DC 80240A3C 14620019 */  bne       $v1, $v0, .L80240AA4
/* DEF8E0 80240A40 00000000 */   nop      
/* DEF8E4 80240A44 0260202D */  daddu     $a0, $s3, $zero
/* DEF8E8 80240A48 0280282D */  daddu     $a1, $s4, $zero
/* DEF8EC 80240A4C 0C090174 */  jal       func_802405D0
/* DEF8F0 80240A50 02A0302D */   daddu    $a2, $s5, $zero
/* DEF8F4 80240A54 8E630070 */  lw        $v1, 0x70($s3)
/* DEF8F8 80240A58 24020010 */  addiu     $v0, $zero, 0x10
/* DEF8FC 80240A5C 14620011 */  bne       $v1, $v0, .L80240AA4
/* DEF900 80240A60 00000000 */   nop      
/* DEF904 80240A64 0260202D */  daddu     $a0, $s3, $zero
/* DEF908 80240A68 0280282D */  daddu     $a1, $s4, $zero
/* DEF90C 80240A6C 0C0901A8 */  jal       func_802406A0
/* DEF910 80240A70 02A0302D */   daddu    $a2, $s5, $zero
/* DEF914 80240A74 8E630070 */  lw        $v1, 0x70($s3)
/* DEF918 80240A78 24020011 */  addiu     $v0, $zero, 0x11
/* DEF91C 80240A7C 14620009 */  bne       $v1, $v0, .L80240AA4
/* DEF920 80240A80 00000000 */   nop      
/* DEF924 80240A84 0260202D */  daddu     $a0, $s3, $zero
/* DEF928 80240A88 0280282D */  daddu     $a1, $s4, $zero
/* DEF92C 80240A8C 0C0901CE */  jal       func_80240738
/* DEF930 80240A90 02A0302D */   daddu    $a2, $s5, $zero
/* DEF934 80240A94 080902A9 */  j         .L80240AA4
/* DEF938 80240A98 00000000 */   nop      
/* DEF93C 80240A9C 0C0129CF */  jal       func_8004A73C
/* DEF940 80240AA0 0260202D */   daddu    $a0, $s3, $zero
.L80240AA4:
/* DEF944 80240AA4 8FBF0060 */  lw        $ra, 0x60($sp)
/* DEF948 80240AA8 8FB5005C */  lw        $s5, 0x5c($sp)
/* DEF94C 80240AAC 8FB40058 */  lw        $s4, 0x58($sp)
/* DEF950 80240AB0 8FB30054 */  lw        $s3, 0x54($sp)
/* DEF954 80240AB4 8FB20050 */  lw        $s2, 0x50($sp)
/* DEF958 80240AB8 8FB1004C */  lw        $s1, 0x4c($sp)
/* DEF95C 80240ABC 8FB00048 */  lw        $s0, 0x48($sp)
/* DEF960 80240AC0 0000102D */  daddu     $v0, $zero, $zero
/* DEF964 80240AC4 03E00008 */  jr        $ra
/* DEF968 80240AC8 27BD0068 */   addiu    $sp, $sp, 0x68
