.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218000_439A90
/* 439A90 80218000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 439A94 80218004 F7B60020 */  sdc1      $f22, 0x20($sp)
/* 439A98 80218008 46006586 */  mov.s     $f22, $f12
/* 439A9C 8021800C F7B40018 */  sdc1      $f20, 0x18($sp)
/* 439AA0 80218010 AFBF0010 */  sw        $ra, 0x10($sp)
/* 439AA4 80218014 0C00A3FC */  jal       length2D
/* 439AA8 80218018 46007506 */   mov.s    $f20, $f14
/* 439AAC 8021801C 4600A18D */  trunc.w.s $f6, $f20
/* 439AB0 80218020 44023000 */  mfc1      $v0, $f6
/* 439AB4 80218024 00000000 */  nop       
/* 439AB8 80218028 04420001 */  bltzl     $v0, .L80218030
/* 439ABC 8021802C 00021023 */   negu     $v0, $v0
.L80218030:
/* 439AC0 80218030 44821000 */  mtc1      $v0, $f2
/* 439AC4 80218034 00000000 */  nop       
/* 439AC8 80218038 468010A0 */  cvt.s.w   $f2, $f2
/* 439ACC 8021803C 46001103 */  div.s     $f4, $f2, $f0
/* 439AD0 80218040 0000202D */  daddu     $a0, $zero, $zero
/* 439AD4 80218044 2406005A */  addiu     $a2, $zero, 0x5a
/* 439AD8 80218048 0080282D */  daddu     $a1, $a0, $zero
/* 439ADC 8021804C 3C078022 */  lui       $a3, %hi(D_8021A434)
/* 439AE0 80218050 24E7A434 */  addiu     $a3, $a3, %lo(D_8021A434)
/* 439AE4 80218054 30C2FFFF */  andi      $v0, $a2, 0xffff
.L80218058:
/* 439AE8 80218058 3083FFFF */  andi      $v1, $a0, 0xffff
/* 439AEC 8021805C 00431023 */  subu      $v0, $v0, $v1
/* 439AF0 80218060 00021FC2 */  srl       $v1, $v0, 0x1f
/* 439AF4 80218064 00431021 */  addu      $v0, $v0, $v1
/* 439AF8 80218068 00021043 */  sra       $v0, $v0, 1
/* 439AFC 8021806C 00821821 */  addu      $v1, $a0, $v0
/* 439B00 80218070 3062FFFF */  andi      $v0, $v1, 0xffff
/* 439B04 80218074 00021080 */  sll       $v0, $v0, 2
/* 439B08 80218078 00471021 */  addu      $v0, $v0, $a3
/* 439B0C 8021807C C4400000 */  lwc1      $f0, ($v0)
/* 439B10 80218080 4604003C */  c.lt.s    $f0, $f4
/* 439B14 80218084 00000000 */  nop       
/* 439B18 80218088 45020002 */  bc1fl     .L80218094
/* 439B1C 8021808C 0060302D */   daddu    $a2, $v1, $zero
/* 439B20 80218090 0060202D */  daddu     $a0, $v1, $zero
.L80218094:
/* 439B24 80218094 24A50001 */  addiu     $a1, $a1, 1
/* 439B28 80218098 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 439B2C 8021809C 2C420007 */  sltiu     $v0, $v0, 7
/* 439B30 802180A0 1440FFED */  bnez      $v0, .L80218058
/* 439B34 802180A4 30C2FFFF */   andi     $v0, $a2, 0xffff
/* 439B38 802180A8 3082FFFF */  andi      $v0, $a0, 0xffff
/* 439B3C 802180AC 00021080 */  sll       $v0, $v0, 2
/* 439B40 802180B0 30C3FFFF */  andi      $v1, $a2, 0xffff
/* 439B44 802180B4 3C018022 */  lui       $at, %hi(D_8021A434)
/* 439B48 802180B8 00220821 */  addu      $at, $at, $v0
/* 439B4C 802180BC C422A434 */  lwc1      $f2, %lo(D_8021A434)($at)
/* 439B50 802180C0 00031880 */  sll       $v1, $v1, 2
/* 439B54 802180C4 46041081 */  sub.s     $f2, $f2, $f4
/* 439B58 802180C8 3C018022 */  lui       $at, %hi(D_8021A434)
/* 439B5C 802180CC 00230821 */  addu      $at, $at, $v1
/* 439B60 802180D0 C420A434 */  lwc1      $f0, %lo(D_8021A434)($at)
/* 439B64 802180D4 46040001 */  sub.s     $f0, $f0, $f4
/* 439B68 802180D8 46001085 */  abs.s     $f2, $f2
/* 439B6C 802180DC 46000005 */  abs.s     $f0, $f0
/* 439B70 802180E0 4600103C */  c.lt.s    $f2, $f0
/* 439B74 802180E4 00000000 */  nop       
/* 439B78 802180E8 45000002 */  bc1f      .L802180F4
/* 439B7C 802180EC 00C0182D */   daddu    $v1, $a2, $zero
/* 439B80 802180F0 0080182D */  daddu     $v1, $a0, $zero
.L802180F4:
/* 439B84 802180F4 44800000 */  mtc1      $zero, $f0
/* 439B88 802180F8 00000000 */  nop       
/* 439B8C 802180FC 4600B03C */  c.lt.s    $f22, $f0
/* 439B90 80218100 00000000 */  nop       
/* 439B94 80218104 4500000A */  bc1f      .L80218130
/* 439B98 80218108 00000000 */   nop      
/* 439B9C 8021810C 4614003E */  c.le.s    $f0, $f20
/* 439BA0 80218110 00000000 */  nop       
/* 439BA4 80218114 45000004 */  bc1f      .L80218128
/* 439BA8 80218118 240200B4 */   addiu    $v0, $zero, 0xb4
/* 439BAC 8021811C 00431823 */  subu      $v1, $v0, $v1
/* 439BB0 80218120 44800000 */  mtc1      $zero, $f0
/* 439BB4 80218124 00000000 */  nop       
.L80218128:
/* 439BB8 80218128 4600B03C */  c.lt.s    $f22, $f0
/* 439BBC 8021812C 00000000 */  nop       
.L80218130:
/* 439BC0 80218130 45000005 */  bc1f      .L80218148
/* 439BC4 80218134 00000000 */   nop      
/* 439BC8 80218138 4600A03C */  c.lt.s    $f20, $f0
/* 439BCC 8021813C 00000000 */  nop       
/* 439BD0 80218140 45030001 */  bc1tl     .L80218148
/* 439BD4 80218144 246300B4 */   addiu    $v1, $v1, 0xb4
.L80218148:
/* 439BD8 80218148 44800000 */  mtc1      $zero, $f0
/* 439BDC 8021814C 00000000 */  nop       
/* 439BE0 80218150 4616003E */  c.le.s    $f0, $f22
/* 439BE4 80218154 00000000 */  nop       
/* 439BE8 80218158 45000006 */  bc1f      .L80218174
/* 439BEC 8021815C 00000000 */   nop      
/* 439BF0 80218160 4600A03C */  c.lt.s    $f20, $f0
/* 439BF4 80218164 00000000 */  nop       
/* 439BF8 80218168 45000002 */  bc1f      .L80218174
/* 439BFC 8021816C 24020168 */   addiu    $v0, $zero, 0x168
/* 439C00 80218170 00431823 */  subu      $v1, $v0, $v1
.L80218174:
/* 439C04 80218174 8FBF0010 */  lw        $ra, 0x10($sp)
/* 439C08 80218178 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 439C0C 8021817C D7B40018 */  ldc1      $f20, 0x18($sp)
/* 439C10 80218180 3062FFFF */  andi      $v0, $v1, 0xffff
/* 439C14 80218184 03E00008 */  jr        $ra
/* 439C18 80218188 27BD0028 */   addiu    $sp, $sp, 0x28
