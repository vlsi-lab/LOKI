riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber1024/enc/build/enc/enc

/home/alessandra.dolmeta/pqc_riscv/test/kyber1024/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	3a20506f          	j	1c00d3a2 <__rt_handle_illegal_instr>
1c008004:	0840006f          	j	1c008088 <pos_no_irq_handler>
1c008008:	0800006f          	j	1c008088 <pos_no_irq_handler>
1c00800c:	07c0006f          	j	1c008088 <pos_no_irq_handler>
1c008010:	0780006f          	j	1c008088 <pos_no_irq_handler>
1c008014:	0740006f          	j	1c008088 <pos_no_irq_handler>
1c008018:	0700006f          	j	1c008088 <pos_no_irq_handler>
1c00801c:	06c0006f          	j	1c008088 <pos_no_irq_handler>
1c008020:	0680006f          	j	1c008088 <pos_no_irq_handler>
1c008024:	0640006f          	j	1c008088 <pos_no_irq_handler>
1c008028:	0600006f          	j	1c008088 <pos_no_irq_handler>
1c00802c:	05c0006f          	j	1c008088 <pos_no_irq_handler>
1c008030:	0580006f          	j	1c008088 <pos_no_irq_handler>
1c008034:	0540006f          	j	1c008088 <pos_no_irq_handler>
1c008038:	0500006f          	j	1c008088 <pos_no_irq_handler>
1c00803c:	04c0006f          	j	1c008088 <pos_no_irq_handler>
1c008040:	0480006f          	j	1c008088 <pos_no_irq_handler>
1c008044:	0440006f          	j	1c008088 <pos_no_irq_handler>
1c008048:	0400006f          	j	1c008088 <pos_no_irq_handler>
1c00804c:	03c0006f          	j	1c008088 <pos_no_irq_handler>
1c008050:	0380006f          	j	1c008088 <pos_no_irq_handler>
1c008054:	0340006f          	j	1c008088 <pos_no_irq_handler>
1c008058:	0300006f          	j	1c008088 <pos_no_irq_handler>
1c00805c:	02c0006f          	j	1c008088 <pos_no_irq_handler>
1c008060:	0280006f          	j	1c008088 <pos_no_irq_handler>
1c008064:	0240006f          	j	1c008088 <pos_no_irq_handler>
1c008068:	0200006f          	j	1c008088 <pos_no_irq_handler>
1c00806c:	01c0006f          	j	1c008088 <pos_no_irq_handler>
1c008070:	0180006f          	j	1c008088 <pos_no_irq_handler>
1c008074:	0140006f          	j	1c008088 <pos_no_irq_handler>
1c008078:	0100006f          	j	1c008088 <pos_no_irq_handler>
1c00807c:	00c0006f          	j	1c008088 <pos_no_irq_handler>

1c008080 <_start>:
1c008080:	0400006f          	j	1c0080c0 <_stext>

1c008084 <pos_illegal_instr>:
1c008084:	31e0506f          	j	1c00d3a2 <__rt_handle_illegal_instr>

1c008088 <pos_no_irq_handler>:
1c008088:	30200073          	mret

1c00808c <pos_semihosting_call>:
1c00808c:	00100073          	ebreak
1c008090:	00008067          	ret

1c008094 <do_cl_boot>:
1c008094:	10200137          	lui	sp,0x10200
1c008098:	00100193          	li	gp,1
1c00809c:	00000217          	auipc	tp,0x0
1c0080a0:	fe420213          	addi	tp,tp,-28 # 1c008080 <_start>
1c0080a4:	04412023          	sw	tp,64(sp) # 10200040 <__CTOR_LIST__-0xbdfffc4>
1c0080a8:	00312423          	sw	gp,8(sp)

1c0080ac <loop>:
1c0080ac:	1a10a137          	lui	sp,0x1a10a
1c0080b0:	80010113          	addi	sp,sp,-2048 # 1a109800 <__CTOR_LIST__-0x1ef6804>
1c0080b4:	00012023          	sw	zero,0(sp)
1c0080b8:	10500073          	wfi
1c0080bc:	ff1ff06f          	j	1c0080ac <loop>

Disassembly of section .text:

1c0080c0 <_stext>:
1c0080c0:	ffffe297          	auipc	t0,0xffffe
1c0080c4:	4a028293          	addi	t0,t0,1184 # 1c006560 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	4bc30313          	addi	t1,t1,1212 # 1c006584 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	48610113          	addi	sp,sp,1158 # 1c006560 <pos_fll_is_on>
1c0080e2:	0f4050ef          	jal	ra,1c00d1d6 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	110050ef          	jal	ra,1c00d20c <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	152040ef          	jal	ra,1c00c254 <exit>
	...

1c008108 <__clzsi2>:
1c008108:	000107b7          	lui	a5,0x10
1c00810c:	02f57a63          	bgeu	a0,a5,1c008140 <__clzsi2+0x38>
1c008110:	0ff00793          	li	a5,255
1c008114:	00a7b7b3          	sltu	a5,a5,a0
1c008118:	00379793          	slli	a5,a5,0x3
1c00811c:	1c000737          	lui	a4,0x1c000
1c008120:	02000693          	li	a3,32
1c008124:	40f686b3          	sub	a3,a3,a5
1c008128:	00f55533          	srl	a0,a0,a5
1c00812c:	01c70793          	addi	a5,a4,28 # 1c00001c <__clz_tab>
1c008130:	00a78533          	add	a0,a5,a0
1c008134:	00054503          	lbu	a0,0(a0)
1c008138:	40a68533          	sub	a0,a3,a0
1c00813c:	00008067          	ret
1c008140:	01000737          	lui	a4,0x1000
1c008144:	01000793          	li	a5,16
1c008148:	fce56ae3          	bltu	a0,a4,1c00811c <__clzsi2+0x14>
1c00814c:	01800793          	li	a5,24
1c008150:	fcdff06f          	j	1c00811c <__clzsi2+0x14>

1c008154 <printbytes>:
1c008154:	1141                	addi	sp,sp,-16
1c008156:	c422                	sw	s0,8(sp)
1c008158:	c226                	sw	s1,4(sp)
1c00815a:	c04a                	sw	s2,0(sp)
1c00815c:	c606                	sw	ra,12(sp)
1c00815e:	842a                	mv	s0,a0
1c008160:	00b504b3          	add	s1,a0,a1
1c008164:	1c000937          	lui	s2,0x1c000
1c008168:	00044583          	lbu	a1,0(s0)
1c00816c:	11c90513          	addi	a0,s2,284 # 1c00011c <__clz_tab+0x100>
1c008170:	0405                	addi	s0,s0,1
1c008172:	0fe040ef          	jal	ra,1c00c270 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	0a40406f          	j	1c00c22a <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	d1a487b7          	lui	a5,0xd1a48
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	7f212023          	sw	s2,2016(sp)
1c0081a2:	99778793          	addi	a5,a5,-1641 # d1a47997 <__l2_shared_end+0xb5a37997>
1c0081a6:	b8010113          	addi	sp,sp,-1152
1c0081aa:	64f12023          	sw	a5,1600(sp)
1c0081ae:	26ec47b7          	lui	a5,0x26ec4
1c0081b2:	5fc78793          	addi	a5,a5,1532 # 26ec45fc <__l2_shared_end+0xaeb45fc>
1c0081b6:	64f12223          	sw	a5,1604(sp)
1c0081ba:	9c8b07b7          	lui	a5,0x9c8b0
1c0081be:	41f78793          	addi	a5,a5,1055 # 9c8b041f <__l2_shared_end+0x808a041f>
1c0081c2:	64f12423          	sw	a5,1608(sp)
1c0081c6:	c938b7b7          	lui	a5,0xc938b
1c0081ca:	a9d78793          	addi	a5,a5,-1379 # c938aa9d <__l2_shared_end+0xad37aa9d>
1c0081ce:	64f12623          	sw	a5,1612(sp)
1c0081d2:	658b27b7          	lui	a5,0x658b2
1c0081d6:	2ec78793          	addi	a5,a5,748 # 658b22ec <__l2_shared_end+0x498a22ec>
1c0081da:	64f12823          	sw	a5,1616(sp)
1c0081de:	5290f7b7          	lui	a5,0x5290f
1c0081e2:	80578793          	addi	a5,a5,-2043 # 5290e805 <__l2_shared_end+0x368fe805>
1c0081e6:	64f12a23          	sw	a5,1620(sp)
1c0081ea:	8684b7b7          	lui	a5,0x8684b
1c0081ee:	32678793          	addi	a5,a5,806 # 8684b326 <__l2_shared_end+0x6a83b326>
1c0081f2:	64f12c23          	sw	a5,1624(sp)
1c0081f6:	c25927b7          	lui	a5,0xc2592
1c0081fa:	08078793          	addi	a5,a5,128 # c2592080 <__l2_shared_end+0xa6582080>
1c0081fe:	64f12e23          	sw	a5,1628(sp)
1c008202:	0196d7b7          	lui	a5,0x196d
1c008206:	8c578793          	addi	a5,a5,-1851 # 196c8c5 <__CTOR_LIST__-0x1a69373f>
1c00820a:	66f12023          	sw	a5,1632(sp)
1c00820e:	cb3407b7          	lui	a5,0xcb340
1c008212:	65678793          	addi	a5,a5,1622 # cb340656 <__l2_shared_end+0xaf330656>
1c008216:	66f12223          	sw	a5,1636(sp)
1c00821a:	31b137b7          	lui	a5,0x31b13
1c00821e:	71378793          	addi	a5,a5,1811 # 31b13713 <__l2_shared_end+0x15b03713>
1c008222:	66f12423          	sw	a5,1640(sp)
1c008226:	481467b7          	lui	a5,0x48146
1c00822a:	55378793          	addi	a5,a5,1363 # 48146553 <__l2_shared_end+0x2c136553>
1c00822e:	66f12623          	sw	a5,1644(sp)
1c008232:	5a40c7b7          	lui	a5,0x5a40c
1c008236:	c4278793          	addi	a5,a5,-958 # 5a40bc42 <__l2_shared_end+0x3e3fbc42>
1c00823a:	66f12823          	sw	a5,1648(sp)
1c00823e:	3c6837b7          	lui	a5,0x3c683
1c008242:	e2978793          	addi	a5,a5,-471 # 3c682e29 <__l2_shared_end+0x20672e29>
1c008246:	66f12a23          	sw	a5,1652(sp)
1c00824a:	4551a7b7          	lui	a5,0x4551a
1c00824e:	4af78793          	addi	a5,a5,1199 # 4551a4af <__l2_shared_end+0x2950a4af>
1c008252:	66f12c23          	sw	a5,1656(sp)
1c008256:	4d5c97b7          	lui	a5,0x4d5c9
1c00825a:	42678793          	addi	a5,a5,1062 # 4d5c9426 <__l2_shared_end+0x315b9426>
1c00825e:	66f12e23          	sw	a5,1660(sp)
1c008262:	2aee77b7          	lui	a5,0x2aee7
1c008266:	8fb78793          	addi	a5,a5,-1797 # 2aee68fb <__l2_shared_end+0xeed68fb>
1c00826a:	68f12023          	sw	a5,1664(sp)
1c00826e:	95b7c7b7          	lui	a5,0x95b7c
1c008272:	8cd78793          	addi	a5,a5,-1843 # 95b7b8cd <__l2_shared_end+0x79b6b8cd>
1c008276:	68f12223          	sw	a5,1668(sp)
1c00827a:	966687b7          	lui	a5,0x96668
1c00827e:	33278793          	addi	a5,a5,818 # 96668332 <__l2_shared_end+0x7a658332>
1c008282:	68f12423          	sw	a5,1672(sp)
1c008286:	a02537b7          	lui	a5,0xa0253
1c00828a:	1d578793          	addi	a5,a5,469 # a02531d5 <__l2_shared_end+0x842431d5>
1c00828e:	68f12623          	sw	a5,1676(sp)
1c008292:	8abbc7b7          	lui	a5,0x8abbc
1c008296:	d4578793          	addi	a5,a5,-699 # 8abbbd45 <__l2_shared_end+0x6ebabd45>
1c00829a:	68f12823          	sw	a5,1680(sp)
1c00829e:	2381d7b7          	lui	a5,0x2381d
1c0082a2:	c3b78793          	addi	a5,a5,-965 # 2381cc3b <__l2_shared_end+0x780cc3b>
1c0082a6:	68f12a23          	sw	a5,1684(sp)
1c0082aa:	681e47b7          	lui	a5,0x681e4
1c0082ae:	d0878793          	addi	a5,a5,-760 # 681e3d08 <__l2_shared_end+0x4c1d3d08>
1c0082b2:	68f12c23          	sw	a5,1688(sp)
1c0082b6:	82d767b7          	lui	a5,0x82d76
1c0082ba:	b2c78793          	addi	a5,a5,-1236 # 82d75b2c <__l2_shared_end+0x66d65b2c>
1c0082be:	68f12e23          	sw	a5,1692(sp)
1c0082c2:	48c477b7          	lui	a5,0x48c47
1c0082c6:	60c78793          	addi	a5,a5,1548 # 48c4760c <__l2_shared_end+0x2cc3760c>
1c0082ca:	6af12023          	sw	a5,1696(sp)
1c0082ce:	475117b7          	lui	a5,0x47511
1c0082d2:	13578793          	addi	a5,a5,309 # 47511135 <__l2_shared_end+0x2b501135>
1c0082d6:	6af12223          	sw	a5,1700(sp)
1c0082da:	01d677b7          	lui	a5,0x1d67
1c0082de:	94f78793          	addi	a5,a5,-1713 # 1d6694f <__CTOR_LIST__-0x1a2996b5>
1c0082e2:	6af12423          	sw	a5,1704(sp)
1c0082e6:	bb8d77b7          	lui	a5,0xbb8d7
1c0082ea:	0d778793          	addi	a5,a5,215 # bb8d70d7 <__l2_shared_end+0x9f8c70d7>
1c0082ee:	6af12623          	sw	a5,1708(sp)
1c0082f2:	779d97b7          	lui	a5,0x779d9
1c0082f6:	72c78793          	addi	a5,a5,1836 # 779d972c <__l2_shared_end+0x5b9c972c>
1c0082fa:	6af12823          	sw	a5,1712(sp)
1c0082fe:	b69477b7          	lui	a5,0xb6947
1c008302:	45278793          	addi	a5,a5,1106 # b6947452 <__l2_shared_end+0x9a937452>
1c008306:	6af12a23          	sw	a5,1716(sp)
1c00830a:	ffa827b7          	lui	a5,0xffa82
1c00830e:	08578793          	addi	a5,a5,133 # ffa82085 <__l2_shared_end+0xe3a72085>
1c008312:	6af12c23          	sw	a5,1720(sp)
1c008316:	6241c7b7          	lui	a5,0x6241c
1c00831a:	36678793          	addi	a5,a5,870 # 6241c366 <__l2_shared_end+0x4640c366>
1c00831e:	6af12e23          	sw	a5,1724(sp)
1c008322:	80ec37b7          	lui	a5,0x80ec3
1c008326:	aca78793          	addi	a5,a5,-1334 # 80ec2aca <__l2_shared_end+0x64eb2aca>
1c00832a:	6cf12023          	sw	a5,1728(sp)
1c00832e:	1fa5a7b7          	lui	a5,0x1fa5a
1c008332:	27278793          	addi	a5,a5,626 # 1fa5a272 <__l2_shared_end+0x3a4a272>
1c008336:	6cf12223          	sw	a5,1732(sp)
1c00833a:	963867b7          	lui	a5,0x96386
1c00833e:	9f278793          	addi	a5,a5,-1550 # 963859f2 <__l2_shared_end+0x7a3759f2>
1c008342:	6cf12423          	sw	a5,1736(sp)
1c008346:	955be7b7          	lui	a5,0x955be
1c00834a:	74878793          	addi	a5,a5,1864 # 955be748 <__l2_shared_end+0x795ae748>
1c00834e:	6cf12623          	sw	a5,1740(sp)
1c008352:	14be77b7          	lui	a5,0x14be7
1c008356:	ac178793          	addi	a5,a5,-1343 # 14be6ac1 <__CTOR_LIST__-0x7419543>
1c00835a:	6cf12823          	sw	a5,1744(sp)
1c00835e:	fadb57b7          	lui	a5,0xfadb5
1c008362:	e6078793          	addi	a5,a5,-416 # fadb4e60 <__l2_shared_end+0xdeda4e60>
1c008366:	6cf12a23          	sw	a5,1748(sp)
1c00836a:	b700f7b7          	lui	a5,0xb700f
1c00836e:	4ba78793          	addi	a5,a5,1210 # b700f4ba <__l2_shared_end+0x9afff4ba>
1c008372:	6cf12c23          	sw	a5,1752(sp)
1c008376:	070f87b7          	lui	a5,0x70f8
1c00837a:	a6a78793          	addi	a5,a5,-1430 # 70f7a6a <__CTOR_LIST__-0x14f0859a>
1c00837e:	6cf12e23          	sw	a5,1756(sp)
1c008382:	e1dc67b7          	lui	a5,0xe1dc6
1c008386:	1db78793          	addi	a5,a5,475 # e1dc61db <__l2_shared_end+0xc5db61db>
1c00838a:	6ef12023          	sw	a5,1760(sp)
1c00838e:	3bf407b7          	lui	a5,0x3bf40
1c008392:	29178793          	addi	a5,a5,657 # 3bf40291 <__l2_shared_end+0x1ff30291>
1c008396:	6ef12223          	sw	a5,1764(sp)
1c00839a:	746017b7          	lui	a5,0x74601
1c00839e:	02d78793          	addi	a5,a5,45 # 7460102d <__l2_shared_end+0x585f102d>
1c0083a2:	6ef12423          	sw	a5,1768(sp)
1c0083a6:	42c407b7          	lui	a5,0x42c40
1c0083aa:	27b78793          	addi	a5,a5,635 # 42c4027b <__l2_shared_end+0x26c3027b>
1c0083ae:	6ef12623          	sw	a5,1772(sp)
1c0083b2:	1f3487b7          	lui	a5,0x1f348
1c0083b6:	55478793          	addi	a5,a5,1364 # 1f348554 <__l2_shared_end+0x3338554>
1c0083ba:	6ef12823          	sw	a5,1776(sp)
1c0083be:	fabfe7b7          	lui	a5,0xfabfe
1c0083c2:	9d578793          	addi	a5,a5,-1579 # fabfd9d5 <__l2_shared_end+0xdebed9d5>
1c0083c6:	6ef12a23          	sw	a5,1780(sp)
1c0083ca:	616007b7          	lui	a5,0x61600
1c0083ce:	1a778793          	addi	a5,a5,423 # 616001a7 <__l2_shared_end+0x455f01a7>
1c0083d2:	6ef12c23          	sw	a5,1784(sp)
1c0083d6:	b96357b7          	lui	a5,0xb9635
1c0083da:	93778793          	addi	a5,a5,-1737 # b9634937 <__l2_shared_end+0x9d624937>
1c0083de:	6ef12e23          	sw	a5,1788(sp)
1c0083e2:	6b9c27b7          	lui	a5,0x6b9c2
1c0083e6:	08578793          	addi	a5,a5,133 # 6b9c2085 <__l2_shared_end+0x4f9b2085>
1c0083ea:	70f12023          	sw	a5,1792(sp)
1c0083ee:	f9b387b7          	lui	a5,0xf9b38
1c0083f2:	d9a78793          	addi	a5,a5,-614 # f9b37d9a <__l2_shared_end+0xddb27d9a>
1c0083f6:	70f12223          	sw	a5,1796(sp)
1c0083fa:	1d3167b7          	lui	a5,0x1d316
1c0083fe:	84978793          	addi	a5,a5,-1975 # 1d315849 <__l2_shared_end+0x1305849>
1c008402:	70f12423          	sw	a5,1800(sp)
1c008406:	a30087b7          	lui	a5,0xa3008
1c00840a:	90278793          	addi	a5,a5,-1790 # a3007902 <__l2_shared_end+0x86ff7902>
1c00840e:	70f12623          	sw	a5,1804(sp)
1c008412:	844fc7b7          	lui	a5,0x844fc
1c008416:	4d878793          	addi	a5,a5,1240 # 844fc4d8 <__l2_shared_end+0x684ec4d8>
1c00841a:	70f12823          	sw	a5,1808(sp)
1c00841e:	a293b7b7          	lui	a5,0xa293b
1c008422:	03578793          	addi	a5,a5,53 # a293b035 <__l2_shared_end+0x8692b035>
1c008426:	70f12a23          	sw	a5,1812(sp)
1c00842a:	9f50a7b7          	lui	a5,0x9f50a
1c00842e:	03678793          	addi	a5,a5,54 # 9f50a036 <__l2_shared_end+0x834fa036>
1c008432:	70f12c23          	sw	a5,1816(sp)
1c008436:	77df37b7          	lui	a5,0x77df3
1c00843a:	81978793          	addi	a5,a5,-2023 # 77df2819 <__l2_shared_end+0x5bde2819>
1c00843e:	70f12e23          	sw	a5,1820(sp)
1c008442:	4e8cd7b7          	lui	a5,0x4e8cd
1c008446:	e1978793          	addi	a5,a5,-487 # 4e8cce19 <__l2_shared_end+0x328bce19>
1c00844a:	72f12023          	sw	a5,1824(sp)
1c00844e:	4d8f27b7          	lui	a5,0x4d8f2
1c008452:	29078793          	addi	a5,a5,656 # 4d8f2290 <__l2_shared_end+0x318e2290>
1c008456:	72f12223          	sw	a5,1828(sp)
1c00845a:	e8b987b7          	lui	a5,0xe8b98
1c00845e:	cb878793          	addi	a5,a5,-840 # e8b97cb8 <__l2_shared_end+0xccb87cb8>
1c008462:	72f12423          	sw	a5,1832(sp)
1c008466:	2171f7b7          	lui	a5,0x2171f
1c00846a:	28278793          	addi	a5,a5,642 # 2171f282 <__l2_shared_end+0x570f282>
1c00846e:	72f12623          	sw	a5,1836(sp)
1c008472:	458827b7          	lui	a5,0x45882
1c008476:	38078793          	addi	a5,a5,896 # 45882380 <__l2_shared_end+0x29872380>
1c00847a:	72f12823          	sw	a5,1840(sp)
1c00847e:	06b927b7          	lui	a5,0x6b92
1c008482:	ed378793          	addi	a5,a5,-301 # 6b91ed3 <__CTOR_LIST__-0x1546e131>
1c008486:	72f12a23          	sw	a5,1844(sp)
1c00848a:	6785                	lui	a5,0x1
1c00848c:	ec678793          	addi	a5,a5,-314 # ec6 <__CTOR_LIST__-0x1bfff13e>
1c008490:	72f11c23          	sh	a5,1848(sp)
1c008494:	fb600793          	li	a5,-74
1c008498:	72f10d23          	sb	a5,1850(sp)
1c00849c:	03e00793          	li	a5,62
1c0084a0:	72f10da3          	sb	a5,1851(sp)
1c0084a4:	845ef7b7          	lui	a5,0x845ef
1c0084a8:	50f78793          	addi	a5,a5,1295 # 845ef50f <__l2_shared_end+0x685df50f>
1c0084ac:	72f12e23          	sw	a5,1852(sp)
1c0084b0:	1ba967b7          	lui	a5,0x1ba96
1c0084b4:	7b878793          	addi	a5,a5,1976 # 1ba967b8 <__CTOR_LIST__-0x56984c>
1c0084b8:	74f12023          	sw	a5,1856(sp)
1c0084bc:	a074b7b7          	lui	a5,0xa074b
1c0084c0:	e7978793          	addi	a5,a5,-391 # a074ae79 <__l2_shared_end+0x8473ae79>
1c0084c4:	74f12223          	sw	a5,1860(sp)
1c0084c8:	7304c7b7          	lui	a5,0x7304c
1c0084cc:	03a78793          	addi	a5,a5,58 # 7304c03a <__l2_shared_end+0x5703c03a>
1c0084d0:	74f12423          	sw	a5,1864(sp)
1c0084d4:	e6b3c7b7          	lui	a5,0xe6b3c
1c0084d8:	1c878793          	addi	a5,a5,456 # e6b3c1c8 <__l2_shared_end+0xcab2c1c8>
1c0084dc:	74f12623          	sw	a5,1868(sp)
1c0084e0:	7fc3e7b7          	lui	a5,0x7fc3e
1c0084e4:	cae78793          	addi	a5,a5,-850 # 7fc3dcae <__l2_shared_end+0x63c2dcae>
1c0084e8:	74f12823          	sw	a5,1872(sp)
1c0084ec:	e1b877b7          	lui	a5,0xe1b87
1c0084f0:	91e78793          	addi	a5,a5,-1762 # e1b8691e <__l2_shared_end+0xc5b7691e>
1c0084f4:	74f12a23          	sw	a5,1876(sp)
1c0084f8:	db9b07b7          	lui	a5,0xdb9b0
1c0084fc:	13678793          	addi	a5,a5,310 # db9b0136 <__l2_shared_end+0xbf9a0136>
1c008500:	74f12c23          	sw	a5,1880(sp)
1c008504:	a174c7b7          	lui	a5,0xa174c
1c008508:	30178793          	addi	a5,a5,769 # a174c301 <__l2_shared_end+0x8573c301>
1c00850c:	74f12e23          	sw	a5,1884(sp)
1c008510:	c364e7b7          	lui	a5,0xc364e
1c008514:	12278793          	addi	a5,a5,290 # c364e122 <__l2_shared_end+0xa763e122>
1c008518:	76f12023          	sw	a5,1888(sp)
1c00851c:	fbb287b7          	lui	a5,0xfbb28
1c008520:	42578793          	addi	a5,a5,1061 # fbb28425 <__l2_shared_end+0xdfb18425>
1c008524:	76f12223          	sw	a5,1892(sp)
1c008528:	3a0167b7          	lui	a5,0x3a016
1c00852c:	ecf78793          	addi	a5,a5,-305 # 3a015ecf <__l2_shared_end+0x1e005ecf>
1c008530:	76f12423          	sw	a5,1896(sp)
1c008534:	897c17b7          	lui	a5,0x897c1
1c008538:	24578793          	addi	a5,a5,581 # 897c1245 <__l2_shared_end+0x6d7b1245>
1c00853c:	76f12623          	sw	a5,1900(sp)
1c008540:	86b627b7          	lui	a5,0x86b62
1c008544:	63378793          	addi	a5,a5,1587 # 86b62633 <__l2_shared_end+0x6ab52633>
1c008548:	76f12823          	sw	a5,1904(sp)
1c00854c:	55cb87b7          	lui	a5,0x55cb8
1c008550:	80378793          	addi	a5,a5,-2045 # 55cb7803 <__l2_shared_end+0x39ca7803>
1c008554:	76f12a23          	sw	a5,1908(sp)
1c008558:	528ba7b7          	lui	a5,0x528ba
1c00855c:	42578793          	addi	a5,a5,1061 # 528ba425 <__l2_shared_end+0x368aa425>
1c008560:	76f12c23          	sw	a5,1912(sp)
1c008564:	2b1337b7          	lui	a5,0x2b133
1c008568:	02b78793          	addi	a5,a5,43 # 2b13302b <__l2_shared_end+0xf12302b>
1c00856c:	76f12e23          	sw	a5,1916(sp)
1c008570:	4b2197b7          	lui	a5,0x4b219
1c008574:	87678793          	addi	a5,a5,-1930 # 4b218876 <__l2_shared_end+0x2f208876>
1c008578:	78f12023          	sw	a5,1920(sp)
1c00857c:	d18d87b7          	lui	a5,0xd18d8
1c008580:	06978793          	addi	a5,a5,105 # d18d8069 <__l2_shared_end+0xb58c8069>
1c008584:	78f12223          	sw	a5,1924(sp)
1c008588:	03ffa7b7          	lui	a5,0x3ffa
1c00858c:	49a78793          	addi	a5,a5,1178 # 3ffa49a <__CTOR_LIST__-0x18005b6a>
1c008590:	78f12423          	sw	a5,1928(sp)
1c008594:	202517b7          	lui	a5,0x20251
1c008598:	63e78793          	addi	a5,a5,1598 # 2025163e <__l2_shared_end+0x424163e>
1c00859c:	78f12623          	sw	a5,1932(sp)
1c0085a0:	799507b7          	lui	a5,0x79950
1c0085a4:	c1678793          	addi	a5,a5,-1002 # 7994fc16 <__l2_shared_end+0x5d93fc16>
1c0085a8:	78f12823          	sw	a5,1936(sp)
1c0085ac:	392427b7          	lui	a5,0x39242
1c0085b0:	42278793          	addi	a5,a5,1058 # 39242422 <__l2_shared_end+0x1d232422>
1c0085b4:	78f12a23          	sw	a5,1940(sp)
1c0085b8:	71db57b7          	lui	a5,0x71db5
1c0085bc:	13e78793          	addi	a5,a5,318 # 71db513e <__l2_shared_end+0x55da513e>
1c0085c0:	78f12c23          	sw	a5,1944(sp)
1c0085c4:	1481e7b7          	lui	a5,0x1481e
1c0085c8:	31578793          	addi	a5,a5,789 # 1481e315 <__CTOR_LIST__-0x77e1cef>
1c0085cc:	78f12e23          	sw	a5,1948(sp)
1c0085d0:	dc3c97b7          	lui	a5,0xdc3c9
1c0085d4:	9e678793          	addi	a5,a5,-1562 # dc3c89e6 <__l2_shared_end+0xc03b89e6>
1c0085d8:	7af12023          	sw	a5,1952(sp)
1c0085dc:	1711b7b7          	lui	a5,0x1711b
1c0085e0:	ec878793          	addi	a5,a5,-312 # 1711aec8 <__CTOR_LIST__-0x4ee513c>
1c0085e4:	7af12223          	sw	a5,1956(sp)
1c0085e8:	486537b7          	lui	a5,0x48653
1c0085ec:	1a478793          	addi	a5,a5,420 # 486531a4 <__l2_shared_end+0x2c6431a4>
1c0085f0:	7af12423          	sw	a5,1960(sp)
1c0085f4:	62b417b7          	lui	a5,0x62b41
1c0085f8:	a0178793          	addi	a5,a5,-1535 # 62b40a01 <__l2_shared_end+0x46b30a01>
1c0085fc:	7af12623          	sw	a5,1964(sp)
1c008600:	1472b7b7          	lui	a5,0x1472b
1c008604:	69f78793          	addi	a5,a5,1695 # 1472b69f <__CTOR_LIST__-0x78d4965>
1c008608:	7af12823          	sw	a5,1968(sp)
1c00860c:	6c1a07b7          	lui	a5,0x6c1a0
1c008610:	38d78793          	addi	a5,a5,909 # 6c1a038d <__l2_shared_end+0x5019038d>
1c008614:	7af12a23          	sw	a5,1972(sp)
1c008618:	4a6a27b7          	lui	a5,0x4a6a2
1c00861c:	a6078793          	addi	a5,a5,-1440 # 4a6a1a60 <__l2_shared_end+0x2e691a60>
1c008620:	7af12c23          	sw	a5,1976(sp)
1c008624:	2d8727b7          	lui	a5,0x2d872
1c008628:	d6678793          	addi	a5,a5,-666 # 2d871d66 <__l2_shared_end+0x11861d66>
1c00862c:	7af12e23          	sw	a5,1980(sp)
1c008630:	7593f7b7          	lui	a5,0x7593f
1c008634:	68e78793          	addi	a5,a5,1678 # 7593f68e <__l2_shared_end+0x5992f68e>
1c008638:	7cf12023          	sw	a5,1984(sp)
1c00863c:	585917b7          	lui	a5,0x58591
1c008640:	10a78793          	addi	a5,a5,266 # 5859110a <__l2_shared_end+0x3c58110a>
1c008644:	7cf12223          	sw	a5,1988(sp)
1c008648:	26b977b7          	lui	a5,0x26b97
1c00864c:	a7178793          	addi	a5,a5,-1423 # 26b96a71 <__l2_shared_end+0xab86a71>
1c008650:	7cf12423          	sw	a5,1992(sp)
1c008654:	6351b7b7          	lui	a5,0x6351b
1c008658:	03e78793          	addi	a5,a5,62 # 6351b03e <__l2_shared_end+0x4750b03e>
1c00865c:	7cf12623          	sw	a5,1996(sp)
1c008660:	582317b7          	lui	a5,0x58231
1c008664:	05778793          	addi	a5,a5,87 # 58231057 <__l2_shared_end+0x3c221057>
1c008668:	7cf12823          	sw	a5,2000(sp)
1c00866c:	6425e7b7          	lui	a5,0x6425e
1c008670:	5cd78793          	addi	a5,a5,1485 # 6425e5cd <__l2_shared_end+0x4824e5cd>
1c008674:	7cf12a23          	sw	a5,2004(sp)
1c008678:	a85c87b7          	lui	a5,0xa85c8
1c00867c:	06478793          	addi	a5,a5,100 # a85c8064 <__l2_shared_end+0x8c5b8064>
1c008680:	7cf12c23          	sw	a5,2008(sp)
1c008684:	756197b7          	lui	a5,0x75619
1c008688:	6f578793          	addi	a5,a5,1781 # 756196f5 <__l2_shared_end+0x596096f5>
1c00868c:	7cf12e23          	sw	a5,2012(sp)
1c008690:	75a4d7b7          	lui	a5,0x75a4d
1c008694:	61a78793          	addi	a5,a5,1562 # 75a4d61a <__l2_shared_end+0x59a3d61a>
1c008698:	7ef12023          	sw	a5,2016(sp)
1c00869c:	cb78f7b7          	lui	a5,0xcb78f
1c0086a0:	ca778793          	addi	a5,a5,-857 # cb78eca7 <__l2_shared_end+0xaf77eca7>
1c0086a4:	7ef12223          	sw	a5,2020(sp)
1c0086a8:	bbc327b7          	lui	a5,0xbbc32
1c0086ac:	97378793          	addi	a5,a5,-1677 # bbc31973 <__l2_shared_end+0x9fc21973>
1c0086b0:	7ef12423          	sw	a5,2024(sp)
1c0086b4:	bbe147b7          	lui	a5,0xbbe14
1c0086b8:	4c578793          	addi	a5,a5,1221 # bbe144c5 <__l2_shared_end+0x9fe044c5>
1c0086bc:	7ef12623          	sw	a5,2028(sp)
1c0086c0:	aeaa87b7          	lui	a5,0xaeaa8
1c0086c4:	51178793          	addi	a5,a5,1297 # aeaa8511 <__l2_shared_end+0x92a98511>
1c0086c8:	7ef12823          	sw	a5,2032(sp)
1c0086cc:	0bba57b7          	lui	a5,0xbba5
1c0086d0:	1b778793          	addi	a5,a5,439 # bba51b7 <__CTOR_LIST__-0x1045ae4d>
1c0086d4:	7ef12a23          	sw	a5,2036(sp)
1c0086d8:	6e2427b7          	lui	a5,0x6e242
1c0086dc:	33978793          	addi	a5,a5,825 # 6e242339 <__l2_shared_end+0x52232339>
1c0086e0:	7ef12c23          	sw	a5,2040(sp)
1c0086e4:	4f0af7b7          	lui	a5,0x4f0af
1c0086e8:	6705                	lui	a4,0x1
1c0086ea:	43378793          	addi	a5,a5,1075 # 4f0af433 <__l2_shared_end+0x3309f433>
1c0086ee:	7ef12e23          	sw	a5,2044(sp)
1c0086f2:	80070693          	addi	a3,a4,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c0086f6:	740b87b7          	lui	a5,0x740b8
1c0086fa:	968a                	add	a3,a3,sp
1c0086fc:	8f478793          	addi	a5,a5,-1804 # 740b78f4 <__l2_shared_end+0x580a78f4>
1c008700:	c29c                	sw	a5,0(a3)
1c008702:	80470693          	addi	a3,a4,-2044
1c008706:	18a267b7          	lui	a5,0x18a26
1c00870a:	968a                	add	a3,a3,sp
1c00870c:	25378793          	addi	a5,a5,595 # 18a26253 <__CTOR_LIST__-0x35d9db1>
1c008710:	c29c                	sw	a5,0(a3)
1c008712:	80870693          	addi	a3,a4,-2040
1c008716:	4d4777b7          	lui	a5,0x4d477
1c00871a:	968a                	add	a3,a3,sp
1c00871c:	9d178793          	addi	a5,a5,-1583 # 4d4769d1 <__l2_shared_end+0x314669d1>
1c008720:	c29c                	sw	a5,0(a3)
1c008722:	80c70693          	addi	a3,a4,-2036
1c008726:	f7a917b7          	lui	a5,0xf7a91
1c00872a:	968a                	add	a3,a3,sp
1c00872c:	87278793          	addi	a5,a5,-1934 # f7a90872 <__l2_shared_end+0xdba80872>
1c008730:	c29c                	sw	a5,0(a3)
1c008732:	81070693          	addi	a3,a4,-2032
1c008736:	302877b7          	lui	a5,0x30287
1c00873a:	968a                	add	a3,a3,sp
1c00873c:	25778793          	addi	a5,a5,599 # 30287257 <__l2_shared_end+0x14277257>
1c008740:	c29c                	sw	a5,0(a3)
1c008742:	81470693          	addi	a3,a4,-2028
1c008746:	8d0ff7b7          	lui	a5,0x8d0ff
1c00874a:	968a                	add	a3,a3,sp
1c00874c:	28a78793          	addi	a5,a5,650 # 8d0ff28a <__l2_shared_end+0x710ef28a>
1c008750:	c29c                	sw	a5,0(a3)
1c008752:	81870693          	addi	a3,a4,-2024
1c008756:	74a207b7          	lui	a5,0x74a20
1c00875a:	968a                	add	a3,a3,sp
1c00875c:	32478793          	addi	a5,a5,804 # 74a20324 <__l2_shared_end+0x58a10324>
1c008760:	c29c                	sw	a5,0(a3)
1c008762:	81c70693          	addi	a3,a4,-2020
1c008766:	cf53d7b7          	lui	a5,0xcf53d
1c00876a:	968a                	add	a3,a3,sp
1c00876c:	f7778793          	addi	a5,a5,-137 # cf53cf77 <__l2_shared_end+0xb352cf77>
1c008770:	c29c                	sw	a5,0(a3)
1c008772:	82070693          	addi	a3,a4,-2016
1c008776:	47a237b7          	lui	a5,0x47a23
1c00877a:	968a                	add	a3,a3,sp
1c00877c:	3f178793          	addi	a5,a5,1009 # 47a233f1 <__l2_shared_end+0x2ba133f1>
1c008780:	c29c                	sw	a5,0(a3)
1c008782:	82470693          	addi	a3,a4,-2012
1c008786:	98b2c7b7          	lui	a5,0x98b2c
1c00878a:	968a                	add	a3,a3,sp
1c00878c:	2d578793          	addi	a5,a5,725 # 98b2c2d5 <__l2_shared_end+0x7cb1c2d5>
1c008790:	c29c                	sw	a5,0(a3)
1c008792:	82870693          	addi	a3,a4,-2008
1c008796:	c6ba27b7          	lui	a5,0xc6ba2
1c00879a:	968a                	add	a3,a3,sp
1c00879c:	1bf78793          	addi	a5,a5,447 # c6ba21bf <__l2_shared_end+0xaab921bf>
1c0087a0:	c29c                	sw	a5,0(a3)
1c0087a2:	82c70693          	addi	a3,a4,-2004
1c0087a6:	9e6447b7          	lui	a5,0x9e644
1c0087aa:	968a                	add	a3,a3,sp
1c0087ac:	4dc78793          	addi	a5,a5,1244 # 9e6444dc <__l2_shared_end+0x826344dc>
1c0087b0:	c29c                	sw	a5,0(a3)
1c0087b2:	83070693          	addi	a3,a4,-2000
1c0087b6:	77ed                	lui	a5,0xffffb
1c0087b8:	968a                	add	a3,a3,sp
1c0087ba:	f6378793          	addi	a5,a5,-157 # ffffaf63 <__l2_shared_end+0xe3feaf63>
1c0087be:	00f69023          	sh	a5,0(a3)
1c0087c2:	83270693          	addi	a3,a4,-1998
1c0087c6:	968a                	add	a3,a3,sp
1c0087c8:	fce00793          	li	a5,-50
1c0087cc:	00f68023          	sb	a5,0(a3)
1c0087d0:	83370693          	addi	a3,a4,-1997
1c0087d4:	968a                	add	a3,a3,sp
1c0087d6:	57d5                	li	a5,-11
1c0087d8:	00f68023          	sb	a5,0(a3)
1c0087dc:	83470693          	addi	a3,a4,-1996
1c0087e0:	7aa0d7b7          	lui	a5,0x7aa0d
1c0087e4:	968a                	add	a3,a3,sp
1c0087e6:	34a78793          	addi	a5,a5,842 # 7aa0d34a <__l2_shared_end+0x5e9fd34a>
1c0087ea:	c29c                	sw	a5,0(a3)
1c0087ec:	83870693          	addi	a3,a4,-1992
1c0087f0:	b347e7b7          	lui	a5,0xb347e
1c0087f4:	968a                	add	a3,a3,sp
1c0087f6:	47478793          	addi	a5,a5,1140 # b347e474 <__l2_shared_end+0x9746e474>
1c0087fa:	c29c                	sw	a5,0(a3)
1c0087fc:	83c70693          	addi	a3,a4,-1988
1c008800:	29cab7b7          	lui	a5,0x29cab
1c008804:	968a                	add	a3,a3,sp
1c008806:	c6b78793          	addi	a5,a5,-917 # 29caac6b <__l2_shared_end+0xdc9ac6b>
1c00880a:	c29c                	sw	a5,0(a3)
1c00880c:	84070693          	addi	a3,a4,-1984
1c008810:	683307b7          	lui	a5,0x68330
1c008814:	968a                	add	a3,a3,sp
1c008816:	55e78793          	addi	a5,a5,1374 # 6833055e <__l2_shared_end+0x4c32055e>
1c00881a:	c29c                	sw	a5,0(a3)
1c00881c:	84470693          	addi	a3,a4,-1980
1c008820:	6e1487b7          	lui	a5,0x6e148
1c008824:	968a                	add	a3,a3,sp
1c008826:	cef78793          	addi	a5,a5,-785 # 6e147cef <__l2_shared_end+0x52137cef>
1c00882a:	c29c                	sw	a5,0(a3)
1c00882c:	84870693          	addi	a3,a4,-1976
1c008830:	b3ed37b7          	lui	a5,0xb3ed3
1c008834:	968a                	add	a3,a3,sp
1c008836:	81c78793          	addi	a5,a5,-2020 # b3ed281c <__l2_shared_end+0x97ec281c>
1c00883a:	c29c                	sw	a5,0(a3)
1c00883c:	84c70693          	addi	a3,a4,-1972
1c008840:	c97737b7          	lui	a5,0xc9773
1c008844:	968a                	add	a3,a3,sp
1c008846:	71b78793          	addi	a5,a5,1819 # c977371b <__l2_shared_end+0xad76371b>
1c00884a:	c29c                	sw	a5,0(a3)
1c00884c:	85070693          	addi	a3,a4,-1968
1c008850:	7dc2a7b7          	lui	a5,0x7dc2a
1c008854:	968a                	add	a3,a3,sp
1c008856:	74178793          	addi	a5,a5,1857 # 7dc2a741 <__l2_shared_end+0x61c1a741>
1c00885a:	c29c                	sw	a5,0(a3)
1c00885c:	85470693          	addi	a3,a4,-1964
1c008860:	7b4367b7          	lui	a5,0x7b436
1c008864:	968a                	add	a3,a3,sp
1c008866:	9c578793          	addi	a5,a5,-1595 # 7b4359c5 <__l2_shared_end+0x5f4259c5>
1c00886a:	c29c                	sw	a5,0(a3)
1c00886c:	85870693          	addi	a3,a4,-1960
1c008870:	293d07b7          	lui	a5,0x293d0
1c008874:	968a                	add	a3,a3,sp
1c008876:	80f78793          	addi	a5,a5,-2033 # 293cf80f <__l2_shared_end+0xd3bf80f>
1c00887a:	c29c                	sw	a5,0(a3)
1c00887c:	85c70693          	addi	a3,a4,-1956
1c008880:	ef2807b7          	lui	a5,0xef280
1c008884:	968a                	add	a3,a3,sp
1c008886:	81078793          	addi	a5,a5,-2032 # ef27f810 <__l2_shared_end+0xd326f810>
1c00888a:	c29c                	sw	a5,0(a3)
1c00888c:	86070693          	addi	a3,a4,-1952
1c008890:	267757b7          	lui	a5,0x26775
1c008894:	968a                	add	a3,a3,sp
1c008896:	d2478793          	addi	a5,a5,-732 # 26774d24 <__l2_shared_end+0xa764d24>
1c00889a:	c29c                	sw	a5,0(a3)
1c00889c:	86470693          	addi	a3,a4,-1948
1c0088a0:	089737b7          	lui	a5,0x8973
1c0088a4:	968a                	add	a3,a3,sp
1c0088a6:	baf78793          	addi	a5,a5,-1105 # 8972baf <__CTOR_LIST__-0x1368d455>
1c0088aa:	c29c                	sw	a5,0(a3)
1c0088ac:	86870693          	addi	a3,a4,-1944
1c0088b0:	b1cf57b7          	lui	a5,0xb1cf5
1c0088b4:	968a                	add	a3,a3,sp
1c0088b6:	b6578793          	addi	a5,a5,-1179 # b1cf4b65 <__l2_shared_end+0x95ce4b65>
1c0088ba:	c29c                	sw	a5,0(a3)
1c0088bc:	86c70693          	addi	a3,a4,-1940
1c0088c0:	4468a7b7          	lui	a5,0x4468a
1c0088c4:	968a                	add	a3,a3,sp
1c0088c6:	23978793          	addi	a5,a5,569 # 4468a239 <__l2_shared_end+0x2867a239>
1c0088ca:	c29c                	sw	a5,0(a3)
1c0088cc:	87070693          	addi	a3,a4,-1936
1c0088d0:	9cb7f7b7          	lui	a5,0x9cb7f
1c0088d4:	968a                	add	a3,a3,sp
1c0088d6:	4c678793          	addi	a5,a5,1222 # 9cb7f4c6 <__l2_shared_end+0x80b6f4c6>
1c0088da:	c29c                	sw	a5,0(a3)
1c0088dc:	87470693          	addi	a3,a4,-1932
1c0088e0:	7074e7b7          	lui	a5,0x7074e
1c0088e4:	968a                	add	a3,a3,sp
1c0088e6:	4d978793          	addi	a5,a5,1241 # 7074e4d9 <__l2_shared_end+0x5473e4d9>
1c0088ea:	c29c                	sw	a5,0(a3)
1c0088ec:	87870693          	addi	a3,a4,-1928
1c0088f0:	9675a7b7          	lui	a5,0x9675a
1c0088f4:	968a                	add	a3,a3,sp
1c0088f6:	76578793          	addi	a5,a5,1893 # 9675a765 <__l2_shared_end+0x7a74a765>
1c0088fa:	c29c                	sw	a5,0(a3)
1c0088fc:	87c70693          	addi	a3,a4,-1924
1c008900:	6cf927b7          	lui	a5,0x6cf92
1c008904:	968a                	add	a3,a3,sp
1c008906:	7b978793          	addi	a5,a5,1977 # 6cf927b9 <__l2_shared_end+0x50f827b9>
1c00890a:	c29c                	sw	a5,0(a3)
1c00890c:	88070693          	addi	a3,a4,-1920
1c008910:	6772c7b7          	lui	a5,0x6772c
1c008914:	968a                	add	a3,a3,sp
1c008916:	cbd78793          	addi	a5,a5,-835 # 6772bcbd <__l2_shared_end+0x4b71bcbd>
1c00891a:	c29c                	sw	a5,0(a3)
1c00891c:	88470693          	addi	a3,a4,-1916
1c008920:	ac32a7b7          	lui	a5,0xac32a
1c008924:	968a                	add	a3,a3,sp
1c008926:	eac78793          	addi	a5,a5,-340 # ac329eac <__l2_shared_end+0x90319eac>
1c00892a:	c29c                	sw	a5,0(a3)
1c00892c:	88870693          	addi	a3,a4,-1912
1c008930:	4c6c77b7          	lui	a5,0x4c6c7
1c008934:	968a                	add	a3,a3,sp
1c008936:	f3978793          	addi	a5,a5,-199 # 4c6c6f39 <__l2_shared_end+0x306b6f39>
1c00893a:	c29c                	sw	a5,0(a3)
1c00893c:	88c70693          	addi	a3,a4,-1908
1c008940:	0aaa47b7          	lui	a5,0xaaa4
1c008944:	968a                	add	a3,a3,sp
1c008946:	9e778793          	addi	a5,a5,-1561 # aaa39e7 <__CTOR_LIST__-0x1155c61d>
1c00894a:	c29c                	sw	a5,0(a3)
1c00894c:	89070693          	addi	a3,a4,-1904
1c008950:	accc17b7          	lui	a5,0xaccc1
1c008954:	968a                	add	a3,a3,sp
1c008956:	fa678793          	addi	a5,a5,-90 # accc0fa6 <__l2_shared_end+0x90cb0fa6>
1c00895a:	c29c                	sw	a5,0(a3)
1c00895c:	89470693          	addi	a3,a4,-1900
1c008960:	b1da97b7          	lui	a5,0xb1da9
1c008964:	968a                	add	a3,a3,sp
1c008966:	e1778793          	addi	a5,a5,-489 # b1da8e17 <__l2_shared_end+0x95d98e17>
1c00896a:	c29c                	sw	a5,0(a3)
1c00896c:	89870693          	addi	a3,a4,-1896
1c008970:	fe8847b7          	lui	a5,0xfe884
1c008974:	968a                	add	a3,a3,sp
1c008976:	6e078793          	addi	a5,a5,1760 # fe8846e0 <__l2_shared_end+0xe28746e0>
1c00897a:	c29c                	sw	a5,0(a3)
1c00897c:	89c70693          	addi	a3,a4,-1892
1c008980:	0142a7b7          	lui	a5,0x142a
1c008984:	968a                	add	a3,a3,sp
1c008986:	77178793          	addi	a5,a5,1905 # 142a771 <__CTOR_LIST__-0x1abd5893>
1c00898a:	c29c                	sw	a5,0(a3)
1c00898c:	8a070693          	addi	a3,a4,-1888
1c008990:	4bc6a7b7          	lui	a5,0x4bc6a
1c008994:	968a                	add	a3,a3,sp
1c008996:	ba978793          	addi	a5,a5,-1111 # 4bc69ba9 <__l2_shared_end+0x2fc59ba9>
1c00899a:	c29c                	sw	a5,0(a3)
1c00899c:	8a470693          	addi	a3,a4,-1884
1c0089a0:	89cc07b7          	lui	a5,0x89cc0
1c0089a4:	968a                	add	a3,a3,sp
1c0089a6:	85578793          	addi	a5,a5,-1963 # 89cbf855 <__l2_shared_end+0x6dcaf855>
1c0089aa:	c29c                	sw	a5,0(a3)
1c0089ac:	8a870693          	addi	a3,a4,-1880
1c0089b0:	e54517b7          	lui	a5,0xe5451
1c0089b4:	968a                	add	a3,a3,sp
1c0089b6:	5e178793          	addi	a5,a5,1505 # e54515e1 <__l2_shared_end+0xc94415e1>
1c0089ba:	c29c                	sw	a5,0(a3)
1c0089bc:	8ac70693          	addi	a3,a4,-1876
1c0089c0:	86f467b7          	lui	a5,0x86f46
1c0089c4:	968a                	add	a3,a3,sp
1c0089c6:	a2778793          	addi	a5,a5,-1497 # 86f45a27 <__l2_shared_end+0x6af35a27>
1c0089ca:	c29c                	sw	a5,0(a3)
1c0089cc:	8b070693          	addi	a3,a4,-1872
1c0089d0:	7566f7b7          	lui	a5,0x7566f
1c0089d4:	968a                	add	a3,a3,sp
1c0089d6:	c2678793          	addi	a5,a5,-986 # 7566ec26 <__l2_shared_end+0x5965ec26>
1c0089da:	c29c                	sw	a5,0(a3)
1c0089dc:	8b470693          	addi	a3,a4,-1868
1c0089e0:	7c8ac7b7          	lui	a5,0x7c8ac
1c0089e4:	968a                	add	a3,a3,sp
1c0089e6:	a2078793          	addi	a5,a5,-1504 # 7c8aba20 <__l2_shared_end+0x6089ba20>
1c0089ea:	c29c                	sw	a5,0(a3)
1c0089ec:	8b870693          	addi	a3,a4,-1864
1c0089f0:	7e30c7b7          	lui	a5,0x7e30c
1c0089f4:	968a                	add	a3,a3,sp
1c0089f6:	28878793          	addi	a5,a5,648 # 7e30c288 <__l2_shared_end+0x622fc288>
1c0089fa:	c29c                	sw	a5,0(a3)
1c0089fc:	8bc70693          	addi	a3,a4,-1860
1c008a00:	ef5537b7          	lui	a5,0xef553
1c008a04:	968a                	add	a3,a3,sp
1c008a06:	47978793          	addi	a5,a5,1145 # ef553479 <__l2_shared_end+0xd3543479>
1c008a0a:	c29c                	sw	a5,0(a3)
1c008a0c:	8c070693          	addi	a3,a4,-1856
1c008a10:	e1fa87b7          	lui	a5,0xe1fa8
1c008a14:	968a                	add	a3,a3,sp
1c008a16:	08778793          	addi	a5,a5,135 # e1fa8087 <__l2_shared_end+0xc5f98087>
1c008a1a:	c29c                	sw	a5,0(a3)
1c008a1c:	8c470693          	addi	a3,a4,-1852
1c008a20:	59ea17b7          	lui	a5,0x59ea1
1c008a24:	968a                	add	a3,a3,sp
1c008a26:	26478793          	addi	a5,a5,612 # 59ea1264 <__l2_shared_end+0x3de91264>
1c008a2a:	c29c                	sw	a5,0(a3)
1c008a2c:	8c870693          	addi	a3,a4,-1848
1c008a30:	f50627b7          	lui	a5,0xf5062
1c008a34:	968a                	add	a3,a3,sp
1c008a36:	4e978793          	addi	a5,a5,1257 # f50624e9 <__l2_shared_end+0xd90524e9>
1c008a3a:	c29c                	sw	a5,0(a3)
1c008a3c:	8cc70693          	addi	a3,a4,-1844
1c008a40:	c22d97b7          	lui	a5,0xc22d9
1c008a44:	968a                	add	a3,a3,sp
1c008a46:	09578793          	addi	a5,a5,149 # c22d9095 <__l2_shared_end+0xa62c9095>
1c008a4a:	c29c                	sw	a5,0(a3)
1c008a4c:	8d070693          	addi	a3,a4,-1840
1c008a50:	142b67b7          	lui	a5,0x142b6
1c008a54:	968a                	add	a3,a3,sp
1c008a56:	11c78793          	addi	a5,a5,284 # 142b611c <__CTOR_LIST__-0x7d49ee8>
1c008a5a:	c29c                	sw	a5,0(a3)
1c008a5c:	8d470693          	addi	a3,a4,-1836
1c008a60:	31cf07b7          	lui	a5,0x31cf0
1c008a64:	968a                	add	a3,a3,sp
1c008a66:	12878793          	addi	a5,a5,296 # 31cf0128 <__l2_shared_end+0x15ce0128>
1c008a6a:	c29c                	sw	a5,0(a3)
1c008a6c:	8d870693          	addi	a3,a4,-1832
1c008a70:	5c47c7b7          	lui	a5,0x5c47c
1c008a74:	968a                	add	a3,a3,sp
1c008a76:	0ab78793          	addi	a5,a5,171 # 5c47c0ab <__l2_shared_end+0x4046c0ab>
1c008a7a:	c29c                	sw	a5,0(a3)
1c008a7c:	8dc70693          	addi	a3,a4,-1828
1c008a80:	2d77e7b7          	lui	a5,0x2d77e
1c008a84:	968a                	add	a3,a3,sp
1c008a86:	e7b78793          	addi	a5,a5,-389 # 2d77de7b <__l2_shared_end+0x1176de7b>
1c008a8a:	c29c                	sw	a5,0(a3)
1c008a8c:	8e070693          	addi	a3,a4,-1824
1c008a90:	2d5ac7b7          	lui	a5,0x2d5ac
1c008a94:	968a                	add	a3,a3,sp
1c008a96:	55178793          	addi	a5,a5,1361 # 2d5ac551 <__l2_shared_end+0x1159c551>
1c008a9a:	c29c                	sw	a5,0(a3)
1c008a9c:	8e470693          	addi	a3,a4,-1820
1c008aa0:	c51b67b7          	lui	a5,0xc51b6
1c008aa4:	968a                	add	a3,a3,sp
1c008aa6:	5fc78793          	addi	a5,a5,1532 # c51b65fc <__l2_shared_end+0xa91a65fc>
1c008aaa:	c29c                	sw	a5,0(a3)
1c008aac:	8e870693          	addi	a3,a4,-1816
1c008ab0:	024347b7          	lui	a5,0x2434
1c008ab4:	968a                	add	a3,a3,sp
1c008ab6:	1ab78793          	addi	a5,a5,427 # 24341ab <__CTOR_LIST__-0x19bcbe59>
1c008aba:	c29c                	sw	a5,0(a3)
1c008abc:	8ec70693          	addi	a3,a4,-1812
1c008ac0:	4ccc17b7          	lui	a5,0x4ccc1
1c008ac4:	968a                	add	a3,a3,sp
1c008ac6:	32878793          	addi	a5,a5,808 # 4ccc1328 <__l2_shared_end+0x30cb1328>
1c008aca:	c29c                	sw	a5,0(a3)
1c008acc:	8f070693          	addi	a3,a4,-1808
1c008ad0:	2cf5c7b7          	lui	a5,0x2cf5c
1c008ad4:	968a                	add	a3,a3,sp
1c008ad6:	68c78793          	addi	a5,a5,1676 # 2cf5c68c <__l2_shared_end+0x10f4c68c>
1c008ada:	c29c                	sw	a5,0(a3)
1c008adc:	8f470693          	addi	a3,a4,-1804
1c008ae0:	cde327b7          	lui	a5,0xcde32
1c008ae4:	968a                	add	a3,a3,sp
1c008ae6:	78d78793          	addi	a5,a5,1933 # cde3278d <__l2_shared_end+0xb1e2278d>
1c008aea:	c29c                	sw	a5,0(a3)
1c008aec:	8f870693          	addi	a3,a4,-1800
1c008af0:	9a8457b7          	lui	a5,0x9a845
1c008af4:	968a                	add	a3,a3,sp
1c008af6:	17878793          	addi	a5,a5,376 # 9a845178 <__l2_shared_end+0x7e835178>
1c008afa:	c29c                	sw	a5,0(a3)
1c008afc:	8fc70693          	addi	a3,a4,-1796
1c008b00:	f04347b7          	lui	a5,0xf0434
1c008b04:	968a                	add	a3,a3,sp
1c008b06:	38c78793          	addi	a5,a5,908 # f043438c <__l2_shared_end+0xd442438c>
1c008b0a:	c29c                	sw	a5,0(a3)
1c008b0c:	90070693          	addi	a3,a4,-1792
1c008b10:	6c6cf7b7          	lui	a5,0x6c6cf
1c008b14:	968a                	add	a3,a3,sp
1c008b16:	dc778793          	addi	a5,a5,-569 # 6c6cedc7 <__l2_shared_end+0x506bedc7>
1c008b1a:	c29c                	sw	a5,0(a3)
1c008b1c:	90470693          	addi	a3,a4,-1788
1c008b20:	c565f7b7          	lui	a5,0xc565f
1c008b24:	968a                	add	a3,a3,sp
1c008b26:	7b978793          	addi	a5,a5,1977 # c565f7b9 <__l2_shared_end+0xa964f7b9>
1c008b2a:	c29c                	sw	a5,0(a3)
1c008b2c:	90870693          	addi	a3,a4,-1784
1c008b30:	bc5587b7          	lui	a5,0xbc558
1c008b34:	968a                	add	a3,a3,sp
1c008b36:	e0478793          	addi	a5,a5,-508 # bc557e04 <__l2_shared_end+0xa0547e04>
1c008b3a:	c29c                	sw	a5,0(a3)
1c008b3c:	90c70693          	addi	a3,a4,-1780
1c008b40:	b9d5b7b7          	lui	a5,0xb9d5b
1c008b44:	968a                	add	a3,a3,sp
1c008b46:	a4878793          	addi	a5,a5,-1464 # b9d5aa48 <__l2_shared_end+0x9dd4aa48>
1c008b4a:	c29c                	sw	a5,0(a3)
1c008b4c:	91070693          	addi	a3,a4,-1776
1c008b50:	878217b7          	lui	a5,0x87821
1c008b54:	968a                	add	a3,a3,sp
1c008b56:	23278793          	addi	a5,a5,562 # 87821232 <__l2_shared_end+0x6b811232>
1c008b5a:	c29c                	sw	a5,0(a3)
1c008b5c:	91470693          	addi	a3,a4,-1772
1c008b60:	db3917b7          	lui	a5,0xdb391
1c008b64:	968a                	add	a3,a3,sp
1c008b66:	9f778793          	addi	a5,a5,-1545 # db3909f7 <__l2_shared_end+0xbf3809f7>
1c008b6a:	c29c                	sw	a5,0(a3)
1c008b6c:	91870693          	addi	a3,a4,-1768
1c008b70:	c06147b7          	lui	a5,0xc0614
1c008b74:	968a                	add	a3,a3,sp
1c008b76:	a7578793          	addi	a5,a5,-1419 # c0613a75 <__l2_shared_end+0xa4603a75>
1c008b7a:	c29c                	sw	a5,0(a3)
1c008b7c:	91c70693          	addi	a3,a4,-1764
1c008b80:	3018e7b7          	lui	a5,0x3018e
1c008b84:	968a                	add	a3,a3,sp
1c008b86:	bd778793          	addi	a5,a5,-1065 # 3018dbd7 <__l2_shared_end+0x1417dbd7>
1c008b8a:	c29c                	sw	a5,0(a3)
1c008b8c:	92070693          	addi	a3,a4,-1760
1c008b90:	8c2857b7          	lui	a5,0x8c285
1c008b94:	968a                	add	a3,a3,sp
1c008b96:	6c278793          	addi	a5,a5,1730 # 8c2856c2 <__l2_shared_end+0x702756c2>
1c008b9a:	c29c                	sw	a5,0(a3)
1c008b9c:	92470693          	addi	a3,a4,-1756
1c008ba0:	9bcc87b7          	lui	a5,0x9bcc8
1c008ba4:	968a                	add	a3,a3,sp
1c008ba6:	51c78793          	addi	a5,a5,1308 # 9bcc851c <__l2_shared_end+0x7fcb851c>
1c008baa:	c29c                	sw	a5,0(a3)
1c008bac:	92870693          	addi	a3,a4,-1752
1c008bb0:	77f9                	lui	a5,0xffffe
1c008bb2:	968a                	add	a3,a3,sp
1c008bb4:	5bc78793          	addi	a5,a5,1468 # ffffe5bc <__l2_shared_end+0xe3fee5bc>
1c008bb8:	00f69023          	sh	a5,0(a3)
1c008bbc:	92a70693          	addi	a3,a4,-1750
1c008bc0:	968a                	add	a3,a3,sp
1c008bc2:	f8300793          	li	a5,-125
1c008bc6:	00f68023          	sb	a5,0(a3)
1c008bca:	92b70693          	addi	a3,a4,-1749
1c008bce:	968a                	add	a3,a3,sp
1c008bd0:	06600793          	li	a5,102
1c008bd4:	00f68023          	sb	a5,0(a3)
1c008bd8:	92c70693          	addi	a3,a4,-1748
1c008bdc:	c828c7b7          	lui	a5,0xc828c
1c008be0:	968a                	add	a3,a3,sp
1c008be2:	5da78793          	addi	a5,a5,1498 # c828c5da <__l2_shared_end+0xac27c5da>
1c008be6:	c29c                	sw	a5,0(a3)
1c008be8:	93070693          	addi	a3,a4,-1744
1c008bec:	691bd7b7          	lui	a5,0x691bd
1c008bf0:	968a                	add	a3,a3,sp
1c008bf2:	69378793          	addi	a5,a5,1683 # 691bd693 <__l2_shared_end+0x4d1ad693>
1c008bf6:	c29c                	sw	a5,0(a3)
1c008bf8:	93470693          	addi	a3,a4,-1740
1c008bfc:	82cb17b7          	lui	a5,0x82cb1
1c008c00:	968a                	add	a3,a3,sp
1c008c02:	b8578793          	addi	a5,a5,-1147 # 82cb0b85 <__l2_shared_end+0x66ca0b85>
1c008c06:	c29c                	sw	a5,0(a3)
1c008c08:	93870693          	addi	a3,a4,-1736
1c008c0c:	698397b7          	lui	a5,0x69839
1c008c10:	968a                	add	a3,a3,sp
1c008c12:	e7578793          	addi	a5,a5,-395 # 69838e75 <__l2_shared_end+0x4d828e75>
1c008c16:	c29c                	sw	a5,0(a3)
1c008c18:	93c70693          	addi	a3,a4,-1732
1c008c1c:	16f8e7b7          	lui	a5,0x16f8e
1c008c20:	968a                	add	a3,a3,sp
1c008c22:	13678793          	addi	a5,a5,310 # 16f8e136 <__CTOR_LIST__-0x5071ece>
1c008c26:	c29c                	sw	a5,0(a3)
1c008c28:	94070693          	addi	a3,a4,-1728
1c008c2c:	645867b7          	lui	a5,0x64586
1c008c30:	968a                	add	a3,a3,sp
1c008c32:	13878793          	addi	a5,a5,312 # 64586138 <__l2_shared_end+0x48576138>
1c008c36:	c29c                	sw	a5,0(a3)
1c008c38:	94470693          	addi	a3,a4,-1724
1c008c3c:	5bd3d7b7          	lui	a5,0x5bd3d
1c008c40:	968a                	add	a3,a3,sp
1c008c42:	a8278793          	addi	a5,a5,-1406 # 5bd3ca82 <__l2_shared_end+0x3fd2ca82>
1c008c46:	c29c                	sw	a5,0(a3)
1c008c48:	94870693          	addi	a3,a4,-1720
1c008c4c:	7f43b7b7          	lui	a5,0x7f43b
1c008c50:	968a                	add	a3,a3,sp
1c008c52:	14d78793          	addi	a5,a5,333 # 7f43b14d <__l2_shared_end+0x6342b14d>
1c008c56:	c29c                	sw	a5,0(a3)
1c008c58:	94c70693          	addi	a3,a4,-1716
1c008c5c:	b68077b7          	lui	a5,0xb6807
1c008c60:	968a                	add	a3,a3,sp
1c008c62:	9ad78793          	addi	a5,a5,-1619 # b68069ad <__l2_shared_end+0x9a7f69ad>
1c008c66:	c29c                	sw	a5,0(a3)
1c008c68:	95070693          	addi	a3,a4,-1712
1c008c6c:	65b187b7          	lui	a5,0x65b18
1c008c70:	968a                	add	a3,a3,sp
1c008c72:	06278793          	addi	a5,a5,98 # 65b18062 <__l2_shared_end+0x49b08062>
1c008c76:	c29c                	sw	a5,0(a3)
1c008c78:	95470693          	addi	a3,a4,-1708
1c008c7c:	24f577b7          	lui	a5,0x24f57
1c008c80:	968a                	add	a3,a3,sp
1c008c82:	22d78793          	addi	a5,a5,557 # 24f5722d <__l2_shared_end+0x8f4722d>
1c008c86:	c29c                	sw	a5,0(a3)
1c008c88:	95870693          	addi	a3,a4,-1704
1c008c8c:	5f01b7b7          	lui	a5,0x5f01b
1c008c90:	968a                	add	a3,a3,sp
1c008c92:	80778793          	addi	a5,a5,-2041 # 5f01a807 <__l2_shared_end+0x4300a807>
1c008c96:	c29c                	sw	a5,0(a3)
1c008c98:	95c70693          	addi	a3,a4,-1700
1c008c9c:	759ec7b7          	lui	a5,0x759ec
1c008ca0:	968a                	add	a3,a3,sp
1c008ca2:	28578793          	addi	a5,a5,645 # 759ec285 <__l2_shared_end+0x599dc285>
1c008ca6:	c29c                	sw	a5,0(a3)
1c008ca8:	96070693          	addi	a3,a4,-1696
1c008cac:	338917b7          	lui	a5,0x33891
1c008cb0:	968a                	add	a3,a3,sp
1c008cb2:	5b278793          	addi	a5,a5,1458 # 338915b2 <__l2_shared_end+0x178815b2>
1c008cb6:	c29c                	sw	a5,0(a3)
1c008cb8:	96470693          	addi	a3,a4,-1692
1c008cbc:	7d88f7b7          	lui	a5,0x7d88f
1c008cc0:	968a                	add	a3,a3,sp
1c008cc2:	5a478793          	addi	a5,a5,1444 # 7d88f5a4 <__l2_shared_end+0x6187f5a4>
1c008cc6:	c29c                	sw	a5,0(a3)
1c008cc8:	96870693          	addi	a3,a4,-1688
1c008ccc:	83b527b7          	lui	a5,0x83b52
1c008cd0:	968a                	add	a3,a3,sp
1c008cd2:	0b378793          	addi	a5,a5,179 # 83b520b3 <__l2_shared_end+0x67b420b3>
1c008cd6:	c29c                	sw	a5,0(a3)
1c008cd8:	96c70693          	addi	a3,a4,-1684
1c008cdc:	27cad7b7          	lui	a5,0x27cad
1c008ce0:	968a                	add	a3,a3,sp
1c008ce2:	bcd78793          	addi	a5,a5,-1075 # 27cacbcd <__l2_shared_end+0xbc9cbcd>
1c008ce6:	c29c                	sw	a5,0(a3)
1c008ce8:	97070693          	addi	a3,a4,-1680
1c008cec:	f821b7b7          	lui	a5,0xf821b
1c008cf0:	968a                	add	a3,a3,sp
1c008cf2:	c4e78793          	addi	a5,a5,-946 # f821ac4e <__l2_shared_end+0xdc20ac4e>
1c008cf6:	c29c                	sw	a5,0(a3)
1c008cf8:	97470693          	addi	a3,a4,-1676
1c008cfc:	b87937b7          	lui	a5,0xb8793
1c008d00:	968a                	add	a3,a3,sp
1c008d02:	87078793          	addi	a5,a5,-1936 # b8792870 <__l2_shared_end+0x9c782870>
1c008d06:	c29c                	sw	a5,0(a3)
1c008d08:	97870693          	addi	a3,a4,-1672
1c008d0c:	62fb57b7          	lui	a5,0x62fb5
1c008d10:	968a                	add	a3,a3,sp
1c008d12:	abc78793          	addi	a5,a5,-1348 # 62fb4abc <__l2_shared_end+0x46fa4abc>
1c008d16:	c29c                	sw	a5,0(a3)
1c008d18:	97c70693          	addi	a3,a4,-1668
1c008d1c:	146d07b7          	lui	a5,0x146d0
1c008d20:	968a                	add	a3,a3,sp
1c008d22:	5ba78793          	addi	a5,a5,1466 # 146d05ba <__CTOR_LIST__-0x792fa4a>
1c008d26:	c29c                	sw	a5,0(a3)
1c008d28:	98070693          	addi	a3,a4,-1664
1c008d2c:	159217b7          	lui	a5,0x15921
1c008d30:	968a                	add	a3,a3,sp
1c008d32:	26578793          	addi	a5,a5,613 # 15921265 <__CTOR_LIST__-0x66ded9f>
1c008d36:	c29c                	sw	a5,0(a3)
1c008d38:	98470693          	addi	a3,a4,-1660
1c008d3c:	4665c7b7          	lui	a5,0x4665c
1c008d40:	968a                	add	a3,a3,sp
1c008d42:	75478793          	addi	a5,a5,1876 # 4665c754 <__l2_shared_end+0x2a64c754>
1c008d46:	c29c                	sw	a5,0(a3)
1c008d48:	98870693          	addi	a3,a4,-1656
1c008d4c:	bd9657b7          	lui	a5,0xbd965
1c008d50:	968a                	add	a3,a3,sp
1c008d52:	c4d78793          	addi	a5,a5,-947 # bd964c4d <__l2_shared_end+0xa1954c4d>
1c008d56:	c29c                	sw	a5,0(a3)
1c008d58:	98c70693          	addi	a3,a4,-1652
1c008d5c:	2097a7b7          	lui	a5,0x2097a
1c008d60:	968a                	add	a3,a3,sp
1c008d62:	a3c78793          	addi	a5,a5,-1476 # 20979a3c <__l2_shared_end+0x4969a3c>
1c008d66:	c29c                	sw	a5,0(a3)
1c008d68:	99070693          	addi	a3,a4,-1648
1c008d6c:	393387b7          	lui	a5,0x39338
1c008d70:	968a                	add	a3,a3,sp
1c008d72:	c1878793          	addi	a5,a5,-1000 # 39337c18 <__l2_shared_end+0x1d327c18>
1c008d76:	c29c                	sw	a5,0(a3)
1c008d78:	99470693          	addi	a3,a4,-1644
1c008d7c:	c43b67b7          	lui	a5,0xc43b6
1c008d80:	968a                	add	a3,a3,sp
1c008d82:	9d078793          	addi	a5,a5,-1584 # c43b59d0 <__l2_shared_end+0xa83a59d0>
1c008d86:	c29c                	sw	a5,0(a3)
1c008d88:	99870693          	addi	a3,a4,-1640
1c008d8c:	5591a7b7          	lui	a5,0x5591a
1c008d90:	968a                	add	a3,a3,sp
1c008d92:	5bb78793          	addi	a5,a5,1467 # 5591a5bb <__l2_shared_end+0x3990a5bb>
1c008d96:	c29c                	sw	a5,0(a3)
1c008d98:	99c70693          	addi	a3,a4,-1636
1c008d9c:	b8f6a7b7          	lui	a5,0xb8f6a
1c008da0:	968a                	add	a3,a3,sp
1c008da2:	f4678793          	addi	a5,a5,-186 # b8f69f46 <__l2_shared_end+0x9cf59f46>
1c008da6:	c29c                	sw	a5,0(a3)
1c008da8:	9a070693          	addi	a3,a4,-1632
1c008dac:	c55f97b7          	lui	a5,0xc55f9
1c008db0:	968a                	add	a3,a3,sp
1c008db2:	a6878793          	addi	a5,a5,-1432 # c55f8a68 <__l2_shared_end+0xa95e8a68>
1c008db6:	c29c                	sw	a5,0(a3)
1c008db8:	9a470693          	addi	a3,a4,-1628
1c008dbc:	d44677b7          	lui	a5,0xd4467
1c008dc0:	968a                	add	a3,a3,sp
1c008dc2:	bfa78793          	addi	a5,a5,-1030 # d4466bfa <__l2_shared_end+0xb8456bfa>
1c008dc6:	c29c                	sw	a5,0(a3)
1c008dc8:	9a870693          	addi	a3,a4,-1624
1c008dcc:	bd6807b7          	lui	a5,0xbd680
1c008dd0:	968a                	add	a3,a3,sp
1c008dd2:	60778793          	addi	a5,a5,1543 # bd680607 <__l2_shared_end+0xa1670607>
1c008dd6:	c29c                	sw	a5,0(a3)
1c008dd8:	9ac70693          	addi	a3,a4,-1620
1c008ddc:	795f97b7          	lui	a5,0x795f9
1c008de0:	968a                	add	a3,a3,sp
1c008de2:	c1678793          	addi	a5,a5,-1002 # 795f8c16 <__l2_shared_end+0x5d5e8c16>
1c008de6:	c29c                	sw	a5,0(a3)
1c008de8:	9b070693          	addi	a3,a4,-1616
1c008dec:	097697b7          	lui	a5,0x9769
1c008df0:	968a                	add	a3,a3,sp
1c008df2:	26478793          	addi	a5,a5,612 # 9769264 <__CTOR_LIST__-0x12896da0>
1c008df6:	c29c                	sw	a5,0(a3)
1c008df8:	9b470693          	addi	a3,a4,-1612
1c008dfc:	2799a7b7          	lui	a5,0x2799a
1c008e00:	968a                	add	a3,a3,sp
1c008e02:	94078793          	addi	a5,a5,-1728 # 27999940 <__l2_shared_end+0xb989940>
1c008e06:	c29c                	sw	a5,0(a3)
1c008e08:	9b870693          	addi	a3,a4,-1608
1c008e0c:	b23687b7          	lui	a5,0xb2368
1c008e10:	968a                	add	a3,a3,sp
1c008e12:	26278793          	addi	a5,a5,610 # b2368262 <__l2_shared_end+0x96358262>
1c008e16:	c29c                	sw	a5,0(a3)
1c008e18:	9bc70693          	addi	a3,a4,-1604
1c008e1c:	436837b7          	lui	a5,0x43683
1c008e20:	968a                	add	a3,a3,sp
1c008e22:	94178793          	addi	a5,a5,-1727 # 43682941 <__l2_shared_end+0x27672941>
1c008e26:	c29c                	sw	a5,0(a3)
1c008e28:	9c070693          	addi	a3,a4,-1600
1c008e2c:	2abc37b7          	lui	a5,0x2abc3
1c008e30:	968a                	add	a3,a3,sp
1c008e32:	c8d78793          	addi	a5,a5,-883 # 2abc2c8d <__l2_shared_end+0xebb2c8d>
1c008e36:	c29c                	sw	a5,0(a3)
1c008e38:	9c470693          	addi	a3,a4,-1596
1c008e3c:	09bc97b7          	lui	a5,0x9bc9
1c008e40:	968a                	add	a3,a3,sp
1c008e42:	a9778793          	addi	a5,a5,-1385 # 9bc8a97 <__CTOR_LIST__-0x1243756d>
1c008e46:	c29c                	sw	a5,0(a3)
1c008e48:	9c870693          	addi	a3,a4,-1592
1c008e4c:	1b2927b7          	lui	a5,0x1b292
1c008e50:	968a                	add	a3,a3,sp
1c008e52:	07378793          	addi	a5,a5,115 # 1b292073 <__CTOR_LIST__-0xd6df91>
1c008e56:	c29c                	sw	a5,0(a3)
1c008e58:	9cc70693          	addi	a3,a4,-1588
1c008e5c:	63e4d7b7          	lui	a5,0x63e4d
1c008e60:	968a                	add	a3,a3,sp
1c008e62:	70e78793          	addi	a5,a5,1806 # 63e4d70e <__l2_shared_end+0x47e3d70e>
1c008e66:	c29c                	sw	a5,0(a3)
1c008e68:	9d070693          	addi	a3,a4,-1584
1c008e6c:	e2bbd7b7          	lui	a5,0xe2bbd
1c008e70:	968a                	add	a3,a3,sp
1c008e72:	91e78793          	addi	a5,a5,-1762 # e2bbc91e <__l2_shared_end+0xc6bac91e>
1c008e76:	c29c                	sw	a5,0(a3)
1c008e78:	9d470693          	addi	a3,a4,-1580
1c008e7c:	b63ac7b7          	lui	a5,0xb63ac
1c008e80:	968a                	add	a3,a3,sp
1c008e82:	68a78793          	addi	a5,a5,1674 # b63ac68a <__l2_shared_end+0x9a39c68a>
1c008e86:	c29c                	sw	a5,0(a3)
1c008e88:	9d870693          	addi	a3,a4,-1576
1c008e8c:	6a9717b7          	lui	a5,0x6a971
1c008e90:	968a                	add	a3,a3,sp
1c008e92:	e8678793          	addi	a5,a5,-378 # 6a970e86 <__l2_shared_end+0x4e960e86>
1c008e96:	c29c                	sw	a5,0(a3)
1c008e98:	9dc70693          	addi	a3,a4,-1572
1c008e9c:	fc2a57b7          	lui	a5,0xfc2a5
1c008ea0:	968a                	add	a3,a3,sp
1c008ea2:	5c178793          	addi	a5,a5,1473 # fc2a55c1 <__l2_shared_end+0xe02955c1>
1c008ea6:	c29c                	sw	a5,0(a3)
1c008ea8:	9e070693          	addi	a3,a4,-1568
1c008eac:	697d97b7          	lui	a5,0x697d9
1c008eb0:	968a                	add	a3,a3,sp
1c008eb2:	94378793          	addi	a5,a5,-1725 # 697d8943 <__l2_shared_end+0x4d7c8943>
1c008eb6:	c29c                	sw	a5,0(a3)
1c008eb8:	9e470693          	addi	a3,a4,-1564
1c008ebc:	4392a7b7          	lui	a5,0x4392a
1c008ec0:	968a                	add	a3,a3,sp
1c008ec2:	03778793          	addi	a5,a5,55 # 4392a037 <__l2_shared_end+0x2791a037>
1c008ec6:	c29c                	sw	a5,0(a3)
1c008ec8:	9e870693          	addi	a3,a4,-1560
1c008ecc:	a981c7b7          	lui	a5,0xa981c
1c008ed0:	968a                	add	a3,a3,sp
1c008ed2:	42d78793          	addi	a5,a5,1069 # a981c42d <__l2_shared_end+0x8d80c42d>
1c008ed6:	c29c                	sw	a5,0(a3)
1c008ed8:	9ec70693          	addi	a3,a4,-1556
1c008edc:	27a1c7b7          	lui	a5,0x27a1c
1c008ee0:	968a                	add	a3,a3,sp
1c008ee2:	31478793          	addi	a5,a5,788 # 27a1c314 <__l2_shared_end+0xba0c314>
1c008ee6:	c29c                	sw	a5,0(a3)
1c008ee8:	9f070693          	addi	a3,a4,-1552
1c008eec:	9e0047b7          	lui	a5,0x9e004
1c008ef0:	968a                	add	a3,a3,sp
1c008ef2:	33c78793          	addi	a5,a5,828 # 9e00433c <__l2_shared_end+0x81ff433c>
1c008ef6:	c29c                	sw	a5,0(a3)
1c008ef8:	9f470693          	addi	a3,a4,-1548
1c008efc:	cb23c7b7          	lui	a5,0xcb23c
1c008f00:	968a                	add	a3,a3,sp
1c008f02:	58e78793          	addi	a5,a5,1422 # cb23c58e <__l2_shared_end+0xaf22c58e>
1c008f06:	c29c                	sw	a5,0(a3)
1c008f08:	9f870693          	addi	a3,a4,-1544
1c008f0c:	89d9d7b7          	lui	a5,0x89d9d
1c008f10:	968a                	add	a3,a3,sp
1c008f12:	e9378793          	addi	a5,a5,-365 # 89d9ce93 <__l2_shared_end+0x6dd8ce93>
1c008f16:	c29c                	sw	a5,0(a3)
1c008f18:	9fc70693          	addi	a3,a4,-1540
1c008f1c:	539097b7          	lui	a5,0x53909
1c008f20:	968a                	add	a3,a3,sp
1c008f22:	08f78793          	addi	a5,a5,143 # 5390908f <__l2_shared_end+0x378f908f>
1c008f26:	c29c                	sw	a5,0(a3)
1c008f28:	a0070693          	addi	a3,a4,-1536
1c008f2c:	016ec7b7          	lui	a5,0x16ec
1c008f30:	968a                	add	a3,a3,sp
1c008f32:	a4078793          	addi	a5,a5,-1472 # 16eba40 <__CTOR_LIST__-0x1a9145c4>
1c008f36:	c29c                	sw	a5,0(a3)
1c008f38:	a0470693          	addi	a3,a4,-1532
1c008f3c:	032d57b7          	lui	a5,0x32d5
1c008f40:	968a                	add	a3,a3,sp
1c008f42:	7bc78793          	addi	a5,a5,1980 # 32d57bc <__CTOR_LIST__-0x18d2a848>
1c008f46:	c29c                	sw	a5,0(a3)
1c008f48:	a0870693          	addi	a3,a4,-1528
1c008f4c:	21fa97b7          	lui	a5,0x21fa9
1c008f50:	968a                	add	a3,a3,sp
1c008f52:	3a878793          	addi	a5,a5,936 # 21fa93a8 <__l2_shared_end+0x5f993a8>
1c008f56:	c29c                	sw	a5,0(a3)
1c008f58:	a0c70693          	addi	a3,a4,-1524
1c008f5c:	882d37b7          	lui	a5,0x882d3
1c008f60:	968a                	add	a3,a3,sp
1c008f62:	4c478793          	addi	a5,a5,1220 # 882d34c4 <__l2_shared_end+0x6c2c34c4>
1c008f66:	c29c                	sw	a5,0(a3)
1c008f68:	a1070693          	addi	a3,a4,-1520
1c008f6c:	b37747b7          	lui	a5,0xb3774
1c008f70:	968a                	add	a3,a3,sp
1c008f72:	edc78793          	addi	a5,a5,-292 # b3773edc <__l2_shared_end+0x97763edc>
1c008f76:	c29c                	sw	a5,0(a3)
1c008f78:	a1470693          	addi	a3,a4,-1516
1c008f7c:	63c027b7          	lui	a5,0x63c02
1c008f80:	968a                	add	a3,a3,sp
1c008f82:	f3b78793          	addi	a5,a5,-197 # 63c01f3b <__l2_shared_end+0x47bf1f3b>
1c008f86:	c29c                	sw	a5,0(a3)
1c008f88:	a1870693          	addi	a3,a4,-1512
1c008f8c:	9d68e7b7          	lui	a5,0x9d68e
1c008f90:	968a                	add	a3,a3,sp
1c008f92:	bdc78793          	addi	a5,a5,-1060 # 9d68dbdc <__l2_shared_end+0x8167dbdc>
1c008f96:	c29c                	sw	a5,0(a3)
1c008f98:	a1c70693          	addi	a3,a4,-1508
1c008f9c:	84fc57b7          	lui	a5,0x84fc5
1c008fa0:	968a                	add	a3,a3,sp
1c008fa2:	f8c78793          	addi	a5,a5,-116 # 84fc4f8c <__l2_shared_end+0x68fb4f8c>
1c008fa6:	c29c                	sw	a5,0(a3)
1c008fa8:	a2070693          	addi	a3,a4,-1504
1c008fac:	77fd                	lui	a5,0xfffff
1c008fae:	968a                	add	a3,a3,sp
1c008fb0:	80c78793          	addi	a5,a5,-2036 # ffffe80c <__l2_shared_end+0xe3fee80c>
1c008fb4:	00f69023          	sh	a5,0(a3)
1c008fb8:	a2270693          	addi	a3,a4,-1502
1c008fbc:	968a                	add	a3,a3,sp
1c008fbe:	07900793          	li	a5,121
1c008fc2:	00f68023          	sb	a5,0(a3)
1c008fc6:	a2370693          	addi	a3,a4,-1501
1c008fca:	968a                	add	a3,a3,sp
1c008fcc:	fcf00793          	li	a5,-49
1c008fd0:	00f68023          	sb	a5,0(a3)
1c008fd4:	a2470693          	addi	a3,a4,-1500
1c008fd8:	851347b7          	lui	a5,0x85134
1c008fdc:	968a                	add	a3,a3,sp
1c008fde:	7b378793          	addi	a5,a5,1971 # 851347b3 <__l2_shared_end+0x691247b3>
1c008fe2:	c29c                	sw	a5,0(a3)
1c008fe4:	a2870693          	addi	a3,a4,-1496
1c008fe8:	c7c737b7          	lui	a5,0xc7c73
1c008fec:	968a                	add	a3,a3,sp
1c008fee:	c5178793          	addi	a5,a5,-943 # c7c72c51 <__l2_shared_end+0xabc62c51>
1c008ff2:	c29c                	sw	a5,0(a3)
1c008ff4:	a2c70693          	addi	a3,a4,-1492
1c008ff8:	b18317b7          	lui	a5,0xb1831
1c008ffc:	968a                	add	a3,a3,sp
1c008ffe:	35978793          	addi	a5,a5,857 # b1831359 <__l2_shared_end+0x95821359>
1c009002:	c29c                	sw	a5,0(a3)
1c009004:	a3070693          	addi	a3,a4,-1488
1c009008:	3298d7b7          	lui	a5,0x3298d
1c00900c:	968a                	add	a3,a3,sp
1c00900e:	8fa78793          	addi	a5,a5,-1798 # 3298c8fa <__l2_shared_end+0x1697c8fa>
1c009012:	c29c                	sw	a5,0(a3)
1c009014:	a3470693          	addi	a3,a4,-1484
1c009018:	32b327b7          	lui	a5,0x32b32
1c00901c:	968a                	add	a3,a3,sp
1c00901e:	cbb78793          	addi	a5,a5,-837 # 32b31cbb <__l2_shared_end+0x16b21cbb>
1c009022:	c29c                	sw	a5,0(a3)
1c009024:	a3870693          	addi	a3,a4,-1480
1c009028:	682877b7          	lui	a5,0x68287
1c00902c:	968a                	add	a3,a3,sp
1c00902e:	d4e78793          	addi	a5,a5,-690 # 68286d4e <__l2_shared_end+0x4c276d4e>
1c009032:	c29c                	sw	a5,0(a3)
1c009034:	a3c70693          	addi	a3,a4,-1476
1c009038:	cb4497b7          	lui	a5,0xcb449
1c00903c:	968a                	add	a3,a3,sp
1c00903e:	89178793          	addi	a5,a5,-1903 # cb448891 <__l2_shared_end+0xaf438891>
1c009042:	c29c                	sw	a5,0(a3)
1c009044:	a4070693          	addi	a3,a4,-1472
1c009048:	f84dd7b7          	lui	a5,0xf84dd
1c00904c:	968a                	add	a3,a3,sp
1c00904e:	a2078793          	addi	a5,a5,-1504 # f84dca20 <__l2_shared_end+0xdc4cca20>
1c009052:	c29c                	sw	a5,0(a3)
1c009054:	a4470693          	addi	a3,a4,-1468
1c009058:	2428b7b7          	lui	a5,0x2428b
1c00905c:	968a                	add	a3,a3,sp
1c00905e:	41278793          	addi	a5,a5,1042 # 2428b412 <__l2_shared_end+0x827b412>
1c009062:	c29c                	sw	a5,0(a3)
1c009064:	a4870693          	addi	a3,a4,-1464
1c009068:	384337b7          	lui	a5,0x38433
1c00906c:	968a                	add	a3,a3,sp
1c00906e:	a1978793          	addi	a5,a5,-1511 # 38432a19 <__l2_shared_end+0x1c422a19>
1c009072:	c29c                	sw	a5,0(a3)
1c009074:	a4c70693          	addi	a3,a4,-1460
1c009078:	7aa337b7          	lui	a5,0x7aa33
1c00907c:	968a                	add	a3,a3,sp
1c00907e:	0791                	addi	a5,a5,4
1c009080:	c29c                	sw	a5,0(a3)
1c009082:	a5070693          	addi	a3,a4,-1456
1c009086:	1ec447b7          	lui	a5,0x1ec44
1c00908a:	968a                	add	a3,a3,sp
1c00908c:	a7f78793          	addi	a5,a5,-1409 # 1ec43a7f <__l2_shared_end+0x2c33a7f>
1c009090:	c29c                	sw	a5,0(a3)
1c009092:	a5470693          	addi	a3,a4,-1452
1c009096:	e0cf67b7          	lui	a5,0xe0cf6
1c00909a:	968a                	add	a3,a3,sp
1c00909c:	4d078793          	addi	a5,a5,1232 # e0cf64d0 <__l2_shared_end+0xc4ce64d0>
1c0090a0:	c29c                	sw	a5,0(a3)
1c0090a2:	a5870693          	addi	a3,a4,-1448
1c0090a6:	917b17b7          	lui	a5,0x917b1
1c0090aa:	968a                	add	a3,a3,sp
1c0090ac:	55578793          	addi	a5,a5,1365 # 917b1555 <__l2_shared_end+0x757a1555>
1c0090b0:	c29c                	sw	a5,0(a3)
1c0090b2:	a5c70693          	addi	a3,a4,-1444
1c0090b6:	8f10c7b7          	lui	a5,0x8f10c
1c0090ba:	968a                	add	a3,a3,sp
1c0090bc:	0b578793          	addi	a5,a5,181 # 8f10c0b5 <__l2_shared_end+0x730fc0b5>
1c0090c0:	c29c                	sw	a5,0(a3)
1c0090c2:	a6070693          	addi	a3,a4,-1440
1c0090c6:	a013a7b7          	lui	a5,0xa013a
1c0090ca:	968a                	add	a3,a3,sp
1c0090cc:	6b778793          	addi	a5,a5,1719 # a013a6b7 <__l2_shared_end+0x8412a6b7>
1c0090d0:	c29c                	sw	a5,0(a3)
1c0090d2:	a6470693          	addi	a3,a4,-1436
1c0090d6:	d6f437b7          	lui	a5,0xd6f43
1c0090da:	968a                	add	a3,a3,sp
1c0090dc:	a1178793          	addi	a5,a5,-1519 # d6f42a11 <__l2_shared_end+0xbaf32a11>
1c0090e0:	c29c                	sw	a5,0(a3)
1c0090e2:	a6870693          	addi	a3,a4,-1432
1c0090e6:	a3f857b7          	lui	a5,0xa3f85
1c0090ea:	968a                	add	a3,a3,sp
1c0090ec:	84e78793          	addi	a5,a5,-1970 # a3f8484e <__l2_shared_end+0x87f7484e>
1c0090f0:	c29c                	sw	a5,0(a3)
1c0090f2:	a6c70693          	addi	a3,a4,-1428
1c0090f6:	998a37b7          	lui	a5,0x998a3
1c0090fa:	968a                	add	a3,a3,sp
1c0090fc:	24578793          	addi	a5,a5,581 # 998a3245 <__l2_shared_end+0x7d893245>
1c009100:	c29c                	sw	a5,0(a3)
1c009102:	a7070693          	addi	a3,a4,-1424
1c009106:	910cc7b7          	lui	a5,0x910cc
1c00910a:	968a                	add	a3,a3,sp
1c00910c:	fb778793          	addi	a5,a5,-73 # 910cbfb7 <__l2_shared_end+0x750bbfb7>
1c009110:	c29c                	sw	a5,0(a3)
1c009112:	a7470693          	addi	a3,a4,-1420
1c009116:	157207b7          	lui	a5,0x15720
1c00911a:	968a                	add	a3,a3,sp
1c00911c:	3cb78793          	addi	a5,a5,971 # 157203cb <__CTOR_LIST__-0x68dfc39>
1c009120:	c29c                	sw	a5,0(a3)
1c009122:	a7870693          	addi	a3,a4,-1416
1c009126:	d47a17b7          	lui	a5,0xd47a1
1c00912a:	968a                	add	a3,a3,sp
1c00912c:	7b078793          	addi	a5,a5,1968 # d47a17b0 <__l2_shared_end+0xb87917b0>
1c009130:	c29c                	sw	a5,0(a3)
1c009132:	a7c70693          	addi	a3,a4,-1412
1c009136:	d7e667b7          	lui	a5,0xd7e66
1c00913a:	968a                	add	a3,a3,sp
1c00913c:	3c278793          	addi	a5,a5,962 # d7e663c2 <__l2_shared_end+0xbbe563c2>
1c009140:	c29c                	sw	a5,0(a3)
1c009142:	a8070693          	addi	a3,a4,-1408
1c009146:	c85867b7          	lui	a5,0xc8586
1c00914a:	968a                	add	a3,a3,sp
1c00914c:	98f78793          	addi	a5,a5,-1649 # c858598f <__l2_shared_end+0xac57598f>
1c009150:	c29c                	sw	a5,0(a3)
1c009152:	a8470693          	addi	a3,a4,-1404
1c009156:	4f8e17b7          	lui	a5,0x4f8e1
1c00915a:	968a                	add	a3,a3,sp
1c00915c:	54878793          	addi	a5,a5,1352 # 4f8e1548 <__l2_shared_end+0x338d1548>
1c009160:	c29c                	sw	a5,0(a3)
1c009162:	a8870693          	addi	a3,a4,-1400
1c009166:	247c17b7          	lui	a5,0x247c1
1c00916a:	968a                	add	a3,a3,sp
1c00916c:	1d278793          	addi	a5,a5,466 # 247c11d2 <__l2_shared_end+0x87b11d2>
1c009170:	c29c                	sw	a5,0(a3)
1c009172:	a8c70693          	addi	a3,a4,-1396
1c009176:	3cab17b7          	lui	a5,0x3cab1
1c00917a:	968a                	add	a3,a3,sp
1c00917c:	c8e78793          	addi	a5,a5,-882 # 3cab0c8e <__l2_shared_end+0x20aa0c8e>
1c009180:	c29c                	sw	a5,0(a3)
1c009182:	a9070693          	addi	a3,a4,-1392
1c009186:	271e97b7          	lui	a5,0x271e9
1c00918a:	968a                	add	a3,a3,sp
1c00918c:	cf978793          	addi	a5,a5,-775 # 271e8cf9 <__l2_shared_end+0xb1d8cf9>
1c009190:	c29c                	sw	a5,0(a3)
1c009192:	a9470693          	addi	a3,a4,-1388
1c009196:	f83897b7          	lui	a5,0xf8389
1c00919a:	968a                	add	a3,a3,sp
1c00919c:	88678793          	addi	a5,a5,-1914 # f8388886 <__l2_shared_end+0xdc378886>
1c0091a0:	c29c                	sw	a5,0(a3)
1c0091a2:	a9870693          	addi	a3,a4,-1384
1c0091a6:	56a097b7          	lui	a5,0x56a09
1c0091aa:	968a                	add	a3,a3,sp
1c0091ac:	b4278793          	addi	a5,a5,-1214 # 56a08b42 <__l2_shared_end+0x3a9f8b42>
1c0091b0:	c29c                	sw	a5,0(a3)
1c0091b2:	a9c70693          	addi	a3,a4,-1380
1c0091b6:	1eb6f7b7          	lui	a5,0x1eb6f
1c0091ba:	968a                	add	a3,a3,sp
1c0091bc:	62d78793          	addi	a5,a5,1581 # 1eb6f62d <__l2_shared_end+0x2b5f62d>
1c0091c0:	c29c                	sw	a5,0(a3)
1c0091c2:	aa070693          	addi	a3,a4,-1376
1c0091c6:	b8e237b7          	lui	a5,0xb8e23
1c0091ca:	968a                	add	a3,a3,sp
1c0091cc:	68778793          	addi	a5,a5,1671 # b8e23687 <__l2_shared_end+0x9ce13687>
1c0091d0:	c29c                	sw	a5,0(a3)
1c0091d2:	aa470693          	addi	a3,a4,-1372
1c0091d6:	796067b7          	lui	a5,0x79606
1c0091da:	968a                	add	a3,a3,sp
1c0091dc:	6b278793          	addi	a5,a5,1714 # 796066b2 <__l2_shared_end+0x5d5f66b2>
1c0091e0:	c29c                	sw	a5,0(a3)
1c0091e2:	aa870693          	addi	a3,a4,-1368
1c0091e6:	2ccee7b7          	lui	a5,0x2ccee
1c0091ea:	968a                	add	a3,a3,sp
1c0091ec:	07e1                	addi	a5,a5,24
1c0091ee:	c29c                	sw	a5,0(a3)
1c0091f0:	aac70693          	addi	a3,a4,-1364
1c0091f4:	c867b7b7          	lui	a5,0xc867b
1c0091f8:	968a                	add	a3,a3,sp
1c0091fa:	178d                	addi	a5,a5,-29
1c0091fc:	c29c                	sw	a5,0(a3)
1c0091fe:	ab070693          	addi	a3,a4,-1360
1c009202:	a4c2a7b7          	lui	a5,0xa4c2a
1c009206:	968a                	add	a3,a3,sp
1c009208:	51f78793          	addi	a5,a5,1311 # a4c2a51f <__l2_shared_end+0x88c1a51f>
1c00920c:	c29c                	sw	a5,0(a3)
1c00920e:	ab470693          	addi	a3,a4,-1356
1c009212:	878ec7b7          	lui	a5,0x878ec
1c009216:	968a                	add	a3,a3,sp
1c009218:	cd278793          	addi	a5,a5,-814 # 878ebcd2 <__l2_shared_end+0x6b8dbcd2>
1c00921c:	c29c                	sw	a5,0(a3)
1c00921e:	ab870693          	addi	a3,a4,-1352
1c009222:	02b727b7          	lui	a5,0x2b72
1c009226:	968a                	add	a3,a3,sp
1c009228:	51878793          	addi	a5,a5,1304 # 2b72518 <__CTOR_LIST__-0x1948daec>
1c00922c:	c29c                	sw	a5,0(a3)
1c00922e:	abc70693          	addi	a3,a4,-1348
1c009232:	39cac7b7          	lui	a5,0x39cac
1c009236:	968a                	add	a3,a3,sp
1c009238:	eb378793          	addi	a5,a5,-333 # 39cabeb3 <__l2_shared_end+0x1dc9beb3>
1c00923c:	c29c                	sw	a5,0(a3)
1c00923e:	ac070693          	addi	a3,a4,-1344
1c009242:	18a537b7          	lui	a5,0x18a53
1c009246:	968a                	add	a3,a3,sp
1c009248:	37b78793          	addi	a5,a5,891 # 18a5337b <__CTOR_LIST__-0x35acc89>
1c00924c:	c29c                	sw	a5,0(a3)
1c00924e:	ac470693          	addi	a3,a4,-1340
1c009252:	39b1d7b7          	lui	a5,0x39b1d
1c009256:	968a                	add	a3,a3,sp
1c009258:	8da78793          	addi	a5,a5,-1830 # 39b1c8da <__l2_shared_end+0x1db0c8da>
1c00925c:	c29c                	sw	a5,0(a3)
1c00925e:	ac870693          	addi	a3,a4,-1336
1c009262:	904a57b7          	lui	a5,0x904a5
1c009266:	968a                	add	a3,a3,sp
1c009268:	93d78793          	addi	a5,a5,-1731 # 904a493d <__l2_shared_end+0x7449493d>
1c00926c:	c29c                	sw	a5,0(a3)
1c00926e:	acc70693          	addi	a3,a4,-1332
1c009272:	b50117b7          	lui	a5,0xb5011
1c009276:	968a                	add	a3,a3,sp
1c009278:	c9078793          	addi	a5,a5,-880 # b5010c90 <__l2_shared_end+0x99000c90>
1c00927c:	c29c                	sw	a5,0(a3)
1c00927e:	ad070693          	addi	a3,a4,-1328
1c009282:	7c8527b7          	lui	a5,0x7c852
1c009286:	968a                	add	a3,a3,sp
1c009288:	55978793          	addi	a5,a5,1369 # 7c852559 <__l2_shared_end+0x60842559>
1c00928c:	c29c                	sw	a5,0(a3)
1c00928e:	ad470693          	addi	a3,a4,-1324
1c009292:	052787b7          	lui	a5,0x5278
1c009296:	968a                	add	a3,a3,sp
1c009298:	0bf78793          	addi	a5,a5,191 # 52780bf <__CTOR_LIST__-0x16d87f45>
1c00929c:	c29c                	sw	a5,0(a3)
1c00929e:	ad870693          	addi	a3,a4,-1320
1c0092a2:	f1a437b7          	lui	a5,0xf1a43
1c0092a6:	968a                	add	a3,a3,sp
1c0092a8:	61d78793          	addi	a5,a5,1565 # f1a4361d <__l2_shared_end+0xd5a3361d>
1c0092ac:	c29c                	sw	a5,0(a3)
1c0092ae:	adc70693          	addi	a3,a4,-1316
1c0092b2:	dcd2a7b7          	lui	a5,0xdcd2a
1c0092b6:	968a                	add	a3,a3,sp
1c0092b8:	44178793          	addi	a5,a5,1089 # dcd2a441 <__l2_shared_end+0xc0d1a441>
1c0092bc:	c29c                	sw	a5,0(a3)
1c0092be:	ae070693          	addi	a3,a4,-1312
1c0092c2:	304107b7          	lui	a5,0x30410
1c0092c6:	968a                	add	a3,a3,sp
1c0092c8:	34478793          	addi	a5,a5,836 # 30410344 <__l2_shared_end+0x14400344>
1c0092cc:	c29c                	sw	a5,0(a3)
1c0092ce:	ae470693          	addi	a3,a4,-1308
1c0092d2:	b53c07b7          	lui	a5,0xb53c0
1c0092d6:	968a                	add	a3,a3,sp
1c0092d8:	35e78793          	addi	a5,a5,862 # b53c035e <__l2_shared_end+0x993b035e>
1c0092dc:	c29c                	sw	a5,0(a3)
1c0092de:	ae870693          	addi	a3,a4,-1304
1c0092e2:	e44b07b7          	lui	a5,0xe44b0
1c0092e6:	968a                	add	a3,a3,sp
1c0092e8:	70a78793          	addi	a5,a5,1802 # e44b070a <__l2_shared_end+0xc84a070a>
1c0092ec:	c29c                	sw	a5,0(a3)
1c0092ee:	aec70693          	addi	a3,a4,-1300
1c0092f2:	336ac7b7          	lui	a5,0x336ac
1c0092f6:	968a                	add	a3,a3,sp
1c0092f8:	75978793          	addi	a5,a5,1881 # 336ac759 <__l2_shared_end+0x1769c759>
1c0092fc:	c29c                	sw	a5,0(a3)
1c0092fe:	af070693          	addi	a3,a4,-1296
1c009302:	c452a7b7          	lui	a5,0xc452a
1c009306:	968a                	add	a3,a3,sp
1c009308:	a9a78793          	addi	a5,a5,-1382 # c4529a9a <__l2_shared_end+0xa8519a9a>
1c00930c:	c29c                	sw	a5,0(a3)
1c00930e:	af470693          	addi	a3,a4,-1292
1c009312:	ea0d37b7          	lui	a5,0xea0d3
1c009316:	968a                	add	a3,a3,sp
1c009318:	64778793          	addi	a5,a5,1607 # ea0d3647 <__l2_shared_end+0xce0c3647>
1c00931c:	c29c                	sw	a5,0(a3)
1c00931e:	af870693          	addi	a3,a4,-1288
1c009322:	cc9957b7          	lui	a5,0xcc995
1c009326:	968a                	add	a3,a3,sp
1c009328:	62a78793          	addi	a5,a5,1578 # cc99562a <__l2_shared_end+0xb098562a>
1c00932c:	c29c                	sw	a5,0(a3)
1c00932e:	afc70693          	addi	a3,a4,-1284
1c009332:	423a77b7          	lui	a5,0x423a7
1c009336:	968a                	add	a3,a3,sp
1c009338:	8ea78793          	addi	a5,a5,-1814 # 423a68ea <__l2_shared_end+0x263968ea>
1c00933c:	c29c                	sw	a5,0(a3)
1c00933e:	b0070693          	addi	a3,a4,-1280
1c009342:	fca617b7          	lui	a5,0xfca61
1c009346:	968a                	add	a3,a3,sp
1c009348:	a4378793          	addi	a5,a5,-1469 # fca60a43 <__l2_shared_end+0xe0a50a43>
1c00934c:	c29c                	sw	a5,0(a3)
1c00934e:	b0470693          	addi	a3,a4,-1276
1c009352:	5cc747b7          	lui	a5,0x5cc74
1c009356:	968a                	add	a3,a3,sp
1c009358:	59578793          	addi	a5,a5,1429 # 5cc74595 <__l2_shared_end+0x40c64595>
1c00935c:	c29c                	sw	a5,0(a3)
1c00935e:	b0870693          	addi	a3,a4,-1272
1c009362:	1a6497b7          	lui	a5,0x1a649
1c009366:	968a                	add	a3,a3,sp
1c009368:	20478793          	addi	a5,a5,516 # 1a649204 <__CTOR_LIST__-0x19b6e00>
1c00936c:	c29c                	sw	a5,0(a3)
1c00936e:	b0c70693          	addi	a3,a4,-1268
1c009372:	26e9a7b7          	lui	a5,0x26e9a
1c009376:	968a                	add	a3,a3,sp
1c009378:	4f778793          	addi	a5,a5,1271 # 26e9a4f7 <__l2_shared_end+0xae8a4f7>
1c00937c:	c29c                	sw	a5,0(a3)
1c00937e:	b1070693          	addi	a3,a4,-1264
1c009382:	4e38d7b7          	lui	a5,0x4e38d
1c009386:	968a                	add	a3,a3,sp
1c009388:	c7b78793          	addi	a5,a5,-901 # 4e38cc7b <__l2_shared_end+0x3237cc7b>
1c00938c:	c29c                	sw	a5,0(a3)
1c00938e:	b1470693          	addi	a3,a4,-1260
1c009392:	f44c77b7          	lui	a5,0xf44c7
1c009396:	968a                	add	a3,a3,sp
1c009398:	15578793          	addi	a5,a5,341 # f44c7155 <__l2_shared_end+0xd84b7155>
1c00939c:	c29c                	sw	a5,0(a3)
1c00939e:	b1870693          	addi	a3,a4,-1256
1c0093a2:	6791                	lui	a5,0x4
1c0093a4:	968a                	add	a3,a3,sp
1c0093a6:	19778793          	addi	a5,a5,407 # 4197 <__CTOR_LIST__-0x1bffbe6d>
1c0093aa:	00f69023          	sh	a5,0(a3)
1c0093ae:	b1a70693          	addi	a3,a4,-1254
1c0093b2:	968a                	add	a3,a3,sp
1c0093b4:	57ad                	li	a5,-21
1c0093b6:	00f68023          	sb	a5,0(a3)
1c0093ba:	b1b70693          	addi	a3,a4,-1253
1c0093be:	968a                	add	a3,a3,sp
1c0093c0:	fa300793          	li	a5,-93
1c0093c4:	00f68023          	sb	a5,0(a3)
1c0093c8:	b1c70693          	addi	a3,a4,-1252
1c0093cc:	1764a7b7          	lui	a5,0x1764a
1c0093d0:	968a                	add	a3,a3,sp
1c0093d2:	db678793          	addi	a5,a5,-586 # 17649db6 <__CTOR_LIST__-0x49b624e>
1c0093d6:	c29c                	sw	a5,0(a3)
1c0093d8:	b2070693          	addi	a3,a4,-1248
1c0093dc:	5d4757b7          	lui	a5,0x5d475
1c0093e0:	968a                	add	a3,a3,sp
1c0093e2:	5a578793          	addi	a5,a5,1445 # 5d4755a5 <__l2_shared_end+0x414655a5>
1c0093e6:	c29c                	sw	a5,0(a3)
1c0093e8:	b2470693          	addi	a3,a4,-1244
1c0093ec:	121107b7          	lui	a5,0x12110
1c0093f0:	968a                	add	a3,a3,sp
1c0093f2:	23c78793          	addi	a5,a5,572 # 1211023c <__CTOR_LIST__-0x9eefdc8>
1c0093f6:	c29c                	sw	a5,0(a3)
1c0093f8:	b2870693          	addi	a3,a4,-1240
1c0093fc:	8c58b7b7          	lui	a5,0x8c58b
1c009400:	968a                	add	a3,a3,sp
1c009402:	3b878793          	addi	a5,a5,952 # 8c58b3b8 <__l2_shared_end+0x7057b3b8>
1c009406:	c29c                	sw	a5,0(a3)
1c009408:	b2c70693          	addi	a3,a4,-1236
1c00940c:	5c7b77b7          	lui	a5,0x5c7b7
1c009410:	968a                	add	a3,a3,sp
1c009412:	46378793          	addi	a5,a5,1123 # 5c7b7463 <__l2_shared_end+0x407a7463>
1c009416:	c29c                	sw	a5,0(a3)
1c009418:	b3070693          	addi	a3,a4,-1232
1c00941c:	e9fed7b7          	lui	a5,0xe9fed
1c009420:	968a                	add	a3,a3,sp
1c009422:	ce278793          	addi	a5,a5,-798 # e9fecce2 <__l2_shared_end+0xcdfdcce2>
1c009426:	c29c                	sw	a5,0(a3)
1c009428:	b3470693          	addi	a3,a4,-1228
1c00942c:	41fa97b7          	lui	a5,0x41fa9
1c009430:	968a                	add	a3,a3,sp
1c009432:	71278793          	addi	a5,a5,1810 # 41fa9712 <__l2_shared_end+0x25f99712>
1c009436:	c29c                	sw	a5,0(a3)
1c009438:	b3870693          	addi	a3,a4,-1224
1c00943c:	9842a7b7          	lui	a5,0x9842a
1c009440:	968a                	add	a3,a3,sp
1c009442:	c9f78793          	addi	a5,a5,-865 # 98429c9f <__l2_shared_end+0x7c419c9f>
1c009446:	c29c                	sw	a5,0(a3)
1c009448:	b3c70693          	addi	a3,a4,-1220
1c00944c:	08ff97b7          	lui	a5,0x8ff9
1c009450:	968a                	add	a3,a3,sp
1c009452:	f9778793          	addi	a5,a5,-105 # 8ff8f97 <__CTOR_LIST__-0x1300706d>
1c009456:	c29c                	sw	a5,0(a3)
1c009458:	b4070693          	addi	a3,a4,-1216
1c00945c:	55a8e7b7          	lui	a5,0x55a8e
1c009460:	968a                	add	a3,a3,sp
1c009462:	87078793          	addi	a5,a5,-1936 # 55a8d870 <__l2_shared_end+0x39a7d870>
1c009466:	c29c                	sw	a5,0(a3)
1c009468:	b4470693          	addi	a3,a4,-1212
1c00946c:	ca9997b7          	lui	a5,0xca999
1c009470:	968a                	add	a3,a3,sp
1c009472:	8b478793          	addi	a5,a5,-1868 # ca9988b4 <__l2_shared_end+0xae9888b4>
1c009476:	c29c                	sw	a5,0(a3)
1c009478:	b4870693          	addi	a3,a4,-1208
1c00947c:	837db7b7          	lui	a5,0x837db
1c009480:	968a                	add	a3,a3,sp
1c009482:	49b78793          	addi	a5,a5,1179 # 837db49b <__l2_shared_end+0x677cb49b>
1c009486:	c29c                	sw	a5,0(a3)
1c009488:	b4c70693          	addi	a3,a4,-1204
1c00948c:	03d267b7          	lui	a5,0x3d26
1c009490:	968a                	add	a3,a3,sp
1c009492:	26d78793          	addi	a5,a5,621 # 3d2626d <__CTOR_LIST__-0x182d9d97>
1c009496:	c29c                	sw	a5,0(a3)
1c009498:	b5070693          	addi	a3,a4,-1200
1c00949c:	6f81c7b7          	lui	a5,0x6f81c
1c0094a0:	968a                	add	a3,a3,sp
1c0094a2:	38c78793          	addi	a5,a5,908 # 6f81c38c <__l2_shared_end+0x5380c38c>
1c0094a6:	c29c                	sw	a5,0(a3)
1c0094a8:	b5470693          	addi	a3,a4,-1196
1c0094ac:	b38b77b7          	lui	a5,0xb38b7
1c0094b0:	968a                	add	a3,a3,sp
1c0094b2:	93a78793          	addi	a5,a5,-1734 # b38b693a <__l2_shared_end+0x978a693a>
1c0094b6:	c29c                	sw	a5,0(a3)
1c0094b8:	b5870693          	addi	a3,a4,-1192
1c0094bc:	c77907b7          	lui	a5,0xc7790
1c0094c0:	968a                	add	a3,a3,sp
1c0094c2:	fbb78793          	addi	a5,a5,-69 # c778ffbb <__l2_shared_end+0xab77ffbb>
1c0094c6:	c29c                	sw	a5,0(a3)
1c0094c8:	b5c70693          	addi	a3,a4,-1188
1c0094cc:	eab017b7          	lui	a5,0xeab01
1c0094d0:	968a                	add	a3,a3,sp
1c0094d2:	5a078793          	addi	a5,a5,1440 # eab015a0 <__l2_shared_end+0xceaf15a0>
1c0094d6:	c29c                	sw	a5,0(a3)
1c0094d8:	b6070693          	addi	a3,a4,-1184
1c0094dc:	426367b7          	lui	a5,0x42636
1c0094e0:	968a                	add	a3,a3,sp
1c0094e2:	07e5                	addi	a5,a5,25
1c0094e4:	c29c                	sw	a5,0(a3)
1c0094e6:	b6470693          	addi	a3,a4,-1180
1c0094ea:	0bd5e7b7          	lui	a5,0xbd5e
1c0094ee:	968a                	add	a3,a3,sp
1c0094f0:	19278793          	addi	a5,a5,402 # bd5e192 <__CTOR_LIST__-0x102a1e72>
1c0094f4:	c29c                	sw	a5,0(a3)
1c0094f6:	b6870693          	addi	a3,a4,-1176
1c0094fa:	3a04e7b7          	lui	a5,0x3a04e
1c0094fe:	968a                	add	a3,a3,sp
1c009500:	10378793          	addi	a5,a5,259 # 3a04e103 <__l2_shared_end+0x1e03e103>
1c009504:	c29c                	sw	a5,0(a3)
1c009506:	b6c70693          	addi	a3,a4,-1172
1c00950a:	279bd7b7          	lui	a5,0x279bd
1c00950e:	968a                	add	a3,a3,sp
1c009510:	a9878793          	addi	a5,a5,-1384 # 279bca98 <__l2_shared_end+0xb9aca98>
1c009514:	c29c                	sw	a5,0(a3)
1c009516:	b7070693          	addi	a3,a4,-1168
1c00951a:	8b6647b7          	lui	a5,0x8b664
1c00951e:	968a                	add	a3,a3,sp
1c009520:	e0678793          	addi	a5,a5,-506 # 8b663e06 <__l2_shared_end+0x6f653e06>
1c009524:	c29c                	sw	a5,0(a3)
1c009526:	b7470693          	addi	a3,a4,-1164
1c00952a:	7dc1e7b7          	lui	a5,0x7dc1e
1c00952e:	968a                	add	a3,a3,sp
1c009530:	20578793          	addi	a5,a5,517 # 7dc1e205 <__l2_shared_end+0x61c0e205>
1c009534:	c29c                	sw	a5,0(a3)
1c009536:	b7870693          	addi	a3,a4,-1160
1c00953a:	2b3837b7          	lui	a5,0x2b383
1c00953e:	968a                	add	a3,a3,sp
1c009540:	d6978793          	addi	a5,a5,-663 # 2b382d69 <__l2_shared_end+0xf372d69>
1c009544:	c29c                	sw	a5,0(a3)
1c009546:	b7c70693          	addi	a3,a4,-1156
1c00954a:	a86517b7          	lui	a5,0xa8651
1c00954e:	968a                	add	a3,a3,sp
1c009550:	31878793          	addi	a5,a5,792 # a8651318 <__l2_shared_end+0x8c641318>
1c009554:	c29c                	sw	a5,0(a3)
1c009556:	b8070693          	addi	a3,a4,-1152
1c00955a:	c78e57b7          	lui	a5,0xc78e5
1c00955e:	968a                	add	a3,a3,sp
1c009560:	11878793          	addi	a5,a5,280 # c78e5118 <__l2_shared_end+0xab8d5118>
1c009564:	c29c                	sw	a5,0(a3)
1c009566:	b8470693          	addi	a3,a4,-1148
1c00956a:	370377b7          	lui	a5,0x37037
1c00956e:	968a                	add	a3,a3,sp
1c009570:	24778793          	addi	a5,a5,583 # 37037247 <__l2_shared_end+0x1b027247>
1c009574:	c29c                	sw	a5,0(a3)
1c009576:	b8870693          	addi	a3,a4,-1144
1c00957a:	596827b7          	lui	a5,0x59682
1c00957e:	968a                	add	a3,a3,sp
1c009580:	8ca78793          	addi	a5,a5,-1846 # 596818ca <__l2_shared_end+0x3d6718ca>
1c009584:	c29c                	sw	a5,0(a3)
1c009586:	b8c70693          	addi	a3,a4,-1140
1c00958a:	902af7b7          	lui	a5,0x902af
1c00958e:	968a                	add	a3,a3,sp
1c009590:	46a78793          	addi	a5,a5,1130 # 902af46a <__l2_shared_end+0x7429f46a>
1c009594:	c29c                	sw	a5,0(a3)
1c009596:	b9070693          	addi	a3,a4,-1136
1c00959a:	0387b7b7          	lui	a5,0x387b
1c00959e:	968a                	add	a3,a3,sp
1c0095a0:	1fa78793          	addi	a5,a5,506 # 387b1fa <__CTOR_LIST__-0x18784e0a>
1c0095a4:	c29c                	sw	a5,0(a3)
1c0095a6:	b9470693          	addi	a3,a4,-1132
1c0095aa:	8f4bd7b7          	lui	a5,0x8f4bd
1c0095ae:	968a                	add	a3,a3,sp
1c0095b0:	77378793          	addi	a5,a5,1907 # 8f4bd773 <__l2_shared_end+0x734ad773>
1c0095b4:	c29c                	sw	a5,0(a3)
1c0095b6:	b9870693          	addi	a3,a4,-1128
1c0095ba:	86ac47b7          	lui	a5,0x86ac4
1c0095be:	968a                	add	a3,a3,sp
1c0095c0:	26d78793          	addi	a5,a5,621 # 86ac426d <__l2_shared_end+0x6aab426d>
1c0095c4:	c29c                	sw	a5,0(a3)
1c0095c6:	b9c70693          	addi	a3,a4,-1124
1c0095ca:	3aca97b7          	lui	a5,0x3aca9
1c0095ce:	968a                	add	a3,a3,sp
1c0095d0:	bb178793          	addi	a5,a5,-1103 # 3aca8bb1 <__l2_shared_end+0x1ec98bb1>
1c0095d4:	c29c                	sw	a5,0(a3)
1c0095d6:	ba070693          	addi	a3,a4,-1120
1c0095da:	686447b7          	lui	a5,0x68644
1c0095de:	968a                	add	a3,a3,sp
1c0095e0:	7b078793          	addi	a5,a5,1968 # 686447b0 <__l2_shared_end+0x4c6347b0>
1c0095e4:	c29c                	sw	a5,0(a3)
1c0095e6:	ba470693          	addi	a3,a4,-1116
1c0095ea:	0c06f7b7          	lui	a5,0xc06f
1c0095ee:	968a                	add	a3,a3,sp
1c0095f0:	20c78793          	addi	a5,a5,524 # c06f20c <__CTOR_LIST__-0xff90df8>
1c0095f4:	c29c                	sw	a5,0(a3)
1c0095f6:	ba870693          	addi	a3,a4,-1112
1c0095fa:	5bbea7b7          	lui	a5,0x5bbea
1c0095fe:	968a                	add	a3,a3,sp
1c009600:	a5278793          	addi	a5,a5,-1454 # 5bbe9a52 <__l2_shared_end+0x3fbd9a52>
1c009604:	c29c                	sw	a5,0(a3)
1c009606:	bac70693          	addi	a3,a4,-1108
1c00960a:	4d47f7b7          	lui	a5,0x4d47f
1c00960e:	968a                	add	a3,a3,sp
1c009610:	48e78793          	addi	a5,a5,1166 # 4d47f48e <__l2_shared_end+0x3146f48e>
1c009614:	c29c                	sw	a5,0(a3)
1c009616:	bb070693          	addi	a3,a4,-1104
1c00961a:	a847d7b7          	lui	a5,0xa847d
1c00961e:	968a                	add	a3,a3,sp
1c009620:	cc878793          	addi	a5,a5,-824 # a847ccc8 <__l2_shared_end+0x8c46ccc8>
1c009624:	c29c                	sw	a5,0(a3)
1c009626:	bb470693          	addi	a3,a4,-1100
1c00962a:	88bd47b7          	lui	a5,0x88bd4
1c00962e:	968a                	add	a3,a3,sp
1c009630:	e0378793          	addi	a5,a5,-509 # 88bd3e03 <__l2_shared_end+0x6cbc3e03>
1c009634:	c29c                	sw	a5,0(a3)
1c009636:	bb870693          	addi	a3,a4,-1096
1c00963a:	0f0a47b7          	lui	a5,0xf0a4
1c00963e:	968a                	add	a3,a3,sp
1c009640:	e4d78793          	addi	a5,a5,-435 # f0a3e4d <__CTOR_LIST__-0xcf5c1b7>
1c009644:	c29c                	sw	a5,0(a3)
1c009646:	bbc70693          	addi	a3,a4,-1092
1c00964a:	0d4297b7          	lui	a5,0xd429
1c00964e:	968a                	add	a3,a3,sp
1c009650:	41a78793          	addi	a5,a5,1050 # d42941a <__CTOR_LIST__-0xebd6bea>
1c009654:	c29c                	sw	a5,0(a3)
1c009656:	bc070693          	addi	a3,a4,-1088
1c00965a:	629147b7          	lui	a5,0x62914
1c00965e:	968a                	add	a3,a3,sp
1c009660:	c8a78793          	addi	a5,a5,-886 # 62913c8a <__l2_shared_end+0x46903c8a>
1c009664:	c29c                	sw	a5,0(a3)
1c009666:	bc470693          	addi	a3,a4,-1084
1c00966a:	a287b7b7          	lui	a5,0xa287b
1c00966e:	968a                	add	a3,a3,sp
1c009670:	fb778793          	addi	a5,a5,-73 # a287afb7 <__l2_shared_end+0x8686afb7>
1c009674:	c29c                	sw	a5,0(a3)
1c009676:	bc870693          	addi	a3,a4,-1080
1c00967a:	6494a7b7          	lui	a5,0x6494a
1c00967e:	968a                	add	a3,a3,sp
1c009680:	3c878793          	addi	a5,a5,968 # 6494a3c8 <__l2_shared_end+0x4893a3c8>
1c009684:	c29c                	sw	a5,0(a3)
1c009686:	bcc70693          	addi	a3,a4,-1076
1c00968a:	a3f437b7          	lui	a5,0xa3f43
1c00968e:	968a                	add	a3,a3,sp
1c009690:	47478793          	addi	a5,a5,1140 # a3f43474 <__l2_shared_end+0x87f33474>
1c009694:	c29c                	sw	a5,0(a3)
1c009696:	bd070693          	addi	a3,a4,-1072
1c00969a:	784737b7          	lui	a5,0x78473
1c00969e:	968a                	add	a3,a3,sp
1c0096a0:	bbc78793          	addi	a5,a5,-1092 # 78472bbc <__l2_shared_end+0x5c462bbc>
1c0096a4:	c29c                	sw	a5,0(a3)
1c0096a6:	bd470693          	addi	a3,a4,-1068
1c0096aa:	cf82b7b7          	lui	a5,0xcf82b
1c0096ae:	968a                	add	a3,a3,sp
1c0096b0:	c1378793          	addi	a5,a5,-1005 # cf82ac13 <__l2_shared_end+0xb381ac13>
1c0096b4:	c29c                	sw	a5,0(a3)
1c0096b6:	bd870693          	addi	a3,a4,-1064
1c0096ba:	b58577b7          	lui	a5,0xb5857
1c0096be:	968a                	add	a3,a3,sp
1c0096c0:	13878793          	addi	a5,a5,312 # b5857138 <__l2_shared_end+0x99847138>
1c0096c4:	c29c                	sw	a5,0(a3)
1c0096c6:	bdc70693          	addi	a3,a4,-1060
1c0096ca:	89f6f7b7          	lui	a5,0x89f6f
1c0096ce:	968a                	add	a3,a3,sp
1c0096d0:	78778793          	addi	a5,a5,1927 # 89f6f787 <__l2_shared_end+0x6df5f787>
1c0096d4:	c29c                	sw	a5,0(a3)
1c0096d6:	be070693          	addi	a3,a4,-1056
1c0096da:	ddcdf7b7          	lui	a5,0xddcdf
1c0096de:	968a                	add	a3,a3,sp
1c0096e0:	c3878793          	addi	a5,a5,-968 # ddcdec38 <__l2_shared_end+0xc1ccec38>
1c0096e4:	c29c                	sw	a5,0(a3)
1c0096e6:	be470693          	addi	a3,a4,-1052
1c0096ea:	43d137b7          	lui	a5,0x43d13
1c0096ee:	968a                	add	a3,a3,sp
1c0096f0:	46978793          	addi	a5,a5,1129 # 43d13469 <__l2_shared_end+0x27d03469>
1c0096f4:	c29c                	sw	a5,0(a3)
1c0096f6:	be870693          	addi	a3,a4,-1048
1c0096fa:	4abb17b7          	lui	a5,0x4abb1
1c0096fe:	968a                	add	a3,a3,sp
1c009700:	7ba78793          	addi	a5,a5,1978 # 4abb17ba <__l2_shared_end+0x2eba17ba>
1c009704:	c29c                	sw	a5,0(a3)
1c009706:	bec70693          	addi	a3,a4,-1044
1c00970a:	d26627b7          	lui	a5,0xd2662
1c00970e:	968a                	add	a3,a3,sp
1c009710:	57178793          	addi	a5,a5,1393 # d2662571 <__l2_shared_end+0xb6652571>
1c009714:	c29c                	sw	a5,0(a3)
1c009716:	bf070693          	addi	a3,a4,-1040
1c00971a:	dbad67b7          	lui	a5,0xdbad6
1c00971e:	968a                	add	a3,a3,sp
1c009720:	aa578793          	addi	a5,a5,-1371 # dbad5aa5 <__l2_shared_end+0xbfac5aa5>
1c009724:	c29c                	sw	a5,0(a3)
1c009726:	bf470693          	addi	a3,a4,-1036
1c00972a:	367127b7          	lui	a5,0x36712
1c00972e:	968a                	add	a3,a3,sp
1c009730:	33378793          	addi	a5,a5,819 # 36712333 <__l2_shared_end+0x1a702333>
1c009734:	c29c                	sw	a5,0(a3)
1c009736:	bf870693          	addi	a3,a4,-1032
1c00973a:	4a1b47b7          	lui	a5,0x4a1b4
1c00973e:	968a                	add	a3,a3,sp
1c009740:	06778793          	addi	a5,a5,103 # 4a1b4067 <__l2_shared_end+0x2e1a4067>
1c009744:	c29c                	sw	a5,0(a3)
1c009746:	bfc70693          	addi	a3,a4,-1028
1c00974a:	236cc7b7          	lui	a5,0x236cc
1c00974e:	968a                	add	a3,a3,sp
1c009750:	82078793          	addi	a5,a5,-2016 # 236cb820 <__l2_shared_end+0x76bb820>
1c009754:	c29c                	sw	a5,0(a3)
1c009756:	c0070693          	addi	a3,a4,-1024
1c00975a:	437617b7          	lui	a5,0x43761
1c00975e:	968a                	add	a3,a3,sp
1c009760:	0bf78793          	addi	a5,a5,191 # 437610bf <__l2_shared_end+0x277510bf>
1c009764:	c29c                	sw	a5,0(a3)
1c009766:	c0470693          	addi	a3,a4,-1020
1c00976a:	c1b8b7b7          	lui	a5,0xc1b8b
1c00976e:	968a                	add	a3,a3,sp
1c009770:	69c78793          	addi	a5,a5,1692 # c1b8b69c <__l2_shared_end+0xa5b7b69c>
1c009774:	c29c                	sw	a5,0(a3)
1c009776:	c0870693          	addi	a3,a4,-1016
1c00977a:	ba9d47b7          	lui	a5,0xba9d4
1c00977e:	968a                	add	a3,a3,sp
1c009780:	81578793          	addi	a5,a5,-2027 # ba9d3815 <__l2_shared_end+0x9e9c3815>
1c009784:	c29c                	sw	a5,0(a3)
1c009786:	c0c70693          	addi	a3,a4,-1012
1c00978a:	910c77b7          	lui	a5,0x910c7
1c00978e:	968a                	add	a3,a3,sp
1c009790:	f4e78793          	addi	a5,a5,-178 # 910c6f4e <__l2_shared_end+0x750b6f4e>
1c009794:	c29c                	sw	a5,0(a3)
1c009796:	c1070693          	addi	a3,a4,-1008
1c00979a:	77f9                	lui	a5,0xffffe
1c00979c:	968a                	add	a3,a3,sp
1c00979e:	75b78793          	addi	a5,a5,1883 # ffffe75b <__l2_shared_end+0xe3fee75b>
1c0097a2:	00f69023          	sh	a5,0(a3)
1c0097a6:	c1270693          	addi	a3,a4,-1006
1c0097aa:	968a                	add	a3,a3,sp
1c0097ac:	06000793          	li	a5,96
1c0097b0:	00f68023          	sb	a5,0(a3)
1c0097b4:	c1370693          	addi	a3,a4,-1005
1c0097b8:	968a                	add	a3,a3,sp
1c0097ba:	02b00793          	li	a5,43
1c0097be:	00f68023          	sb	a5,0(a3)
1c0097c2:	c1470693          	addi	a3,a4,-1004
1c0097c6:	35b507b7          	lui	a5,0x35b50
1c0097ca:	968a                	add	a3,a3,sp
1c0097cc:	39778793          	addi	a5,a5,919 # 35b50397 <__l2_shared_end+0x19b40397>
1c0097d0:	c29c                	sw	a5,0(a3)
1c0097d2:	c1870693          	addi	a3,a4,-1000
1c0097d6:	5c4a17b7          	lui	a5,0x5c4a1
1c0097da:	968a                	add	a3,a3,sp
1c0097dc:	e0778793          	addi	a5,a5,-505 # 5c4a0e07 <__l2_shared_end+0x40490e07>
1c0097e0:	c29c                	sw	a5,0(a3)
1c0097e2:	c1c70693          	addi	a3,a4,-996
1c0097e6:	d7a557b7          	lui	a5,0xd7a55
1c0097ea:	968a                	add	a3,a3,sp
1c0097ec:	95678793          	addi	a5,a5,-1706 # d7a54956 <__l2_shared_end+0xbba44956>
1c0097f0:	c29c                	sw	a5,0(a3)
1c0097f2:	c2070693          	addi	a3,a4,-992
1c0097f6:	021507b7          	lui	a5,0x2150
1c0097fa:	968a                	add	a3,a3,sp
1c0097fc:	50878793          	addi	a5,a5,1288 # 2150508 <__CTOR_LIST__-0x19eafafc>
1c009800:	c29c                	sw	a5,0(a3)
1c009802:	c2470693          	addi	a3,a4,-988
1c009806:	60b207b7          	lui	a5,0x60b20
1c00980a:	968a                	add	a3,a3,sp
1c00980c:	66778793          	addi	a5,a5,1639 # 60b20667 <__l2_shared_end+0x44b10667>
1c009810:	c29c                	sw	a5,0(a3)
1c009812:	c2870693          	addi	a3,a4,-984
1c009816:	d0cb77b7          	lui	a5,0xd0cb7
1c00981a:	968a                	add	a3,a3,sp
1c00981c:	54578793          	addi	a5,a5,1349 # d0cb7545 <__l2_shared_end+0xb4ca7545>
1c009820:	c29c                	sw	a5,0(a3)
1c009822:	c2c70693          	addi	a3,a4,-980
1c009826:	292787b7          	lui	a5,0x29278
1c00982a:	968a                	add	a3,a3,sp
1c00982c:	f6878793          	addi	a5,a5,-152 # 29277f68 <__l2_shared_end+0xd267f68>
1c009830:	c29c                	sw	a5,0(a3)
1c009832:	c3070693          	addi	a3,a4,-976
1c009836:	7d9937b7          	lui	a5,0x7d993
1c00983a:	968a                	add	a3,a3,sp
1c00983c:	aa978793          	addi	a5,a5,-1367 # 7d992aa9 <__l2_shared_end+0x61982aa9>
1c009840:	c29c                	sw	a5,0(a3)
1c009842:	c3470693          	addi	a3,a4,-972
1c009846:	0072f7b7          	lui	a5,0x72f
1c00984a:	968a                	add	a3,a3,sp
1c00984c:	a2178793          	addi	a5,a5,-1503 # 72ea21 <__CTOR_LIST__-0x1b8d15e3>
1c009850:	c29c                	sw	a5,0(a3)
1c009852:	c3870693          	addi	a3,a4,-968
1c009856:	31d827b7          	lui	a5,0x31d82
1c00985a:	968a                	add	a3,a3,sp
1c00985c:	ec478793          	addi	a5,a5,-316 # 31d81ec4 <__l2_shared_end+0x15d71ec4>
1c009860:	893a                	mv	s2,a4
1c009862:	c29c                	sw	a5,0(a3)
1c009864:	c3c70713          	addi	a4,a4,-964
1c009868:	c7f477b7          	lui	a5,0xc7f47
1c00986c:	970a                	add	a4,a4,sp
1c00986e:	55278793          	addi	a5,a5,1362 # c7f47552 <__l2_shared_end+0xabf37552>
1c009872:	c31c                	sw	a5,0(a4)
1c009874:	c4090713          	addi	a4,s2,-960
1c009878:	c89b37b7          	lui	a5,0xc89b3
1c00987c:	970a                	add	a4,a4,sp
1c00987e:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c009882:	c31c                	sw	a5,0(a4)
1c009884:	c4490713          	addi	a4,s2,-956
1c009888:	b91317b7          	lui	a5,0xb9131
1c00988c:	970a                	add	a4,a4,sp
1c00988e:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c009892:	c31c                	sw	a5,0(a4)
1c009894:	c4890713          	addi	a4,s2,-952
1c009898:	6f5847b7          	lui	a5,0x6f584
1c00989c:	970a                	add	a4,a4,sp
1c00989e:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c0098a2:	c31c                	sw	a5,0(a4)
1c0098a4:	c4c90713          	addi	a4,s2,-948
1c0098a8:	b1fe87b7          	lui	a5,0xb1fe8
1c0098ac:	970a                	add	a4,a4,sp
1c0098ae:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c0098b2:	c31c                	sw	a5,0(a4)
1c0098b4:	c5090713          	addi	a4,s2,-944
1c0098b8:	405b07b7          	lui	a5,0x405b0
1c0098bc:	970a                	add	a4,a4,sp
1c0098be:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c0098c2:	c31c                	sw	a5,0(a4)
1c0098c4:	c5490713          	addi	a4,s2,-940
1c0098c8:	433bd7b7          	lui	a5,0x433bd
1c0098cc:	970a                	add	a4,a4,sp
1c0098ce:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c0098d2:	c31c                	sw	a5,0(a4)
1c0098d4:	c5890713          	addi	a4,s2,-936
1c0098d8:	a45f47b7          	lui	a5,0xa45f4
1c0098dc:	970a                	add	a4,a4,sp
1c0098de:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c0098e2:	c31c                	sw	a5,0(a4)
1c0098e4:	c5c90713          	addi	a4,s2,-932
1c0098e8:	8d6c47b7          	lui	a5,0x8d6c4
1c0098ec:	970a                	add	a4,a4,sp
1c0098ee:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c0098f2:	1c000537          	lui	a0,0x1c000
1c0098f6:	c31c                	sw	a5,0(a4)
1c0098f8:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0098fc:	0b3020ef          	jal	ra,1c00c1ae <puts>
1c009900:	64010513          	addi	a0,sp,1600
1c009904:	62000593          	li	a1,1568
1c009908:	84dfe0ef          	jal	ra,1c008154 <printbytes>
1c00990c:	747d                	lui	s0,0xfffff
1c00990e:	c6090793          	addi	a5,s2,-928
1c009912:	978a                	add	a5,a5,sp
1c009914:	3a040493          	addi	s1,s0,928 # fffff3a0 <__l2_shared_end+0xe3fef3a0>
1c009918:	94be                	add	s1,s1,a5
1c00991a:	c6090793          	addi	a5,s2,-928
1c00991e:	978a                	add	a5,a5,sp
1c009920:	3c040413          	addi	s0,s0,960
1c009924:	943e                	add	s0,s0,a5
1c009926:	64010613          	addi	a2,sp,1600
1c00992a:	85a6                	mv	a1,s1
1c00992c:	8522                	mv	a0,s0
1c00992e:	545010ef          	jal	ra,1c00b672 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc>
1c009932:	1c000537          	lui	a0,0x1c000
1c009936:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c00993a:	075020ef          	jal	ra,1c00c1ae <puts>
1c00993e:	1c000537          	lui	a0,0x1c000
1c009942:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c009946:	069020ef          	jal	ra,1c00c1ae <puts>
1c00994a:	62000593          	li	a1,1568
1c00994e:	8522                	mv	a0,s0
1c009950:	805fe0ef          	jal	ra,1c008154 <printbytes>
1c009954:	1c000537          	lui	a0,0x1c000
1c009958:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c00995c:	053020ef          	jal	ra,1c00c1ae <puts>
1c009960:	8526                	mv	a0,s1
1c009962:	02000593          	li	a1,32
1c009966:	feefe0ef          	jal	ra,1c008154 <printbytes>
1c00996a:	48010113          	addi	sp,sp,1152
1c00996e:	7ec12083          	lw	ra,2028(sp)
1c009972:	7e812403          	lw	s0,2024(sp)
1c009976:	7e412483          	lw	s1,2020(sp)
1c00997a:	7e012903          	lw	s2,2016(sp)
1c00997e:	4501                	li	a0,0
1c009980:	7f010113          	addi	sp,sp,2032
1c009984:	8082                	ret

1c009986 <pos_fll_init>:
1c009986:	1101                	addi	sp,sp,-32
1c009988:	1a1005b7          	lui	a1,0x1a100
1c00998c:	c64e                	sw	s3,12(sp)
1c00998e:	00451613          	slli	a2,a0,0x4
1c009992:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c009996:	99b2                	add	s3,s3,a2
1c009998:	0009a703          	lw	a4,0(s3)
1c00999c:	ca26                	sw	s1,20(sp)
1c00999e:	ce06                	sw	ra,28(sp)
1c0099a0:	cc22                	sw	s0,24(sp)
1c0099a2:	c84a                	sw	s2,16(sp)
1c0099a4:	c452                	sw	s4,8(sp)
1c0099a6:	84aa                	mv	s1,a0
1c0099a8:	87ba                	mv	a5,a4
1c0099aa:	04074763          	bltz	a4,1c0099f8 <pos_fll_init+0x72>
1c0099ae:	00858693          	addi	a3,a1,8
1c0099b2:	96b2                	add	a3,a3,a2
1c0099b4:	429c                	lw	a5,0(a3)
1c0099b6:	f0000537          	lui	a0,0xf0000
1c0099ba:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c0099be:	8fe9                	and	a5,a5,a0
1c0099c0:	00502537          	lui	a0,0x502
1c0099c4:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c0099c8:	8fc9                	or	a5,a5,a0
1c0099ca:	05b1                	addi	a1,a1,12
1c0099cc:	c29c                	sw	a5,0(a3)
1c0099ce:	962e                	add	a2,a2,a1
1c0099d0:	4214                	lw	a3,0(a2)
1c0099d2:	fc0107b7          	lui	a5,0xfc010
1c0099d6:	17fd                	addi	a5,a5,-1
1c0099d8:	01875593          	srli	a1,a4,0x18
1c0099dc:	8efd                	and	a3,a3,a5
1c0099de:	0c05e593          	ori	a1,a1,192
1c0099e2:	00871793          	slli	a5,a4,0x8
1c0099e6:	014c0537          	lui	a0,0x14c0
1c0099ea:	8ec9                	or	a3,a3,a0
1c0099ec:	05e2                	slli	a1,a1,0x18
1c0099ee:	83a1                	srli	a5,a5,0x8
1c0099f0:	c214                	sw	a3,0(a2)
1c0099f2:	8fcd                	or	a5,a5,a1
1c0099f4:	00f9a023          	sw	a5,0(s3)
1c0099f8:	1c006437          	lui	s0,0x1c006
1c0099fc:	56440413          	addi	s0,s0,1380 # 1c006564 <pos_fll_freq>
1c009a00:	00249a13          	slli	s4,s1,0x2
1c009a04:	014406b3          	add	a3,s0,s4
1c009a08:	0006a903          	lw	s2,0(a3)
1c009a0c:	02091d63          	bnez	s2,1c009a46 <pos_fll_init+0xc0>
1c009a10:	83e9                	srli	a5,a5,0x1a
1c009a12:	0742                	slli	a4,a4,0x10
1c009a14:	8341                	srli	a4,a4,0x10
1c009a16:	8bbd                	andi	a5,a5,15
1c009a18:	073e                	slli	a4,a4,0xf
1c009a1a:	17fd                	addi	a5,a5,-1
1c009a1c:	00f75933          	srl	s2,a4,a5
1c009a20:	0126a023          	sw	s2,0(a3)
1c009a24:	1c0066b7          	lui	a3,0x1c006
1c009a28:	56068693          	addi	a3,a3,1376 # 1c006560 <pos_fll_is_on>
1c009a2c:	96a6                	add	a3,a3,s1
1c009a2e:	4785                	li	a5,1
1c009a30:	00f68023          	sb	a5,0(a3)
1c009a34:	40f2                	lw	ra,28(sp)
1c009a36:	4462                	lw	s0,24(sp)
1c009a38:	44d2                	lw	s1,20(sp)
1c009a3a:	49b2                	lw	s3,12(sp)
1c009a3c:	4a22                	lw	s4,8(sp)
1c009a3e:	854a                	mv	a0,s2
1c009a40:	4942                	lw	s2,16(sp)
1c009a42:	6105                	addi	sp,sp,32
1c009a44:	8082                	ret
1c009a46:	854a                	mv	a0,s2
1c009a48:	ec0fe0ef          	jal	ra,1c008108 <__clzsi2>
1c009a4c:	1579                	addi	a0,a0,-2
1c009a4e:	8105                	srli	a0,a0,0x1
1c009a50:	c939                	beqz	a0,1c009aa6 <pos_fll_init+0x120>
1c009a52:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c009a56:	1c0066b7          	lui	a3,0x1c006
1c009a5a:	4785                	li	a5,1
1c009a5c:	00c797b3          	sll	a5,a5,a2
1c009a60:	00a91733          	sll	a4,s2,a0
1c009a64:	56068693          	addi	a3,a3,1376 # 1c006560 <pos_fll_is_on>
1c009a68:	7661                	lui	a2,0xffff8
1c009a6a:	8e79                	and	a2,a2,a4
1c009a6c:	009685b3          	add	a1,a3,s1
1c009a70:	97b2                	add	a5,a5,a2
1c009a72:	0005c603          	lbu	a2,0(a1)
1c009a76:	9452                	add	s0,s0,s4
1c009a78:	00a7d7b3          	srl	a5,a5,a0
1c009a7c:	c01c                	sw	a5,0(s0)
1c009a7e:	d65d                	beqz	a2,1c009a2c <pos_fll_init+0xa6>
1c009a80:	0009a783          	lw	a5,0(s3)
1c009a84:	833d                	srli	a4,a4,0xf
1c009a86:	0742                	slli	a4,a4,0x10
1c009a88:	7641                	lui	a2,0xffff0
1c009a8a:	8341                	srli	a4,a4,0x10
1c009a8c:	8ff1                	and	a5,a5,a2
1c009a8e:	8fd9                	or	a5,a5,a4
1c009a90:	0505                	addi	a0,a0,1
1c009a92:	c4000737          	lui	a4,0xc4000
1c009a96:	893d                	andi	a0,a0,15
1c009a98:	177d                	addi	a4,a4,-1
1c009a9a:	056a                	slli	a0,a0,0x1a
1c009a9c:	8ff9                	and	a5,a5,a4
1c009a9e:	8d5d                	or	a0,a0,a5
1c009aa0:	00a9a023          	sw	a0,0(s3)
1c009aa4:	b761                	j	1c009a2c <pos_fll_init+0xa6>
1c009aa6:	4505                	li	a0,1
1c009aa8:	b76d                	j	1c009a52 <pos_fll_init+0xcc>

1c009aaa <pos_fll_constructor>:
1c009aaa:	1c0067b7          	lui	a5,0x1c006
1c009aae:	56478793          	addi	a5,a5,1380 # 1c006564 <pos_fll_freq>
1c009ab2:	0007a023          	sw	zero,0(a5)
1c009ab6:	0007a223          	sw	zero,4(a5)
1c009aba:	1c0067b7          	lui	a5,0x1c006
1c009abe:	56079023          	sh	zero,1376(a5) # 1c006560 <pos_fll_is_on>
1c009ac2:	8082                	ret

1c009ac4 <pos_soc_init>:
1c009ac4:	1141                	addi	sp,sp,-16
1c009ac6:	c606                	sw	ra,12(sp)
1c009ac8:	c422                	sw	s0,8(sp)
1c009aca:	37c5                	jal	1c009aaa <pos_fll_constructor>
1c009acc:	4501                	li	a0,0
1c009ace:	3d65                	jal	1c009986 <pos_fll_init>
1c009ad0:	1c006437          	lui	s0,0x1c006
1c009ad4:	87aa                	mv	a5,a0
1c009ad6:	56c40413          	addi	s0,s0,1388 # 1c00656c <pos_freq_domains>
1c009ada:	4505                	li	a0,1
1c009adc:	c01c                	sw	a5,0(s0)
1c009ade:	3565                	jal	1c009986 <pos_fll_init>
1c009ae0:	40b2                	lw	ra,12(sp)
1c009ae2:	c408                	sw	a0,8(s0)
1c009ae4:	4422                	lw	s0,8(sp)
1c009ae6:	0141                	addi	sp,sp,16
1c009ae8:	8082                	ret

1c009aea <KeccakF1600_StatePermute>:
1c009aea:	1a400837          	lui	a6,0x1a400
1c009aee:	87aa                	mv	a5,a0
1c009af0:	0c850613          	addi	a2,a0,200
1c009af4:	1141                	addi	sp,sp,-16
1c009af6:	40a80533          	sub	a0,a6,a0
1c009afa:	4394                	lw	a3,0(a5)
1c009afc:	00f50733          	add	a4,a0,a5
1c009b00:	0791                	addi	a5,a5,4
1c009b02:	c314                	sw	a3,0(a4)
1c009b04:	fec79be3          	bne	a5,a2,1c009afa <KeccakF1600_StatePermute+0x10>
1c009b08:	4785                	li	a5,1
1c009b0a:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c009b0e:	1a400737          	lui	a4,0x1a400
1c009b12:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c009b16:	8b85                	andi	a5,a5,1
1c009b18:	dfed                	beqz	a5,1c009b12 <KeccakF1600_StatePermute+0x28>
1c009b1a:	c602                	sw	zero,12(sp)
1c009b1c:	4732                	lw	a4,12(sp)
1c009b1e:	03100793          	li	a5,49
1c009b22:	02e7c663          	blt	a5,a4,1c009b4e <KeccakF1600_StatePermute+0x64>
1c009b26:	1a400637          	lui	a2,0x1a400
1c009b2a:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c009b2e:	03100513          	li	a0,49
1c009b32:	4732                	lw	a4,12(sp)
1c009b34:	47b2                	lw	a5,12(sp)
1c009b36:	070a                	slli	a4,a4,0x2
1c009b38:	9732                	add	a4,a4,a2
1c009b3a:	4314                	lw	a3,0(a4)
1c009b3c:	4732                	lw	a4,12(sp)
1c009b3e:	078a                	slli	a5,a5,0x2
1c009b40:	97ae                	add	a5,a5,a1
1c009b42:	0705                	addi	a4,a4,1
1c009b44:	c63a                	sw	a4,12(sp)
1c009b46:	4732                	lw	a4,12(sp)
1c009b48:	c394                	sw	a3,0(a5)
1c009b4a:	fee554e3          	bge	a0,a4,1c009b32 <KeccakF1600_StatePermute+0x48>
1c009b4e:	0141                	addi	sp,sp,16
1c009b50:	8082                	ret

1c009b52 <KYBER_poly_ntt>:
1c009b52:	1a4007b7          	lui	a5,0x1a400
1c009b56:	40000713          	li	a4,1024
1c009b5a:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009b5e:	3007a423          	sw	zero,776(a5)
1c009b62:	4705                	li	a4,1
1c009b64:	30e7a423          	sw	a4,776(a5)
1c009b68:	3007a423          	sw	zero,776(a5)
1c009b6c:	20050693          	addi	a3,a0,512
1c009b70:	1a400737          	lui	a4,0x1a400
1c009b74:	411c                	lw	a5,0(a0)
1c009b76:	0511                	addi	a0,a0,4
1c009b78:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009b7c:	fed51ce3          	bne	a0,a3,1c009b74 <KYBER_poly_ntt+0x22>
1c009b80:	08000793          	li	a5,128
1c009b84:	30f72423          	sw	a5,776(a4)
1c009b88:	30072423          	sw	zero,776(a4)
1c009b8c:	1a400737          	lui	a4,0x1a400
1c009b90:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009b94:	8b85                	andi	a5,a5,1
1c009b96:	dfed                	beqz	a5,1c009b90 <KYBER_poly_ntt+0x3e>
1c009b98:	47c1                	li	a5,16
1c009b9a:	30f72423          	sw	a5,776(a4)
1c009b9e:	30072423          	sw	zero,776(a4)
1c009ba2:	20058693          	addi	a3,a1,512
1c009ba6:	1a400737          	lui	a4,0x1a400
1c009baa:	0001                	nop
1c009bac:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c009bb0:	0591                	addi	a1,a1,4
1c009bb2:	fef5ae23          	sw	a5,-4(a1)
1c009bb6:	fed59ae3          	bne	a1,a3,1c009baa <KYBER_poly_ntt+0x58>
1c009bba:	8082                	ret

1c009bbc <KYBER_poly_intt>:
1c009bbc:	1a4007b7          	lui	a5,0x1a400
1c009bc0:	40000713          	li	a4,1024
1c009bc4:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009bc8:	3007a423          	sw	zero,776(a5)
1c009bcc:	4709                	li	a4,2
1c009bce:	30e7a423          	sw	a4,776(a5)
1c009bd2:	3007a423          	sw	zero,776(a5)
1c009bd6:	20050693          	addi	a3,a0,512
1c009bda:	1a400737          	lui	a4,0x1a400
1c009bde:	411c                	lw	a5,0(a0)
1c009be0:	0511                	addi	a0,a0,4
1c009be2:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009be6:	fed51ce3          	bne	a0,a3,1c009bde <KYBER_poly_intt+0x22>
1c009bea:	20000793          	li	a5,512
1c009bee:	30f72423          	sw	a5,776(a4)
1c009bf2:	30072423          	sw	zero,776(a4)
1c009bf6:	1a400737          	lui	a4,0x1a400
1c009bfa:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009bfe:	8b85                	andi	a5,a5,1
1c009c00:	dfed                	beqz	a5,1c009bfa <KYBER_poly_intt+0x3e>
1c009c02:	47c1                	li	a5,16
1c009c04:	30f72423          	sw	a5,776(a4)
1c009c08:	30072423          	sw	zero,776(a4)
1c009c0c:	20058693          	addi	a3,a1,512
1c009c10:	1a400737          	lui	a4,0x1a400
1c009c14:	0001                	nop
1c009c16:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c009c1a:	0591                	addi	a1,a1,4
1c009c1c:	fef5ae23          	sw	a5,-4(a1)
1c009c20:	fed59ae3          	bne	a1,a3,1c009c14 <KYBER_poly_intt+0x58>
1c009c24:	8082                	ret

1c009c26 <KYBER_poly_pwm>:
1c009c26:	1a4007b7          	lui	a5,0x1a400
1c009c2a:	40000713          	li	a4,1024
1c009c2e:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009c32:	3007a423          	sw	zero,776(a5)
1c009c36:	4709                	li	a4,2
1c009c38:	30e7a423          	sw	a4,776(a5)
1c009c3c:	3007a423          	sw	zero,776(a5)
1c009c40:	20058693          	addi	a3,a1,512
1c009c44:	1a400737          	lui	a4,0x1a400
1c009c48:	419c                	lw	a5,0(a1)
1c009c4a:	0591                	addi	a1,a1,4
1c009c4c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009c50:	fed59ce3          	bne	a1,a3,1c009c48 <KYBER_poly_pwm+0x22>
1c009c54:	47a1                	li	a5,8
1c009c56:	30f72423          	sw	a5,776(a4)
1c009c5a:	30072423          	sw	zero,776(a4)
1c009c5e:	20060693          	addi	a3,a2,512
1c009c62:	1a400737          	lui	a4,0x1a400
1c009c66:	421c                	lw	a5,0(a2)
1c009c68:	0611                	addi	a2,a2,4
1c009c6a:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009c6e:	fec69ce3          	bne	a3,a2,1c009c66 <KYBER_poly_pwm+0x40>
1c009c72:	10000793          	li	a5,256
1c009c76:	30f72423          	sw	a5,776(a4)
1c009c7a:	30072423          	sw	zero,776(a4)
1c009c7e:	1a400737          	lui	a4,0x1a400
1c009c82:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009c86:	8b85                	andi	a5,a5,1
1c009c88:	dfed                	beqz	a5,1c009c82 <KYBER_poly_pwm+0x5c>
1c009c8a:	47c1                	li	a5,16
1c009c8c:	30f72423          	sw	a5,776(a4)
1c009c90:	30072423          	sw	zero,776(a4)
1c009c94:	20050693          	addi	a3,a0,512
1c009c98:	1a400737          	lui	a4,0x1a400
1c009c9c:	0001                	nop
1c009c9e:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c009ca2:	0511                	addi	a0,a0,4
1c009ca4:	fef52e23          	sw	a5,-4(a0)
1c009ca8:	fed51ae3          	bne	a0,a3,1c009c9c <KYBER_poly_pwm+0x76>
1c009cac:	8082                	ret

1c009cae <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
1c009cae:	1101                	addi	sp,sp,-32
1c009cb0:	55555f37          	lui	t5,0x55555
1c009cb4:	ce22                	sw	s0,28(sp)
1c009cb6:	cc26                	sw	s1,24(sp)
1c009cb8:	ca4a                	sw	s2,20(sp)
1c009cba:	c84e                	sw	s3,16(sp)
1c009cbc:	c652                	sw	s4,12(sp)
1c009cbe:	20050f93          	addi	t6,a0,512
1c009cc2:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009cc6:	0015c683          	lbu	a3,1(a1)
1c009cca:	0005c603          	lbu	a2,0(a1)
1c009cce:	0025c783          	lbu	a5,2(a1)
1c009cd2:	0035c703          	lbu	a4,3(a1)
1c009cd6:	06a2                	slli	a3,a3,0x8
1c009cd8:	8ed1                	or	a3,a3,a2
1c009cda:	07c2                	slli	a5,a5,0x10
1c009cdc:	8fd5                	or	a5,a5,a3
1c009cde:	0762                	slli	a4,a4,0x18
1c009ce0:	8f5d                	or	a4,a4,a5
1c009ce2:	00175793          	srli	a5,a4,0x1
1c009ce6:	01e7f7b3          	and	a5,a5,t5
1c009cea:	01e77733          	and	a4,a4,t5
1c009cee:	97ba                	add	a5,a5,a4
1c009cf0:	0027da13          	srli	s4,a5,0x2
1c009cf4:	0047d313          	srli	t1,a5,0x4
1c009cf8:	0067d993          	srli	s3,a5,0x6
1c009cfc:	0087d893          	srli	a7,a5,0x8
1c009d00:	00a7d913          	srli	s2,a5,0xa
1c009d04:	00c7d813          	srli	a6,a5,0xc
1c009d08:	00e7d493          	srli	s1,a5,0xe
1c009d0c:	0107d613          	srli	a2,a5,0x10
1c009d10:	0127d413          	srli	s0,a5,0x12
1c009d14:	0147d693          	srli	a3,a5,0x14
1c009d18:	0167d393          	srli	t2,a5,0x16
1c009d1c:	0187d713          	srli	a4,a5,0x18
1c009d20:	01a7d293          	srli	t0,a5,0x1a
1c009d24:	01c7de93          	srli	t4,a5,0x1c
1c009d28:	0037fe13          	andi	t3,a5,3
1c009d2c:	003a7a13          	andi	s4,s4,3
1c009d30:	00337313          	andi	t1,t1,3
1c009d34:	0039f993          	andi	s3,s3,3
1c009d38:	0038f893          	andi	a7,a7,3
1c009d3c:	00397913          	andi	s2,s2,3
1c009d40:	00387813          	andi	a6,a6,3
1c009d44:	888d                	andi	s1,s1,3
1c009d46:	8a0d                	andi	a2,a2,3
1c009d48:	880d                	andi	s0,s0,3
1c009d4a:	8a8d                	andi	a3,a3,3
1c009d4c:	0033f393          	andi	t2,t2,3
1c009d50:	8b0d                	andi	a4,a4,3
1c009d52:	0032f293          	andi	t0,t0,3
1c009d56:	003efe93          	andi	t4,t4,3
1c009d5a:	83f9                	srli	a5,a5,0x1e
1c009d5c:	414e0e33          	sub	t3,t3,s4
1c009d60:	41330333          	sub	t1,t1,s3
1c009d64:	412888b3          	sub	a7,a7,s2
1c009d68:	40980833          	sub	a6,a6,s1
1c009d6c:	8e01                	sub	a2,a2,s0
1c009d6e:	407686b3          	sub	a3,a3,t2
1c009d72:	40570733          	sub	a4,a4,t0
1c009d76:	40fe87b3          	sub	a5,t4,a5
1c009d7a:	01c51023          	sh	t3,0(a0)
1c009d7e:	00651123          	sh	t1,2(a0)
1c009d82:	01151223          	sh	a7,4(a0)
1c009d86:	01051323          	sh	a6,6(a0)
1c009d8a:	00c51423          	sh	a2,8(a0)
1c009d8e:	00d51523          	sh	a3,10(a0)
1c009d92:	00e51623          	sh	a4,12(a0)
1c009d96:	00f51723          	sh	a5,14(a0)
1c009d9a:	0541                	addi	a0,a0,16
1c009d9c:	0591                	addi	a1,a1,4
1c009d9e:	f3f514e3          	bne	a0,t6,1c009cc6 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
1c009da2:	4472                	lw	s0,28(sp)
1c009da4:	44e2                	lw	s1,24(sp)
1c009da6:	4952                	lw	s2,20(sp)
1c009da8:	49c2                	lw	s3,16(sp)
1c009daa:	4a32                	lw	s4,12(sp)
1c009dac:	6105                	addi	sp,sp,32
1c009dae:	8082                	ret

1c009db0 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>:
1c009db0:	1101                	addi	sp,sp,-32
1c009db2:	55555f37          	lui	t5,0x55555
1c009db6:	ce22                	sw	s0,28(sp)
1c009db8:	cc26                	sw	s1,24(sp)
1c009dba:	ca4a                	sw	s2,20(sp)
1c009dbc:	c84e                	sw	s3,16(sp)
1c009dbe:	c652                	sw	s4,12(sp)
1c009dc0:	20050f93          	addi	t6,a0,512
1c009dc4:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009dc8:	0015c683          	lbu	a3,1(a1)
1c009dcc:	0005c603          	lbu	a2,0(a1)
1c009dd0:	0025c783          	lbu	a5,2(a1)
1c009dd4:	0035c703          	lbu	a4,3(a1)
1c009dd8:	06a2                	slli	a3,a3,0x8
1c009dda:	8ed1                	or	a3,a3,a2
1c009ddc:	07c2                	slli	a5,a5,0x10
1c009dde:	8fd5                	or	a5,a5,a3
1c009de0:	0762                	slli	a4,a4,0x18
1c009de2:	8f5d                	or	a4,a4,a5
1c009de4:	00175793          	srli	a5,a4,0x1
1c009de8:	01e7f7b3          	and	a5,a5,t5
1c009dec:	01e77733          	and	a4,a4,t5
1c009df0:	97ba                	add	a5,a5,a4
1c009df2:	0027da13          	srli	s4,a5,0x2
1c009df6:	0047d313          	srli	t1,a5,0x4
1c009dfa:	0067d993          	srli	s3,a5,0x6
1c009dfe:	0087d893          	srli	a7,a5,0x8
1c009e02:	00a7d913          	srli	s2,a5,0xa
1c009e06:	00c7d813          	srli	a6,a5,0xc
1c009e0a:	00e7d493          	srli	s1,a5,0xe
1c009e0e:	0107d613          	srli	a2,a5,0x10
1c009e12:	0127d413          	srli	s0,a5,0x12
1c009e16:	0147d693          	srli	a3,a5,0x14
1c009e1a:	0167d393          	srli	t2,a5,0x16
1c009e1e:	0187d713          	srli	a4,a5,0x18
1c009e22:	01a7d293          	srli	t0,a5,0x1a
1c009e26:	01c7de93          	srli	t4,a5,0x1c
1c009e2a:	0037fe13          	andi	t3,a5,3
1c009e2e:	003a7a13          	andi	s4,s4,3
1c009e32:	00337313          	andi	t1,t1,3
1c009e36:	0039f993          	andi	s3,s3,3
1c009e3a:	0038f893          	andi	a7,a7,3
1c009e3e:	00397913          	andi	s2,s2,3
1c009e42:	00387813          	andi	a6,a6,3
1c009e46:	888d                	andi	s1,s1,3
1c009e48:	8a0d                	andi	a2,a2,3
1c009e4a:	880d                	andi	s0,s0,3
1c009e4c:	8a8d                	andi	a3,a3,3
1c009e4e:	0033f393          	andi	t2,t2,3
1c009e52:	8b0d                	andi	a4,a4,3
1c009e54:	0032f293          	andi	t0,t0,3
1c009e58:	003efe93          	andi	t4,t4,3
1c009e5c:	83f9                	srli	a5,a5,0x1e
1c009e5e:	414e0e33          	sub	t3,t3,s4
1c009e62:	41330333          	sub	t1,t1,s3
1c009e66:	412888b3          	sub	a7,a7,s2
1c009e6a:	40980833          	sub	a6,a6,s1
1c009e6e:	8e01                	sub	a2,a2,s0
1c009e70:	407686b3          	sub	a3,a3,t2
1c009e74:	40570733          	sub	a4,a4,t0
1c009e78:	40fe87b3          	sub	a5,t4,a5
1c009e7c:	01c51023          	sh	t3,0(a0)
1c009e80:	00651123          	sh	t1,2(a0)
1c009e84:	01151223          	sh	a7,4(a0)
1c009e88:	01051323          	sh	a6,6(a0)
1c009e8c:	00c51423          	sh	a2,8(a0)
1c009e90:	00d51523          	sh	a3,10(a0)
1c009e94:	00e51623          	sh	a4,12(a0)
1c009e98:	00f51723          	sh	a5,14(a0)
1c009e9c:	0541                	addi	a0,a0,16
1c009e9e:	0591                	addi	a1,a1,4
1c009ea0:	f3f514e3          	bne	a0,t6,1c009dc8 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2+0x18>
1c009ea4:	4472                	lw	s0,28(sp)
1c009ea6:	44e2                	lw	s1,24(sp)
1c009ea8:	4952                	lw	s2,20(sp)
1c009eaa:	49c2                	lw	s3,16(sp)
1c009eac:	4a32                	lw	s4,12(sp)
1c009eae:	6105                	addi	sp,sp,32
1c009eb0:	8082                	ret

1c009eb2 <keccak_absorb.constprop.1>:
1c009eb2:	7151                	addi	sp,sp,-240
1c009eb4:	d3a6                	sw	s1,228(sp)
1c009eb6:	cfce                	sw	s3,220(sp)
1c009eb8:	cdd2                	sw	s4,216(sp)
1c009eba:	cbd6                	sw	s5,212(sp)
1c009ebc:	84b6                	mv	s1,a3
1c009ebe:	d786                	sw	ra,236(sp)
1c009ec0:	d5a2                	sw	s0,232(sp)
1c009ec2:	d1ca                	sw	s2,224(sp)
1c009ec4:	c9da                	sw	s6,208(sp)
1c009ec6:	8a2a                	mv	s4,a0
1c009ec8:	87ae                	mv	a5,a1
1c009eca:	8ab2                	mv	s5,a2
1c009ecc:	89aa                	mv	s3,a0
1c009ece:	0c850693          	addi	a3,a0,200
1c009ed2:	872a                	mv	a4,a0
1c009ed4:	4581                	li	a1,0
1c009ed6:	4601                	li	a2,0
1c009ed8:	c30c                	sw	a1,0(a4)
1c009eda:	c350                	sw	a2,4(a4)
1c009edc:	0721                	addi	a4,a4,8
1c009ede:	fee69be3          	bne	a3,a4,1c009ed4 <keccak_absorb.constprop.1+0x22>
1c009ee2:	08700713          	li	a4,135
1c009ee6:	09577363          	bgeu	a4,s5,1c009f6c <keccak_absorb.constprop.1+0xba>
1c009eea:	08878b13          	addi	s6,a5,136
1c009eee:	895a                	mv	s2,s6
1c009ef0:	08700413          	li	s0,135
1c009ef4:	86d2                	mv	a3,s4
1c009ef6:	0017c703          	lbu	a4,1(a5)
1c009efa:	0027ce03          	lbu	t3,2(a5)
1c009efe:	0057c803          	lbu	a6,5(a5)
1c009f02:	0047cf03          	lbu	t5,4(a5)
1c009f06:	0067c503          	lbu	a0,6(a5)
1c009f0a:	0007ce83          	lbu	t4,0(a5)
1c009f0e:	0037c583          	lbu	a1,3(a5)
1c009f12:	0077c603          	lbu	a2,7(a5)
1c009f16:	0722                	slli	a4,a4,0x8
1c009f18:	0e42                	slli	t3,t3,0x10
1c009f1a:	0822                	slli	a6,a6,0x8
1c009f1c:	0006a303          	lw	t1,0(a3)
1c009f20:	0046a883          	lw	a7,4(a3)
1c009f24:	01c76733          	or	a4,a4,t3
1c009f28:	01e86833          	or	a6,a6,t5
1c009f2c:	0542                	slli	a0,a0,0x10
1c009f2e:	01d76733          	or	a4,a4,t4
1c009f32:	05e2                	slli	a1,a1,0x18
1c009f34:	01056533          	or	a0,a0,a6
1c009f38:	0662                	slli	a2,a2,0x18
1c009f3a:	8f4d                	or	a4,a4,a1
1c009f3c:	8e49                	or	a2,a2,a0
1c009f3e:	00e34733          	xor	a4,t1,a4
1c009f42:	00c8c633          	xor	a2,a7,a2
1c009f46:	c298                	sw	a4,0(a3)
1c009f48:	c2d0                	sw	a2,4(a3)
1c009f4a:	07a1                	addi	a5,a5,8
1c009f4c:	06a1                	addi	a3,a3,8
1c009f4e:	faf914e3          	bne	s2,a5,1c009ef6 <keccak_absorb.constprop.1+0x44>
1c009f52:	85d2                	mv	a1,s4
1c009f54:	8552                	mv	a0,s4
1c009f56:	3e51                	jal	1c009aea <KeccakF1600_StatePermute>
1c009f58:	f78a8a93          	addi	s5,s5,-136
1c009f5c:	08890913          	addi	s2,s2,136
1c009f60:	87da                	mv	a5,s6
1c009f62:	01547563          	bgeu	s0,s5,1c009f6c <keccak_absorb.constprop.1+0xba>
1c009f66:	088b0b13          	addi	s6,s6,136
1c009f6a:	b769                	j	1c009ef4 <keccak_absorb.constprop.1+0x42>
1c009f6c:	0038                	addi	a4,sp,8
1c009f6e:	09010e13          	addi	t3,sp,144
1c009f72:	86ba                	mv	a3,a4
1c009f74:	0006a023          	sw	zero,0(a3)
1c009f78:	0691                	addi	a3,a3,4
1c009f7a:	fede1de3          	bne	t3,a3,1c009f74 <keccak_absorb.constprop.1+0xc2>
1c009f7e:	080a8263          	beqz	s5,1c00a002 <keccak_absorb.constprop.1+0x150>
1c009f82:	fffa8693          	addi	a3,s5,-1
1c009f86:	4609                	li	a2,2
1c009f88:	10d67163          	bgeu	a2,a3,1c00a08a <keccak_absorb.constprop.1+0x1d8>
1c009f8c:	ffcaf313          	andi	t1,s5,-4
1c009f90:	86be                	mv	a3,a5
1c009f92:	933e                	add	t1,t1,a5
1c009f94:	883a                	mv	a6,a4
1c009f96:	0016c503          	lbu	a0,1(a3)
1c009f9a:	0006c883          	lbu	a7,0(a3)
1c009f9e:	0026c583          	lbu	a1,2(a3)
1c009fa2:	0036c603          	lbu	a2,3(a3)
1c009fa6:	0522                	slli	a0,a0,0x8
1c009fa8:	01156533          	or	a0,a0,a7
1c009fac:	05c2                	slli	a1,a1,0x10
1c009fae:	8dc9                	or	a1,a1,a0
1c009fb0:	0662                	slli	a2,a2,0x18
1c009fb2:	8e4d                	or	a2,a2,a1
1c009fb4:	00c82023          	sw	a2,0(a6)
1c009fb8:	0691                	addi	a3,a3,4
1c009fba:	0811                	addi	a6,a6,4
1c009fbc:	fcd31de3          	bne	t1,a3,1c009f96 <keccak_absorb.constprop.1+0xe4>
1c009fc0:	ffcaf693          	andi	a3,s5,-4
1c009fc4:	02da8f63          	beq	s5,a3,1c00a002 <keccak_absorb.constprop.1+0x150>
1c009fc8:	00d78633          	add	a2,a5,a3
1c009fcc:	00064503          	lbu	a0,0(a2)
1c009fd0:	098c                	addi	a1,sp,208
1c009fd2:	95b6                	add	a1,a1,a3
1c009fd4:	00168613          	addi	a2,a3,1
1c009fd8:	f2a58c23          	sb	a0,-200(a1)
1c009fdc:	03567363          	bgeu	a2,s5,1c00a002 <keccak_absorb.constprop.1+0x150>
1c009fe0:	00c785b3          	add	a1,a5,a2
1c009fe4:	0005c583          	lbu	a1,0(a1)
1c009fe8:	0988                	addi	a0,sp,208
1c009fea:	962a                	add	a2,a2,a0
1c009fec:	0689                	addi	a3,a3,2
1c009fee:	f2b60c23          	sb	a1,-200(a2)
1c009ff2:	0156f863          	bgeu	a3,s5,1c00a002 <keccak_absorb.constprop.1+0x150>
1c009ff6:	97b6                	add	a5,a5,a3
1c009ff8:	0007c783          	lbu	a5,0(a5)
1c009ffc:	96aa                	add	a3,a3,a0
1c009ffe:	f2f68c23          	sb	a5,-200(a3)
1c00a002:	099c                	addi	a5,sp,208
1c00a004:	9abe                	add	s5,s5,a5
1c00a006:	f29a8c23          	sb	s1,-200(s5)
1c00a00a:	08f14783          	lbu	a5,143(sp)
1c00a00e:	f807e793          	ori	a5,a5,-128
1c00a012:	08f107a3          	sb	a5,143(sp)
1c00a016:	00174783          	lbu	a5,1(a4)
1c00a01a:	00274303          	lbu	t1,2(a4)
1c00a01e:	00574503          	lbu	a0,5(a4)
1c00a022:	00474f03          	lbu	t5,4(a4)
1c00a026:	00674583          	lbu	a1,6(a4)
1c00a02a:	00074e83          	lbu	t4,0(a4)
1c00a02e:	00374603          	lbu	a2,3(a4)
1c00a032:	00774683          	lbu	a3,7(a4)
1c00a036:	07a2                	slli	a5,a5,0x8
1c00a038:	0342                	slli	t1,t1,0x10
1c00a03a:	0522                	slli	a0,a0,0x8
1c00a03c:	0009a883          	lw	a7,0(s3)
1c00a040:	0049a803          	lw	a6,4(s3)
1c00a044:	0067e7b3          	or	a5,a5,t1
1c00a048:	01e56533          	or	a0,a0,t5
1c00a04c:	05c2                	slli	a1,a1,0x10
1c00a04e:	01d7e7b3          	or	a5,a5,t4
1c00a052:	0662                	slli	a2,a2,0x18
1c00a054:	8dc9                	or	a1,a1,a0
1c00a056:	06e2                	slli	a3,a3,0x18
1c00a058:	8e5d                	or	a2,a2,a5
1c00a05a:	00b6e7b3          	or	a5,a3,a1
1c00a05e:	00c8c633          	xor	a2,a7,a2
1c00a062:	00f847b3          	xor	a5,a6,a5
1c00a066:	00c9a023          	sw	a2,0(s3)
1c00a06a:	00f9a223          	sw	a5,4(s3)
1c00a06e:	0721                	addi	a4,a4,8
1c00a070:	09a1                	addi	s3,s3,8
1c00a072:	faee12e3          	bne	t3,a4,1c00a016 <keccak_absorb.constprop.1+0x164>
1c00a076:	50be                	lw	ra,236(sp)
1c00a078:	542e                	lw	s0,232(sp)
1c00a07a:	549e                	lw	s1,228(sp)
1c00a07c:	590e                	lw	s2,224(sp)
1c00a07e:	49fe                	lw	s3,220(sp)
1c00a080:	4a6e                	lw	s4,216(sp)
1c00a082:	4ade                	lw	s5,212(sp)
1c00a084:	4b4e                	lw	s6,208(sp)
1c00a086:	616d                	addi	sp,sp,240
1c00a088:	8082                	ret
1c00a08a:	4681                	li	a3,0
1c00a08c:	bf35                	j	1c009fc8 <keccak_absorb.constprop.1+0x116>

1c00a08e <shake128_absorb>:
1c00a08e:	7151                	addi	sp,sp,-240
1c00a090:	cfce                	sw	s3,220(sp)
1c00a092:	89aa                	mv	s3,a0
1c00a094:	0c800513          	li	a0,200
1c00a098:	d5a2                	sw	s0,232(sp)
1c00a09a:	d3a6                	sw	s1,228(sp)
1c00a09c:	d786                	sw	ra,236(sp)
1c00a09e:	d1ca                	sw	s2,224(sp)
1c00a0a0:	842e                	mv	s0,a1
1c00a0a2:	84b2                	mv	s1,a2
1c00a0a4:	2e4030ef          	jal	ra,1c00d388 <pi_l2_malloc>
1c00a0a8:	00a9a023          	sw	a0,0(s3)
1c00a0ac:	1c050363          	beqz	a0,1c00a272 <shake128_absorb+0x1e4>
1c00a0b0:	892a                	mv	s2,a0
1c00a0b2:	0c850713          	addi	a4,a0,200
1c00a0b6:	87aa                	mv	a5,a0
1c00a0b8:	4601                	li	a2,0
1c00a0ba:	4681                	li	a3,0
1c00a0bc:	c390                	sw	a2,0(a5)
1c00a0be:	c3d4                	sw	a3,4(a5)
1c00a0c0:	07a1                	addi	a5,a5,8
1c00a0c2:	fef71be3          	bne	a4,a5,1c00a0b8 <shake128_absorb+0x2a>
1c00a0c6:	0a700793          	li	a5,167
1c00a0ca:	0897f063          	bgeu	a5,s1,1c00a14a <shake128_absorb+0xbc>
1c00a0ce:	0a700993          	li	s3,167
1c00a0d2:	87a2                	mv	a5,s0
1c00a0d4:	40890eb3          	sub	t4,s2,s0
1c00a0d8:	0a840413          	addi	s0,s0,168
1c00a0dc:	0017c703          	lbu	a4,1(a5)
1c00a0e0:	0027ce03          	lbu	t3,2(a5)
1c00a0e4:	0057c503          	lbu	a0,5(a5)
1c00a0e8:	0047cf83          	lbu	t6,4(a5)
1c00a0ec:	0067c583          	lbu	a1,6(a5)
1c00a0f0:	0007cf03          	lbu	t5,0(a5)
1c00a0f4:	0037c603          	lbu	a2,3(a5)
1c00a0f8:	0077c683          	lbu	a3,7(a5)
1c00a0fc:	00fe8833          	add	a6,t4,a5
1c00a100:	0722                	slli	a4,a4,0x8
1c00a102:	0e42                	slli	t3,t3,0x10
1c00a104:	0522                	slli	a0,a0,0x8
1c00a106:	00082303          	lw	t1,0(a6)
1c00a10a:	00482883          	lw	a7,4(a6)
1c00a10e:	01c76733          	or	a4,a4,t3
1c00a112:	01f56533          	or	a0,a0,t6
1c00a116:	05c2                	slli	a1,a1,0x10
1c00a118:	01e76733          	or	a4,a4,t5
1c00a11c:	0662                	slli	a2,a2,0x18
1c00a11e:	8dc9                	or	a1,a1,a0
1c00a120:	06e2                	slli	a3,a3,0x18
1c00a122:	8f51                	or	a4,a4,a2
1c00a124:	8ecd                	or	a3,a3,a1
1c00a126:	00e34733          	xor	a4,t1,a4
1c00a12a:	00d8c6b3          	xor	a3,a7,a3
1c00a12e:	00e82023          	sw	a4,0(a6)
1c00a132:	00d82223          	sw	a3,4(a6)
1c00a136:	07a1                	addi	a5,a5,8
1c00a138:	faf412e3          	bne	s0,a5,1c00a0dc <shake128_absorb+0x4e>
1c00a13c:	f5848493          	addi	s1,s1,-168
1c00a140:	85ca                	mv	a1,s2
1c00a142:	854a                	mv	a0,s2
1c00a144:	325d                	jal	1c009aea <KeccakF1600_StatePermute>
1c00a146:	f899e6e3          	bltu	s3,s1,1c00a0d2 <shake128_absorb+0x44>
1c00a14a:	0b010313          	addi	t1,sp,176
1c00a14e:	003c                	addi	a5,sp,8
1c00a150:	0007a023          	sw	zero,0(a5)
1c00a154:	0791                	addi	a5,a5,4
1c00a156:	fef31de3          	bne	t1,a5,1c00a150 <shake128_absorb+0xc2>
1c00a15a:	c0d9                	beqz	s1,1c00a1e0 <shake128_absorb+0x152>
1c00a15c:	fff48793          	addi	a5,s1,-1
1c00a160:	4709                	li	a4,2
1c00a162:	10f77663          	bgeu	a4,a5,1c00a26e <shake128_absorb+0x1e0>
1c00a166:	ffc4f593          	andi	a1,s1,-4
1c00a16a:	87a2                	mv	a5,s0
1c00a16c:	95a2                	add	a1,a1,s0
1c00a16e:	0028                	addi	a0,sp,8
1c00a170:	0017c603          	lbu	a2,1(a5)
1c00a174:	0007c803          	lbu	a6,0(a5)
1c00a178:	0027c683          	lbu	a3,2(a5)
1c00a17c:	0037c703          	lbu	a4,3(a5)
1c00a180:	0622                	slli	a2,a2,0x8
1c00a182:	01066633          	or	a2,a2,a6
1c00a186:	06c2                	slli	a3,a3,0x10
1c00a188:	8ed1                	or	a3,a3,a2
1c00a18a:	0762                	slli	a4,a4,0x18
1c00a18c:	8f55                	or	a4,a4,a3
1c00a18e:	c118                	sw	a4,0(a0)
1c00a190:	0791                	addi	a5,a5,4
1c00a192:	0511                	addi	a0,a0,4
1c00a194:	fcf59ee3          	bne	a1,a5,1c00a170 <shake128_absorb+0xe2>
1c00a198:	ffc4f793          	andi	a5,s1,-4
1c00a19c:	04f48263          	beq	s1,a5,1c00a1e0 <shake128_absorb+0x152>
1c00a1a0:	00f40733          	add	a4,s0,a5
1c00a1a4:	00074603          	lbu	a2,0(a4)
1c00a1a8:	0994                	addi	a3,sp,208
1c00a1aa:	96be                	add	a3,a3,a5
1c00a1ac:	00178713          	addi	a4,a5,1
1c00a1b0:	f2c68c23          	sb	a2,-200(a3)
1c00a1b4:	02977663          	bgeu	a4,s1,1c00a1e0 <shake128_absorb+0x152>
1c00a1b8:	00e406b3          	add	a3,s0,a4
1c00a1bc:	0006c603          	lbu	a2,0(a3)
1c00a1c0:	0994                	addi	a3,sp,208
1c00a1c2:	96ba                	add	a3,a3,a4
1c00a1c4:	f2c68c23          	sb	a2,-200(a3)
1c00a1c8:	00278713          	addi	a4,a5,2
1c00a1cc:	00977a63          	bgeu	a4,s1,1c00a1e0 <shake128_absorb+0x152>
1c00a1d0:	00e407b3          	add	a5,s0,a4
1c00a1d4:	0007c683          	lbu	a3,0(a5)
1c00a1d8:	099c                	addi	a5,sp,208
1c00a1da:	97ba                	add	a5,a5,a4
1c00a1dc:	f2d78c23          	sb	a3,-200(a5)
1c00a1e0:	099c                	addi	a5,sp,208
1c00a1e2:	00978633          	add	a2,a5,s1
1c00a1e6:	47fd                	li	a5,31
1c00a1e8:	f2f60c23          	sb	a5,-200(a2)
1c00a1ec:	0af14703          	lbu	a4,175(sp)
1c00a1f0:	003c                	addi	a5,sp,8
1c00a1f2:	40f90933          	sub	s2,s2,a5
1c00a1f6:	f8076713          	ori	a4,a4,-128
1c00a1fa:	0ae107a3          	sb	a4,175(sp)
1c00a1fe:	0017c703          	lbu	a4,1(a5)
1c00a202:	0027cf83          	lbu	t6,2(a5)
1c00a206:	0057c883          	lbu	a7,5(a5)
1c00a20a:	0047c503          	lbu	a0,4(a5)
1c00a20e:	0067c803          	lbu	a6,6(a5)
1c00a212:	0007c583          	lbu	a1,0(a5)
1c00a216:	0037c603          	lbu	a2,3(a5)
1c00a21a:	0077c683          	lbu	a3,7(a5)
1c00a21e:	00f90e33          	add	t3,s2,a5
1c00a222:	0722                	slli	a4,a4,0x8
1c00a224:	0fc2                	slli	t6,t6,0x10
1c00a226:	08a2                	slli	a7,a7,0x8
1c00a228:	000e2f03          	lw	t5,0(t3)
1c00a22c:	004e2e83          	lw	t4,4(t3)
1c00a230:	01f76733          	or	a4,a4,t6
1c00a234:	00a8e8b3          	or	a7,a7,a0
1c00a238:	0842                	slli	a6,a6,0x10
1c00a23a:	8f4d                	or	a4,a4,a1
1c00a23c:	0662                	slli	a2,a2,0x18
1c00a23e:	01186833          	or	a6,a6,a7
1c00a242:	06e2                	slli	a3,a3,0x18
1c00a244:	8f51                	or	a4,a4,a2
1c00a246:	0106e6b3          	or	a3,a3,a6
1c00a24a:	00ef4733          	xor	a4,t5,a4
1c00a24e:	00dec6b3          	xor	a3,t4,a3
1c00a252:	00ee2023          	sw	a4,0(t3)
1c00a256:	00de2223          	sw	a3,4(t3)
1c00a25a:	07a1                	addi	a5,a5,8
1c00a25c:	faf311e3          	bne	t1,a5,1c00a1fe <shake128_absorb+0x170>
1c00a260:	50be                	lw	ra,236(sp)
1c00a262:	542e                	lw	s0,232(sp)
1c00a264:	549e                	lw	s1,228(sp)
1c00a266:	590e                	lw	s2,224(sp)
1c00a268:	49fe                	lw	s3,220(sp)
1c00a26a:	616d                	addi	sp,sp,240
1c00a26c:	8082                	ret
1c00a26e:	4781                	li	a5,0
1c00a270:	bf05                	j	1c00a1a0 <shake128_absorb+0x112>
1c00a272:	06f00513          	li	a0,111
1c00a276:	7df010ef          	jal	ra,1c00c254 <exit>

1c00a27a <shake128_squeezeblocks>:
1c00a27a:	1101                	addi	sp,sp,-32
1c00a27c:	c05a                	sw	s6,0(sp)
1c00a27e:	ce06                	sw	ra,28(sp)
1c00a280:	cc22                	sw	s0,24(sp)
1c00a282:	ca26                	sw	s1,20(sp)
1c00a284:	c84a                	sw	s2,16(sp)
1c00a286:	c64e                	sw	s3,12(sp)
1c00a288:	c452                	sw	s4,8(sp)
1c00a28a:	c256                	sw	s5,4(sp)
1c00a28c:	00062b03          	lw	s6,0(a2)
1c00a290:	c5f1                	beqz	a1,1c00a35c <shake128_squeezeblocks+0xe2>
1c00a292:	7ac1                	lui	s5,0xffff0
1c00a294:	ff010a37          	lui	s4,0xff010
1c00a298:	010009b7          	lui	s3,0x1000
1c00a29c:	84ae                	mv	s1,a1
1c00a29e:	892a                	mv	s2,a0
1c00a2a0:	0a8b0413          	addi	s0,s6,168
1c00a2a4:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a2a8:	1a7d                	addi	s4,s4,-1
1c00a2aa:	19fd                	addi	s3,s3,-1
1c00a2ac:	85da                	mv	a1,s6
1c00a2ae:	855a                	mv	a0,s6
1c00a2b0:	83bff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a2b4:	85da                	mv	a1,s6
1c00a2b6:	00490813          	addi	a6,s2,4
1c00a2ba:	4198                	lw	a4,0(a1)
1c00a2bc:	41dc                	lw	a5,4(a1)
1c00a2be:	05a1                	addi	a1,a1,8
1c00a2c0:	00875893          	srli	a7,a4,0x8
1c00a2c4:	0087d513          	srli	a0,a5,0x8
1c00a2c8:	0ff77613          	andi	a2,a4,255
1c00a2cc:	0ff7f693          	andi	a3,a5,255
1c00a2d0:	0ff8f893          	andi	a7,a7,255
1c00a2d4:	0ff57513          	andi	a0,a0,255
1c00a2d8:	08a2                	slli	a7,a7,0x8
1c00a2da:	0522                	slli	a0,a0,0x8
1c00a2dc:	01567633          	and	a2,a2,s5
1c00a2e0:	0156f6b3          	and	a3,a3,s5
1c00a2e4:	01166633          	or	a2,a2,a7
1c00a2e8:	8ec9                	or	a3,a3,a0
1c00a2ea:	00ff08b7          	lui	a7,0xff0
1c00a2ee:	00ff0537          	lui	a0,0xff0
1c00a2f2:	011778b3          	and	a7,a4,a7
1c00a2f6:	8d7d                	and	a0,a0,a5
1c00a2f8:	01467633          	and	a2,a2,s4
1c00a2fc:	0146f6b3          	and	a3,a3,s4
1c00a300:	01166633          	or	a2,a2,a7
1c00a304:	8ec9                	or	a3,a3,a0
1c00a306:	8361                	srli	a4,a4,0x18
1c00a308:	83e1                	srli	a5,a5,0x18
1c00a30a:	01367633          	and	a2,a2,s3
1c00a30e:	0136f6b3          	and	a3,a3,s3
1c00a312:	0762                	slli	a4,a4,0x18
1c00a314:	07e2                	slli	a5,a5,0x18
1c00a316:	8f51                	or	a4,a4,a2
1c00a318:	8fd5                	or	a5,a5,a3
1c00a31a:	00875e13          	srli	t3,a4,0x8
1c00a31e:	01075313          	srli	t1,a4,0x10
1c00a322:	0087d893          	srli	a7,a5,0x8
1c00a326:	0107d513          	srli	a0,a5,0x10
1c00a32a:	8361                	srli	a4,a4,0x18
1c00a32c:	83e1                	srli	a5,a5,0x18
1c00a32e:	fec80e23          	sb	a2,-4(a6)
1c00a332:	ffc80ea3          	sb	t3,-3(a6)
1c00a336:	fe680f23          	sb	t1,-2(a6)
1c00a33a:	fee80fa3          	sb	a4,-1(a6)
1c00a33e:	00d80023          	sb	a3,0(a6)
1c00a342:	011800a3          	sb	a7,1(a6)
1c00a346:	00a80123          	sb	a0,2(a6)
1c00a34a:	00f801a3          	sb	a5,3(a6)
1c00a34e:	0821                	addi	a6,a6,8
1c00a350:	f6b415e3          	bne	s0,a1,1c00a2ba <shake128_squeezeblocks+0x40>
1c00a354:	14fd                	addi	s1,s1,-1
1c00a356:	0a890913          	addi	s2,s2,168
1c00a35a:	f8a9                	bnez	s1,1c00a2ac <shake128_squeezeblocks+0x32>
1c00a35c:	40f2                	lw	ra,28(sp)
1c00a35e:	4462                	lw	s0,24(sp)
1c00a360:	44d2                	lw	s1,20(sp)
1c00a362:	4942                	lw	s2,16(sp)
1c00a364:	49b2                	lw	s3,12(sp)
1c00a366:	4a22                	lw	s4,8(sp)
1c00a368:	4a92                	lw	s5,4(sp)
1c00a36a:	4b02                	lw	s6,0(sp)
1c00a36c:	6105                	addi	sp,sp,32
1c00a36e:	8082                	ret

1c00a370 <shake128_ctx_release>:
1c00a370:	4108                	lw	a0,0(a0)
1c00a372:	0c800593          	li	a1,200
1c00a376:	01e0306f          	j	1c00d394 <pi_l2_free>

1c00a37a <shake256>:
1c00a37a:	7131                	addi	sp,sp,-192
1c00a37c:	db26                	sw	s1,180(sp)
1c00a37e:	d74e                	sw	s3,172(sp)
1c00a380:	84aa                	mv	s1,a0
1c00a382:	08800993          	li	s3,136
1c00a386:	0c800513          	li	a0,200
1c00a38a:	dd22                	sw	s0,184(sp)
1c00a38c:	d94a                	sw	s2,176(sp)
1c00a38e:	d356                	sw	s5,164(sp)
1c00a390:	df06                	sw	ra,188(sp)
1c00a392:	d552                	sw	s4,168(sp)
1c00a394:	d15a                	sw	s6,160(sp)
1c00a396:	cf5e                	sw	s7,156(sp)
1c00a398:	cd62                	sw	s8,152(sp)
1c00a39a:	0335d9b3          	divu	s3,a1,s3
1c00a39e:	892e                	mv	s2,a1
1c00a3a0:	8432                	mv	s0,a2
1c00a3a2:	8ab6                	mv	s5,a3
1c00a3a4:	7e5020ef          	jal	ra,1c00d388 <pi_l2_malloc>
1c00a3a8:	24050763          	beqz	a0,1c00a5f6 <shake256+0x27c>
1c00a3ac:	46fd                	li	a3,31
1c00a3ae:	8656                	mv	a2,s5
1c00a3b0:	85a2                	mv	a1,s0
1c00a3b2:	8a2a                	mv	s4,a0
1c00a3b4:	3cfd                	jal	1c009eb2 <keccak_absorb.constprop.1>
1c00a3b6:	08700793          	li	a5,135
1c00a3ba:	0d27ff63          	bgeu	a5,s2,1c00a498 <shake256+0x11e>
1c00a3be:	00499413          	slli	s0,s3,0x4
1c00a3c2:	944e                	add	s0,s0,s3
1c00a3c4:	040e                	slli	s0,s0,0x3
1c00a3c6:	7bc1                	lui	s7,0xffff0
1c00a3c8:	ff010b37          	lui	s6,0xff010
1c00a3cc:	01000ab7          	lui	s5,0x1000
1c00a3d0:	9426                	add	s0,s0,s1
1c00a3d2:	8c26                	mv	s8,s1
1c00a3d4:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a3d8:	1b7d                	addi	s6,s6,-1
1c00a3da:	1afd                	addi	s5,s5,-1
1c00a3dc:	85d2                	mv	a1,s4
1c00a3de:	8552                	mv	a0,s4
1c00a3e0:	f0aff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a3e4:	87e2                	mv	a5,s8
1c00a3e6:	418a0533          	sub	a0,s4,s8
1c00a3ea:	088c0593          	addi	a1,s8,136
1c00a3ee:	00f50733          	add	a4,a0,a5
1c00a3f2:	4314                	lw	a3,0(a4)
1c00a3f4:	4358                	lw	a4,4(a4)
1c00a3f6:	07a1                	addi	a5,a5,8
1c00a3f8:	0086d313          	srli	t1,a3,0x8
1c00a3fc:	00875893          	srli	a7,a4,0x8
1c00a400:	0ff6f813          	andi	a6,a3,255
1c00a404:	0ff77613          	andi	a2,a4,255
1c00a408:	0ff37313          	andi	t1,t1,255
1c00a40c:	0ff8f893          	andi	a7,a7,255
1c00a410:	0322                	slli	t1,t1,0x8
1c00a412:	08a2                	slli	a7,a7,0x8
1c00a414:	01787833          	and	a6,a6,s7
1c00a418:	01767633          	and	a2,a2,s7
1c00a41c:	00686833          	or	a6,a6,t1
1c00a420:	01166633          	or	a2,a2,a7
1c00a424:	00ff0337          	lui	t1,0xff0
1c00a428:	00ff08b7          	lui	a7,0xff0
1c00a42c:	0066f333          	and	t1,a3,t1
1c00a430:	011778b3          	and	a7,a4,a7
1c00a434:	01687833          	and	a6,a6,s6
1c00a438:	01667633          	and	a2,a2,s6
1c00a43c:	00686833          	or	a6,a6,t1
1c00a440:	01166633          	or	a2,a2,a7
1c00a444:	82e1                	srli	a3,a3,0x18
1c00a446:	8361                	srli	a4,a4,0x18
1c00a448:	01587833          	and	a6,a6,s5
1c00a44c:	01567633          	and	a2,a2,s5
1c00a450:	06e2                	slli	a3,a3,0x18
1c00a452:	0762                	slli	a4,a4,0x18
1c00a454:	00d866b3          	or	a3,a6,a3
1c00a458:	8f51                	or	a4,a4,a2
1c00a45a:	0086de93          	srli	t4,a3,0x8
1c00a45e:	0106de13          	srli	t3,a3,0x10
1c00a462:	00875313          	srli	t1,a4,0x8
1c00a466:	01075893          	srli	a7,a4,0x10
1c00a46a:	82e1                	srli	a3,a3,0x18
1c00a46c:	8361                	srli	a4,a4,0x18
1c00a46e:	ff078c23          	sb	a6,-8(a5)
1c00a472:	ffd78ca3          	sb	t4,-7(a5)
1c00a476:	ffc78d23          	sb	t3,-6(a5)
1c00a47a:	fed78da3          	sb	a3,-5(a5)
1c00a47e:	fec78e23          	sb	a2,-4(a5)
1c00a482:	fe678ea3          	sb	t1,-3(a5)
1c00a486:	ff178f23          	sb	a7,-2(a5)
1c00a48a:	fee78fa3          	sb	a4,-1(a5)
1c00a48e:	f6f590e3          	bne	a1,a5,1c00a3ee <shake256+0x74>
1c00a492:	8c2e                	mv	s8,a1
1c00a494:	f48594e3          	bne	a1,s0,1c00a3dc <shake256+0x62>
1c00a498:	08800593          	li	a1,136
1c00a49c:	02b97933          	remu	s2,s2,a1
1c00a4a0:	02091263          	bnez	s2,1c00a4c4 <shake256+0x14a>
1c00a4a4:	546a                	lw	s0,184(sp)
1c00a4a6:	50fa                	lw	ra,188(sp)
1c00a4a8:	54da                	lw	s1,180(sp)
1c00a4aa:	594a                	lw	s2,176(sp)
1c00a4ac:	59ba                	lw	s3,172(sp)
1c00a4ae:	5a9a                	lw	s5,164(sp)
1c00a4b0:	5b0a                	lw	s6,160(sp)
1c00a4b2:	4bfa                	lw	s7,156(sp)
1c00a4b4:	4c6a                	lw	s8,152(sp)
1c00a4b6:	8552                	mv	a0,s4
1c00a4b8:	5a2a                	lw	s4,168(sp)
1c00a4ba:	0c800593          	li	a1,200
1c00a4be:	6129                	addi	sp,sp,192
1c00a4c0:	6d50206f          	j	1c00d394 <pi_l2_free>
1c00a4c4:	85d2                	mv	a1,s4
1c00a4c6:	8552                	mv	a0,s4
1c00a4c8:	e22ff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a4cc:	002c                	addi	a1,sp,8
1c00a4ce:	78c1                	lui	a7,0xffff0
1c00a4d0:	ff010837          	lui	a6,0xff010
1c00a4d4:	01000537          	lui	a0,0x1000
1c00a4d8:	09010e13          	addi	t3,sp,144
1c00a4dc:	862e                	mv	a2,a1
1c00a4de:	40ba0333          	sub	t1,s4,a1
1c00a4e2:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a4e6:	187d                	addi	a6,a6,-1
1c00a4e8:	157d                	addi	a0,a0,-1
1c00a4ea:	00c307b3          	add	a5,t1,a2
1c00a4ee:	0007ae83          	lw	t4,0(a5)
1c00a4f2:	43d4                	lw	a3,4(a5)
1c00a4f4:	0621                	addi	a2,a2,8
1c00a4f6:	008edf93          	srli	t6,t4,0x8
1c00a4fa:	0086df13          	srli	t5,a3,0x8
1c00a4fe:	0ffef713          	andi	a4,t4,255
1c00a502:	0ff6f793          	andi	a5,a3,255
1c00a506:	0fffff93          	andi	t6,t6,255
1c00a50a:	0fff7f13          	andi	t5,t5,255
1c00a50e:	0fa2                	slli	t6,t6,0x8
1c00a510:	0f22                	slli	t5,t5,0x8
1c00a512:	01177733          	and	a4,a4,a7
1c00a516:	0117f7b3          	and	a5,a5,a7
1c00a51a:	01f76733          	or	a4,a4,t6
1c00a51e:	01e7e7b3          	or	a5,a5,t5
1c00a522:	00ff0fb7          	lui	t6,0xff0
1c00a526:	00ff0f37          	lui	t5,0xff0
1c00a52a:	01feffb3          	and	t6,t4,t6
1c00a52e:	01e6ff33          	and	t5,a3,t5
1c00a532:	01077733          	and	a4,a4,a6
1c00a536:	0107f7b3          	and	a5,a5,a6
1c00a53a:	01f76733          	or	a4,a4,t6
1c00a53e:	018ede93          	srli	t4,t4,0x18
1c00a542:	01e7e7b3          	or	a5,a5,t5
1c00a546:	82e1                	srli	a3,a3,0x18
1c00a548:	0ee2                	slli	t4,t4,0x18
1c00a54a:	8f69                	and	a4,a4,a0
1c00a54c:	06e2                	slli	a3,a3,0x18
1c00a54e:	8fe9                	and	a5,a5,a0
1c00a550:	01d76733          	or	a4,a4,t4
1c00a554:	8fd5                	or	a5,a5,a3
1c00a556:	fee62c23          	sw	a4,-8(a2)
1c00a55a:	fef62e23          	sw	a5,-4(a2)
1c00a55e:	f8ce16e3          	bne	t3,a2,1c00a4ea <shake256+0x170>
1c00a562:	fff90793          	addi	a5,s2,-1
1c00a566:	4709                	li	a4,2
1c00a568:	08f77363          	bgeu	a4,a5,1c00a5ee <shake256+0x274>
1c00a56c:	00499413          	slli	s0,s3,0x4
1c00a570:	013407b3          	add	a5,s0,s3
1c00a574:	078e                	slli	a5,a5,0x3
1c00a576:	97a6                	add	a5,a5,s1
1c00a578:	0fc97813          	andi	a6,s2,252
1c00a57c:	983e                	add	a6,a6,a5
1c00a57e:	4198                	lw	a4,0(a1)
1c00a580:	0791                	addi	a5,a5,4
1c00a582:	0591                	addi	a1,a1,4
1c00a584:	00875513          	srli	a0,a4,0x8
1c00a588:	01075613          	srli	a2,a4,0x10
1c00a58c:	01875693          	srli	a3,a4,0x18
1c00a590:	fea78ea3          	sb	a0,-3(a5)
1c00a594:	fec78f23          	sb	a2,-2(a5)
1c00a598:	fed78fa3          	sb	a3,-1(a5)
1c00a59c:	fee78e23          	sb	a4,-4(a5)
1c00a5a0:	fcf81fe3          	bne	a6,a5,1c00a57e <shake256+0x204>
1c00a5a4:	ffc97793          	andi	a5,s2,-4
1c00a5a8:	eef90ee3          	beq	s2,a5,1c00a4a4 <shake256+0x12a>
1c00a5ac:	0918                	addi	a4,sp,144
1c00a5ae:	973e                	add	a4,a4,a5
1c00a5b0:	99a2                	add	s3,s3,s0
1c00a5b2:	f7874683          	lbu	a3,-136(a4)
1c00a5b6:	098e                	slli	s3,s3,0x3
1c00a5b8:	99a6                	add	s3,s3,s1
1c00a5ba:	00f98733          	add	a4,s3,a5
1c00a5be:	00d70023          	sb	a3,0(a4)
1c00a5c2:	00178713          	addi	a4,a5,1
1c00a5c6:	ed277fe3          	bgeu	a4,s2,1c00a4a4 <shake256+0x12a>
1c00a5ca:	0914                	addi	a3,sp,144
1c00a5cc:	96ba                	add	a3,a3,a4
1c00a5ce:	f786c683          	lbu	a3,-136(a3)
1c00a5d2:	974e                	add	a4,a4,s3
1c00a5d4:	0789                	addi	a5,a5,2
1c00a5d6:	00d70023          	sb	a3,0(a4)
1c00a5da:	ed27f5e3          	bgeu	a5,s2,1c00a4a4 <shake256+0x12a>
1c00a5de:	0918                	addi	a4,sp,144
1c00a5e0:	973e                	add	a4,a4,a5
1c00a5e2:	f7874703          	lbu	a4,-136(a4)
1c00a5e6:	99be                	add	s3,s3,a5
1c00a5e8:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00a5ec:	bd65                	j	1c00a4a4 <shake256+0x12a>
1c00a5ee:	4781                	li	a5,0
1c00a5f0:	00499413          	slli	s0,s3,0x4
1c00a5f4:	bf65                	j	1c00a5ac <shake256+0x232>
1c00a5f6:	06f00513          	li	a0,111
1c00a5fa:	45b010ef          	jal	ra,1c00c254 <exit>

1c00a5fe <sha3_256>:
1c00a5fe:	712d                	addi	sp,sp,-288
1c00a600:	10812c23          	sw	s0,280(sp)
1c00a604:	4699                	li	a3,6
1c00a606:	842a                	mv	s0,a0
1c00a608:	0828                	addi	a0,sp,24
1c00a60a:	10112e23          	sw	ra,284(sp)
1c00a60e:	10912a23          	sw	s1,276(sp)
1c00a612:	11212823          	sw	s2,272(sp)
1c00a616:	11312623          	sw	s3,268(sp)
1c00a61a:	11412423          	sw	s4,264(sp)
1c00a61e:	11512223          	sw	s5,260(sp)
1c00a622:	11612023          	sw	s6,256(sp)
1c00a626:	dfde                	sw	s7,252(sp)
1c00a628:	dde2                	sw	s8,248(sp)
1c00a62a:	dbe6                	sw	s9,244(sp)
1c00a62c:	d9ea                	sw	s10,240(sp)
1c00a62e:	d7ee                	sw	s11,236(sp)
1c00a630:	3049                	jal	1c009eb2 <keccak_absorb.constprop.1>
1c00a632:	082c                	addi	a1,sp,24
1c00a634:	852e                	mv	a0,a1
1c00a636:	cb4ff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a63a:	4372                	lw	t1,28(sp)
1c00a63c:	5612                	lw	a2,36(sp)
1c00a63e:	5732                	lw	a4,44(sp)
1c00a640:	5582                	lw	a1,32(sp)
1c00a642:	56a2                	lw	a3,40(sp)
1c00a644:	59d2                	lw	s3,52(sp)
1c00a646:	4ae2                	lw	s5,24(sp)
1c00a648:	00835293          	srli	t0,t1,0x8
1c00a64c:	00865f13          	srli	t5,a2,0x8
1c00a650:	00875893          	srli	a7,a4,0x8
1c00a654:	5a42                	lw	s4,48(sp)
1c00a656:	0085df93          	srli	t6,a1,0x8
1c00a65a:	0086de93          	srli	t4,a3,0x8
1c00a65e:	0ff2f293          	andi	t0,t0,255
1c00a662:	0fff7f13          	andi	t5,t5,255
1c00a666:	0ff8f893          	andi	a7,a7,255
1c00a66a:	0ff37b93          	andi	s7,t1,255
1c00a66e:	0ff67913          	andi	s2,a2,255
1c00a672:	0ff77e13          	andi	t3,a4,255
1c00a676:	008ad393          	srli	t2,s5,0x8
1c00a67a:	0089d513          	srli	a0,s3,0x8
1c00a67e:	0fffff93          	andi	t6,t6,255
1c00a682:	0ffefe93          	andi	t4,t4,255
1c00a686:	02a2                	slli	t0,t0,0x8
1c00a688:	0f22                	slli	t5,t5,0x8
1c00a68a:	08a2                	slli	a7,a7,0x8
1c00a68c:	ff0107b7          	lui	a5,0xff010
1c00a690:	17fd                	addi	a5,a5,-1
1c00a692:	0ff5fb13          	andi	s6,a1,255
1c00a696:	0ff6f493          	andi	s1,a3,255
1c00a69a:	005be2b3          	or	t0,s7,t0
1c00a69e:	01e96f33          	or	t5,s2,t5
1c00a6a2:	011e68b3          	or	a7,t3,a7
1c00a6a6:	0ff3f393          	andi	t2,t2,255
1c00a6aa:	0fa2                	slli	t6,t6,0x8
1c00a6ac:	0ea2                	slli	t4,t4,0x8
1c00a6ae:	0ff57513          	andi	a0,a0,255
1c00a6b2:	00ff0bb7          	lui	s7,0xff0
1c00a6b6:	0ffafc13          	andi	s8,s5,255
1c00a6ba:	0ff9f913          	andi	s2,s3,255
1c00a6be:	01767bb3          	and	s7,a2,s7
1c00a6c2:	00f8fe33          	and	t3,a7,a5
1c00a6c6:	008a5813          	srli	a6,s4,0x8
1c00a6ca:	01fb6fb3          	or	t6,s6,t6
1c00a6ce:	01d4eeb3          	or	t4,s1,t4
1c00a6d2:	00ff7f33          	and	t5,t5,a5
1c00a6d6:	010008b7          	lui	a7,0x1000
1c00a6da:	03a2                	slli	t2,t2,0x8
1c00a6dc:	0522                	slli	a0,a0,0x8
1c00a6de:	00ff04b7          	lui	s1,0xff0
1c00a6e2:	00ff0b37          	lui	s6,0xff0
1c00a6e6:	8cf5                	and	s1,s1,a3
1c00a6e8:	01677b33          	and	s6,a4,s6
1c00a6ec:	00a96533          	or	a0,s2,a0
1c00a6f0:	007c63b3          	or	t2,s8,t2
1c00a6f4:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c00a6f8:	00fefeb3          	and	t4,t4,a5
1c00a6fc:	017f6f33          	or	t5,t5,s7
1c00a700:	0ff87813          	andi	a6,a6,255
1c00a704:	00ff0c37          	lui	s8,0xff0
1c00a708:	8261                	srli	a2,a2,0x18
1c00a70a:	0ffa7d93          	andi	s11,s4,255
1c00a70e:	0185fc33          	and	s8,a1,s8
1c00a712:	012f7f33          	and	t5,t5,s2
1c00a716:	00ffffb3          	and	t6,t6,a5
1c00a71a:	009eeeb3          	or	t4,t4,s1
1c00a71e:	016e6e33          	or	t3,t3,s6
1c00a722:	8361                	srli	a4,a4,0x18
1c00a724:	0822                	slli	a6,a6,0x8
1c00a726:	00ff0d37          	lui	s10,0xff0
1c00a72a:	82e1                	srli	a3,a3,0x18
1c00a72c:	0662                	slli	a2,a2,0x18
1c00a72e:	01aafd33          	and	s10,s5,s10
1c00a732:	010de833          	or	a6,s11,a6
1c00a736:	012efeb3          	and	t4,t4,s2
1c00a73a:	012e7e33          	and	t3,t3,s2
1c00a73e:	00cf6633          	or	a2,t5,a2
1c00a742:	018ada93          	srli	s5,s5,0x18
1c00a746:	018fefb3          	or	t6,t6,s8
1c00a74a:	06e2                	slli	a3,a3,0x18
1c00a74c:	01871c13          	slli	s8,a4,0x18
1c00a750:	00ff0bb7          	lui	s7,0xff0
1c00a754:	00f87b33          	and	s6,a6,a5
1c00a758:	00dee4b3          	or	s1,t4,a3
1c00a75c:	017a7bb3          	and	s7,s4,s7
1c00a760:	018e66b3          	or	a3,t3,s8
1c00a764:	018a9813          	slli	a6,s5,0x18
1c00a768:	018a5713          	srli	a4,s4,0x18
1c00a76c:	00865a93          	srli	s5,a2,0x8
1c00a770:	01065a13          	srli	s4,a2,0x10
1c00a774:	00ff0cb7          	lui	s9,0xff0
1c00a778:	8261                	srli	a2,a2,0x18
1c00a77a:	c232                	sw	a2,4(sp)
1c00a77c:	01937cb3          	and	s9,t1,s9
1c00a780:	0086d613          	srli	a2,a3,0x8
1c00a784:	00f3f3b3          	and	t2,t2,a5
1c00a788:	00f2f2b3          	and	t0,t0,a5
1c00a78c:	c432                	sw	a2,8(sp)
1c00a78e:	01a3e3b3          	or	t2,t2,s10
1c00a792:	0106d613          	srli	a2,a3,0x10
1c00a796:	0192e2b3          	or	t0,t0,s9
1c00a79a:	01835313          	srli	t1,t1,0x18
1c00a79e:	81e1                	srli	a1,a1,0x18
1c00a7a0:	00ff08b7          	lui	a7,0xff0
1c00a7a4:	8fe9                	and	a5,a5,a0
1c00a7a6:	0123f3b3          	and	t2,t2,s2
1c00a7aa:	0122f2b3          	and	t0,t0,s2
1c00a7ae:	012fffb3          	and	t6,t6,s2
1c00a7b2:	c632                	sw	a2,12(sp)
1c00a7b4:	0119f8b3          	and	a7,s3,a7
1c00a7b8:	4612                	lw	a2,4(sp)
1c00a7ba:	01831513          	slli	a0,t1,0x18
1c00a7be:	05e2                	slli	a1,a1,0x18
1c00a7c0:	017b6333          	or	t1,s6,s7
1c00a7c4:	0103e833          	or	a6,t2,a6
1c00a7c8:	00a2e533          	or	a0,t0,a0
1c00a7cc:	00bfe5b3          	or	a1,t6,a1
1c00a7d0:	0117e8b3          	or	a7,a5,a7
1c00a7d4:	01237333          	and	t1,t1,s2
1c00a7d8:	0128f8b3          	and	a7,a7,s2
1c00a7dc:	00885d93          	srli	s11,a6,0x8
1c00a7e0:	01085d13          	srli	s10,a6,0x10
1c00a7e4:	00855c93          	srli	s9,a0,0x8
1c00a7e8:	01055c13          	srli	s8,a0,0x10
1c00a7ec:	0085db93          	srli	s7,a1,0x8
1c00a7f0:	0105db13          	srli	s6,a1,0x10
1c00a7f4:	0104d913          	srli	s2,s1,0x10
1c00a7f8:	0189d793          	srli	a5,s3,0x18
1c00a7fc:	8161                	srli	a0,a0,0x18
1c00a7fe:	0084d993          	srli	s3,s1,0x8
1c00a802:	81e1                	srli	a1,a1,0x18
1c00a804:	80e1                	srli	s1,s1,0x18
1c00a806:	01885813          	srli	a6,a6,0x18
1c00a80a:	01b400a3          	sb	s11,1(s0)
1c00a80e:	01a40123          	sb	s10,2(s0)
1c00a812:	019402a3          	sb	s9,5(s0)
1c00a816:	01840323          	sb	s8,6(s0)
1c00a81a:	00a403a3          	sb	a0,7(s0)
1c00a81e:	017404a3          	sb	s7,9(s0)
1c00a822:	01640523          	sb	s6,10(s0)
1c00a826:	00b405a3          	sb	a1,11(s0)
1c00a82a:	015406a3          	sb	s5,13(s0)
1c00a82e:	01440723          	sb	s4,14(s0)
1c00a832:	00c407a3          	sb	a2,15(s0)
1c00a836:	013408a3          	sb	s3,17(s0)
1c00a83a:	01240923          	sb	s2,18(s0)
1c00a83e:	009409a3          	sb	s1,19(s0)
1c00a842:	00740023          	sb	t2,0(s0)
1c00a846:	010401a3          	sb	a6,3(s0)
1c00a84a:	00540223          	sb	t0,4(s0)
1c00a84e:	01f40423          	sb	t6,8(s0)
1c00a852:	01e40623          	sb	t5,12(s0)
1c00a856:	01d40823          	sb	t4,16(s0)
1c00a85a:	01c40a23          	sb	t3,20(s0)
1c00a85e:	4622                	lw	a2,8(sp)
1c00a860:	0762                	slli	a4,a4,0x18
1c00a862:	07e2                	slli	a5,a5,0x18
1c00a864:	00c40aa3          	sb	a2,21(s0)
1c00a868:	4632                	lw	a2,12(sp)
1c00a86a:	00e36733          	or	a4,t1,a4
1c00a86e:	00f8e7b3          	or	a5,a7,a5
1c00a872:	82e1                	srli	a3,a3,0x18
1c00a874:	00c40b23          	sb	a2,22(s0)
1c00a878:	00d40ba3          	sb	a3,23(s0)
1c00a87c:	00875513          	srli	a0,a4,0x8
1c00a880:	01075593          	srli	a1,a4,0x10
1c00a884:	0087d613          	srli	a2,a5,0x8
1c00a888:	0107d693          	srli	a3,a5,0x10
1c00a88c:	8361                	srli	a4,a4,0x18
1c00a88e:	83e1                	srli	a5,a5,0x18
1c00a890:	00640c23          	sb	t1,24(s0)
1c00a894:	00a40ca3          	sb	a0,25(s0)
1c00a898:	00b40d23          	sb	a1,26(s0)
1c00a89c:	00e40da3          	sb	a4,27(s0)
1c00a8a0:	01140e23          	sb	a7,28(s0)
1c00a8a4:	00c40ea3          	sb	a2,29(s0)
1c00a8a8:	00d40f23          	sb	a3,30(s0)
1c00a8ac:	00f40fa3          	sb	a5,31(s0)
1c00a8b0:	11c12083          	lw	ra,284(sp)
1c00a8b4:	11812403          	lw	s0,280(sp)
1c00a8b8:	11412483          	lw	s1,276(sp)
1c00a8bc:	11012903          	lw	s2,272(sp)
1c00a8c0:	10c12983          	lw	s3,268(sp)
1c00a8c4:	10812a03          	lw	s4,264(sp)
1c00a8c8:	10412a83          	lw	s5,260(sp)
1c00a8cc:	10012b03          	lw	s6,256(sp)
1c00a8d0:	5bfe                	lw	s7,252(sp)
1c00a8d2:	5c6e                	lw	s8,248(sp)
1c00a8d4:	5cde                	lw	s9,244(sp)
1c00a8d6:	5d4e                	lw	s10,240(sp)
1c00a8d8:	5dbe                	lw	s11,236(sp)
1c00a8da:	6115                	addi	sp,sp,288
1c00a8dc:	8082                	ret

1c00a8de <sha3_512>:
1c00a8de:	7105                	addi	sp,sp,-480
1c00a8e0:	1c812c23          	sw	s0,472(sp)
1c00a8e4:	1d312623          	sw	s3,460(sp)
1c00a8e8:	1d412423          	sw	s4,456(sp)
1c00a8ec:	1c112e23          	sw	ra,476(sp)
1c00a8f0:	1c912a23          	sw	s1,468(sp)
1c00a8f4:	1d212823          	sw	s2,464(sp)
1c00a8f8:	1d512223          	sw	s5,452(sp)
1c00a8fc:	1d612023          	sw	s6,448(sp)
1c00a900:	1b712e23          	sw	s7,444(sp)
1c00a904:	1b812c23          	sw	s8,440(sp)
1c00a908:	1b912a23          	sw	s9,436(sp)
1c00a90c:	1ba12823          	sw	s10,432(sp)
1c00a910:	1bb12623          	sw	s11,428(sp)
1c00a914:	842a                	mv	s0,a0
1c00a916:	8a32                	mv	s4,a2
1c00a918:	0d810993          	addi	s3,sp,216
1c00a91c:	081c                	addi	a5,sp,16
1c00a91e:	4681                	li	a3,0
1c00a920:	4701                	li	a4,0
1c00a922:	c394                	sw	a3,0(a5)
1c00a924:	c3d8                	sw	a4,4(a5)
1c00a926:	07a1                	addi	a5,a5,8
1c00a928:	ff379be3          	bne	a5,s3,1c00a91e <sha3_512+0x40>
1c00a92c:	04700793          	li	a5,71
1c00a930:	0947f463          	bgeu	a5,s4,1c00a9b8 <sha3_512+0xda>
1c00a934:	04858a93          	addi	s5,a1,72
1c00a938:	8956                	mv	s2,s5
1c00a93a:	04700493          	li	s1,71
1c00a93e:	0818                	addi	a4,sp,16
1c00a940:	0015c783          	lbu	a5,1(a1)
1c00a944:	0025ce03          	lbu	t3,2(a1)
1c00a948:	0055c803          	lbu	a6,5(a1)
1c00a94c:	0045cf03          	lbu	t5,4(a1)
1c00a950:	0065c503          	lbu	a0,6(a1)
1c00a954:	0005ce83          	lbu	t4,0(a1)
1c00a958:	0035c603          	lbu	a2,3(a1)
1c00a95c:	0075c683          	lbu	a3,7(a1)
1c00a960:	07a2                	slli	a5,a5,0x8
1c00a962:	0e42                	slli	t3,t3,0x10
1c00a964:	0822                	slli	a6,a6,0x8
1c00a966:	00072303          	lw	t1,0(a4)
1c00a96a:	00472883          	lw	a7,4(a4)
1c00a96e:	01c7e7b3          	or	a5,a5,t3
1c00a972:	01e86833          	or	a6,a6,t5
1c00a976:	0542                	slli	a0,a0,0x10
1c00a978:	01d7e7b3          	or	a5,a5,t4
1c00a97c:	0662                	slli	a2,a2,0x18
1c00a97e:	01056533          	or	a0,a0,a6
1c00a982:	06e2                	slli	a3,a3,0x18
1c00a984:	8fd1                	or	a5,a5,a2
1c00a986:	8ec9                	or	a3,a3,a0
1c00a988:	00f347b3          	xor	a5,t1,a5
1c00a98c:	00d8c6b3          	xor	a3,a7,a3
1c00a990:	c31c                	sw	a5,0(a4)
1c00a992:	c354                	sw	a3,4(a4)
1c00a994:	05a1                	addi	a1,a1,8
1c00a996:	0721                	addi	a4,a4,8
1c00a998:	fb2594e3          	bne	a1,s2,1c00a940 <sha3_512+0x62>
1c00a99c:	080c                	addi	a1,sp,16
1c00a99e:	852e                	mv	a0,a1
1c00a9a0:	94aff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a9a4:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00a9a8:	04890913          	addi	s2,s2,72
1c00a9ac:	85d6                	mv	a1,s5
1c00a9ae:	0144f563          	bgeu	s1,s4,1c00a9b8 <sha3_512+0xda>
1c00a9b2:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00a9b6:	b761                	j	1c00a93e <sha3_512+0x60>
1c00a9b8:	1218                	addi	a4,sp,288
1c00a9ba:	87ce                	mv	a5,s3
1c00a9bc:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00a9c0:	0791                	addi	a5,a5,4
1c00a9c2:	fee79de3          	bne	a5,a4,1c00a9bc <sha3_512+0xde>
1c00a9c6:	080a0063          	beqz	s4,1c00aa46 <sha3_512+0x168>
1c00a9ca:	fffa0793          	addi	a5,s4,-1
1c00a9ce:	4709                	li	a4,2
1c00a9d0:	68f77563          	bgeu	a4,a5,1c00b05a <sha3_512+0x77c>
1c00a9d4:	ffca7813          	andi	a6,s4,-4
1c00a9d8:	87ae                	mv	a5,a1
1c00a9da:	982e                	add	a6,a6,a1
1c00a9dc:	0017c603          	lbu	a2,1(a5)
1c00a9e0:	0007c503          	lbu	a0,0(a5)
1c00a9e4:	0027c683          	lbu	a3,2(a5)
1c00a9e8:	0037c703          	lbu	a4,3(a5)
1c00a9ec:	0622                	slli	a2,a2,0x8
1c00a9ee:	8e49                	or	a2,a2,a0
1c00a9f0:	06c2                	slli	a3,a3,0x10
1c00a9f2:	8ed1                	or	a3,a3,a2
1c00a9f4:	0762                	slli	a4,a4,0x18
1c00a9f6:	8f55                	or	a4,a4,a3
1c00a9f8:	00e9a023          	sw	a4,0(s3)
1c00a9fc:	0791                	addi	a5,a5,4
1c00a9fe:	0991                	addi	s3,s3,4
1c00aa00:	fd079ee3          	bne	a5,a6,1c00a9dc <sha3_512+0xfe>
1c00aa04:	ffca7793          	andi	a5,s4,-4
1c00aa08:	03478f63          	beq	a5,s4,1c00aa46 <sha3_512+0x168>
1c00aa0c:	00f58733          	add	a4,a1,a5
1c00aa10:	00074603          	lbu	a2,0(a4)
1c00aa14:	1314                	addi	a3,sp,416
1c00aa16:	96be                	add	a3,a3,a5
1c00aa18:	00178713          	addi	a4,a5,1
1c00aa1c:	f2c68c23          	sb	a2,-200(a3)
1c00aa20:	03477363          	bgeu	a4,s4,1c00aa46 <sha3_512+0x168>
1c00aa24:	00e586b3          	add	a3,a1,a4
1c00aa28:	0006c683          	lbu	a3,0(a3)
1c00aa2c:	1310                	addi	a2,sp,416
1c00aa2e:	9732                	add	a4,a4,a2
1c00aa30:	0789                	addi	a5,a5,2
1c00aa32:	f2d70c23          	sb	a3,-200(a4)
1c00aa36:	0147f863          	bgeu	a5,s4,1c00aa46 <sha3_512+0x168>
1c00aa3a:	95be                	add	a1,a1,a5
1c00aa3c:	0005c703          	lbu	a4,0(a1)
1c00aa40:	97b2                	add	a5,a5,a2
1c00aa42:	f2e78c23          	sb	a4,-200(a5)
1c00aa46:	131c                	addi	a5,sp,416
1c00aa48:	9a3e                	add	s4,s4,a5
1c00aa4a:	4799                	li	a5,6
1c00aa4c:	f2fa0c23          	sb	a5,-200(s4)
1c00aa50:	0da14703          	lbu	a4,218(sp)
1c00aa54:	0d914f83          	lbu	t6,217(sp)
1c00aa58:	0e214783          	lbu	a5,226(sp)
1c00aa5c:	0e114e83          	lbu	t4,225(sp)
1c00aa60:	0e514303          	lbu	t1,229(sp)
1c00aa64:	0e414383          	lbu	t2,228(sp)
1c00aa68:	0e614803          	lbu	a6,230(sp)
1c00aa6c:	0d814283          	lbu	t0,216(sp)
1c00aa70:	0e014f03          	lbu	t5,224(sp)
1c00aa74:	0db14503          	lbu	a0,219(sp)
1c00aa78:	0e314603          	lbu	a2,227(sp)
1c00aa7c:	0e714683          	lbu	a3,231(sp)
1c00aa80:	0fa2                	slli	t6,t6,0x8
1c00aa82:	0ea2                	slli	t4,t4,0x8
1c00aa84:	0742                	slli	a4,a4,0x10
1c00aa86:	07c2                	slli	a5,a5,0x10
1c00aa88:	0322                	slli	t1,t1,0x8
1c00aa8a:	00736333          	or	t1,t1,t2
1c00aa8e:	01f76733          	or	a4,a4,t6
1c00aa92:	01d7e7b3          	or	a5,a5,t4
1c00aa96:	0842                	slli	a6,a6,0x10
1c00aa98:	0dd14e03          	lbu	t3,221(sp)
1c00aa9c:	00576733          	or	a4,a4,t0
1c00aaa0:	01e7e7b3          	or	a5,a5,t5
1c00aaa4:	00686833          	or	a6,a6,t1
1c00aaa8:	0662                	slli	a2,a2,0x18
1c00aaaa:	06e2                	slli	a3,a3,0x18
1c00aaac:	0562                	slli	a0,a0,0x18
1c00aaae:	0dc14483          	lbu	s1,220(sp)
1c00aab2:	0de14883          	lbu	a7,222(sp)
1c00aab6:	8d59                	or	a0,a0,a4
1c00aab8:	00f66733          	or	a4,a2,a5
1c00aabc:	0106e7b3          	or	a5,a3,a6
1c00aac0:	46c2                	lw	a3,16(sp)
1c00aac2:	0df14583          	lbu	a1,223(sp)
1c00aac6:	0e22                	slli	t3,t3,0x8
1c00aac8:	009e6e33          	or	t3,t3,s1
1c00aacc:	8d35                	xor	a0,a0,a3
1c00aace:	08c2                	slli	a7,a7,0x10
1c00aad0:	46d2                	lw	a3,20(sp)
1c00aad2:	01c8e8b3          	or	a7,a7,t3
1c00aad6:	05e2                	slli	a1,a1,0x18
1c00aad8:	0115e5b3          	or	a1,a1,a7
1c00aadc:	8db5                	xor	a1,a1,a3
1c00aade:	46e2                	lw	a3,24(sp)
1c00aae0:	0ea14803          	lbu	a6,234(sp)
1c00aae4:	0e914483          	lbu	s1,233(sp)
1c00aae8:	8eb9                	xor	a3,a3,a4
1c00aaea:	4772                	lw	a4,28(sp)
1c00aaec:	0e814a83          	lbu	s5,232(sp)
1c00aaf0:	0eb14a03          	lbu	s4,235(sp)
1c00aaf4:	8f3d                	xor	a4,a4,a5
1c00aaf6:	0ec14d03          	lbu	s10,236(sp)
1c00aafa:	11f14783          	lbu	a5,287(sp)
1c00aafe:	0ed14903          	lbu	s2,237(sp)
1c00ab02:	c82a                	sw	a0,16(sp)
1c00ab04:	ca2e                	sw	a1,20(sp)
1c00ab06:	cc36                	sw	a3,24(sp)
1c00ab08:	ce3a                	sw	a4,28(sp)
1c00ab0a:	0ee14f83          	lbu	t6,238(sp)
1c00ab0e:	0f214283          	lbu	t0,242(sp)
1c00ab12:	0f114f03          	lbu	t5,241(sp)
1c00ab16:	0fd14883          	lbu	a7,253(sp)
1c00ab1a:	0fc14b83          	lbu	s7,252(sp)
1c00ab1e:	04a2                	slli	s1,s1,0x8
1c00ab20:	0842                	slli	a6,a6,0x10
1c00ab22:	02c2                	slli	t0,t0,0x10
1c00ab24:	08a2                	slli	a7,a7,0x8
1c00ab26:	00986833          	or	a6,a6,s1
1c00ab2a:	0f22                	slli	t5,t5,0x8
1c00ab2c:	01e2ef33          	or	t5,t0,t5
1c00ab30:	01586833          	or	a6,a6,s5
1c00ab34:	0178e2b3          	or	t0,a7,s7
1c00ab38:	018a1893          	slli	a7,s4,0x18
1c00ab3c:	0108e833          	or	a6,a7,a6
1c00ab40:	5882                	lw	a7,32(sp)
1c00ab42:	0ef14503          	lbu	a0,239(sp)
1c00ab46:	0922                	slli	s2,s2,0x8
1c00ab48:	01a96933          	or	s2,s2,s10
1c00ab4c:	0108c8b3          	xor	a7,a7,a6
1c00ab50:	0fc2                	slli	t6,t6,0x10
1c00ab52:	5812                	lw	a6,36(sp)
1c00ab54:	0f014983          	lbu	s3,240(sp)
1c00ab58:	0f314583          	lbu	a1,243(sp)
1c00ab5c:	012fefb3          	or	t6,t6,s2
1c00ab60:	0562                	slli	a0,a0,0x18
1c00ab62:	0f514e83          	lbu	t4,245(sp)
1c00ab66:	01f56533          	or	a0,a0,t6
1c00ab6a:	0f414c83          	lbu	s9,244(sp)
1c00ab6e:	0f614c03          	lbu	s8,246(sp)
1c00ab72:	00a84833          	xor	a6,a6,a0
1c00ab76:	5522                	lw	a0,40(sp)
1c00ab78:	0f714603          	lbu	a2,247(sp)
1c00ab7c:	013f6f33          	or	t5,t5,s3
1c00ab80:	05e2                	slli	a1,a1,0x18
1c00ab82:	0f914e03          	lbu	t3,249(sp)
1c00ab86:	0fa14303          	lbu	t1,250(sp)
1c00ab8a:	01e5e5b3          	or	a1,a1,t5
1c00ab8e:	0ea2                	slli	t4,t4,0x8
1c00ab90:	019ee4b3          	or	s1,t4,s9
1c00ab94:	8d2d                	xor	a0,a0,a1
1c00ab96:	010c1e93          	slli	t4,s8,0x10
1c00ab9a:	55b2                	lw	a1,44(sp)
1c00ab9c:	0f814383          	lbu	t2,248(sp)
1c00aba0:	0fb14683          	lbu	a3,251(sp)
1c00aba4:	009eeeb3          	or	t4,t4,s1
1c00aba8:	0662                	slli	a2,a2,0x18
1c00abaa:	01d66633          	or	a2,a2,t4
1c00abae:	0342                	slli	t1,t1,0x10
1c00abb0:	0e22                	slli	t3,t3,0x8
1c00abb2:	0fe14b03          	lbu	s6,254(sp)
1c00abb6:	8db1                	xor	a1,a1,a2
1c00abb8:	006e6e33          	or	t3,t3,t1
1c00abbc:	5642                	lw	a2,48(sp)
1c00abbe:	0ff14703          	lbu	a4,255(sp)
1c00abc2:	007e6e33          	or	t3,t3,t2
1c00abc6:	06e2                	slli	a3,a3,0x18
1c00abc8:	01c6e6b3          	or	a3,a3,t3
1c00abcc:	8e35                	xor	a2,a2,a3
1c00abce:	010b1313          	slli	t1,s6,0x10
1c00abd2:	56d2                	lw	a3,52(sp)
1c00abd4:	00536333          	or	t1,t1,t0
1c00abd8:	0762                	slli	a4,a4,0x18
1c00abda:	00676733          	or	a4,a4,t1
1c00abde:	8f35                	xor	a4,a4,a3
1c00abe0:	10114e83          	lbu	t4,257(sp)
1c00abe4:	10214a83          	lbu	s5,258(sp)
1c00abe8:	d046                	sw	a7,32(sp)
1c00abea:	d242                	sw	a6,36(sp)
1c00abec:	d42a                	sw	a0,40(sp)
1c00abee:	d62e                	sw	a1,44(sp)
1c00abf0:	d832                	sw	a2,48(sp)
1c00abf2:	da3a                	sw	a4,52(sp)
1c00abf4:	10014903          	lbu	s2,256(sp)
1c00abf8:	10914303          	lbu	t1,265(sp)
1c00abfc:	10a14983          	lbu	s3,266(sp)
1c00ac00:	10814383          	lbu	t2,264(sp)
1c00ac04:	10514f83          	lbu	t6,261(sp)
1c00ac08:	10b14603          	lbu	a2,267(sp)
1c00ac0c:	10414b03          	lbu	s6,260(sp)
1c00ac10:	10614e03          	lbu	t3,262(sp)
1c00ac14:	09c2                	slli	s3,s3,0x10
1c00ac16:	0322                	slli	t1,t1,0x8
1c00ac18:	10714583          	lbu	a1,263(sp)
1c00ac1c:	01336333          	or	t1,t1,s3
1c00ac20:	00736333          	or	t1,t1,t2
1c00ac24:	10d14f03          	lbu	t5,269(sp)
1c00ac28:	0fa2                	slli	t6,t6,0x8
1c00ac2a:	0662                	slli	a2,a2,0x18
1c00ac2c:	10c14a03          	lbu	s4,268(sp)
1c00ac30:	016fefb3          	or	t6,t6,s6
1c00ac34:	11114803          	lbu	a6,273(sp)
1c00ac38:	11214483          	lbu	s1,274(sp)
1c00ac3c:	10e14883          	lbu	a7,270(sp)
1c00ac40:	00666633          	or	a2,a2,t1
1c00ac44:	0e42                	slli	t3,t3,0x10
1c00ac46:	5372                	lw	t1,60(sp)
1c00ac48:	01fe6e33          	or	t3,t3,t6
1c00ac4c:	10f14683          	lbu	a3,271(sp)
1c00ac50:	05e2                	slli	a1,a1,0x18
1c00ac52:	11014283          	lbu	t0,272(sp)
1c00ac56:	11314703          	lbu	a4,275(sp)
1c00ac5a:	01c5e5b3          	or	a1,a1,t3
1c00ac5e:	0f22                	slli	t5,t5,0x8
1c00ac60:	014f6f33          	or	t5,t5,s4
1c00ac64:	00b34333          	xor	t1,t1,a1
1c00ac68:	04c2                	slli	s1,s1,0x10
1c00ac6a:	4596                	lw	a1,68(sp)
1c00ac6c:	0822                	slli	a6,a6,0x8
1c00ac6e:	08c2                	slli	a7,a7,0x10
1c00ac70:	10314503          	lbu	a0,259(sp)
1c00ac74:	01e8e8b3          	or	a7,a7,t5
1c00ac78:	00986833          	or	a6,a6,s1
1c00ac7c:	06e2                	slli	a3,a3,0x18
1c00ac7e:	00586833          	or	a6,a6,t0
1c00ac82:	0116e6b3          	or	a3,a3,a7
1c00ac86:	0ac2                	slli	s5,s5,0x10
1c00ac88:	0ea2                	slli	t4,t4,0x8
1c00ac8a:	0762                	slli	a4,a4,0x18
1c00ac8c:	5e62                	lw	t3,56(sp)
1c00ac8e:	8db5                	xor	a1,a1,a3
1c00ac90:	015eeeb3          	or	t4,t4,s5
1c00ac94:	46a6                	lw	a3,72(sp)
1c00ac96:	01076733          	or	a4,a4,a6
1c00ac9a:	4806                	lw	a6,64(sp)
1c00ac9c:	012eeeb3          	or	t4,t4,s2
1c00aca0:	0562                	slli	a0,a0,0x18
1c00aca2:	01d56533          	or	a0,a0,t4
1c00aca6:	00ae4e33          	xor	t3,t3,a0
1c00acaa:	00c84833          	xor	a6,a6,a2
1c00acae:	8f35                	xor	a4,a4,a3
1c00acb0:	11414f03          	lbu	t5,276(sp)
1c00acb4:	11514883          	lbu	a7,277(sp)
1c00acb8:	11614503          	lbu	a0,278(sp)
1c00acbc:	11714603          	lbu	a2,279(sp)
1c00acc0:	dc72                	sw	t3,56(sp)
1c00acc2:	de1a                	sw	t1,60(sp)
1c00acc4:	c0c2                	sw	a6,64(sp)
1c00acc6:	c2ae                	sw	a1,68(sp)
1c00acc8:	c4ba                	sw	a4,72(sp)
1c00acca:	11914703          	lbu	a4,281(sp)
1c00acce:	11a14303          	lbu	t1,282(sp)
1c00acd2:	11814e03          	lbu	t3,280(sp)
1c00acd6:	11b14683          	lbu	a3,283(sp)
1c00acda:	0342                	slli	t1,t1,0x10
1c00acdc:	0722                	slli	a4,a4,0x8
1c00acde:	00676733          	or	a4,a4,t1
1c00ace2:	01c76733          	or	a4,a4,t3
1c00ace6:	06e2                	slli	a3,a3,0x18
1c00ace8:	08a2                	slli	a7,a7,0x8
1c00acea:	01e8e8b3          	or	a7,a7,t5
1c00acee:	8f55                	or	a4,a4,a3
1c00acf0:	0542                	slli	a0,a0,0x10
1c00acf2:	46b6                	lw	a3,76(sp)
1c00acf4:	01156533          	or	a0,a0,a7
1c00acf8:	0662                	slli	a2,a2,0x18
1c00acfa:	11d14803          	lbu	a6,285(sp)
1c00acfe:	8e49                	or	a2,a2,a0
1c00ad00:	11c14e83          	lbu	t4,284(sp)
1c00ad04:	8e35                	xor	a2,a2,a3
1c00ad06:	11e14583          	lbu	a1,286(sp)
1c00ad0a:	46c6                	lw	a3,80(sp)
1c00ad0c:	0822                	slli	a6,a6,0x8
1c00ad0e:	01d86833          	or	a6,a6,t4
1c00ad12:	8eb9                	xor	a3,a3,a4
1c00ad14:	0807e793          	ori	a5,a5,128
1c00ad18:	4756                	lw	a4,84(sp)
1c00ad1a:	05c2                	slli	a1,a1,0x10
1c00ad1c:	0105e5b3          	or	a1,a1,a6
1c00ad20:	07e2                	slli	a5,a5,0x18
1c00ad22:	8fcd                	or	a5,a5,a1
1c00ad24:	080c                	addi	a1,sp,16
1c00ad26:	8fb9                	xor	a5,a5,a4
1c00ad28:	852e                	mv	a0,a1
1c00ad2a:	c6b2                	sw	a2,76(sp)
1c00ad2c:	c8b6                	sw	a3,80(sp)
1c00ad2e:	cabe                	sw	a5,84(sp)
1c00ad30:	dbbfe0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00ad34:	4552                	lw	a0,20(sp)
1c00ad36:	45f2                	lw	a1,28(sp)
1c00ad38:	5612                	lw	a2,36(sp)
1c00ad3a:	56b2                	lw	a3,44(sp)
1c00ad3c:	57d2                	lw	a5,52(sp)
1c00ad3e:	5772                	lw	a4,60(sp)
1c00ad40:	00855b13          	srli	s6,a0,0x8
1c00ad44:	01055a93          	srli	s5,a0,0x10
1c00ad48:	01855a13          	srli	s4,a0,0x18
1c00ad4c:	0085d993          	srli	s3,a1,0x8
1c00ad50:	0105d913          	srli	s2,a1,0x10
1c00ad54:	0185d493          	srli	s1,a1,0x18
1c00ad58:	0ca10e23          	sb	a0,220(sp)
1c00ad5c:	0d610ea3          	sb	s6,221(sp)
1c00ad60:	0d510f23          	sb	s5,222(sp)
1c00ad64:	0d410fa3          	sb	s4,223(sp)
1c00ad68:	00865393          	srli	t2,a2,0x8
1c00ad6c:	01065293          	srli	t0,a2,0x10
1c00ad70:	01865f93          	srli	t6,a2,0x18
1c00ad74:	0086df13          	srli	t5,a3,0x8
1c00ad78:	0106de93          	srli	t4,a3,0x10
1c00ad7c:	0186de13          	srli	t3,a3,0x18
1c00ad80:	0087d313          	srli	t1,a5,0x8
1c00ad84:	0107d893          	srli	a7,a5,0x10
1c00ad88:	0187d813          	srli	a6,a5,0x18
1c00ad8c:	0eb10223          	sb	a1,228(sp)
1c00ad90:	0f3102a3          	sb	s3,229(sp)
1c00ad94:	0f210323          	sb	s2,230(sp)
1c00ad98:	0e9103a3          	sb	s1,231(sp)
1c00ad9c:	45c2                	lw	a1,16(sp)
1c00ad9e:	4536                	lw	a0,76(sp)
1c00ada0:	0ec10623          	sb	a2,236(sp)
1c00ada4:	0e7106a3          	sb	t2,237(sp)
1c00ada8:	467e                	lw	a2,220(sp)
1c00adaa:	0e510723          	sb	t0,238(sp)
1c00adae:	0ff107a3          	sb	t6,239(sp)
1c00adb2:	0ed10a23          	sb	a3,244(sp)
1c00adb6:	0fe10aa3          	sb	t5,245(sp)
1c00adba:	46e2                	lw	a3,24(sp)
1c00adbc:	0fd10b23          	sb	t4,246(sp)
1c00adc0:	0fc10ba3          	sb	t3,247(sp)
1c00adc4:	0e610ea3          	sb	t1,253(sp)
1c00adc8:	0f110f23          	sb	a7,254(sp)
1c00adcc:	0f010fa3          	sb	a6,255(sp)
1c00add0:	10e10223          	sb	a4,260(sp)
1c00add4:	4816                	lw	a6,68(sp)
1c00add6:	0ef10e23          	sb	a5,252(sp)
1c00adda:	579e                	lw	a5,228(sp)
1c00addc:	00875d93          	srli	s11,a4,0x8
1c00ade0:	01075d13          	srli	s10,a4,0x10
1c00ade4:	00885c93          	srli	s9,a6,0x8
1c00ade8:	01085c13          	srli	s8,a6,0x10
1c00adec:	01885b93          	srli	s7,a6,0x18
1c00adf0:	00855b13          	srli	s6,a0,0x8
1c00adf4:	01055a93          	srli	s5,a0,0x10
1c00adf8:	01855a13          	srli	s4,a0,0x18
1c00adfc:	0085d993          	srli	s3,a1,0x8
1c00ae00:	0105d913          	srli	s2,a1,0x10
1c00ae04:	0185d493          	srli	s1,a1,0x18
1c00ae08:	00865393          	srli	t2,a2,0x8
1c00ae0c:	01065293          	srli	t0,a2,0x10
1c00ae10:	01865f93          	srli	t6,a2,0x18
1c00ae14:	0086df13          	srli	t5,a3,0x8
1c00ae18:	0106de93          	srli	t4,a3,0x10
1c00ae1c:	0186de13          	srli	t3,a3,0x18
1c00ae20:	0087d313          	srli	t1,a5,0x8
1c00ae24:	0107d893          	srli	a7,a5,0x10
1c00ae28:	00f40623          	sb	a5,12(s0)
1c00ae2c:	8361                	srli	a4,a4,0x18
1c00ae2e:	83e1                	srli	a5,a5,0x18
1c00ae30:	11b102a3          	sb	s11,261(sp)
1c00ae34:	11a10323          	sb	s10,262(sp)
1c00ae38:	10e103a3          	sb	a4,263(sp)
1c00ae3c:	11010623          	sb	a6,268(sp)
1c00ae40:	4706                	lw	a4,64(sp)
1c00ae42:	119106a3          	sb	s9,269(sp)
1c00ae46:	11810723          	sb	s8,270(sp)
1c00ae4a:	117107a3          	sb	s7,271(sp)
1c00ae4e:	10a10a23          	sb	a0,276(sp)
1c00ae52:	11610aa3          	sb	s6,277(sp)
1c00ae56:	11510b23          	sb	s5,278(sp)
1c00ae5a:	11410ba3          	sb	s4,279(sp)
1c00ae5e:	00b40023          	sb	a1,0(s0)
1c00ae62:	4a26                	lw	s4,72(sp)
1c00ae64:	55be                	lw	a1,236(sp)
1c00ae66:	013400a3          	sb	s3,1(s0)
1c00ae6a:	01240123          	sb	s2,2(s0)
1c00ae6e:	009401a3          	sb	s1,3(s0)
1c00ae72:	00c40223          	sb	a2,4(s0)
1c00ae76:	007402a3          	sb	t2,5(s0)
1c00ae7a:	565e                	lw	a2,244(sp)
1c00ae7c:	00540323          	sb	t0,6(s0)
1c00ae80:	01f403a3          	sb	t6,7(s0)
1c00ae84:	01e404a3          	sb	t5,9(s0)
1c00ae88:	01d40523          	sb	t4,10(s0)
1c00ae8c:	01c405a3          	sb	t3,11(s0)
1c00ae90:	006406a3          	sb	t1,13(s0)
1c00ae94:	01140723          	sb	a7,14(s0)
1c00ae98:	00f407a3          	sb	a5,15(s0)
1c00ae9c:	00d40423          	sb	a3,8(s0)
1c00aea0:	56fe                	lw	a3,252(sp)
1c00aea2:	5502                	lw	a0,32(sp)
1c00aea4:	54a2                	lw	s1,40(sp)
1c00aea6:	0185db13          	srli	s6,a1,0x18
1c00aeaa:	00855d93          	srli	s11,a0,0x8
1c00aeae:	01055d13          	srli	s10,a0,0x10
1c00aeb2:	01855c93          	srli	s9,a0,0x18
1c00aeb6:	5522                	lw	a0,40(sp)
1c00aeb8:	5842                	lw	a6,48(sp)
1c00aeba:	0085dc13          	srli	s8,a1,0x8
1c00aebe:	00855a93          	srli	s5,a0,0x8
1c00aec2:	8141                	srli	a0,a0,0x10
1c00aec4:	c42a                	sw	a0,8(sp)
1c00aec6:	5562                	lw	a0,56(sp)
1c00aec8:	0105db93          	srli	s7,a1,0x10
1c00aecc:	00b40a23          	sb	a1,20(s0)
1c00aed0:	8161                	srli	a0,a0,0x18
1c00aed2:	c22a                	sw	a0,4(sp)
1c00aed4:	5502                	lw	a0,32(sp)
1c00aed6:	45a2                	lw	a1,8(sp)
1c00aed8:	01640ba3          	sb	s6,23(s0)
1c00aedc:	c62a                	sw	a0,12(sp)
1c00aede:	00c14503          	lbu	a0,12(sp)
1c00aee2:	5b22                	lw	s6,40(sp)
1c00aee4:	0184d993          	srli	s3,s1,0x18
1c00aee8:	00865913          	srli	s2,a2,0x8
1c00aeec:	01065493          	srli	s1,a2,0x10
1c00aef0:	01865393          	srli	t2,a2,0x18
1c00aef4:	00a10623          	sb	a0,12(sp)
1c00aef8:	0ff57513          	andi	a0,a0,255
1c00aefc:	10412783          	lw	a5,260(sp)
1c00af00:	00885293          	srli	t0,a6,0x8
1c00af04:	01085f93          	srli	t6,a6,0x10
1c00af08:	01885f13          	srli	t5,a6,0x18
1c00af0c:	0086de93          	srli	t4,a3,0x8
1c00af10:	5862                	lw	a6,56(sp)
1c00af12:	0106de13          	srli	t3,a3,0x10
1c00af16:	0186d313          	srli	t1,a3,0x18
1c00af1a:	00a40823          	sb	a0,16(s0)
1c00af1e:	01b408a3          	sb	s11,17(s0)
1c00af22:	01a40923          	sb	s10,18(s0)
1c00af26:	019409a3          	sb	s9,19(s0)
1c00af2a:	01840aa3          	sb	s8,21(s0)
1c00af2e:	01740b23          	sb	s7,22(s0)
1c00af32:	01640c23          	sb	s6,24(s0)
1c00af36:	01540ca3          	sb	s5,25(s0)
1c00af3a:	00b40d23          	sb	a1,26(s0)
1c00af3e:	01340da3          	sb	s3,27(s0)
1c00af42:	01240ea3          	sb	s2,29(s0)
1c00af46:	00940f23          	sb	s1,30(s0)
1c00af4a:	00740fa3          	sb	t2,31(s0)
1c00af4e:	00c40e23          	sb	a2,28(s0)
1c00af52:	5642                	lw	a2,48(sp)
1c00af54:	02d40223          	sb	a3,36(s0)
1c00af58:	56e2                	lw	a3,56(sp)
1c00af5a:	02c40023          	sb	a2,32(s0)
1c00af5e:	10c12603          	lw	a2,268(sp)
1c00af62:	02d40423          	sb	a3,40(s0)
1c00af66:	4692                	lw	a3,4(sp)
1c00af68:	00885893          	srli	a7,a6,0x8
1c00af6c:	025400a3          	sb	t0,33(s0)
1c00af70:	02d405a3          	sb	a3,43(s0)
1c00af74:	11412683          	lw	a3,276(sp)
1c00af78:	03f40123          	sb	t6,34(s0)
1c00af7c:	03e401a3          	sb	t5,35(s0)
1c00af80:	03d402a3          	sb	t4,37(s0)
1c00af84:	03c40323          	sb	t3,38(s0)
1c00af88:	026403a3          	sb	t1,39(s0)
1c00af8c:	02f40623          	sb	a5,44(s0)
1c00af90:	0087d993          	srli	s3,a5,0x8
1c00af94:	0107d913          	srli	s2,a5,0x10
1c00af98:	01085813          	srli	a6,a6,0x10
1c00af9c:	00875493          	srli	s1,a4,0x8
1c00afa0:	008a5e13          	srli	t3,s4,0x8
1c00afa4:	010a5313          	srli	t1,s4,0x10
1c00afa8:	83e1                	srli	a5,a5,0x18
1c00afaa:	01075393          	srli	t2,a4,0x10
1c00afae:	01875293          	srli	t0,a4,0x18
1c00afb2:	00865f93          	srli	t6,a2,0x8
1c00afb6:	01065f13          	srli	t5,a2,0x10
1c00afba:	01865e93          	srli	t4,a2,0x18
1c00afbe:	031404a3          	sb	a7,41(s0)
1c00afc2:	03040523          	sb	a6,42(s0)
1c00afc6:	033406a3          	sb	s3,45(s0)
1c00afca:	03240723          	sb	s2,46(s0)
1c00afce:	029408a3          	sb	s1,49(s0)
1c00afd2:	03440c23          	sb	s4,56(s0)
1c00afd6:	018a5893          	srli	a7,s4,0x18
1c00afda:	02f407a3          	sb	a5,47(s0)
1c00afde:	02e40823          	sb	a4,48(s0)
1c00afe2:	02740923          	sb	t2,50(s0)
1c00afe6:	025409a3          	sb	t0,51(s0)
1c00afea:	02c40a23          	sb	a2,52(s0)
1c00afee:	03f40aa3          	sb	t6,53(s0)
1c00aff2:	03e40b23          	sb	t5,54(s0)
1c00aff6:	03d40ba3          	sb	t4,55(s0)
1c00affa:	03c40ca3          	sb	t3,57(s0)
1c00affe:	02640d23          	sb	t1,58(s0)
1c00b002:	0086d813          	srli	a6,a3,0x8
1c00b006:	0106d513          	srli	a0,a3,0x10
1c00b00a:	0186d593          	srli	a1,a3,0x18
1c00b00e:	03140da3          	sb	a7,59(s0)
1c00b012:	02d40e23          	sb	a3,60(s0)
1c00b016:	03040ea3          	sb	a6,61(s0)
1c00b01a:	02a40f23          	sb	a0,62(s0)
1c00b01e:	02b40fa3          	sb	a1,63(s0)
1c00b022:	1dc12083          	lw	ra,476(sp)
1c00b026:	1d812403          	lw	s0,472(sp)
1c00b02a:	1d412483          	lw	s1,468(sp)
1c00b02e:	1d012903          	lw	s2,464(sp)
1c00b032:	1cc12983          	lw	s3,460(sp)
1c00b036:	1c812a03          	lw	s4,456(sp)
1c00b03a:	1c412a83          	lw	s5,452(sp)
1c00b03e:	1c012b03          	lw	s6,448(sp)
1c00b042:	1bc12b83          	lw	s7,444(sp)
1c00b046:	1b812c03          	lw	s8,440(sp)
1c00b04a:	1b412c83          	lw	s9,436(sp)
1c00b04e:	1b012d03          	lw	s10,432(sp)
1c00b052:	1ac12d83          	lw	s11,428(sp)
1c00b056:	613d                	addi	sp,sp,480
1c00b058:	8082                	ret
1c00b05a:	4781                	li	a5,0
1c00b05c:	ba45                	j	1c00aa0c <sha3_512+0x12e>

1c00b05e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>:
1c00b05e:	736d                	lui	t1,0xffffb
1c00b060:	715d                	addi	sp,sp,-80
1c00b062:	3d030313          	addi	t1,t1,976 # ffffb3d0 <__l2_shared_end+0xe3feb3d0>
1c00b066:	c686                	sw	ra,76(sp)
1c00b068:	c4a2                	sw	s0,72(sp)
1c00b06a:	c2a6                	sw	s1,68(sp)
1c00b06c:	c0ca                	sw	s2,64(sp)
1c00b06e:	de4e                	sw	s3,60(sp)
1c00b070:	dc52                	sw	s4,56(sp)
1c00b072:	da56                	sw	s5,52(sp)
1c00b074:	d85a                	sw	s6,48(sp)
1c00b076:	d65e                	sw	s7,44(sp)
1c00b078:	d462                	sw	s8,40(sp)
1c00b07a:	d266                	sw	s9,36(sp)
1c00b07c:	d06a                	sw	s10,32(sp)
1c00b07e:	ce6e                	sw	s11,28(sp)
1c00b080:	6495                	lui	s1,0x5
1c00b082:	911a                	add	sp,sp,t1
1c00b084:	8432                	mv	s0,a2
1c00b086:	87aa                	mv	a5,a0
1c00b088:	1010                	addi	a2,sp,32
1c00b08a:	c2048713          	addi	a4,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b08e:	7575                	lui	a0,0xffffd
1c00b090:	9732                	add	a4,a4,a2
1c00b092:	80050513          	addi	a0,a0,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c00b096:	892e                	mv	s2,a1
1c00b098:	953a                	add	a0,a0,a4
1c00b09a:	85a2                	mv	a1,s0
1c00b09c:	c43e                	sw	a5,8(sp)
1c00b09e:	c636                	sw	a3,12(sp)
1c00b0a0:	40b000ef          	jal	ra,1c00bcaa <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00b0a4:	60f44783          	lbu	a5,1551(s0)
1c00b0a8:	61c44703          	lbu	a4,1564(s0)
1c00b0ac:	60b44983          	lbu	s3,1547(s0)
1c00b0b0:	61144283          	lbu	t0,1553(s0)
1c00b0b4:	61044b03          	lbu	s6,1552(s0)
1c00b0b8:	61244503          	lbu	a0,1554(s0)
1c00b0bc:	c23e                	sw	a5,4(sp)
1c00b0be:	61744783          	lbu	a5,1559(s0)
1c00b0c2:	61544f83          	lbu	t6,1557(s0)
1c00b0c6:	cc3a                	sw	a4,24(sp)
1c00b0c8:	c04e                	sw	s3,0(sp)
1c00b0ca:	02a2                	slli	t0,t0,0x8
1c00b0cc:	60844c03          	lbu	s8,1544(s0)
1c00b0d0:	60c44b83          	lbu	s7,1548(s0)
1c00b0d4:	61844a03          	lbu	s4,1560(s0)
1c00b0d8:	60544d03          	lbu	s10,1541(s0)
1c00b0dc:	60944483          	lbu	s1,1545(s0)
1c00b0e0:	60d44383          	lbu	t2,1549(s0)
1c00b0e4:	61944f03          	lbu	t5,1561(s0)
1c00b0e8:	61d44e83          	lbu	t4,1565(s0)
1c00b0ec:	60144e03          	lbu	t3,1537(s0)
1c00b0f0:	60444c83          	lbu	s9,1540(s0)
1c00b0f4:	60644303          	lbu	t1,1542(s0)
1c00b0f8:	60a44883          	lbu	a7,1546(s0)
1c00b0fc:	60e44803          	lbu	a6,1550(s0)
1c00b100:	61444a83          	lbu	s5,1556(s0)
1c00b104:	61644603          	lbu	a2,1558(s0)
1c00b108:	61a44683          	lbu	a3,1562(s0)
1c00b10c:	61e44703          	lbu	a4,1566(s0)
1c00b110:	60044583          	lbu	a1,1536(s0)
1c00b114:	60244d83          	lbu	s11,1538(s0)
1c00b118:	60744083          	lbu	ra,1543(s0)
1c00b11c:	61344983          	lbu	s3,1555(s0)
1c00b120:	0542                	slli	a0,a0,0x10
1c00b122:	c83e                	sw	a5,16(sp)
1c00b124:	0162e2b3          	or	t0,t0,s6
1c00b128:	61b44783          	lbu	a5,1563(s0)
1c00b12c:	005562b3          	or	t0,a0,t0
1c00b130:	4542                	lw	a0,16(sp)
1c00b132:	0fa2                	slli	t6,t6,0x8
1c00b134:	ca3e                	sw	a5,20(sp)
1c00b136:	0e22                	slli	t3,t3,0x8
1c00b138:	61f44783          	lbu	a5,1567(s0)
1c00b13c:	015fefb3          	or	t6,t6,s5
1c00b140:	0642                	slli	a2,a2,0x10
1c00b142:	00be65b3          	or	a1,t3,a1
1c00b146:	01f66633          	or	a2,a2,t6
1c00b14a:	4e02                	lw	t3,0(sp)
1c00b14c:	01851f93          	slli	t6,a0,0x18
1c00b150:	4552                	lw	a0,20(sp)
1c00b152:	04a2                	slli	s1,s1,0x8
1c00b154:	0f22                	slli	t5,t5,0x8
1c00b156:	ce3e                	sw	a5,28(sp)
1c00b158:	0184e4b3          	or	s1,s1,s8
1c00b15c:	014f6f33          	or	t5,t5,s4
1c00b160:	08c2                	slli	a7,a7,0x10
1c00b162:	4a62                	lw	s4,24(sp)
1c00b164:	06c2                	slli	a3,a3,0x10
1c00b166:	0098e8b3          	or	a7,a7,s1
1c00b16a:	01e6e6b3          	or	a3,a3,t5
1c00b16e:	018e1493          	slli	s1,t3,0x18
1c00b172:	01851f13          	slli	t5,a0,0x18
1c00b176:	4e12                	lw	t3,4(sp)
1c00b178:	4572                	lw	a0,28(sp)
1c00b17a:	03a2                	slli	t2,t2,0x8
1c00b17c:	0ea2                	slli	t4,t4,0x8
1c00b17e:	60344783          	lbu	a5,1539(s0)
1c00b182:	0173e3b3          	or	t2,t2,s7
1c00b186:	014eeeb3          	or	t4,t4,s4
1c00b18a:	0842                	slli	a6,a6,0x10
1c00b18c:	0742                	slli	a4,a4,0x10
1c00b18e:	00786833          	or	a6,a6,t2
1c00b192:	0114e8b3          	or	a7,s1,a7
1c00b196:	018e1393          	slli	t2,t3,0x18
1c00b19a:	6495                	lui	s1,0x5
1c00b19c:	01851e13          	slli	t3,a0,0x18
1c00b1a0:	01d76733          	or	a4,a4,t4
1c00b1a4:	0d22                	slli	s10,s10,0x8
1c00b1a6:	00ee6733          	or	a4,t3,a4
1c00b1aa:	746d                	lui	s0,0xffffb
1c00b1ac:	0dc2                	slli	s11,s11,0x10
1c00b1ae:	02010e93          	addi	t4,sp,32
1c00b1b2:	019d6cb3          	or	s9,s10,s9
1c00b1b6:	0342                	slli	t1,t1,0x10
1c00b1b8:	c2048e13          	addi	t3,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b1bc:	00bde5b3          	or	a1,s11,a1
1c00b1c0:	00e2                	slli	ra,ra,0x18
1c00b1c2:	60040513          	addi	a0,s0,1536 # ffffb600 <__l2_shared_end+0xe3feb600>
1c00b1c6:	9e76                	add	t3,t3,t4
1c00b1c8:	01936333          	or	t1,t1,s9
1c00b1cc:	09e2                	slli	s3,s3,0x18
1c00b1ce:	07e2                	slli	a5,a5,0x18
1c00b1d0:	8fcd                	or	a5,a5,a1
1c00b1d2:	0103e3b3          	or	t2,t2,a6
1c00b1d6:	00df66b3          	or	a3,t5,a3
1c00b1da:	0060e333          	or	t1,ra,t1
1c00b1de:	0059e833          	or	a6,s3,t0
1c00b1e2:	00cfe633          	or	a2,t6,a2
1c00b1e6:	85ca                	mv	a1,s2
1c00b1e8:	9572                	add	a0,a0,t3
1c00b1ea:	d03e                	sw	a5,32(sp)
1c00b1ec:	dc36                	sw	a3,56(sp)
1c00b1ee:	de3a                	sw	a4,60(sp)
1c00b1f0:	d21a                	sw	t1,36(sp)
1c00b1f2:	d446                	sw	a7,40(sp)
1c00b1f4:	d61e                	sw	t2,44(sp)
1c00b1f6:	d842                	sw	a6,48(sp)
1c00b1f8:	da32                	sw	a2,52(sp)
1c00b1fa:	25cd                	jal	1c00b8dc <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>
1c00b1fc:	1014                	addi	a3,sp,32
1c00b1fe:	7df9                	lui	s11,0xffffe
1c00b200:	c2048713          	addi	a4,s1,-992
1c00b204:	9736                	add	a4,a4,a3
1c00b206:	800d8913          	addi	s2,s11,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00b20a:	993a                	add	s2,s2,a4
1c00b20c:	c2048713          	addi	a4,s1,-992
1c00b210:	9736                	add	a4,a4,a3
1c00b212:	c2048793          	addi	a5,s1,-992
1c00b216:	3e040413          	addi	s0,s0,992
1c00b21a:	976e                	add	a4,a4,s11
1c00b21c:	97b6                	add	a5,a5,a3
1c00b21e:	c03a                	sw	a4,0(sp)
1c00b220:	c202                	sw	zero,4(sp)
1c00b222:	00878c33          	add	s8,a5,s0
1c00b226:	0a890b93          	addi	s7,s2,168
1c00b22a:	6405                	lui	s0,0x1
1c00b22c:	fff40993          	addi	s3,s0,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00b230:	00414d83          	lbu	s11,4(sp)
1c00b234:	4c82                	lw	s9,0(sp)
1c00b236:	4481                	li	s1,0
1c00b238:	1f890d13          	addi	s10,s2,504
1c00b23c:	d0040413          	addi	s0,s0,-768
1c00b240:	a015                	j	1c00b264 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x206>
1c00b242:	00f61023          	sh	a5,0(a2)
1c00b246:	40689b63          	bne	a7,t1,1c00b65c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x5fe>
1c00b24a:	6789                	lui	a5,0x2
1c00b24c:	c2078513          	addi	a0,a5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b250:	101c                	addi	a5,sp,32
1c00b252:	953e                	add	a0,a0,a5
1c00b254:	91cff0ef          	jal	ra,1c00a370 <shake128_ctx_release>
1c00b258:	0485                	addi	s1,s1,1
1c00b25a:	4791                	li	a5,4
1c00b25c:	200c8c93          	addi	s9,s9,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00b260:	0ef48f63          	beq	s1,a5,1c00b35e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x300>
1c00b264:	6a09                	lui	s4,0x2
1c00b266:	101c                	addi	a5,sp,32
1c00b268:	c20a0513          	addi	a0,s4,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b26c:	0ff4f693          	andi	a3,s1,255
1c00b270:	953e                	add	a0,a0,a5
1c00b272:	85e2                	mv	a1,s8
1c00b274:	866e                	mv	a2,s11
1c00b276:	4d5000ef          	jal	ra,1c00bf4a <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c00b27a:	101c                	addi	a5,sp,32
1c00b27c:	c20a0613          	addi	a2,s4,-992
1c00b280:	963e                	add	a2,a2,a5
1c00b282:	458d                	li	a1,3
1c00b284:	854a                	mv	a0,s2
1c00b286:	ff5fe0ef          	jal	ra,1c00a27a <shake128_squeezeblocks>
1c00b28a:	4b01                	li	s6,0
1c00b28c:	86ca                	mv	a3,s2
1c00b28e:	10000313          	li	t1,256
1c00b292:	0016c503          	lbu	a0,1(a3)
1c00b296:	0006c583          	lbu	a1,0(a3)
1c00b29a:	001b1613          	slli	a2,s6,0x1
1c00b29e:	00851793          	slli	a5,a0,0x8
1c00b2a2:	8fcd                	or	a5,a5,a1
1c00b2a4:	0137f7b3          	and	a5,a5,s3
1c00b2a8:	0026c583          	lbu	a1,2(a3)
1c00b2ac:	9666                	add	a2,a2,s9
1c00b2ae:	00455e13          	srli	t3,a0,0x4
1c00b2b2:	001b0893          	addi	a7,s6,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00b2b6:	f8f476e3          	bgeu	s0,a5,1c00b242 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1e4>
1c00b2ba:	00459793          	slli	a5,a1,0x4
1c00b2be:	01c7e7b3          	or	a5,a5,t3
1c00b2c2:	00f44863          	blt	s0,a5,1c00b2d2 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x274>
1c00b2c6:	001b1613          	slli	a2,s6,0x1
1c00b2ca:	9666                	add	a2,a2,s9
1c00b2cc:	00f61023          	sh	a5,0(a2)
1c00b2d0:	0b05                	addi	s6,s6,1
1c00b2d2:	f66b0ce3          	beq	s6,t1,1c00b24a <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1ec>
1c00b2d6:	068d                	addi	a3,a3,3
1c00b2d8:	fba69de3          	bne	a3,s10,1c00b292 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x234>
1c00b2dc:	10000a93          	li	s5,256
1c00b2e0:	0ff00a13          	li	s4,255
1c00b2e4:	a821                	j	1c00b2fc <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x29e>
1c00b2e6:	00179893          	slli	a7,a5,0x1
1c00b2ea:	98aa                	add	a7,a7,a0
1c00b2ec:	0785                	addi	a5,a5,1
1c00b2ee:	00b89023          	sh	a1,0(a7) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b2f2:	3667ed63          	bltu	a5,t1,1c00b66c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x60e>
1c00b2f6:	9b3e                	add	s6,s6,a5
1c00b2f8:	f56a69e3          	bltu	s4,s6,1c00b24a <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1ec>
1c00b2fc:	6789                	lui	a5,0x2
1c00b2fe:	c2078613          	addi	a2,a5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b302:	101c                	addi	a5,sp,32
1c00b304:	963e                	add	a2,a2,a5
1c00b306:	854a                	mv	a0,s2
1c00b308:	4585                	li	a1,1
1c00b30a:	f71fe0ef          	jal	ra,1c00a27a <shake128_squeezeblocks>
1c00b30e:	001b1513          	slli	a0,s6,0x1
1c00b312:	9566                	add	a0,a0,s9
1c00b314:	416a8333          	sub	t1,s5,s6
1c00b318:	864a                	mv	a2,s2
1c00b31a:	4781                	li	a5,0
1c00b31c:	00164883          	lbu	a7,1(a2)
1c00b320:	00064e03          	lbu	t3,0(a2)
1c00b324:	00264683          	lbu	a3,2(a2)
1c00b328:	00889593          	slli	a1,a7,0x8
1c00b32c:	01c5e5b3          	or	a1,a1,t3
1c00b330:	0692                	slli	a3,a3,0x4
1c00b332:	0048d893          	srli	a7,a7,0x4
1c00b336:	0135f5b3          	and	a1,a1,s3
1c00b33a:	0116e6b3          	or	a3,a3,a7
1c00b33e:	fab474e3          	bgeu	s0,a1,1c00b2e6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x288>
1c00b342:	00d44863          	blt	s0,a3,1c00b352 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2f4>
1c00b346:	00179593          	slli	a1,a5,0x1
1c00b34a:	95aa                	add	a1,a1,a0
1c00b34c:	00d59023          	sh	a3,0(a1)
1c00b350:	0785                	addi	a5,a5,1
1c00b352:	fa67f2e3          	bgeu	a5,t1,1c00b2f6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x298>
1c00b356:	060d                	addi	a2,a2,3
1c00b358:	fd7612e3          	bne	a2,s7,1c00b31c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2be>
1c00b35c:	bf69                	j	1c00b2f6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x298>
1c00b35e:	4792                	lw	a5,4(sp)
1c00b360:	4702                	lw	a4,0(sp)
1c00b362:	6405                	lui	s0,0x1
1c00b364:	80040993          	addi	s3,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00b368:	0785                	addi	a5,a5,1
1c00b36a:	974e                	add	a4,a4,s3
1c00b36c:	c23e                	sw	a5,4(sp)
1c00b36e:	c03a                	sw	a4,0(sp)
1c00b370:	ea979de3          	bne	a5,s1,1c00b22a <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1cc>
1c00b374:	4a32                	lw	s4,12(sp)
1c00b376:	6905                	lui	s2,0x1
1c00b378:	101c                	addi	a5,sp,32
1c00b37a:	c2090513          	addi	a0,s2,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c00b37e:	85d2                	mv	a1,s4
1c00b380:	953e                	add	a0,a0,a5
1c00b382:	4601                	li	a2,0
1c00b384:	23ed                	jal	1c00b96e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b386:	1018                	addi	a4,sp,32
1c00b388:	c2090793          	addi	a5,s2,-992
1c00b38c:	97ba                	add	a5,a5,a4
1c00b38e:	85d2                	mv	a1,s4
1c00b390:	20078513          	addi	a0,a5,512
1c00b394:	4605                	li	a2,1
1c00b396:	2be1                	jal	1c00b96e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b398:	1018                	addi	a4,sp,32
1c00b39a:	c2090793          	addi	a5,s2,-992
1c00b39e:	97ba                	add	a5,a5,a4
1c00b3a0:	85d2                	mv	a1,s4
1c00b3a2:	40078513          	addi	a0,a5,1024
1c00b3a6:	4609                	li	a2,2
1c00b3a8:	23d9                	jal	1c00b96e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b3aa:	1018                	addi	a4,sp,32
1c00b3ac:	c2090793          	addi	a5,s2,-992
1c00b3b0:	97ba                	add	a5,a5,a4
1c00b3b2:	85d2                	mv	a1,s4
1c00b3b4:	60078513          	addi	a0,a5,1536
1c00b3b8:	460d                	li	a2,3
1c00b3ba:	2b55                	jal	1c00b96e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b3bc:	6a89                	lui	s5,0x2
1c00b3be:	101c                	addi	a5,sp,32
1c00b3c0:	c20a8513          	addi	a0,s5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b3c4:	85d2                	mv	a1,s4
1c00b3c6:	953e                	add	a0,a0,a5
1c00b3c8:	4611                	li	a2,4
1c00b3ca:	23e1                	jal	1c00b992 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b3cc:	1018                	addi	a4,sp,32
1c00b3ce:	c20a8793          	addi	a5,s5,-992
1c00b3d2:	97ba                	add	a5,a5,a4
1c00b3d4:	85d2                	mv	a1,s4
1c00b3d6:	20078513          	addi	a0,a5,512
1c00b3da:	4615                	li	a2,5
1c00b3dc:	2b5d                	jal	1c00b992 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b3de:	1018                	addi	a4,sp,32
1c00b3e0:	c20a8793          	addi	a5,s5,-992
1c00b3e4:	97ba                	add	a5,a5,a4
1c00b3e6:	85d2                	mv	a1,s4
1c00b3e8:	40078513          	addi	a0,a5,1024
1c00b3ec:	4619                	li	a2,6
1c00b3ee:	2355                	jal	1c00b992 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b3f0:	1018                	addi	a4,sp,32
1c00b3f2:	c20a8793          	addi	a5,s5,-992
1c00b3f6:	97ba                	add	a5,a5,a4
1c00b3f8:	85d2                	mv	a1,s4
1c00b3fa:	60078513          	addi	a0,a5,1536
1c00b3fe:	461d                	li	a2,7
1c00b400:	2b49                	jal	1c00b992 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b402:	85d2                	mv	a1,s4
1c00b404:	6a15                	lui	s4,0x5
1c00b406:	1018                	addi	a4,sp,32
1c00b408:	74f1                	lui	s1,0xffffc
1c00b40a:	c20a0793          	addi	a5,s4,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b40e:	97ba                	add	a5,a5,a4
1c00b410:	80048513          	addi	a0,s1,-2048 # ffffb800 <__l2_shared_end+0xe3feb800>
1c00b414:	4621                	li	a2,8
1c00b416:	953e                	add	a0,a0,a5
1c00b418:	2bad                	jal	1c00b992 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b41a:	101c                	addi	a5,sp,32
1c00b41c:	c2090513          	addi	a0,s2,-992
1c00b420:	953e                	add	a0,a0,a5
1c00b422:	0b9000ef          	jal	ra,1c00bcda <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00b426:	1014                	addi	a3,sp,32
1c00b428:	77f9                	lui	a5,0xffffe
1c00b42a:	c20a0713          	addi	a4,s4,-992
1c00b42e:	9736                	add	a4,a4,a3
1c00b430:	80078493          	addi	s1,a5,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00b434:	94ba                	add	s1,s1,a4
1c00b436:	c20a0713          	addi	a4,s4,-992
1c00b43a:	9736                	add	a4,a4,a3
1c00b43c:	97ba                	add	a5,a5,a4
1c00b43e:	c2090613          	addi	a2,s2,-992
1c00b442:	9636                	add	a2,a2,a3
1c00b444:	85be                	mv	a1,a5
1c00b446:	8526                	mv	a0,s1
1c00b448:	c03e                	sw	a5,0(sp)
1c00b44a:	221000ef          	jal	ra,1c00be6a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b44e:	101c                	addi	a5,sp,32
1c00b450:	c2090613          	addi	a2,s2,-992
1c00b454:	963e                	add	a2,a2,a5
1c00b456:	4782                	lw	a5,0(sp)
1c00b458:	20048513          	addi	a0,s1,512
1c00b45c:	013785b3          	add	a1,a5,s3
1c00b460:	20b000ef          	jal	ra,1c00be6a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b464:	101c                	addi	a5,sp,32
1c00b466:	c2090613          	addi	a2,s2,-992
1c00b46a:	963e                	add	a2,a2,a5
1c00b46c:	4782                	lw	a5,0(sp)
1c00b46e:	40048513          	addi	a0,s1,1024
1c00b472:	008785b3          	add	a1,a5,s0
1c00b476:	1f5000ef          	jal	ra,1c00be6a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b47a:	101c                	addi	a5,sp,32
1c00b47c:	c2090613          	addi	a2,s2,-992
1c00b480:	963e                	add	a2,a2,a5
1c00b482:	6791                	lui	a5,0x4
1c00b484:	42078793          	addi	a5,a5,1056 # 4420 <__CTOR_LIST__-0x1bffbbe4>
1c00b488:	1018                	addi	a4,sp,32
1c00b48a:	00f705b3          	add	a1,a4,a5
1c00b48e:	60048513          	addi	a0,s1,1536
1c00b492:	1d9000ef          	jal	ra,1c00be6a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b496:	77f5                	lui	a5,0xffffd
1c00b498:	80078593          	addi	a1,a5,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c00b49c:	c2090613          	addi	a2,s2,-992
1c00b4a0:	101c                	addi	a5,sp,32
1c00b4a2:	1018                	addi	a4,sp,32
1c00b4a4:	963e                	add	a2,a2,a5
1c00b4a6:	c20a0793          	addi	a5,s4,-992
1c00b4aa:	97ba                	add	a5,a5,a4
1c00b4ac:	95be                	add	a1,a1,a5
1c00b4ae:	746d                	lui	s0,0xffffb
1c00b4b0:	c20a0793          	addi	a5,s4,-992
1c00b4b4:	97ba                	add	a5,a5,a4
1c00b4b6:	40040513          	addi	a0,s0,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00b4ba:	953e                	add	a0,a0,a5
1c00b4bc:	1af000ef          	jal	ra,1c00be6a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b4c0:	8526                	mv	a0,s1
1c00b4c2:	0d5000ef          	jal	ra,1c00bd96 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>
1c00b4c6:	1018                	addi	a4,sp,32
1c00b4c8:	c20a0793          	addi	a5,s4,-992
1c00b4cc:	97ba                	add	a5,a5,a4
1c00b4ce:	97a2                	add	a5,a5,s0
1c00b4d0:	c03e                	sw	a5,0(sp)
1c00b4d2:	1014                	addi	a3,sp,32
1c00b4d4:	40078713          	addi	a4,a5,1024
1c00b4d8:	c2090793          	addi	a5,s2,-992
1c00b4dc:	97b6                	add	a5,a5,a3
1c00b4de:	4682                	lw	a3,0(sp)
1c00b4e0:	a0078793          	addi	a5,a5,-1536
1c00b4e4:	60068693          	addi	a3,a3,1536
1c00b4e8:	00072803          	lw	a6,0(a4)
1c00b4ec:	4348                	lw	a0,4(a4)
1c00b4ee:	470c                	lw	a1,8(a4)
1c00b4f0:	4750                	lw	a2,12(a4)
1c00b4f2:	0107a023          	sw	a6,0(a5)
1c00b4f6:	c3c8                	sw	a0,4(a5)
1c00b4f8:	c78c                	sw	a1,8(a5)
1c00b4fa:	c7d0                	sw	a2,12(a5)
1c00b4fc:	0741                	addi	a4,a4,16
1c00b4fe:	07c1                	addi	a5,a5,16
1c00b500:	fed714e3          	bne	a4,a3,1c00b4e8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x48a>
1c00b504:	6795                	lui	a5,0x5
1c00b506:	7771                	lui	a4,0xffffc
1c00b508:	c2078793          	addi	a5,a5,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b50c:	1014                	addi	a3,sp,32
1c00b50e:	a0070713          	addi	a4,a4,-1536 # ffffba00 <__l2_shared_end+0xe3feba00>
1c00b512:	97b6                	add	a5,a5,a3
1c00b514:	6341                	lui	t1,0x10
1c00b516:	7ef1                	lui	t4,0xffffc
1c00b518:	973e                	add	a4,a4,a5
1c00b51a:	4581                	li	a1,0
1c00b51c:	137d                	addi	t1,t1,-1
1c00b51e:	10000e13          	li	t3,256
1c00b522:	00071603          	lh	a2,0(a4)
1c00b526:	00471883          	lh	a7,4(a4)
1c00b52a:	00271683          	lh	a3,2(a4)
1c00b52e:	00671803          	lh	a6,6(a4)
1c00b532:	6485                	lui	s1,0x1
1c00b534:	4015d793          	srai	a5,a1,0x1
1c00b538:	c2048413          	addi	s0,s1,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c00b53c:	02010f13          	addi	t5,sp,32
1c00b540:	00279513          	slli	a0,a5,0x2
1c00b544:	947a                	add	s0,s0,t5
1c00b546:	0642                	slli	a2,a2,0x10
1c00b548:	0068f8b3          	and	a7,a7,t1
1c00b54c:	0785                	addi	a5,a5,1
1c00b54e:	06c2                	slli	a3,a3,0x10
1c00b550:	00687833          	and	a6,a6,t1
1c00b554:	9522                	add	a0,a0,s0
1c00b556:	01166633          	or	a2,a2,a7
1c00b55a:	078a                	slli	a5,a5,0x2
1c00b55c:	0106e6b3          	or	a3,a3,a6
1c00b560:	c0c52023          	sw	a2,-1024(a0)
1c00b564:	97a2                	add	a5,a5,s0
1c00b566:	c0d7a023          	sw	a3,-1024(a5)
1c00b56a:	0591                	addi	a1,a1,4
1c00b56c:	0721                	addi	a4,a4,8
1c00b56e:	fbc59ae3          	bne	a1,t3,1c00b522 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x4c4>
1c00b572:	6495                	lui	s1,0x5
1c00b574:	c2048793          	addi	a5,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b578:	e00e8593          	addi	a1,t4,-512 # ffffbe00 <__l2_shared_end+0xe3febe00>
1c00b57c:	97fa                	add	a5,a5,t5
1c00b57e:	00b78433          	add	s0,a5,a1
1c00b582:	c2048793          	addi	a5,s1,-992
1c00b586:	97fa                	add	a5,a5,t5
1c00b588:	c00e8513          	addi	a0,t4,-1024
1c00b58c:	85a2                	mv	a1,s0
1c00b58e:	953e                	add	a0,a0,a5
1c00b590:	e2cfe0ef          	jal	ra,1c009bbc <KYBER_poly_intt>
1c00b594:	77ed                	lui	a5,0xffffb
1c00b596:	c2048713          	addi	a4,s1,-992
1c00b59a:	1014                	addi	a3,sp,32
1c00b59c:	40078793          	addi	a5,a5,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00b5a0:	9736                	add	a4,a4,a3
1c00b5a2:	97ba                	add	a5,a5,a4
1c00b5a4:	85a2                	mv	a1,s0
1c00b5a6:	10078613          	addi	a2,a5,256
1c00b5aa:	4198                	lw	a4,0(a1)
1c00b5ac:	0789                	addi	a5,a5,2
1c00b5ae:	0591                	addi	a1,a1,4
1c00b5b0:	01075693          	srli	a3,a4,0x10
1c00b5b4:	fed79f23          	sh	a3,-2(a5)
1c00b5b8:	0ee79f23          	sh	a4,254(a5)
1c00b5bc:	fec797e3          	bne	a5,a2,1c00b5aa <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x54c>
1c00b5c0:	6995                	lui	s3,0x5
1c00b5c2:	1018                	addi	a4,sp,32
1c00b5c4:	c2098793          	addi	a5,s3,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b5c8:	74f9                	lui	s1,0xffffe
1c00b5ca:	97ba                	add	a5,a5,a4
1c00b5cc:	80048493          	addi	s1,s1,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00b5d0:	94be                	add	s1,s1,a5
1c00b5d2:	c2098793          	addi	a5,s3,-992
1c00b5d6:	97ba                	add	a5,a5,a4
1c00b5d8:	7675                	lui	a2,0xffffd
1c00b5da:	963e                	add	a2,a2,a5
1c00b5dc:	85a6                	mv	a1,s1
1c00b5de:	8526                	mv	a0,s1
1c00b5e0:	10d000ef          	jal	ra,1c00beec <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c00b5e4:	1014                	addi	a3,sp,32
1c00b5e6:	796d                	lui	s2,0xffffb
1c00b5e8:	c2098713          	addi	a4,s3,-992
1c00b5ec:	9736                	add	a4,a4,a3
1c00b5ee:	40090413          	addi	s0,s2,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00b5f2:	c2098793          	addi	a5,s3,-992
1c00b5f6:	7671                	lui	a2,0xffffc
1c00b5f8:	943a                	add	s0,s0,a4
1c00b5fa:	97b6                	add	a5,a5,a3
1c00b5fc:	80060613          	addi	a2,a2,-2048 # ffffb800 <__l2_shared_end+0xe3feb800>
1c00b600:	963e                	add	a2,a2,a5
1c00b602:	85a2                	mv	a1,s0
1c00b604:	8522                	mv	a0,s0
1c00b606:	217d                	jal	1c00bab4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00b608:	1018                	addi	a4,sp,32
1c00b60a:	c2098793          	addi	a5,s3,-992
1c00b60e:	97ba                	add	a5,a5,a4
1c00b610:	60090613          	addi	a2,s2,1536
1c00b614:	963e                	add	a2,a2,a5
1c00b616:	85a2                	mv	a1,s0
1c00b618:	8522                	mv	a0,s0
1c00b61a:	2969                	jal	1c00bab4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00b61c:	8526                	mv	a0,s1
1c00b61e:	0ad000ef          	jal	ra,1c00beca <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c00b622:	8522                	mv	a0,s0
1c00b624:	21a5                	jal	1c00ba8c <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00b626:	85a6                	mv	a1,s1
1c00b628:	44a2                	lw	s1,8(sp)
1c00b62a:	8526                	mv	a0,s1
1c00b62c:	2945                	jal	1c00badc <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>
1c00b62e:	85a2                	mv	a1,s0
1c00b630:	58048513          	addi	a0,s1,1408
1c00b634:	28dd                	jal	1c00b72a <PQCLEAN_KYBER1024_CLEAN_poly_compress>
1c00b636:	6315                	lui	t1,0x5
1c00b638:	c3030313          	addi	t1,t1,-976 # 4c30 <__CTOR_LIST__-0x1bffb3d4>
1c00b63c:	911a                	add	sp,sp,t1
1c00b63e:	40b6                	lw	ra,76(sp)
1c00b640:	4426                	lw	s0,72(sp)
1c00b642:	4496                	lw	s1,68(sp)
1c00b644:	4906                	lw	s2,64(sp)
1c00b646:	59f2                	lw	s3,60(sp)
1c00b648:	5a62                	lw	s4,56(sp)
1c00b64a:	5ad2                	lw	s5,52(sp)
1c00b64c:	5b42                	lw	s6,48(sp)
1c00b64e:	5bb2                	lw	s7,44(sp)
1c00b650:	5c22                	lw	s8,40(sp)
1c00b652:	5c92                	lw	s9,36(sp)
1c00b654:	5d02                	lw	s10,32(sp)
1c00b656:	4df2                	lw	s11,28(sp)
1c00b658:	6161                	addi	sp,sp,80
1c00b65a:	8082                	ret
1c00b65c:	8111                	srli	a0,a0,0x4
1c00b65e:	00459793          	slli	a5,a1,0x4
1c00b662:	8fc9                	or	a5,a5,a0
1c00b664:	8b46                	mv	s6,a7
1c00b666:	c6f450e3          	bge	s0,a5,1c00b2c6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x268>
1c00b66a:	b1b5                	j	1c00b2d6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x278>
1c00b66c:	ccd45de3          	bge	s0,a3,1c00b346 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2e8>
1c00b670:	b1dd                	j	1c00b356 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2f8>

1c00b672 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc>:
1c00b672:	88bac7b7          	lui	a5,0x88bac
1c00b676:	7175                	addi	sp,sp,-144
1c00b678:	5ba78793          	addi	a5,a5,1466 # 88bac5ba <__l2_shared_end+0x6cb9c5ba>
1c00b67c:	c03e                	sw	a5,0(sp)
1c00b67e:	595cd7b7          	lui	a5,0x595cd
1c00b682:	31d78793          	addi	a5,a5,797 # 595cd31d <__l2_shared_end+0x3d5bd31d>
1c00b686:	c23e                	sw	a5,4(sp)
1c00b688:	007097b7          	lui	a5,0x709
1c00b68c:	67178793          	addi	a5,a5,1649 # 709671 <__CTOR_LIST__-0x1b8f6993>
1c00b690:	c43e                	sw	a5,8(sp)
1c00b692:	75d697b7          	lui	a5,0x75d69
1c00b696:	24678793          	addi	a5,a5,582 # 75d69246 <__l2_shared_end+0x59d59246>
1c00b69a:	c63e                	sw	a5,12(sp)
1c00b69c:	db9847b7          	lui	a5,0xdb984
1c00b6a0:	cb878793          	addi	a5,a5,-840 # db983cb8 <__l2_shared_end+0xbf973cb8>
1c00b6a4:	c83e                	sw	a5,16(sp)
1c00b6a6:	805517b7          	lui	a5,0x80551
1c00b6aa:	e6a78793          	addi	a5,a5,-406 # 80550e6a <__l2_shared_end+0x64540e6a>
1c00b6ae:	ca3e                	sw	a5,20(sp)
1c00b6b0:	7eebb7b7          	lui	a5,0x7eebb
1c00b6b4:	f0b78793          	addi	a5,a5,-245 # 7eebaf0b <__l2_shared_end+0x62eaaf0b>
1c00b6b8:	cc3e                	sw	a5,24(sp)
1c00b6ba:	f41b57b7          	lui	a5,0xf41b5
1c00b6be:	c522                	sw	s0,136(sp)
1c00b6c0:	c326                	sw	s1,132(sp)
1c00b6c2:	c14a                	sw	s2,128(sp)
1c00b6c4:	97078793          	addi	a5,a5,-1680 # f41b4970 <__l2_shared_end+0xd81a4970>
1c00b6c8:	842a                	mv	s0,a0
1c00b6ca:	84b2                	mv	s1,a2
1c00b6cc:	892e                	mv	s2,a1
1c00b6ce:	850a                	mv	a0,sp
1c00b6d0:	858a                	mv	a1,sp
1c00b6d2:	02000613          	li	a2,32
1c00b6d6:	c706                	sw	ra,140(sp)
1c00b6d8:	ce3e                	sw	a5,28(sp)
1c00b6da:	f25fe0ef          	jal	ra,1c00a5fe <sha3_256>
1c00b6de:	85a6                	mv	a1,s1
1c00b6e0:	1008                	addi	a0,sp,32
1c00b6e2:	62000613          	li	a2,1568
1c00b6e6:	f19fe0ef          	jal	ra,1c00a5fe <sha3_256>
1c00b6ea:	858a                	mv	a1,sp
1c00b6ec:	0088                	addi	a0,sp,64
1c00b6ee:	04000613          	li	a2,64
1c00b6f2:	9ecff0ef          	jal	ra,1c00a8de <sha3_512>
1c00b6f6:	1094                	addi	a3,sp,96
1c00b6f8:	8626                	mv	a2,s1
1c00b6fa:	858a                	mv	a1,sp
1c00b6fc:	8522                	mv	a0,s0
1c00b6fe:	3285                	jal	1c00b05e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>
1c00b700:	85a2                	mv	a1,s0
1c00b702:	1088                	addi	a0,sp,96
1c00b704:	62000613          	li	a2,1568
1c00b708:	ef7fe0ef          	jal	ra,1c00a5fe <sha3_256>
1c00b70c:	854a                	mv	a0,s2
1c00b70e:	0090                	addi	a2,sp,64
1c00b710:	04000693          	li	a3,64
1c00b714:	02000593          	li	a1,32
1c00b718:	c63fe0ef          	jal	ra,1c00a37a <shake256>
1c00b71c:	40ba                	lw	ra,140(sp)
1c00b71e:	442a                	lw	s0,136(sp)
1c00b720:	449a                	lw	s1,132(sp)
1c00b722:	490a                	lw	s2,128(sp)
1c00b724:	4501                	li	a0,0
1c00b726:	6149                	addi	sp,sp,144
1c00b728:	8082                	ret

1c00b72a <PQCLEAN_KYBER1024_CLEAN_poly_compress>:
1c00b72a:	1101                	addi	sp,sp,-32
1c00b72c:	6605                	lui	a2,0x1
1c00b72e:	ce22                	sw	s0,28(sp)
1c00b730:	cc26                	sw	s1,24(sp)
1c00b732:	ca4a                	sw	s2,20(sp)
1c00b734:	c84e                	sw	s3,16(sp)
1c00b736:	c652                	sw	s4,12(sp)
1c00b738:	0a050813          	addi	a6,a0,160
1c00b73c:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b740:	00459a03          	lh	s4,4(a1)
1c00b744:	00659983          	lh	s3,6(a1)
1c00b748:	00a59903          	lh	s2,10(a1)
1c00b74c:	00c59483          	lh	s1,12(a1)
1c00b750:	00259403          	lh	s0,2(a1)
1c00b754:	40fa5713          	srai	a4,s4,0xf
1c00b758:	40f9d893          	srai	a7,s3,0xf
1c00b75c:	40f95793          	srai	a5,s2,0xf
1c00b760:	40f4d693          	srai	a3,s1,0xf
1c00b764:	40f45f13          	srai	t5,s0,0xf
1c00b768:	8f71                	and	a4,a4,a2
1c00b76a:	00c8f8b3          	and	a7,a7,a2
1c00b76e:	8ff1                	and	a5,a5,a2
1c00b770:	8ef1                	and	a3,a3,a2
1c00b772:	00cf7f33          	and	t5,t5,a2
1c00b776:	9752                	add	a4,a4,s4
1c00b778:	98ce                	add	a7,a7,s3
1c00b77a:	97ca                	add	a5,a5,s2
1c00b77c:	96a6                	add	a3,a3,s1
1c00b77e:	9f22                	add	t5,t5,s0
1c00b780:	08c2                	slli	a7,a7,0x10
1c00b782:	06c2                	slli	a3,a3,0x10
1c00b784:	0742                	slli	a4,a4,0x10
1c00b786:	07c2                	slli	a5,a5,0x10
1c00b788:	4108d893          	srai	a7,a7,0x10
1c00b78c:	86c1                	srai	a3,a3,0x10
1c00b78e:	8741                	srai	a4,a4,0x10
1c00b790:	87c1                	srai	a5,a5,0x10
1c00b792:	0f42                	slli	t5,t5,0x10
1c00b794:	410f5f13          	srai	t5,t5,0x10
1c00b798:	0896                	slli	a7,a7,0x5
1c00b79a:	0696                	slli	a3,a3,0x5
1c00b79c:	0716                	slli	a4,a4,0x5
1c00b79e:	0796                	slli	a5,a5,0x5
1c00b7a0:	0f16                	slli	t5,t5,0x5
1c00b7a2:	68088893          	addi	a7,a7,1664
1c00b7a6:	68068693          	addi	a3,a3,1664
1c00b7aa:	68070713          	addi	a4,a4,1664
1c00b7ae:	68078793          	addi	a5,a5,1664
1c00b7b2:	02c8d8b3          	divu	a7,a7,a2
1c00b7b6:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00b7ba:	00859383          	lh	t2,8(a1)
1c00b7be:	00e59283          	lh	t0,14(a1)
1c00b7c2:	00059f83          	lh	t6,0(a1)
1c00b7c6:	40f3de93          	srai	t4,t2,0xf
1c00b7ca:	00cefeb3          	and	t4,t4,a2
1c00b7ce:	9e9e                	add	t4,t4,t2
1c00b7d0:	40f2d313          	srai	t1,t0,0xf
1c00b7d4:	0ec2                	slli	t4,t4,0x10
1c00b7d6:	40ffde13          	srai	t3,t6,0xf
1c00b7da:	00c37333          	and	t1,t1,a2
1c00b7de:	410ede93          	srai	t4,t4,0x10
1c00b7e2:	9316                	add	t1,t1,t0
1c00b7e4:	00ce7e33          	and	t3,t3,a2
1c00b7e8:	0e96                	slli	t4,t4,0x5
1c00b7ea:	9e7e                	add	t3,t3,t6
1c00b7ec:	0342                	slli	t1,t1,0x10
1c00b7ee:	680e8e93          	addi	t4,t4,1664
1c00b7f2:	41035313          	srai	t1,t1,0x10
1c00b7f6:	0e42                	slli	t3,t3,0x10
1c00b7f8:	410e5e13          	srai	t3,t3,0x10
1c00b7fc:	0316                	slli	t1,t1,0x5
1c00b7fe:	0515                	addi	a0,a0,5
1c00b800:	68030313          	addi	t1,t1,1664
1c00b804:	0e16                	slli	t3,t3,0x5
1c00b806:	680e0e13          	addi	t3,t3,1664
1c00b80a:	05c1                	addi	a1,a1,16
1c00b80c:	02c6d6b3          	divu	a3,a3,a2
1c00b810:	01f8f893          	andi	a7,a7,31
1c00b814:	00789293          	slli	t0,a7,0x7
1c00b818:	0018d893          	srli	a7,a7,0x1
1c00b81c:	02c75733          	divu	a4,a4,a2
1c00b820:	8afd                	andi	a3,a3,31
1c00b822:	00669f93          	slli	t6,a3,0x6
1c00b826:	8289                	srli	a3,a3,0x2
1c00b828:	02c7d7b3          	divu	a5,a5,a2
1c00b82c:	8b7d                	andi	a4,a4,31
1c00b82e:	070a                	slli	a4,a4,0x2
1c00b830:	00576733          	or	a4,a4,t0
1c00b834:	02cf5f33          	divu	t5,t5,a2
1c00b838:	8bfd                	andi	a5,a5,31
1c00b83a:	0786                	slli	a5,a5,0x1
1c00b83c:	01f7e7b3          	or	a5,a5,t6
1c00b840:	01ff7f13          	andi	t5,t5,31
1c00b844:	02cedeb3          	divu	t4,t4,a2
1c00b848:	005f1f93          	slli	t6,t5,0x5
1c00b84c:	003f5f13          	srli	t5,t5,0x3
1c00b850:	01e76733          	or	a4,a4,t5
1c00b854:	fee50e23          	sb	a4,-4(a0)
1c00b858:	02c35733          	divu	a4,t1,a2
1c00b85c:	01fefe93          	andi	t4,t4,31
1c00b860:	004e9313          	slli	t1,t4,0x4
1c00b864:	004ede93          	srli	t4,t4,0x4
1c00b868:	01d7e7b3          	or	a5,a5,t4
1c00b86c:	fef50f23          	sb	a5,-2(a0)
1c00b870:	0068e8b3          	or	a7,a7,t1
1c00b874:	ff150ea3          	sb	a7,-3(a0)
1c00b878:	02ce5e33          	divu	t3,t3,a2
1c00b87c:	01f77793          	andi	a5,a4,31
1c00b880:	078e                	slli	a5,a5,0x3
1c00b882:	8edd                	or	a3,a3,a5
1c00b884:	fed50fa3          	sb	a3,-1(a0)
1c00b888:	01fe7e13          	andi	t3,t3,31
1c00b88c:	01fe6e33          	or	t3,t3,t6
1c00b890:	ffc50da3          	sb	t3,-5(a0)
1c00b894:	eb0516e3          	bne	a0,a6,1c00b740 <PQCLEAN_KYBER1024_CLEAN_poly_compress+0x16>
1c00b898:	4472                	lw	s0,28(sp)
1c00b89a:	44e2                	lw	s1,24(sp)
1c00b89c:	4952                	lw	s2,20(sp)
1c00b89e:	49c2                	lw	s3,16(sp)
1c00b8a0:	4a32                	lw	s4,12(sp)
1c00b8a2:	6105                	addi	sp,sp,32
1c00b8a4:	8082                	ret

1c00b8a6 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>:
1c00b8a6:	6685                	lui	a3,0x1
1c00b8a8:	18058613          	addi	a2,a1,384
1c00b8ac:	16fd                	addi	a3,a3,-1
1c00b8ae:	0015c783          	lbu	a5,1(a1)
1c00b8b2:	0005c703          	lbu	a4,0(a1)
1c00b8b6:	058d                	addi	a1,a1,3
1c00b8b8:	07a2                	slli	a5,a5,0x8
1c00b8ba:	8fd9                	or	a5,a5,a4
1c00b8bc:	8ff5                	and	a5,a5,a3
1c00b8be:	00f51023          	sh	a5,0(a0)
1c00b8c2:	ffe5c703          	lbu	a4,-2(a1)
1c00b8c6:	fff5c783          	lbu	a5,-1(a1)
1c00b8ca:	0511                	addi	a0,a0,4
1c00b8cc:	8311                	srli	a4,a4,0x4
1c00b8ce:	0792                	slli	a5,a5,0x4
1c00b8d0:	8fd9                	or	a5,a5,a4
1c00b8d2:	fef51f23          	sh	a5,-2(a0)
1c00b8d6:	fcb61ce3          	bne	a2,a1,1c00b8ae <PQCLEAN_KYBER1024_CLEAN_poly_frombytes+0x8>
1c00b8da:	8082                	ret

1c00b8dc <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>:
1c00b8dc:	20050713          	addi	a4,a0,512
1c00b8e0:	0005c783          	lbu	a5,0(a1)
1c00b8e4:	0541                	addi	a0,a0,16
1c00b8e6:	0585                	addi	a1,a1,1
1c00b8e8:	8b85                	andi	a5,a5,1
1c00b8ea:	40f007b3          	neg	a5,a5
1c00b8ee:	6817f793          	andi	a5,a5,1665
1c00b8f2:	fef51823          	sh	a5,-16(a0)
1c00b8f6:	fff5c783          	lbu	a5,-1(a1)
1c00b8fa:	07fa                	slli	a5,a5,0x1e
1c00b8fc:	87fd                	srai	a5,a5,0x1f
1c00b8fe:	6817f793          	andi	a5,a5,1665
1c00b902:	fef51923          	sh	a5,-14(a0)
1c00b906:	fff5c783          	lbu	a5,-1(a1)
1c00b90a:	07f6                	slli	a5,a5,0x1d
1c00b90c:	87fd                	srai	a5,a5,0x1f
1c00b90e:	6817f793          	andi	a5,a5,1665
1c00b912:	fef51a23          	sh	a5,-12(a0)
1c00b916:	fff5c783          	lbu	a5,-1(a1)
1c00b91a:	07f2                	slli	a5,a5,0x1c
1c00b91c:	87fd                	srai	a5,a5,0x1f
1c00b91e:	6817f793          	andi	a5,a5,1665
1c00b922:	fef51b23          	sh	a5,-10(a0)
1c00b926:	fff5c783          	lbu	a5,-1(a1)
1c00b92a:	07ee                	slli	a5,a5,0x1b
1c00b92c:	87fd                	srai	a5,a5,0x1f
1c00b92e:	6817f793          	andi	a5,a5,1665
1c00b932:	fef51c23          	sh	a5,-8(a0)
1c00b936:	fff5c783          	lbu	a5,-1(a1)
1c00b93a:	07ea                	slli	a5,a5,0x1a
1c00b93c:	87fd                	srai	a5,a5,0x1f
1c00b93e:	6817f793          	andi	a5,a5,1665
1c00b942:	fef51d23          	sh	a5,-6(a0)
1c00b946:	fff5c783          	lbu	a5,-1(a1)
1c00b94a:	07e6                	slli	a5,a5,0x19
1c00b94c:	87fd                	srai	a5,a5,0x1f
1c00b94e:	6817f793          	andi	a5,a5,1665
1c00b952:	fef51e23          	sh	a5,-4(a0)
1c00b956:	fff5c783          	lbu	a5,-1(a1)
1c00b95a:	879d                	srai	a5,a5,0x7
1c00b95c:	40f007b3          	neg	a5,a5
1c00b960:	6817f793          	andi	a5,a5,1665
1c00b964:	fef51f23          	sh	a5,-2(a0)
1c00b968:	f6a71ce3          	bne	a4,a0,1c00b8e0 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg+0x4>
1c00b96c:	8082                	ret

1c00b96e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c00b96e:	7175                	addi	sp,sp,-144
1c00b970:	c522                	sw	s0,136(sp)
1c00b972:	86b2                	mv	a3,a2
1c00b974:	842a                	mv	s0,a0
1c00b976:	862e                	mv	a2,a1
1c00b978:	850a                	mv	a0,sp
1c00b97a:	08000593          	li	a1,128
1c00b97e:	c706                	sw	ra,140(sp)
1c00b980:	2509                	jal	1c00bf82 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00b982:	858a                	mv	a1,sp
1c00b984:	8522                	mv	a0,s0
1c00b986:	b28fe0ef          	jal	ra,1c009cae <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c00b98a:	40ba                	lw	ra,140(sp)
1c00b98c:	442a                	lw	s0,136(sp)
1c00b98e:	6149                	addi	sp,sp,144
1c00b990:	8082                	ret

1c00b992 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>:
1c00b992:	7175                	addi	sp,sp,-144
1c00b994:	c522                	sw	s0,136(sp)
1c00b996:	86b2                	mv	a3,a2
1c00b998:	842a                	mv	s0,a0
1c00b99a:	862e                	mv	a2,a1
1c00b99c:	850a                	mv	a0,sp
1c00b99e:	08000593          	li	a1,128
1c00b9a2:	c706                	sw	ra,140(sp)
1c00b9a4:	2bf9                	jal	1c00bf82 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00b9a6:	858a                	mv	a1,sp
1c00b9a8:	8522                	mv	a0,s0
1c00b9aa:	c06fe0ef          	jal	ra,1c009db0 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>
1c00b9ae:	40ba                	lw	ra,140(sp)
1c00b9b0:	442a                	lw	s0,136(sp)
1c00b9b2:	6149                	addi	sp,sp,144
1c00b9b4:	8082                	ret

1c00b9b6 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c00b9b6:	9f010113          	addi	sp,sp,-1552
1c00b9ba:	6341                	lui	t1,0x10
1c00b9bc:	60812423          	sw	s0,1544(sp)
1c00b9c0:	60112623          	sw	ra,1548(sp)
1c00b9c4:	842a                	mv	s0,a0
1c00b9c6:	4e01                	li	t3,0
1c00b9c8:	137d                	addi	t1,t1,-1
1c00b9ca:	10000f93          	li	t6,256
1c00b9ce:	00061503          	lh	a0,0(a2)
1c00b9d2:	00461383          	lh	t2,4(a2)
1c00b9d6:	00059803          	lh	a6,0(a1)
1c00b9da:	00459283          	lh	t0,4(a1)
1c00b9de:	00259683          	lh	a3,2(a1)
1c00b9e2:	00659f03          	lh	t5,6(a1)
1c00b9e6:	00261703          	lh	a4,2(a2)
1c00b9ea:	00661e83          	lh	t4,6(a2)
1c00b9ee:	401e5793          	srai	a5,t3,0x1
1c00b9f2:	00279893          	slli	a7,a5,0x2
1c00b9f6:	60010093          	addi	ra,sp,1536
1c00b9fa:	0542                	slli	a0,a0,0x10
1c00b9fc:	0063f3b3          	and	t2,t2,t1
1c00ba00:	0842                	slli	a6,a6,0x10
1c00ba02:	0062f2b3          	and	t0,t0,t1
1c00ba06:	0785                	addi	a5,a5,1
1c00ba08:	9886                	add	a7,a7,ra
1c00ba0a:	06c2                	slli	a3,a3,0x10
1c00ba0c:	006f7f33          	and	t5,t5,t1
1c00ba10:	00756533          	or	a0,a0,t2
1c00ba14:	0742                	slli	a4,a4,0x10
1c00ba16:	006efeb3          	and	t4,t4,t1
1c00ba1a:	00586833          	or	a6,a6,t0
1c00ba1e:	078a                	slli	a5,a5,0x2
1c00ba20:	9786                	add	a5,a5,ra
1c00ba22:	01e6e6b3          	or	a3,a3,t5
1c00ba26:	01d76733          	or	a4,a4,t4
1c00ba2a:	a108a023          	sw	a6,-1536(a7)
1c00ba2e:	c0a8a023          	sw	a0,-1024(a7)
1c00ba32:	a0d7a023          	sw	a3,-1536(a5)
1c00ba36:	c0e7a023          	sw	a4,-1024(a5)
1c00ba3a:	0e11                	addi	t3,t3,4
1c00ba3c:	05a1                	addi	a1,a1,8
1c00ba3e:	0621                	addi	a2,a2,8
1c00ba40:	f9fe17e3          	bne	t3,t6,1c00b9ce <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x18>
1c00ba44:	0410                	addi	a2,sp,512
1c00ba46:	858a                	mv	a1,sp
1c00ba48:	40010513          	addi	a0,sp,1024
1c00ba4c:	9dafe0ef          	jal	ra,1c009c26 <KYBER_poly_pwm>
1c00ba50:	40010793          	addi	a5,sp,1024
1c00ba54:	8522                	mv	a0,s0
1c00ba56:	60010813          	addi	a6,sp,1536
1c00ba5a:	4394                	lw	a3,0(a5)
1c00ba5c:	43d8                	lw	a4,4(a5)
1c00ba5e:	07a1                	addi	a5,a5,8
1c00ba60:	0106d593          	srli	a1,a3,0x10
1c00ba64:	01075613          	srli	a2,a4,0x10
1c00ba68:	00b51023          	sh	a1,0(a0)
1c00ba6c:	00c51123          	sh	a2,2(a0)
1c00ba70:	00d51223          	sh	a3,4(a0)
1c00ba74:	00e51323          	sh	a4,6(a0)
1c00ba78:	0521                	addi	a0,a0,8
1c00ba7a:	fef810e3          	bne	a6,a5,1c00ba5a <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0xa4>
1c00ba7e:	60c12083          	lw	ra,1548(sp)
1c00ba82:	60812403          	lw	s0,1544(sp)
1c00ba86:	61010113          	addi	sp,sp,1552
1c00ba8a:	8082                	ret

1c00ba8c <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c00ba8c:	1141                	addi	sp,sp,-16
1c00ba8e:	c422                	sw	s0,8(sp)
1c00ba90:	c226                	sw	s1,4(sp)
1c00ba92:	c606                	sw	ra,12(sp)
1c00ba94:	842a                	mv	s0,a0
1c00ba96:	20050493          	addi	s1,a0,512
1c00ba9a:	00041503          	lh	a0,0(s0)
1c00ba9e:	0409                	addi	s0,s0,2
1c00baa0:	2159                	jal	1c00bf26 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00baa2:	fea41f23          	sh	a0,-2(s0)
1c00baa6:	fe941ae3          	bne	s0,s1,1c00ba9a <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c00baaa:	40b2                	lw	ra,12(sp)
1c00baac:	4422                	lw	s0,8(sp)
1c00baae:	4492                	lw	s1,4(sp)
1c00bab0:	0141                	addi	sp,sp,16
1c00bab2:	8082                	ret

1c00bab4 <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c00bab4:	4781                	li	a5,0
1c00bab6:	20000893          	li	a7,512
1c00baba:	00f606b3          	add	a3,a2,a5
1c00babe:	00f58733          	add	a4,a1,a5
1c00bac2:	0006d803          	lhu	a6,0(a3) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00bac6:	00075703          	lhu	a4,0(a4)
1c00baca:	00f506b3          	add	a3,a0,a5
1c00bace:	0789                	addi	a5,a5,2
1c00bad0:	9742                	add	a4,a4,a6
1c00bad2:	00e69023          	sh	a4,0(a3)
1c00bad6:	ff1792e3          	bne	a5,a7,1c00baba <PQCLEAN_KYBER1024_CLEAN_poly_add+0x6>
1c00bada:	8082                	ret

1c00badc <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>:
1c00badc:	1101                	addi	sp,sp,-32
1c00bade:	6605                	lui	a2,0x1
1c00bae0:	ce22                	sw	s0,28(sp)
1c00bae2:	cc26                	sw	s1,24(sp)
1c00bae4:	ca4a                	sw	s2,20(sp)
1c00bae6:	c84e                	sw	s3,16(sp)
1c00bae8:	c652                	sw	s4,12(sp)
1c00baea:	c456                	sw	s5,8(sp)
1c00baec:	c25a                	sw	s6,4(sp)
1c00baee:	16050813          	addi	a6,a0,352
1c00baf2:	88ae                	mv	a7,a1
1c00baf4:	6e050313          	addi	t1,a0,1760
1c00baf8:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00bafc:	ea080593          	addi	a1,a6,-352 # ff00fea0 <__l2_shared_end+0xe2fffea0>
1c00bb00:	8546                	mv	a0,a7
1c00bb02:	00051b03          	lh	s6,0(a0)
1c00bb06:	00251a83          	lh	s5,2(a0)
1c00bb0a:	00451a03          	lh	s4,4(a0)
1c00bb0e:	40fb5e13          	srai	t3,s6,0xf
1c00bb12:	40fad713          	srai	a4,s5,0xf
1c00bb16:	40fa5693          	srai	a3,s4,0xf
1c00bb1a:	00ce7e33          	and	t3,t3,a2
1c00bb1e:	8f71                	and	a4,a4,a2
1c00bb20:	8ef1                	and	a3,a3,a2
1c00bb22:	9e5a                	add	t3,t3,s6
1c00bb24:	9756                	add	a4,a4,s5
1c00bb26:	96d2                	add	a3,a3,s4
1c00bb28:	0e42                	slli	t3,t3,0x10
1c00bb2a:	0742                	slli	a4,a4,0x10
1c00bb2c:	010e5e13          	srli	t3,t3,0x10
1c00bb30:	8341                	srli	a4,a4,0x10
1c00bb32:	06c2                	slli	a3,a3,0x10
1c00bb34:	82c1                	srli	a3,a3,0x10
1c00bb36:	0e2e                	slli	t3,t3,0xb
1c00bb38:	072e                	slli	a4,a4,0xb
1c00bb3a:	06ae                	slli	a3,a3,0xb
1c00bb3c:	680e0e13          	addi	t3,t3,1664
1c00bb40:	68070713          	addi	a4,a4,1664
1c00bb44:	02ce5e33          	divu	t3,t3,a2
1c00bb48:	68068693          	addi	a3,a3,1664
1c00bb4c:	00651983          	lh	s3,6(a0)
1c00bb50:	00851903          	lh	s2,8(a0)
1c00bb54:	00e51383          	lh	t2,14(a0)
1c00bb58:	40f9d793          	srai	a5,s3,0xf
1c00bb5c:	8ff1                	and	a5,a5,a2
1c00bb5e:	40f95f93          	srai	t6,s2,0xf
1c00bb62:	97ce                	add	a5,a5,s3
1c00bb64:	00cfffb3          	and	t6,t6,a2
1c00bb68:	07c2                	slli	a5,a5,0x10
1c00bb6a:	40f3df13          	srai	t5,t2,0xf
1c00bb6e:	9fca                	add	t6,t6,s2
1c00bb70:	83c1                	srli	a5,a5,0x10
1c00bb72:	05ad                	addi	a1,a1,11
1c00bb74:	00cf7f33          	and	t5,t5,a2
1c00bb78:	0fc2                	slli	t6,t6,0x10
1c00bb7a:	07ae                	slli	a5,a5,0xb
1c00bb7c:	00a51483          	lh	s1,10(a0)
1c00bb80:	00c51403          	lh	s0,12(a0)
1c00bb84:	9f1e                	add	t5,t5,t2
1c00bb86:	010fdf93          	srli	t6,t6,0x10
1c00bb8a:	68078793          	addi	a5,a5,1664
1c00bb8e:	0fae                	slli	t6,t6,0xb
1c00bb90:	680f8f93          	addi	t6,t6,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00bb94:	40f4d293          	srai	t0,s1,0xf
1c00bb98:	00c2f2b3          	and	t0,t0,a2
1c00bb9c:	40f45e93          	srai	t4,s0,0xf
1c00bba0:	92a6                	add	t0,t0,s1
1c00bba2:	00cefeb3          	and	t4,t4,a2
1c00bba6:	02c2                	slli	t0,t0,0x10
1c00bba8:	9ea2                	add	t4,t4,s0
1c00bbaa:	0102d293          	srli	t0,t0,0x10
1c00bbae:	0ec2                	slli	t4,t4,0x10
1c00bbb0:	02c75733          	divu	a4,a4,a2
1c00bbb4:	7ffe7e13          	andi	t3,t3,2047
1c00bbb8:	008e5393          	srli	t2,t3,0x8
1c00bbbc:	ffc58aa3          	sb	t3,-11(a1)
1c00bbc0:	02ae                	slli	t0,t0,0xb
1c00bbc2:	010ede93          	srli	t4,t4,0x10
1c00bbc6:	68028293          	addi	t0,t0,1664
1c00bbca:	0f42                	slli	t5,t5,0x10
1c00bbcc:	0eae                	slli	t4,t4,0xb
1c00bbce:	680e8e93          	addi	t4,t4,1664
1c00bbd2:	010f5f13          	srli	t5,t5,0x10
1c00bbd6:	0f2e                	slli	t5,t5,0xb
1c00bbd8:	680f0f13          	addi	t5,t5,1664
1c00bbdc:	0541                	addi	a0,a0,16
1c00bbde:	02c6d6b3          	divu	a3,a3,a2
1c00bbe2:	7ff77713          	andi	a4,a4,2047
1c00bbe6:	00371e13          	slli	t3,a4,0x3
1c00bbea:	01c3ee33          	or	t3,t2,t3
1c00bbee:	8315                	srli	a4,a4,0x5
1c00bbf0:	ffc58b23          	sb	t3,-10(a1)
1c00bbf4:	7ff6f693          	andi	a3,a3,2047
1c00bbf8:	00669393          	slli	t2,a3,0x6
1c00bbfc:	02c7d7b3          	divu	a5,a5,a2
1c00bc00:	00776733          	or	a4,a4,t2
1c00bc04:	fee58ba3          	sb	a4,-9(a1)
1c00bc08:	00a6de13          	srli	t3,a3,0xa
1c00bc0c:	8289                	srli	a3,a3,0x2
1c00bc0e:	fed58c23          	sb	a3,-8(a1)
1c00bc12:	02cfd733          	divu	a4,t6,a2
1c00bc16:	7ff7f793          	andi	a5,a5,2047
1c00bc1a:	00179693          	slli	a3,a5,0x1
1c00bc1e:	00de66b3          	or	a3,t3,a3
1c00bc22:	839d                	srli	a5,a5,0x7
1c00bc24:	fed58ca3          	sb	a3,-7(a1)
1c00bc28:	7ff77713          	andi	a4,a4,2047
1c00bc2c:	00471e13          	slli	t3,a4,0x4
1c00bc30:	02c2d6b3          	divu	a3,t0,a2
1c00bc34:	01c7e7b3          	or	a5,a5,t3
1c00bc38:	fef58d23          	sb	a5,-6(a1)
1c00bc3c:	8311                	srli	a4,a4,0x4
1c00bc3e:	02ced7b3          	divu	a5,t4,a2
1c00bc42:	7ff6f693          	andi	a3,a3,2047
1c00bc46:	00769e93          	slli	t4,a3,0x7
1c00bc4a:	01d76733          	or	a4,a4,t4
1c00bc4e:	0096de13          	srli	t3,a3,0x9
1c00bc52:	fee58da3          	sb	a4,-5(a1)
1c00bc56:	8285                	srli	a3,a3,0x1
1c00bc58:	fed58e23          	sb	a3,-4(a1)
1c00bc5c:	02cf5f33          	divu	t5,t5,a2
1c00bc60:	7ff7f793          	andi	a5,a5,2047
1c00bc64:	00279713          	slli	a4,a5,0x2
1c00bc68:	00ee6733          	or	a4,t3,a4
1c00bc6c:	8399                	srli	a5,a5,0x6
1c00bc6e:	fee58ea3          	sb	a4,-3(a1)
1c00bc72:	7fff7f13          	andi	t5,t5,2047
1c00bc76:	005f1713          	slli	a4,t5,0x5
1c00bc7a:	8fd9                	or	a5,a5,a4
1c00bc7c:	003f5f13          	srli	t5,t5,0x3
1c00bc80:	fef58f23          	sb	a5,-2(a1)
1c00bc84:	ffe58fa3          	sb	t5,-1(a1)
1c00bc88:	e7059de3          	bne	a1,a6,1c00bb02 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x26>
1c00bc8c:	16058813          	addi	a6,a1,352
1c00bc90:	20088893          	addi	a7,a7,512
1c00bc94:	e70314e3          	bne	t1,a6,1c00bafc <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x20>
1c00bc98:	4472                	lw	s0,28(sp)
1c00bc9a:	44e2                	lw	s1,24(sp)
1c00bc9c:	4952                	lw	s2,20(sp)
1c00bc9e:	49c2                	lw	s3,16(sp)
1c00bca0:	4a32                	lw	s4,12(sp)
1c00bca2:	4aa2                	lw	s5,8(sp)
1c00bca4:	4b12                	lw	s6,4(sp)
1c00bca6:	6105                	addi	sp,sp,32
1c00bca8:	8082                	ret

1c00bcaa <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>:
1c00bcaa:	1141                	addi	sp,sp,-16
1c00bcac:	c422                	sw	s0,8(sp)
1c00bcae:	c226                	sw	s1,4(sp)
1c00bcb0:	c04a                	sw	s2,0(sp)
1c00bcb2:	c606                	sw	ra,12(sp)
1c00bcb4:	842e                	mv	s0,a1
1c00bcb6:	84aa                	mv	s1,a0
1c00bcb8:	60058913          	addi	s2,a1,1536
1c00bcbc:	85a2                	mv	a1,s0
1c00bcbe:	8526                	mv	a0,s1
1c00bcc0:	18040413          	addi	s0,s0,384
1c00bcc4:	36cd                	jal	1c00b8a6 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>
1c00bcc6:	20048493          	addi	s1,s1,512
1c00bcca:	ff2419e3          	bne	s0,s2,1c00bcbc <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes+0x12>
1c00bcce:	40b2                	lw	ra,12(sp)
1c00bcd0:	4422                	lw	s0,8(sp)
1c00bcd2:	4492                	lw	s1,4(sp)
1c00bcd4:	4902                	lw	s2,0(sp)
1c00bcd6:	0141                	addi	sp,sp,16
1c00bcd8:	8082                	ret

1c00bcda <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c00bcda:	9e010113          	addi	sp,sp,-1568
1c00bcde:	60812c23          	sw	s0,1560(sp)
1c00bce2:	6405                	lui	s0,0x1
1c00bce4:	60912a23          	sw	s1,1556(sp)
1c00bce8:	80040413          	addi	s0,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00bcec:	64c1                	lui	s1,0x10
1c00bcee:	61212823          	sw	s2,1552(sp)
1c00bcf2:	61312623          	sw	s3,1548(sp)
1c00bcf6:	61412423          	sw	s4,1544(sp)
1c00bcfa:	60112e23          	sw	ra,1564(sp)
1c00bcfe:	8a2a                	mv	s4,a0
1c00bd00:	942a                	add	s0,s0,a0
1c00bd02:	40010993          	addi	s3,sp,1024
1c00bd06:	14fd                	addi	s1,s1,-1
1c00bd08:	10000913          	li	s2,256
1c00bd0c:	20000613          	li	a2,512
1c00bd10:	85d2                	mv	a1,s4
1c00bd12:	854e                	mv	a0,s3
1c00bd14:	24f9                	jal	1c00bfe2 <memcpy>
1c00bd16:	864e                	mv	a2,s3
1c00bd18:	4681                	li	a3,0
1c00bd1a:	00061703          	lh	a4,0(a2)
1c00bd1e:	00261583          	lh	a1,2(a2)
1c00bd22:	4016d793          	srai	a5,a3,0x1
1c00bd26:	078a                	slli	a5,a5,0x2
1c00bd28:	0742                	slli	a4,a4,0x10
1c00bd2a:	8de5                	and	a1,a1,s1
1c00bd2c:	60010513          	addi	a0,sp,1536
1c00bd30:	97aa                	add	a5,a5,a0
1c00bd32:	8f4d                	or	a4,a4,a1
1c00bd34:	a0e7a023          	sw	a4,-1536(a5)
1c00bd38:	0689                	addi	a3,a3,2
1c00bd3a:	0611                	addi	a2,a2,4
1c00bd3c:	fd269fe3          	bne	a3,s2,1c00bd1a <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x40>
1c00bd40:	040c                	addi	a1,sp,512
1c00bd42:	850a                	mv	a0,sp
1c00bd44:	e0ffd0ef          	jal	ra,1c009b52 <KYBER_poly_ntt>
1c00bd48:	0418                	addi	a4,sp,512
1c00bd4a:	87d2                	mv	a5,s4
1c00bd4c:	4310                	lw	a2,0(a4)
1c00bd4e:	4354                	lw	a3,4(a4)
1c00bd50:	0721                	addi	a4,a4,8
1c00bd52:	01065813          	srli	a6,a2,0x10
1c00bd56:	0106d593          	srli	a1,a3,0x10
1c00bd5a:	01079023          	sh	a6,0(a5)
1c00bd5e:	00b79123          	sh	a1,2(a5)
1c00bd62:	00c79223          	sh	a2,4(a5)
1c00bd66:	00d79323          	sh	a3,6(a5)
1c00bd6a:	07a1                	addi	a5,a5,8
1c00bd6c:	fee990e3          	bne	s3,a4,1c00bd4c <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x72>
1c00bd70:	200a0a13          	addi	s4,s4,512
1c00bd74:	f9441ce3          	bne	s0,s4,1c00bd0c <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x32>
1c00bd78:	61c12083          	lw	ra,1564(sp)
1c00bd7c:	61812403          	lw	s0,1560(sp)
1c00bd80:	61412483          	lw	s1,1556(sp)
1c00bd84:	61012903          	lw	s2,1552(sp)
1c00bd88:	60c12983          	lw	s3,1548(sp)
1c00bd8c:	60812a03          	lw	s4,1544(sp)
1c00bd90:	62010113          	addi	sp,sp,1568
1c00bd94:	8082                	ret

1c00bd96 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>:
1c00bd96:	9e010113          	addi	sp,sp,-1568
1c00bd9a:	60812c23          	sw	s0,1560(sp)
1c00bd9e:	6405                	lui	s0,0x1
1c00bda0:	60912a23          	sw	s1,1556(sp)
1c00bda4:	90040413          	addi	s0,s0,-1792 # 900 <__CTOR_LIST__-0x1bfff704>
1c00bda8:	64c1                	lui	s1,0x10
1c00bdaa:	61212823          	sw	s2,1552(sp)
1c00bdae:	61312623          	sw	s3,1548(sp)
1c00bdb2:	61412423          	sw	s4,1544(sp)
1c00bdb6:	60112e23          	sw	ra,1564(sp)
1c00bdba:	10050a13          	addi	s4,a0,256
1c00bdbe:	942a                	add	s0,s0,a0
1c00bdc0:	40010913          	addi	s2,sp,1024
1c00bdc4:	14fd                	addi	s1,s1,-1
1c00bdc6:	10000993          	li	s3,256
1c00bdca:	f00a0593          	addi	a1,s4,-256
1c00bdce:	20000613          	li	a2,512
1c00bdd2:	854a                	mv	a0,s2
1c00bdd4:	2439                	jal	1c00bfe2 <memcpy>
1c00bdd6:	874a                	mv	a4,s2
1c00bdd8:	4581                	li	a1,0
1c00bdda:	00071603          	lh	a2,0(a4)
1c00bdde:	00471883          	lh	a7,4(a4)
1c00bde2:	00271683          	lh	a3,2(a4)
1c00bde6:	00671803          	lh	a6,6(a4)
1c00bdea:	4015d793          	srai	a5,a1,0x1
1c00bdee:	00279513          	slli	a0,a5,0x2
1c00bdf2:	60010313          	addi	t1,sp,1536
1c00bdf6:	0642                	slli	a2,a2,0x10
1c00bdf8:	0098f8b3          	and	a7,a7,s1
1c00bdfc:	0785                	addi	a5,a5,1
1c00bdfe:	06c2                	slli	a3,a3,0x10
1c00be00:	00987833          	and	a6,a6,s1
1c00be04:	951a                	add	a0,a0,t1
1c00be06:	01166633          	or	a2,a2,a7
1c00be0a:	078a                	slli	a5,a5,0x2
1c00be0c:	0106e6b3          	or	a3,a3,a6
1c00be10:	a0c52023          	sw	a2,-1536(a0)
1c00be14:	979a                	add	a5,a5,t1
1c00be16:	a0d7a023          	sw	a3,-1536(a5)
1c00be1a:	0591                	addi	a1,a1,4
1c00be1c:	0721                	addi	a4,a4,8
1c00be1e:	fb359ee3          	bne	a1,s3,1c00bdda <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x44>
1c00be22:	040c                	addi	a1,sp,512
1c00be24:	850a                	mv	a0,sp
1c00be26:	d97fd0ef          	jal	ra,1c009bbc <KYBER_poly_intt>
1c00be2a:	0418                	addi	a4,sp,512
1c00be2c:	87d2                	mv	a5,s4
1c00be2e:	4314                	lw	a3,0(a4)
1c00be30:	0711                	addi	a4,a4,4
1c00be32:	0789                	addi	a5,a5,2
1c00be34:	0106d613          	srli	a2,a3,0x10
1c00be38:	eec79f23          	sh	a2,-258(a5)
1c00be3c:	fed79f23          	sh	a3,-2(a5)
1c00be40:	fee917e3          	bne	s2,a4,1c00be2e <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x98>
1c00be44:	200a0a13          	addi	s4,s4,512
1c00be48:	f94411e3          	bne	s0,s4,1c00bdca <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x34>
1c00be4c:	61c12083          	lw	ra,1564(sp)
1c00be50:	61812403          	lw	s0,1560(sp)
1c00be54:	61412483          	lw	s1,1556(sp)
1c00be58:	61012903          	lw	s2,1552(sp)
1c00be5c:	60c12983          	lw	s3,1548(sp)
1c00be60:	60812a03          	lw	s4,1544(sp)
1c00be64:	62010113          	addi	sp,sp,1568
1c00be68:	8082                	ret

1c00be6a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c00be6a:	de010113          	addi	sp,sp,-544
1c00be6e:	20812c23          	sw	s0,536(sp)
1c00be72:	20912a23          	sw	s1,532(sp)
1c00be76:	21212823          	sw	s2,528(sp)
1c00be7a:	21312623          	sw	s3,524(sp)
1c00be7e:	20112e23          	sw	ra,540(sp)
1c00be82:	84aa                	mv	s1,a0
1c00be84:	89ae                	mv	s3,a1
1c00be86:	8932                	mv	s2,a2
1c00be88:	20000413          	li	s0,512
1c00be8c:	362d                	jal	1c00b9b6 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00be8e:	00890633          	add	a2,s2,s0
1c00be92:	008985b3          	add	a1,s3,s0
1c00be96:	850a                	mv	a0,sp
1c00be98:	3e39                	jal	1c00b9b6 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00be9a:	860a                	mv	a2,sp
1c00be9c:	85a6                	mv	a1,s1
1c00be9e:	8526                	mv	a0,s1
1c00bea0:	20040413          	addi	s0,s0,512
1c00bea4:	3901                	jal	1c00bab4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00bea6:	80040793          	addi	a5,s0,-2048
1c00beaa:	f3f5                	bnez	a5,1c00be8e <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x24>
1c00beac:	8526                	mv	a0,s1
1c00beae:	3ef9                	jal	1c00ba8c <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00beb0:	21c12083          	lw	ra,540(sp)
1c00beb4:	21812403          	lw	s0,536(sp)
1c00beb8:	21412483          	lw	s1,532(sp)
1c00bebc:	21012903          	lw	s2,528(sp)
1c00bec0:	20c12983          	lw	s3,524(sp)
1c00bec4:	22010113          	addi	sp,sp,544
1c00bec8:	8082                	ret

1c00beca <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c00beca:	1141                	addi	sp,sp,-16
1c00becc:	c606                	sw	ra,12(sp)
1c00bece:	c422                	sw	s0,8(sp)
1c00bed0:	842a                	mv	s0,a0
1c00bed2:	3e6d                	jal	1c00ba8c <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00bed4:	20040513          	addi	a0,s0,512
1c00bed8:	3e55                	jal	1c00ba8c <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00beda:	40040513          	addi	a0,s0,1024
1c00bede:	367d                	jal	1c00ba8c <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00bee0:	60040513          	addi	a0,s0,1536
1c00bee4:	4422                	lw	s0,8(sp)
1c00bee6:	40b2                	lw	ra,12(sp)
1c00bee8:	0141                	addi	sp,sp,16
1c00beea:	b64d                	j	1c00ba8c <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c00beec <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c00beec:	1101                	addi	sp,sp,-32
1c00beee:	cc22                	sw	s0,24(sp)
1c00bef0:	ca26                	sw	s1,20(sp)
1c00bef2:	c84a                	sw	s2,16(sp)
1c00bef4:	c64e                	sw	s3,12(sp)
1c00bef6:	ce06                	sw	ra,28(sp)
1c00bef8:	89aa                	mv	s3,a0
1c00befa:	892e                	mv	s2,a1
1c00befc:	84b2                	mv	s1,a2
1c00befe:	4401                	li	s0,0
1c00bf00:	00848633          	add	a2,s1,s0
1c00bf04:	008905b3          	add	a1,s2,s0
1c00bf08:	00898533          	add	a0,s3,s0
1c00bf0c:	3665                	jal	1c00bab4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00bf0e:	20040413          	addi	s0,s0,512
1c00bf12:	80040793          	addi	a5,s0,-2048
1c00bf16:	f7ed                	bnez	a5,1c00bf00 <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c00bf18:	40f2                	lw	ra,28(sp)
1c00bf1a:	4462                	lw	s0,24(sp)
1c00bf1c:	44d2                	lw	s1,20(sp)
1c00bf1e:	4942                	lw	s2,16(sp)
1c00bf20:	49b2                	lw	s3,12(sp)
1c00bf22:	6105                	addi	sp,sp,32
1c00bf24:	8082                	ret

1c00bf26 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00bf26:	6795                	lui	a5,0x5
1c00bf28:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00bf2c:	02f507b3          	mul	a5,a0,a5
1c00bf30:	02000737          	lui	a4,0x2000
1c00bf34:	97ba                	add	a5,a5,a4
1c00bf36:	6705                	lui	a4,0x1
1c00bf38:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00bf3c:	87e9                	srai	a5,a5,0x1a
1c00bf3e:	02e787b3          	mul	a5,a5,a4
1c00bf42:	8d1d                	sub	a0,a0,a5
1c00bf44:	0542                	slli	a0,a0,0x10
1c00bf46:	8541                	srai	a0,a0,0x10
1c00bf48:	8082                	ret

1c00bf4a <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00bf4a:	7139                	addi	sp,sp,-64
1c00bf4c:	da26                	sw	s1,52(sp)
1c00bf4e:	d84a                	sw	s2,48(sp)
1c00bf50:	84b2                	mv	s1,a2
1c00bf52:	892a                	mv	s2,a0
1c00bf54:	02000613          	li	a2,32
1c00bf58:	0068                	addi	a0,sp,12
1c00bf5a:	de06                	sw	ra,60(sp)
1c00bf5c:	dc22                	sw	s0,56(sp)
1c00bf5e:	8436                	mv	s0,a3
1c00bf60:	2049                	jal	1c00bfe2 <memcpy>
1c00bf62:	006c                	addi	a1,sp,12
1c00bf64:	854a                	mv	a0,s2
1c00bf66:	02200613          	li	a2,34
1c00bf6a:	02910623          	sb	s1,44(sp)
1c00bf6e:	028106a3          	sb	s0,45(sp)
1c00bf72:	91cfe0ef          	jal	ra,1c00a08e <shake128_absorb>
1c00bf76:	50f2                	lw	ra,60(sp)
1c00bf78:	5462                	lw	s0,56(sp)
1c00bf7a:	54d2                	lw	s1,52(sp)
1c00bf7c:	5942                	lw	s2,48(sp)
1c00bf7e:	6121                	addi	sp,sp,64
1c00bf80:	8082                	ret

1c00bf82 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00bf82:	7139                	addi	sp,sp,-64
1c00bf84:	87b2                	mv	a5,a2
1c00bf86:	da26                	sw	s1,52(sp)
1c00bf88:	d84a                	sw	s2,48(sp)
1c00bf8a:	84aa                	mv	s1,a0
1c00bf8c:	892e                	mv	s2,a1
1c00bf8e:	02000613          	li	a2,32
1c00bf92:	85be                	mv	a1,a5
1c00bf94:	0068                	addi	a0,sp,12
1c00bf96:	de06                	sw	ra,60(sp)
1c00bf98:	dc22                	sw	s0,56(sp)
1c00bf9a:	8436                	mv	s0,a3
1c00bf9c:	2099                	jal	1c00bfe2 <memcpy>
1c00bf9e:	0070                	addi	a2,sp,12
1c00bfa0:	85ca                	mv	a1,s2
1c00bfa2:	8526                	mv	a0,s1
1c00bfa4:	02100693          	li	a3,33
1c00bfa8:	02810623          	sb	s0,44(sp)
1c00bfac:	bcefe0ef          	jal	ra,1c00a37a <shake256>
1c00bfb0:	50f2                	lw	ra,60(sp)
1c00bfb2:	5462                	lw	s0,56(sp)
1c00bfb4:	54d2                	lw	s1,52(sp)
1c00bfb6:	5942                	lw	s2,48(sp)
1c00bfb8:	6121                	addi	sp,sp,64
1c00bfba:	8082                	ret

1c00bfbc <pos_wait_forever>:
1c00bfbc:	f14027f3          	csrr	a5,mhartid
1c00bfc0:	8795                	srai	a5,a5,0x5
1c00bfc2:	03f7f793          	andi	a5,a5,63
1c00bfc6:	477d                	li	a4,31
1c00bfc8:	00e78363          	beq	a5,a4,1c00bfce <pos_wait_forever+0x12>
1c00bfcc:	a001                	j	1c00bfcc <pos_wait_forever+0x10>
1c00bfce:	1a10a7b7          	lui	a5,0x1a10a
1c00bfd2:	577d                	li	a4,-1
1c00bfd4:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00bfd8:	10500073          	wfi
1c00bfdc:	10500073          	wfi
1c00bfe0:	bfe5                	j	1c00bfd8 <pos_wait_forever+0x1c>

1c00bfe2 <memcpy>:
1c00bfe2:	00c5e7b3          	or	a5,a1,a2
1c00bfe6:	8fc9                	or	a5,a5,a0
1c00bfe8:	8b8d                	andi	a5,a5,3
1c00bfea:	872e                	mv	a4,a1
1c00bfec:	882a                	mv	a6,a0
1c00bfee:	cbc5                	beqz	a5,1c00c09e <memcpy+0xbc>
1c00bff0:	c279                	beqz	a2,1c00c0b6 <memcpy+0xd4>
1c00bff2:	00350793          	addi	a5,a0,3
1c00bff6:	8f8d                	sub	a5,a5,a1
1c00bff8:	0077b793          	sltiu	a5,a5,7
1c00bffc:	e7d1                	bnez	a5,1c00c088 <memcpy+0xa6>
1c00bffe:	fff60793          	addi	a5,a2,-1
1c00c002:	0047b793          	sltiu	a5,a5,4
1c00c006:	e3c9                	bnez	a5,1c00c088 <memcpy+0xa6>
1c00c008:	ffc67e13          	andi	t3,a2,-4
1c00c00c:	9e2e                	add	t3,t3,a1
1c00c00e:	00174883          	lbu	a7,1(a4)
1c00c012:	00074303          	lbu	t1,0(a4)
1c00c016:	00274683          	lbu	a3,2(a4)
1c00c01a:	00374783          	lbu	a5,3(a4)
1c00c01e:	08a2                	slli	a7,a7,0x8
1c00c020:	0068e8b3          	or	a7,a7,t1
1c00c024:	06c2                	slli	a3,a3,0x10
1c00c026:	0116e6b3          	or	a3,a3,a7
1c00c02a:	07e2                	slli	a5,a5,0x18
1c00c02c:	8fd5                	or	a5,a5,a3
1c00c02e:	0087d313          	srli	t1,a5,0x8
1c00c032:	0107d893          	srli	a7,a5,0x10
1c00c036:	83e1                	srli	a5,a5,0x18
1c00c038:	00d80023          	sb	a3,0(a6)
1c00c03c:	006800a3          	sb	t1,1(a6)
1c00c040:	01180123          	sb	a7,2(a6)
1c00c044:	00f801a3          	sb	a5,3(a6)
1c00c048:	0711                	addi	a4,a4,4
1c00c04a:	0811                	addi	a6,a6,4
1c00c04c:	fdc711e3          	bne	a4,t3,1c00c00e <memcpy+0x2c>
1c00c050:	ffc67793          	andi	a5,a2,-4
1c00c054:	00367693          	andi	a3,a2,3
1c00c058:	00f50733          	add	a4,a0,a5
1c00c05c:	95be                	add	a1,a1,a5
1c00c05e:	02f60f63          	beq	a2,a5,1c00c09c <memcpy+0xba>
1c00c062:	0005c603          	lbu	a2,0(a1)
1c00c066:	fff68793          	addi	a5,a3,-1
1c00c06a:	00c70023          	sb	a2,0(a4)
1c00c06e:	c79d                	beqz	a5,1c00c09c <memcpy+0xba>
1c00c070:	0015c603          	lbu	a2,1(a1)
1c00c074:	4789                	li	a5,2
1c00c076:	00c700a3          	sb	a2,1(a4)
1c00c07a:	02f68163          	beq	a3,a5,1c00c09c <memcpy+0xba>
1c00c07e:	0025c783          	lbu	a5,2(a1)
1c00c082:	00f70123          	sb	a5,2(a4)
1c00c086:	8082                	ret
1c00c088:	962e                	add	a2,a2,a1
1c00c08a:	87aa                	mv	a5,a0
1c00c08c:	0005c703          	lbu	a4,0(a1)
1c00c090:	0585                	addi	a1,a1,1
1c00c092:	0785                	addi	a5,a5,1
1c00c094:	fee78fa3          	sb	a4,-1(a5)
1c00c098:	fec59ae3          	bne	a1,a2,1c00c08c <memcpy+0xaa>
1c00c09c:	8082                	ret
1c00c09e:	de7d                	beqz	a2,1c00c09c <memcpy+0xba>
1c00c0a0:	87aa                	mv	a5,a0
1c00c0a2:	4194                	lw	a3,0(a1)
1c00c0a4:	0791                	addi	a5,a5,4
1c00c0a6:	40c78733          	sub	a4,a5,a2
1c00c0aa:	fed7ae23          	sw	a3,-4(a5)
1c00c0ae:	0591                	addi	a1,a1,4
1c00c0b0:	fea719e3          	bne	a4,a0,1c00c0a2 <memcpy+0xc0>
1c00c0b4:	8082                	ret
1c00c0b6:	8082                	ret

1c00c0b8 <memmove>:
1c00c0b8:	40b507b3          	sub	a5,a0,a1
1c00c0bc:	0ac7e063          	bltu	a5,a2,1c00c15c <memmove+0xa4>
1c00c0c0:	c661                	beqz	a2,1c00c188 <memmove+0xd0>
1c00c0c2:	00350793          	addi	a5,a0,3
1c00c0c6:	8f8d                	sub	a5,a5,a1
1c00c0c8:	0077b793          	sltiu	a5,a5,7
1c00c0cc:	e3dd                	bnez	a5,1c00c172 <memmove+0xba>
1c00c0ce:	fff60793          	addi	a5,a2,-1
1c00c0d2:	0047b793          	sltiu	a5,a5,4
1c00c0d6:	efd1                	bnez	a5,1c00c172 <memmove+0xba>
1c00c0d8:	ffc67e13          	andi	t3,a2,-4
1c00c0dc:	872e                	mv	a4,a1
1c00c0de:	882a                	mv	a6,a0
1c00c0e0:	9e2e                	add	t3,t3,a1
1c00c0e2:	00174883          	lbu	a7,1(a4)
1c00c0e6:	00074303          	lbu	t1,0(a4)
1c00c0ea:	00274683          	lbu	a3,2(a4)
1c00c0ee:	00374783          	lbu	a5,3(a4)
1c00c0f2:	08a2                	slli	a7,a7,0x8
1c00c0f4:	0068e8b3          	or	a7,a7,t1
1c00c0f8:	06c2                	slli	a3,a3,0x10
1c00c0fa:	0116e6b3          	or	a3,a3,a7
1c00c0fe:	07e2                	slli	a5,a5,0x18
1c00c100:	8fd5                	or	a5,a5,a3
1c00c102:	0087d313          	srli	t1,a5,0x8
1c00c106:	0107d893          	srli	a7,a5,0x10
1c00c10a:	83e1                	srli	a5,a5,0x18
1c00c10c:	00d80023          	sb	a3,0(a6)
1c00c110:	006800a3          	sb	t1,1(a6)
1c00c114:	01180123          	sb	a7,2(a6)
1c00c118:	00f801a3          	sb	a5,3(a6)
1c00c11c:	0711                	addi	a4,a4,4
1c00c11e:	0811                	addi	a6,a6,4
1c00c120:	fdc711e3          	bne	a4,t3,1c00c0e2 <memmove+0x2a>
1c00c124:	ffc67793          	andi	a5,a2,-4
1c00c128:	00367693          	andi	a3,a2,3
1c00c12c:	00f50733          	add	a4,a0,a5
1c00c130:	95be                	add	a1,a1,a5
1c00c132:	04f60a63          	beq	a2,a5,1c00c186 <memmove+0xce>
1c00c136:	0005c603          	lbu	a2,0(a1)
1c00c13a:	fff68793          	addi	a5,a3,-1
1c00c13e:	00c70023          	sb	a2,0(a4)
1c00c142:	c3b1                	beqz	a5,1c00c186 <memmove+0xce>
1c00c144:	0015c603          	lbu	a2,1(a1)
1c00c148:	4789                	li	a5,2
1c00c14a:	00c700a3          	sb	a2,1(a4)
1c00c14e:	02f68c63          	beq	a3,a5,1c00c186 <memmove+0xce>
1c00c152:	0025c783          	lbu	a5,2(a1)
1c00c156:	00f70123          	sb	a5,2(a4)
1c00c15a:	8082                	ret
1c00c15c:	167d                	addi	a2,a2,-1
1c00c15e:	00c587b3          	add	a5,a1,a2
1c00c162:	0007c703          	lbu	a4,0(a5)
1c00c166:	00c507b3          	add	a5,a0,a2
1c00c16a:	00e78023          	sb	a4,0(a5)
1c00c16e:	f67d                	bnez	a2,1c00c15c <memmove+0xa4>
1c00c170:	8082                	ret
1c00c172:	962a                	add	a2,a2,a0
1c00c174:	87aa                	mv	a5,a0
1c00c176:	0005c703          	lbu	a4,0(a1)
1c00c17a:	0785                	addi	a5,a5,1
1c00c17c:	0585                	addi	a1,a1,1
1c00c17e:	fee78fa3          	sb	a4,-1(a5)
1c00c182:	fec79ae3          	bne	a5,a2,1c00c176 <memmove+0xbe>
1c00c186:	8082                	ret
1c00c188:	8082                	ret

1c00c18a <strchr>:
1c00c18a:	00054703          	lbu	a4,0(a0)
1c00c18e:	0ff5f593          	andi	a1,a1,255
1c00c192:	87aa                	mv	a5,a0
1c00c194:	00b70863          	beq	a4,a1,1c00c1a4 <strchr+0x1a>
1c00c198:	cb01                	beqz	a4,1c00c1a8 <strchr+0x1e>
1c00c19a:	0017c703          	lbu	a4,1(a5)
1c00c19e:	0785                	addi	a5,a5,1
1c00c1a0:	feb71ce3          	bne	a4,a1,1c00c198 <strchr+0xe>
1c00c1a4:	853e                	mv	a0,a5
1c00c1a6:	8082                	ret
1c00c1a8:	4501                	li	a0,0
1c00c1aa:	dded                	beqz	a1,1c00c1a4 <strchr+0x1a>
1c00c1ac:	8082                	ret

1c00c1ae <puts>:
1c00c1ae:	00054783          	lbu	a5,0(a0)
1c00c1b2:	c78d                	beqz	a5,1c00c1dc <puts+0x2e>
1c00c1b4:	f14026f3          	csrr	a3,mhartid
1c00c1b8:	00369713          	slli	a4,a3,0x3
1c00c1bc:	1a10f637          	lui	a2,0x1a10f
1c00c1c0:	0ff77713          	andi	a4,a4,255
1c00c1c4:	9732                	add	a4,a4,a2
1c00c1c6:	6609                	lui	a2,0x2
1c00c1c8:	068a                	slli	a3,a3,0x2
1c00c1ca:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c1ce:	8ef1                	and	a3,a3,a2
1c00c1d0:	9736                	add	a4,a4,a3
1c00c1d2:	c31c                	sw	a5,0(a4)
1c00c1d4:	00154783          	lbu	a5,1(a0)
1c00c1d8:	0505                	addi	a0,a0,1
1c00c1da:	ffe5                	bnez	a5,1c00c1d2 <puts+0x24>
1c00c1dc:	f1402773          	csrr	a4,mhartid
1c00c1e0:	00371793          	slli	a5,a4,0x3
1c00c1e4:	1a10f6b7          	lui	a3,0x1a10f
1c00c1e8:	0ff7f793          	andi	a5,a5,255
1c00c1ec:	97b6                	add	a5,a5,a3
1c00c1ee:	6689                	lui	a3,0x2
1c00c1f0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c1f4:	070a                	slli	a4,a4,0x2
1c00c1f6:	8f75                	and	a4,a4,a3
1c00c1f8:	97ba                	add	a5,a5,a4
1c00c1fa:	4729                	li	a4,10
1c00c1fc:	c398                	sw	a4,0(a5)
1c00c1fe:	4501                	li	a0,0
1c00c200:	8082                	ret

1c00c202 <pos_libc_fputc_locked>:
1c00c202:	6689                	lui	a3,0x2
1c00c204:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c208:	f14027f3          	csrr	a5,mhartid
1c00c20c:	00379713          	slli	a4,a5,0x3
1c00c210:	078a                	slli	a5,a5,0x2
1c00c212:	8ff5                	and	a5,a5,a3
1c00c214:	0ff77713          	andi	a4,a4,255
1c00c218:	1a10f6b7          	lui	a3,0x1a10f
1c00c21c:	9736                	add	a4,a4,a3
1c00c21e:	97ba                	add	a5,a5,a4
1c00c220:	0ff57513          	andi	a0,a0,255
1c00c224:	c388                	sw	a0,0(a5)
1c00c226:	4501                	li	a0,0
1c00c228:	8082                	ret

1c00c22a <putchar>:
1c00c22a:	6689                	lui	a3,0x2
1c00c22c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c230:	f14027f3          	csrr	a5,mhartid
1c00c234:	00379713          	slli	a4,a5,0x3
1c00c238:	078a                	slli	a5,a5,0x2
1c00c23a:	8ff5                	and	a5,a5,a3
1c00c23c:	0ff77713          	andi	a4,a4,255
1c00c240:	1a10f6b7          	lui	a3,0x1a10f
1c00c244:	9736                	add	a4,a4,a3
1c00c246:	97ba                	add	a5,a5,a4
1c00c248:	0ff57513          	andi	a0,a0,255
1c00c24c:	c388                	sw	a0,0(a5)
1c00c24e:	4501                	li	a0,0
1c00c250:	8082                	ret

1c00c252 <pos_libc_prf_locked>:
1c00c252:	a0b1                	j	1c00c29e <pos_libc_prf>

1c00c254 <exit>:
1c00c254:	800007b7          	lui	a5,0x80000
1c00c258:	1141                	addi	sp,sp,-16
1c00c25a:	8d5d                	or	a0,a0,a5
1c00c25c:	c606                	sw	ra,12(sp)
1c00c25e:	1a1047b7          	lui	a5,0x1a104
1c00c262:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00c266:	3b99                	jal	1c00bfbc <pos_wait_forever>

1c00c268 <pos_io_start>:
1c00c268:	4501                	li	a0,0
1c00c26a:	8082                	ret

1c00c26c <pos_io_stop>:
1c00c26c:	4501                	li	a0,0
1c00c26e:	8082                	ret

1c00c270 <printf>:
1c00c270:	7139                	addi	sp,sp,-64
1c00c272:	02410313          	addi	t1,sp,36
1c00c276:	d432                	sw	a2,40(sp)
1c00c278:	862a                	mv	a2,a0
1c00c27a:	1c00c537          	lui	a0,0x1c00c
1c00c27e:	d22e                	sw	a1,36(sp)
1c00c280:	d636                	sw	a3,44(sp)
1c00c282:	4589                	li	a1,2
1c00c284:	869a                	mv	a3,t1
1c00c286:	20250513          	addi	a0,a0,514 # 1c00c202 <pos_libc_fputc_locked>
1c00c28a:	ce06                	sw	ra,28(sp)
1c00c28c:	d83a                	sw	a4,48(sp)
1c00c28e:	da3e                	sw	a5,52(sp)
1c00c290:	dc42                	sw	a6,56(sp)
1c00c292:	de46                	sw	a7,60(sp)
1c00c294:	c61a                	sw	t1,12(sp)
1c00c296:	3f75                	jal	1c00c252 <pos_libc_prf_locked>
1c00c298:	40f2                	lw	ra,28(sp)
1c00c29a:	6121                	addi	sp,sp,64
1c00c29c:	8082                	ret

1c00c29e <pos_libc_prf>:
1c00c29e:	7169                	addi	sp,sp,-304
1c00c2a0:	12112623          	sw	ra,300(sp)
1c00c2a4:	12812423          	sw	s0,296(sp)
1c00c2a8:	12912223          	sw	s1,292(sp)
1c00c2ac:	13212023          	sw	s2,288(sp)
1c00c2b0:	11312e23          	sw	s3,284(sp)
1c00c2b4:	11412c23          	sw	s4,280(sp)
1c00c2b8:	11512a23          	sw	s5,276(sp)
1c00c2bc:	11612823          	sw	s6,272(sp)
1c00c2c0:	11712623          	sw	s7,268(sp)
1c00c2c4:	11812423          	sw	s8,264(sp)
1c00c2c8:	11912223          	sw	s9,260(sp)
1c00c2cc:	11a12023          	sw	s10,256(sp)
1c00c2d0:	dfee                	sw	s11,252(sp)
1c00c2d2:	00064783          	lbu	a5,0(a2)
1c00c2d6:	c636                	sw	a3,12(sp)
1c00c2d8:	3c0781e3          	beqz	a5,1c00ce9a <pos_libc_prf+0xbfc>
1c00c2dc:	7741                	lui	a4,0xffff0
1c00c2de:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00c2e2:	cc3a                	sw	a4,24(sp)
1c00c2e4:	10000737          	lui	a4,0x10000
1c00c2e8:	177d                	addi	a4,a4,-1
1c00c2ea:	8caa                	mv	s9,a0
1c00c2ec:	84ae                	mv	s1,a1
1c00c2ee:	00160c13          	addi	s8,a2,1
1c00c2f2:	4401                	li	s0,0
1c00c2f4:	1c000d37          	lui	s10,0x1c000
1c00c2f8:	ca3a                	sw	a4,20(sp)
1c00c2fa:	853e                	mv	a0,a5
1c00c2fc:	02500793          	li	a5,37
1c00c300:	04f50863          	beq	a0,a5,1c00c350 <pos_libc_prf+0xb2>
1c00c304:	85a6                	mv	a1,s1
1c00c306:	9c82                	jalr	s9
1c00c308:	57fd                	li	a5,-1
1c00c30a:	4cf50b63          	beq	a0,a5,1c00c7e0 <pos_libc_prf+0x542>
1c00c30e:	0405                	addi	s0,s0,1
1c00c310:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00c314:	0c05                	addi	s8,s8,1
1c00c316:	f17d                	bnez	a0,1c00c2fc <pos_libc_prf+0x5e>
1c00c318:	12c12083          	lw	ra,300(sp)
1c00c31c:	8522                	mv	a0,s0
1c00c31e:	12812403          	lw	s0,296(sp)
1c00c322:	12412483          	lw	s1,292(sp)
1c00c326:	12012903          	lw	s2,288(sp)
1c00c32a:	11c12983          	lw	s3,284(sp)
1c00c32e:	11812a03          	lw	s4,280(sp)
1c00c332:	11412a83          	lw	s5,276(sp)
1c00c336:	11012b03          	lw	s6,272(sp)
1c00c33a:	10c12b83          	lw	s7,268(sp)
1c00c33e:	10812c03          	lw	s8,264(sp)
1c00c342:	10412c83          	lw	s9,260(sp)
1c00c346:	10012d03          	lw	s10,256(sp)
1c00c34a:	5dfe                	lw	s11,252(sp)
1c00c34c:	6155                	addi	sp,sp,304
1c00c34e:	8082                	ret
1c00c350:	8de2                	mv	s11,s8
1c00c352:	000dcc03          	lbu	s8,0(s11)
1c00c356:	14cd0513          	addi	a0,s10,332 # 1c00014c <__clz_tab+0x130>
1c00c35a:	c826                	sw	s1,16(sp)
1c00c35c:	85e2                	mv	a1,s8
1c00c35e:	c202                	sw	zero,4(sp)
1c00c360:	c402                	sw	zero,8(sp)
1c00c362:	c002                	sw	zero,0(sp)
1c00c364:	001d8493          	addi	s1,s11,1
1c00c368:	350d                	jal	1c00c18a <strchr>
1c00c36a:	02000913          	li	s2,32
1c00c36e:	4b81                	li	s7,0
1c00c370:	02b00993          	li	s3,43
1c00c374:	02d00b13          	li	s6,45
1c00c378:	03000a93          	li	s5,48
1c00c37c:	02000a13          	li	s4,32
1c00c380:	8626                	mv	a2,s1
1c00c382:	c51d                	beqz	a0,1c00c3b0 <pos_libc_prf+0x112>
1c00c384:	413c0e63          	beq	s8,s3,1c00c7a0 <pos_libc_prf+0x502>
1c00c388:	3f89ec63          	bltu	s3,s8,1c00c780 <pos_libc_prf+0x4e2>
1c00c38c:	414c0663          	beq	s8,s4,1c00c798 <pos_libc_prf+0x4fa>
1c00c390:	02300793          	li	a5,35
1c00c394:	3efc1363          	bne	s8,a5,1c00c77a <pos_libc_prf+0x4dc>
1c00c398:	4b85                	li	s7,1
1c00c39a:	8da6                	mv	s11,s1
1c00c39c:	000dcc03          	lbu	s8,0(s11)
1c00c3a0:	14cd0513          	addi	a0,s10,332
1c00c3a4:	001d8493          	addi	s1,s11,1
1c00c3a8:	85e2                	mv	a1,s8
1c00c3aa:	33c5                	jal	1c00c18a <strchr>
1c00c3ac:	8626                	mv	a2,s1
1c00c3ae:	f979                	bnez	a0,1c00c384 <pos_libc_prf+0xe6>
1c00c3b0:	87e2                	mv	a5,s8
1c00c3b2:	ce5e                	sw	s7,28(sp)
1c00c3b4:	02a00693          	li	a3,42
1c00c3b8:	8c6e                	mv	s8,s11
1c00c3ba:	8ba6                	mv	s7,s1
1c00c3bc:	8dbe                	mv	s11,a5
1c00c3be:	44c2                	lw	s1,16(sp)
1c00c3c0:	42d78263          	beq	a5,a3,1c00c7e4 <pos_libc_prf+0x546>
1c00c3c4:	fd078693          	addi	a3,a5,-48
1c00c3c8:	4525                	li	a0,9
1c00c3ca:	4a01                	li	s4,0
1c00c3cc:	3cd57f63          	bgeu	a0,a3,1c00c7aa <pos_libc_prf+0x50c>
1c00c3d0:	02e00793          	li	a5,46
1c00c3d4:	5afd                	li	s5,-1
1c00c3d6:	74fd8363          	beq	s11,a5,1c00cb1c <pos_libc_prf+0x87e>
1c00c3da:	1c0007b7          	lui	a5,0x1c000
1c00c3de:	85ee                	mv	a1,s11
1c00c3e0:	15478513          	addi	a0,a5,340 # 1c000154 <__clz_tab+0x138>
1c00c3e4:	c832                	sw	a2,16(sp)
1c00c3e6:	3355                	jal	1c00c18a <strchr>
1c00c3e8:	4642                	lw	a2,16(sp)
1c00c3ea:	8c32                	mv	s8,a2
1c00c3ec:	c509                	beqz	a0,1c00c3f6 <pos_libc_prf+0x158>
1c00c3ee:	00064d83          	lbu	s11,0(a2)
1c00c3f2:	00160c13          	addi	s8,a2,1
1c00c3f6:	06900793          	li	a5,105
1c00c3fa:	0afd8ee3          	beq	s11,a5,1c00ccb6 <pos_libc_prf+0xa18>
1c00c3fe:	4db7c763          	blt	a5,s11,1c00c8cc <pos_libc_prf+0x62e>
1c00c402:	05800793          	li	a5,88
1c00c406:	4efd8163          	beq	s11,a5,1c00c8e8 <pos_libc_prf+0x64a>
1c00c40a:	41b7c163          	blt	a5,s11,1c00c80c <pos_libc_prf+0x56e>
1c00c40e:	02500793          	li	a5,37
1c00c412:	26fd8ae3          	beq	s11,a5,1c00ce86 <pos_libc_prf+0xbe8>
1c00c416:	3fb7d863          	bge	a5,s11,1c00c806 <pos_libc_prf+0x568>
1c00c41a:	fbbd8793          	addi	a5,s11,-69
1c00c41e:	4689                	li	a3,2
1c00c420:	eef6e8e3          	bltu	a3,a5,1c00c310 <pos_libc_prf+0x72>
1c00c424:	47b2                	lw	a5,12(sp)
1c00c426:	7ff00893          	li	a7,2047
1c00c42a:	00778b13          	addi	s6,a5,7
1c00c42e:	ff8b7b13          	andi	s6,s6,-8
1c00c432:	004b2783          	lw	a5,4(s6)
1c00c436:	000b2603          	lw	a2,0(s6)
1c00c43a:	0b21                	addi	s6,s6,8
1c00c43c:	00b79693          	slli	a3,a5,0xb
1c00c440:	01565513          	srli	a0,a2,0x15
1c00c444:	8ec9                	or	a3,a3,a0
1c00c446:	0147d813          	srli	a6,a5,0x14
1c00c44a:	0686                	slli	a3,a3,0x1
1c00c44c:	7ff87813          	andi	a6,a6,2047
1c00c450:	0016d513          	srli	a0,a3,0x1
1c00c454:	00b61313          	slli	t1,a2,0xb
1c00c458:	86be                	mv	a3,a5
1c00c45a:	41180263          	beq	a6,a7,1c00c85e <pos_libc_prf+0x5c0>
1c00c45e:	04600793          	li	a5,70
1c00c462:	00fd9463          	bne	s11,a5,1c00c46a <pos_libc_prf+0x1cc>
1c00c466:	06600d93          	li	s11,102
1c00c46a:	006867b3          	or	a5,a6,t1
1c00c46e:	00a7e8b3          	or	a7,a5,a0
1c00c472:	862a                	mv	a2,a0
1c00c474:	340885e3          	beqz	a7,1c00cfbe <pos_libc_prf+0xd20>
1c00c478:	80000637          	lui	a2,0x80000
1c00c47c:	c0280813          	addi	a6,a6,-1022
1c00c480:	879a                	mv	a5,t1
1c00c482:	8e49                	or	a2,a2,a0
1c00c484:	4606c7e3          	bltz	a3,1c00d0f2 <pos_libc_prf+0xe54>
1c00c488:	4722                	lw	a4,8(sp)
1c00c48a:	480708e3          	beqz	a4,1c00d11a <pos_libc_prf+0xe7c>
1c00c48e:	02b00693          	li	a3,43
1c00c492:	02d10223          	sb	a3,36(sp)
1c00c496:	02510f13          	addi	t5,sp,37
1c00c49a:	56f9                	li	a3,-2
1c00c49c:	4301                	li	t1,0
1c00c49e:	06d85663          	bge	a6,a3,1c00c50a <pos_libc_prf+0x26c>
1c00c4a2:	333338b7          	lui	a7,0x33333
1c00c4a6:	80000e37          	lui	t3,0x80000
1c00c4aa:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00c4ae:	fffe4e13          	not	t3,t3
1c00c4b2:	5ef9                	li	t4,-2
1c00c4b4:	01f61593          	slli	a1,a2,0x1f
1c00c4b8:	0017d693          	srli	a3,a5,0x1
1c00c4bc:	0017f713          	andi	a4,a5,1
1c00c4c0:	8ecd                	or	a3,a3,a1
1c00c4c2:	00d707b3          	add	a5,a4,a3
1c00c4c6:	00e7b733          	sltu	a4,a5,a4
1c00c4ca:	8205                	srli	a2,a2,0x1
1c00c4cc:	963a                	add	a2,a2,a4
1c00c4ce:	8742                	mv	a4,a6
1c00c4d0:	0805                	addi	a6,a6,1
1c00c4d2:	fec8e1e3          	bltu	a7,a2,1c00c4b4 <pos_libc_prf+0x216>
1c00c4d6:	00279593          	slli	a1,a5,0x2
1c00c4da:	01e7d513          	srli	a0,a5,0x1e
1c00c4de:	00261693          	slli	a3,a2,0x2
1c00c4e2:	97ae                	add	a5,a5,a1
1c00c4e4:	8ec9                	or	a3,a3,a0
1c00c4e6:	9636                	add	a2,a2,a3
1c00c4e8:	00b7b5b3          	sltu	a1,a5,a1
1c00c4ec:	962e                	add	a2,a2,a1
1c00c4ee:	01f7d693          	srli	a3,a5,0x1f
1c00c4f2:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00c4f6:	137d                	addi	t1,t1,-1
1c00c4f8:	01c61763          	bne	a2,t3,1c00c506 <pos_libc_prf+0x268>
1c00c4fc:	00170813          	addi	a6,a4,1
1c00c500:	0786                	slli	a5,a5,0x1
1c00c502:	ffe6e613          	ori	a2,a3,-2
1c00c506:	fbd847e3          	blt	a6,t4,1c00c4b4 <pos_libc_prf+0x216>
1c00c50a:	07005363          	blez	a6,1c00c570 <pos_libc_prf+0x2d2>
1c00c50e:	800008b7          	lui	a7,0x80000
1c00c512:	4e15                	li	t3,5
1c00c514:	fff8c893          	not	a7,a7
1c00c518:	00278693          	addi	a3,a5,2
1c00c51c:	00f6b7b3          	sltu	a5,a3,a5
1c00c520:	963e                	add	a2,a2,a5
1c00c522:	03c657b3          	divu	a5,a2,t3
1c00c526:	0036d713          	srli	a4,a3,0x3
1c00c52a:	187d                	addi	a6,a6,-1
1c00c52c:	0305                	addi	t1,t1,1
1c00c52e:	00279593          	slli	a1,a5,0x2
1c00c532:	95be                	add	a1,a1,a5
1c00c534:	8e0d                	sub	a2,a2,a1
1c00c536:	0676                	slli	a2,a2,0x1d
1c00c538:	8f51                	or	a4,a4,a2
1c00c53a:	03c75633          	divu	a2,a4,t3
1c00c53e:	00361713          	slli	a4,a2,0x3
1c00c542:	00561593          	slli	a1,a2,0x5
1c00c546:	95ba                	add	a1,a1,a4
1c00c548:	8e8d                	sub	a3,a3,a1
1c00c54a:	03c6d6b3          	divu	a3,a3,t3
1c00c54e:	8275                	srli	a2,a2,0x1d
1c00c550:	963e                	add	a2,a2,a5
1c00c552:	00e687b3          	add	a5,a3,a4
1c00c556:	00d7b6b3          	sltu	a3,a5,a3
1c00c55a:	9636                	add	a2,a2,a3
1c00c55c:	01f7d713          	srli	a4,a5,0x1f
1c00c560:	0606                	slli	a2,a2,0x1
1c00c562:	8e59                	or	a2,a2,a4
1c00c564:	0786                	slli	a5,a5,0x1
1c00c566:	187d                	addi	a6,a6,-1
1c00c568:	fec8fae3          	bgeu	a7,a2,1c00c55c <pos_libc_prf+0x2be>
1c00c56c:	fb0046e3          	bgtz	a6,1c00c518 <pos_libc_prf+0x27a>
1c00c570:	4e11                	li	t3,4
1c00c572:	01f61693          	slli	a3,a2,0x1f
1c00c576:	0017d713          	srli	a4,a5,0x1
1c00c57a:	8f55                	or	a4,a4,a3
1c00c57c:	8b85                	andi	a5,a5,1
1c00c57e:	00e78533          	add	a0,a5,a4
1c00c582:	8205                	srli	a2,a2,0x1
1c00c584:	00f537b3          	sltu	a5,a0,a5
1c00c588:	00c788b3          	add	a7,a5,a2
1c00c58c:	0805                	addi	a6,a6,1
1c00c58e:	87aa                	mv	a5,a0
1c00c590:	8646                	mv	a2,a7
1c00c592:	ffc810e3          	bne	a6,t3,1c00c572 <pos_libc_prf+0x2d4>
1c00c596:	06700793          	li	a5,103
1c00c59a:	2a0acee3          	bltz	s5,1c00d056 <pos_libc_prf+0xdb8>
1c00c59e:	28fd83e3          	beq	s11,a5,1c00d024 <pos_libc_prf+0xd86>
1c00c5a2:	04700793          	li	a5,71
1c00c5a6:	26fd8fe3          	beq	s11,a5,1c00d024 <pos_libc_prf+0xd86>
1c00c5aa:	06600793          	li	a5,102
1c00c5ae:	2cfd85e3          	beq	s11,a5,1c00d078 <pos_libc_prf+0xdda>
1c00c5b2:	001a8813          	addi	a6,s5,1
1c00c5b6:	47c1                	li	a5,16
1c00c5b8:	0107d363          	bge	a5,a6,1c00c5be <pos_libc_prf+0x320>
1c00c5bc:	4841                	li	a6,16
1c00c5be:	187d                	addi	a6,a6,-1
1c00c5c0:	4601                	li	a2,0
1c00c5c2:	4781                	li	a5,0
1c00c5c4:	080006b7          	lui	a3,0x8000
1c00c5c8:	4e15                	li	t3,5
1c00c5ca:	5efd                	li	t4,-1
1c00c5cc:	00278713          	addi	a4,a5,2
1c00c5d0:	00f737b3          	sltu	a5,a4,a5
1c00c5d4:	97b6                	add	a5,a5,a3
1c00c5d6:	03c7dfb3          	divu	t6,a5,t3
1c00c5da:	00375593          	srli	a1,a4,0x3
1c00c5de:	187d                	addi	a6,a6,-1
1c00c5e0:	002f9693          	slli	a3,t6,0x2
1c00c5e4:	96fe                	add	a3,a3,t6
1c00c5e6:	8f95                	sub	a5,a5,a3
1c00c5e8:	07f6                	slli	a5,a5,0x1d
1c00c5ea:	8ddd                	or	a1,a1,a5
1c00c5ec:	03c5d5b3          	divu	a1,a1,t3
1c00c5f0:	00359693          	slli	a3,a1,0x3
1c00c5f4:	00559793          	slli	a5,a1,0x5
1c00c5f8:	97b6                	add	a5,a5,a3
1c00c5fa:	8f1d                	sub	a4,a4,a5
1c00c5fc:	03c757b3          	divu	a5,a4,t3
1c00c600:	81f5                	srli	a1,a1,0x1d
1c00c602:	95fe                	add	a1,a1,t6
1c00c604:	96be                	add	a3,a3,a5
1c00c606:	00f6b733          	sltu	a4,a3,a5
1c00c60a:	972e                	add	a4,a4,a1
1c00c60c:	01f71593          	slli	a1,a4,0x1f
1c00c610:	0016d793          	srli	a5,a3,0x1
1c00c614:	8fcd                	or	a5,a5,a1
1c00c616:	8a85                	andi	a3,a3,1
1c00c618:	97b6                	add	a5,a5,a3
1c00c61a:	8305                	srli	a4,a4,0x1
1c00c61c:	00d7b6b3          	sltu	a3,a5,a3
1c00c620:	96ba                	add	a3,a3,a4
1c00c622:	fbd815e3          	bne	a6,t4,1c00c5cc <pos_libc_prf+0x32e>
1c00c626:	97aa                	add	a5,a5,a0
1c00c628:	96c6                	add	a3,a3,a7
1c00c62a:	00a7b533          	sltu	a0,a5,a0
1c00c62e:	00d508b3          	add	a7,a0,a3
1c00c632:	f00006b7          	lui	a3,0xf0000
1c00c636:	0116f6b3          	and	a3,a3,a7
1c00c63a:	c2b5                	beqz	a3,1c00c69e <pos_libc_prf+0x400>
1c00c63c:	00278813          	addi	a6,a5,2
1c00c640:	00f836b3          	sltu	a3,a6,a5
1c00c644:	98b6                	add	a7,a7,a3
1c00c646:	4e95                	li	t4,5
1c00c648:	03d8de33          	divu	t3,a7,t4
1c00c64c:	00385693          	srli	a3,a6,0x3
1c00c650:	0305                	addi	t1,t1,1
1c00c652:	002e1513          	slli	a0,t3,0x2
1c00c656:	9572                	add	a0,a0,t3
1c00c658:	40a888b3          	sub	a7,a7,a0
1c00c65c:	01d89513          	slli	a0,a7,0x1d
1c00c660:	8ec9                	or	a3,a3,a0
1c00c662:	03d6d6b3          	divu	a3,a3,t4
1c00c666:	00369513          	slli	a0,a3,0x3
1c00c66a:	00569793          	slli	a5,a3,0x5
1c00c66e:	97aa                	add	a5,a5,a0
1c00c670:	40f807b3          	sub	a5,a6,a5
1c00c674:	03d7d7b3          	divu	a5,a5,t4
1c00c678:	82f5                	srli	a3,a3,0x1d
1c00c67a:	96f2                	add	a3,a3,t3
1c00c67c:	953e                	add	a0,a0,a5
1c00c67e:	00f537b3          	sltu	a5,a0,a5
1c00c682:	96be                	add	a3,a3,a5
1c00c684:	01f69813          	slli	a6,a3,0x1f
1c00c688:	00155793          	srli	a5,a0,0x1
1c00c68c:	00f867b3          	or	a5,a6,a5
1c00c690:	8905                	andi	a0,a0,1
1c00c692:	97aa                	add	a5,a5,a0
1c00c694:	8285                	srli	a3,a3,0x1
1c00c696:	00a7b533          	sltu	a0,a5,a0
1c00c69a:	00d508b3          	add	a7,a0,a3
1c00c69e:	001f0993          	addi	s3,t5,1
1c00c6a2:	06600693          	li	a3,102
1c00c6a6:	884e                	mv	a6,s3
1c00c6a8:	4edd8163          	beq	s11,a3,1c00cb8a <pos_libc_prf+0x8ec>
1c00c6ac:	00279693          	slli	a3,a5,0x2
1c00c6b0:	01e7d513          	srli	a0,a5,0x1e
1c00c6b4:	00289e13          	slli	t3,a7,0x2
1c00c6b8:	97b6                	add	a5,a5,a3
1c00c6ba:	01c56e33          	or	t3,a0,t3
1c00c6be:	00d7b833          	sltu	a6,a5,a3
1c00c6c2:	011e06b3          	add	a3,t3,a7
1c00c6c6:	9836                	add	a6,a6,a3
1c00c6c8:	0806                	slli	a6,a6,0x1
1c00c6ca:	01f7d693          	srli	a3,a5,0x1f
1c00c6ce:	0106e833          	or	a6,a3,a6
1c00c6d2:	01c85693          	srli	a3,a6,0x1c
1c00c6d6:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00c6da:	4772                	lw	a4,28(sp)
1c00c6dc:	00af0023          	sb	a0,0(t5)
1c00c6e0:	00179513          	slli	a0,a5,0x1
1c00c6e4:	47d2                	lw	a5,20(sp)
1c00c6e6:	00d036b3          	snez	a3,a3
1c00c6ea:	01576bb3          	or	s7,a4,s5
1c00c6ee:	00f87833          	and	a6,a6,a5
1c00c6f2:	40d30333          	sub	t1,t1,a3
1c00c6f6:	060b8463          	beqz	s7,1c00c75e <pos_libc_prf+0x4c0>
1c00c6fa:	02e00793          	li	a5,46
1c00c6fe:	00ff00a3          	sb	a5,1(t5)
1c00c702:	002f0993          	addi	s3,t5,2
1c00c706:	040a8c63          	beqz	s5,1c00c75e <pos_libc_prf+0x4c0>
1c00c70a:	002a8793          	addi	a5,s5,2
1c00c70e:	9f3e                	add	t5,t5,a5
1c00c710:	88ce                	mv	a7,s3
1c00c712:	4ebd                	li	t4,15
1c00c714:	03000f93          	li	t6,48
1c00c718:	00251793          	slli	a5,a0,0x2
1c00c71c:	01e55693          	srli	a3,a0,0x1e
1c00c720:	00281713          	slli	a4,a6,0x2
1c00c724:	00a785b3          	add	a1,a5,a0
1c00c728:	8f55                	or	a4,a4,a3
1c00c72a:	9742                	add	a4,a4,a6
1c00c72c:	00f5b7b3          	sltu	a5,a1,a5
1c00c730:	97ba                	add	a5,a5,a4
1c00c732:	0786                	slli	a5,a5,0x1
1c00c734:	01f5d713          	srli	a4,a1,0x1f
1c00c738:	8fd9                	or	a5,a5,a4
1c00c73a:	01c7d713          	srli	a4,a5,0x1c
1c00c73e:	03070713          	addi	a4,a4,48
1c00c742:	0885                	addi	a7,a7,1
1c00c744:	53d05763          	blez	t4,1c00cc72 <pos_libc_prf+0x9d4>
1c00c748:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00c74c:	4752                	lw	a4,20(sp)
1c00c74e:	1efd                	addi	t4,t4,-1
1c00c750:	00159513          	slli	a0,a1,0x1
1c00c754:	00e7f833          	and	a6,a5,a4
1c00c758:	fd1f10e3          	bne	t5,a7,1c00c718 <pos_libc_prf+0x47a>
1c00c75c:	99d6                	add	s3,s3,s5
1c00c75e:	4e061c63          	bnez	a2,1c00cc56 <pos_libc_prf+0x9b8>
1c00c762:	fdfdf793          	andi	a5,s11,-33
1c00c766:	04500693          	li	a3,69
1c00c76a:	00d781e3          	beq	a5,a3,1c00cf6c <pos_libc_prf+0xcce>
1c00c76e:	105c                	addi	a5,sp,36
1c00c770:	00098023          	sb	zero,0(s3)
1c00c774:	40f989b3          	sub	s3,s3,a5
1c00c778:	aa05                	j	1c00c8a8 <pos_libc_prf+0x60a>
1c00c77a:	b80c0fe3          	beqz	s8,1c00c318 <pos_libc_prf+0x7a>
1c00c77e:	b931                	j	1c00c39a <pos_libc_prf+0xfc>
1c00c780:	016c0863          	beq	s8,s6,1c00c790 <pos_libc_prf+0x4f2>
1c00c784:	c15c1be3          	bne	s8,s5,1c00c39a <pos_libc_prf+0xfc>
1c00c788:	03000913          	li	s2,48
1c00c78c:	8da6                	mv	s11,s1
1c00c78e:	b139                	j	1c00c39c <pos_libc_prf+0xfe>
1c00c790:	4785                	li	a5,1
1c00c792:	c03e                	sw	a5,0(sp)
1c00c794:	8da6                	mv	s11,s1
1c00c796:	b119                	j	1c00c39c <pos_libc_prf+0xfe>
1c00c798:	4785                	li	a5,1
1c00c79a:	c23e                	sw	a5,4(sp)
1c00c79c:	8da6                	mv	s11,s1
1c00c79e:	befd                	j	1c00c39c <pos_libc_prf+0xfe>
1c00c7a0:	4785                	li	a5,1
1c00c7a2:	c43e                	sw	a5,8(sp)
1c00c7a4:	8da6                	mv	s11,s1
1c00c7a6:	bedd                	j	1c00c39c <pos_libc_prf+0xfe>
1c00c7a8:	0b85                	addi	s7,s7,1
1c00c7aa:	002a1793          	slli	a5,s4,0x2
1c00c7ae:	97d2                	add	a5,a5,s4
1c00c7b0:	0786                	slli	a5,a5,0x1
1c00c7b2:	97ee                	add	a5,a5,s11
1c00c7b4:	000bcd83          	lbu	s11,0(s7) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00c7b8:	fd078a13          	addi	s4,a5,-48
1c00c7bc:	8662                	mv	a2,s8
1c00c7be:	fd0d8793          	addi	a5,s11,-48
1c00c7c2:	8c5e                	mv	s8,s7
1c00c7c4:	fef572e3          	bgeu	a0,a5,1c00c7a8 <pos_libc_prf+0x50a>
1c00c7c8:	0609                	addi	a2,a2,2
1c00c7ca:	0c800793          	li	a5,200
1c00c7ce:	c147f1e3          	bgeu	a5,s4,1c00c3d0 <pos_libc_prf+0x132>
1c00c7d2:	0c800a13          	li	s4,200
1c00c7d6:	beed                	j	1c00c3d0 <pos_libc_prf+0x132>
1c00c7d8:	0c800793          	li	a5,200
1c00c7dc:	b3b7dae3          	bge	a5,s11,1c00c310 <pos_libc_prf+0x72>
1c00c7e0:	547d                	li	s0,-1
1c00c7e2:	be1d                	j	1c00c318 <pos_libc_prf+0x7a>
1c00c7e4:	47b2                	lw	a5,12(sp)
1c00c7e6:	0007aa03          	lw	s4,0(a5)
1c00c7ea:	00478693          	addi	a3,a5,4
1c00c7ee:	000a5663          	bgez	s4,1c00c7fa <pos_libc_prf+0x55c>
1c00c7f2:	4785                	li	a5,1
1c00c7f4:	41400a33          	neg	s4,s4
1c00c7f8:	c03e                	sw	a5,0(sp)
1c00c7fa:	000bcd83          	lbu	s11,0(s7)
1c00c7fe:	c636                	sw	a3,12(sp)
1c00c800:	002c0613          	addi	a2,s8,2
1c00c804:	b7d9                	j	1c00c7ca <pos_libc_prf+0x52c>
1c00c806:	b00d89e3          	beqz	s11,1c00c318 <pos_libc_prf+0x7a>
1c00c80a:	b619                	j	1c00c310 <pos_libc_prf+0x72>
1c00c80c:	06400793          	li	a5,100
1c00c810:	4afd8363          	beq	s11,a5,1c00ccb6 <pos_libc_prf+0xa18>
1c00c814:	19b7d963          	bge	a5,s11,1c00c9a6 <pos_libc_prf+0x708>
1c00c818:	f9bd8793          	addi	a5,s11,-101
1c00c81c:	4689                	li	a3,2
1c00c81e:	aef6e9e3          	bltu	a3,a5,1c00c310 <pos_libc_prf+0x72>
1c00c822:	47b2                	lw	a5,12(sp)
1c00c824:	7ff00893          	li	a7,2047
1c00c828:	00778b13          	addi	s6,a5,7
1c00c82c:	ff8b7b13          	andi	s6,s6,-8
1c00c830:	004b2783          	lw	a5,4(s6)
1c00c834:	000b2603          	lw	a2,0(s6)
1c00c838:	0b21                	addi	s6,s6,8
1c00c83a:	00b79693          	slli	a3,a5,0xb
1c00c83e:	01565813          	srli	a6,a2,0x15
1c00c842:	0147d513          	srli	a0,a5,0x14
1c00c846:	00d866b3          	or	a3,a6,a3
1c00c84a:	0686                	slli	a3,a3,0x1
1c00c84c:	7ff57813          	andi	a6,a0,2047
1c00c850:	00b61313          	slli	t1,a2,0xb
1c00c854:	0016d513          	srli	a0,a3,0x1
1c00c858:	86be                	mv	a3,a5
1c00c85a:	c11818e3          	bne	a6,a7,1c00c46a <pos_libc_prf+0x1cc>
1c00c85e:	105c                	addi	a5,sp,36
1c00c860:	0006d863          	bgez	a3,1c00c870 <pos_libc_prf+0x5d2>
1c00c864:	02d00793          	li	a5,45
1c00c868:	02f10223          	sb	a5,36(sp)
1c00c86c:	02510793          	addi	a5,sp,37
1c00c870:	00a36633          	or	a2,t1,a0
1c00c874:	fbfd8593          	addi	a1,s11,-65
1c00c878:	00378993          	addi	s3,a5,3
1c00c87c:	46e5                	li	a3,25
1c00c87e:	0c0612e3          	bnez	a2,1c00d142 <pos_libc_prf+0xea4>
1c00c882:	10b6e5e3          	bltu	a3,a1,1c00d18c <pos_libc_prf+0xeee>
1c00c886:	04900693          	li	a3,73
1c00c88a:	00d78023          	sb	a3,0(a5)
1c00c88e:	04e00693          	li	a3,78
1c00c892:	00d780a3          	sb	a3,1(a5)
1c00c896:	04600693          	li	a3,70
1c00c89a:	00d78123          	sb	a3,2(a5)
1c00c89e:	000781a3          	sb	zero,3(a5)
1c00c8a2:	105c                	addi	a5,sp,36
1c00c8a4:	40f989b3          	sub	s3,s3,a5
1c00c8a8:	47a2                	lw	a5,8(sp)
1c00c8aa:	4712                	lw	a4,4(sp)
1c00c8ac:	8fd9                	or	a5,a5,a4
1c00c8ae:	ce3e                	sw	a5,28(sp)
1c00c8b0:	5e079b63          	bnez	a5,1c00cea6 <pos_libc_prf+0xc08>
1c00c8b4:	02414683          	lbu	a3,36(sp)
1c00c8b8:	02d00793          	li	a5,45
1c00c8bc:	5ef68563          	beq	a3,a5,1c00cea6 <pos_libc_prf+0xc08>
1c00c8c0:	0c800793          	li	a5,200
1c00c8c4:	0d37d863          	bge	a5,s3,1c00c994 <pos_libc_prf+0x6f6>
1c00c8c8:	547d                	li	s0,-1
1c00c8ca:	b4b9                	j	1c00c318 <pos_libc_prf+0x7a>
1c00c8cc:	07000793          	li	a5,112
1c00c8d0:	46fd8f63          	beq	s11,a5,1c00cd4e <pos_libc_prf+0xab0>
1c00c8d4:	1bb7d663          	bge	a5,s11,1c00ca80 <pos_libc_prf+0x7e2>
1c00c8d8:	07500793          	li	a5,117
1c00c8dc:	52fd8763          	beq	s11,a5,1c00ce0a <pos_libc_prf+0xb6c>
1c00c8e0:	07800793          	li	a5,120
1c00c8e4:	16fd9163          	bne	s11,a5,1c00ca46 <pos_libc_prf+0x7a8>
1c00c8e8:	47b2                	lw	a5,12(sp)
1c00c8ea:	1054                	addi	a3,sp,36
1c00c8ec:	4390                	lw	a2,0(a5)
1c00c8ee:	00478b13          	addi	s6,a5,4
1c00c8f2:	47f2                	lw	a5,28(sp)
1c00c8f4:	28079163          	bnez	a5,1c00cb76 <pos_libc_prf+0x8d8>
1c00c8f8:	87b6                	mv	a5,a3
1c00c8fa:	4ea5                	li	t4,9
1c00c8fc:	4e3d                	li	t3,15
1c00c8fe:	a039                	j	1c00c90c <pos_libc_prf+0x66e>
1c00c900:	ff098fa3          	sb	a6,-1(s3)
1c00c904:	02ce7663          	bgeu	t3,a2,1c00c930 <pos_libc_prf+0x692>
1c00c908:	862a                	mv	a2,a0
1c00c90a:	87ce                	mv	a5,s3
1c00c90c:	00f67593          	andi	a1,a2,15
1c00c910:	00178993          	addi	s3,a5,1
1c00c914:	05758813          	addi	a6,a1,87
1c00c918:	03058713          	addi	a4,a1,48
1c00c91c:	00465513          	srli	a0,a2,0x4
1c00c920:	febee0e3          	bltu	t4,a1,1c00c900 <pos_libc_prf+0x662>
1c00c924:	00e78023          	sb	a4,0(a5)
1c00c928:	00178993          	addi	s3,a5,1
1c00c92c:	fcce6ee3          	bltu	t3,a2,1c00c908 <pos_libc_prf+0x66a>
1c00c930:	40d98633          	sub	a2,s3,a3
1c00c934:	01565c63          	bge	a2,s5,1c00c94c <pos_libc_prf+0x6ae>
1c00c938:	03000513          	li	a0,48
1c00c93c:	87ce                	mv	a5,s3
1c00c93e:	0985                	addi	s3,s3,1
1c00c940:	40d98733          	sub	a4,s3,a3
1c00c944:	fea98fa3          	sb	a0,-1(s3)
1c00c948:	ff574ae3          	blt	a4,s5,1c00c93c <pos_libc_prf+0x69e>
1c00c94c:	00098023          	sb	zero,0(s3)
1c00c950:	00f6fe63          	bgeu	a3,a5,1c00c96c <pos_libc_prf+0x6ce>
1c00c954:	0006c603          	lbu	a2,0(a3)
1c00c958:	0007c703          	lbu	a4,0(a5)
1c00c95c:	0685                	addi	a3,a3,1
1c00c95e:	00c78023          	sb	a2,0(a5)
1c00c962:	fee68fa3          	sb	a4,-1(a3)
1c00c966:	17fd                	addi	a5,a5,-1
1c00c968:	fef6e6e3          	bltu	a3,a5,1c00c954 <pos_libc_prf+0x6b6>
1c00c96c:	05800793          	li	a5,88
1c00c970:	66fd8463          	beq	s11,a5,1c00cfd8 <pos_libc_prf+0xd3a>
1c00c974:	105c                	addi	a5,sp,36
1c00c976:	40f989b3          	sub	s3,s3,a5
1c00c97a:	47f2                	lw	a5,28(sp)
1c00c97c:	c399                	beqz	a5,1c00c982 <pos_libc_prf+0x6e4>
1c00c97e:	4789                	li	a5,2
1c00c980:	ce3e                	sw	a5,28(sp)
1c00c982:	57fd                	li	a5,-1
1c00c984:	f2fa8ee3          	beq	s5,a5,1c00c8c0 <pos_libc_prf+0x622>
1c00c988:	0c800793          	li	a5,200
1c00c98c:	e537cae3          	blt	a5,s3,1c00c7e0 <pos_libc_prf+0x542>
1c00c990:	02000913          	li	s2,32
1c00c994:	00198613          	addi	a2,s3,1
1c00c998:	0349c963          	blt	s3,s4,1c00c9ca <pos_libc_prf+0x72c>
1c00c99c:	c65a                	sw	s6,12(sp)
1c00c99e:	8a4e                	mv	s4,s3
1c00c9a0:	1a0a1663          	bnez	s4,1c00cb4c <pos_libc_prf+0x8ae>
1c00c9a4:	b2b5                	j	1c00c310 <pos_libc_prf+0x72>
1c00c9a6:	06300793          	li	a5,99
1c00c9aa:	96fd93e3          	bne	s11,a5,1c00c310 <pos_libc_prf+0x72>
1c00c9ae:	4732                	lw	a4,12(sp)
1c00c9b0:	020102a3          	sb	zero,37(sp)
1c00c9b4:	4785                	li	a5,1
1c00c9b6:	4314                	lw	a3,0(a4)
1c00c9b8:	00470b13          	addi	s6,a4,4
1c00c9bc:	02d10223          	sb	a3,36(sp)
1c00c9c0:	1947d463          	bge	a5,s4,1c00cb48 <pos_libc_prf+0x8aa>
1c00c9c4:	4609                	li	a2,2
1c00c9c6:	4985                	li	s3,1
1c00c9c8:	ce02                	sw	zero,28(sp)
1c00c9ca:	4782                	lw	a5,0(sp)
1c00c9cc:	4e078463          	beqz	a5,1c00ceb4 <pos_libc_prf+0xc16>
1c00c9d0:	413a07b3          	sub	a5,s4,s3
1c00c9d4:	4585                	li	a1,1
1c00c9d6:	0149d363          	bge	s3,s4,1c00c9dc <pos_libc_prf+0x73e>
1c00c9da:	85be                	mv	a1,a5
1c00c9dc:	17fd                	addi	a5,a5,-1
1c00c9de:	0037b793          	sltiu	a5,a5,3
1c00c9e2:	eb95                	bnez	a5,1c00ca16 <pos_libc_prf+0x778>
1c00c9e4:	0349d963          	bge	s3,s4,1c00ca16 <pos_libc_prf+0x778>
1c00c9e8:	105c                	addi	a5,sp,36
1c00c9ea:	97ce                	add	a5,a5,s3
1c00c9ec:	ffc5f613          	andi	a2,a1,-4
1c00c9f0:	963e                	add	a2,a2,a5
1c00c9f2:	02000693          	li	a3,32
1c00c9f6:	00d78023          	sb	a3,0(a5)
1c00c9fa:	00d780a3          	sb	a3,1(a5)
1c00c9fe:	00d78123          	sb	a3,2(a5)
1c00ca02:	00d781a3          	sb	a3,3(a5)
1c00ca06:	0791                	addi	a5,a5,4
1c00ca08:	fef617e3          	bne	a2,a5,1c00c9f6 <pos_libc_prf+0x758>
1c00ca0c:	ffc5f793          	andi	a5,a1,-4
1c00ca10:	99be                	add	s3,s3,a5
1c00ca12:	02b78663          	beq	a5,a1,1c00ca3e <pos_libc_prf+0x7a0>
1c00ca16:	199c                	addi	a5,sp,240
1c00ca18:	97ce                	add	a5,a5,s3
1c00ca1a:	02000693          	li	a3,32
1c00ca1e:	f2d78a23          	sb	a3,-204(a5)
1c00ca22:	00198793          	addi	a5,s3,1
1c00ca26:	0147dc63          	bge	a5,s4,1c00ca3e <pos_libc_prf+0x7a0>
1c00ca2a:	1998                	addi	a4,sp,240
1c00ca2c:	97ba                	add	a5,a5,a4
1c00ca2e:	f2d78a23          	sb	a3,-204(a5)
1c00ca32:	0989                	addi	s3,s3,2
1c00ca34:	0149d563          	bge	s3,s4,1c00ca3e <pos_libc_prf+0x7a0>
1c00ca38:	99ba                	add	s3,s3,a4
1c00ca3a:	f2d98a23          	sb	a3,-204(s3)
1c00ca3e:	c65a                	sw	s6,12(sp)
1c00ca40:	100a1663          	bnez	s4,1c00cb4c <pos_libc_prf+0x8ae>
1c00ca44:	b0f1                	j	1c00c310 <pos_libc_prf+0x72>
1c00ca46:	07300793          	li	a5,115
1c00ca4a:	d8fd97e3          	bne	s11,a5,1c00c7d8 <pos_libc_prf+0x53a>
1c00ca4e:	47b2                	lw	a5,12(sp)
1c00ca50:	4981                	li	s3,0
1c00ca52:	0c800693          	li	a3,200
1c00ca56:	438c                	lw	a1,0(a5)
1c00ca58:	00478b13          	addi	s6,a5,4
1c00ca5c:	a021                	j	1c00ca64 <pos_libc_prf+0x7c6>
1c00ca5e:	0985                	addi	s3,s3,1
1c00ca60:	6ad98163          	beq	s3,a3,1c00d102 <pos_libc_prf+0xe64>
1c00ca64:	013587b3          	add	a5,a1,s3
1c00ca68:	0007c783          	lbu	a5,0(a5)
1c00ca6c:	fbed                	bnez	a5,1c00ca5e <pos_libc_prf+0x7c0>
1c00ca6e:	000ac563          	bltz	s5,1c00ca78 <pos_libc_prf+0x7da>
1c00ca72:	013ad363          	bge	s5,s3,1c00ca78 <pos_libc_prf+0x7da>
1c00ca76:	89d6                	mv	s3,s5
1c00ca78:	5a099163          	bnez	s3,1c00d01a <pos_libc_prf+0xd7c>
1c00ca7c:	c65a                	sw	s6,12(sp)
1c00ca7e:	b849                	j	1c00c310 <pos_libc_prf+0x72>
1c00ca80:	06e00793          	li	a5,110
1c00ca84:	36fd8c63          	beq	s11,a5,1c00cdfc <pos_libc_prf+0xb5e>
1c00ca88:	06f00793          	li	a5,111
1c00ca8c:	88fd92e3          	bne	s11,a5,1c00c310 <pos_libc_prf+0x72>
1c00ca90:	47b2                	lw	a5,12(sp)
1c00ca92:	4390                	lw	a2,0(a5)
1c00ca94:	00478b13          	addi	s6,a5,4
1c00ca98:	47f2                	lw	a5,28(sp)
1c00ca9a:	c7f5                	beqz	a5,1c00cb86 <pos_libc_prf+0x8e8>
1c00ca9c:	03000793          	li	a5,48
1c00caa0:	02f10223          	sb	a5,36(sp)
1c00caa4:	02510693          	addi	a3,sp,37
1c00caa8:	60060b63          	beqz	a2,1c00d0be <pos_libc_prf+0xe20>
1c00caac:	89b6                	mv	s3,a3
1c00caae:	481d                	li	a6,7
1c00cab0:	00767713          	andi	a4,a2,7
1c00cab4:	03070713          	addi	a4,a4,48
1c00cab8:	85b2                	mv	a1,a2
1c00caba:	00e98023          	sb	a4,0(s3)
1c00cabe:	87ce                	mv	a5,s3
1c00cac0:	820d                	srli	a2,a2,0x3
1c00cac2:	0985                	addi	s3,s3,1
1c00cac4:	feb866e3          	bltu	a6,a1,1c00cab0 <pos_libc_prf+0x812>
1c00cac8:	40d98633          	sub	a2,s3,a3
1c00cacc:	01565c63          	bge	a2,s5,1c00cae4 <pos_libc_prf+0x846>
1c00cad0:	03000593          	li	a1,48
1c00cad4:	87ce                	mv	a5,s3
1c00cad6:	0985                	addi	s3,s3,1
1c00cad8:	40d98733          	sub	a4,s3,a3
1c00cadc:	feb98fa3          	sb	a1,-1(s3)
1c00cae0:	ff574ae3          	blt	a4,s5,1c00cad4 <pos_libc_prf+0x836>
1c00cae4:	00098023          	sb	zero,0(s3)
1c00cae8:	00f6fe63          	bgeu	a3,a5,1c00cb04 <pos_libc_prf+0x866>
1c00caec:	0006c603          	lbu	a2,0(a3)
1c00caf0:	0007c703          	lbu	a4,0(a5)
1c00caf4:	0685                	addi	a3,a3,1
1c00caf6:	00c78023          	sb	a2,0(a5)
1c00cafa:	fee68fa3          	sb	a4,-1(a3)
1c00cafe:	17fd                	addi	a5,a5,-1
1c00cb00:	fef6e6e3          	bltu	a3,a5,1c00caec <pos_libc_prf+0x84e>
1c00cb04:	1058                	addi	a4,sp,36
1c00cb06:	57fd                	li	a5,-1
1c00cb08:	40e989b3          	sub	s3,s3,a4
1c00cb0c:	36fa8763          	beq	s5,a5,1c00ce7a <pos_libc_prf+0xbdc>
1c00cb10:	0c800793          	li	a5,200
1c00cb14:	cd37c6e3          	blt	a5,s3,1c00c7e0 <pos_libc_prf+0x542>
1c00cb18:	ce02                	sw	zero,28(sp)
1c00cb1a:	bd9d                	j	1c00c990 <pos_libc_prf+0x6f2>
1c00cb1c:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00cb20:	02a00793          	li	a5,42
1c00cb24:	00160693          	addi	a3,a2,1
1c00cb28:	14f59b63          	bne	a1,a5,1c00cc7e <pos_libc_prf+0x9e0>
1c00cb2c:	47b2                	lw	a5,12(sp)
1c00cb2e:	00164d83          	lbu	s11,1(a2)
1c00cb32:	0609                	addi	a2,a2,2
1c00cb34:	0007aa83          	lw	s5,0(a5)
1c00cb38:	0791                	addi	a5,a5,4
1c00cb3a:	c63e                	sw	a5,12(sp)
1c00cb3c:	0c800793          	li	a5,200
1c00cb40:	8957dde3          	bge	a5,s5,1c00c3da <pos_libc_prf+0x13c>
1c00cb44:	5afd                	li	s5,-1
1c00cb46:	b851                	j	1c00c3da <pos_libc_prf+0x13c>
1c00cb48:	c65a                	sw	s6,12(sp)
1c00cb4a:	4a05                	li	s4,1
1c00cb4c:	02410913          	addi	s2,sp,36
1c00cb50:	59fd                	li	s3,-1
1c00cb52:	41240ab3          	sub	s5,s0,s2
1c00cb56:	9a4a                	add	s4,s4,s2
1c00cb58:	a029                	j	1c00cb62 <pos_libc_prf+0x8c4>
1c00cb5a:	012a8433          	add	s0,s5,s2
1c00cb5e:	fb490963          	beq	s2,s4,1c00c310 <pos_libc_prf+0x72>
1c00cb62:	00094503          	lbu	a0,0(s2)
1c00cb66:	85a6                	mv	a1,s1
1c00cb68:	0905                	addi	s2,s2,1
1c00cb6a:	9c82                	jalr	s9
1c00cb6c:	ff3517e3          	bne	a0,s3,1c00cb5a <pos_libc_prf+0x8bc>
1c00cb70:	547d                	li	s0,-1
1c00cb72:	fa6ff06f          	j	1c00c318 <pos_libc_prf+0x7a>
1c00cb76:	77e1                	lui	a5,0xffff8
1c00cb78:	8307c793          	xori	a5,a5,-2000
1c00cb7c:	02f11223          	sh	a5,36(sp)
1c00cb80:	02610693          	addi	a3,sp,38
1c00cb84:	bb95                	j	1c00c8f8 <pos_libc_prf+0x65a>
1c00cb86:	1054                	addi	a3,sp,36
1c00cb88:	b715                	j	1c00caac <pos_libc_prf+0x80e>
1c00cb8a:	5c605a63          	blez	t1,1c00d15e <pos_libc_prf+0xec0>
1c00cb8e:	006f09b3          	add	s3,t5,t1
1c00cb92:	4541                	li	a0,16
1c00cb94:	03000e13          	li	t3,48
1c00cb98:	00279713          	slli	a4,a5,0x2
1c00cb9c:	01e7d593          	srli	a1,a5,0x1e
1c00cba0:	00289693          	slli	a3,a7,0x2
1c00cba4:	00f70333          	add	t1,a4,a5
1c00cba8:	8ecd                	or	a3,a3,a1
1c00cbaa:	96c6                	add	a3,a3,a7
1c00cbac:	00e33733          	sltu	a4,t1,a4
1c00cbb0:	9736                	add	a4,a4,a3
1c00cbb2:	0706                	slli	a4,a4,0x1
1c00cbb4:	01f35693          	srli	a3,t1,0x1f
1c00cbb8:	8f55                	or	a4,a4,a3
1c00cbba:	01c75693          	srli	a3,a4,0x1c
1c00cbbe:	03068693          	addi	a3,a3,48
1c00cbc2:	4ea05463          	blez	a0,1c00d0aa <pos_libc_prf+0xe0c>
1c00cbc6:	fed80fa3          	sb	a3,-1(a6)
1c00cbca:	46d2                	lw	a3,20(sp)
1c00cbcc:	157d                	addi	a0,a0,-1
1c00cbce:	00131793          	slli	a5,t1,0x1
1c00cbd2:	00d778b3          	and	a7,a4,a3
1c00cbd6:	4d099e63          	bne	s3,a6,1c00d0b2 <pos_libc_prf+0xe14>
1c00cbda:	4301                	li	t1,0
1c00cbdc:	4772                	lw	a4,28(sp)
1c00cbde:	01576bb3          	or	s7,a4,s5
1c00cbe2:	060b8863          	beqz	s7,1c00cc52 <pos_libc_prf+0x9b4>
1c00cbe6:	02e00693          	li	a3,46
1c00cbea:	00d98023          	sb	a3,0(s3)
1c00cbee:	00198e93          	addi	t4,s3,1
1c00cbf2:	5c0a8763          	beqz	s5,1c00d1c0 <pos_libc_prf+0xf22>
1c00cbf6:	001a8693          	addi	a3,s5,1
1c00cbfa:	99b6                	add	s3,s3,a3
1c00cbfc:	8876                	mv	a6,t4
1c00cbfe:	03000f13          	li	t5,48
1c00cc02:	0805                	addi	a6,a6,1
1c00cc04:	4a031963          	bnez	t1,1c00d0b6 <pos_libc_prf+0xe18>
1c00cc08:	00279713          	slli	a4,a5,0x2
1c00cc0c:	01e7d593          	srli	a1,a5,0x1e
1c00cc10:	00289693          	slli	a3,a7,0x2
1c00cc14:	00f70e33          	add	t3,a4,a5
1c00cc18:	8ecd                	or	a3,a3,a1
1c00cc1a:	96c6                	add	a3,a3,a7
1c00cc1c:	00ee3733          	sltu	a4,t3,a4
1c00cc20:	9736                	add	a4,a4,a3
1c00cc22:	0706                	slli	a4,a4,0x1
1c00cc24:	01fe5693          	srli	a3,t3,0x1f
1c00cc28:	8f55                	or	a4,a4,a3
1c00cc2a:	01c75593          	srli	a1,a4,0x1c
1c00cc2e:	03000693          	li	a3,48
1c00cc32:	00a05a63          	blez	a0,1c00cc46 <pos_libc_prf+0x9a8>
1c00cc36:	03058693          	addi	a3,a1,48
1c00cc3a:	45d2                	lw	a1,20(sp)
1c00cc3c:	157d                	addi	a0,a0,-1
1c00cc3e:	001e1793          	slli	a5,t3,0x1
1c00cc42:	00b778b3          	and	a7,a4,a1
1c00cc46:	fed80fa3          	sb	a3,-1(a6)
1c00cc4a:	fb099ce3          	bne	s3,a6,1c00cc02 <pos_libc_prf+0x964>
1c00cc4e:	015e89b3          	add	s3,t4,s5
1c00cc52:	b0060ee3          	beqz	a2,1c00c76e <pos_libc_prf+0x4d0>
1c00cc56:	03000613          	li	a2,48
1c00cc5a:	fff9c783          	lbu	a5,-1(s3)
1c00cc5e:	86ce                	mv	a3,s3
1c00cc60:	19fd                	addi	s3,s3,-1
1c00cc62:	fec78ce3          	beq	a5,a2,1c00cc5a <pos_libc_prf+0x9bc>
1c00cc66:	02e00613          	li	a2,46
1c00cc6a:	aec78ce3          	beq	a5,a2,1c00c762 <pos_libc_prf+0x4c4>
1c00cc6e:	89b6                	mv	s3,a3
1c00cc70:	bccd                	j	1c00c762 <pos_libc_prf+0x4c4>
1c00cc72:	fff88fa3          	sb	t6,-1(a7)
1c00cc76:	ab1f11e3          	bne	t5,a7,1c00c718 <pos_libc_prf+0x47a>
1c00cc7a:	99d6                	add	s3,s3,s5
1c00cc7c:	b4cd                	j	1c00c75e <pos_libc_prf+0x4c0>
1c00cc7e:	fd058713          	addi	a4,a1,-48
1c00cc82:	47a5                	li	a5,9
1c00cc84:	8dae                	mv	s11,a1
1c00cc86:	4a81                	li	s5,0
1c00cc88:	4525                	li	a0,9
1c00cc8a:	00e7f463          	bgeu	a5,a4,1c00cc92 <pos_libc_prf+0x9f4>
1c00cc8e:	a199                	j	1c00d0d4 <pos_libc_prf+0xe36>
1c00cc90:	0685                	addi	a3,a3,1
1c00cc92:	002a9793          	slli	a5,s5,0x2
1c00cc96:	97d6                	add	a5,a5,s5
1c00cc98:	0786                	slli	a5,a5,0x1
1c00cc9a:	97ee                	add	a5,a5,s11
1c00cc9c:	0006cd83          	lbu	s11,0(a3)
1c00cca0:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00cca4:	8732                	mv	a4,a2
1c00cca6:	fd0d8793          	addi	a5,s11,-48
1c00ccaa:	8636                	mv	a2,a3
1c00ccac:	fef572e3          	bgeu	a0,a5,1c00cc90 <pos_libc_prf+0x9f2>
1c00ccb0:	00270613          	addi	a2,a4,2
1c00ccb4:	b561                	j	1c00cb3c <pos_libc_prf+0x89e>
1c00ccb6:	47b2                	lw	a5,12(sp)
1c00ccb8:	0007a303          	lw	t1,0(a5)
1c00ccbc:	00478b13          	addi	s6,a5,4
1c00ccc0:	2e034263          	bltz	t1,1c00cfa4 <pos_libc_prf+0xd06>
1c00ccc4:	47a2                	lw	a5,8(sp)
1c00ccc6:	861a                	mv	a2,t1
1c00ccc8:	3c078663          	beqz	a5,1c00d094 <pos_libc_prf+0xdf6>
1c00cccc:	02b00793          	li	a5,43
1c00ccd0:	02f10223          	sb	a5,36(sp)
1c00ccd4:	02510693          	addi	a3,sp,37
1c00ccd8:	89b6                	mv	s3,a3
1c00ccda:	4529                	li	a0,10
1c00ccdc:	48a5                	li	a7,9
1c00ccde:	02a67733          	remu	a4,a2,a0
1c00cce2:	87ce                	mv	a5,s3
1c00cce4:	0985                	addi	s3,s3,1
1c00cce6:	85b2                	mv	a1,a2
1c00cce8:	03070713          	addi	a4,a4,48
1c00ccec:	fee98fa3          	sb	a4,-1(s3)
1c00ccf0:	02a65633          	divu	a2,a2,a0
1c00ccf4:	feb8e5e3          	bltu	a7,a1,1c00ccde <pos_libc_prf+0xa40>
1c00ccf8:	40d98633          	sub	a2,s3,a3
1c00ccfc:	01565c63          	bge	a2,s5,1c00cd14 <pos_libc_prf+0xa76>
1c00cd00:	03000593          	li	a1,48
1c00cd04:	87ce                	mv	a5,s3
1c00cd06:	0985                	addi	s3,s3,1
1c00cd08:	40d98733          	sub	a4,s3,a3
1c00cd0c:	feb98fa3          	sb	a1,-1(s3)
1c00cd10:	ff574ae3          	blt	a4,s5,1c00cd04 <pos_libc_prf+0xa66>
1c00cd14:	00098023          	sb	zero,0(s3)
1c00cd18:	00f6fe63          	bgeu	a3,a5,1c00cd34 <pos_libc_prf+0xa96>
1c00cd1c:	0006c603          	lbu	a2,0(a3)
1c00cd20:	0007c703          	lbu	a4,0(a5)
1c00cd24:	0685                	addi	a3,a3,1
1c00cd26:	00c78023          	sb	a2,0(a5)
1c00cd2a:	fee68fa3          	sb	a4,-1(a3)
1c00cd2e:	17fd                	addi	a5,a5,-1
1c00cd30:	fef6e6e3          	bltu	a3,a5,1c00cd1c <pos_libc_prf+0xa7e>
1c00cd34:	4712                	lw	a4,4(sp)
1c00cd36:	47a2                	lw	a5,8(sp)
1c00cd38:	8fd9                	or	a5,a5,a4
1c00cd3a:	ce3e                	sw	a5,28(sp)
1c00cd3c:	1058                	addi	a4,sp,36
1c00cd3e:	40e989b3          	sub	s3,s3,a4
1c00cd42:	c40790e3          	bnez	a5,1c00c982 <pos_libc_prf+0x6e4>
1c00cd46:	01f35793          	srli	a5,t1,0x1f
1c00cd4a:	ce3e                	sw	a5,28(sp)
1c00cd4c:	b91d                	j	1c00c982 <pos_libc_prf+0x6e4>
1c00cd4e:	47b2                	lw	a5,12(sp)
1c00cd50:	02610613          	addi	a2,sp,38
1c00cd54:	4ea5                	li	t4,9
1c00cd56:	438c                	lw	a1,0(a5)
1c00cd58:	00478b13          	addi	s6,a5,4
1c00cd5c:	77e1                	lui	a5,0xffff8
1c00cd5e:	8307c793          	xori	a5,a5,-2000
1c00cd62:	02f11223          	sh	a5,36(sp)
1c00cd66:	4e3d                	li	t3,15
1c00cd68:	87b2                	mv	a5,a2
1c00cd6a:	a039                	j	1c00cd78 <pos_libc_prf+0xada>
1c00cd6c:	ff168fa3          	sb	a7,-1(a3)
1c00cd70:	02be7663          	bgeu	t3,a1,1c00cd9c <pos_libc_prf+0xafe>
1c00cd74:	85c2                	mv	a1,a6
1c00cd76:	87b6                	mv	a5,a3
1c00cd78:	00f5f513          	andi	a0,a1,15
1c00cd7c:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00cd80:	05750893          	addi	a7,a0,87
1c00cd84:	03050713          	addi	a4,a0,48
1c00cd88:	0045d813          	srli	a6,a1,0x4
1c00cd8c:	feaee0e3          	bltu	t4,a0,1c00cd6c <pos_libc_prf+0xace>
1c00cd90:	00e78023          	sb	a4,0(a5)
1c00cd94:	00178693          	addi	a3,a5,1
1c00cd98:	fcbe6ee3          	bltu	t3,a1,1c00cd74 <pos_libc_prf+0xad6>
1c00cd9c:	40c689b3          	sub	s3,a3,a2
1c00cda0:	459d                	li	a1,7
1c00cda2:	0135cc63          	blt	a1,s3,1c00cdba <pos_libc_prf+0xb1c>
1c00cda6:	03000513          	li	a0,48
1c00cdaa:	87b6                	mv	a5,a3
1c00cdac:	0685                	addi	a3,a3,1
1c00cdae:	40c689b3          	sub	s3,a3,a2
1c00cdb2:	fea68fa3          	sb	a0,-1(a3)
1c00cdb6:	ff35dae3          	bge	a1,s3,1c00cdaa <pos_libc_prf+0xb0c>
1c00cdba:	00068023          	sb	zero,0(a3)
1c00cdbe:	86b2                	mv	a3,a2
1c00cdc0:	00f67e63          	bgeu	a2,a5,1c00cddc <pos_libc_prf+0xb3e>
1c00cdc4:	0006c603          	lbu	a2,0(a3)
1c00cdc8:	0007c703          	lbu	a4,0(a5)
1c00cdcc:	0685                	addi	a3,a3,1
1c00cdce:	00c78023          	sb	a2,0(a5)
1c00cdd2:	fee68fa3          	sb	a4,-1(a3)
1c00cdd6:	17fd                	addi	a5,a5,-1
1c00cdd8:	fef6e6e3          	bltu	a3,a5,1c00cdc4 <pos_libc_prf+0xb26>
1c00cddc:	57fd                	li	a5,-1
1c00cdde:	0989                	addi	s3,s3,2
1c00cde0:	22fa8663          	beq	s5,a5,1c00d00c <pos_libc_prf+0xd6e>
1c00cde4:	0c800793          	li	a5,200
1c00cde8:	9f37cce3          	blt	a5,s3,1c00c7e0 <pos_libc_prf+0x542>
1c00cdec:	02000913          	li	s2,32
1c00cdf0:	0b49d863          	bge	s3,s4,1c00cea0 <pos_libc_prf+0xc02>
1c00cdf4:	00198613          	addi	a2,s3,1
1c00cdf8:	ce02                	sw	zero,28(sp)
1c00cdfa:	bec1                	j	1c00c9ca <pos_libc_prf+0x72c>
1c00cdfc:	4732                	lw	a4,12(sp)
1c00cdfe:	431c                	lw	a5,0(a4)
1c00ce00:	0711                	addi	a4,a4,4
1c00ce02:	c63a                	sw	a4,12(sp)
1c00ce04:	c380                	sw	s0,0(a5)
1c00ce06:	d0aff06f          	j	1c00c310 <pos_libc_prf+0x72>
1c00ce0a:	47b2                	lw	a5,12(sp)
1c00ce0c:	4529                	li	a0,10
1c00ce0e:	48a5                	li	a7,9
1c00ce10:	4390                	lw	a2,0(a5)
1c00ce12:	00478b13          	addi	s6,a5,4
1c00ce16:	105c                	addi	a5,sp,36
1c00ce18:	02a67733          	remu	a4,a2,a0
1c00ce1c:	86be                	mv	a3,a5
1c00ce1e:	0785                	addi	a5,a5,1
1c00ce20:	85b2                	mv	a1,a2
1c00ce22:	03070713          	addi	a4,a4,48
1c00ce26:	fee78fa3          	sb	a4,-1(a5)
1c00ce2a:	02a65633          	divu	a2,a2,a0
1c00ce2e:	feb8e5e3          	bltu	a7,a1,1c00ce18 <pos_libc_prf+0xb7a>
1c00ce32:	1058                	addi	a4,sp,36
1c00ce34:	40e789b3          	sub	s3,a5,a4
1c00ce38:	0159dd63          	bge	s3,s5,1c00ce52 <pos_libc_prf+0xbb4>
1c00ce3c:	03000613          	li	a2,48
1c00ce40:	86be                	mv	a3,a5
1c00ce42:	1058                	addi	a4,sp,36
1c00ce44:	0785                	addi	a5,a5,1
1c00ce46:	40e789b3          	sub	s3,a5,a4
1c00ce4a:	fec78fa3          	sb	a2,-1(a5)
1c00ce4e:	ff59c9e3          	blt	s3,s5,1c00ce40 <pos_libc_prf+0xba2>
1c00ce52:	00078023          	sb	zero,0(a5)
1c00ce56:	105c                	addi	a5,sp,36
1c00ce58:	00d7fe63          	bgeu	a5,a3,1c00ce74 <pos_libc_prf+0xbd6>
1c00ce5c:	0007c603          	lbu	a2,0(a5)
1c00ce60:	0006c703          	lbu	a4,0(a3)
1c00ce64:	0785                	addi	a5,a5,1
1c00ce66:	00c68023          	sb	a2,0(a3)
1c00ce6a:	fee78fa3          	sb	a4,-1(a5)
1c00ce6e:	16fd                	addi	a3,a3,-1
1c00ce70:	fed7e6e3          	bltu	a5,a3,1c00ce5c <pos_libc_prf+0xbbe>
1c00ce74:	57fd                	li	a5,-1
1c00ce76:	c8fa9de3          	bne	s5,a5,1c00cb10 <pos_libc_prf+0x872>
1c00ce7a:	0c800793          	li	a5,200
1c00ce7e:	9737c1e3          	blt	a5,s3,1c00c7e0 <pos_libc_prf+0x542>
1c00ce82:	ce02                	sw	zero,28(sp)
1c00ce84:	be01                	j	1c00c994 <pos_libc_prf+0x6f6>
1c00ce86:	85a6                	mv	a1,s1
1c00ce88:	02500513          	li	a0,37
1c00ce8c:	9c82                	jalr	s9
1c00ce8e:	57fd                	li	a5,-1
1c00ce90:	c6f51f63          	bne	a0,a5,1c00c30e <pos_libc_prf+0x70>
1c00ce94:	547d                	li	s0,-1
1c00ce96:	c82ff06f          	j	1c00c318 <pos_libc_prf+0x7a>
1c00ce9a:	4401                	li	s0,0
1c00ce9c:	c7cff06f          	j	1c00c318 <pos_libc_prf+0x7a>
1c00cea0:	8a4e                	mv	s4,s3
1c00cea2:	c65a                	sw	s6,12(sp)
1c00cea4:	b165                	j	1c00cb4c <pos_libc_prf+0x8ae>
1c00cea6:	0c800793          	li	a5,200
1c00ceaa:	9337cbe3          	blt	a5,s3,1c00c7e0 <pos_libc_prf+0x542>
1c00ceae:	4785                	li	a5,1
1c00ceb0:	ce3e                	sw	a5,28(sp)
1c00ceb2:	b4cd                	j	1c00c994 <pos_libc_prf+0x6f6>
1c00ceb4:	104c                	addi	a1,sp,36
1c00ceb6:	413a09b3          	sub	s3,s4,s3
1c00ceba:	01358533          	add	a0,a1,s3
1c00cebe:	9faff0ef          	jal	ra,1c00c0b8 <memmove>
1c00cec2:	02000793          	li	a5,32
1c00cec6:	24f90863          	beq	s2,a5,1c00d116 <pos_libc_prf+0xe78>
1c00ceca:	47f2                	lw	a5,28(sp)
1c00cecc:	99be                	add	s3,s3,a5
1c00cece:	47f2                	lw	a5,28(sp)
1c00ced0:	b737d7e3          	bge	a5,s3,1c00ca3e <pos_libc_prf+0x7a0>
1c00ced4:	4772                	lw	a4,28(sp)
1c00ced6:	4789                	li	a5,2
1c00ced8:	40e988b3          	sub	a7,s3,a4
1c00cedc:	fff88693          	addi	a3,a7,-1
1c00cee0:	06d7f063          	bgeu	a5,a3,1c00cf40 <pos_libc_prf+0xca2>
1c00cee4:	47e2                	lw	a5,24(sp)
1c00cee6:	00891613          	slli	a2,s2,0x8
1c00ceea:	ffc8f593          	andi	a1,a7,-4
1c00ceee:	00f976b3          	and	a3,s2,a5
1c00cef2:	8ed1                	or	a3,a3,a2
1c00cef4:	01091793          	slli	a5,s2,0x10
1c00cef8:	8edd                	or	a3,a3,a5
1c00cefa:	01891613          	slli	a2,s2,0x18
1c00cefe:	8e55                	or	a2,a2,a3
1c00cf00:	105c                	addi	a5,sp,36
1c00cf02:	00865813          	srli	a6,a2,0x8
1c00cf06:	01065513          	srli	a0,a2,0x10
1c00cf0a:	97ba                	add	a5,a5,a4
1c00cf0c:	95be                	add	a1,a1,a5
1c00cf0e:	0306f693          	andi	a3,a3,48
1c00cf12:	8261                	srli	a2,a2,0x18
1c00cf14:	0ff87813          	andi	a6,a6,255
1c00cf18:	0ff57513          	andi	a0,a0,255
1c00cf1c:	00d78023          	sb	a3,0(a5)
1c00cf20:	010780a3          	sb	a6,1(a5)
1c00cf24:	00a78123          	sb	a0,2(a5)
1c00cf28:	00c781a3          	sb	a2,3(a5)
1c00cf2c:	0791                	addi	a5,a5,4
1c00cf2e:	fef597e3          	bne	a1,a5,1c00cf1c <pos_libc_prf+0xc7e>
1c00cf32:	4772                	lw	a4,28(sp)
1c00cf34:	ffc8f793          	andi	a5,a7,-4
1c00cf38:	973e                	add	a4,a4,a5
1c00cf3a:	ce3a                	sw	a4,28(sp)
1c00cf3c:	b11781e3          	beq	a5,a7,1c00ca3e <pos_libc_prf+0x7a0>
1c00cf40:	4772                	lw	a4,28(sp)
1c00cf42:	199c                	addi	a5,sp,240
1c00cf44:	97ba                	add	a5,a5,a4
1c00cf46:	f3278a23          	sb	s2,-204(a5)
1c00cf4a:	00170793          	addi	a5,a4,1
1c00cf4e:	af37d8e3          	bge	a5,s3,1c00ca3e <pos_libc_prf+0x7a0>
1c00cf52:	1994                	addi	a3,sp,240
1c00cf54:	97b6                	add	a5,a5,a3
1c00cf56:	f3278a23          	sb	s2,-204(a5)
1c00cf5a:	00270b93          	addi	s7,a4,2
1c00cf5e:	af3bd0e3          	bge	s7,s3,1c00ca3e <pos_libc_prf+0x7a0>
1c00cf62:	9bb6                	add	s7,s7,a3
1c00cf64:	f32b8a23          	sb	s2,-204(s7)
1c00cf68:	c65a                	sw	s6,12(sp)
1c00cf6a:	bcd9                	j	1c00ca40 <pos_libc_prf+0x7a2>
1c00cf6c:	01b98023          	sb	s11,0(s3)
1c00cf70:	02b00613          	li	a2,43
1c00cf74:	00035663          	bgez	t1,1c00cf80 <pos_libc_prf+0xce2>
1c00cf78:	40600333          	neg	t1,t1
1c00cf7c:	02d00613          	li	a2,45
1c00cf80:	47a9                	li	a5,10
1c00cf82:	02f346b3          	div	a3,t1,a5
1c00cf86:	00c980a3          	sb	a2,1(s3)
1c00cf8a:	0991                	addi	s3,s3,4
1c00cf8c:	02f367b3          	rem	a5,t1,a5
1c00cf90:	03068693          	addi	a3,a3,48
1c00cf94:	fed98f23          	sb	a3,-2(s3)
1c00cf98:	03078793          	addi	a5,a5,48
1c00cf9c:	fef98fa3          	sb	a5,-1(s3)
1c00cfa0:	fceff06f          	j	1c00c76e <pos_libc_prf+0x4d0>
1c00cfa4:	02d00793          	li	a5,45
1c00cfa8:	02f10223          	sb	a5,36(sp)
1c00cfac:	800007b7          	lui	a5,0x80000
1c00cfb0:	14f30e63          	beq	t1,a5,1c00d10c <pos_libc_prf+0xe6e>
1c00cfb4:	40600633          	neg	a2,t1
1c00cfb8:	02510693          	addi	a3,sp,37
1c00cfbc:	bb31                	j	1c00ccd8 <pos_libc_prf+0xa3a>
1c00cfbe:	4722                	lw	a4,8(sp)
1c00cfc0:	10070d63          	beqz	a4,1c00d0da <pos_libc_prf+0xe3c>
1c00cfc4:	02b00693          	li	a3,43
1c00cfc8:	02d10223          	sb	a3,36(sp)
1c00cfcc:	02510f13          	addi	t5,sp,37
1c00cfd0:	4301                	li	t1,0
1c00cfd2:	4801                	li	a6,0
1c00cfd4:	d9cff06f          	j	1c00c570 <pos_libc_prf+0x2d2>
1c00cfd8:	02414783          	lbu	a5,36(sp)
1c00cfdc:	98078ce3          	beqz	a5,1c00c974 <pos_libc_prf+0x6d6>
1c00cfe0:	1054                	addi	a3,sp,36
1c00cfe2:	45e5                	li	a1,25
1c00cfe4:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00cfe8:	f9f78793          	addi	a5,a5,-97
1c00cfec:	0ff7f793          	andi	a5,a5,255
1c00cff0:	00f5e963          	bltu	a1,a5,1c00d002 <pos_libc_prf+0xd64>
1c00cff4:	0016c783          	lbu	a5,1(a3)
1c00cff8:	00e68023          	sb	a4,0(a3)
1c00cffc:	0685                	addi	a3,a3,1
1c00cffe:	f3fd                	bnez	a5,1c00cfe4 <pos_libc_prf+0xd46>
1c00d000:	ba95                	j	1c00c974 <pos_libc_prf+0x6d6>
1c00d002:	0016c783          	lbu	a5,1(a3)
1c00d006:	0685                	addi	a3,a3,1
1c00d008:	fff1                	bnez	a5,1c00cfe4 <pos_libc_prf+0xd46>
1c00d00a:	b2ad                	j	1c00c974 <pos_libc_prf+0x6d6>
1c00d00c:	0c800793          	li	a5,200
1c00d010:	df37d0e3          	bge	a5,s3,1c00cdf0 <pos_libc_prf+0xb52>
1c00d014:	547d                	li	s0,-1
1c00d016:	b02ff06f          	j	1c00c318 <pos_libc_prf+0x7a>
1c00d01a:	864e                	mv	a2,s3
1c00d01c:	1048                	addi	a0,sp,36
1c00d01e:	fc5fe0ef          	jal	ra,1c00bfe2 <memcpy>
1c00d022:	b3f9                	j	1c00cdf0 <pos_libc_prf+0xb52>
1c00d024:	47f2                	lw	a5,28(sp)
1c00d026:	4601                	li	a2,0
1c00d028:	e399                	bnez	a5,1c00d02e <pos_libc_prf+0xd90>
1c00d02a:	01503633          	snez	a2,s5
1c00d02e:	57f5                	li	a5,-3
1c00d030:	001a8813          	addi	a6,s5,1
1c00d034:	00f34463          	blt	t1,a5,1c00d03c <pos_libc_prf+0xd9e>
1c00d038:	04685163          	bge	a6,t1,1c00d07a <pos_libc_prf+0xddc>
1c00d03c:	47c1                	li	a5,16
1c00d03e:	0107d363          	bge	a5,a6,1c00d044 <pos_libc_prf+0xda6>
1c00d042:	4841                	li	a6,16
1c00d044:	06700793          	li	a5,103
1c00d048:	187d                	addi	a6,a6,-1
1c00d04a:	02fd8363          	beq	s11,a5,1c00d070 <pos_libc_prf+0xdd2>
1c00d04e:	04500d93          	li	s11,69
1c00d052:	d70ff06f          	j	1c00c5c2 <pos_libc_prf+0x324>
1c00d056:	4a99                	li	s5,6
1c00d058:	d4fd9563          	bne	s11,a5,1c00c5a2 <pos_libc_prf+0x304>
1c00d05c:	4772                	lw	a4,28(sp)
1c00d05e:	4605                	li	a2,1
1c00d060:	57f5                	li	a5,-3
1c00d062:	8e19                	sub	a2,a2,a4
1c00d064:	00f34563          	blt	t1,a5,1c00d06e <pos_libc_prf+0xdd0>
1c00d068:	479d                	li	a5,7
1c00d06a:	0067d863          	bge	a5,t1,1c00d07a <pos_libc_prf+0xddc>
1c00d06e:	4819                	li	a6,6
1c00d070:	06500d93          	li	s11,101
1c00d074:	d4eff06f          	j	1c00c5c2 <pos_libc_prf+0x324>
1c00d078:	4601                	li	a2,0
1c00d07a:	006a8833          	add	a6,s5,t1
1c00d07e:	0b005b63          	blez	a6,1c00d134 <pos_libc_prf+0xe96>
1c00d082:	47c1                	li	a5,16
1c00d084:	0107d363          	bge	a5,a6,1c00d08a <pos_libc_prf+0xdec>
1c00d088:	4841                	li	a6,16
1c00d08a:	187d                	addi	a6,a6,-1
1c00d08c:	06600d93          	li	s11,102
1c00d090:	d32ff06f          	j	1c00c5c2 <pos_libc_prf+0x324>
1c00d094:	4792                	lw	a5,4(sp)
1c00d096:	1054                	addi	a3,sp,36
1c00d098:	c40780e3          	beqz	a5,1c00ccd8 <pos_libc_prf+0xa3a>
1c00d09c:	02000793          	li	a5,32
1c00d0a0:	02f10223          	sb	a5,36(sp)
1c00d0a4:	02510693          	addi	a3,sp,37
1c00d0a8:	b905                	j	1c00ccd8 <pos_libc_prf+0xa3a>
1c00d0aa:	ffc80fa3          	sb	t3,-1(a6)
1c00d0ae:	b30986e3          	beq	s3,a6,1c00cbda <pos_libc_prf+0x93c>
1c00d0b2:	0805                	addi	a6,a6,1
1c00d0b4:	b4d5                	j	1c00cb98 <pos_libc_prf+0x8fa>
1c00d0b6:	ffe80fa3          	sb	t5,-1(a6)
1c00d0ba:	0305                	addi	t1,t1,1
1c00d0bc:	b679                	j	1c00cc4a <pos_libc_prf+0x9ac>
1c00d0be:	020102a3          	sb	zero,37(sp)
1c00d0c2:	57fd                	li	a5,-1
1c00d0c4:	0cfa8263          	beq	s5,a5,1c00d188 <pos_libc_prf+0xeea>
1c00d0c8:	4785                	li	a5,1
1c00d0ca:	0b47c063          	blt	a5,s4,1c00d16a <pos_libc_prf+0xecc>
1c00d0ce:	4a72                	lw	s4,28(sp)
1c00d0d0:	c65a                	sw	s6,12(sp)
1c00d0d2:	bcad                	j	1c00cb4c <pos_libc_prf+0x8ae>
1c00d0d4:	8636                	mv	a2,a3
1c00d0d6:	b04ff06f          	j	1c00c3da <pos_libc_prf+0x13c>
1c00d0da:	4712                	lw	a4,4(sp)
1c00d0dc:	c77d                	beqz	a4,1c00d1ca <pos_libc_prf+0xf2c>
1c00d0de:	02000693          	li	a3,32
1c00d0e2:	02d10223          	sb	a3,36(sp)
1c00d0e6:	4301                	li	t1,0
1c00d0e8:	4801                	li	a6,0
1c00d0ea:	02510f13          	addi	t5,sp,37
1c00d0ee:	c82ff06f          	j	1c00c570 <pos_libc_prf+0x2d2>
1c00d0f2:	02d00693          	li	a3,45
1c00d0f6:	02d10223          	sb	a3,36(sp)
1c00d0fa:	02510f13          	addi	t5,sp,37
1c00d0fe:	b9cff06f          	j	1c00c49a <pos_libc_prf+0x1fc>
1c00d102:	0c800613          	li	a2,200
1c00d106:	960ad6e3          	bgez	s5,1c00ca72 <pos_libc_prf+0x7d4>
1c00d10a:	bf09                	j	1c00d01c <pos_libc_prf+0xd7e>
1c00d10c:	80000637          	lui	a2,0x80000
1c00d110:	02510693          	addi	a3,sp,37
1c00d114:	b6d1                	j	1c00ccd8 <pos_libc_prf+0xa3a>
1c00d116:	ce02                	sw	zero,28(sp)
1c00d118:	bb5d                	j	1c00cece <pos_libc_prf+0xc30>
1c00d11a:	4712                	lw	a4,4(sp)
1c00d11c:	02410f13          	addi	t5,sp,36
1c00d120:	b6070d63          	beqz	a4,1c00c49a <pos_libc_prf+0x1fc>
1c00d124:	02000693          	li	a3,32
1c00d128:	02d10223          	sb	a3,36(sp)
1c00d12c:	02510f13          	addi	t5,sp,37
1c00d130:	b6aff06f          	j	1c00c49a <pos_libc_prf+0x1fc>
1c00d134:	06600d93          	li	s11,102
1c00d138:	4781                	li	a5,0
1c00d13a:	080006b7          	lui	a3,0x8000
1c00d13e:	ce8ff06f          	j	1c00c626 <pos_libc_prf+0x388>
1c00d142:	06b6e363          	bltu	a3,a1,1c00d1a8 <pos_libc_prf+0xf0a>
1c00d146:	04e00693          	li	a3,78
1c00d14a:	04100613          	li	a2,65
1c00d14e:	00d78023          	sb	a3,0(a5)
1c00d152:	00c780a3          	sb	a2,1(a5)
1c00d156:	00d78123          	sb	a3,2(a5)
1c00d15a:	f44ff06f          	j	1c00c89e <pos_libc_prf+0x600>
1c00d15e:	03000693          	li	a3,48
1c00d162:	00df0023          	sb	a3,0(t5)
1c00d166:	4541                	li	a0,16
1c00d168:	bc95                	j	1c00cbdc <pos_libc_prf+0x93e>
1c00d16a:	4982                	lw	s3,0(sp)
1c00d16c:	860992e3          	bnez	s3,1c00c9d0 <pos_libc_prf+0x732>
1c00d170:	104c                	addi	a1,sp,36
1c00d172:	fffa0993          	addi	s3,s4,-1
1c00d176:	4609                	li	a2,2
1c00d178:	01358533          	add	a0,a1,s3
1c00d17c:	f3dfe0ef          	jal	ra,1c00c0b8 <memmove>
1c00d180:	02000913          	li	s2,32
1c00d184:	ce02                	sw	zero,28(sp)
1c00d186:	b3b9                	j	1c00ced4 <pos_libc_prf+0xc36>
1c00d188:	49f2                	lw	s3,28(sp)
1c00d18a:	b19d                	j	1c00cdf0 <pos_libc_prf+0xb52>
1c00d18c:	06900693          	li	a3,105
1c00d190:	00d78023          	sb	a3,0(a5)
1c00d194:	06e00693          	li	a3,110
1c00d198:	00d780a3          	sb	a3,1(a5)
1c00d19c:	06600693          	li	a3,102
1c00d1a0:	00d78123          	sb	a3,2(a5)
1c00d1a4:	efaff06f          	j	1c00c89e <pos_libc_prf+0x600>
1c00d1a8:	06e00693          	li	a3,110
1c00d1ac:	06100613          	li	a2,97
1c00d1b0:	00d78023          	sb	a3,0(a5)
1c00d1b4:	00c780a3          	sb	a2,1(a5)
1c00d1b8:	00d78123          	sb	a3,2(a5)
1c00d1bc:	ee2ff06f          	j	1c00c89e <pos_libc_prf+0x600>
1c00d1c0:	89f6                	mv	s3,t4
1c00d1c2:	a8061ae3          	bnez	a2,1c00cc56 <pos_libc_prf+0x9b8>
1c00d1c6:	da8ff06f          	j	1c00c76e <pos_libc_prf+0x4d0>
1c00d1ca:	4301                	li	t1,0
1c00d1cc:	4801                	li	a6,0
1c00d1ce:	02410f13          	addi	t5,sp,36
1c00d1d2:	b9eff06f          	j	1c00c570 <pos_libc_prf+0x2d2>

1c00d1d6 <pos_init_start>:
1c00d1d6:	1141                	addi	sp,sp,-16
1c00d1d8:	c422                	sw	s0,8(sp)
1c00d1da:	1c000437          	lui	s0,0x1c000
1c00d1de:	c606                	sw	ra,12(sp)
1c00d1e0:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00d1e4:	8e1fc0ef          	jal	ra,1c009ac4 <pos_soc_init>
1c00d1e8:	2a75                	jal	1c00d3a4 <pos_irq_init>
1c00d1ea:	22e5                	jal	1c00d3d2 <pos_soc_event_init>
1c00d1ec:	2225                	jal	1c00d314 <pos_allocs_init>
1c00d1ee:	405c                	lw	a5,4(s0)
1c00d1f0:	c791                	beqz	a5,1c00d1fc <pos_init_start+0x26>
1c00d1f2:	0411                	addi	s0,s0,4
1c00d1f4:	0411                	addi	s0,s0,4
1c00d1f6:	9782                	jalr	a5
1c00d1f8:	401c                	lw	a5,0(s0)
1c00d1fa:	ffed                	bnez	a5,1c00d1f4 <pos_init_start+0x1e>
1c00d1fc:	86cff0ef          	jal	ra,1c00c268 <pos_io_start>
1c00d200:	300467f3          	csrrsi	a5,mstatus,8
1c00d204:	40b2                	lw	ra,12(sp)
1c00d206:	4422                	lw	s0,8(sp)
1c00d208:	0141                	addi	sp,sp,16
1c00d20a:	8082                	ret

1c00d20c <pos_init_stop>:
1c00d20c:	1141                	addi	sp,sp,-16
1c00d20e:	c422                	sw	s0,8(sp)
1c00d210:	1c000437          	lui	s0,0x1c000
1c00d214:	c606                	sw	ra,12(sp)
1c00d216:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00d21a:	852ff0ef          	jal	ra,1c00c26c <pos_io_stop>
1c00d21e:	405c                	lw	a5,4(s0)
1c00d220:	c791                	beqz	a5,1c00d22c <pos_init_stop+0x20>
1c00d222:	0411                	addi	s0,s0,4
1c00d224:	0411                	addi	s0,s0,4
1c00d226:	9782                	jalr	a5
1c00d228:	401c                	lw	a5,0(s0)
1c00d22a:	ffed                	bnez	a5,1c00d224 <pos_init_stop+0x18>
1c00d22c:	40b2                	lw	ra,12(sp)
1c00d22e:	4422                	lw	s0,8(sp)
1c00d230:	0141                	addi	sp,sp,16
1c00d232:	8082                	ret

1c00d234 <pos_alloc_init>:
1c00d234:	00758793          	addi	a5,a1,7
1c00d238:	9be1                	andi	a5,a5,-8
1c00d23a:	40b785b3          	sub	a1,a5,a1
1c00d23e:	c11c                	sw	a5,0(a0)
1c00d240:	40b605b3          	sub	a1,a2,a1
1c00d244:	00b05663          	blez	a1,1c00d250 <pos_alloc_init+0x1c>
1c00d248:	99e1                	andi	a1,a1,-8
1c00d24a:	c38c                	sw	a1,0(a5)
1c00d24c:	0007a223          	sw	zero,4(a5)
1c00d250:	8082                	ret

1c00d252 <pos_alloc>:
1c00d252:	411c                	lw	a5,0(a0)
1c00d254:	00758713          	addi	a4,a1,7
1c00d258:	862a                	mv	a2,a0
1c00d25a:	ff877593          	andi	a1,a4,-8
1c00d25e:	4681                	li	a3,0
1c00d260:	e789                	bnez	a5,1c00d26a <pos_alloc+0x18>
1c00d262:	a091                	j	1c00d2a6 <pos_alloc+0x54>
1c00d264:	86be                	mv	a3,a5
1c00d266:	c505                	beqz	a0,1c00d28e <pos_alloc+0x3c>
1c00d268:	87aa                	mv	a5,a0
1c00d26a:	4398                	lw	a4,0(a5)
1c00d26c:	43c8                	lw	a0,4(a5)
1c00d26e:	feb74be3          	blt	a4,a1,1c00d264 <pos_alloc+0x12>
1c00d272:	00b70f63          	beq	a4,a1,1c00d290 <pos_alloc+0x3e>
1c00d276:	00b78833          	add	a6,a5,a1
1c00d27a:	8f0d                	sub	a4,a4,a1
1c00d27c:	00e82023          	sw	a4,0(a6)
1c00d280:	00a82223          	sw	a0,4(a6)
1c00d284:	ca91                	beqz	a3,1c00d298 <pos_alloc+0x46>
1c00d286:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00d28a:	853e                	mv	a0,a5
1c00d28c:	8082                	ret
1c00d28e:	8082                	ret
1c00d290:	ca81                	beqz	a3,1c00d2a0 <pos_alloc+0x4e>
1c00d292:	c2c8                	sw	a0,4(a3)
1c00d294:	853e                	mv	a0,a5
1c00d296:	8082                	ret
1c00d298:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00d29c:	853e                	mv	a0,a5
1c00d29e:	8082                	ret
1c00d2a0:	c208                	sw	a0,0(a2)
1c00d2a2:	853e                	mv	a0,a5
1c00d2a4:	8082                	ret
1c00d2a6:	4501                	li	a0,0
1c00d2a8:	8082                	ret

1c00d2aa <pos_free>:
1c00d2aa:	411c                	lw	a5,0(a0)
1c00d2ac:	061d                	addi	a2,a2,7
1c00d2ae:	9a61                	andi	a2,a2,-8
1c00d2b0:	c7a1                	beqz	a5,1c00d2f8 <pos_free+0x4e>
1c00d2b2:	00b7e563          	bltu	a5,a1,1c00d2bc <pos_free+0x12>
1c00d2b6:	a089                	j	1c00d2f8 <pos_free+0x4e>
1c00d2b8:	00b7f563          	bgeu	a5,a1,1c00d2c2 <pos_free+0x18>
1c00d2bc:	873e                	mv	a4,a5
1c00d2be:	43dc                	lw	a5,4(a5)
1c00d2c0:	ffe5                	bnez	a5,1c00d2b8 <pos_free+0xe>
1c00d2c2:	00c586b3          	add	a3,a1,a2
1c00d2c6:	00d78b63          	beq	a5,a3,1c00d2dc <pos_free+0x32>
1c00d2ca:	c190                	sw	a2,0(a1)
1c00d2cc:	4314                	lw	a3,0(a4)
1c00d2ce:	c1dc                	sw	a5,4(a1)
1c00d2d0:	00d70533          	add	a0,a4,a3
1c00d2d4:	00a58e63          	beq	a1,a0,1c00d2f0 <pos_free+0x46>
1c00d2d8:	c34c                	sw	a1,4(a4)
1c00d2da:	8082                	ret
1c00d2dc:	4394                	lw	a3,0(a5)
1c00d2de:	43dc                	lw	a5,4(a5)
1c00d2e0:	9636                	add	a2,a2,a3
1c00d2e2:	c190                	sw	a2,0(a1)
1c00d2e4:	4314                	lw	a3,0(a4)
1c00d2e6:	c1dc                	sw	a5,4(a1)
1c00d2e8:	00d70533          	add	a0,a4,a3
1c00d2ec:	fea596e3          	bne	a1,a0,1c00d2d8 <pos_free+0x2e>
1c00d2f0:	9636                	add	a2,a2,a3
1c00d2f2:	c310                	sw	a2,0(a4)
1c00d2f4:	c35c                	sw	a5,4(a4)
1c00d2f6:	8082                	ret
1c00d2f8:	00c58733          	add	a4,a1,a2
1c00d2fc:	00e78663          	beq	a5,a4,1c00d308 <pos_free+0x5e>
1c00d300:	c1dc                	sw	a5,4(a1)
1c00d302:	c190                	sw	a2,0(a1)
1c00d304:	c10c                	sw	a1,0(a0)
1c00d306:	8082                	ret
1c00d308:	4398                	lw	a4,0(a5)
1c00d30a:	43dc                	lw	a5,4(a5)
1c00d30c:	963a                	add	a2,a2,a4
1c00d30e:	c1dc                	sw	a5,4(a1)
1c00d310:	c190                	sw	a2,0(a1)
1c00d312:	bfcd                	j	1c00d304 <pos_free+0x5a>

1c00d314 <pos_allocs_init>:
1c00d314:	1c0065b7          	lui	a1,0x1c006
1c00d318:	1141                	addi	sp,sp,-16
1c00d31a:	58458613          	addi	a2,a1,1412 # 1c006584 <__l2_priv0_end>
1c00d31e:	1c0087b7          	lui	a5,0x1c008
1c00d322:	c606                	sw	ra,12(sp)
1c00d324:	58458593          	addi	a1,a1,1412
1c00d328:	40c78633          	sub	a2,a5,a2
1c00d32c:	04f5d863          	bge	a1,a5,1c00d37c <pos_allocs_init+0x68>
1c00d330:	1c006537          	lui	a0,0x1c006
1c00d334:	57850513          	addi	a0,a0,1400 # 1c006578 <pos_alloc_l2>
1c00d338:	3df5                	jal	1c00d234 <pos_alloc_init>
1c00d33a:	1c00d5b7          	lui	a1,0x1c00d
1c00d33e:	3ec58613          	addi	a2,a1,1004 # 1c00d3ec <__l2_priv1_end>
1c00d342:	1c0107b7          	lui	a5,0x1c010
1c00d346:	3ec58593          	addi	a1,a1,1004
1c00d34a:	40c78633          	sub	a2,a5,a2
1c00d34e:	02f5da63          	bge	a1,a5,1c00d382 <pos_allocs_init+0x6e>
1c00d352:	1c006537          	lui	a0,0x1c006
1c00d356:	57c50513          	addi	a0,a0,1404 # 1c00657c <pos_alloc_l2+0x4>
1c00d35a:	3de9                	jal	1c00d234 <pos_alloc_init>
1c00d35c:	40b2                	lw	ra,12(sp)
1c00d35e:	1c0105b7          	lui	a1,0x1c010
1c00d362:	00058793          	mv	a5,a1
1c00d366:	1c080637          	lui	a2,0x1c080
1c00d36a:	1c006537          	lui	a0,0x1c006
1c00d36e:	8e1d                	sub	a2,a2,a5
1c00d370:	00058593          	mv	a1,a1
1c00d374:	58050513          	addi	a0,a0,1408 # 1c006580 <pos_alloc_l2+0x8>
1c00d378:	0141                	addi	sp,sp,16
1c00d37a:	bd6d                	j	1c00d234 <pos_alloc_init>
1c00d37c:	4581                	li	a1,0
1c00d37e:	4601                	li	a2,0
1c00d380:	bf45                	j	1c00d330 <pos_allocs_init+0x1c>
1c00d382:	4581                	li	a1,0
1c00d384:	4601                	li	a2,0
1c00d386:	b7f1                	j	1c00d352 <pos_allocs_init+0x3e>

1c00d388 <pi_l2_malloc>:
1c00d388:	85aa                	mv	a1,a0
1c00d38a:	1c006537          	lui	a0,0x1c006
1c00d38e:	57850513          	addi	a0,a0,1400 # 1c006578 <pos_alloc_l2>
1c00d392:	b5c1                	j	1c00d252 <pos_alloc>

1c00d394 <pi_l2_free>:
1c00d394:	862e                	mv	a2,a1
1c00d396:	85aa                	mv	a1,a0
1c00d398:	1c006537          	lui	a0,0x1c006
1c00d39c:	57850513          	addi	a0,a0,1400 # 1c006578 <pos_alloc_l2>
1c00d3a0:	b729                	j	1c00d2aa <pos_free>

1c00d3a2 <__rt_handle_illegal_instr>:
1c00d3a2:	8082                	ret

1c00d3a4 <pos_irq_init>:
1c00d3a4:	1a10a737          	lui	a4,0x1a10a
1c00d3a8:	56fd                	li	a3,-1
1c00d3aa:	f14027f3          	csrr	a5,mhartid
1c00d3ae:	8795                	srai	a5,a5,0x5
1c00d3b0:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00d3b4:	03f7f793          	andi	a5,a5,63
1c00d3b8:	477d                	li	a4,31
1c00d3ba:	00e78363          	beq	a5,a4,1c00d3c0 <pos_irq_init+0x1c>
1c00d3be:	8082                	ret
1c00d3c0:	1c0087b7          	lui	a5,0x1c008
1c00d3c4:	00078793          	mv	a5,a5
1c00d3c8:	0017e793          	ori	a5,a5,1
1c00d3cc:	30579073          	csrw	mtvec,a5
1c00d3d0:	8082                	ret

1c00d3d2 <pos_soc_event_init>:
1c00d3d2:	1a1067b7          	lui	a5,0x1a106
1c00d3d6:	577d                	li	a4,-1
1c00d3d8:	c3d8                	sw	a4,4(a5)
1c00d3da:	c798                	sw	a4,8(a5)
1c00d3dc:	c7d8                	sw	a4,12(a5)
1c00d3de:	cb98                	sw	a4,16(a5)
1c00d3e0:	cbd8                	sw	a4,20(a5)
1c00d3e2:	cf98                	sw	a4,24(a5)
1c00d3e4:	cfd8                	sw	a4,28(a5)
1c00d3e6:	d398                	sw	a4,32(a5)
1c00d3e8:	8082                	ret

1c00d3ea <_endtext>:
	...
