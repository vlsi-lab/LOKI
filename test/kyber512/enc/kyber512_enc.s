riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber512/enc/build/enc/enc

/home/alessandra.dolmeta/pqc_riscv/test/kyber512/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	3540406f          	j	1c00c354 <__rt_handle_illegal_instr>
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
1c008084:	2d00406f          	j	1c00c354 <__rt_handle_illegal_instr>

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
1c0080c4:	0a028293          	addi	t0,t0,160 # 1c006160 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	0bc30313          	addi	t1,t1,188 # 1c006184 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	08610113          	addi	sp,sp,134 # 1c006160 <pos_fll_is_on>
1c0080e2:	0a6040ef          	jal	ra,1c00c188 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	0c2040ef          	jal	ra,1c00c1be <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	104030ef          	jal	ra,1c00b206 <exit>
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
1c008172:	0b0030ef          	jal	ra,1c00b222 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	0560306f          	j	1c00b1dc <putchar>

1c00818a <main>:
1c00818a:	994bc7b7          	lui	a5,0x994bc
1c00818e:	9b010113          	addi	sp,sp,-1616
1c008192:	45f78793          	addi	a5,a5,1119 # 994bc45f <__l2_shared_end+0x7d4ac45f>
1c008196:	32f12023          	sw	a5,800(sp)
1c00819a:	384f67b7          	lui	a5,0x384f6
1c00819e:	8d778793          	addi	a5,a5,-1833 # 384f58d7 <__l2_shared_end+0x1c4e58d7>
1c0081a2:	32f12223          	sw	a5,804(sp)
1c0081a6:	0c3637b7          	lui	a5,0xc363
1c0081aa:	8cd78793          	addi	a5,a5,-1843 # c3628cd <__CTOR_LIST__-0xfc9d737>
1c0081ae:	32f12423          	sw	a5,808(sp)
1c0081b2:	905a67b7          	lui	a5,0x905a6
1c0081b6:	2c578793          	addi	a5,a5,709 # 905a62c5 <__l2_shared_end+0x745962c5>
1c0081ba:	32f12623          	sw	a5,812(sp)
1c0081be:	12af97b7          	lui	a5,0x12af9
1c0081c2:	65b78793          	addi	a5,a5,1627 # 12af965b <__CTOR_LIST__-0x95069a9>
1c0081c6:	32f12823          	sw	a5,816(sp)
1c0081ca:	b5d517b7          	lui	a5,0xb5d51
1c0081ce:	e9378793          	addi	a5,a5,-365 # b5d50e93 <__l2_shared_end+0x99d40e93>
1c0081d2:	32f12a23          	sw	a5,820(sp)
1c0081d6:	fc8237b7          	lui	a5,0xfc823
1c0081da:	afe78793          	addi	a5,a5,-1282 # fc822afe <__l2_shared_end+0xe0812afe>
1c0081de:	32f12c23          	sw	a5,824(sp)
1c0081e2:	4bdca7b7          	lui	a5,0x4bdca
1c0081e6:	75a78793          	addi	a5,a5,1882 # 4bdca75a <__l2_shared_end+0x2fdba75a>
1c0081ea:	32f12e23          	sw	a5,828(sp)
1c0081ee:	76e3a7b7          	lui	a5,0x76e3a
1c0081f2:	f8278793          	addi	a5,a5,-126 # 76e39f82 <__l2_shared_end+0x5ae29f82>
1c0081f6:	34f12023          	sw	a5,832(sp)
1c0081fa:	5a3ff7b7          	lui	a5,0x5a3ff
1c0081fe:	13578793          	addi	a5,a5,309 # 5a3ff135 <__l2_shared_end+0x3e3ef135>
1c008202:	34f12223          	sw	a5,836(sp)
1c008206:	08d3a7b7          	lui	a5,0x8d3a
1c00820a:	6f278793          	addi	a5,a5,1778 # 8d3a6f2 <__CTOR_LIST__-0x132c5912>
1c00820e:	34f12423          	sw	a5,840(sp)
1c008212:	8787b7b7          	lui	a5,0x8787b
1c008216:	d1d78793          	addi	a5,a5,-739 # 8787ad1d <__l2_shared_end+0x6b86ad1d>
1c00821a:	34f12623          	sw	a5,844(sp)
1c00821e:	0a8a77b7          	lui	a5,0xa8a7
1c008222:	98578793          	addi	a5,a5,-1659 # a8a6985 <__CTOR_LIST__-0x1175967f>
1c008226:	34f12823          	sw	a5,848(sp)
1c00822a:	4c3717b7          	lui	a5,0x4c371
1c00822e:	4a978793          	addi	a5,a5,1193 # 4c3714a9 <__l2_shared_end+0x303614a9>
1c008232:	34f12a23          	sw	a5,852(sp)
1c008236:	9fb847b7          	lui	a5,0x9fb84
1c00823a:	34e78793          	addi	a5,a5,846 # 9fb8434e <__l2_shared_end+0x83b7434e>
1c00823e:	34f12c23          	sw	a5,856(sp)
1c008242:	927857b7          	lui	a5,0x92785
1c008246:	a0978793          	addi	a5,a5,-1527 # 92784a09 <__l2_shared_end+0x76774a09>
1c00824a:	34f12e23          	sw	a5,860(sp)
1c00824e:	389a17b7          	lui	a5,0x389a1
1c008252:	4aa78793          	addi	a5,a5,1194 # 389a14aa <__l2_shared_end+0x1c9914aa>
1c008256:	36f12023          	sw	a5,864(sp)
1c00825a:	a006a7b7          	lui	a5,0xa006a
1c00825e:	cb478793          	addi	a5,a5,-844 # a0069cb4 <__l2_shared_end+0x84059cb4>
1c008262:	36f12223          	sw	a5,868(sp)
1c008266:	a829e7b7          	lui	a5,0xa829e
1c00826a:	86878793          	addi	a5,a5,-1944 # a829d868 <__l2_shared_end+0x8c28d868>
1c00826e:	36f12423          	sw	a5,872(sp)
1c008272:	53e757b7          	lui	a5,0x53e75
1c008276:	9d278793          	addi	a5,a5,-1582 # 53e749d2 <__l2_shared_end+0x37e649d2>
1c00827a:	36f12623          	sw	a5,876(sp)
1c00827e:	97d077b7          	lui	a5,0x97d07
1c008282:	5a378793          	addi	a5,a5,1443 # 97d075a3 <__l2_shared_end+0x7bcf75a3>
1c008286:	36f12823          	sw	a5,880(sp)
1c00828a:	e662f7b7          	lui	a5,0xe662f
1c00828e:	1a078793          	addi	a5,a5,416 # e662f1a0 <__l2_shared_end+0xca61f1a0>
1c008292:	36f12a23          	sw	a5,884(sp)
1c008296:	e8dfa7b7          	lui	a5,0xe8dfa
1c00829a:	4c378793          	addi	a5,a5,1219 # e8dfa4c3 <__l2_shared_end+0xccdea4c3>
1c00829e:	36f12c23          	sw	a5,888(sp)
1c0082a2:	416197b7          	lui	a5,0x41619
1c0082a6:	7c778793          	addi	a5,a5,1991 # 416197c7 <__l2_shared_end+0x256097c7>
1c0082aa:	36f12e23          	sw	a5,892(sp)
1c0082ae:	d35e67b7          	lui	a5,0xd35e6
1c0082b2:	07b1                	addi	a5,a5,12
1c0082b4:	38f12023          	sw	a5,896(sp)
1c0082b8:	c43fa7b7          	lui	a5,0xc43fa
1c0082bc:	a8978793          	addi	a5,a5,-1399 # c43f9a89 <__l2_shared_end+0xa83e9a89>
1c0082c0:	38f12223          	sw	a5,900(sp)
1c0082c4:	4fe187b7          	lui	a5,0x4fe18
1c0082c8:	84378793          	addi	a5,a5,-1981 # 4fe17843 <__l2_shared_end+0x33e07843>
1c0082cc:	38f12423          	sw	a5,904(sp)
1c0082d0:	8f9e87b7          	lui	a5,0x8f9e8
1c0082d4:	72878793          	addi	a5,a5,1832 # 8f9e8728 <__l2_shared_end+0x739d8728>
1c0082d8:	38f12623          	sw	a5,908(sp)
1c0082dc:	e67787b7          	lui	a5,0xe6778
1c0082e0:	07d1                	addi	a5,a5,20
1c0082e2:	38f12823          	sw	a5,912(sp)
1c0082e6:	aeb247b7          	lui	a5,0xaeb24
1c0082ea:	bbc78793          	addi	a5,a5,-1092 # aeb23bbc <__l2_shared_end+0x92b13bbc>
1c0082ee:	38f12a23          	sw	a5,916(sp)
1c0082f2:	498c17b7          	lui	a5,0x498c1
1c0082f6:	75678793          	addi	a5,a5,1878 # 498c1756 <__l2_shared_end+0x2d8b1756>
1c0082fa:	38f12c23          	sw	a5,920(sp)
1c0082fe:	6abf17b7          	lui	a5,0x6abf1
1c008302:	64112623          	sw	ra,1612(sp)
1c008306:	11678793          	addi	a5,a5,278 # 6abf1116 <__l2_shared_end+0x4ebe1116>
1c00830a:	38f12e23          	sw	a5,924(sp)
1c00830e:	9c9a67b7          	lui	a5,0x9c9a6
1c008312:	faf78793          	addi	a5,a5,-81 # 9c9a5faf <__l2_shared_end+0x80995faf>
1c008316:	3af12023          	sw	a5,928(sp)
1c00831a:	9265b7b7          	lui	a5,0x9265b
1c00831e:	5b978793          	addi	a5,a5,1465 # 9265b5b9 <__l2_shared_end+0x7664b5b9>
1c008322:	3af12223          	sw	a5,932(sp)
1c008326:	407907b7          	lui	a5,0x40790
1c00832a:	02378793          	addi	a5,a5,35 # 40790023 <__l2_shared_end+0x24780023>
1c00832e:	3af12423          	sw	a5,936(sp)
1c008332:	a2f8d7b7          	lui	a5,0xa2f8d
1c008336:	6bc78793          	addi	a5,a5,1724 # a2f8d6bc <__l2_shared_end+0x86f7d6bc>
1c00833a:	3af12623          	sw	a5,940(sp)
1c00833e:	60a587b7          	lui	a5,0x60a58
1c008342:	03278793          	addi	a5,a5,50 # 60a58032 <__l2_shared_end+0x44a48032>
1c008346:	3af12823          	sw	a5,944(sp)
1c00834a:	850e37b7          	lui	a5,0x850e3
1c00834e:	31578793          	addi	a5,a5,789 # 850e3315 <__l2_shared_end+0x690d3315>
1c008352:	3af12a23          	sw	a5,948(sp)
1c008356:	879527b7          	lui	a5,0x87952
1c00835a:	57778793          	addi	a5,a5,1399 # 87952577 <__l2_shared_end+0x6b942577>
1c00835e:	3af12c23          	sw	a5,952(sp)
1c008362:	f40627b7          	lui	a5,0xf4062
1c008366:	6b178793          	addi	a5,a5,1713 # f40626b1 <__l2_shared_end+0xd80526b1>
1c00836a:	3af12e23          	sw	a5,956(sp)
1c00836e:	13ea37b7          	lui	a5,0x13ea3
1c008372:	7c978793          	addi	a5,a5,1993 # 13ea37c9 <__CTOR_LIST__-0x815c83b>
1c008376:	3cf12023          	sw	a5,960(sp)
1c00837a:	bbb377b7          	lui	a5,0xbbb37
1c00837e:	c6078793          	addi	a5,a5,-928 # bbb36c60 <__l2_shared_end+0x9fb26c60>
1c008382:	3cf12223          	sw	a5,964(sp)
1c008386:	ad6667b7          	lui	a5,0xad666
1c00838a:	0791                	addi	a5,a5,4
1c00838c:	3cf12423          	sw	a5,968(sp)
1c008390:	e26147b7          	lui	a5,0xe2614
1c008394:	22978793          	addi	a5,a5,553 # e2614229 <__l2_shared_end+0xc6604229>
1c008398:	3cf12623          	sw	a5,972(sp)
1c00839c:	bc2227b7          	lui	a5,0xbc222
1c0083a0:	0b278793          	addi	a5,a5,178 # bc2220b2 <__l2_shared_end+0xa02120b2>
1c0083a4:	3cf12823          	sw	a5,976(sp)
1c0083a8:	a57847b7          	lui	a5,0xa5784
1c0083ac:	6c778793          	addi	a5,a5,1735 # a57846c7 <__l2_shared_end+0x897746c7>
1c0083b0:	3cf12a23          	sw	a5,980(sp)
1c0083b4:	d87007b7          	lui	a5,0xd8700
1c0083b8:	55278793          	addi	a5,a5,1362 # d8700552 <__l2_shared_end+0xbc6f0552>
1c0083bc:	3cf12c23          	sw	a5,984(sp)
1c0083c0:	42eb57b7          	lui	a5,0x42eb5
1c0083c4:	c8e78793          	addi	a5,a5,-882 # 42eb4c8e <__l2_shared_end+0x26ea4c8e>
1c0083c8:	3cf12e23          	sw	a5,988(sp)
1c0083cc:	e73127b7          	lui	a5,0xe7312
1c0083d0:	66978793          	addi	a5,a5,1641 # e7312669 <__l2_shared_end+0xcb302669>
1c0083d4:	3ef12023          	sw	a5,992(sp)
1c0083d8:	4b1c77b7          	lui	a5,0x4b1c7
1c0083dc:	1e378793          	addi	a5,a5,483 # 4b1c71e3 <__l2_shared_end+0x2f1b71e3>
1c0083e0:	3ef12223          	sw	a5,996(sp)
1c0083e4:	7f34d7b7          	lui	a5,0x7f34d
1c0083e8:	52f78793          	addi	a5,a5,1327 # 7f34d52f <__l2_shared_end+0x6333d52f>
1c0083ec:	3ef12423          	sw	a5,1000(sp)
1c0083f0:	835937b7          	lui	a5,0x83593
1c0083f4:	80378793          	addi	a5,a5,-2045 # 83592803 <__l2_shared_end+0x67582803>
1c0083f8:	3ef12623          	sw	a5,1004(sp)
1c0083fc:	653cd7b7          	lui	a5,0x653cd
1c008400:	b4078793          	addi	a5,a5,-1216 # 653ccb40 <__l2_shared_end+0x493bcb40>
1c008404:	3ef12823          	sw	a5,1008(sp)
1c008408:	c05af7b7          	lui	a5,0xc05af
1c00840c:	5c878793          	addi	a5,a5,1480 # c05af5c8 <__l2_shared_end+0xa459f5c8>
1c008410:	3ef12a23          	sw	a5,1012(sp)
1c008414:	108317b7          	lui	a5,0x10831
1c008418:	62778793          	addi	a5,a5,1575 # 10831627 <__CTOR_LIST__-0xb7ce9dd>
1c00841c:	3ef12c23          	sw	a5,1016(sp)
1c008420:	b96ed7b7          	lui	a5,0xb96ed
1c008424:	b9478793          	addi	a5,a5,-1132 # b96ecb94 <__l2_shared_end+0x9d6dcb94>
1c008428:	3ef12e23          	sw	a5,1020(sp)
1c00842c:	175b17b7          	lui	a5,0x175b1
1c008430:	70f78793          	addi	a5,a5,1807 # 175b170f <__CTOR_LIST__-0x4a4e8f5>
1c008434:	40f12023          	sw	a5,1024(sp)
1c008438:	0365a7b7          	lui	a5,0x365a
1c00843c:	c3d78793          	addi	a5,a5,-963 # 3659c3d <__CTOR_LIST__-0x189a63c7>
1c008440:	40f12223          	sw	a5,1028(sp)
1c008444:	13f5b7b7          	lui	a5,0x13f5b
1c008448:	a2978793          	addi	a5,a5,-1495 # 13f5aa29 <__CTOR_LIST__-0x80a55db>
1c00844c:	40f12423          	sw	a5,1032(sp)
1c008450:	bb3337b7          	lui	a5,0xbb333
1c008454:	66378793          	addi	a5,a5,1635 # bb333663 <__l2_shared_end+0x9f323663>
1c008458:	40f12623          	sw	a5,1036(sp)
1c00845c:	8e85e7b7          	lui	a5,0x8e85e
1c008460:	62c78793          	addi	a5,a5,1580 # 8e85e62c <__l2_shared_end+0x7284e62c>
1c008464:	40f12823          	sw	a5,1040(sp)
1c008468:	c4ab47b7          	lui	a5,0xc4ab4
1c00846c:	77478793          	addi	a5,a5,1908 # c4ab4774 <__l2_shared_end+0xa8aa4774>
1c008470:	40f12a23          	sw	a5,1044(sp)
1c008474:	6db077b7          	lui	a5,0x6db07
1c008478:	f1b78793          	addi	a5,a5,-229 # 6db06f1b <__l2_shared_end+0x51af6f1b>
1c00847c:	40f12c23          	sw	a5,1048(sp)
1c008480:	722587b7          	lui	a5,0x72258
1c008484:	8a878793          	addi	a5,a5,-1880 # 722578a8 <__l2_shared_end+0x562478a8>
1c008488:	40f12e23          	sw	a5,1052(sp)
1c00848c:	96b037b7          	lui	a5,0x96b03
1c008490:	2c378793          	addi	a5,a5,707 # 96b032c3 <__l2_shared_end+0x7aaf32c3>
1c008494:	42f12023          	sw	a5,1056(sp)
1c008498:	266937b7          	lui	a5,0x26693
1c00849c:	66078793          	addi	a5,a5,1632 # 26693660 <__l2_shared_end+0xa683660>
1c0084a0:	42f12223          	sw	a5,1060(sp)
1c0084a4:	d89e57b7          	lui	a5,0xd89e5
1c0084a8:	2bf78793          	addi	a5,a5,703 # d89e52bf <__l2_shared_end+0xbc9d52bf>
1c0084ac:	42f12423          	sw	a5,1064(sp)
1c0084b0:	4362b7b7          	lui	a5,0x4362b
1c0084b4:	aca78793          	addi	a5,a5,-1334 # 4362aaca <__l2_shared_end+0x2761aaca>
1c0084b8:	42f12623          	sw	a5,1068(sp)
1c0084bc:	2b15e7b7          	lui	a5,0x2b15e
1c0084c0:	bcc78793          	addi	a5,a5,-1076 # 2b15dbcc <__l2_shared_end+0xf14dbcc>
1c0084c4:	42f12823          	sw	a5,1072(sp)
1c0084c8:	476ec7b7          	lui	a5,0x476ec
1c0084cc:	a3678793          	addi	a5,a5,-1482 # 476eba36 <__l2_shared_end+0x2b6dba36>
1c0084d0:	42f12a23          	sw	a5,1076(sp)
1c0084d4:	5c1417b7          	lui	a5,0x5c141
1c0084d8:	4c778793          	addi	a5,a5,1223 # 5c1414c7 <__l2_shared_end+0x401314c7>
1c0084dc:	42f12c23          	sw	a5,1080(sp)
1c0084e0:	b6b3f7b7          	lui	a5,0xb6b3f
1c0084e4:	58678793          	addi	a5,a5,1414 # b6b3f586 <__l2_shared_end+0x9ab2f586>
1c0084e8:	42f12e23          	sw	a5,1084(sp)
1c0084ec:	f14ef7b7          	lui	a5,0xf14ef
1c0084f0:	81d78793          	addi	a5,a5,-2019 # f14ee81d <__l2_shared_end+0xd54de81d>
1c0084f4:	44f12023          	sw	a5,1088(sp)
1c0084f8:	fa0317b7          	lui	a5,0xfa031
1c0084fc:	d4778793          	addi	a5,a5,-697 # fa030d47 <__l2_shared_end+0xde020d47>
1c008500:	44f12223          	sw	a5,1092(sp)
1c008504:	51e337b7          	lui	a5,0x51e33
1c008508:	50178793          	addi	a5,a5,1281 # 51e33501 <__l2_shared_end+0x35e23501>
1c00850c:	44f12423          	sw	a5,1096(sp)
1c008510:	b32007b7          	lui	a5,0xb3200
1c008514:	a9478793          	addi	a5,a5,-1388 # b31ffa94 <__l2_shared_end+0x971efa94>
1c008518:	44f12623          	sw	a5,1100(sp)
1c00851c:	a50f87b7          	lui	a5,0xa50f8
1c008520:	6bc78793          	addi	a5,a5,1724 # a50f86bc <__l2_shared_end+0x890e86bc>
1c008524:	44f12823          	sw	a5,1104(sp)
1c008528:	9a29d7b7          	lui	a5,0x9a29d
1c00852c:	10078793          	addi	a5,a5,256 # 9a29d100 <__l2_shared_end+0x7e28d100>
1c008530:	44f12a23          	sw	a5,1108(sp)
1c008534:	56ce97b7          	lui	a5,0x56ce9
1c008538:	8ee78793          	addi	a5,a5,-1810 # 56ce88ee <__l2_shared_end+0x3acd88ee>
1c00853c:	44f12c23          	sw	a5,1112(sp)
1c008540:	c17647b7          	lui	a5,0xc1764
1c008544:	30578793          	addi	a5,a5,773 # c1764305 <__l2_shared_end+0xa5754305>
1c008548:	44f12e23          	sw	a5,1116(sp)
1c00854c:	3d55a7b7          	lui	a5,0x3d55a
1c008550:	c1978793          	addi	a5,a5,-999 # 3d559c19 <__l2_shared_end+0x21549c19>
1c008554:	46f12023          	sw	a5,1120(sp)
1c008558:	6f8d17b7          	lui	a5,0x6f8d1
1c00855c:	ad978793          	addi	a5,a5,-1319 # 6f8d0ad9 <__l2_shared_end+0x538c0ad9>
1c008560:	46f12223          	sw	a5,1124(sp)
1c008564:	c863c7b7          	lui	a5,0xc863c
1c008568:	79c78793          	addi	a5,a5,1948 # c863c79c <__l2_shared_end+0xac62c79c>
1c00856c:	46f12423          	sw	a5,1128(sp)
1c008570:	6dc6d7b7          	lui	a5,0x6dc6d
1c008574:	07c5                	addi	a5,a5,17
1c008576:	46f12623          	sw	a5,1132(sp)
1c00857a:	ab5207b7          	lui	a5,0xab520
1c00857e:	8a678793          	addi	a5,a5,-1882 # ab51f8a6 <__l2_shared_end+0x8f50f8a6>
1c008582:	46f12823          	sw	a5,1136(sp)
1c008586:	356607b7          	lui	a5,0x35660
1c00858a:	5f178793          	addi	a5,a5,1521 # 356605f1 <__l2_shared_end+0x196505f1>
1c00858e:	46f12a23          	sw	a5,1140(sp)
1c008592:	aa6857b7          	lui	a5,0xaa685
1c008596:	aa378793          	addi	a5,a5,-1373 # aa684aa3 <__l2_shared_end+0x8e674aa3>
1c00859a:	46f12c23          	sw	a5,1144(sp)
1c00859e:	8f8617b7          	lui	a5,0x8f861
1c0085a2:	57878793          	addi	a5,a5,1400 # 8f861578 <__l2_shared_end+0x73851578>
1c0085a6:	46f12e23          	sw	a5,1148(sp)
1c0085aa:	5c3a47b7          	lui	a5,0x5c3a4
1c0085ae:	a1578793          	addi	a5,a5,-1515 # 5c3a3a15 <__l2_shared_end+0x40393a15>
1c0085b2:	48f12023          	sw	a5,1152(sp)
1c0085b6:	b1c907b7          	lui	a5,0xb1c90
1c0085ba:	c7778793          	addi	a5,a5,-905 # b1c8fc77 <__l2_shared_end+0x95c7fc77>
1c0085be:	48f12223          	sw	a5,1156(sp)
1c0085c2:	fb0727b7          	lui	a5,0xfb072
1c0085c6:	8eb78793          	addi	a5,a5,-1813 # fb0718eb <__l2_shared_end+0xdf0618eb>
1c0085ca:	48f12423          	sw	a5,1160(sp)
1c0085ce:	b46f37b7          	lui	a5,0xb46f3
1c0085d2:	af678793          	addi	a5,a5,-1290 # b46f2af6 <__l2_shared_end+0x986e2af6>
1c0085d6:	48f12623          	sw	a5,1164(sp)
1c0085da:	005737b7          	lui	a5,0x573
1c0085de:	53b78793          	addi	a5,a5,1339 # 57353b <__CTOR_LIST__-0x1ba8cac9>
1c0085e2:	48f12823          	sw	a5,1168(sp)
1c0085e6:	943087b7          	lui	a5,0x94308
1c0085ea:	2e778793          	addi	a5,a5,743 # 943082e7 <__l2_shared_end+0x782f82e7>
1c0085ee:	48f12a23          	sw	a5,1172(sp)
1c0085f2:	e1a137b7          	lui	a5,0xe1a13
1c0085f6:	b3a78793          	addi	a5,a5,-1222 # e1a12b3a <__l2_shared_end+0xc5a02b3a>
1c0085fa:	48f12c23          	sw	a5,1176(sp)
1c0085fe:	451327b7          	lui	a5,0x45132
1c008602:	81b78793          	addi	a5,a5,-2021 # 4513181b <__l2_shared_end+0x2912181b>
1c008606:	48f12e23          	sw	a5,1180(sp)
1c00860a:	464d27b7          	lui	a5,0x464d2
1c00860e:	bb178793          	addi	a5,a5,-1103 # 464d1bb1 <__l2_shared_end+0x2a4c1bb1>
1c008612:	4af12023          	sw	a5,1184(sp)
1c008616:	357b77b7          	lui	a5,0x357b7
1c00861a:	e2678793          	addi	a5,a5,-474 # 357b6e26 <__l2_shared_end+0x197a6e26>
1c00861e:	4af12223          	sw	a5,1188(sp)
1c008622:	504a07b7          	lui	a5,0x504a0
1c008626:	79f78793          	addi	a5,a5,1951 # 504a079f <__l2_shared_end+0x3449079f>
1c00862a:	4af12423          	sw	a5,1192(sp)
1c00862e:	d75797b7          	lui	a5,0xd7579
1c008632:	80c78793          	addi	a5,a5,-2036 # d757880c <__l2_shared_end+0xbb56880c>
1c008636:	4af12623          	sw	a5,1196(sp)
1c00863a:	640fa7b7          	lui	a5,0x640fa
1c00863e:	69b78793          	addi	a5,a5,1691 # 640fa69b <__l2_shared_end+0x480ea69b>
1c008642:	4af12823          	sw	a5,1200(sp)
1c008646:	2c6637b7          	lui	a5,0x2c663
1c00864a:	d2678793          	addi	a5,a5,-730 # 2c662d26 <__l2_shared_end+0x10652d26>
1c00864e:	4af12a23          	sw	a5,1204(sp)
1c008652:	8984a7b7          	lui	a5,0x8984a
1c008656:	ccd78793          	addi	a5,a5,-819 # 89849ccd <__l2_shared_end+0x6d839ccd>
1c00865a:	4af12c23          	sw	a5,1208(sp)
1c00865e:	f69dc7b7          	lui	a5,0xf69dc
1c008662:	1a478793          	addi	a5,a5,420 # f69dc1a4 <__l2_shared_end+0xda9cc1a4>
1c008666:	4af12e23          	sw	a5,1212(sp)
1c00866a:	19db37b7          	lui	a5,0x19db3
1c00866e:	77478793          	addi	a5,a5,1908 # 19db3774 <__CTOR_LIST__-0x224c890>
1c008672:	4cf12023          	sw	a5,1216(sp)
1c008676:	76b997b7          	lui	a5,0x76b99
1c00867a:	53f78793          	addi	a5,a5,1343 # 76b9953f <__l2_shared_end+0x5ab8953f>
1c00867e:	4cf12223          	sw	a5,1220(sp)
1c008682:	15d987b7          	lui	a5,0x15d98
1c008686:	15178793          	addi	a5,a5,337 # 15d98151 <__CTOR_LIST__-0x6267eb3>
1c00868a:	4cf12423          	sw	a5,1224(sp)
1c00868e:	16b167b7          	lui	a5,0x16b16
1c008692:	22278793          	addi	a5,a5,546 # 16b16222 <__CTOR_LIST__-0x54e9de2>
1c008696:	4cf12623          	sw	a5,1228(sp)
1c00869a:	53be97b7          	lui	a5,0x53be9
1c00869e:	76f78793          	addi	a5,a5,1903 # 53be976f <__l2_shared_end+0x37bd976f>
1c0086a2:	4cf12823          	sw	a5,1232(sp)
1c0086a6:	1c0087b7          	lui	a5,0x1c008
1c0086aa:	f4978793          	addi	a5,a5,-183 # 1c007f49 <__l2_priv0_end+0x1dc5>
1c0086ae:	4cf12a23          	sw	a5,1236(sp)
1c0086b2:	0279c7b7          	lui	a5,0x279c
1c0086b6:	eb178793          	addi	a5,a5,-335 # 279beb1 <__CTOR_LIST__-0x19864153>
1c0086ba:	4cf12c23          	sw	a5,1240(sp)
1c0086be:	892277b7          	lui	a5,0x89227
1c0086c2:	a4d78793          	addi	a5,a5,-1459 # 89226a4d <__l2_shared_end+0x6d216a4d>
1c0086c6:	4cf12e23          	sw	a5,1244(sp)
1c0086ca:	e104c7b7          	lui	a5,0xe104c
1c0086ce:	7bc78793          	addi	a5,a5,1980 # e104c7bc <__l2_shared_end+0xc503c7bc>
1c0086d2:	4ef12023          	sw	a5,1248(sp)
1c0086d6:	0121e7b7          	lui	a5,0x121e
1c0086da:	8b178793          	addi	a5,a5,-1871 # 121d8b1 <__CTOR_LIST__-0x1ade2753>
1c0086de:	4ef12223          	sw	a5,1252(sp)
1c0086e2:	cca367b7          	lui	a5,0xcca36
1c0086e6:	65378793          	addi	a5,a5,1619 # cca36653 <__l2_shared_end+0xb0a26653>
1c0086ea:	4ef12423          	sw	a5,1256(sp)
1c0086ee:	6b4e57b7          	lui	a5,0x6b4e5
1c0086f2:	88a78793          	addi	a5,a5,-1910 # 6b4e488a <__l2_shared_end+0x4f4d488a>
1c0086f6:	4ef12623          	sw	a5,1260(sp)
1c0086fa:	b8f1e7b7          	lui	a5,0xb8f1e
1c0086fe:	1c278793          	addi	a5,a5,450 # b8f1e1c2 <__l2_shared_end+0x9cf0e1c2>
1c008702:	4ef12823          	sw	a5,1264(sp)
1c008706:	2393f7b7          	lui	a5,0x2393f
1c00870a:	18978793          	addi	a5,a5,393 # 2393f189 <__l2_shared_end+0x792f189>
1c00870e:	4ef12a23          	sw	a5,1268(sp)
1c008712:	a01a17b7          	lui	a5,0xa01a1
1c008716:	0e378793          	addi	a5,a5,227 # a01a10e3 <__l2_shared_end+0x841910e3>
1c00871a:	4ef12c23          	sw	a5,1272(sp)
1c00871e:	62eae7b7          	lui	a5,0x62eae
1c008722:	99a78793          	addi	a5,a5,-1638 # 62ead99a <__l2_shared_end+0x46e9d99a>
1c008726:	4ef12e23          	sw	a5,1276(sp)
1c00872a:	030547b7          	lui	a5,0x3054
1c00872e:	0ba78793          	addi	a5,a5,186 # 30540ba <__CTOR_LIST__-0x18fabf4a>
1c008732:	50f12023          	sw	a5,1280(sp)
1c008736:	99b5c7b7          	lui	a5,0x99b5c
1c00873a:	f9b78793          	addi	a5,a5,-101 # 99b5bf9b <__l2_shared_end+0x7db4bf9b>
1c00873e:	50f12223          	sw	a5,1284(sp)
1c008742:	3ff957b7          	lui	a5,0x3ff95
1c008746:	58078793          	addi	a5,a5,1408 # 3ff95580 <__l2_shared_end+0x23f85580>
1c00874a:	50f12423          	sw	a5,1288(sp)
1c00874e:	44b177b7          	lui	a5,0x44b17
1c008752:	7bf78793          	addi	a5,a5,1983 # 44b177bf <__l2_shared_end+0x28b077bf>
1c008756:	50f12623          	sw	a5,1292(sp)
1c00875a:	596d17b7          	lui	a5,0x596d1
1c00875e:	13378793          	addi	a5,a5,307 # 596d1133 <__l2_shared_end+0x3d6c1133>
1c008762:	50f12823          	sw	a5,1296(sp)
1c008766:	542647b7          	lui	a5,0x54264
1c00876a:	25878793          	addi	a5,a5,600 # 54264258 <__l2_shared_end+0x38254258>
1c00876e:	50f12a23          	sw	a5,1300(sp)
1c008772:	2711e7b7          	lui	a5,0x2711e
1c008776:	ada78793          	addi	a5,a5,-1318 # 2711dada <__l2_shared_end+0xb10dada>
1c00877a:	50f12c23          	sw	a5,1304(sp)
1c00877e:	b70247b7          	lui	a5,0xb7024
1c008782:	f2178793          	addi	a5,a5,-223 # b7023f21 <__l2_shared_end+0x9b013f21>
1c008786:	50f12e23          	sw	a5,1308(sp)
1c00878a:	a0a517b7          	lui	a5,0xa0a51
1c00878e:	78778793          	addi	a5,a5,1927 # a0a51787 <__l2_shared_end+0x84a41787>
1c008792:	52f12023          	sw	a5,1312(sp)
1c008796:	d57147b7          	lui	a5,0xd5714
1c00879a:	24578793          	addi	a5,a5,581 # d5714245 <__l2_shared_end+0xb9704245>
1c00879e:	52f12223          	sw	a5,1316(sp)
1c0087a2:	1725c7b7          	lui	a5,0x1725c
1c0087a6:	0b078793          	addi	a5,a5,176 # 1725c0b0 <__CTOR_LIST__-0x4da3f54>
1c0087aa:	52f12423          	sw	a5,1320(sp)
1c0087ae:	3c7ac7b7          	lui	a5,0x3c7ac
1c0087b2:	2a678793          	addi	a5,a5,678 # 3c7ac2a6 <__l2_shared_end+0x2079c2a6>
1c0087b6:	52f12623          	sw	a5,1324(sp)
1c0087ba:	1d1017b7          	lui	a5,0x1d101
1c0087be:	03678793          	addi	a5,a5,54 # 1d101036 <__l2_shared_end+0x10f1036>
1c0087c2:	52f12823          	sw	a5,1328(sp)
1c0087c6:	a20947b7          	lui	a5,0xa2094
1c0087ca:	c7578793          	addi	a5,a5,-907 # a2093c75 <__l2_shared_end+0x86083c75>
1c0087ce:	52f12a23          	sw	a5,1332(sp)
1c0087d2:	547777b7          	lui	a5,0x54777
1c0087d6:	15578793          	addi	a5,a5,341 # 54777155 <__l2_shared_end+0x38767155>
1c0087da:	52f12c23          	sw	a5,1336(sp)
1c0087de:	b213e7b7          	lui	a5,0xb213e
1c0087e2:	c7778793          	addi	a5,a5,-905 # b213dc77 <__l2_shared_end+0x9612dc77>
1c0087e6:	52f12e23          	sw	a5,1340(sp)
1c0087ea:	49db07b7          	lui	a5,0x49db0
1c0087ee:	4e478793          	addi	a5,a5,1252 # 49db04e4 <__l2_shared_end+0x2dda04e4>
1c0087f2:	54f12023          	sw	a5,1344(sp)
1c0087f6:	35a9c7b7          	lui	a5,0x35a9c
1c0087fa:	96578793          	addi	a5,a5,-1691 # 35a9b965 <__l2_shared_end+0x19a8b965>
1c0087fe:	54f12223          	sw	a5,1348(sp)
1c008802:	3ac737b7          	lui	a5,0x3ac73
1c008806:	078d                	addi	a5,a5,3
1c008808:	54f12423          	sw	a5,1352(sp)
1c00880c:	d34237b7          	lui	a5,0xd3423
1c008810:	68a78793          	addi	a5,a5,1674 # d342368a <__l2_shared_end+0xb741368a>
1c008814:	54f12623          	sw	a5,1356(sp)
1c008818:	38a307b7          	lui	a5,0x38a30
1c00881c:	89a78793          	addi	a5,a5,-1894 # 38a2f89a <__l2_shared_end+0x1ca1f89a>
1c008820:	54f12823          	sw	a5,1360(sp)
1c008824:	c685b7b7          	lui	a5,0xc685b
1c008828:	b3978793          	addi	a5,a5,-1223 # c685ab39 <__l2_shared_end+0xaa84ab39>
1c00882c:	54f12a23          	sw	a5,1364(sp)
1c008830:	f21267b7          	lui	a5,0xf2126
1c008834:	b3578793          	addi	a5,a5,-1227 # f2125b35 <__l2_shared_end+0xd6115b35>
1c008838:	54f12c23          	sw	a5,1368(sp)
1c00883c:	814a07b7          	lui	a5,0x814a0
1c008840:	87978793          	addi	a5,a5,-1927 # 8149f879 <__l2_shared_end+0x6548f879>
1c008844:	54f12e23          	sw	a5,1372(sp)
1c008848:	540d37b7          	lui	a5,0x540d3
1c00884c:	83c78793          	addi	a5,a5,-1988 # 540d283c <__l2_shared_end+0x380c283c>
1c008850:	56f12023          	sw	a5,1376(sp)
1c008854:	993e97b7          	lui	a5,0x993e9
1c008858:	1c578793          	addi	a5,a5,453 # 993e91c5 <__l2_shared_end+0x7d3d91c5>
1c00885c:	56f12223          	sw	a5,1380(sp)
1c008860:	0a6a97b7          	lui	a5,0xa6a9
1c008864:	4b678793          	addi	a5,a5,1206 # a6a94b6 <__CTOR_LIST__-0x11956b4e>
1c008868:	56f12423          	sw	a5,1384(sp)
1c00886c:	8c2c07b7          	lui	a5,0x8c2c0
1c008870:	1af78793          	addi	a5,a5,431 # 8c2c01af <__l2_shared_end+0x702b01af>
1c008874:	56f12623          	sw	a5,1388(sp)
1c008878:	965307b7          	lui	a5,0x96530
1c00887c:	2ab78793          	addi	a5,a5,683 # 965302ab <__l2_shared_end+0x7a5202ab>
1c008880:	56f12823          	sw	a5,1392(sp)
1c008884:	02f057b7          	lui	a5,0x2f05
1c008888:	5b278793          	addi	a5,a5,1458 # 2f055b2 <__CTOR_LIST__-0x190faa52>
1c00888c:	56f12a23          	sw	a5,1396(sp)
1c008890:	61c737b7          	lui	a5,0x61c73
1c008894:	7d878793          	addi	a5,a5,2008 # 61c737d8 <__l2_shared_end+0x45c637d8>
1c008898:	56f12c23          	sw	a5,1400(sp)
1c00889c:	eb4a37b7          	lui	a5,0xeb4a3
1c0088a0:	ad478793          	addi	a5,a5,-1324 # eb4a2ad4 <__l2_shared_end+0xcf492ad4>
1c0088a4:	56f12e23          	sw	a5,1404(sp)
1c0088a8:	56f4c7b7          	lui	a5,0x56f4c
1c0088ac:	53878793          	addi	a5,a5,1336 # 56f4c538 <__l2_shared_end+0x3af3c538>
1c0088b0:	58f12023          	sw	a5,1408(sp)
1c0088b4:	169ef7b7          	lui	a5,0x169ef
1c0088b8:	7aa78793          	addi	a5,a5,1962 # 169ef7aa <__CTOR_LIST__-0x561085a>
1c0088bc:	58f12223          	sw	a5,1412(sp)
1c0088c0:	b4c607b7          	lui	a5,0xb4c60
1c0088c4:	02778793          	addi	a5,a5,39 # b4c60027 <__l2_shared_end+0x98c50027>
1c0088c8:	58f12423          	sw	a5,1416(sp)
1c0088cc:	6fca97b7          	lui	a5,0x6fca9
1c0088d0:	e0478793          	addi	a5,a5,-508 # 6fca8e04 <__l2_shared_end+0x53c98e04>
1c0088d4:	58f12623          	sw	a5,1420(sp)
1c0088d8:	f96777b7          	lui	a5,0xf9677
1c0088dc:	39a78793          	addi	a5,a5,922 # f967739a <__l2_shared_end+0xdd66739a>
1c0088e0:	58f12823          	sw	a5,1424(sp)
1c0088e4:	7bd647b7          	lui	a5,0x7bd64
1c0088e8:	80278793          	addi	a5,a5,-2046 # 7bd63802 <__l2_shared_end+0x5fd53802>
1c0088ec:	58f12a23          	sw	a5,1428(sp)
1c0088f0:	0d6a97b7          	lui	a5,0xd6a9
1c0088f4:	ecf78793          	addi	a5,a5,-305 # d6a8ecf <__CTOR_LIST__-0xe957135>
1c0088f8:	58f12c23          	sw	a5,1432(sp)
1c0088fc:	073c57b7          	lui	a5,0x73c5
1c008900:	58a78793          	addi	a5,a5,1418 # 73c558a <__CTOR_LIST__-0x14c3aa7a>
1c008904:	58f12e23          	sw	a5,1436(sp)
1c008908:	d2f927b7          	lui	a5,0xd2f92
1c00890c:	21578793          	addi	a5,a5,533 # d2f92215 <__l2_shared_end+0xb6f82215>
1c008910:	5af12023          	sw	a5,1440(sp)
1c008914:	482857b7          	lui	a5,0x48285
1c008918:	e3978793          	addi	a5,a5,-455 # 48284e39 <__l2_shared_end+0x2c274e39>
1c00891c:	5af12223          	sw	a5,1444(sp)
1c008920:	be4827b7          	lui	a5,0xbe482
1c008924:	03d78793          	addi	a5,a5,61 # be48203d <__l2_shared_end+0xa247203d>
1c008928:	5af12423          	sw	a5,1448(sp)
1c00892c:	8c9c97b7          	lui	a5,0x8c9c9
1c008930:	f2a78793          	addi	a5,a5,-214 # 8c9c8f2a <__l2_shared_end+0x709b8f2a>
1c008934:	5af12623          	sw	a5,1452(sp)
1c008938:	1a9947b7          	lui	a5,0x1a994
1c00893c:	98e78793          	addi	a5,a5,-1650 # 1a99398e <__CTOR_LIST__-0x166c676>
1c008940:	5af12823          	sw	a5,1456(sp)
1c008944:	7e3c27b7          	lui	a5,0x7e3c2
1c008948:	74178793          	addi	a5,a5,1857 # 7e3c2741 <__l2_shared_end+0x623b2741>
1c00894c:	5af12a23          	sw	a5,1460(sp)
1c008950:	6afcb7b7          	lui	a5,0x6afcb
1c008954:	eac78793          	addi	a5,a5,-340 # 6afcaeac <__l2_shared_end+0x4efbaeac>
1c008958:	5af12c23          	sw	a5,1464(sp)
1c00895c:	70e897b7          	lui	a5,0x70e89
1c008960:	b3078793          	addi	a5,a5,-1232 # 70e88b30 <__l2_shared_end+0x54e78b30>
1c008964:	5af12e23          	sw	a5,1468(sp)
1c008968:	174167b7          	lui	a5,0x17416
1c00896c:	bb478793          	addi	a5,a5,-1100 # 17415bb4 <__CTOR_LIST__-0x4bea450>
1c008970:	5cf12023          	sw	a5,1472(sp)
1c008974:	4a9517b7          	lui	a5,0x4a951
1c008978:	26478793          	addi	a5,a5,612 # 4a951264 <__l2_shared_end+0x2e941264>
1c00897c:	5cf12223          	sw	a5,1476(sp)
1c008980:	3dd817b7          	lui	a5,0x3dd81
1c008984:	f1a78793          	addi	a5,a5,-230 # 3dd80f1a <__l2_shared_end+0x21d70f1a>
1c008988:	5cf12423          	sw	a5,1480(sp)
1c00898c:	b25a37b7          	lui	a5,0xb25a3
1c008990:	a3678793          	addi	a5,a5,-1482 # b25a2a36 <__l2_shared_end+0x96592a36>
1c008994:	5cf12623          	sw	a5,1484(sp)
1c008998:	ec3d67b7          	lui	a5,0xec3d6
1c00899c:	68878793          	addi	a5,a5,1672 # ec3d6688 <__l2_shared_end+0xd03c6688>
1c0089a0:	5cf12823          	sw	a5,1488(sp)
1c0089a4:	28b657b7          	lui	a5,0x28b65
1c0089a8:	65478793          	addi	a5,a5,1620 # 28b65654 <__l2_shared_end+0xcb55654>
1c0089ac:	5cf12a23          	sw	a5,1492(sp)
1c0089b0:	ec2c17b7          	lui	a5,0xec2c1
1c0089b4:	b6d78793          	addi	a5,a5,-1171 # ec2c0b6d <__l2_shared_end+0xd02b0b6d>
1c0089b8:	5cf12c23          	sw	a5,1496(sp)
1c0089bc:	fb2227b7          	lui	a5,0xfb222
1c0089c0:	9b078793          	addi	a5,a5,-1616 # fb2219b0 <__l2_shared_end+0xdf2119b0>
1c0089c4:	5cf12e23          	sw	a5,1500(sp)
1c0089c8:	023847b7          	lui	a5,0x2384
1c0089cc:	73d78793          	addi	a5,a5,1853 # 238473d <__CTOR_LIST__-0x19c7b8c7>
1c0089d0:	5ef12023          	sw	a5,1504(sp)
1c0089d4:	638637b7          	lui	a5,0x63863
1c0089d8:	bea78793          	addi	a5,a5,-1046 # 63862bea <__l2_shared_end+0x47852bea>
1c0089dc:	5ef12223          	sw	a5,1508(sp)
1c0089e0:	4502d7b7          	lui	a5,0x4502d
1c0089e4:	e9b78793          	addi	a5,a5,-357 # 4502ce9b <__l2_shared_end+0x2901ce9b>
1c0089e8:	5ef12423          	sw	a5,1512(sp)
1c0089ec:	1c2647b7          	lui	a5,0x1c264
1c0089f0:	90378793          	addi	a5,a5,-1789 # 1c263903 <__l2_shared_end+0x253903>
1c0089f4:	5ef12623          	sw	a5,1516(sp)
1c0089f8:	e114b7b7          	lui	a5,0xe114b
1c0089fc:	1ff78793          	addi	a5,a5,511 # e114b1ff <__l2_shared_end+0xc513b1ff>
1c008a00:	5ef12823          	sw	a5,1520(sp)
1c008a04:	06e927b7          	lui	a5,0x6e92
1c008a08:	5e778793          	addi	a5,a5,1511 # 6e925e7 <__CTOR_LIST__-0x1516da1d>
1c008a0c:	5ef12a23          	sw	a5,1524(sp)
1c008a10:	166a87b7          	lui	a5,0x166a8
1c008a14:	27778793          	addi	a5,a5,631 # 166a8277 <__CTOR_LIST__-0x5957d8d>
1c008a18:	5ef12c23          	sw	a5,1528(sp)
1c008a1c:	b286f7b7          	lui	a5,0xb286f
1c008a20:	68878793          	addi	a5,a5,1672 # b286f688 <__l2_shared_end+0x9685f688>
1c008a24:	5ef12e23          	sw	a5,1532(sp)
1c008a28:	9c7787b7          	lui	a5,0x9c778
1c008a2c:	89a78793          	addi	a5,a5,-1894 # 9c77789a <__l2_shared_end+0x8076789a>
1c008a30:	60f12023          	sw	a5,1536(sp)
1c008a34:	5d3127b7          	lui	a5,0x5d312
1c008a38:	29878793          	addi	a5,a5,664 # 5d312298 <__l2_shared_end+0x41302298>
1c008a3c:	60f12223          	sw	a5,1540(sp)
1c008a40:	5357c7b7          	lui	a5,0x5357c
1c008a44:	5af78793          	addi	a5,a5,1455 # 5357c5af <__l2_shared_end+0x3756c5af>
1c008a48:	60f12423          	sw	a5,1544(sp)
1c008a4c:	d38e97b7          	lui	a5,0xd38e9
1c008a50:	ce978793          	addi	a5,a5,-791 # d38e8ce9 <__l2_shared_end+0xb78d8ce9>
1c008a54:	60f12623          	sw	a5,1548(sp)
1c008a58:	322b27b7          	lui	a5,0x322b2
1c008a5c:	f2278793          	addi	a5,a5,-222 # 322b1f22 <__l2_shared_end+0x162a1f22>
1c008a60:	60f12823          	sw	a5,1552(sp)
1c008a64:	8a5c87b7          	lui	a5,0x8a5c8
1c008a68:	02078793          	addi	a5,a5,32 # 8a5c8020 <__l2_shared_end+0x6e5b8020>
1c008a6c:	60f12a23          	sw	a5,1556(sp)
1c008a70:	5533a7b7          	lui	a5,0x5533a
1c008a74:	82878793          	addi	a5,a5,-2008 # 55339828 <__l2_shared_end+0x39329828>
1c008a78:	60f12c23          	sw	a5,1560(sp)
1c008a7c:	6fa387b7          	lui	a5,0x6fa38
1c008a80:	d2078793          	addi	a5,a5,-736 # 6fa37d20 <__l2_shared_end+0x53a27d20>
1c008a84:	60f12e23          	sw	a5,1564(sp)
1c008a88:	c89b37b7          	lui	a5,0xc89b3
1c008a8c:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c008a90:	62f12023          	sw	a5,1568(sp)
1c008a94:	b91317b7          	lui	a5,0xb9131
1c008a98:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c008a9c:	62f12223          	sw	a5,1572(sp)
1c008aa0:	6f5847b7          	lui	a5,0x6f584
1c008aa4:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c008aa8:	62f12423          	sw	a5,1576(sp)
1c008aac:	b1fe87b7          	lui	a5,0xb1fe8
1c008ab0:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c008ab4:	62f12623          	sw	a5,1580(sp)
1c008ab8:	405b07b7          	lui	a5,0x405b0
1c008abc:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c008ac0:	62f12823          	sw	a5,1584(sp)
1c008ac4:	433bd7b7          	lui	a5,0x433bd
1c008ac8:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c008acc:	62f12a23          	sw	a5,1588(sp)
1c008ad0:	a45f47b7          	lui	a5,0xa45f4
1c008ad4:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c008ad8:	62f12c23          	sw	a5,1592(sp)
1c008adc:	1c000537          	lui	a0,0x1c000
1c008ae0:	8d6c47b7          	lui	a5,0x8d6c4
1c008ae4:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c008ae8:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c008aec:	62f12e23          	sw	a5,1596(sp)
1c008af0:	670020ef          	jal	ra,1c00b160 <puts>
1c008af4:	1608                	addi	a0,sp,800
1c008af6:	32000593          	li	a1,800
1c008afa:	e5aff0ef          	jal	ra,1c008154 <printbytes>
1c008afe:	1610                	addi	a2,sp,800
1c008b00:	858a                	mv	a1,sp
1c008b02:	1008                	addi	a0,sp,32
1c008b04:	481010ef          	jal	ra,1c00a784 <PQCLEAN_KYBER512_CLEAN_crypto_kem_enc>
1c008b08:	1c000537          	lui	a0,0x1c000
1c008b0c:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c008b10:	650020ef          	jal	ra,1c00b160 <puts>
1c008b14:	1c000537          	lui	a0,0x1c000
1c008b18:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c008b1c:	644020ef          	jal	ra,1c00b160 <puts>
1c008b20:	30000593          	li	a1,768
1c008b24:	1008                	addi	a0,sp,32
1c008b26:	e2eff0ef          	jal	ra,1c008154 <printbytes>
1c008b2a:	1c000537          	lui	a0,0x1c000
1c008b2e:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c008b32:	62e020ef          	jal	ra,1c00b160 <puts>
1c008b36:	850a                	mv	a0,sp
1c008b38:	02000593          	li	a1,32
1c008b3c:	e18ff0ef          	jal	ra,1c008154 <printbytes>
1c008b40:	64c12083          	lw	ra,1612(sp)
1c008b44:	4501                	li	a0,0
1c008b46:	65010113          	addi	sp,sp,1616
1c008b4a:	8082                	ret

1c008b4c <pos_fll_init>:
1c008b4c:	1101                	addi	sp,sp,-32
1c008b4e:	1a1005b7          	lui	a1,0x1a100
1c008b52:	c64e                	sw	s3,12(sp)
1c008b54:	00451613          	slli	a2,a0,0x4
1c008b58:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c008b5c:	99b2                	add	s3,s3,a2
1c008b5e:	0009a703          	lw	a4,0(s3)
1c008b62:	ca26                	sw	s1,20(sp)
1c008b64:	ce06                	sw	ra,28(sp)
1c008b66:	cc22                	sw	s0,24(sp)
1c008b68:	c84a                	sw	s2,16(sp)
1c008b6a:	c452                	sw	s4,8(sp)
1c008b6c:	84aa                	mv	s1,a0
1c008b6e:	87ba                	mv	a5,a4
1c008b70:	04074763          	bltz	a4,1c008bbe <pos_fll_init+0x72>
1c008b74:	00858693          	addi	a3,a1,8
1c008b78:	96b2                	add	a3,a3,a2
1c008b7a:	429c                	lw	a5,0(a3)
1c008b7c:	f0000537          	lui	a0,0xf0000
1c008b80:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c008b84:	8fe9                	and	a5,a5,a0
1c008b86:	00502537          	lui	a0,0x502
1c008b8a:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c008b8e:	8fc9                	or	a5,a5,a0
1c008b90:	05b1                	addi	a1,a1,12
1c008b92:	c29c                	sw	a5,0(a3)
1c008b94:	962e                	add	a2,a2,a1
1c008b96:	4214                	lw	a3,0(a2)
1c008b98:	fc0107b7          	lui	a5,0xfc010
1c008b9c:	17fd                	addi	a5,a5,-1
1c008b9e:	01875593          	srli	a1,a4,0x18
1c008ba2:	8efd                	and	a3,a3,a5
1c008ba4:	0c05e593          	ori	a1,a1,192
1c008ba8:	00871793          	slli	a5,a4,0x8
1c008bac:	014c0537          	lui	a0,0x14c0
1c008bb0:	8ec9                	or	a3,a3,a0
1c008bb2:	05e2                	slli	a1,a1,0x18
1c008bb4:	83a1                	srli	a5,a5,0x8
1c008bb6:	c214                	sw	a3,0(a2)
1c008bb8:	8fcd                	or	a5,a5,a1
1c008bba:	00f9a023          	sw	a5,0(s3)
1c008bbe:	1c006437          	lui	s0,0x1c006
1c008bc2:	16440413          	addi	s0,s0,356 # 1c006164 <pos_fll_freq>
1c008bc6:	00249a13          	slli	s4,s1,0x2
1c008bca:	014406b3          	add	a3,s0,s4
1c008bce:	0006a903          	lw	s2,0(a3)
1c008bd2:	02091d63          	bnez	s2,1c008c0c <pos_fll_init+0xc0>
1c008bd6:	83e9                	srli	a5,a5,0x1a
1c008bd8:	0742                	slli	a4,a4,0x10
1c008bda:	8341                	srli	a4,a4,0x10
1c008bdc:	8bbd                	andi	a5,a5,15
1c008bde:	073e                	slli	a4,a4,0xf
1c008be0:	17fd                	addi	a5,a5,-1
1c008be2:	00f75933          	srl	s2,a4,a5
1c008be6:	0126a023          	sw	s2,0(a3)
1c008bea:	1c0066b7          	lui	a3,0x1c006
1c008bee:	16068693          	addi	a3,a3,352 # 1c006160 <pos_fll_is_on>
1c008bf2:	96a6                	add	a3,a3,s1
1c008bf4:	4785                	li	a5,1
1c008bf6:	00f68023          	sb	a5,0(a3)
1c008bfa:	40f2                	lw	ra,28(sp)
1c008bfc:	4462                	lw	s0,24(sp)
1c008bfe:	44d2                	lw	s1,20(sp)
1c008c00:	49b2                	lw	s3,12(sp)
1c008c02:	4a22                	lw	s4,8(sp)
1c008c04:	854a                	mv	a0,s2
1c008c06:	4942                	lw	s2,16(sp)
1c008c08:	6105                	addi	sp,sp,32
1c008c0a:	8082                	ret
1c008c0c:	854a                	mv	a0,s2
1c008c0e:	cfaff0ef          	jal	ra,1c008108 <__clzsi2>
1c008c12:	1579                	addi	a0,a0,-2
1c008c14:	8105                	srli	a0,a0,0x1
1c008c16:	c939                	beqz	a0,1c008c6c <pos_fll_init+0x120>
1c008c18:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c008c1c:	1c0066b7          	lui	a3,0x1c006
1c008c20:	4785                	li	a5,1
1c008c22:	00c797b3          	sll	a5,a5,a2
1c008c26:	00a91733          	sll	a4,s2,a0
1c008c2a:	16068693          	addi	a3,a3,352 # 1c006160 <pos_fll_is_on>
1c008c2e:	7661                	lui	a2,0xffff8
1c008c30:	8e79                	and	a2,a2,a4
1c008c32:	009685b3          	add	a1,a3,s1
1c008c36:	97b2                	add	a5,a5,a2
1c008c38:	0005c603          	lbu	a2,0(a1)
1c008c3c:	9452                	add	s0,s0,s4
1c008c3e:	00a7d7b3          	srl	a5,a5,a0
1c008c42:	c01c                	sw	a5,0(s0)
1c008c44:	d65d                	beqz	a2,1c008bf2 <pos_fll_init+0xa6>
1c008c46:	0009a783          	lw	a5,0(s3)
1c008c4a:	833d                	srli	a4,a4,0xf
1c008c4c:	0742                	slli	a4,a4,0x10
1c008c4e:	7641                	lui	a2,0xffff0
1c008c50:	8341                	srli	a4,a4,0x10
1c008c52:	8ff1                	and	a5,a5,a2
1c008c54:	8fd9                	or	a5,a5,a4
1c008c56:	0505                	addi	a0,a0,1
1c008c58:	c4000737          	lui	a4,0xc4000
1c008c5c:	893d                	andi	a0,a0,15
1c008c5e:	177d                	addi	a4,a4,-1
1c008c60:	056a                	slli	a0,a0,0x1a
1c008c62:	8ff9                	and	a5,a5,a4
1c008c64:	8d5d                	or	a0,a0,a5
1c008c66:	00a9a023          	sw	a0,0(s3)
1c008c6a:	b761                	j	1c008bf2 <pos_fll_init+0xa6>
1c008c6c:	4505                	li	a0,1
1c008c6e:	b76d                	j	1c008c18 <pos_fll_init+0xcc>

1c008c70 <pos_fll_constructor>:
1c008c70:	1c0067b7          	lui	a5,0x1c006
1c008c74:	16478793          	addi	a5,a5,356 # 1c006164 <pos_fll_freq>
1c008c78:	0007a023          	sw	zero,0(a5)
1c008c7c:	0007a223          	sw	zero,4(a5)
1c008c80:	1c0067b7          	lui	a5,0x1c006
1c008c84:	16079023          	sh	zero,352(a5) # 1c006160 <pos_fll_is_on>
1c008c88:	8082                	ret

1c008c8a <pos_soc_init>:
1c008c8a:	1141                	addi	sp,sp,-16
1c008c8c:	c606                	sw	ra,12(sp)
1c008c8e:	c422                	sw	s0,8(sp)
1c008c90:	37c5                	jal	1c008c70 <pos_fll_constructor>
1c008c92:	4501                	li	a0,0
1c008c94:	3d65                	jal	1c008b4c <pos_fll_init>
1c008c96:	1c006437          	lui	s0,0x1c006
1c008c9a:	87aa                	mv	a5,a0
1c008c9c:	16c40413          	addi	s0,s0,364 # 1c00616c <pos_freq_domains>
1c008ca0:	4505                	li	a0,1
1c008ca2:	c01c                	sw	a5,0(s0)
1c008ca4:	3565                	jal	1c008b4c <pos_fll_init>
1c008ca6:	40b2                	lw	ra,12(sp)
1c008ca8:	c408                	sw	a0,8(s0)
1c008caa:	4422                	lw	s0,8(sp)
1c008cac:	0141                	addi	sp,sp,16
1c008cae:	8082                	ret

1c008cb0 <KeccakF1600_StatePermute>:
1c008cb0:	1a400837          	lui	a6,0x1a400
1c008cb4:	87aa                	mv	a5,a0
1c008cb6:	0c850613          	addi	a2,a0,200
1c008cba:	1141                	addi	sp,sp,-16
1c008cbc:	40a80533          	sub	a0,a6,a0
1c008cc0:	4394                	lw	a3,0(a5)
1c008cc2:	00f50733          	add	a4,a0,a5
1c008cc6:	0791                	addi	a5,a5,4
1c008cc8:	c314                	sw	a3,0(a4)
1c008cca:	fec79be3          	bne	a5,a2,1c008cc0 <KeccakF1600_StatePermute+0x10>
1c008cce:	4785                	li	a5,1
1c008cd0:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008cd4:	1a400737          	lui	a4,0x1a400
1c008cd8:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008cdc:	8b85                	andi	a5,a5,1
1c008cde:	dfed                	beqz	a5,1c008cd8 <KeccakF1600_StatePermute+0x28>
1c008ce0:	c602                	sw	zero,12(sp)
1c008ce2:	4732                	lw	a4,12(sp)
1c008ce4:	03100793          	li	a5,49
1c008ce8:	02e7c663          	blt	a5,a4,1c008d14 <KeccakF1600_StatePermute+0x64>
1c008cec:	1a400637          	lui	a2,0x1a400
1c008cf0:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008cf4:	03100513          	li	a0,49
1c008cf8:	4732                	lw	a4,12(sp)
1c008cfa:	47b2                	lw	a5,12(sp)
1c008cfc:	070a                	slli	a4,a4,0x2
1c008cfe:	9732                	add	a4,a4,a2
1c008d00:	4314                	lw	a3,0(a4)
1c008d02:	4732                	lw	a4,12(sp)
1c008d04:	078a                	slli	a5,a5,0x2
1c008d06:	97ae                	add	a5,a5,a1
1c008d08:	0705                	addi	a4,a4,1
1c008d0a:	c63a                	sw	a4,12(sp)
1c008d0c:	4732                	lw	a4,12(sp)
1c008d0e:	c394                	sw	a3,0(a5)
1c008d10:	fee554e3          	bge	a0,a4,1c008cf8 <KeccakF1600_StatePermute+0x48>
1c008d14:	0141                	addi	sp,sp,16
1c008d16:	8082                	ret

1c008d18 <KYBER_poly_ntt>:
1c008d18:	1a4007b7          	lui	a5,0x1a400
1c008d1c:	40000713          	li	a4,1024
1c008d20:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008d24:	3007a423          	sw	zero,776(a5)
1c008d28:	4705                	li	a4,1
1c008d2a:	30e7a423          	sw	a4,776(a5)
1c008d2e:	3007a423          	sw	zero,776(a5)
1c008d32:	20050693          	addi	a3,a0,512
1c008d36:	1a400737          	lui	a4,0x1a400
1c008d3a:	411c                	lw	a5,0(a0)
1c008d3c:	0511                	addi	a0,a0,4
1c008d3e:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008d42:	fed51ce3          	bne	a0,a3,1c008d3a <KYBER_poly_ntt+0x22>
1c008d46:	08000793          	li	a5,128
1c008d4a:	30f72423          	sw	a5,776(a4)
1c008d4e:	30072423          	sw	zero,776(a4)
1c008d52:	1a400737          	lui	a4,0x1a400
1c008d56:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008d5a:	8b85                	andi	a5,a5,1
1c008d5c:	dfed                	beqz	a5,1c008d56 <KYBER_poly_ntt+0x3e>
1c008d5e:	47c1                	li	a5,16
1c008d60:	30f72423          	sw	a5,776(a4)
1c008d64:	30072423          	sw	zero,776(a4)
1c008d68:	20058693          	addi	a3,a1,512
1c008d6c:	1a400737          	lui	a4,0x1a400
1c008d70:	0001                	nop
1c008d72:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008d76:	0591                	addi	a1,a1,4
1c008d78:	fef5ae23          	sw	a5,-4(a1)
1c008d7c:	fed59ae3          	bne	a1,a3,1c008d70 <KYBER_poly_ntt+0x58>
1c008d80:	8082                	ret

1c008d82 <KYBER_poly_intt>:
1c008d82:	1a4007b7          	lui	a5,0x1a400
1c008d86:	40000713          	li	a4,1024
1c008d8a:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008d8e:	3007a423          	sw	zero,776(a5)
1c008d92:	4709                	li	a4,2
1c008d94:	30e7a423          	sw	a4,776(a5)
1c008d98:	3007a423          	sw	zero,776(a5)
1c008d9c:	20050693          	addi	a3,a0,512
1c008da0:	1a400737          	lui	a4,0x1a400
1c008da4:	411c                	lw	a5,0(a0)
1c008da6:	0511                	addi	a0,a0,4
1c008da8:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008dac:	fed51ce3          	bne	a0,a3,1c008da4 <KYBER_poly_intt+0x22>
1c008db0:	20000793          	li	a5,512
1c008db4:	30f72423          	sw	a5,776(a4)
1c008db8:	30072423          	sw	zero,776(a4)
1c008dbc:	1a400737          	lui	a4,0x1a400
1c008dc0:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008dc4:	8b85                	andi	a5,a5,1
1c008dc6:	dfed                	beqz	a5,1c008dc0 <KYBER_poly_intt+0x3e>
1c008dc8:	47c1                	li	a5,16
1c008dca:	30f72423          	sw	a5,776(a4)
1c008dce:	30072423          	sw	zero,776(a4)
1c008dd2:	20058693          	addi	a3,a1,512
1c008dd6:	1a400737          	lui	a4,0x1a400
1c008dda:	0001                	nop
1c008ddc:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008de0:	0591                	addi	a1,a1,4
1c008de2:	fef5ae23          	sw	a5,-4(a1)
1c008de6:	fed59ae3          	bne	a1,a3,1c008dda <KYBER_poly_intt+0x58>
1c008dea:	8082                	ret

1c008dec <KYBER_poly_pwm>:
1c008dec:	1a4007b7          	lui	a5,0x1a400
1c008df0:	40000713          	li	a4,1024
1c008df4:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008df8:	3007a423          	sw	zero,776(a5)
1c008dfc:	4709                	li	a4,2
1c008dfe:	30e7a423          	sw	a4,776(a5)
1c008e02:	3007a423          	sw	zero,776(a5)
1c008e06:	20058693          	addi	a3,a1,512
1c008e0a:	1a400737          	lui	a4,0x1a400
1c008e0e:	419c                	lw	a5,0(a1)
1c008e10:	0591                	addi	a1,a1,4
1c008e12:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008e16:	fed59ce3          	bne	a1,a3,1c008e0e <KYBER_poly_pwm+0x22>
1c008e1a:	47a1                	li	a5,8
1c008e1c:	30f72423          	sw	a5,776(a4)
1c008e20:	30072423          	sw	zero,776(a4)
1c008e24:	20060693          	addi	a3,a2,512
1c008e28:	1a400737          	lui	a4,0x1a400
1c008e2c:	421c                	lw	a5,0(a2)
1c008e2e:	0611                	addi	a2,a2,4
1c008e30:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008e34:	fec69ce3          	bne	a3,a2,1c008e2c <KYBER_poly_pwm+0x40>
1c008e38:	10000793          	li	a5,256
1c008e3c:	30f72423          	sw	a5,776(a4)
1c008e40:	30072423          	sw	zero,776(a4)
1c008e44:	1a400737          	lui	a4,0x1a400
1c008e48:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008e4c:	8b85                	andi	a5,a5,1
1c008e4e:	dfed                	beqz	a5,1c008e48 <KYBER_poly_pwm+0x5c>
1c008e50:	47c1                	li	a5,16
1c008e52:	30f72423          	sw	a5,776(a4)
1c008e56:	30072423          	sw	zero,776(a4)
1c008e5a:	20050693          	addi	a3,a0,512
1c008e5e:	1a400737          	lui	a4,0x1a400
1c008e62:	0001                	nop
1c008e64:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008e68:	0511                	addi	a0,a0,4
1c008e6a:	fef52e23          	sw	a5,-4(a0)
1c008e6e:	fed51ae3          	bne	a0,a3,1c008e62 <KYBER_poly_pwm+0x76>
1c008e72:	8082                	ret

1c008e74 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>:
1c008e74:	002496b7          	lui	a3,0x249
1c008e78:	0c058e13          	addi	t3,a1,192
1c008e7c:	24968693          	addi	a3,a3,585 # 249249 <__CTOR_LIST__-0x1bdb6dbb>
1c008e80:	0015c703          	lbu	a4,1(a1)
1c008e84:	0025c783          	lbu	a5,2(a1)
1c008e88:	0005c603          	lbu	a2,0(a1)
1c008e8c:	0722                	slli	a4,a4,0x8
1c008e8e:	07c2                	slli	a5,a5,0x10
1c008e90:	8f5d                	or	a4,a4,a5
1c008e92:	8f51                	or	a4,a4,a2
1c008e94:	00175793          	srli	a5,a4,0x1
1c008e98:	00275613          	srli	a2,a4,0x2
1c008e9c:	8e75                	and	a2,a2,a3
1c008e9e:	8ff5                	and	a5,a5,a3
1c008ea0:	8f75                	and	a4,a4,a3
1c008ea2:	97b2                	add	a5,a5,a2
1c008ea4:	97ba                	add	a5,a5,a4
1c008ea6:	0037df13          	srli	t5,a5,0x3
1c008eaa:	0067d813          	srli	a6,a5,0x6
1c008eae:	0097de93          	srli	t4,a5,0x9
1c008eb2:	00c7d613          	srli	a2,a5,0xc
1c008eb6:	00f7d313          	srli	t1,a5,0xf
1c008eba:	0127d713          	srli	a4,a5,0x12
1c008ebe:	0077f893          	andi	a7,a5,7
1c008ec2:	007f7f13          	andi	t5,t5,7
1c008ec6:	00787813          	andi	a6,a6,7
1c008eca:	007efe93          	andi	t4,t4,7
1c008ece:	8a1d                	andi	a2,a2,7
1c008ed0:	00737313          	andi	t1,t1,7
1c008ed4:	8b1d                	andi	a4,a4,7
1c008ed6:	83d5                	srli	a5,a5,0x15
1c008ed8:	41e888b3          	sub	a7,a7,t5
1c008edc:	41d80833          	sub	a6,a6,t4
1c008ee0:	40660633          	sub	a2,a2,t1
1c008ee4:	40f707b3          	sub	a5,a4,a5
1c008ee8:	01151023          	sh	a7,0(a0)
1c008eec:	01051123          	sh	a6,2(a0)
1c008ef0:	00c51223          	sh	a2,4(a0)
1c008ef4:	00f51323          	sh	a5,6(a0)
1c008ef8:	058d                	addi	a1,a1,3
1c008efa:	0521                	addi	a0,a0,8
1c008efc:	f8be12e3          	bne	t3,a1,1c008e80 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1+0xc>
1c008f00:	8082                	ret

1c008f02 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>:
1c008f02:	1101                	addi	sp,sp,-32
1c008f04:	55555f37          	lui	t5,0x55555
1c008f08:	ce22                	sw	s0,28(sp)
1c008f0a:	cc26                	sw	s1,24(sp)
1c008f0c:	ca4a                	sw	s2,20(sp)
1c008f0e:	c84e                	sw	s3,16(sp)
1c008f10:	c652                	sw	s4,12(sp)
1c008f12:	20050f93          	addi	t6,a0,512
1c008f16:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008f1a:	0015c683          	lbu	a3,1(a1)
1c008f1e:	0005c603          	lbu	a2,0(a1)
1c008f22:	0025c783          	lbu	a5,2(a1)
1c008f26:	0035c703          	lbu	a4,3(a1)
1c008f2a:	06a2                	slli	a3,a3,0x8
1c008f2c:	8ed1                	or	a3,a3,a2
1c008f2e:	07c2                	slli	a5,a5,0x10
1c008f30:	8fd5                	or	a5,a5,a3
1c008f32:	0762                	slli	a4,a4,0x18
1c008f34:	8f5d                	or	a4,a4,a5
1c008f36:	00175793          	srli	a5,a4,0x1
1c008f3a:	01e7f7b3          	and	a5,a5,t5
1c008f3e:	01e77733          	and	a4,a4,t5
1c008f42:	97ba                	add	a5,a5,a4
1c008f44:	0027da13          	srli	s4,a5,0x2
1c008f48:	0047d313          	srli	t1,a5,0x4
1c008f4c:	0067d993          	srli	s3,a5,0x6
1c008f50:	0087d893          	srli	a7,a5,0x8
1c008f54:	00a7d913          	srli	s2,a5,0xa
1c008f58:	00c7d813          	srli	a6,a5,0xc
1c008f5c:	00e7d493          	srli	s1,a5,0xe
1c008f60:	0107d613          	srli	a2,a5,0x10
1c008f64:	0127d413          	srli	s0,a5,0x12
1c008f68:	0147d693          	srli	a3,a5,0x14
1c008f6c:	0167d393          	srli	t2,a5,0x16
1c008f70:	0187d713          	srli	a4,a5,0x18
1c008f74:	01a7d293          	srli	t0,a5,0x1a
1c008f78:	01c7de93          	srli	t4,a5,0x1c
1c008f7c:	0037fe13          	andi	t3,a5,3
1c008f80:	003a7a13          	andi	s4,s4,3
1c008f84:	00337313          	andi	t1,t1,3
1c008f88:	0039f993          	andi	s3,s3,3
1c008f8c:	0038f893          	andi	a7,a7,3
1c008f90:	00397913          	andi	s2,s2,3
1c008f94:	00387813          	andi	a6,a6,3
1c008f98:	888d                	andi	s1,s1,3
1c008f9a:	8a0d                	andi	a2,a2,3
1c008f9c:	880d                	andi	s0,s0,3
1c008f9e:	8a8d                	andi	a3,a3,3
1c008fa0:	0033f393          	andi	t2,t2,3
1c008fa4:	8b0d                	andi	a4,a4,3
1c008fa6:	0032f293          	andi	t0,t0,3
1c008faa:	003efe93          	andi	t4,t4,3
1c008fae:	83f9                	srli	a5,a5,0x1e
1c008fb0:	414e0e33          	sub	t3,t3,s4
1c008fb4:	41330333          	sub	t1,t1,s3
1c008fb8:	412888b3          	sub	a7,a7,s2
1c008fbc:	40980833          	sub	a6,a6,s1
1c008fc0:	8e01                	sub	a2,a2,s0
1c008fc2:	407686b3          	sub	a3,a3,t2
1c008fc6:	40570733          	sub	a4,a4,t0
1c008fca:	40fe87b3          	sub	a5,t4,a5
1c008fce:	01c51023          	sh	t3,0(a0)
1c008fd2:	00651123          	sh	t1,2(a0)
1c008fd6:	01151223          	sh	a7,4(a0)
1c008fda:	01051323          	sh	a6,6(a0)
1c008fde:	00c51423          	sh	a2,8(a0)
1c008fe2:	00d51523          	sh	a3,10(a0)
1c008fe6:	00e51623          	sh	a4,12(a0)
1c008fea:	00f51723          	sh	a5,14(a0)
1c008fee:	0541                	addi	a0,a0,16
1c008ff0:	0591                	addi	a1,a1,4
1c008ff2:	f3f514e3          	bne	a0,t6,1c008f1a <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2+0x18>
1c008ff6:	4472                	lw	s0,28(sp)
1c008ff8:	44e2                	lw	s1,24(sp)
1c008ffa:	4952                	lw	s2,20(sp)
1c008ffc:	49c2                	lw	s3,16(sp)
1c008ffe:	4a32                	lw	s4,12(sp)
1c009000:	6105                	addi	sp,sp,32
1c009002:	8082                	ret

1c009004 <keccak_absorb.constprop.1>:
1c009004:	7151                	addi	sp,sp,-240
1c009006:	d3a6                	sw	s1,228(sp)
1c009008:	cfce                	sw	s3,220(sp)
1c00900a:	cdd2                	sw	s4,216(sp)
1c00900c:	cbd6                	sw	s5,212(sp)
1c00900e:	84b6                	mv	s1,a3
1c009010:	d786                	sw	ra,236(sp)
1c009012:	d5a2                	sw	s0,232(sp)
1c009014:	d1ca                	sw	s2,224(sp)
1c009016:	c9da                	sw	s6,208(sp)
1c009018:	8a2a                	mv	s4,a0
1c00901a:	87ae                	mv	a5,a1
1c00901c:	8ab2                	mv	s5,a2
1c00901e:	89aa                	mv	s3,a0
1c009020:	0c850693          	addi	a3,a0,200
1c009024:	872a                	mv	a4,a0
1c009026:	4581                	li	a1,0
1c009028:	4601                	li	a2,0
1c00902a:	c30c                	sw	a1,0(a4)
1c00902c:	c350                	sw	a2,4(a4)
1c00902e:	0721                	addi	a4,a4,8
1c009030:	fee69be3          	bne	a3,a4,1c009026 <keccak_absorb.constprop.1+0x22>
1c009034:	08700713          	li	a4,135
1c009038:	09577363          	bgeu	a4,s5,1c0090be <keccak_absorb.constprop.1+0xba>
1c00903c:	08878b13          	addi	s6,a5,136
1c009040:	895a                	mv	s2,s6
1c009042:	08700413          	li	s0,135
1c009046:	86d2                	mv	a3,s4
1c009048:	0017c703          	lbu	a4,1(a5)
1c00904c:	0027ce03          	lbu	t3,2(a5)
1c009050:	0057c803          	lbu	a6,5(a5)
1c009054:	0047cf03          	lbu	t5,4(a5)
1c009058:	0067c503          	lbu	a0,6(a5)
1c00905c:	0007ce83          	lbu	t4,0(a5)
1c009060:	0037c583          	lbu	a1,3(a5)
1c009064:	0077c603          	lbu	a2,7(a5)
1c009068:	0722                	slli	a4,a4,0x8
1c00906a:	0e42                	slli	t3,t3,0x10
1c00906c:	0822                	slli	a6,a6,0x8
1c00906e:	0006a303          	lw	t1,0(a3)
1c009072:	0046a883          	lw	a7,4(a3)
1c009076:	01c76733          	or	a4,a4,t3
1c00907a:	01e86833          	or	a6,a6,t5
1c00907e:	0542                	slli	a0,a0,0x10
1c009080:	01d76733          	or	a4,a4,t4
1c009084:	05e2                	slli	a1,a1,0x18
1c009086:	01056533          	or	a0,a0,a6
1c00908a:	0662                	slli	a2,a2,0x18
1c00908c:	8f4d                	or	a4,a4,a1
1c00908e:	8e49                	or	a2,a2,a0
1c009090:	00e34733          	xor	a4,t1,a4
1c009094:	00c8c633          	xor	a2,a7,a2
1c009098:	c298                	sw	a4,0(a3)
1c00909a:	c2d0                	sw	a2,4(a3)
1c00909c:	07a1                	addi	a5,a5,8
1c00909e:	06a1                	addi	a3,a3,8
1c0090a0:	faf914e3          	bne	s2,a5,1c009048 <keccak_absorb.constprop.1+0x44>
1c0090a4:	85d2                	mv	a1,s4
1c0090a6:	8552                	mv	a0,s4
1c0090a8:	3121                	jal	1c008cb0 <KeccakF1600_StatePermute>
1c0090aa:	f78a8a93          	addi	s5,s5,-136
1c0090ae:	08890913          	addi	s2,s2,136
1c0090b2:	87da                	mv	a5,s6
1c0090b4:	01547563          	bgeu	s0,s5,1c0090be <keccak_absorb.constprop.1+0xba>
1c0090b8:	088b0b13          	addi	s6,s6,136
1c0090bc:	b769                	j	1c009046 <keccak_absorb.constprop.1+0x42>
1c0090be:	0038                	addi	a4,sp,8
1c0090c0:	09010e13          	addi	t3,sp,144
1c0090c4:	86ba                	mv	a3,a4
1c0090c6:	0006a023          	sw	zero,0(a3)
1c0090ca:	0691                	addi	a3,a3,4
1c0090cc:	fede1de3          	bne	t3,a3,1c0090c6 <keccak_absorb.constprop.1+0xc2>
1c0090d0:	080a8263          	beqz	s5,1c009154 <keccak_absorb.constprop.1+0x150>
1c0090d4:	fffa8693          	addi	a3,s5,-1
1c0090d8:	4609                	li	a2,2
1c0090da:	10d67163          	bgeu	a2,a3,1c0091dc <keccak_absorb.constprop.1+0x1d8>
1c0090de:	ffcaf313          	andi	t1,s5,-4
1c0090e2:	86be                	mv	a3,a5
1c0090e4:	933e                	add	t1,t1,a5
1c0090e6:	883a                	mv	a6,a4
1c0090e8:	0016c503          	lbu	a0,1(a3)
1c0090ec:	0006c883          	lbu	a7,0(a3)
1c0090f0:	0026c583          	lbu	a1,2(a3)
1c0090f4:	0036c603          	lbu	a2,3(a3)
1c0090f8:	0522                	slli	a0,a0,0x8
1c0090fa:	01156533          	or	a0,a0,a7
1c0090fe:	05c2                	slli	a1,a1,0x10
1c009100:	8dc9                	or	a1,a1,a0
1c009102:	0662                	slli	a2,a2,0x18
1c009104:	8e4d                	or	a2,a2,a1
1c009106:	00c82023          	sw	a2,0(a6)
1c00910a:	0691                	addi	a3,a3,4
1c00910c:	0811                	addi	a6,a6,4
1c00910e:	fcd31de3          	bne	t1,a3,1c0090e8 <keccak_absorb.constprop.1+0xe4>
1c009112:	ffcaf693          	andi	a3,s5,-4
1c009116:	02da8f63          	beq	s5,a3,1c009154 <keccak_absorb.constprop.1+0x150>
1c00911a:	00d78633          	add	a2,a5,a3
1c00911e:	00064503          	lbu	a0,0(a2)
1c009122:	098c                	addi	a1,sp,208
1c009124:	95b6                	add	a1,a1,a3
1c009126:	00168613          	addi	a2,a3,1
1c00912a:	f2a58c23          	sb	a0,-200(a1)
1c00912e:	03567363          	bgeu	a2,s5,1c009154 <keccak_absorb.constprop.1+0x150>
1c009132:	00c785b3          	add	a1,a5,a2
1c009136:	0005c583          	lbu	a1,0(a1)
1c00913a:	0988                	addi	a0,sp,208
1c00913c:	962a                	add	a2,a2,a0
1c00913e:	0689                	addi	a3,a3,2
1c009140:	f2b60c23          	sb	a1,-200(a2)
1c009144:	0156f863          	bgeu	a3,s5,1c009154 <keccak_absorb.constprop.1+0x150>
1c009148:	97b6                	add	a5,a5,a3
1c00914a:	0007c783          	lbu	a5,0(a5)
1c00914e:	96aa                	add	a3,a3,a0
1c009150:	f2f68c23          	sb	a5,-200(a3)
1c009154:	099c                	addi	a5,sp,208
1c009156:	9abe                	add	s5,s5,a5
1c009158:	f29a8c23          	sb	s1,-200(s5)
1c00915c:	08f14783          	lbu	a5,143(sp)
1c009160:	f807e793          	ori	a5,a5,-128
1c009164:	08f107a3          	sb	a5,143(sp)
1c009168:	00174783          	lbu	a5,1(a4)
1c00916c:	00274303          	lbu	t1,2(a4)
1c009170:	00574503          	lbu	a0,5(a4)
1c009174:	00474f03          	lbu	t5,4(a4)
1c009178:	00674583          	lbu	a1,6(a4)
1c00917c:	00074e83          	lbu	t4,0(a4)
1c009180:	00374603          	lbu	a2,3(a4)
1c009184:	00774683          	lbu	a3,7(a4)
1c009188:	07a2                	slli	a5,a5,0x8
1c00918a:	0342                	slli	t1,t1,0x10
1c00918c:	0522                	slli	a0,a0,0x8
1c00918e:	0009a883          	lw	a7,0(s3)
1c009192:	0049a803          	lw	a6,4(s3)
1c009196:	0067e7b3          	or	a5,a5,t1
1c00919a:	01e56533          	or	a0,a0,t5
1c00919e:	05c2                	slli	a1,a1,0x10
1c0091a0:	01d7e7b3          	or	a5,a5,t4
1c0091a4:	0662                	slli	a2,a2,0x18
1c0091a6:	8dc9                	or	a1,a1,a0
1c0091a8:	06e2                	slli	a3,a3,0x18
1c0091aa:	8e5d                	or	a2,a2,a5
1c0091ac:	00b6e7b3          	or	a5,a3,a1
1c0091b0:	00c8c633          	xor	a2,a7,a2
1c0091b4:	00f847b3          	xor	a5,a6,a5
1c0091b8:	00c9a023          	sw	a2,0(s3)
1c0091bc:	00f9a223          	sw	a5,4(s3)
1c0091c0:	0721                	addi	a4,a4,8
1c0091c2:	09a1                	addi	s3,s3,8
1c0091c4:	faee12e3          	bne	t3,a4,1c009168 <keccak_absorb.constprop.1+0x164>
1c0091c8:	50be                	lw	ra,236(sp)
1c0091ca:	542e                	lw	s0,232(sp)
1c0091cc:	549e                	lw	s1,228(sp)
1c0091ce:	590e                	lw	s2,224(sp)
1c0091d0:	49fe                	lw	s3,220(sp)
1c0091d2:	4a6e                	lw	s4,216(sp)
1c0091d4:	4ade                	lw	s5,212(sp)
1c0091d6:	4b4e                	lw	s6,208(sp)
1c0091d8:	616d                	addi	sp,sp,240
1c0091da:	8082                	ret
1c0091dc:	4681                	li	a3,0
1c0091de:	bf35                	j	1c00911a <keccak_absorb.constprop.1+0x116>

1c0091e0 <shake128_absorb>:
1c0091e0:	7151                	addi	sp,sp,-240
1c0091e2:	cfce                	sw	s3,220(sp)
1c0091e4:	89aa                	mv	s3,a0
1c0091e6:	0c800513          	li	a0,200
1c0091ea:	d5a2                	sw	s0,232(sp)
1c0091ec:	d3a6                	sw	s1,228(sp)
1c0091ee:	d786                	sw	ra,236(sp)
1c0091f0:	d1ca                	sw	s2,224(sp)
1c0091f2:	842e                	mv	s0,a1
1c0091f4:	84b2                	mv	s1,a2
1c0091f6:	144030ef          	jal	ra,1c00c33a <pi_l2_malloc>
1c0091fa:	00a9a023          	sw	a0,0(s3)
1c0091fe:	1c050363          	beqz	a0,1c0093c4 <shake128_absorb+0x1e4>
1c009202:	892a                	mv	s2,a0
1c009204:	0c850713          	addi	a4,a0,200
1c009208:	87aa                	mv	a5,a0
1c00920a:	4601                	li	a2,0
1c00920c:	4681                	li	a3,0
1c00920e:	c390                	sw	a2,0(a5)
1c009210:	c3d4                	sw	a3,4(a5)
1c009212:	07a1                	addi	a5,a5,8
1c009214:	fef71be3          	bne	a4,a5,1c00920a <shake128_absorb+0x2a>
1c009218:	0a700793          	li	a5,167
1c00921c:	0897f063          	bgeu	a5,s1,1c00929c <shake128_absorb+0xbc>
1c009220:	0a700993          	li	s3,167
1c009224:	87a2                	mv	a5,s0
1c009226:	40890eb3          	sub	t4,s2,s0
1c00922a:	0a840413          	addi	s0,s0,168
1c00922e:	0017c703          	lbu	a4,1(a5)
1c009232:	0027ce03          	lbu	t3,2(a5)
1c009236:	0057c503          	lbu	a0,5(a5)
1c00923a:	0047cf83          	lbu	t6,4(a5)
1c00923e:	0067c583          	lbu	a1,6(a5)
1c009242:	0007cf03          	lbu	t5,0(a5)
1c009246:	0037c603          	lbu	a2,3(a5)
1c00924a:	0077c683          	lbu	a3,7(a5)
1c00924e:	00fe8833          	add	a6,t4,a5
1c009252:	0722                	slli	a4,a4,0x8
1c009254:	0e42                	slli	t3,t3,0x10
1c009256:	0522                	slli	a0,a0,0x8
1c009258:	00082303          	lw	t1,0(a6)
1c00925c:	00482883          	lw	a7,4(a6)
1c009260:	01c76733          	or	a4,a4,t3
1c009264:	01f56533          	or	a0,a0,t6
1c009268:	05c2                	slli	a1,a1,0x10
1c00926a:	01e76733          	or	a4,a4,t5
1c00926e:	0662                	slli	a2,a2,0x18
1c009270:	8dc9                	or	a1,a1,a0
1c009272:	06e2                	slli	a3,a3,0x18
1c009274:	8f51                	or	a4,a4,a2
1c009276:	8ecd                	or	a3,a3,a1
1c009278:	00e34733          	xor	a4,t1,a4
1c00927c:	00d8c6b3          	xor	a3,a7,a3
1c009280:	00e82023          	sw	a4,0(a6)
1c009284:	00d82223          	sw	a3,4(a6)
1c009288:	07a1                	addi	a5,a5,8
1c00928a:	faf412e3          	bne	s0,a5,1c00922e <shake128_absorb+0x4e>
1c00928e:	f5848493          	addi	s1,s1,-168
1c009292:	85ca                	mv	a1,s2
1c009294:	854a                	mv	a0,s2
1c009296:	3c29                	jal	1c008cb0 <KeccakF1600_StatePermute>
1c009298:	f899e6e3          	bltu	s3,s1,1c009224 <shake128_absorb+0x44>
1c00929c:	0b010313          	addi	t1,sp,176
1c0092a0:	003c                	addi	a5,sp,8
1c0092a2:	0007a023          	sw	zero,0(a5)
1c0092a6:	0791                	addi	a5,a5,4
1c0092a8:	fef31de3          	bne	t1,a5,1c0092a2 <shake128_absorb+0xc2>
1c0092ac:	c0d9                	beqz	s1,1c009332 <shake128_absorb+0x152>
1c0092ae:	fff48793          	addi	a5,s1,-1
1c0092b2:	4709                	li	a4,2
1c0092b4:	10f77663          	bgeu	a4,a5,1c0093c0 <shake128_absorb+0x1e0>
1c0092b8:	ffc4f593          	andi	a1,s1,-4
1c0092bc:	87a2                	mv	a5,s0
1c0092be:	95a2                	add	a1,a1,s0
1c0092c0:	0028                	addi	a0,sp,8
1c0092c2:	0017c603          	lbu	a2,1(a5)
1c0092c6:	0007c803          	lbu	a6,0(a5)
1c0092ca:	0027c683          	lbu	a3,2(a5)
1c0092ce:	0037c703          	lbu	a4,3(a5)
1c0092d2:	0622                	slli	a2,a2,0x8
1c0092d4:	01066633          	or	a2,a2,a6
1c0092d8:	06c2                	slli	a3,a3,0x10
1c0092da:	8ed1                	or	a3,a3,a2
1c0092dc:	0762                	slli	a4,a4,0x18
1c0092de:	8f55                	or	a4,a4,a3
1c0092e0:	c118                	sw	a4,0(a0)
1c0092e2:	0791                	addi	a5,a5,4
1c0092e4:	0511                	addi	a0,a0,4
1c0092e6:	fcf59ee3          	bne	a1,a5,1c0092c2 <shake128_absorb+0xe2>
1c0092ea:	ffc4f793          	andi	a5,s1,-4
1c0092ee:	04f48263          	beq	s1,a5,1c009332 <shake128_absorb+0x152>
1c0092f2:	00f40733          	add	a4,s0,a5
1c0092f6:	00074603          	lbu	a2,0(a4)
1c0092fa:	0994                	addi	a3,sp,208
1c0092fc:	96be                	add	a3,a3,a5
1c0092fe:	00178713          	addi	a4,a5,1
1c009302:	f2c68c23          	sb	a2,-200(a3)
1c009306:	02977663          	bgeu	a4,s1,1c009332 <shake128_absorb+0x152>
1c00930a:	00e406b3          	add	a3,s0,a4
1c00930e:	0006c603          	lbu	a2,0(a3)
1c009312:	0994                	addi	a3,sp,208
1c009314:	96ba                	add	a3,a3,a4
1c009316:	f2c68c23          	sb	a2,-200(a3)
1c00931a:	00278713          	addi	a4,a5,2
1c00931e:	00977a63          	bgeu	a4,s1,1c009332 <shake128_absorb+0x152>
1c009322:	00e407b3          	add	a5,s0,a4
1c009326:	0007c683          	lbu	a3,0(a5)
1c00932a:	099c                	addi	a5,sp,208
1c00932c:	97ba                	add	a5,a5,a4
1c00932e:	f2d78c23          	sb	a3,-200(a5)
1c009332:	099c                	addi	a5,sp,208
1c009334:	00978633          	add	a2,a5,s1
1c009338:	47fd                	li	a5,31
1c00933a:	f2f60c23          	sb	a5,-200(a2)
1c00933e:	0af14703          	lbu	a4,175(sp)
1c009342:	003c                	addi	a5,sp,8
1c009344:	40f90933          	sub	s2,s2,a5
1c009348:	f8076713          	ori	a4,a4,-128
1c00934c:	0ae107a3          	sb	a4,175(sp)
1c009350:	0017c703          	lbu	a4,1(a5)
1c009354:	0027cf83          	lbu	t6,2(a5)
1c009358:	0057c883          	lbu	a7,5(a5)
1c00935c:	0047c503          	lbu	a0,4(a5)
1c009360:	0067c803          	lbu	a6,6(a5)
1c009364:	0007c583          	lbu	a1,0(a5)
1c009368:	0037c603          	lbu	a2,3(a5)
1c00936c:	0077c683          	lbu	a3,7(a5)
1c009370:	00f90e33          	add	t3,s2,a5
1c009374:	0722                	slli	a4,a4,0x8
1c009376:	0fc2                	slli	t6,t6,0x10
1c009378:	08a2                	slli	a7,a7,0x8
1c00937a:	000e2f03          	lw	t5,0(t3)
1c00937e:	004e2e83          	lw	t4,4(t3)
1c009382:	01f76733          	or	a4,a4,t6
1c009386:	00a8e8b3          	or	a7,a7,a0
1c00938a:	0842                	slli	a6,a6,0x10
1c00938c:	8f4d                	or	a4,a4,a1
1c00938e:	0662                	slli	a2,a2,0x18
1c009390:	01186833          	or	a6,a6,a7
1c009394:	06e2                	slli	a3,a3,0x18
1c009396:	8f51                	or	a4,a4,a2
1c009398:	0106e6b3          	or	a3,a3,a6
1c00939c:	00ef4733          	xor	a4,t5,a4
1c0093a0:	00dec6b3          	xor	a3,t4,a3
1c0093a4:	00ee2023          	sw	a4,0(t3)
1c0093a8:	00de2223          	sw	a3,4(t3)
1c0093ac:	07a1                	addi	a5,a5,8
1c0093ae:	faf311e3          	bne	t1,a5,1c009350 <shake128_absorb+0x170>
1c0093b2:	50be                	lw	ra,236(sp)
1c0093b4:	542e                	lw	s0,232(sp)
1c0093b6:	549e                	lw	s1,228(sp)
1c0093b8:	590e                	lw	s2,224(sp)
1c0093ba:	49fe                	lw	s3,220(sp)
1c0093bc:	616d                	addi	sp,sp,240
1c0093be:	8082                	ret
1c0093c0:	4781                	li	a5,0
1c0093c2:	bf05                	j	1c0092f2 <shake128_absorb+0x112>
1c0093c4:	06f00513          	li	a0,111
1c0093c8:	63f010ef          	jal	ra,1c00b206 <exit>

1c0093cc <shake128_squeezeblocks>:
1c0093cc:	1101                	addi	sp,sp,-32
1c0093ce:	c05a                	sw	s6,0(sp)
1c0093d0:	ce06                	sw	ra,28(sp)
1c0093d2:	cc22                	sw	s0,24(sp)
1c0093d4:	ca26                	sw	s1,20(sp)
1c0093d6:	c84a                	sw	s2,16(sp)
1c0093d8:	c64e                	sw	s3,12(sp)
1c0093da:	c452                	sw	s4,8(sp)
1c0093dc:	c256                	sw	s5,4(sp)
1c0093de:	00062b03          	lw	s6,0(a2)
1c0093e2:	c5e9                	beqz	a1,1c0094ac <shake128_squeezeblocks+0xe0>
1c0093e4:	7ac1                	lui	s5,0xffff0
1c0093e6:	ff010a37          	lui	s4,0xff010
1c0093ea:	010009b7          	lui	s3,0x1000
1c0093ee:	84ae                	mv	s1,a1
1c0093f0:	892a                	mv	s2,a0
1c0093f2:	0a8b0413          	addi	s0,s6,168
1c0093f6:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c0093fa:	1a7d                	addi	s4,s4,-1
1c0093fc:	19fd                	addi	s3,s3,-1
1c0093fe:	85da                	mv	a1,s6
1c009400:	855a                	mv	a0,s6
1c009402:	307d                	jal	1c008cb0 <KeccakF1600_StatePermute>
1c009404:	85da                	mv	a1,s6
1c009406:	00490813          	addi	a6,s2,4
1c00940a:	4198                	lw	a4,0(a1)
1c00940c:	41dc                	lw	a5,4(a1)
1c00940e:	05a1                	addi	a1,a1,8
1c009410:	00875893          	srli	a7,a4,0x8
1c009414:	0087d513          	srli	a0,a5,0x8
1c009418:	0ff77613          	andi	a2,a4,255
1c00941c:	0ff7f693          	andi	a3,a5,255
1c009420:	0ff8f893          	andi	a7,a7,255
1c009424:	0ff57513          	andi	a0,a0,255
1c009428:	08a2                	slli	a7,a7,0x8
1c00942a:	0522                	slli	a0,a0,0x8
1c00942c:	01567633          	and	a2,a2,s5
1c009430:	0156f6b3          	and	a3,a3,s5
1c009434:	01166633          	or	a2,a2,a7
1c009438:	8ec9                	or	a3,a3,a0
1c00943a:	00ff08b7          	lui	a7,0xff0
1c00943e:	00ff0537          	lui	a0,0xff0
1c009442:	011778b3          	and	a7,a4,a7
1c009446:	8d7d                	and	a0,a0,a5
1c009448:	01467633          	and	a2,a2,s4
1c00944c:	0146f6b3          	and	a3,a3,s4
1c009450:	01166633          	or	a2,a2,a7
1c009454:	8ec9                	or	a3,a3,a0
1c009456:	8361                	srli	a4,a4,0x18
1c009458:	83e1                	srli	a5,a5,0x18
1c00945a:	01367633          	and	a2,a2,s3
1c00945e:	0136f6b3          	and	a3,a3,s3
1c009462:	0762                	slli	a4,a4,0x18
1c009464:	07e2                	slli	a5,a5,0x18
1c009466:	8f51                	or	a4,a4,a2
1c009468:	8fd5                	or	a5,a5,a3
1c00946a:	00875e13          	srli	t3,a4,0x8
1c00946e:	01075313          	srli	t1,a4,0x10
1c009472:	0087d893          	srli	a7,a5,0x8
1c009476:	0107d513          	srli	a0,a5,0x10
1c00947a:	8361                	srli	a4,a4,0x18
1c00947c:	83e1                	srli	a5,a5,0x18
1c00947e:	fec80e23          	sb	a2,-4(a6)
1c009482:	ffc80ea3          	sb	t3,-3(a6)
1c009486:	fe680f23          	sb	t1,-2(a6)
1c00948a:	fee80fa3          	sb	a4,-1(a6)
1c00948e:	00d80023          	sb	a3,0(a6)
1c009492:	011800a3          	sb	a7,1(a6)
1c009496:	00a80123          	sb	a0,2(a6)
1c00949a:	00f801a3          	sb	a5,3(a6)
1c00949e:	0821                	addi	a6,a6,8
1c0094a0:	f6b415e3          	bne	s0,a1,1c00940a <shake128_squeezeblocks+0x3e>
1c0094a4:	14fd                	addi	s1,s1,-1
1c0094a6:	0a890913          	addi	s2,s2,168
1c0094aa:	f8b1                	bnez	s1,1c0093fe <shake128_squeezeblocks+0x32>
1c0094ac:	40f2                	lw	ra,28(sp)
1c0094ae:	4462                	lw	s0,24(sp)
1c0094b0:	44d2                	lw	s1,20(sp)
1c0094b2:	4942                	lw	s2,16(sp)
1c0094b4:	49b2                	lw	s3,12(sp)
1c0094b6:	4a22                	lw	s4,8(sp)
1c0094b8:	4a92                	lw	s5,4(sp)
1c0094ba:	4b02                	lw	s6,0(sp)
1c0094bc:	6105                	addi	sp,sp,32
1c0094be:	8082                	ret

1c0094c0 <shake128_ctx_release>:
1c0094c0:	4108                	lw	a0,0(a0)
1c0094c2:	0c800593          	li	a1,200
1c0094c6:	6810206f          	j	1c00c346 <pi_l2_free>

1c0094ca <shake256>:
1c0094ca:	7131                	addi	sp,sp,-192
1c0094cc:	db26                	sw	s1,180(sp)
1c0094ce:	d74e                	sw	s3,172(sp)
1c0094d0:	84aa                	mv	s1,a0
1c0094d2:	08800993          	li	s3,136
1c0094d6:	0c800513          	li	a0,200
1c0094da:	dd22                	sw	s0,184(sp)
1c0094dc:	d94a                	sw	s2,176(sp)
1c0094de:	d356                	sw	s5,164(sp)
1c0094e0:	df06                	sw	ra,188(sp)
1c0094e2:	d552                	sw	s4,168(sp)
1c0094e4:	d15a                	sw	s6,160(sp)
1c0094e6:	cf5e                	sw	s7,156(sp)
1c0094e8:	cd62                	sw	s8,152(sp)
1c0094ea:	0335d9b3          	divu	s3,a1,s3
1c0094ee:	892e                	mv	s2,a1
1c0094f0:	8432                	mv	s0,a2
1c0094f2:	8ab6                	mv	s5,a3
1c0094f4:	647020ef          	jal	ra,1c00c33a <pi_l2_malloc>
1c0094f8:	24050763          	beqz	a0,1c009746 <shake256+0x27c>
1c0094fc:	46fd                	li	a3,31
1c0094fe:	8656                	mv	a2,s5
1c009500:	85a2                	mv	a1,s0
1c009502:	8a2a                	mv	s4,a0
1c009504:	3601                	jal	1c009004 <keccak_absorb.constprop.1>
1c009506:	08700793          	li	a5,135
1c00950a:	0d27ff63          	bgeu	a5,s2,1c0095e8 <shake256+0x11e>
1c00950e:	00499413          	slli	s0,s3,0x4
1c009512:	944e                	add	s0,s0,s3
1c009514:	040e                	slli	s0,s0,0x3
1c009516:	7bc1                	lui	s7,0xffff0
1c009518:	ff010b37          	lui	s6,0xff010
1c00951c:	01000ab7          	lui	s5,0x1000
1c009520:	9426                	add	s0,s0,s1
1c009522:	8c26                	mv	s8,s1
1c009524:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009528:	1b7d                	addi	s6,s6,-1
1c00952a:	1afd                	addi	s5,s5,-1
1c00952c:	85d2                	mv	a1,s4
1c00952e:	8552                	mv	a0,s4
1c009530:	f80ff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c009534:	87e2                	mv	a5,s8
1c009536:	418a0533          	sub	a0,s4,s8
1c00953a:	088c0593          	addi	a1,s8,136
1c00953e:	00f50733          	add	a4,a0,a5
1c009542:	4314                	lw	a3,0(a4)
1c009544:	4358                	lw	a4,4(a4)
1c009546:	07a1                	addi	a5,a5,8
1c009548:	0086d313          	srli	t1,a3,0x8
1c00954c:	00875893          	srli	a7,a4,0x8
1c009550:	0ff6f813          	andi	a6,a3,255
1c009554:	0ff77613          	andi	a2,a4,255
1c009558:	0ff37313          	andi	t1,t1,255
1c00955c:	0ff8f893          	andi	a7,a7,255
1c009560:	0322                	slli	t1,t1,0x8
1c009562:	08a2                	slli	a7,a7,0x8
1c009564:	01787833          	and	a6,a6,s7
1c009568:	01767633          	and	a2,a2,s7
1c00956c:	00686833          	or	a6,a6,t1
1c009570:	01166633          	or	a2,a2,a7
1c009574:	00ff0337          	lui	t1,0xff0
1c009578:	00ff08b7          	lui	a7,0xff0
1c00957c:	0066f333          	and	t1,a3,t1
1c009580:	011778b3          	and	a7,a4,a7
1c009584:	01687833          	and	a6,a6,s6
1c009588:	01667633          	and	a2,a2,s6
1c00958c:	00686833          	or	a6,a6,t1
1c009590:	01166633          	or	a2,a2,a7
1c009594:	82e1                	srli	a3,a3,0x18
1c009596:	8361                	srli	a4,a4,0x18
1c009598:	01587833          	and	a6,a6,s5
1c00959c:	01567633          	and	a2,a2,s5
1c0095a0:	06e2                	slli	a3,a3,0x18
1c0095a2:	0762                	slli	a4,a4,0x18
1c0095a4:	00d866b3          	or	a3,a6,a3
1c0095a8:	8f51                	or	a4,a4,a2
1c0095aa:	0086de93          	srli	t4,a3,0x8
1c0095ae:	0106de13          	srli	t3,a3,0x10
1c0095b2:	00875313          	srli	t1,a4,0x8
1c0095b6:	01075893          	srli	a7,a4,0x10
1c0095ba:	82e1                	srli	a3,a3,0x18
1c0095bc:	8361                	srli	a4,a4,0x18
1c0095be:	ff078c23          	sb	a6,-8(a5)
1c0095c2:	ffd78ca3          	sb	t4,-7(a5)
1c0095c6:	ffc78d23          	sb	t3,-6(a5)
1c0095ca:	fed78da3          	sb	a3,-5(a5)
1c0095ce:	fec78e23          	sb	a2,-4(a5)
1c0095d2:	fe678ea3          	sb	t1,-3(a5)
1c0095d6:	ff178f23          	sb	a7,-2(a5)
1c0095da:	fee78fa3          	sb	a4,-1(a5)
1c0095de:	f6f590e3          	bne	a1,a5,1c00953e <shake256+0x74>
1c0095e2:	8c2e                	mv	s8,a1
1c0095e4:	f48594e3          	bne	a1,s0,1c00952c <shake256+0x62>
1c0095e8:	08800593          	li	a1,136
1c0095ec:	02b97933          	remu	s2,s2,a1
1c0095f0:	02091263          	bnez	s2,1c009614 <shake256+0x14a>
1c0095f4:	546a                	lw	s0,184(sp)
1c0095f6:	50fa                	lw	ra,188(sp)
1c0095f8:	54da                	lw	s1,180(sp)
1c0095fa:	594a                	lw	s2,176(sp)
1c0095fc:	59ba                	lw	s3,172(sp)
1c0095fe:	5a9a                	lw	s5,164(sp)
1c009600:	5b0a                	lw	s6,160(sp)
1c009602:	4bfa                	lw	s7,156(sp)
1c009604:	4c6a                	lw	s8,152(sp)
1c009606:	8552                	mv	a0,s4
1c009608:	5a2a                	lw	s4,168(sp)
1c00960a:	0c800593          	li	a1,200
1c00960e:	6129                	addi	sp,sp,192
1c009610:	5370206f          	j	1c00c346 <pi_l2_free>
1c009614:	85d2                	mv	a1,s4
1c009616:	8552                	mv	a0,s4
1c009618:	e98ff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c00961c:	002c                	addi	a1,sp,8
1c00961e:	78c1                	lui	a7,0xffff0
1c009620:	ff010837          	lui	a6,0xff010
1c009624:	01000537          	lui	a0,0x1000
1c009628:	09010e13          	addi	t3,sp,144
1c00962c:	862e                	mv	a2,a1
1c00962e:	40ba0333          	sub	t1,s4,a1
1c009632:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009636:	187d                	addi	a6,a6,-1
1c009638:	157d                	addi	a0,a0,-1
1c00963a:	00c307b3          	add	a5,t1,a2
1c00963e:	0007ae83          	lw	t4,0(a5)
1c009642:	43d4                	lw	a3,4(a5)
1c009644:	0621                	addi	a2,a2,8
1c009646:	008edf93          	srli	t6,t4,0x8
1c00964a:	0086df13          	srli	t5,a3,0x8
1c00964e:	0ffef713          	andi	a4,t4,255
1c009652:	0ff6f793          	andi	a5,a3,255
1c009656:	0fffff93          	andi	t6,t6,255
1c00965a:	0fff7f13          	andi	t5,t5,255
1c00965e:	0fa2                	slli	t6,t6,0x8
1c009660:	0f22                	slli	t5,t5,0x8
1c009662:	01177733          	and	a4,a4,a7
1c009666:	0117f7b3          	and	a5,a5,a7
1c00966a:	01f76733          	or	a4,a4,t6
1c00966e:	01e7e7b3          	or	a5,a5,t5
1c009672:	00ff0fb7          	lui	t6,0xff0
1c009676:	00ff0f37          	lui	t5,0xff0
1c00967a:	01feffb3          	and	t6,t4,t6
1c00967e:	01e6ff33          	and	t5,a3,t5
1c009682:	01077733          	and	a4,a4,a6
1c009686:	0107f7b3          	and	a5,a5,a6
1c00968a:	01f76733          	or	a4,a4,t6
1c00968e:	018ede93          	srli	t4,t4,0x18
1c009692:	01e7e7b3          	or	a5,a5,t5
1c009696:	82e1                	srli	a3,a3,0x18
1c009698:	0ee2                	slli	t4,t4,0x18
1c00969a:	8f69                	and	a4,a4,a0
1c00969c:	06e2                	slli	a3,a3,0x18
1c00969e:	8fe9                	and	a5,a5,a0
1c0096a0:	01d76733          	or	a4,a4,t4
1c0096a4:	8fd5                	or	a5,a5,a3
1c0096a6:	fee62c23          	sw	a4,-8(a2)
1c0096aa:	fef62e23          	sw	a5,-4(a2)
1c0096ae:	f8ce16e3          	bne	t3,a2,1c00963a <shake256+0x170>
1c0096b2:	fff90793          	addi	a5,s2,-1
1c0096b6:	4709                	li	a4,2
1c0096b8:	08f77363          	bgeu	a4,a5,1c00973e <shake256+0x274>
1c0096bc:	00499413          	slli	s0,s3,0x4
1c0096c0:	013407b3          	add	a5,s0,s3
1c0096c4:	078e                	slli	a5,a5,0x3
1c0096c6:	97a6                	add	a5,a5,s1
1c0096c8:	0fc97813          	andi	a6,s2,252
1c0096cc:	983e                	add	a6,a6,a5
1c0096ce:	4198                	lw	a4,0(a1)
1c0096d0:	0791                	addi	a5,a5,4
1c0096d2:	0591                	addi	a1,a1,4
1c0096d4:	00875513          	srli	a0,a4,0x8
1c0096d8:	01075613          	srli	a2,a4,0x10
1c0096dc:	01875693          	srli	a3,a4,0x18
1c0096e0:	fea78ea3          	sb	a0,-3(a5)
1c0096e4:	fec78f23          	sb	a2,-2(a5)
1c0096e8:	fed78fa3          	sb	a3,-1(a5)
1c0096ec:	fee78e23          	sb	a4,-4(a5)
1c0096f0:	fcf81fe3          	bne	a6,a5,1c0096ce <shake256+0x204>
1c0096f4:	ffc97793          	andi	a5,s2,-4
1c0096f8:	eef90ee3          	beq	s2,a5,1c0095f4 <shake256+0x12a>
1c0096fc:	0918                	addi	a4,sp,144
1c0096fe:	973e                	add	a4,a4,a5
1c009700:	99a2                	add	s3,s3,s0
1c009702:	f7874683          	lbu	a3,-136(a4)
1c009706:	098e                	slli	s3,s3,0x3
1c009708:	99a6                	add	s3,s3,s1
1c00970a:	00f98733          	add	a4,s3,a5
1c00970e:	00d70023          	sb	a3,0(a4)
1c009712:	00178713          	addi	a4,a5,1
1c009716:	ed277fe3          	bgeu	a4,s2,1c0095f4 <shake256+0x12a>
1c00971a:	0914                	addi	a3,sp,144
1c00971c:	96ba                	add	a3,a3,a4
1c00971e:	f786c683          	lbu	a3,-136(a3)
1c009722:	974e                	add	a4,a4,s3
1c009724:	0789                	addi	a5,a5,2
1c009726:	00d70023          	sb	a3,0(a4)
1c00972a:	ed27f5e3          	bgeu	a5,s2,1c0095f4 <shake256+0x12a>
1c00972e:	0918                	addi	a4,sp,144
1c009730:	973e                	add	a4,a4,a5
1c009732:	f7874703          	lbu	a4,-136(a4)
1c009736:	99be                	add	s3,s3,a5
1c009738:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00973c:	bd65                	j	1c0095f4 <shake256+0x12a>
1c00973e:	4781                	li	a5,0
1c009740:	00499413          	slli	s0,s3,0x4
1c009744:	bf65                	j	1c0096fc <shake256+0x232>
1c009746:	06f00513          	li	a0,111
1c00974a:	2bd010ef          	jal	ra,1c00b206 <exit>

1c00974e <sha3_256>:
1c00974e:	712d                	addi	sp,sp,-288
1c009750:	10812c23          	sw	s0,280(sp)
1c009754:	4699                	li	a3,6
1c009756:	842a                	mv	s0,a0
1c009758:	0828                	addi	a0,sp,24
1c00975a:	10112e23          	sw	ra,284(sp)
1c00975e:	10912a23          	sw	s1,276(sp)
1c009762:	11212823          	sw	s2,272(sp)
1c009766:	11312623          	sw	s3,268(sp)
1c00976a:	11412423          	sw	s4,264(sp)
1c00976e:	11512223          	sw	s5,260(sp)
1c009772:	11612023          	sw	s6,256(sp)
1c009776:	dfde                	sw	s7,252(sp)
1c009778:	dde2                	sw	s8,248(sp)
1c00977a:	dbe6                	sw	s9,244(sp)
1c00977c:	d9ea                	sw	s10,240(sp)
1c00977e:	d7ee                	sw	s11,236(sp)
1c009780:	3051                	jal	1c009004 <keccak_absorb.constprop.1>
1c009782:	082c                	addi	a1,sp,24
1c009784:	852e                	mv	a0,a1
1c009786:	d2aff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c00978a:	4372                	lw	t1,28(sp)
1c00978c:	5612                	lw	a2,36(sp)
1c00978e:	5732                	lw	a4,44(sp)
1c009790:	5582                	lw	a1,32(sp)
1c009792:	56a2                	lw	a3,40(sp)
1c009794:	59d2                	lw	s3,52(sp)
1c009796:	4ae2                	lw	s5,24(sp)
1c009798:	00835293          	srli	t0,t1,0x8
1c00979c:	00865f13          	srli	t5,a2,0x8
1c0097a0:	00875893          	srli	a7,a4,0x8
1c0097a4:	5a42                	lw	s4,48(sp)
1c0097a6:	0085df93          	srli	t6,a1,0x8
1c0097aa:	0086de93          	srli	t4,a3,0x8
1c0097ae:	0ff2f293          	andi	t0,t0,255
1c0097b2:	0fff7f13          	andi	t5,t5,255
1c0097b6:	0ff8f893          	andi	a7,a7,255
1c0097ba:	0ff37b93          	andi	s7,t1,255
1c0097be:	0ff67913          	andi	s2,a2,255
1c0097c2:	0ff77e13          	andi	t3,a4,255
1c0097c6:	008ad393          	srli	t2,s5,0x8
1c0097ca:	0089d513          	srli	a0,s3,0x8
1c0097ce:	0fffff93          	andi	t6,t6,255
1c0097d2:	0ffefe93          	andi	t4,t4,255
1c0097d6:	02a2                	slli	t0,t0,0x8
1c0097d8:	0f22                	slli	t5,t5,0x8
1c0097da:	08a2                	slli	a7,a7,0x8
1c0097dc:	ff0107b7          	lui	a5,0xff010
1c0097e0:	17fd                	addi	a5,a5,-1
1c0097e2:	0ff5fb13          	andi	s6,a1,255
1c0097e6:	0ff6f493          	andi	s1,a3,255
1c0097ea:	005be2b3          	or	t0,s7,t0
1c0097ee:	01e96f33          	or	t5,s2,t5
1c0097f2:	011e68b3          	or	a7,t3,a7
1c0097f6:	0ff3f393          	andi	t2,t2,255
1c0097fa:	0fa2                	slli	t6,t6,0x8
1c0097fc:	0ea2                	slli	t4,t4,0x8
1c0097fe:	0ff57513          	andi	a0,a0,255
1c009802:	00ff0bb7          	lui	s7,0xff0
1c009806:	0ffafc13          	andi	s8,s5,255
1c00980a:	0ff9f913          	andi	s2,s3,255
1c00980e:	01767bb3          	and	s7,a2,s7
1c009812:	00f8fe33          	and	t3,a7,a5
1c009816:	008a5813          	srli	a6,s4,0x8
1c00981a:	01fb6fb3          	or	t6,s6,t6
1c00981e:	01d4eeb3          	or	t4,s1,t4
1c009822:	00ff7f33          	and	t5,t5,a5
1c009826:	010008b7          	lui	a7,0x1000
1c00982a:	03a2                	slli	t2,t2,0x8
1c00982c:	0522                	slli	a0,a0,0x8
1c00982e:	00ff04b7          	lui	s1,0xff0
1c009832:	00ff0b37          	lui	s6,0xff0
1c009836:	8cf5                	and	s1,s1,a3
1c009838:	01677b33          	and	s6,a4,s6
1c00983c:	00a96533          	or	a0,s2,a0
1c009840:	007c63b3          	or	t2,s8,t2
1c009844:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c009848:	00fefeb3          	and	t4,t4,a5
1c00984c:	017f6f33          	or	t5,t5,s7
1c009850:	0ff87813          	andi	a6,a6,255
1c009854:	00ff0c37          	lui	s8,0xff0
1c009858:	8261                	srli	a2,a2,0x18
1c00985a:	0ffa7d93          	andi	s11,s4,255
1c00985e:	0185fc33          	and	s8,a1,s8
1c009862:	012f7f33          	and	t5,t5,s2
1c009866:	00ffffb3          	and	t6,t6,a5
1c00986a:	009eeeb3          	or	t4,t4,s1
1c00986e:	016e6e33          	or	t3,t3,s6
1c009872:	8361                	srli	a4,a4,0x18
1c009874:	0822                	slli	a6,a6,0x8
1c009876:	00ff0d37          	lui	s10,0xff0
1c00987a:	82e1                	srli	a3,a3,0x18
1c00987c:	0662                	slli	a2,a2,0x18
1c00987e:	01aafd33          	and	s10,s5,s10
1c009882:	010de833          	or	a6,s11,a6
1c009886:	012efeb3          	and	t4,t4,s2
1c00988a:	012e7e33          	and	t3,t3,s2
1c00988e:	00cf6633          	or	a2,t5,a2
1c009892:	018ada93          	srli	s5,s5,0x18
1c009896:	018fefb3          	or	t6,t6,s8
1c00989a:	06e2                	slli	a3,a3,0x18
1c00989c:	01871c13          	slli	s8,a4,0x18
1c0098a0:	00ff0bb7          	lui	s7,0xff0
1c0098a4:	00f87b33          	and	s6,a6,a5
1c0098a8:	00dee4b3          	or	s1,t4,a3
1c0098ac:	017a7bb3          	and	s7,s4,s7
1c0098b0:	018e66b3          	or	a3,t3,s8
1c0098b4:	018a9813          	slli	a6,s5,0x18
1c0098b8:	018a5713          	srli	a4,s4,0x18
1c0098bc:	00865a93          	srli	s5,a2,0x8
1c0098c0:	01065a13          	srli	s4,a2,0x10
1c0098c4:	00ff0cb7          	lui	s9,0xff0
1c0098c8:	8261                	srli	a2,a2,0x18
1c0098ca:	c232                	sw	a2,4(sp)
1c0098cc:	01937cb3          	and	s9,t1,s9
1c0098d0:	0086d613          	srli	a2,a3,0x8
1c0098d4:	00f3f3b3          	and	t2,t2,a5
1c0098d8:	00f2f2b3          	and	t0,t0,a5
1c0098dc:	c432                	sw	a2,8(sp)
1c0098de:	01a3e3b3          	or	t2,t2,s10
1c0098e2:	0106d613          	srli	a2,a3,0x10
1c0098e6:	0192e2b3          	or	t0,t0,s9
1c0098ea:	01835313          	srli	t1,t1,0x18
1c0098ee:	81e1                	srli	a1,a1,0x18
1c0098f0:	00ff08b7          	lui	a7,0xff0
1c0098f4:	8fe9                	and	a5,a5,a0
1c0098f6:	0123f3b3          	and	t2,t2,s2
1c0098fa:	0122f2b3          	and	t0,t0,s2
1c0098fe:	012fffb3          	and	t6,t6,s2
1c009902:	c632                	sw	a2,12(sp)
1c009904:	0119f8b3          	and	a7,s3,a7
1c009908:	4612                	lw	a2,4(sp)
1c00990a:	01831513          	slli	a0,t1,0x18
1c00990e:	05e2                	slli	a1,a1,0x18
1c009910:	017b6333          	or	t1,s6,s7
1c009914:	0103e833          	or	a6,t2,a6
1c009918:	00a2e533          	or	a0,t0,a0
1c00991c:	00bfe5b3          	or	a1,t6,a1
1c009920:	0117e8b3          	or	a7,a5,a7
1c009924:	01237333          	and	t1,t1,s2
1c009928:	0128f8b3          	and	a7,a7,s2
1c00992c:	00885d93          	srli	s11,a6,0x8
1c009930:	01085d13          	srli	s10,a6,0x10
1c009934:	00855c93          	srli	s9,a0,0x8
1c009938:	01055c13          	srli	s8,a0,0x10
1c00993c:	0085db93          	srli	s7,a1,0x8
1c009940:	0105db13          	srli	s6,a1,0x10
1c009944:	0104d913          	srli	s2,s1,0x10
1c009948:	0189d793          	srli	a5,s3,0x18
1c00994c:	8161                	srli	a0,a0,0x18
1c00994e:	0084d993          	srli	s3,s1,0x8
1c009952:	81e1                	srli	a1,a1,0x18
1c009954:	80e1                	srli	s1,s1,0x18
1c009956:	01885813          	srli	a6,a6,0x18
1c00995a:	01b400a3          	sb	s11,1(s0)
1c00995e:	01a40123          	sb	s10,2(s0)
1c009962:	019402a3          	sb	s9,5(s0)
1c009966:	01840323          	sb	s8,6(s0)
1c00996a:	00a403a3          	sb	a0,7(s0)
1c00996e:	017404a3          	sb	s7,9(s0)
1c009972:	01640523          	sb	s6,10(s0)
1c009976:	00b405a3          	sb	a1,11(s0)
1c00997a:	015406a3          	sb	s5,13(s0)
1c00997e:	01440723          	sb	s4,14(s0)
1c009982:	00c407a3          	sb	a2,15(s0)
1c009986:	013408a3          	sb	s3,17(s0)
1c00998a:	01240923          	sb	s2,18(s0)
1c00998e:	009409a3          	sb	s1,19(s0)
1c009992:	00740023          	sb	t2,0(s0)
1c009996:	010401a3          	sb	a6,3(s0)
1c00999a:	00540223          	sb	t0,4(s0)
1c00999e:	01f40423          	sb	t6,8(s0)
1c0099a2:	01e40623          	sb	t5,12(s0)
1c0099a6:	01d40823          	sb	t4,16(s0)
1c0099aa:	01c40a23          	sb	t3,20(s0)
1c0099ae:	4622                	lw	a2,8(sp)
1c0099b0:	0762                	slli	a4,a4,0x18
1c0099b2:	07e2                	slli	a5,a5,0x18
1c0099b4:	00c40aa3          	sb	a2,21(s0)
1c0099b8:	4632                	lw	a2,12(sp)
1c0099ba:	00e36733          	or	a4,t1,a4
1c0099be:	00f8e7b3          	or	a5,a7,a5
1c0099c2:	82e1                	srli	a3,a3,0x18
1c0099c4:	00c40b23          	sb	a2,22(s0)
1c0099c8:	00d40ba3          	sb	a3,23(s0)
1c0099cc:	00875513          	srli	a0,a4,0x8
1c0099d0:	01075593          	srli	a1,a4,0x10
1c0099d4:	0087d613          	srli	a2,a5,0x8
1c0099d8:	0107d693          	srli	a3,a5,0x10
1c0099dc:	8361                	srli	a4,a4,0x18
1c0099de:	83e1                	srli	a5,a5,0x18
1c0099e0:	00640c23          	sb	t1,24(s0)
1c0099e4:	00a40ca3          	sb	a0,25(s0)
1c0099e8:	00b40d23          	sb	a1,26(s0)
1c0099ec:	00e40da3          	sb	a4,27(s0)
1c0099f0:	01140e23          	sb	a7,28(s0)
1c0099f4:	00c40ea3          	sb	a2,29(s0)
1c0099f8:	00d40f23          	sb	a3,30(s0)
1c0099fc:	00f40fa3          	sb	a5,31(s0)
1c009a00:	11c12083          	lw	ra,284(sp)
1c009a04:	11812403          	lw	s0,280(sp)
1c009a08:	11412483          	lw	s1,276(sp)
1c009a0c:	11012903          	lw	s2,272(sp)
1c009a10:	10c12983          	lw	s3,268(sp)
1c009a14:	10812a03          	lw	s4,264(sp)
1c009a18:	10412a83          	lw	s5,260(sp)
1c009a1c:	10012b03          	lw	s6,256(sp)
1c009a20:	5bfe                	lw	s7,252(sp)
1c009a22:	5c6e                	lw	s8,248(sp)
1c009a24:	5cde                	lw	s9,244(sp)
1c009a26:	5d4e                	lw	s10,240(sp)
1c009a28:	5dbe                	lw	s11,236(sp)
1c009a2a:	6115                	addi	sp,sp,288
1c009a2c:	8082                	ret

1c009a2e <sha3_512>:
1c009a2e:	7105                	addi	sp,sp,-480
1c009a30:	1c812c23          	sw	s0,472(sp)
1c009a34:	1d312623          	sw	s3,460(sp)
1c009a38:	1d412423          	sw	s4,456(sp)
1c009a3c:	1c112e23          	sw	ra,476(sp)
1c009a40:	1c912a23          	sw	s1,468(sp)
1c009a44:	1d212823          	sw	s2,464(sp)
1c009a48:	1d512223          	sw	s5,452(sp)
1c009a4c:	1d612023          	sw	s6,448(sp)
1c009a50:	1b712e23          	sw	s7,444(sp)
1c009a54:	1b812c23          	sw	s8,440(sp)
1c009a58:	1b912a23          	sw	s9,436(sp)
1c009a5c:	1ba12823          	sw	s10,432(sp)
1c009a60:	1bb12623          	sw	s11,428(sp)
1c009a64:	842a                	mv	s0,a0
1c009a66:	8a32                	mv	s4,a2
1c009a68:	0d810993          	addi	s3,sp,216
1c009a6c:	081c                	addi	a5,sp,16
1c009a6e:	4681                	li	a3,0
1c009a70:	4701                	li	a4,0
1c009a72:	c394                	sw	a3,0(a5)
1c009a74:	c3d8                	sw	a4,4(a5)
1c009a76:	07a1                	addi	a5,a5,8
1c009a78:	ff379be3          	bne	a5,s3,1c009a6e <sha3_512+0x40>
1c009a7c:	04700793          	li	a5,71
1c009a80:	0947f463          	bgeu	a5,s4,1c009b08 <sha3_512+0xda>
1c009a84:	04858a93          	addi	s5,a1,72
1c009a88:	8956                	mv	s2,s5
1c009a8a:	04700493          	li	s1,71
1c009a8e:	0818                	addi	a4,sp,16
1c009a90:	0015c783          	lbu	a5,1(a1)
1c009a94:	0025ce03          	lbu	t3,2(a1)
1c009a98:	0055c803          	lbu	a6,5(a1)
1c009a9c:	0045cf03          	lbu	t5,4(a1)
1c009aa0:	0065c503          	lbu	a0,6(a1)
1c009aa4:	0005ce83          	lbu	t4,0(a1)
1c009aa8:	0035c603          	lbu	a2,3(a1)
1c009aac:	0075c683          	lbu	a3,7(a1)
1c009ab0:	07a2                	slli	a5,a5,0x8
1c009ab2:	0e42                	slli	t3,t3,0x10
1c009ab4:	0822                	slli	a6,a6,0x8
1c009ab6:	00072303          	lw	t1,0(a4)
1c009aba:	00472883          	lw	a7,4(a4)
1c009abe:	01c7e7b3          	or	a5,a5,t3
1c009ac2:	01e86833          	or	a6,a6,t5
1c009ac6:	0542                	slli	a0,a0,0x10
1c009ac8:	01d7e7b3          	or	a5,a5,t4
1c009acc:	0662                	slli	a2,a2,0x18
1c009ace:	01056533          	or	a0,a0,a6
1c009ad2:	06e2                	slli	a3,a3,0x18
1c009ad4:	8fd1                	or	a5,a5,a2
1c009ad6:	8ec9                	or	a3,a3,a0
1c009ad8:	00f347b3          	xor	a5,t1,a5
1c009adc:	00d8c6b3          	xor	a3,a7,a3
1c009ae0:	c31c                	sw	a5,0(a4)
1c009ae2:	c354                	sw	a3,4(a4)
1c009ae4:	05a1                	addi	a1,a1,8
1c009ae6:	0721                	addi	a4,a4,8
1c009ae8:	fb2594e3          	bne	a1,s2,1c009a90 <sha3_512+0x62>
1c009aec:	080c                	addi	a1,sp,16
1c009aee:	852e                	mv	a0,a1
1c009af0:	9c0ff0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c009af4:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c009af8:	04890913          	addi	s2,s2,72
1c009afc:	85d6                	mv	a1,s5
1c009afe:	0144f563          	bgeu	s1,s4,1c009b08 <sha3_512+0xda>
1c009b02:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c009b06:	b761                	j	1c009a8e <sha3_512+0x60>
1c009b08:	1218                	addi	a4,sp,288
1c009b0a:	87ce                	mv	a5,s3
1c009b0c:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c009b10:	0791                	addi	a5,a5,4
1c009b12:	fee79de3          	bne	a5,a4,1c009b0c <sha3_512+0xde>
1c009b16:	080a0063          	beqz	s4,1c009b96 <sha3_512+0x168>
1c009b1a:	fffa0793          	addi	a5,s4,-1
1c009b1e:	4709                	li	a4,2
1c009b20:	68f77563          	bgeu	a4,a5,1c00a1aa <sha3_512+0x77c>
1c009b24:	ffca7813          	andi	a6,s4,-4
1c009b28:	87ae                	mv	a5,a1
1c009b2a:	982e                	add	a6,a6,a1
1c009b2c:	0017c603          	lbu	a2,1(a5)
1c009b30:	0007c503          	lbu	a0,0(a5)
1c009b34:	0027c683          	lbu	a3,2(a5)
1c009b38:	0037c703          	lbu	a4,3(a5)
1c009b3c:	0622                	slli	a2,a2,0x8
1c009b3e:	8e49                	or	a2,a2,a0
1c009b40:	06c2                	slli	a3,a3,0x10
1c009b42:	8ed1                	or	a3,a3,a2
1c009b44:	0762                	slli	a4,a4,0x18
1c009b46:	8f55                	or	a4,a4,a3
1c009b48:	00e9a023          	sw	a4,0(s3)
1c009b4c:	0791                	addi	a5,a5,4
1c009b4e:	0991                	addi	s3,s3,4
1c009b50:	fd079ee3          	bne	a5,a6,1c009b2c <sha3_512+0xfe>
1c009b54:	ffca7793          	andi	a5,s4,-4
1c009b58:	03478f63          	beq	a5,s4,1c009b96 <sha3_512+0x168>
1c009b5c:	00f58733          	add	a4,a1,a5
1c009b60:	00074603          	lbu	a2,0(a4)
1c009b64:	1314                	addi	a3,sp,416
1c009b66:	96be                	add	a3,a3,a5
1c009b68:	00178713          	addi	a4,a5,1
1c009b6c:	f2c68c23          	sb	a2,-200(a3)
1c009b70:	03477363          	bgeu	a4,s4,1c009b96 <sha3_512+0x168>
1c009b74:	00e586b3          	add	a3,a1,a4
1c009b78:	0006c683          	lbu	a3,0(a3)
1c009b7c:	1310                	addi	a2,sp,416
1c009b7e:	9732                	add	a4,a4,a2
1c009b80:	0789                	addi	a5,a5,2
1c009b82:	f2d70c23          	sb	a3,-200(a4)
1c009b86:	0147f863          	bgeu	a5,s4,1c009b96 <sha3_512+0x168>
1c009b8a:	95be                	add	a1,a1,a5
1c009b8c:	0005c703          	lbu	a4,0(a1)
1c009b90:	97b2                	add	a5,a5,a2
1c009b92:	f2e78c23          	sb	a4,-200(a5)
1c009b96:	131c                	addi	a5,sp,416
1c009b98:	9a3e                	add	s4,s4,a5
1c009b9a:	4799                	li	a5,6
1c009b9c:	f2fa0c23          	sb	a5,-200(s4)
1c009ba0:	0da14703          	lbu	a4,218(sp)
1c009ba4:	0d914f83          	lbu	t6,217(sp)
1c009ba8:	0e214783          	lbu	a5,226(sp)
1c009bac:	0e114e83          	lbu	t4,225(sp)
1c009bb0:	0e514303          	lbu	t1,229(sp)
1c009bb4:	0e414383          	lbu	t2,228(sp)
1c009bb8:	0e614803          	lbu	a6,230(sp)
1c009bbc:	0d814283          	lbu	t0,216(sp)
1c009bc0:	0e014f03          	lbu	t5,224(sp)
1c009bc4:	0db14503          	lbu	a0,219(sp)
1c009bc8:	0e314603          	lbu	a2,227(sp)
1c009bcc:	0e714683          	lbu	a3,231(sp)
1c009bd0:	0fa2                	slli	t6,t6,0x8
1c009bd2:	0ea2                	slli	t4,t4,0x8
1c009bd4:	0742                	slli	a4,a4,0x10
1c009bd6:	07c2                	slli	a5,a5,0x10
1c009bd8:	0322                	slli	t1,t1,0x8
1c009bda:	00736333          	or	t1,t1,t2
1c009bde:	01f76733          	or	a4,a4,t6
1c009be2:	01d7e7b3          	or	a5,a5,t4
1c009be6:	0842                	slli	a6,a6,0x10
1c009be8:	0dd14e03          	lbu	t3,221(sp)
1c009bec:	00576733          	or	a4,a4,t0
1c009bf0:	01e7e7b3          	or	a5,a5,t5
1c009bf4:	00686833          	or	a6,a6,t1
1c009bf8:	0662                	slli	a2,a2,0x18
1c009bfa:	06e2                	slli	a3,a3,0x18
1c009bfc:	0562                	slli	a0,a0,0x18
1c009bfe:	0dc14483          	lbu	s1,220(sp)
1c009c02:	0de14883          	lbu	a7,222(sp)
1c009c06:	8d59                	or	a0,a0,a4
1c009c08:	00f66733          	or	a4,a2,a5
1c009c0c:	0106e7b3          	or	a5,a3,a6
1c009c10:	46c2                	lw	a3,16(sp)
1c009c12:	0df14583          	lbu	a1,223(sp)
1c009c16:	0e22                	slli	t3,t3,0x8
1c009c18:	009e6e33          	or	t3,t3,s1
1c009c1c:	8d35                	xor	a0,a0,a3
1c009c1e:	08c2                	slli	a7,a7,0x10
1c009c20:	46d2                	lw	a3,20(sp)
1c009c22:	01c8e8b3          	or	a7,a7,t3
1c009c26:	05e2                	slli	a1,a1,0x18
1c009c28:	0115e5b3          	or	a1,a1,a7
1c009c2c:	8db5                	xor	a1,a1,a3
1c009c2e:	46e2                	lw	a3,24(sp)
1c009c30:	0ea14803          	lbu	a6,234(sp)
1c009c34:	0e914483          	lbu	s1,233(sp)
1c009c38:	8eb9                	xor	a3,a3,a4
1c009c3a:	4772                	lw	a4,28(sp)
1c009c3c:	0e814a83          	lbu	s5,232(sp)
1c009c40:	0eb14a03          	lbu	s4,235(sp)
1c009c44:	8f3d                	xor	a4,a4,a5
1c009c46:	0ec14d03          	lbu	s10,236(sp)
1c009c4a:	11f14783          	lbu	a5,287(sp)
1c009c4e:	0ed14903          	lbu	s2,237(sp)
1c009c52:	c82a                	sw	a0,16(sp)
1c009c54:	ca2e                	sw	a1,20(sp)
1c009c56:	cc36                	sw	a3,24(sp)
1c009c58:	ce3a                	sw	a4,28(sp)
1c009c5a:	0ee14f83          	lbu	t6,238(sp)
1c009c5e:	0f214283          	lbu	t0,242(sp)
1c009c62:	0f114f03          	lbu	t5,241(sp)
1c009c66:	0fd14883          	lbu	a7,253(sp)
1c009c6a:	0fc14b83          	lbu	s7,252(sp)
1c009c6e:	04a2                	slli	s1,s1,0x8
1c009c70:	0842                	slli	a6,a6,0x10
1c009c72:	02c2                	slli	t0,t0,0x10
1c009c74:	08a2                	slli	a7,a7,0x8
1c009c76:	00986833          	or	a6,a6,s1
1c009c7a:	0f22                	slli	t5,t5,0x8
1c009c7c:	01e2ef33          	or	t5,t0,t5
1c009c80:	01586833          	or	a6,a6,s5
1c009c84:	0178e2b3          	or	t0,a7,s7
1c009c88:	018a1893          	slli	a7,s4,0x18
1c009c8c:	0108e833          	or	a6,a7,a6
1c009c90:	5882                	lw	a7,32(sp)
1c009c92:	0ef14503          	lbu	a0,239(sp)
1c009c96:	0922                	slli	s2,s2,0x8
1c009c98:	01a96933          	or	s2,s2,s10
1c009c9c:	0108c8b3          	xor	a7,a7,a6
1c009ca0:	0fc2                	slli	t6,t6,0x10
1c009ca2:	5812                	lw	a6,36(sp)
1c009ca4:	0f014983          	lbu	s3,240(sp)
1c009ca8:	0f314583          	lbu	a1,243(sp)
1c009cac:	012fefb3          	or	t6,t6,s2
1c009cb0:	0562                	slli	a0,a0,0x18
1c009cb2:	0f514e83          	lbu	t4,245(sp)
1c009cb6:	01f56533          	or	a0,a0,t6
1c009cba:	0f414c83          	lbu	s9,244(sp)
1c009cbe:	0f614c03          	lbu	s8,246(sp)
1c009cc2:	00a84833          	xor	a6,a6,a0
1c009cc6:	5522                	lw	a0,40(sp)
1c009cc8:	0f714603          	lbu	a2,247(sp)
1c009ccc:	013f6f33          	or	t5,t5,s3
1c009cd0:	05e2                	slli	a1,a1,0x18
1c009cd2:	0f914e03          	lbu	t3,249(sp)
1c009cd6:	0fa14303          	lbu	t1,250(sp)
1c009cda:	01e5e5b3          	or	a1,a1,t5
1c009cde:	0ea2                	slli	t4,t4,0x8
1c009ce0:	019ee4b3          	or	s1,t4,s9
1c009ce4:	8d2d                	xor	a0,a0,a1
1c009ce6:	010c1e93          	slli	t4,s8,0x10
1c009cea:	55b2                	lw	a1,44(sp)
1c009cec:	0f814383          	lbu	t2,248(sp)
1c009cf0:	0fb14683          	lbu	a3,251(sp)
1c009cf4:	009eeeb3          	or	t4,t4,s1
1c009cf8:	0662                	slli	a2,a2,0x18
1c009cfa:	01d66633          	or	a2,a2,t4
1c009cfe:	0342                	slli	t1,t1,0x10
1c009d00:	0e22                	slli	t3,t3,0x8
1c009d02:	0fe14b03          	lbu	s6,254(sp)
1c009d06:	8db1                	xor	a1,a1,a2
1c009d08:	006e6e33          	or	t3,t3,t1
1c009d0c:	5642                	lw	a2,48(sp)
1c009d0e:	0ff14703          	lbu	a4,255(sp)
1c009d12:	007e6e33          	or	t3,t3,t2
1c009d16:	06e2                	slli	a3,a3,0x18
1c009d18:	01c6e6b3          	or	a3,a3,t3
1c009d1c:	8e35                	xor	a2,a2,a3
1c009d1e:	010b1313          	slli	t1,s6,0x10
1c009d22:	56d2                	lw	a3,52(sp)
1c009d24:	00536333          	or	t1,t1,t0
1c009d28:	0762                	slli	a4,a4,0x18
1c009d2a:	00676733          	or	a4,a4,t1
1c009d2e:	8f35                	xor	a4,a4,a3
1c009d30:	10114e83          	lbu	t4,257(sp)
1c009d34:	10214a83          	lbu	s5,258(sp)
1c009d38:	d046                	sw	a7,32(sp)
1c009d3a:	d242                	sw	a6,36(sp)
1c009d3c:	d42a                	sw	a0,40(sp)
1c009d3e:	d62e                	sw	a1,44(sp)
1c009d40:	d832                	sw	a2,48(sp)
1c009d42:	da3a                	sw	a4,52(sp)
1c009d44:	10014903          	lbu	s2,256(sp)
1c009d48:	10914303          	lbu	t1,265(sp)
1c009d4c:	10a14983          	lbu	s3,266(sp)
1c009d50:	10814383          	lbu	t2,264(sp)
1c009d54:	10514f83          	lbu	t6,261(sp)
1c009d58:	10b14603          	lbu	a2,267(sp)
1c009d5c:	10414b03          	lbu	s6,260(sp)
1c009d60:	10614e03          	lbu	t3,262(sp)
1c009d64:	09c2                	slli	s3,s3,0x10
1c009d66:	0322                	slli	t1,t1,0x8
1c009d68:	10714583          	lbu	a1,263(sp)
1c009d6c:	01336333          	or	t1,t1,s3
1c009d70:	00736333          	or	t1,t1,t2
1c009d74:	10d14f03          	lbu	t5,269(sp)
1c009d78:	0fa2                	slli	t6,t6,0x8
1c009d7a:	0662                	slli	a2,a2,0x18
1c009d7c:	10c14a03          	lbu	s4,268(sp)
1c009d80:	016fefb3          	or	t6,t6,s6
1c009d84:	11114803          	lbu	a6,273(sp)
1c009d88:	11214483          	lbu	s1,274(sp)
1c009d8c:	10e14883          	lbu	a7,270(sp)
1c009d90:	00666633          	or	a2,a2,t1
1c009d94:	0e42                	slli	t3,t3,0x10
1c009d96:	5372                	lw	t1,60(sp)
1c009d98:	01fe6e33          	or	t3,t3,t6
1c009d9c:	10f14683          	lbu	a3,271(sp)
1c009da0:	05e2                	slli	a1,a1,0x18
1c009da2:	11014283          	lbu	t0,272(sp)
1c009da6:	11314703          	lbu	a4,275(sp)
1c009daa:	01c5e5b3          	or	a1,a1,t3
1c009dae:	0f22                	slli	t5,t5,0x8
1c009db0:	014f6f33          	or	t5,t5,s4
1c009db4:	00b34333          	xor	t1,t1,a1
1c009db8:	04c2                	slli	s1,s1,0x10
1c009dba:	4596                	lw	a1,68(sp)
1c009dbc:	0822                	slli	a6,a6,0x8
1c009dbe:	08c2                	slli	a7,a7,0x10
1c009dc0:	10314503          	lbu	a0,259(sp)
1c009dc4:	01e8e8b3          	or	a7,a7,t5
1c009dc8:	00986833          	or	a6,a6,s1
1c009dcc:	06e2                	slli	a3,a3,0x18
1c009dce:	00586833          	or	a6,a6,t0
1c009dd2:	0116e6b3          	or	a3,a3,a7
1c009dd6:	0ac2                	slli	s5,s5,0x10
1c009dd8:	0ea2                	slli	t4,t4,0x8
1c009dda:	0762                	slli	a4,a4,0x18
1c009ddc:	5e62                	lw	t3,56(sp)
1c009dde:	8db5                	xor	a1,a1,a3
1c009de0:	015eeeb3          	or	t4,t4,s5
1c009de4:	46a6                	lw	a3,72(sp)
1c009de6:	01076733          	or	a4,a4,a6
1c009dea:	4806                	lw	a6,64(sp)
1c009dec:	012eeeb3          	or	t4,t4,s2
1c009df0:	0562                	slli	a0,a0,0x18
1c009df2:	01d56533          	or	a0,a0,t4
1c009df6:	00ae4e33          	xor	t3,t3,a0
1c009dfa:	00c84833          	xor	a6,a6,a2
1c009dfe:	8f35                	xor	a4,a4,a3
1c009e00:	11414f03          	lbu	t5,276(sp)
1c009e04:	11514883          	lbu	a7,277(sp)
1c009e08:	11614503          	lbu	a0,278(sp)
1c009e0c:	11714603          	lbu	a2,279(sp)
1c009e10:	dc72                	sw	t3,56(sp)
1c009e12:	de1a                	sw	t1,60(sp)
1c009e14:	c0c2                	sw	a6,64(sp)
1c009e16:	c2ae                	sw	a1,68(sp)
1c009e18:	c4ba                	sw	a4,72(sp)
1c009e1a:	11914703          	lbu	a4,281(sp)
1c009e1e:	11a14303          	lbu	t1,282(sp)
1c009e22:	11814e03          	lbu	t3,280(sp)
1c009e26:	11b14683          	lbu	a3,283(sp)
1c009e2a:	0342                	slli	t1,t1,0x10
1c009e2c:	0722                	slli	a4,a4,0x8
1c009e2e:	00676733          	or	a4,a4,t1
1c009e32:	01c76733          	or	a4,a4,t3
1c009e36:	06e2                	slli	a3,a3,0x18
1c009e38:	08a2                	slli	a7,a7,0x8
1c009e3a:	01e8e8b3          	or	a7,a7,t5
1c009e3e:	8f55                	or	a4,a4,a3
1c009e40:	0542                	slli	a0,a0,0x10
1c009e42:	46b6                	lw	a3,76(sp)
1c009e44:	01156533          	or	a0,a0,a7
1c009e48:	0662                	slli	a2,a2,0x18
1c009e4a:	11d14803          	lbu	a6,285(sp)
1c009e4e:	8e49                	or	a2,a2,a0
1c009e50:	11c14e83          	lbu	t4,284(sp)
1c009e54:	8e35                	xor	a2,a2,a3
1c009e56:	11e14583          	lbu	a1,286(sp)
1c009e5a:	46c6                	lw	a3,80(sp)
1c009e5c:	0822                	slli	a6,a6,0x8
1c009e5e:	01d86833          	or	a6,a6,t4
1c009e62:	8eb9                	xor	a3,a3,a4
1c009e64:	0807e793          	ori	a5,a5,128
1c009e68:	4756                	lw	a4,84(sp)
1c009e6a:	05c2                	slli	a1,a1,0x10
1c009e6c:	0105e5b3          	or	a1,a1,a6
1c009e70:	07e2                	slli	a5,a5,0x18
1c009e72:	8fcd                	or	a5,a5,a1
1c009e74:	080c                	addi	a1,sp,16
1c009e76:	8fb9                	xor	a5,a5,a4
1c009e78:	852e                	mv	a0,a1
1c009e7a:	c6b2                	sw	a2,76(sp)
1c009e7c:	c8b6                	sw	a3,80(sp)
1c009e7e:	cabe                	sw	a5,84(sp)
1c009e80:	e31fe0ef          	jal	ra,1c008cb0 <KeccakF1600_StatePermute>
1c009e84:	4552                	lw	a0,20(sp)
1c009e86:	45f2                	lw	a1,28(sp)
1c009e88:	5612                	lw	a2,36(sp)
1c009e8a:	56b2                	lw	a3,44(sp)
1c009e8c:	57d2                	lw	a5,52(sp)
1c009e8e:	5772                	lw	a4,60(sp)
1c009e90:	00855b13          	srli	s6,a0,0x8
1c009e94:	01055a93          	srli	s5,a0,0x10
1c009e98:	01855a13          	srli	s4,a0,0x18
1c009e9c:	0085d993          	srli	s3,a1,0x8
1c009ea0:	0105d913          	srli	s2,a1,0x10
1c009ea4:	0185d493          	srli	s1,a1,0x18
1c009ea8:	0ca10e23          	sb	a0,220(sp)
1c009eac:	0d610ea3          	sb	s6,221(sp)
1c009eb0:	0d510f23          	sb	s5,222(sp)
1c009eb4:	0d410fa3          	sb	s4,223(sp)
1c009eb8:	00865393          	srli	t2,a2,0x8
1c009ebc:	01065293          	srli	t0,a2,0x10
1c009ec0:	01865f93          	srli	t6,a2,0x18
1c009ec4:	0086df13          	srli	t5,a3,0x8
1c009ec8:	0106de93          	srli	t4,a3,0x10
1c009ecc:	0186de13          	srli	t3,a3,0x18
1c009ed0:	0087d313          	srli	t1,a5,0x8
1c009ed4:	0107d893          	srli	a7,a5,0x10
1c009ed8:	0187d813          	srli	a6,a5,0x18
1c009edc:	0eb10223          	sb	a1,228(sp)
1c009ee0:	0f3102a3          	sb	s3,229(sp)
1c009ee4:	0f210323          	sb	s2,230(sp)
1c009ee8:	0e9103a3          	sb	s1,231(sp)
1c009eec:	45c2                	lw	a1,16(sp)
1c009eee:	4536                	lw	a0,76(sp)
1c009ef0:	0ec10623          	sb	a2,236(sp)
1c009ef4:	0e7106a3          	sb	t2,237(sp)
1c009ef8:	467e                	lw	a2,220(sp)
1c009efa:	0e510723          	sb	t0,238(sp)
1c009efe:	0ff107a3          	sb	t6,239(sp)
1c009f02:	0ed10a23          	sb	a3,244(sp)
1c009f06:	0fe10aa3          	sb	t5,245(sp)
1c009f0a:	46e2                	lw	a3,24(sp)
1c009f0c:	0fd10b23          	sb	t4,246(sp)
1c009f10:	0fc10ba3          	sb	t3,247(sp)
1c009f14:	0e610ea3          	sb	t1,253(sp)
1c009f18:	0f110f23          	sb	a7,254(sp)
1c009f1c:	0f010fa3          	sb	a6,255(sp)
1c009f20:	10e10223          	sb	a4,260(sp)
1c009f24:	4816                	lw	a6,68(sp)
1c009f26:	0ef10e23          	sb	a5,252(sp)
1c009f2a:	579e                	lw	a5,228(sp)
1c009f2c:	00875d93          	srli	s11,a4,0x8
1c009f30:	01075d13          	srli	s10,a4,0x10
1c009f34:	00885c93          	srli	s9,a6,0x8
1c009f38:	01085c13          	srli	s8,a6,0x10
1c009f3c:	01885b93          	srli	s7,a6,0x18
1c009f40:	00855b13          	srli	s6,a0,0x8
1c009f44:	01055a93          	srli	s5,a0,0x10
1c009f48:	01855a13          	srli	s4,a0,0x18
1c009f4c:	0085d993          	srli	s3,a1,0x8
1c009f50:	0105d913          	srli	s2,a1,0x10
1c009f54:	0185d493          	srli	s1,a1,0x18
1c009f58:	00865393          	srli	t2,a2,0x8
1c009f5c:	01065293          	srli	t0,a2,0x10
1c009f60:	01865f93          	srli	t6,a2,0x18
1c009f64:	0086df13          	srli	t5,a3,0x8
1c009f68:	0106de93          	srli	t4,a3,0x10
1c009f6c:	0186de13          	srli	t3,a3,0x18
1c009f70:	0087d313          	srli	t1,a5,0x8
1c009f74:	0107d893          	srli	a7,a5,0x10
1c009f78:	00f40623          	sb	a5,12(s0)
1c009f7c:	8361                	srli	a4,a4,0x18
1c009f7e:	83e1                	srli	a5,a5,0x18
1c009f80:	11b102a3          	sb	s11,261(sp)
1c009f84:	11a10323          	sb	s10,262(sp)
1c009f88:	10e103a3          	sb	a4,263(sp)
1c009f8c:	11010623          	sb	a6,268(sp)
1c009f90:	4706                	lw	a4,64(sp)
1c009f92:	119106a3          	sb	s9,269(sp)
1c009f96:	11810723          	sb	s8,270(sp)
1c009f9a:	117107a3          	sb	s7,271(sp)
1c009f9e:	10a10a23          	sb	a0,276(sp)
1c009fa2:	11610aa3          	sb	s6,277(sp)
1c009fa6:	11510b23          	sb	s5,278(sp)
1c009faa:	11410ba3          	sb	s4,279(sp)
1c009fae:	00b40023          	sb	a1,0(s0)
1c009fb2:	4a26                	lw	s4,72(sp)
1c009fb4:	55be                	lw	a1,236(sp)
1c009fb6:	013400a3          	sb	s3,1(s0)
1c009fba:	01240123          	sb	s2,2(s0)
1c009fbe:	009401a3          	sb	s1,3(s0)
1c009fc2:	00c40223          	sb	a2,4(s0)
1c009fc6:	007402a3          	sb	t2,5(s0)
1c009fca:	565e                	lw	a2,244(sp)
1c009fcc:	00540323          	sb	t0,6(s0)
1c009fd0:	01f403a3          	sb	t6,7(s0)
1c009fd4:	01e404a3          	sb	t5,9(s0)
1c009fd8:	01d40523          	sb	t4,10(s0)
1c009fdc:	01c405a3          	sb	t3,11(s0)
1c009fe0:	006406a3          	sb	t1,13(s0)
1c009fe4:	01140723          	sb	a7,14(s0)
1c009fe8:	00f407a3          	sb	a5,15(s0)
1c009fec:	00d40423          	sb	a3,8(s0)
1c009ff0:	56fe                	lw	a3,252(sp)
1c009ff2:	5502                	lw	a0,32(sp)
1c009ff4:	54a2                	lw	s1,40(sp)
1c009ff6:	0185db13          	srli	s6,a1,0x18
1c009ffa:	00855d93          	srli	s11,a0,0x8
1c009ffe:	01055d13          	srli	s10,a0,0x10
1c00a002:	01855c93          	srli	s9,a0,0x18
1c00a006:	5522                	lw	a0,40(sp)
1c00a008:	5842                	lw	a6,48(sp)
1c00a00a:	0085dc13          	srli	s8,a1,0x8
1c00a00e:	00855a93          	srli	s5,a0,0x8
1c00a012:	8141                	srli	a0,a0,0x10
1c00a014:	c42a                	sw	a0,8(sp)
1c00a016:	5562                	lw	a0,56(sp)
1c00a018:	0105db93          	srli	s7,a1,0x10
1c00a01c:	00b40a23          	sb	a1,20(s0)
1c00a020:	8161                	srli	a0,a0,0x18
1c00a022:	c22a                	sw	a0,4(sp)
1c00a024:	5502                	lw	a0,32(sp)
1c00a026:	45a2                	lw	a1,8(sp)
1c00a028:	01640ba3          	sb	s6,23(s0)
1c00a02c:	c62a                	sw	a0,12(sp)
1c00a02e:	00c14503          	lbu	a0,12(sp)
1c00a032:	5b22                	lw	s6,40(sp)
1c00a034:	0184d993          	srli	s3,s1,0x18
1c00a038:	00865913          	srli	s2,a2,0x8
1c00a03c:	01065493          	srli	s1,a2,0x10
1c00a040:	01865393          	srli	t2,a2,0x18
1c00a044:	00a10623          	sb	a0,12(sp)
1c00a048:	0ff57513          	andi	a0,a0,255
1c00a04c:	10412783          	lw	a5,260(sp)
1c00a050:	00885293          	srli	t0,a6,0x8
1c00a054:	01085f93          	srli	t6,a6,0x10
1c00a058:	01885f13          	srli	t5,a6,0x18
1c00a05c:	0086de93          	srli	t4,a3,0x8
1c00a060:	5862                	lw	a6,56(sp)
1c00a062:	0106de13          	srli	t3,a3,0x10
1c00a066:	0186d313          	srli	t1,a3,0x18
1c00a06a:	00a40823          	sb	a0,16(s0)
1c00a06e:	01b408a3          	sb	s11,17(s0)
1c00a072:	01a40923          	sb	s10,18(s0)
1c00a076:	019409a3          	sb	s9,19(s0)
1c00a07a:	01840aa3          	sb	s8,21(s0)
1c00a07e:	01740b23          	sb	s7,22(s0)
1c00a082:	01640c23          	sb	s6,24(s0)
1c00a086:	01540ca3          	sb	s5,25(s0)
1c00a08a:	00b40d23          	sb	a1,26(s0)
1c00a08e:	01340da3          	sb	s3,27(s0)
1c00a092:	01240ea3          	sb	s2,29(s0)
1c00a096:	00940f23          	sb	s1,30(s0)
1c00a09a:	00740fa3          	sb	t2,31(s0)
1c00a09e:	00c40e23          	sb	a2,28(s0)
1c00a0a2:	5642                	lw	a2,48(sp)
1c00a0a4:	02d40223          	sb	a3,36(s0)
1c00a0a8:	56e2                	lw	a3,56(sp)
1c00a0aa:	02c40023          	sb	a2,32(s0)
1c00a0ae:	10c12603          	lw	a2,268(sp)
1c00a0b2:	02d40423          	sb	a3,40(s0)
1c00a0b6:	4692                	lw	a3,4(sp)
1c00a0b8:	00885893          	srli	a7,a6,0x8
1c00a0bc:	025400a3          	sb	t0,33(s0)
1c00a0c0:	02d405a3          	sb	a3,43(s0)
1c00a0c4:	11412683          	lw	a3,276(sp)
1c00a0c8:	03f40123          	sb	t6,34(s0)
1c00a0cc:	03e401a3          	sb	t5,35(s0)
1c00a0d0:	03d402a3          	sb	t4,37(s0)
1c00a0d4:	03c40323          	sb	t3,38(s0)
1c00a0d8:	026403a3          	sb	t1,39(s0)
1c00a0dc:	02f40623          	sb	a5,44(s0)
1c00a0e0:	0087d993          	srli	s3,a5,0x8
1c00a0e4:	0107d913          	srli	s2,a5,0x10
1c00a0e8:	01085813          	srli	a6,a6,0x10
1c00a0ec:	00875493          	srli	s1,a4,0x8
1c00a0f0:	008a5e13          	srli	t3,s4,0x8
1c00a0f4:	010a5313          	srli	t1,s4,0x10
1c00a0f8:	83e1                	srli	a5,a5,0x18
1c00a0fa:	01075393          	srli	t2,a4,0x10
1c00a0fe:	01875293          	srli	t0,a4,0x18
1c00a102:	00865f93          	srli	t6,a2,0x8
1c00a106:	01065f13          	srli	t5,a2,0x10
1c00a10a:	01865e93          	srli	t4,a2,0x18
1c00a10e:	031404a3          	sb	a7,41(s0)
1c00a112:	03040523          	sb	a6,42(s0)
1c00a116:	033406a3          	sb	s3,45(s0)
1c00a11a:	03240723          	sb	s2,46(s0)
1c00a11e:	029408a3          	sb	s1,49(s0)
1c00a122:	03440c23          	sb	s4,56(s0)
1c00a126:	018a5893          	srli	a7,s4,0x18
1c00a12a:	02f407a3          	sb	a5,47(s0)
1c00a12e:	02e40823          	sb	a4,48(s0)
1c00a132:	02740923          	sb	t2,50(s0)
1c00a136:	025409a3          	sb	t0,51(s0)
1c00a13a:	02c40a23          	sb	a2,52(s0)
1c00a13e:	03f40aa3          	sb	t6,53(s0)
1c00a142:	03e40b23          	sb	t5,54(s0)
1c00a146:	03d40ba3          	sb	t4,55(s0)
1c00a14a:	03c40ca3          	sb	t3,57(s0)
1c00a14e:	02640d23          	sb	t1,58(s0)
1c00a152:	0086d813          	srli	a6,a3,0x8
1c00a156:	0106d513          	srli	a0,a3,0x10
1c00a15a:	0186d593          	srli	a1,a3,0x18
1c00a15e:	03140da3          	sb	a7,59(s0)
1c00a162:	02d40e23          	sb	a3,60(s0)
1c00a166:	03040ea3          	sb	a6,61(s0)
1c00a16a:	02a40f23          	sb	a0,62(s0)
1c00a16e:	02b40fa3          	sb	a1,63(s0)
1c00a172:	1dc12083          	lw	ra,476(sp)
1c00a176:	1d812403          	lw	s0,472(sp)
1c00a17a:	1d412483          	lw	s1,468(sp)
1c00a17e:	1d012903          	lw	s2,464(sp)
1c00a182:	1cc12983          	lw	s3,460(sp)
1c00a186:	1c812a03          	lw	s4,456(sp)
1c00a18a:	1c412a83          	lw	s5,452(sp)
1c00a18e:	1c012b03          	lw	s6,448(sp)
1c00a192:	1bc12b83          	lw	s7,444(sp)
1c00a196:	1b812c03          	lw	s8,440(sp)
1c00a19a:	1b412c83          	lw	s9,436(sp)
1c00a19e:	1b012d03          	lw	s10,432(sp)
1c00a1a2:	1ac12d83          	lw	s11,428(sp)
1c00a1a6:	613d                	addi	sp,sp,480
1c00a1a8:	8082                	ret
1c00a1aa:	4781                	li	a5,0
1c00a1ac:	ba45                	j	1c009b5c <sha3_512+0x12e>

1c00a1ae <PQCLEAN_KYBER512_CLEAN_gen_matrix>:
1c00a1ae:	db010113          	addi	sp,sp,-592
1c00a1b2:	c62a                	sw	a0,12(sp)
1c00a1b4:	47b2                	lw	a5,12(sp)
1c00a1b6:	23612823          	sw	s6,560(sp)
1c00a1ba:	4b01                	li	s6,0
1c00a1bc:	23512a23          	sw	s5,564(sp)
1c00a1c0:	00ab1a93          	slli	s5,s6,0xa
1c00a1c4:	6805                	lui	a6,0x1
1c00a1c6:	97d6                	add	a5,a5,s5
1c00a1c8:	24812423          	sw	s0,584(sp)
1c00a1cc:	24912223          	sw	s1,580(sp)
1c00a1d0:	25212023          	sw	s2,576(sp)
1c00a1d4:	23412c23          	sw	s4,568(sp)
1c00a1d8:	23712623          	sw	s7,556(sp)
1c00a1dc:	23812423          	sw	s8,552(sp)
1c00a1e0:	23912223          	sw	s9,548(sp)
1c00a1e4:	23a12023          	sw	s10,544(sp)
1c00a1e8:	24112623          	sw	ra,588(sp)
1c00a1ec:	23312e23          	sw	s3,572(sp)
1c00a1f0:	21b12e23          	sw	s11,540(sp)
1c00a1f4:	8c2e                	mv	s8,a1
1c00a1f6:	c432                	sw	a2,8(sp)
1c00a1f8:	20c10a13          	addi	s4,sp,524
1c00a1fc:	fff80b93          	addi	s7,a6,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00a200:	d0080d13          	addi	s10,a6,-768
1c00a204:	1960                	addi	s0,sp,188
1c00a206:	0ffb7c93          	andi	s9,s6,255
1c00a20a:	c23e                	sw	a5,4(sp)
1c00a20c:	4901                	li	s2,0
1c00a20e:	10000493          	li	s1,256
1c00a212:	47a2                	lw	a5,8(sp)
1c00a214:	0ff97613          	andi	a2,s2,255
1c00a218:	c3d9                	beqz	a5,1c00a29e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xf0>
1c00a21a:	86b2                	mv	a3,a2
1c00a21c:	85e2                	mv	a1,s8
1c00a21e:	8666                	mv	a2,s9
1c00a220:	0808                	addi	a0,sp,16
1c00a222:	4db000ef          	jal	ra,1c00aefc <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00a226:	0810                	addi	a2,sp,16
1c00a228:	458d                	li	a1,3
1c00a22a:	0848                	addi	a0,sp,20
1c00a22c:	9a0ff0ef          	jal	ra,1c0093cc <shake128_squeezeblocks>
1c00a230:	4792                	lw	a5,4(sp)
1c00a232:	00991313          	slli	t1,s2,0x9
1c00a236:	0858                	addi	a4,sp,20
1c00a238:	00f30ab3          	add	s5,t1,a5
1c00a23c:	4d81                	li	s11,0
1c00a23e:	00174583          	lbu	a1,1(a4)
1c00a242:	00074603          	lbu	a2,0(a4)
1c00a246:	001d9693          	slli	a3,s11,0x1
1c00a24a:	00859793          	slli	a5,a1,0x8
1c00a24e:	8fd1                	or	a5,a5,a2
1c00a250:	0177f7b3          	and	a5,a5,s7
1c00a254:	07c2                	slli	a5,a5,0x10
1c00a256:	83c1                	srli	a5,a5,0x10
1c00a258:	00274603          	lbu	a2,2(a4)
1c00a25c:	96d6                	add	a3,a3,s5
1c00a25e:	0045de13          	srli	t3,a1,0x4
1c00a262:	001d8513          	addi	a0,s11,1
1c00a266:	04fd6263          	bltu	s10,a5,1c00a2aa <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xfc>
1c00a26a:	00f69023          	sh	a5,0(a3)
1c00a26e:	10951863          	bne	a0,s1,1c00a37e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1d0>
1c00a272:	0808                	addi	a0,sp,16
1c00a274:	a4cff0ef          	jal	ra,1c0094c0 <shake128_ctx_release>
1c00a278:	0c090463          	beqz	s2,1c00a340 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x192>
1c00a27c:	0d2b0463          	beq	s6,s2,1c00a344 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x196>
1c00a280:	47b2                	lw	a5,12(sp)
1c00a282:	4b05                	li	s6,1
1c00a284:	00ab1a93          	slli	s5,s6,0xa
1c00a288:	97d6                	add	a5,a5,s5
1c00a28a:	c23e                	sw	a5,4(sp)
1c00a28c:	47a2                	lw	a5,8(sp)
1c00a28e:	4901                	li	s2,0
1c00a290:	0ffb7c93          	andi	s9,s6,255
1c00a294:	10000493          	li	s1,256
1c00a298:	0ff97613          	andi	a2,s2,255
1c00a29c:	ffbd                	bnez	a5,1c00a21a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x6c>
1c00a29e:	86e6                	mv	a3,s9
1c00a2a0:	85e2                	mv	a1,s8
1c00a2a2:	0808                	addi	a0,sp,16
1c00a2a4:	459000ef          	jal	ra,1c00aefc <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00a2a8:	bfbd                	j	1c00a226 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x78>
1c00a2aa:	0612                	slli	a2,a2,0x4
1c00a2ac:	01c66633          	or	a2,a2,t3
1c00a2b0:	00cd4863          	blt	s10,a2,1c00a2c0 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x112>
1c00a2b4:	001d9793          	slli	a5,s11,0x1
1c00a2b8:	97d6                	add	a5,a5,s5
1c00a2ba:	00c79023          	sh	a2,0(a5)
1c00a2be:	0d85                	addi	s11,s11,1
1c00a2c0:	fa9d89e3          	beq	s11,s1,1c00a272 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00a2c4:	070d                	addi	a4,a4,3
1c00a2c6:	f6ea1ce3          	bne	s4,a4,1c00a23e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x90>
1c00a2ca:	0ff00993          	li	s3,255
1c00a2ce:	a821                	j	1c00a2e6 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x138>
1c00a2d0:	00171593          	slli	a1,a4,0x1
1c00a2d4:	95aa                	add	a1,a1,a0
1c00a2d6:	0705                	addi	a4,a4,1
1c00a2d8:	00f59023          	sh	a5,0(a1)
1c00a2dc:	0bc76863          	bltu	a4,t3,1c00a38c <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1de>
1c00a2e0:	9dba                	add	s11,s11,a4
1c00a2e2:	f9b9e8e3          	bltu	s3,s11,1c00a272 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00a2e6:	0810                	addi	a2,sp,16
1c00a2e8:	0848                	addi	a0,sp,20
1c00a2ea:	4585                	li	a1,1
1c00a2ec:	8e0ff0ef          	jal	ra,1c0093cc <shake128_squeezeblocks>
1c00a2f0:	001d9513          	slli	a0,s11,0x1
1c00a2f4:	9556                	add	a0,a0,s5
1c00a2f6:	41b48e33          	sub	t3,s1,s11
1c00a2fa:	0850                	addi	a2,sp,20
1c00a2fc:	4701                	li	a4,0
1c00a2fe:	00164583          	lbu	a1,1(a2)
1c00a302:	00064e83          	lbu	t4,0(a2)
1c00a306:	00264683          	lbu	a3,2(a2)
1c00a30a:	00859793          	slli	a5,a1,0x8
1c00a30e:	01d7e7b3          	or	a5,a5,t4
1c00a312:	0177f7b3          	and	a5,a5,s7
1c00a316:	07c2                	slli	a5,a5,0x10
1c00a318:	0692                	slli	a3,a3,0x4
1c00a31a:	8191                	srli	a1,a1,0x4
1c00a31c:	83c1                	srli	a5,a5,0x10
1c00a31e:	8ecd                	or	a3,a3,a1
1c00a320:	fafd78e3          	bgeu	s10,a5,1c00a2d0 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x122>
1c00a324:	00dd4863          	blt	s10,a3,1c00a334 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x186>
1c00a328:	00171793          	slli	a5,a4,0x1
1c00a32c:	97aa                	add	a5,a5,a0
1c00a32e:	00d79023          	sh	a3,0(a5)
1c00a332:	0705                	addi	a4,a4,1
1c00a334:	fbc776e3          	bgeu	a4,t3,1c00a2e0 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c00a338:	060d                	addi	a2,a2,3
1c00a33a:	fcc412e3          	bne	s0,a2,1c00a2fe <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x150>
1c00a33e:	b74d                	j	1c00a2e0 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c00a340:	4905                	li	s2,1
1c00a342:	bdc1                	j	1c00a212 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x64>
1c00a344:	24c12083          	lw	ra,588(sp)
1c00a348:	24812403          	lw	s0,584(sp)
1c00a34c:	24412483          	lw	s1,580(sp)
1c00a350:	24012903          	lw	s2,576(sp)
1c00a354:	23c12983          	lw	s3,572(sp)
1c00a358:	23812a03          	lw	s4,568(sp)
1c00a35c:	23412a83          	lw	s5,564(sp)
1c00a360:	23012b03          	lw	s6,560(sp)
1c00a364:	22c12b83          	lw	s7,556(sp)
1c00a368:	22812c03          	lw	s8,552(sp)
1c00a36c:	22412c83          	lw	s9,548(sp)
1c00a370:	22012d03          	lw	s10,544(sp)
1c00a374:	21c12d83          	lw	s11,540(sp)
1c00a378:	25010113          	addi	sp,sp,592
1c00a37c:	8082                	ret
1c00a37e:	8191                	srli	a1,a1,0x4
1c00a380:	0612                	slli	a2,a2,0x4
1c00a382:	8e4d                	or	a2,a2,a1
1c00a384:	8daa                	mv	s11,a0
1c00a386:	f2cd57e3          	bge	s10,a2,1c00a2b4 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x106>
1c00a38a:	bf2d                	j	1c00a2c4 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x116>
1c00a38c:	f8dd5ee3          	bge	s10,a3,1c00a328 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x17a>
1c00a390:	b765                	j	1c00a338 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x18a>

1c00a392 <PQCLEAN_KYBER512_CLEAN_indcpa_enc>:
1c00a392:	b7010113          	addi	sp,sp,-1168
1c00a396:	7379                	lui	t1,0xffffe
1c00a398:	48112623          	sw	ra,1164(sp)
1c00a39c:	48812423          	sw	s0,1160(sp)
1c00a3a0:	48912223          	sw	s1,1156(sp)
1c00a3a4:	49212023          	sw	s2,1152(sp)
1c00a3a8:	47312e23          	sw	s3,1148(sp)
1c00a3ac:	47412c23          	sw	s4,1144(sp)
1c00a3b0:	47512a23          	sw	s5,1140(sp)
1c00a3b4:	47612823          	sw	s6,1136(sp)
1c00a3b8:	47712623          	sw	s7,1132(sp)
1c00a3bc:	47812423          	sw	s8,1128(sp)
1c00a3c0:	47912223          	sw	s9,1124(sp)
1c00a3c4:	47a12023          	sw	s10,1120(sp)
1c00a3c8:	45b12e23          	sw	s11,1116(sp)
1c00a3cc:	6b09                	lui	s6,0x2
1c00a3ce:	911a                	add	sp,sp,t1
1c00a3d0:	74fd                	lui	s1,0xfffff
1c00a3d2:	1818                	addi	a4,sp,48
1c00a3d4:	420b0793          	addi	a5,s6,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a3d8:	97ba                	add	a5,a5,a4
1c00a3da:	c0048a13          	addi	s4,s1,-1024 # ffffec00 <__l2_shared_end+0xe3feec00>
1c00a3de:	9a3e                	add	s4,s4,a5
1c00a3e0:	8aae                	mv	s5,a1
1c00a3e2:	89aa                	mv	s3,a0
1c00a3e4:	85b2                	mv	a1,a2
1c00a3e6:	8552                	mv	a0,s4
1c00a3e8:	8432                	mv	s0,a2
1c00a3ea:	8936                	mv	s2,a3
1c00a3ec:	0bb000ef          	jal	ra,1c00aca6 <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>
1c00a3f0:	30044083          	lbu	ra,768(s0)
1c00a3f4:	30b44b03          	lbu	s6,779(s0)
1c00a3f8:	31444783          	lbu	a5,788(s0)
1c00a3fc:	31844703          	lbu	a4,792(s0)
1c00a400:	d406                	sw	ra,40(sp)
1c00a402:	30244083          	lbu	ra,770(s0)
1c00a406:	c45a                	sw	s6,8(sp)
1c00a408:	30f44b03          	lbu	s6,783(s0)
1c00a40c:	ca3e                	sw	a5,20(sp)
1c00a40e:	ce3a                	sw	a4,28(sp)
1c00a410:	d606                	sw	ra,44(sp)
1c00a412:	31044b83          	lbu	s7,784(s0)
1c00a416:	30544d83          	lbu	s11,773(s0)
1c00a41a:	30944383          	lbu	t2,777(s0)
1c00a41e:	30d44283          	lbu	t0,781(s0)
1c00a422:	31144f83          	lbu	t6,785(s0)
1c00a426:	31544f03          	lbu	t5,789(s0)
1c00a42a:	31944e83          	lbu	t4,793(s0)
1c00a42e:	31d44e03          	lbu	t3,797(s0)
1c00a432:	30144503          	lbu	a0,769(s0)
1c00a436:	30444d03          	lbu	s10,772(s0)
1c00a43a:	30644303          	lbu	t1,774(s0)
1c00a43e:	30844c83          	lbu	s9,776(s0)
1c00a442:	30a44883          	lbu	a7,778(s0)
1c00a446:	30c44c03          	lbu	s8,780(s0)
1c00a44a:	30e44803          	lbu	a6,782(s0)
1c00a44e:	31244603          	lbu	a2,786(s0)
1c00a452:	31644683          	lbu	a3,790(s0)
1c00a456:	31a44703          	lbu	a4,794(s0)
1c00a45a:	31c44583          	lbu	a1,796(s0)
1c00a45e:	31e44783          	lbu	a5,798(s0)
1c00a462:	30744083          	lbu	ra,775(s0)
1c00a466:	c65a                	sw	s6,12(sp)
1c00a468:	31344b03          	lbu	s6,787(s0)
1c00a46c:	0fa2                	slli	t6,t6,0x8
1c00a46e:	017fefb3          	or	t6,t6,s7
1c00a472:	c85a                	sw	s6,16(sp)
1c00a474:	31744b03          	lbu	s6,791(s0)
1c00a478:	4bd2                	lw	s7,20(sp)
1c00a47a:	0e22                	slli	t3,t3,0x8
1c00a47c:	cc5a                	sw	s6,24(sp)
1c00a47e:	31b44b03          	lbu	s6,795(s0)
1c00a482:	00be65b3          	or	a1,t3,a1
1c00a486:	0f22                	slli	t5,t5,0x8
1c00a488:	5e22                	lw	t3,40(sp)
1c00a48a:	d05a                	sw	s6,32(sp)
1c00a48c:	017f6f33          	or	t5,t5,s7
1c00a490:	31f44b03          	lbu	s6,799(s0)
1c00a494:	4bf2                	lw	s7,28(sp)
1c00a496:	0522                	slli	a0,a0,0x8
1c00a498:	01c56533          	or	a0,a0,t3
1c00a49c:	0ea2                	slli	t4,t4,0x8
1c00a49e:	5e32                	lw	t3,44(sp)
1c00a4a0:	d25a                	sw	s6,36(sp)
1c00a4a2:	017eeeb3          	or	t4,t4,s7
1c00a4a6:	30344b03          	lbu	s6,771(s0)
1c00a4aa:	06c2                	slli	a3,a3,0x10
1c00a4ac:	0742                	slli	a4,a4,0x10
1c00a4ae:	01e6e6b3          	or	a3,a3,t5
1c00a4b2:	01d76733          	or	a4,a4,t4
1c00a4b6:	4f62                	lw	t5,24(sp)
1c00a4b8:	5e82                	lw	t4,32(sp)
1c00a4ba:	03a2                	slli	t2,t2,0x8
1c00a4bc:	02a2                	slli	t0,t0,0x8
1c00a4be:	0193e3b3          	or	t2,t2,s9
1c00a4c2:	0182e2b3          	or	t0,t0,s8
1c00a4c6:	08c2                	slli	a7,a7,0x10
1c00a4c8:	0842                	slli	a6,a6,0x10
1c00a4ca:	0642                	slli	a2,a2,0x10
1c00a4cc:	07c2                	slli	a5,a5,0x10
1c00a4ce:	0e42                	slli	t3,t3,0x10
1c00a4d0:	0078e8b3          	or	a7,a7,t2
1c00a4d4:	00586833          	or	a6,a6,t0
1c00a4d8:	43a2                	lw	t2,8(sp)
1c00a4da:	42b2                	lw	t0,12(sp)
1c00a4dc:	01f66633          	or	a2,a2,t6
1c00a4e0:	8fcd                	or	a5,a5,a1
1c00a4e2:	4fc2                	lw	t6,16(sp)
1c00a4e4:	5592                	lw	a1,36(sp)
1c00a4e6:	00ae6e33          	or	t3,t3,a0
1c00a4ea:	0b62                	slli	s6,s6,0x18
1c00a4ec:	01cb6e33          	or	t3,s6,t3
1c00a4f0:	0f62                	slli	t5,t5,0x18
1c00a4f2:	6b09                	lui	s6,0x2
1c00a4f4:	0ee2                	slli	t4,t4,0x18
1c00a4f6:	0da2                	slli	s11,s11,0x8
1c00a4f8:	00df66b3          	or	a3,t5,a3
1c00a4fc:	00eee733          	or	a4,t4,a4
1c00a500:	03010f13          	addi	t5,sp,48
1c00a504:	7479                	lui	s0,0xffffe
1c00a506:	01aded33          	or	s10,s11,s10
1c00a50a:	0342                	slli	t1,t1,0x10
1c00a50c:	420b0e93          	addi	t4,s6,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a510:	00e2                	slli	ra,ra,0x18
1c00a512:	03e2                	slli	t2,t2,0x18
1c00a514:	02e2                	slli	t0,t0,0x18
1c00a516:	0fe2                	slli	t6,t6,0x18
1c00a518:	9efa                	add	t4,t4,t5
1c00a51a:	05e2                	slli	a1,a1,0x18
1c00a51c:	01a36333          	or	t1,t1,s10
1c00a520:	e0040513          	addi	a0,s0,-512 # ffffde00 <__l2_shared_end+0xe3fede00>
1c00a524:	00cfe633          	or	a2,t6,a2
1c00a528:	0060e333          	or	t1,ra,t1
1c00a52c:	0113e8b3          	or	a7,t2,a7
1c00a530:	0102e833          	or	a6,t0,a6
1c00a534:	9576                	add	a0,a0,t4
1c00a536:	8fcd                	or	a5,a5,a1
1c00a538:	85d6                	mv	a1,s5
1c00a53a:	c2b6                	sw	a3,68(sp)
1c00a53c:	d872                	sw	t3,48(sp)
1c00a53e:	da1a                	sw	t1,52(sp)
1c00a540:	dc46                	sw	a7,56(sp)
1c00a542:	de42                	sw	a6,60(sp)
1c00a544:	c0b2                	sw	a2,64(sp)
1c00a546:	c4ba                	sw	a4,72(sp)
1c00a548:	c6be                	sw	a5,76(sp)
1c00a54a:	29a5                	jal	1c00a9c2 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>
1c00a54c:	1818                	addi	a4,sp,48
1c00a54e:	420b0793          	addi	a5,s6,1056
1c00a552:	97ba                	add	a5,a5,a4
1c00a554:	be040593          	addi	a1,s0,-1056
1c00a558:	c20b0513          	addi	a0,s6,-992
1c00a55c:	95be                	add	a1,a1,a5
1c00a55e:	953a                	add	a0,a0,a4
1c00a560:	4605                	li	a2,1
1c00a562:	31b1                	jal	1c00a1ae <PQCLEAN_KYBER512_CLEAN_gen_matrix>
1c00a564:	1818                	addi	a4,sp,48
1c00a566:	420b0793          	addi	a5,s6,1056
1c00a56a:	97ba                	add	a5,a5,a4
1c00a56c:	80048a93          	addi	s5,s1,-2048
1c00a570:	9abe                	add	s5,s5,a5
1c00a572:	4601                	li	a2,0
1c00a574:	85ca                	mv	a1,s2
1c00a576:	8556                	mv	a0,s5
1c00a578:	29f1                	jal	1c00aa54 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00a57a:	4605                	li	a2,1
1c00a57c:	85ca                	mv	a1,s2
1c00a57e:	200a8513          	addi	a0,s5,512
1c00a582:	29c9                	jal	1c00aa54 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00a584:	6b85                	lui	s7,0x1
1c00a586:	181c                	addi	a5,sp,48
1c00a588:	420b8513          	addi	a0,s7,1056 # 1420 <__CTOR_LIST__-0x1bffebe4>
1c00a58c:	953e                	add	a0,a0,a5
1c00a58e:	4609                	li	a2,2
1c00a590:	85ca                	mv	a1,s2
1c00a592:	21dd                	jal	1c00aa78 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a594:	1818                	addi	a4,sp,48
1c00a596:	420b8793          	addi	a5,s7,1056
1c00a59a:	97ba                	add	a5,a5,a4
1c00a59c:	20078513          	addi	a0,a5,512
1c00a5a0:	460d                	li	a2,3
1c00a5a2:	85ca                	mv	a1,s2
1c00a5a4:	29d1                	jal	1c00aa78 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a5a6:	4611                	li	a2,4
1c00a5a8:	85ca                	mv	a1,s2
1c00a5aa:	45010513          	addi	a0,sp,1104
1c00a5ae:	21e9                	jal	1c00aa78 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00a5b0:	8556                	mv	a0,s5
1c00a5b2:	2f11                	jal	1c00acc6 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00a5b4:	1818                	addi	a4,sp,48
1c00a5b6:	420b0793          	addi	a5,s6,1056
1c00a5ba:	97ba                	add	a5,a5,a4
1c00a5bc:	40048493          	addi	s1,s1,1024
1c00a5c0:	94be                	add	s1,s1,a5
1c00a5c2:	c20b0593          	addi	a1,s6,-992
1c00a5c6:	95ba                	add	a1,a1,a4
1c00a5c8:	8526                	mv	a0,s1
1c00a5ca:	8656                	mv	a2,s5
1c00a5cc:	083000ef          	jal	ra,1c00ae4e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a5d0:	020b0793          	addi	a5,s6,32
1c00a5d4:	1818                	addi	a4,sp,48
1c00a5d6:	00f705b3          	add	a1,a4,a5
1c00a5da:	8656                	mv	a2,s5
1c00a5dc:	20048513          	addi	a0,s1,512
1c00a5e0:	06f000ef          	jal	ra,1c00ae4e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a5e4:	1818                	addi	a4,sp,48
1c00a5e6:	420b0793          	addi	a5,s6,1056
1c00a5ea:	97ba                	add	a5,a5,a4
1c00a5ec:	c0040513          	addi	a0,s0,-1024
1c00a5f0:	953e                	add	a0,a0,a5
1c00a5f2:	8656                	mv	a2,s5
1c00a5f4:	85d2                	mv	a1,s4
1c00a5f6:	059000ef          	jal	ra,1c00ae4e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00a5fa:	8526                	mv	a0,s1
1c00a5fc:	782000ef          	jal	ra,1c00ad7e <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>
1c00a600:	089c                	addi	a5,sp,80
1c00a602:	65010713          	addi	a4,sp,1616
1c00a606:	0c94                	addi	a3,sp,592
1c00a608:	0007a803          	lw	a6,0(a5)
1c00a60c:	43c8                	lw	a0,4(a5)
1c00a60e:	478c                	lw	a1,8(a5)
1c00a610:	47d0                	lw	a2,12(a5)
1c00a612:	01072023          	sw	a6,0(a4)
1c00a616:	c348                	sw	a0,4(a4)
1c00a618:	c70c                	sw	a1,8(a4)
1c00a61a:	c750                	sw	a2,12(a4)
1c00a61c:	07c1                	addi	a5,a5,16
1c00a61e:	0741                	addi	a4,a4,16
1c00a620:	fed794e3          	bne	a5,a3,1c00a608 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x276>
1c00a624:	6789                	lui	a5,0x2
1c00a626:	7779                	lui	a4,0xffffe
1c00a628:	42078793          	addi	a5,a5,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a62c:	1814                	addi	a3,sp,48
1c00a62e:	20070713          	addi	a4,a4,512 # ffffe200 <__l2_shared_end+0xe3fee200>
1c00a632:	97b6                	add	a5,a5,a3
1c00a634:	6341                	lui	t1,0x10
1c00a636:	7479                	lui	s0,0xffffe
1c00a638:	973e                	add	a4,a4,a5
1c00a63a:	4581                	li	a1,0
1c00a63c:	137d                	addi	t1,t1,-1
1c00a63e:	10000e13          	li	t3,256
1c00a642:	00071603          	lh	a2,0(a4)
1c00a646:	00471883          	lh	a7,4(a4)
1c00a64a:	00271683          	lh	a3,2(a4)
1c00a64e:	00671803          	lh	a6,6(a4)
1c00a652:	4015d793          	srai	a5,a1,0x1
1c00a656:	00279513          	slli	a0,a5,0x2
1c00a65a:	45010493          	addi	s1,sp,1104
1c00a65e:	0642                	slli	a2,a2,0x10
1c00a660:	0068f8b3          	and	a7,a7,t1
1c00a664:	0785                	addi	a5,a5,1
1c00a666:	06c2                	slli	a3,a3,0x10
1c00a668:	00687833          	and	a6,a6,t1
1c00a66c:	9526                	add	a0,a0,s1
1c00a66e:	01166633          	or	a2,a2,a7
1c00a672:	078a                	slli	a5,a5,0x2
1c00a674:	0106e6b3          	or	a3,a3,a6
1c00a678:	40c52023          	sw	a2,1024(a0) # 1000400 <__CTOR_LIST__-0x1afffc04>
1c00a67c:	97a6                	add	a5,a5,s1
1c00a67e:	40d7a023          	sw	a3,1024(a5)
1c00a682:	0591                	addi	a1,a1,4
1c00a684:	0721                	addi	a4,a4,8
1c00a686:	fbc59ee3          	bne	a1,t3,1c00a642 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x2b0>
1c00a68a:	6909                	lui	s2,0x2
1c00a68c:	1818                	addi	a4,sp,48
1c00a68e:	42090793          	addi	a5,s2,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a692:	97ba                	add	a5,a5,a4
1c00a694:	60040593          	addi	a1,s0,1536 # ffffe600 <__l2_shared_end+0xe3fee600>
1c00a698:	00b784b3          	add	s1,a5,a1
1c00a69c:	42090793          	addi	a5,s2,1056
1c00a6a0:	97ba                	add	a5,a5,a4
1c00a6a2:	40040513          	addi	a0,s0,1024
1c00a6a6:	85a6                	mv	a1,s1
1c00a6a8:	953e                	add	a0,a0,a5
1c00a6aa:	ed8fe0ef          	jal	ra,1c008d82 <KYBER_poly_intt>
1c00a6ae:	42090713          	addi	a4,s2,1056
1c00a6b2:	1814                	addi	a3,sp,48
1c00a6b4:	c0040793          	addi	a5,s0,-1024
1c00a6b8:	9736                	add	a4,a4,a3
1c00a6ba:	97ba                	add	a5,a5,a4
1c00a6bc:	85a6                	mv	a1,s1
1c00a6be:	10078613          	addi	a2,a5,256
1c00a6c2:	4198                	lw	a4,0(a1)
1c00a6c4:	0789                	addi	a5,a5,2
1c00a6c6:	0591                	addi	a1,a1,4
1c00a6c8:	01075693          	srli	a3,a4,0x10
1c00a6cc:	fed79f23          	sh	a3,-2(a5)
1c00a6d0:	0ee79f23          	sh	a4,254(a5)
1c00a6d4:	fef617e3          	bne	a2,a5,1c00a6c2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x330>
1c00a6d8:	6a09                	lui	s4,0x2
1c00a6da:	1818                	addi	a4,sp,48
1c00a6dc:	767d                	lui	a2,0xfffff
1c00a6de:	420a0793          	addi	a5,s4,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00a6e2:	97ba                	add	a5,a5,a4
1c00a6e4:	40060493          	addi	s1,a2,1024 # fffff400 <__l2_shared_end+0xe3fef400>
1c00a6e8:	94be                	add	s1,s1,a5
1c00a6ea:	420a0793          	addi	a5,s4,1056
1c00a6ee:	97ba                	add	a5,a5,a4
1c00a6f0:	963e                	add	a2,a2,a5
1c00a6f2:	85a6                	mv	a1,s1
1c00a6f4:	8526                	mv	a0,s1
1c00a6f6:	7b8000ef          	jal	ra,1c00aeae <PQCLEAN_KYBER512_CLEAN_polyvec_add>
1c00a6fa:	1818                	addi	a4,sp,48
1c00a6fc:	7979                	lui	s2,0xffffe
1c00a6fe:	420a0793          	addi	a5,s4,1056
1c00a702:	97ba                	add	a5,a5,a4
1c00a704:	c0090413          	addi	s0,s2,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c00a708:	943e                	add	s0,s0,a5
1c00a70a:	420a0793          	addi	a5,s4,1056
1c00a70e:	97ba                	add	a5,a5,a4
1c00a710:	01278633          	add	a2,a5,s2
1c00a714:	85a2                	mv	a1,s0
1c00a716:	8522                	mv	a0,s0
1c00a718:	2149                	jal	1c00ab9a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00a71a:	1818                	addi	a4,sp,48
1c00a71c:	420a0793          	addi	a5,s4,1056
1c00a720:	97ba                	add	a5,a5,a4
1c00a722:	e0090613          	addi	a2,s2,-512
1c00a726:	963e                	add	a2,a2,a5
1c00a728:	85a2                	mv	a1,s0
1c00a72a:	8522                	mv	a0,s0
1c00a72c:	21bd                	jal	1c00ab9a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00a72e:	8526                	mv	a0,s1
1c00a730:	768000ef          	jal	ra,1c00ae98 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>
1c00a734:	8522                	mv	a0,s0
1c00a736:	2935                	jal	1c00ab72 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00a738:	85a6                	mv	a1,s1
1c00a73a:	854e                	mv	a0,s3
1c00a73c:	2159                	jal	1c00abc2 <PQCLEAN_KYBER512_CLEAN_polyvec_compress>
1c00a73e:	85a2                	mv	a1,s0
1c00a740:	28098513          	addi	a0,s3,640
1c00a744:	28e5                	jal	1c00a83c <PQCLEAN_KYBER512_CLEAN_poly_compress>
1c00a746:	6309                	lui	t1,0x2
1c00a748:	911a                	add	sp,sp,t1
1c00a74a:	48c12083          	lw	ra,1164(sp)
1c00a74e:	48812403          	lw	s0,1160(sp)
1c00a752:	48412483          	lw	s1,1156(sp)
1c00a756:	48012903          	lw	s2,1152(sp)
1c00a75a:	47c12983          	lw	s3,1148(sp)
1c00a75e:	47812a03          	lw	s4,1144(sp)
1c00a762:	47412a83          	lw	s5,1140(sp)
1c00a766:	47012b03          	lw	s6,1136(sp)
1c00a76a:	46c12b83          	lw	s7,1132(sp)
1c00a76e:	46812c03          	lw	s8,1128(sp)
1c00a772:	46412c83          	lw	s9,1124(sp)
1c00a776:	46012d03          	lw	s10,1120(sp)
1c00a77a:	45c12d83          	lw	s11,1116(sp)
1c00a77e:	49010113          	addi	sp,sp,1168
1c00a782:	8082                	ret

1c00a784 <PQCLEAN_KYBER512_CLEAN_crypto_kem_enc>:
1c00a784:	88bac7b7          	lui	a5,0x88bac
1c00a788:	7175                	addi	sp,sp,-144
1c00a78a:	5ba78793          	addi	a5,a5,1466 # 88bac5ba <__l2_shared_end+0x6cb9c5ba>
1c00a78e:	c03e                	sw	a5,0(sp)
1c00a790:	595cd7b7          	lui	a5,0x595cd
1c00a794:	31d78793          	addi	a5,a5,797 # 595cd31d <__l2_shared_end+0x3d5bd31d>
1c00a798:	c23e                	sw	a5,4(sp)
1c00a79a:	007097b7          	lui	a5,0x709
1c00a79e:	67178793          	addi	a5,a5,1649 # 709671 <__CTOR_LIST__-0x1b8f6993>
1c00a7a2:	c43e                	sw	a5,8(sp)
1c00a7a4:	75d697b7          	lui	a5,0x75d69
1c00a7a8:	24678793          	addi	a5,a5,582 # 75d69246 <__l2_shared_end+0x59d59246>
1c00a7ac:	c63e                	sw	a5,12(sp)
1c00a7ae:	db9847b7          	lui	a5,0xdb984
1c00a7b2:	cb878793          	addi	a5,a5,-840 # db983cb8 <__l2_shared_end+0xbf973cb8>
1c00a7b6:	c83e                	sw	a5,16(sp)
1c00a7b8:	805517b7          	lui	a5,0x80551
1c00a7bc:	e6a78793          	addi	a5,a5,-406 # 80550e6a <__l2_shared_end+0x64540e6a>
1c00a7c0:	ca3e                	sw	a5,20(sp)
1c00a7c2:	7eebb7b7          	lui	a5,0x7eebb
1c00a7c6:	f0b78793          	addi	a5,a5,-245 # 7eebaf0b <__l2_shared_end+0x62eaaf0b>
1c00a7ca:	cc3e                	sw	a5,24(sp)
1c00a7cc:	f41b57b7          	lui	a5,0xf41b5
1c00a7d0:	c522                	sw	s0,136(sp)
1c00a7d2:	c326                	sw	s1,132(sp)
1c00a7d4:	c14a                	sw	s2,128(sp)
1c00a7d6:	97078793          	addi	a5,a5,-1680 # f41b4970 <__l2_shared_end+0xd81a4970>
1c00a7da:	842a                	mv	s0,a0
1c00a7dc:	84b2                	mv	s1,a2
1c00a7de:	892e                	mv	s2,a1
1c00a7e0:	850a                	mv	a0,sp
1c00a7e2:	858a                	mv	a1,sp
1c00a7e4:	02000613          	li	a2,32
1c00a7e8:	c706                	sw	ra,140(sp)
1c00a7ea:	ce3e                	sw	a5,28(sp)
1c00a7ec:	f63fe0ef          	jal	ra,1c00974e <sha3_256>
1c00a7f0:	85a6                	mv	a1,s1
1c00a7f2:	1008                	addi	a0,sp,32
1c00a7f4:	32000613          	li	a2,800
1c00a7f8:	f57fe0ef          	jal	ra,1c00974e <sha3_256>
1c00a7fc:	858a                	mv	a1,sp
1c00a7fe:	0088                	addi	a0,sp,64
1c00a800:	04000613          	li	a2,64
1c00a804:	a2aff0ef          	jal	ra,1c009a2e <sha3_512>
1c00a808:	1094                	addi	a3,sp,96
1c00a80a:	8626                	mv	a2,s1
1c00a80c:	858a                	mv	a1,sp
1c00a80e:	8522                	mv	a0,s0
1c00a810:	3649                	jal	1c00a392 <PQCLEAN_KYBER512_CLEAN_indcpa_enc>
1c00a812:	85a2                	mv	a1,s0
1c00a814:	1088                	addi	a0,sp,96
1c00a816:	30000613          	li	a2,768
1c00a81a:	f35fe0ef          	jal	ra,1c00974e <sha3_256>
1c00a81e:	854a                	mv	a0,s2
1c00a820:	0090                	addi	a2,sp,64
1c00a822:	04000693          	li	a3,64
1c00a826:	02000593          	li	a1,32
1c00a82a:	ca1fe0ef          	jal	ra,1c0094ca <shake256>
1c00a82e:	40ba                	lw	ra,140(sp)
1c00a830:	442a                	lw	s0,136(sp)
1c00a832:	449a                	lw	s1,132(sp)
1c00a834:	490a                	lw	s2,128(sp)
1c00a836:	4501                	li	a0,0
1c00a838:	6149                	addi	sp,sp,144
1c00a83a:	8082                	ret

1c00a83c <PQCLEAN_KYBER512_CLEAN_poly_compress>:
1c00a83c:	1101                	addi	sp,sp,-32
1c00a83e:	6605                	lui	a2,0x1
1c00a840:	ce22                	sw	s0,28(sp)
1c00a842:	cc26                	sw	s1,24(sp)
1c00a844:	ca4a                	sw	s2,20(sp)
1c00a846:	c84e                	sw	s3,16(sp)
1c00a848:	c652                	sw	s4,12(sp)
1c00a84a:	08050813          	addi	a6,a0,128
1c00a84e:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a852:	00259a03          	lh	s4,2(a1)
1c00a856:	00059383          	lh	t2,0(a1)
1c00a85a:	00659983          	lh	s3,6(a1)
1c00a85e:	00a59903          	lh	s2,10(a1)
1c00a862:	00e59483          	lh	s1,14(a1)
1c00a866:	00459283          	lh	t0,4(a1)
1c00a86a:	00859e03          	lh	t3,8(a1)
1c00a86e:	00c59f83          	lh	t6,12(a1)
1c00a872:	40fa5893          	srai	a7,s4,0xf
1c00a876:	00c8f8b3          	and	a7,a7,a2
1c00a87a:	40f3df13          	srai	t5,t2,0xf
1c00a87e:	40f9d693          	srai	a3,s3,0xf
1c00a882:	40f95713          	srai	a4,s2,0xf
1c00a886:	40f4d793          	srai	a5,s1,0xf
1c00a88a:	98d2                	add	a7,a7,s4
1c00a88c:	00cf7f33          	and	t5,t5,a2
1c00a890:	40fe5413          	srai	s0,t3,0xf
1c00a894:	8ef1                	and	a3,a3,a2
1c00a896:	40f2de93          	srai	t4,t0,0xf
1c00a89a:	8f71                	and	a4,a4,a2
1c00a89c:	8ff1                	and	a5,a5,a2
1c00a89e:	40ffd313          	srai	t1,t6,0xf
1c00a8a2:	08c2                	slli	a7,a7,0x10
1c00a8a4:	9f1e                	add	t5,t5,t2
1c00a8a6:	96ce                	add	a3,a3,s3
1c00a8a8:	00cefeb3          	and	t4,t4,a2
1c00a8ac:	974a                	add	a4,a4,s2
1c00a8ae:	8c71                	and	s0,s0,a2
1c00a8b0:	97a6                	add	a5,a5,s1
1c00a8b2:	00c37333          	and	t1,t1,a2
1c00a8b6:	0108d893          	srli	a7,a7,0x10
1c00a8ba:	0f42                	slli	t5,t5,0x10
1c00a8bc:	06c2                	slli	a3,a3,0x10
1c00a8be:	9e96                	add	t4,t4,t0
1c00a8c0:	0742                	slli	a4,a4,0x10
1c00a8c2:	9e22                	add	t3,t3,s0
1c00a8c4:	07c2                	slli	a5,a5,0x10
1c00a8c6:	937e                	add	t1,t1,t6
1c00a8c8:	0892                	slli	a7,a7,0x4
1c00a8ca:	010f5f13          	srli	t5,t5,0x10
1c00a8ce:	82c1                	srli	a3,a3,0x10
1c00a8d0:	8341                	srli	a4,a4,0x10
1c00a8d2:	83c1                	srli	a5,a5,0x10
1c00a8d4:	0ec2                	slli	t4,t4,0x10
1c00a8d6:	0e42                	slli	t3,t3,0x10
1c00a8d8:	0342                	slli	t1,t1,0x10
1c00a8da:	68088893          	addi	a7,a7,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00a8de:	0f12                	slli	t5,t5,0x4
1c00a8e0:	02c8c8b3          	div	a7,a7,a2
1c00a8e4:	0692                	slli	a3,a3,0x4
1c00a8e6:	010ede93          	srli	t4,t4,0x10
1c00a8ea:	0712                	slli	a4,a4,0x4
1c00a8ec:	010e5e13          	srli	t3,t3,0x10
1c00a8f0:	0792                	slli	a5,a5,0x4
1c00a8f2:	01035313          	srli	t1,t1,0x10
1c00a8f6:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00a8fa:	68068693          	addi	a3,a3,1664
1c00a8fe:	0e92                	slli	t4,t4,0x4
1c00a900:	68070713          	addi	a4,a4,1664
1c00a904:	0e12                	slli	t3,t3,0x4
1c00a906:	68078793          	addi	a5,a5,1664
1c00a90a:	0312                	slli	t1,t1,0x4
1c00a90c:	680e8e93          	addi	t4,t4,1664
1c00a910:	680e0e13          	addi	t3,t3,1664
1c00a914:	68030313          	addi	t1,t1,1664 # 2680 <__CTOR_LIST__-0x1bffd984>
1c00a918:	0511                	addi	a0,a0,4
1c00a91a:	05c1                	addi	a1,a1,16
1c00a91c:	02cf4f33          	div	t5,t5,a2
1c00a920:	00f8f893          	andi	a7,a7,15
1c00a924:	0892                	slli	a7,a7,0x4
1c00a926:	02c6c6b3          	div	a3,a3,a2
1c00a92a:	00ff7f13          	andi	t5,t5,15
1c00a92e:	01e8e8b3          	or	a7,a7,t5
1c00a932:	ff150e23          	sb	a7,-4(a0)
1c00a936:	02c74733          	div	a4,a4,a2
1c00a93a:	8abd                	andi	a3,a3,15
1c00a93c:	0692                	slli	a3,a3,0x4
1c00a93e:	02c7c7b3          	div	a5,a5,a2
1c00a942:	8b3d                	andi	a4,a4,15
1c00a944:	0712                	slli	a4,a4,0x4
1c00a946:	02ceceb3          	div	t4,t4,a2
1c00a94a:	8bbd                	andi	a5,a5,15
1c00a94c:	0792                	slli	a5,a5,0x4
1c00a94e:	02ce4e33          	div	t3,t3,a2
1c00a952:	00fef893          	andi	a7,t4,15
1c00a956:	0116e6b3          	or	a3,a3,a7
1c00a95a:	fed50ea3          	sb	a3,-3(a0)
1c00a95e:	02c34333          	div	t1,t1,a2
1c00a962:	00fe7e13          	andi	t3,t3,15
1c00a966:	01c76733          	or	a4,a4,t3
1c00a96a:	fee50f23          	sb	a4,-2(a0)
1c00a96e:	00f37313          	andi	t1,t1,15
1c00a972:	0067e7b3          	or	a5,a5,t1
1c00a976:	fef50fa3          	sb	a5,-1(a0)
1c00a97a:	ed051ce3          	bne	a0,a6,1c00a852 <PQCLEAN_KYBER512_CLEAN_poly_compress+0x16>
1c00a97e:	4472                	lw	s0,28(sp)
1c00a980:	44e2                	lw	s1,24(sp)
1c00a982:	4952                	lw	s2,20(sp)
1c00a984:	49c2                	lw	s3,16(sp)
1c00a986:	4a32                	lw	s4,12(sp)
1c00a988:	6105                	addi	sp,sp,32
1c00a98a:	8082                	ret

1c00a98c <PQCLEAN_KYBER512_CLEAN_poly_frombytes>:
1c00a98c:	6685                	lui	a3,0x1
1c00a98e:	18058613          	addi	a2,a1,384
1c00a992:	16fd                	addi	a3,a3,-1
1c00a994:	0015c783          	lbu	a5,1(a1)
1c00a998:	0005c703          	lbu	a4,0(a1)
1c00a99c:	058d                	addi	a1,a1,3
1c00a99e:	07a2                	slli	a5,a5,0x8
1c00a9a0:	8fd9                	or	a5,a5,a4
1c00a9a2:	8ff5                	and	a5,a5,a3
1c00a9a4:	00f51023          	sh	a5,0(a0)
1c00a9a8:	ffe5c703          	lbu	a4,-2(a1)
1c00a9ac:	fff5c783          	lbu	a5,-1(a1)
1c00a9b0:	0511                	addi	a0,a0,4
1c00a9b2:	8311                	srli	a4,a4,0x4
1c00a9b4:	0792                	slli	a5,a5,0x4
1c00a9b6:	8fd9                	or	a5,a5,a4
1c00a9b8:	fef51f23          	sh	a5,-2(a0)
1c00a9bc:	fcb61ce3          	bne	a2,a1,1c00a994 <PQCLEAN_KYBER512_CLEAN_poly_frombytes+0x8>
1c00a9c0:	8082                	ret

1c00a9c2 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>:
1c00a9c2:	20050713          	addi	a4,a0,512
1c00a9c6:	0005c783          	lbu	a5,0(a1)
1c00a9ca:	0541                	addi	a0,a0,16
1c00a9cc:	0585                	addi	a1,a1,1
1c00a9ce:	8b85                	andi	a5,a5,1
1c00a9d0:	40f007b3          	neg	a5,a5
1c00a9d4:	6817f793          	andi	a5,a5,1665
1c00a9d8:	fef51823          	sh	a5,-16(a0)
1c00a9dc:	fff5c783          	lbu	a5,-1(a1)
1c00a9e0:	07fa                	slli	a5,a5,0x1e
1c00a9e2:	87fd                	srai	a5,a5,0x1f
1c00a9e4:	6817f793          	andi	a5,a5,1665
1c00a9e8:	fef51923          	sh	a5,-14(a0)
1c00a9ec:	fff5c783          	lbu	a5,-1(a1)
1c00a9f0:	07f6                	slli	a5,a5,0x1d
1c00a9f2:	87fd                	srai	a5,a5,0x1f
1c00a9f4:	6817f793          	andi	a5,a5,1665
1c00a9f8:	fef51a23          	sh	a5,-12(a0)
1c00a9fc:	fff5c783          	lbu	a5,-1(a1)
1c00aa00:	07f2                	slli	a5,a5,0x1c
1c00aa02:	87fd                	srai	a5,a5,0x1f
1c00aa04:	6817f793          	andi	a5,a5,1665
1c00aa08:	fef51b23          	sh	a5,-10(a0)
1c00aa0c:	fff5c783          	lbu	a5,-1(a1)
1c00aa10:	07ee                	slli	a5,a5,0x1b
1c00aa12:	87fd                	srai	a5,a5,0x1f
1c00aa14:	6817f793          	andi	a5,a5,1665
1c00aa18:	fef51c23          	sh	a5,-8(a0)
1c00aa1c:	fff5c783          	lbu	a5,-1(a1)
1c00aa20:	07ea                	slli	a5,a5,0x1a
1c00aa22:	87fd                	srai	a5,a5,0x1f
1c00aa24:	6817f793          	andi	a5,a5,1665
1c00aa28:	fef51d23          	sh	a5,-6(a0)
1c00aa2c:	fff5c783          	lbu	a5,-1(a1)
1c00aa30:	07e6                	slli	a5,a5,0x19
1c00aa32:	87fd                	srai	a5,a5,0x1f
1c00aa34:	6817f793          	andi	a5,a5,1665
1c00aa38:	fef51e23          	sh	a5,-4(a0)
1c00aa3c:	fff5c783          	lbu	a5,-1(a1)
1c00aa40:	879d                	srai	a5,a5,0x7
1c00aa42:	40f007b3          	neg	a5,a5
1c00aa46:	6817f793          	andi	a5,a5,1665
1c00aa4a:	fef51f23          	sh	a5,-2(a0)
1c00aa4e:	f6a71ce3          	bne	a4,a0,1c00a9c6 <PQCLEAN_KYBER512_CLEAN_poly_frommsg+0x4>
1c00aa52:	8082                	ret

1c00aa54 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>:
1c00aa54:	7155                	addi	sp,sp,-208
1c00aa56:	c5a2                	sw	s0,200(sp)
1c00aa58:	86b2                	mv	a3,a2
1c00aa5a:	842a                	mv	s0,a0
1c00aa5c:	862e                	mv	a2,a1
1c00aa5e:	850a                	mv	a0,sp
1c00aa60:	0c000593          	li	a1,192
1c00aa64:	c786                	sw	ra,204(sp)
1c00aa66:	21f9                	jal	1c00af34 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00aa68:	858a                	mv	a1,sp
1c00aa6a:	8522                	mv	a0,s0
1c00aa6c:	c08fe0ef          	jal	ra,1c008e74 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>
1c00aa70:	40be                	lw	ra,204(sp)
1c00aa72:	442e                	lw	s0,200(sp)
1c00aa74:	6169                	addi	sp,sp,208
1c00aa76:	8082                	ret

1c00aa78 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>:
1c00aa78:	7175                	addi	sp,sp,-144
1c00aa7a:	c522                	sw	s0,136(sp)
1c00aa7c:	86b2                	mv	a3,a2
1c00aa7e:	842a                	mv	s0,a0
1c00aa80:	862e                	mv	a2,a1
1c00aa82:	850a                	mv	a0,sp
1c00aa84:	08000593          	li	a1,128
1c00aa88:	c706                	sw	ra,140(sp)
1c00aa8a:	216d                	jal	1c00af34 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00aa8c:	858a                	mv	a1,sp
1c00aa8e:	8522                	mv	a0,s0
1c00aa90:	c72fe0ef          	jal	ra,1c008f02 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>
1c00aa94:	40ba                	lw	ra,140(sp)
1c00aa96:	442a                	lw	s0,136(sp)
1c00aa98:	6149                	addi	sp,sp,144
1c00aa9a:	8082                	ret

1c00aa9c <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>:
1c00aa9c:	9f010113          	addi	sp,sp,-1552
1c00aaa0:	6341                	lui	t1,0x10
1c00aaa2:	60812423          	sw	s0,1544(sp)
1c00aaa6:	60112623          	sw	ra,1548(sp)
1c00aaaa:	842a                	mv	s0,a0
1c00aaac:	4e01                	li	t3,0
1c00aaae:	137d                	addi	t1,t1,-1
1c00aab0:	10000f93          	li	t6,256
1c00aab4:	00061503          	lh	a0,0(a2)
1c00aab8:	00461383          	lh	t2,4(a2)
1c00aabc:	00059803          	lh	a6,0(a1)
1c00aac0:	00459283          	lh	t0,4(a1)
1c00aac4:	00259683          	lh	a3,2(a1)
1c00aac8:	00659f03          	lh	t5,6(a1)
1c00aacc:	00261703          	lh	a4,2(a2)
1c00aad0:	00661e83          	lh	t4,6(a2)
1c00aad4:	401e5793          	srai	a5,t3,0x1
1c00aad8:	00279893          	slli	a7,a5,0x2
1c00aadc:	60010093          	addi	ra,sp,1536
1c00aae0:	0542                	slli	a0,a0,0x10
1c00aae2:	0063f3b3          	and	t2,t2,t1
1c00aae6:	0842                	slli	a6,a6,0x10
1c00aae8:	0062f2b3          	and	t0,t0,t1
1c00aaec:	0785                	addi	a5,a5,1
1c00aaee:	9886                	add	a7,a7,ra
1c00aaf0:	06c2                	slli	a3,a3,0x10
1c00aaf2:	006f7f33          	and	t5,t5,t1
1c00aaf6:	00756533          	or	a0,a0,t2
1c00aafa:	0742                	slli	a4,a4,0x10
1c00aafc:	006efeb3          	and	t4,t4,t1
1c00ab00:	00586833          	or	a6,a6,t0
1c00ab04:	078a                	slli	a5,a5,0x2
1c00ab06:	9786                	add	a5,a5,ra
1c00ab08:	01e6e6b3          	or	a3,a3,t5
1c00ab0c:	01d76733          	or	a4,a4,t4
1c00ab10:	a108a023          	sw	a6,-1536(a7)
1c00ab14:	c0a8a023          	sw	a0,-1024(a7)
1c00ab18:	a0d7a023          	sw	a3,-1536(a5)
1c00ab1c:	c0e7a023          	sw	a4,-1024(a5)
1c00ab20:	0e11                	addi	t3,t3,4
1c00ab22:	05a1                	addi	a1,a1,8
1c00ab24:	0621                	addi	a2,a2,8
1c00ab26:	f9fe17e3          	bne	t3,t6,1c00aab4 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0x18>
1c00ab2a:	0410                	addi	a2,sp,512
1c00ab2c:	858a                	mv	a1,sp
1c00ab2e:	40010513          	addi	a0,sp,1024
1c00ab32:	abafe0ef          	jal	ra,1c008dec <KYBER_poly_pwm>
1c00ab36:	40010793          	addi	a5,sp,1024
1c00ab3a:	8522                	mv	a0,s0
1c00ab3c:	60010813          	addi	a6,sp,1536
1c00ab40:	4394                	lw	a3,0(a5)
1c00ab42:	43d8                	lw	a4,4(a5)
1c00ab44:	07a1                	addi	a5,a5,8
1c00ab46:	0106d593          	srli	a1,a3,0x10
1c00ab4a:	01075613          	srli	a2,a4,0x10
1c00ab4e:	00b51023          	sh	a1,0(a0)
1c00ab52:	00c51123          	sh	a2,2(a0)
1c00ab56:	00d51223          	sh	a3,4(a0)
1c00ab5a:	00e51323          	sh	a4,6(a0)
1c00ab5e:	0521                	addi	a0,a0,8
1c00ab60:	fef810e3          	bne	a6,a5,1c00ab40 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0xa4>
1c00ab64:	60c12083          	lw	ra,1548(sp)
1c00ab68:	60812403          	lw	s0,1544(sp)
1c00ab6c:	61010113          	addi	sp,sp,1552
1c00ab70:	8082                	ret

1c00ab72 <PQCLEAN_KYBER512_CLEAN_poly_reduce>:
1c00ab72:	1141                	addi	sp,sp,-16
1c00ab74:	c422                	sw	s0,8(sp)
1c00ab76:	c226                	sw	s1,4(sp)
1c00ab78:	c606                	sw	ra,12(sp)
1c00ab7a:	842a                	mv	s0,a0
1c00ab7c:	20050493          	addi	s1,a0,512
1c00ab80:	00041503          	lh	a0,0(s0)
1c00ab84:	0409                	addi	s0,s0,2
1c00ab86:	2e89                	jal	1c00aed8 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00ab88:	fea41f23          	sh	a0,-2(s0)
1c00ab8c:	fe941ae3          	bne	s0,s1,1c00ab80 <PQCLEAN_KYBER512_CLEAN_poly_reduce+0xe>
1c00ab90:	40b2                	lw	ra,12(sp)
1c00ab92:	4422                	lw	s0,8(sp)
1c00ab94:	4492                	lw	s1,4(sp)
1c00ab96:	0141                	addi	sp,sp,16
1c00ab98:	8082                	ret

1c00ab9a <PQCLEAN_KYBER512_CLEAN_poly_add>:
1c00ab9a:	4781                	li	a5,0
1c00ab9c:	20000893          	li	a7,512
1c00aba0:	00f606b3          	add	a3,a2,a5
1c00aba4:	00f58733          	add	a4,a1,a5
1c00aba8:	0006d803          	lhu	a6,0(a3) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00abac:	00075703          	lhu	a4,0(a4)
1c00abb0:	00f506b3          	add	a3,a0,a5
1c00abb4:	0789                	addi	a5,a5,2
1c00abb6:	9742                	add	a4,a4,a6
1c00abb8:	00e69023          	sh	a4,0(a3)
1c00abbc:	ff1792e3          	bne	a5,a7,1c00aba0 <PQCLEAN_KYBER512_CLEAN_poly_add+0x6>
1c00abc0:	8082                	ret

1c00abc2 <PQCLEAN_KYBER512_CLEAN_polyvec_compress>:
1c00abc2:	88aa                	mv	a7,a0
1c00abc4:	6605                	lui	a2,0x1
1c00abc6:	14050513          	addi	a0,a0,320
1c00abca:	882e                	mv	a6,a1
1c00abcc:	3c088893          	addi	a7,a7,960
1c00abd0:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00abd4:	ec050693          	addi	a3,a0,-320
1c00abd8:	85c2                	mv	a1,a6
1c00abda:	00059283          	lh	t0,0(a1)
1c00abde:	00259f83          	lh	t6,2(a1)
1c00abe2:	00459f03          	lh	t5,4(a1)
1c00abe6:	40f2de13          	srai	t3,t0,0xf
1c00abea:	40ffd713          	srai	a4,t6,0xf
1c00abee:	00ce7e33          	and	t3,t3,a2
1c00abf2:	8f71                	and	a4,a4,a2
1c00abf4:	00659e83          	lh	t4,6(a1)
1c00abf8:	40ff5793          	srai	a5,t5,0xf
1c00abfc:	9e16                	add	t3,t3,t0
1c00abfe:	977e                	add	a4,a4,t6
1c00ac00:	8ff1                	and	a5,a5,a2
1c00ac02:	0e42                	slli	t3,t3,0x10
1c00ac04:	0742                	slli	a4,a4,0x10
1c00ac06:	97fa                	add	a5,a5,t5
1c00ac08:	010e5e13          	srli	t3,t3,0x10
1c00ac0c:	8341                	srli	a4,a4,0x10
1c00ac0e:	40fed313          	srai	t1,t4,0xf
1c00ac12:	07c2                	slli	a5,a5,0x10
1c00ac14:	0e2a                	slli	t3,t3,0xa
1c00ac16:	072a                	slli	a4,a4,0xa
1c00ac18:	00c37333          	and	t1,t1,a2
1c00ac1c:	83c1                	srli	a5,a5,0x10
1c00ac1e:	680e0e13          	addi	t3,t3,1664
1c00ac22:	68070713          	addi	a4,a4,1664
1c00ac26:	9376                	add	t1,t1,t4
1c00ac28:	02ce5e33          	divu	t3,t3,a2
1c00ac2c:	07aa                	slli	a5,a5,0xa
1c00ac2e:	0342                	slli	t1,t1,0x10
1c00ac30:	68078793          	addi	a5,a5,1664
1c00ac34:	01035313          	srli	t1,t1,0x10
1c00ac38:	032a                	slli	t1,t1,0xa
1c00ac3a:	68030313          	addi	t1,t1,1664 # 10680 <__CTOR_LIST__-0x1bfef984>
1c00ac3e:	0695                	addi	a3,a3,5
1c00ac40:	05a1                	addi	a1,a1,8
1c00ac42:	02c75733          	divu	a4,a4,a2
1c00ac46:	3ffe7e13          	andi	t3,t3,1023
1c00ac4a:	008e5e93          	srli	t4,t3,0x8
1c00ac4e:	ffc68da3          	sb	t3,-5(a3)
1c00ac52:	02c7d7b3          	divu	a5,a5,a2
1c00ac56:	3ff77713          	andi	a4,a4,1023
1c00ac5a:	00271e13          	slli	t3,a4,0x2
1c00ac5e:	01ceee33          	or	t3,t4,t3
1c00ac62:	8319                	srli	a4,a4,0x6
1c00ac64:	ffc68e23          	sb	t3,-4(a3)
1c00ac68:	02c35333          	divu	t1,t1,a2
1c00ac6c:	3ff7f793          	andi	a5,a5,1023
1c00ac70:	00479e13          	slli	t3,a5,0x4
1c00ac74:	01c76733          	or	a4,a4,t3
1c00ac78:	fee68ea3          	sb	a4,-3(a3)
1c00ac7c:	8391                	srli	a5,a5,0x4
1c00ac7e:	3ff37713          	andi	a4,t1,1023
1c00ac82:	00671313          	slli	t1,a4,0x6
1c00ac86:	0067e7b3          	or	a5,a5,t1
1c00ac8a:	8309                	srli	a4,a4,0x2
1c00ac8c:	fef68f23          	sb	a5,-2(a3)
1c00ac90:	fee68fa3          	sb	a4,-1(a3)
1c00ac94:	f4a693e3          	bne	a3,a0,1c00abda <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x18>
1c00ac98:	14068513          	addi	a0,a3,320
1c00ac9c:	20080813          	addi	a6,a6,512
1c00aca0:	f2a89ae3          	bne	a7,a0,1c00abd4 <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x12>
1c00aca4:	8082                	ret

1c00aca6 <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>:
1c00aca6:	1141                	addi	sp,sp,-16
1c00aca8:	c422                	sw	s0,8(sp)
1c00acaa:	c226                	sw	s1,4(sp)
1c00acac:	c606                	sw	ra,12(sp)
1c00acae:	842a                	mv	s0,a0
1c00acb0:	84ae                	mv	s1,a1
1c00acb2:	39e9                	jal	1c00a98c <PQCLEAN_KYBER512_CLEAN_poly_frombytes>
1c00acb4:	20040513          	addi	a0,s0,512
1c00acb8:	4422                	lw	s0,8(sp)
1c00acba:	40b2                	lw	ra,12(sp)
1c00acbc:	18048593          	addi	a1,s1,384
1c00acc0:	4492                	lw	s1,4(sp)
1c00acc2:	0141                	addi	sp,sp,16
1c00acc4:	b1e1                	j	1c00a98c <PQCLEAN_KYBER512_CLEAN_poly_frombytes>

1c00acc6 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>:
1c00acc6:	9e010113          	addi	sp,sp,-1568
1c00acca:	60912a23          	sw	s1,1556(sp)
1c00acce:	64c1                	lui	s1,0x10
1c00acd0:	60812c23          	sw	s0,1560(sp)
1c00acd4:	61212823          	sw	s2,1552(sp)
1c00acd8:	61312623          	sw	s3,1548(sp)
1c00acdc:	61412423          	sw	s4,1544(sp)
1c00ace0:	60112e23          	sw	ra,1564(sp)
1c00ace4:	8a2a                	mv	s4,a0
1c00ace6:	40050413          	addi	s0,a0,1024
1c00acea:	40010993          	addi	s3,sp,1024
1c00acee:	14fd                	addi	s1,s1,-1
1c00acf0:	10000913          	li	s2,256
1c00acf4:	20000613          	li	a2,512
1c00acf8:	85d2                	mv	a1,s4
1c00acfa:	854e                	mv	a0,s3
1c00acfc:	2c61                	jal	1c00af94 <memcpy>
1c00acfe:	864e                	mv	a2,s3
1c00ad00:	4681                	li	a3,0
1c00ad02:	00061703          	lh	a4,0(a2)
1c00ad06:	00261583          	lh	a1,2(a2)
1c00ad0a:	4016d793          	srai	a5,a3,0x1
1c00ad0e:	078a                	slli	a5,a5,0x2
1c00ad10:	0742                	slli	a4,a4,0x10
1c00ad12:	8de5                	and	a1,a1,s1
1c00ad14:	60010513          	addi	a0,sp,1536
1c00ad18:	97aa                	add	a5,a5,a0
1c00ad1a:	8f4d                	or	a4,a4,a1
1c00ad1c:	a0e7a023          	sw	a4,-1536(a5)
1c00ad20:	0689                	addi	a3,a3,2
1c00ad22:	0611                	addi	a2,a2,4
1c00ad24:	fd269fe3          	bne	a3,s2,1c00ad02 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x3c>
1c00ad28:	040c                	addi	a1,sp,512
1c00ad2a:	850a                	mv	a0,sp
1c00ad2c:	fedfd0ef          	jal	ra,1c008d18 <KYBER_poly_ntt>
1c00ad30:	0418                	addi	a4,sp,512
1c00ad32:	87d2                	mv	a5,s4
1c00ad34:	4310                	lw	a2,0(a4)
1c00ad36:	4354                	lw	a3,4(a4)
1c00ad38:	0721                	addi	a4,a4,8
1c00ad3a:	01065813          	srli	a6,a2,0x10
1c00ad3e:	0106d593          	srli	a1,a3,0x10
1c00ad42:	01079023          	sh	a6,0(a5)
1c00ad46:	00b79123          	sh	a1,2(a5)
1c00ad4a:	00c79223          	sh	a2,4(a5)
1c00ad4e:	00d79323          	sh	a3,6(a5)
1c00ad52:	07a1                	addi	a5,a5,8
1c00ad54:	fee990e3          	bne	s3,a4,1c00ad34 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x6e>
1c00ad58:	200a0a13          	addi	s4,s4,512
1c00ad5c:	f9441ce3          	bne	s0,s4,1c00acf4 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x2e>
1c00ad60:	61c12083          	lw	ra,1564(sp)
1c00ad64:	61812403          	lw	s0,1560(sp)
1c00ad68:	61412483          	lw	s1,1556(sp)
1c00ad6c:	61012903          	lw	s2,1552(sp)
1c00ad70:	60c12983          	lw	s3,1548(sp)
1c00ad74:	60812a03          	lw	s4,1544(sp)
1c00ad78:	62010113          	addi	sp,sp,1568
1c00ad7c:	8082                	ret

1c00ad7e <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>:
1c00ad7e:	9e010113          	addi	sp,sp,-1568
1c00ad82:	60912a23          	sw	s1,1556(sp)
1c00ad86:	64c1                	lui	s1,0x10
1c00ad88:	60812c23          	sw	s0,1560(sp)
1c00ad8c:	61212823          	sw	s2,1552(sp)
1c00ad90:	61312623          	sw	s3,1548(sp)
1c00ad94:	61412423          	sw	s4,1544(sp)
1c00ad98:	60112e23          	sw	ra,1564(sp)
1c00ad9c:	10050a13          	addi	s4,a0,256
1c00ada0:	50050413          	addi	s0,a0,1280
1c00ada4:	40010913          	addi	s2,sp,1024
1c00ada8:	14fd                	addi	s1,s1,-1
1c00adaa:	10000993          	li	s3,256
1c00adae:	f00a0593          	addi	a1,s4,-256
1c00adb2:	20000613          	li	a2,512
1c00adb6:	854a                	mv	a0,s2
1c00adb8:	2af1                	jal	1c00af94 <memcpy>
1c00adba:	874a                	mv	a4,s2
1c00adbc:	4581                	li	a1,0
1c00adbe:	00071603          	lh	a2,0(a4)
1c00adc2:	00471883          	lh	a7,4(a4)
1c00adc6:	00271683          	lh	a3,2(a4)
1c00adca:	00671803          	lh	a6,6(a4)
1c00adce:	4015d793          	srai	a5,a1,0x1
1c00add2:	00279513          	slli	a0,a5,0x2
1c00add6:	60010313          	addi	t1,sp,1536
1c00adda:	0642                	slli	a2,a2,0x10
1c00addc:	0098f8b3          	and	a7,a7,s1
1c00ade0:	0785                	addi	a5,a5,1
1c00ade2:	06c2                	slli	a3,a3,0x10
1c00ade4:	00987833          	and	a6,a6,s1
1c00ade8:	951a                	add	a0,a0,t1
1c00adea:	01166633          	or	a2,a2,a7
1c00adee:	078a                	slli	a5,a5,0x2
1c00adf0:	0106e6b3          	or	a3,a3,a6
1c00adf4:	a0c52023          	sw	a2,-1536(a0)
1c00adf8:	979a                	add	a5,a5,t1
1c00adfa:	a0d7a023          	sw	a3,-1536(a5)
1c00adfe:	0591                	addi	a1,a1,4
1c00ae00:	0721                	addi	a4,a4,8
1c00ae02:	fb359ee3          	bne	a1,s3,1c00adbe <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x40>
1c00ae06:	040c                	addi	a1,sp,512
1c00ae08:	850a                	mv	a0,sp
1c00ae0a:	f79fd0ef          	jal	ra,1c008d82 <KYBER_poly_intt>
1c00ae0e:	0418                	addi	a4,sp,512
1c00ae10:	87d2                	mv	a5,s4
1c00ae12:	4314                	lw	a3,0(a4)
1c00ae14:	0711                	addi	a4,a4,4
1c00ae16:	0789                	addi	a5,a5,2
1c00ae18:	0106d613          	srli	a2,a3,0x10
1c00ae1c:	eec79f23          	sh	a2,-258(a5)
1c00ae20:	fed79f23          	sh	a3,-2(a5)
1c00ae24:	fee917e3          	bne	s2,a4,1c00ae12 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x94>
1c00ae28:	200a0a13          	addi	s4,s4,512
1c00ae2c:	f94411e3          	bne	s0,s4,1c00adae <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x30>
1c00ae30:	61c12083          	lw	ra,1564(sp)
1c00ae34:	61812403          	lw	s0,1560(sp)
1c00ae38:	61412483          	lw	s1,1556(sp)
1c00ae3c:	61012903          	lw	s2,1552(sp)
1c00ae40:	60c12983          	lw	s3,1548(sp)
1c00ae44:	60812a03          	lw	s4,1544(sp)
1c00ae48:	62010113          	addi	sp,sp,1568
1c00ae4c:	8082                	ret

1c00ae4e <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>:
1c00ae4e:	df010113          	addi	sp,sp,-528
1c00ae52:	20112623          	sw	ra,524(sp)
1c00ae56:	20812423          	sw	s0,520(sp)
1c00ae5a:	20912223          	sw	s1,516(sp)
1c00ae5e:	21212023          	sw	s2,512(sp)
1c00ae62:	842a                	mv	s0,a0
1c00ae64:	84ae                	mv	s1,a1
1c00ae66:	8932                	mv	s2,a2
1c00ae68:	3915                	jal	1c00aa9c <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00ae6a:	20090613          	addi	a2,s2,512
1c00ae6e:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c00ae72:	850a                	mv	a0,sp
1c00ae74:	3125                	jal	1c00aa9c <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00ae76:	860a                	mv	a2,sp
1c00ae78:	85a2                	mv	a1,s0
1c00ae7a:	8522                	mv	a0,s0
1c00ae7c:	3b39                	jal	1c00ab9a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00ae7e:	8522                	mv	a0,s0
1c00ae80:	39cd                	jal	1c00ab72 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00ae82:	20c12083          	lw	ra,524(sp)
1c00ae86:	20812403          	lw	s0,520(sp)
1c00ae8a:	20412483          	lw	s1,516(sp)
1c00ae8e:	20012903          	lw	s2,512(sp)
1c00ae92:	21010113          	addi	sp,sp,528
1c00ae96:	8082                	ret

1c00ae98 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>:
1c00ae98:	1141                	addi	sp,sp,-16
1c00ae9a:	c422                	sw	s0,8(sp)
1c00ae9c:	c606                	sw	ra,12(sp)
1c00ae9e:	842a                	mv	s0,a0
1c00aea0:	39c9                	jal	1c00ab72 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00aea2:	20040513          	addi	a0,s0,512
1c00aea6:	4422                	lw	s0,8(sp)
1c00aea8:	40b2                	lw	ra,12(sp)
1c00aeaa:	0141                	addi	sp,sp,16
1c00aeac:	b1d9                	j	1c00ab72 <PQCLEAN_KYBER512_CLEAN_poly_reduce>

1c00aeae <PQCLEAN_KYBER512_CLEAN_polyvec_add>:
1c00aeae:	1141                	addi	sp,sp,-16
1c00aeb0:	c422                	sw	s0,8(sp)
1c00aeb2:	c226                	sw	s1,4(sp)
1c00aeb4:	c04a                	sw	s2,0(sp)
1c00aeb6:	c606                	sw	ra,12(sp)
1c00aeb8:	842a                	mv	s0,a0
1c00aeba:	84ae                	mv	s1,a1
1c00aebc:	8932                	mv	s2,a2
1c00aebe:	39f1                	jal	1c00ab9a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00aec0:	20040513          	addi	a0,s0,512
1c00aec4:	4422                	lw	s0,8(sp)
1c00aec6:	40b2                	lw	ra,12(sp)
1c00aec8:	20090613          	addi	a2,s2,512
1c00aecc:	20048593          	addi	a1,s1,512
1c00aed0:	4902                	lw	s2,0(sp)
1c00aed2:	4492                	lw	s1,4(sp)
1c00aed4:	0141                	addi	sp,sp,16
1c00aed6:	b1d1                	j	1c00ab9a <PQCLEAN_KYBER512_CLEAN_poly_add>

1c00aed8 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>:
1c00aed8:	6795                	lui	a5,0x5
1c00aeda:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00aede:	02f507b3          	mul	a5,a0,a5
1c00aee2:	02000737          	lui	a4,0x2000
1c00aee6:	97ba                	add	a5,a5,a4
1c00aee8:	6705                	lui	a4,0x1
1c00aeea:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00aeee:	87e9                	srai	a5,a5,0x1a
1c00aef0:	02e787b3          	mul	a5,a5,a4
1c00aef4:	8d1d                	sub	a0,a0,a5
1c00aef6:	0542                	slli	a0,a0,0x10
1c00aef8:	8541                	srai	a0,a0,0x10
1c00aefa:	8082                	ret

1c00aefc <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>:
1c00aefc:	7139                	addi	sp,sp,-64
1c00aefe:	da26                	sw	s1,52(sp)
1c00af00:	d84a                	sw	s2,48(sp)
1c00af02:	84b2                	mv	s1,a2
1c00af04:	892a                	mv	s2,a0
1c00af06:	02000613          	li	a2,32
1c00af0a:	0068                	addi	a0,sp,12
1c00af0c:	de06                	sw	ra,60(sp)
1c00af0e:	dc22                	sw	s0,56(sp)
1c00af10:	8436                	mv	s0,a3
1c00af12:	2049                	jal	1c00af94 <memcpy>
1c00af14:	006c                	addi	a1,sp,12
1c00af16:	854a                	mv	a0,s2
1c00af18:	02200613          	li	a2,34
1c00af1c:	02910623          	sb	s1,44(sp)
1c00af20:	028106a3          	sb	s0,45(sp)
1c00af24:	abcfe0ef          	jal	ra,1c0091e0 <shake128_absorb>
1c00af28:	50f2                	lw	ra,60(sp)
1c00af2a:	5462                	lw	s0,56(sp)
1c00af2c:	54d2                	lw	s1,52(sp)
1c00af2e:	5942                	lw	s2,48(sp)
1c00af30:	6121                	addi	sp,sp,64
1c00af32:	8082                	ret

1c00af34 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>:
1c00af34:	7139                	addi	sp,sp,-64
1c00af36:	87b2                	mv	a5,a2
1c00af38:	da26                	sw	s1,52(sp)
1c00af3a:	d84a                	sw	s2,48(sp)
1c00af3c:	84aa                	mv	s1,a0
1c00af3e:	892e                	mv	s2,a1
1c00af40:	02000613          	li	a2,32
1c00af44:	85be                	mv	a1,a5
1c00af46:	0068                	addi	a0,sp,12
1c00af48:	de06                	sw	ra,60(sp)
1c00af4a:	dc22                	sw	s0,56(sp)
1c00af4c:	8436                	mv	s0,a3
1c00af4e:	2099                	jal	1c00af94 <memcpy>
1c00af50:	0070                	addi	a2,sp,12
1c00af52:	85ca                	mv	a1,s2
1c00af54:	8526                	mv	a0,s1
1c00af56:	02100693          	li	a3,33
1c00af5a:	02810623          	sb	s0,44(sp)
1c00af5e:	d6cfe0ef          	jal	ra,1c0094ca <shake256>
1c00af62:	50f2                	lw	ra,60(sp)
1c00af64:	5462                	lw	s0,56(sp)
1c00af66:	54d2                	lw	s1,52(sp)
1c00af68:	5942                	lw	s2,48(sp)
1c00af6a:	6121                	addi	sp,sp,64
1c00af6c:	8082                	ret

1c00af6e <pos_wait_forever>:
1c00af6e:	f14027f3          	csrr	a5,mhartid
1c00af72:	8795                	srai	a5,a5,0x5
1c00af74:	03f7f793          	andi	a5,a5,63
1c00af78:	477d                	li	a4,31
1c00af7a:	00e78363          	beq	a5,a4,1c00af80 <pos_wait_forever+0x12>
1c00af7e:	a001                	j	1c00af7e <pos_wait_forever+0x10>
1c00af80:	1a10a7b7          	lui	a5,0x1a10a
1c00af84:	577d                	li	a4,-1
1c00af86:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00af8a:	10500073          	wfi
1c00af8e:	10500073          	wfi
1c00af92:	bfe5                	j	1c00af8a <pos_wait_forever+0x1c>

1c00af94 <memcpy>:
1c00af94:	00c5e7b3          	or	a5,a1,a2
1c00af98:	8fc9                	or	a5,a5,a0
1c00af9a:	8b8d                	andi	a5,a5,3
1c00af9c:	872e                	mv	a4,a1
1c00af9e:	882a                	mv	a6,a0
1c00afa0:	cbc5                	beqz	a5,1c00b050 <memcpy+0xbc>
1c00afa2:	c279                	beqz	a2,1c00b068 <memcpy+0xd4>
1c00afa4:	00350793          	addi	a5,a0,3
1c00afa8:	8f8d                	sub	a5,a5,a1
1c00afaa:	0077b793          	sltiu	a5,a5,7
1c00afae:	e7d1                	bnez	a5,1c00b03a <memcpy+0xa6>
1c00afb0:	fff60793          	addi	a5,a2,-1
1c00afb4:	0047b793          	sltiu	a5,a5,4
1c00afb8:	e3c9                	bnez	a5,1c00b03a <memcpy+0xa6>
1c00afba:	ffc67e13          	andi	t3,a2,-4
1c00afbe:	9e2e                	add	t3,t3,a1
1c00afc0:	00174883          	lbu	a7,1(a4)
1c00afc4:	00074303          	lbu	t1,0(a4)
1c00afc8:	00274683          	lbu	a3,2(a4)
1c00afcc:	00374783          	lbu	a5,3(a4)
1c00afd0:	08a2                	slli	a7,a7,0x8
1c00afd2:	0068e8b3          	or	a7,a7,t1
1c00afd6:	06c2                	slli	a3,a3,0x10
1c00afd8:	0116e6b3          	or	a3,a3,a7
1c00afdc:	07e2                	slli	a5,a5,0x18
1c00afde:	8fd5                	or	a5,a5,a3
1c00afe0:	0087d313          	srli	t1,a5,0x8
1c00afe4:	0107d893          	srli	a7,a5,0x10
1c00afe8:	83e1                	srli	a5,a5,0x18
1c00afea:	00d80023          	sb	a3,0(a6)
1c00afee:	006800a3          	sb	t1,1(a6)
1c00aff2:	01180123          	sb	a7,2(a6)
1c00aff6:	00f801a3          	sb	a5,3(a6)
1c00affa:	0711                	addi	a4,a4,4
1c00affc:	0811                	addi	a6,a6,4
1c00affe:	fdc711e3          	bne	a4,t3,1c00afc0 <memcpy+0x2c>
1c00b002:	ffc67793          	andi	a5,a2,-4
1c00b006:	00367693          	andi	a3,a2,3
1c00b00a:	00f50733          	add	a4,a0,a5
1c00b00e:	95be                	add	a1,a1,a5
1c00b010:	02f60f63          	beq	a2,a5,1c00b04e <memcpy+0xba>
1c00b014:	0005c603          	lbu	a2,0(a1)
1c00b018:	fff68793          	addi	a5,a3,-1
1c00b01c:	00c70023          	sb	a2,0(a4)
1c00b020:	c79d                	beqz	a5,1c00b04e <memcpy+0xba>
1c00b022:	0015c603          	lbu	a2,1(a1)
1c00b026:	4789                	li	a5,2
1c00b028:	00c700a3          	sb	a2,1(a4)
1c00b02c:	02f68163          	beq	a3,a5,1c00b04e <memcpy+0xba>
1c00b030:	0025c783          	lbu	a5,2(a1)
1c00b034:	00f70123          	sb	a5,2(a4)
1c00b038:	8082                	ret
1c00b03a:	962e                	add	a2,a2,a1
1c00b03c:	87aa                	mv	a5,a0
1c00b03e:	0005c703          	lbu	a4,0(a1)
1c00b042:	0585                	addi	a1,a1,1
1c00b044:	0785                	addi	a5,a5,1
1c00b046:	fee78fa3          	sb	a4,-1(a5)
1c00b04a:	fec59ae3          	bne	a1,a2,1c00b03e <memcpy+0xaa>
1c00b04e:	8082                	ret
1c00b050:	de7d                	beqz	a2,1c00b04e <memcpy+0xba>
1c00b052:	87aa                	mv	a5,a0
1c00b054:	4194                	lw	a3,0(a1)
1c00b056:	0791                	addi	a5,a5,4
1c00b058:	40c78733          	sub	a4,a5,a2
1c00b05c:	fed7ae23          	sw	a3,-4(a5)
1c00b060:	0591                	addi	a1,a1,4
1c00b062:	fea719e3          	bne	a4,a0,1c00b054 <memcpy+0xc0>
1c00b066:	8082                	ret
1c00b068:	8082                	ret

1c00b06a <memmove>:
1c00b06a:	40b507b3          	sub	a5,a0,a1
1c00b06e:	0ac7e063          	bltu	a5,a2,1c00b10e <memmove+0xa4>
1c00b072:	c661                	beqz	a2,1c00b13a <memmove+0xd0>
1c00b074:	00350793          	addi	a5,a0,3
1c00b078:	8f8d                	sub	a5,a5,a1
1c00b07a:	0077b793          	sltiu	a5,a5,7
1c00b07e:	e3dd                	bnez	a5,1c00b124 <memmove+0xba>
1c00b080:	fff60793          	addi	a5,a2,-1
1c00b084:	0047b793          	sltiu	a5,a5,4
1c00b088:	efd1                	bnez	a5,1c00b124 <memmove+0xba>
1c00b08a:	ffc67e13          	andi	t3,a2,-4
1c00b08e:	872e                	mv	a4,a1
1c00b090:	882a                	mv	a6,a0
1c00b092:	9e2e                	add	t3,t3,a1
1c00b094:	00174883          	lbu	a7,1(a4)
1c00b098:	00074303          	lbu	t1,0(a4)
1c00b09c:	00274683          	lbu	a3,2(a4)
1c00b0a0:	00374783          	lbu	a5,3(a4)
1c00b0a4:	08a2                	slli	a7,a7,0x8
1c00b0a6:	0068e8b3          	or	a7,a7,t1
1c00b0aa:	06c2                	slli	a3,a3,0x10
1c00b0ac:	0116e6b3          	or	a3,a3,a7
1c00b0b0:	07e2                	slli	a5,a5,0x18
1c00b0b2:	8fd5                	or	a5,a5,a3
1c00b0b4:	0087d313          	srli	t1,a5,0x8
1c00b0b8:	0107d893          	srli	a7,a5,0x10
1c00b0bc:	83e1                	srli	a5,a5,0x18
1c00b0be:	00d80023          	sb	a3,0(a6)
1c00b0c2:	006800a3          	sb	t1,1(a6)
1c00b0c6:	01180123          	sb	a7,2(a6)
1c00b0ca:	00f801a3          	sb	a5,3(a6)
1c00b0ce:	0711                	addi	a4,a4,4
1c00b0d0:	0811                	addi	a6,a6,4
1c00b0d2:	fdc711e3          	bne	a4,t3,1c00b094 <memmove+0x2a>
1c00b0d6:	ffc67793          	andi	a5,a2,-4
1c00b0da:	00367693          	andi	a3,a2,3
1c00b0de:	00f50733          	add	a4,a0,a5
1c00b0e2:	95be                	add	a1,a1,a5
1c00b0e4:	04f60a63          	beq	a2,a5,1c00b138 <memmove+0xce>
1c00b0e8:	0005c603          	lbu	a2,0(a1)
1c00b0ec:	fff68793          	addi	a5,a3,-1
1c00b0f0:	00c70023          	sb	a2,0(a4)
1c00b0f4:	c3b1                	beqz	a5,1c00b138 <memmove+0xce>
1c00b0f6:	0015c603          	lbu	a2,1(a1)
1c00b0fa:	4789                	li	a5,2
1c00b0fc:	00c700a3          	sb	a2,1(a4)
1c00b100:	02f68c63          	beq	a3,a5,1c00b138 <memmove+0xce>
1c00b104:	0025c783          	lbu	a5,2(a1)
1c00b108:	00f70123          	sb	a5,2(a4)
1c00b10c:	8082                	ret
1c00b10e:	167d                	addi	a2,a2,-1
1c00b110:	00c587b3          	add	a5,a1,a2
1c00b114:	0007c703          	lbu	a4,0(a5)
1c00b118:	00c507b3          	add	a5,a0,a2
1c00b11c:	00e78023          	sb	a4,0(a5)
1c00b120:	f67d                	bnez	a2,1c00b10e <memmove+0xa4>
1c00b122:	8082                	ret
1c00b124:	962a                	add	a2,a2,a0
1c00b126:	87aa                	mv	a5,a0
1c00b128:	0005c703          	lbu	a4,0(a1)
1c00b12c:	0785                	addi	a5,a5,1
1c00b12e:	0585                	addi	a1,a1,1
1c00b130:	fee78fa3          	sb	a4,-1(a5)
1c00b134:	fec79ae3          	bne	a5,a2,1c00b128 <memmove+0xbe>
1c00b138:	8082                	ret
1c00b13a:	8082                	ret

1c00b13c <strchr>:
1c00b13c:	00054703          	lbu	a4,0(a0)
1c00b140:	0ff5f593          	andi	a1,a1,255
1c00b144:	87aa                	mv	a5,a0
1c00b146:	00b70863          	beq	a4,a1,1c00b156 <strchr+0x1a>
1c00b14a:	cb01                	beqz	a4,1c00b15a <strchr+0x1e>
1c00b14c:	0017c703          	lbu	a4,1(a5)
1c00b150:	0785                	addi	a5,a5,1
1c00b152:	feb71ce3          	bne	a4,a1,1c00b14a <strchr+0xe>
1c00b156:	853e                	mv	a0,a5
1c00b158:	8082                	ret
1c00b15a:	4501                	li	a0,0
1c00b15c:	dded                	beqz	a1,1c00b156 <strchr+0x1a>
1c00b15e:	8082                	ret

1c00b160 <puts>:
1c00b160:	00054783          	lbu	a5,0(a0)
1c00b164:	c78d                	beqz	a5,1c00b18e <puts+0x2e>
1c00b166:	f14026f3          	csrr	a3,mhartid
1c00b16a:	00369713          	slli	a4,a3,0x3
1c00b16e:	1a10f637          	lui	a2,0x1a10f
1c00b172:	0ff77713          	andi	a4,a4,255
1c00b176:	9732                	add	a4,a4,a2
1c00b178:	6609                	lui	a2,0x2
1c00b17a:	068a                	slli	a3,a3,0x2
1c00b17c:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b180:	8ef1                	and	a3,a3,a2
1c00b182:	9736                	add	a4,a4,a3
1c00b184:	c31c                	sw	a5,0(a4)
1c00b186:	00154783          	lbu	a5,1(a0)
1c00b18a:	0505                	addi	a0,a0,1
1c00b18c:	ffe5                	bnez	a5,1c00b184 <puts+0x24>
1c00b18e:	f1402773          	csrr	a4,mhartid
1c00b192:	00371793          	slli	a5,a4,0x3
1c00b196:	1a10f6b7          	lui	a3,0x1a10f
1c00b19a:	0ff7f793          	andi	a5,a5,255
1c00b19e:	97b6                	add	a5,a5,a3
1c00b1a0:	6689                	lui	a3,0x2
1c00b1a2:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b1a6:	070a                	slli	a4,a4,0x2
1c00b1a8:	8f75                	and	a4,a4,a3
1c00b1aa:	97ba                	add	a5,a5,a4
1c00b1ac:	4729                	li	a4,10
1c00b1ae:	c398                	sw	a4,0(a5)
1c00b1b0:	4501                	li	a0,0
1c00b1b2:	8082                	ret

1c00b1b4 <pos_libc_fputc_locked>:
1c00b1b4:	6689                	lui	a3,0x2
1c00b1b6:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b1ba:	f14027f3          	csrr	a5,mhartid
1c00b1be:	00379713          	slli	a4,a5,0x3
1c00b1c2:	078a                	slli	a5,a5,0x2
1c00b1c4:	8ff5                	and	a5,a5,a3
1c00b1c6:	0ff77713          	andi	a4,a4,255
1c00b1ca:	1a10f6b7          	lui	a3,0x1a10f
1c00b1ce:	9736                	add	a4,a4,a3
1c00b1d0:	97ba                	add	a5,a5,a4
1c00b1d2:	0ff57513          	andi	a0,a0,255
1c00b1d6:	c388                	sw	a0,0(a5)
1c00b1d8:	4501                	li	a0,0
1c00b1da:	8082                	ret

1c00b1dc <putchar>:
1c00b1dc:	6689                	lui	a3,0x2
1c00b1de:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b1e2:	f14027f3          	csrr	a5,mhartid
1c00b1e6:	00379713          	slli	a4,a5,0x3
1c00b1ea:	078a                	slli	a5,a5,0x2
1c00b1ec:	8ff5                	and	a5,a5,a3
1c00b1ee:	0ff77713          	andi	a4,a4,255
1c00b1f2:	1a10f6b7          	lui	a3,0x1a10f
1c00b1f6:	9736                	add	a4,a4,a3
1c00b1f8:	97ba                	add	a5,a5,a4
1c00b1fa:	0ff57513          	andi	a0,a0,255
1c00b1fe:	c388                	sw	a0,0(a5)
1c00b200:	4501                	li	a0,0
1c00b202:	8082                	ret

1c00b204 <pos_libc_prf_locked>:
1c00b204:	a0b1                	j	1c00b250 <pos_libc_prf>

1c00b206 <exit>:
1c00b206:	800007b7          	lui	a5,0x80000
1c00b20a:	1141                	addi	sp,sp,-16
1c00b20c:	8d5d                	or	a0,a0,a5
1c00b20e:	c606                	sw	ra,12(sp)
1c00b210:	1a1047b7          	lui	a5,0x1a104
1c00b214:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00b218:	3b99                	jal	1c00af6e <pos_wait_forever>

1c00b21a <pos_io_start>:
1c00b21a:	4501                	li	a0,0
1c00b21c:	8082                	ret

1c00b21e <pos_io_stop>:
1c00b21e:	4501                	li	a0,0
1c00b220:	8082                	ret

1c00b222 <printf>:
1c00b222:	7139                	addi	sp,sp,-64
1c00b224:	02410313          	addi	t1,sp,36
1c00b228:	d432                	sw	a2,40(sp)
1c00b22a:	862a                	mv	a2,a0
1c00b22c:	1c00b537          	lui	a0,0x1c00b
1c00b230:	d22e                	sw	a1,36(sp)
1c00b232:	d636                	sw	a3,44(sp)
1c00b234:	4589                	li	a1,2
1c00b236:	869a                	mv	a3,t1
1c00b238:	1b450513          	addi	a0,a0,436 # 1c00b1b4 <pos_libc_fputc_locked>
1c00b23c:	ce06                	sw	ra,28(sp)
1c00b23e:	d83a                	sw	a4,48(sp)
1c00b240:	da3e                	sw	a5,52(sp)
1c00b242:	dc42                	sw	a6,56(sp)
1c00b244:	de46                	sw	a7,60(sp)
1c00b246:	c61a                	sw	t1,12(sp)
1c00b248:	3f75                	jal	1c00b204 <pos_libc_prf_locked>
1c00b24a:	40f2                	lw	ra,28(sp)
1c00b24c:	6121                	addi	sp,sp,64
1c00b24e:	8082                	ret

1c00b250 <pos_libc_prf>:
1c00b250:	7169                	addi	sp,sp,-304
1c00b252:	12112623          	sw	ra,300(sp)
1c00b256:	12812423          	sw	s0,296(sp)
1c00b25a:	12912223          	sw	s1,292(sp)
1c00b25e:	13212023          	sw	s2,288(sp)
1c00b262:	11312e23          	sw	s3,284(sp)
1c00b266:	11412c23          	sw	s4,280(sp)
1c00b26a:	11512a23          	sw	s5,276(sp)
1c00b26e:	11612823          	sw	s6,272(sp)
1c00b272:	11712623          	sw	s7,268(sp)
1c00b276:	11812423          	sw	s8,264(sp)
1c00b27a:	11912223          	sw	s9,260(sp)
1c00b27e:	11a12023          	sw	s10,256(sp)
1c00b282:	dfee                	sw	s11,252(sp)
1c00b284:	00064783          	lbu	a5,0(a2)
1c00b288:	c636                	sw	a3,12(sp)
1c00b28a:	3c0781e3          	beqz	a5,1c00be4c <pos_libc_prf+0xbfc>
1c00b28e:	7741                	lui	a4,0xffff0
1c00b290:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00b294:	cc3a                	sw	a4,24(sp)
1c00b296:	10000737          	lui	a4,0x10000
1c00b29a:	177d                	addi	a4,a4,-1
1c00b29c:	8caa                	mv	s9,a0
1c00b29e:	84ae                	mv	s1,a1
1c00b2a0:	00160c13          	addi	s8,a2,1
1c00b2a4:	4401                	li	s0,0
1c00b2a6:	1c000d37          	lui	s10,0x1c000
1c00b2aa:	ca3a                	sw	a4,20(sp)
1c00b2ac:	853e                	mv	a0,a5
1c00b2ae:	02500793          	li	a5,37
1c00b2b2:	04f50863          	beq	a0,a5,1c00b302 <pos_libc_prf+0xb2>
1c00b2b6:	85a6                	mv	a1,s1
1c00b2b8:	9c82                	jalr	s9
1c00b2ba:	57fd                	li	a5,-1
1c00b2bc:	4cf50b63          	beq	a0,a5,1c00b792 <pos_libc_prf+0x542>
1c00b2c0:	0405                	addi	s0,s0,1
1c00b2c2:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b2c6:	0c05                	addi	s8,s8,1
1c00b2c8:	f17d                	bnez	a0,1c00b2ae <pos_libc_prf+0x5e>
1c00b2ca:	12c12083          	lw	ra,300(sp)
1c00b2ce:	8522                	mv	a0,s0
1c00b2d0:	12812403          	lw	s0,296(sp)
1c00b2d4:	12412483          	lw	s1,292(sp)
1c00b2d8:	12012903          	lw	s2,288(sp)
1c00b2dc:	11c12983          	lw	s3,284(sp)
1c00b2e0:	11812a03          	lw	s4,280(sp)
1c00b2e4:	11412a83          	lw	s5,276(sp)
1c00b2e8:	11012b03          	lw	s6,272(sp)
1c00b2ec:	10c12b83          	lw	s7,268(sp)
1c00b2f0:	10812c03          	lw	s8,264(sp)
1c00b2f4:	10412c83          	lw	s9,260(sp)
1c00b2f8:	10012d03          	lw	s10,256(sp)
1c00b2fc:	5dfe                	lw	s11,252(sp)
1c00b2fe:	6155                	addi	sp,sp,304
1c00b300:	8082                	ret
1c00b302:	8de2                	mv	s11,s8
1c00b304:	000dcc03          	lbu	s8,0(s11)
1c00b308:	14cd0513          	addi	a0,s10,332 # 1c00014c <__clz_tab+0x130>
1c00b30c:	c826                	sw	s1,16(sp)
1c00b30e:	85e2                	mv	a1,s8
1c00b310:	c202                	sw	zero,4(sp)
1c00b312:	c402                	sw	zero,8(sp)
1c00b314:	c002                	sw	zero,0(sp)
1c00b316:	001d8493          	addi	s1,s11,1
1c00b31a:	350d                	jal	1c00b13c <strchr>
1c00b31c:	02000913          	li	s2,32
1c00b320:	4b81                	li	s7,0
1c00b322:	02b00993          	li	s3,43
1c00b326:	02d00b13          	li	s6,45
1c00b32a:	03000a93          	li	s5,48
1c00b32e:	02000a13          	li	s4,32
1c00b332:	8626                	mv	a2,s1
1c00b334:	c51d                	beqz	a0,1c00b362 <pos_libc_prf+0x112>
1c00b336:	413c0e63          	beq	s8,s3,1c00b752 <pos_libc_prf+0x502>
1c00b33a:	3f89ec63          	bltu	s3,s8,1c00b732 <pos_libc_prf+0x4e2>
1c00b33e:	414c0663          	beq	s8,s4,1c00b74a <pos_libc_prf+0x4fa>
1c00b342:	02300793          	li	a5,35
1c00b346:	3efc1363          	bne	s8,a5,1c00b72c <pos_libc_prf+0x4dc>
1c00b34a:	4b85                	li	s7,1
1c00b34c:	8da6                	mv	s11,s1
1c00b34e:	000dcc03          	lbu	s8,0(s11)
1c00b352:	14cd0513          	addi	a0,s10,332
1c00b356:	001d8493          	addi	s1,s11,1
1c00b35a:	85e2                	mv	a1,s8
1c00b35c:	33c5                	jal	1c00b13c <strchr>
1c00b35e:	8626                	mv	a2,s1
1c00b360:	f979                	bnez	a0,1c00b336 <pos_libc_prf+0xe6>
1c00b362:	87e2                	mv	a5,s8
1c00b364:	ce5e                	sw	s7,28(sp)
1c00b366:	02a00693          	li	a3,42
1c00b36a:	8c6e                	mv	s8,s11
1c00b36c:	8ba6                	mv	s7,s1
1c00b36e:	8dbe                	mv	s11,a5
1c00b370:	44c2                	lw	s1,16(sp)
1c00b372:	42d78263          	beq	a5,a3,1c00b796 <pos_libc_prf+0x546>
1c00b376:	fd078693          	addi	a3,a5,-48
1c00b37a:	4525                	li	a0,9
1c00b37c:	4a01                	li	s4,0
1c00b37e:	3cd57f63          	bgeu	a0,a3,1c00b75c <pos_libc_prf+0x50c>
1c00b382:	02e00793          	li	a5,46
1c00b386:	5afd                	li	s5,-1
1c00b388:	74fd8363          	beq	s11,a5,1c00bace <pos_libc_prf+0x87e>
1c00b38c:	1c0007b7          	lui	a5,0x1c000
1c00b390:	85ee                	mv	a1,s11
1c00b392:	15478513          	addi	a0,a5,340 # 1c000154 <__clz_tab+0x138>
1c00b396:	c832                	sw	a2,16(sp)
1c00b398:	3355                	jal	1c00b13c <strchr>
1c00b39a:	4642                	lw	a2,16(sp)
1c00b39c:	8c32                	mv	s8,a2
1c00b39e:	c509                	beqz	a0,1c00b3a8 <pos_libc_prf+0x158>
1c00b3a0:	00064d83          	lbu	s11,0(a2)
1c00b3a4:	00160c13          	addi	s8,a2,1
1c00b3a8:	06900793          	li	a5,105
1c00b3ac:	0afd8ee3          	beq	s11,a5,1c00bc68 <pos_libc_prf+0xa18>
1c00b3b0:	4db7c763          	blt	a5,s11,1c00b87e <pos_libc_prf+0x62e>
1c00b3b4:	05800793          	li	a5,88
1c00b3b8:	4efd8163          	beq	s11,a5,1c00b89a <pos_libc_prf+0x64a>
1c00b3bc:	41b7c163          	blt	a5,s11,1c00b7be <pos_libc_prf+0x56e>
1c00b3c0:	02500793          	li	a5,37
1c00b3c4:	26fd8ae3          	beq	s11,a5,1c00be38 <pos_libc_prf+0xbe8>
1c00b3c8:	3fb7d863          	bge	a5,s11,1c00b7b8 <pos_libc_prf+0x568>
1c00b3cc:	fbbd8793          	addi	a5,s11,-69
1c00b3d0:	4689                	li	a3,2
1c00b3d2:	eef6e8e3          	bltu	a3,a5,1c00b2c2 <pos_libc_prf+0x72>
1c00b3d6:	47b2                	lw	a5,12(sp)
1c00b3d8:	7ff00893          	li	a7,2047
1c00b3dc:	00778b13          	addi	s6,a5,7
1c00b3e0:	ff8b7b13          	andi	s6,s6,-8
1c00b3e4:	004b2783          	lw	a5,4(s6)
1c00b3e8:	000b2603          	lw	a2,0(s6)
1c00b3ec:	0b21                	addi	s6,s6,8
1c00b3ee:	00b79693          	slli	a3,a5,0xb
1c00b3f2:	01565513          	srli	a0,a2,0x15
1c00b3f6:	8ec9                	or	a3,a3,a0
1c00b3f8:	0147d813          	srli	a6,a5,0x14
1c00b3fc:	0686                	slli	a3,a3,0x1
1c00b3fe:	7ff87813          	andi	a6,a6,2047
1c00b402:	0016d513          	srli	a0,a3,0x1
1c00b406:	00b61313          	slli	t1,a2,0xb
1c00b40a:	86be                	mv	a3,a5
1c00b40c:	41180263          	beq	a6,a7,1c00b810 <pos_libc_prf+0x5c0>
1c00b410:	04600793          	li	a5,70
1c00b414:	00fd9463          	bne	s11,a5,1c00b41c <pos_libc_prf+0x1cc>
1c00b418:	06600d93          	li	s11,102
1c00b41c:	006867b3          	or	a5,a6,t1
1c00b420:	00a7e8b3          	or	a7,a5,a0
1c00b424:	862a                	mv	a2,a0
1c00b426:	340885e3          	beqz	a7,1c00bf70 <pos_libc_prf+0xd20>
1c00b42a:	80000637          	lui	a2,0x80000
1c00b42e:	c0280813          	addi	a6,a6,-1022
1c00b432:	879a                	mv	a5,t1
1c00b434:	8e49                	or	a2,a2,a0
1c00b436:	4606c7e3          	bltz	a3,1c00c0a4 <pos_libc_prf+0xe54>
1c00b43a:	4722                	lw	a4,8(sp)
1c00b43c:	480708e3          	beqz	a4,1c00c0cc <pos_libc_prf+0xe7c>
1c00b440:	02b00693          	li	a3,43
1c00b444:	02d10223          	sb	a3,36(sp)
1c00b448:	02510f13          	addi	t5,sp,37
1c00b44c:	56f9                	li	a3,-2
1c00b44e:	4301                	li	t1,0
1c00b450:	06d85663          	bge	a6,a3,1c00b4bc <pos_libc_prf+0x26c>
1c00b454:	333338b7          	lui	a7,0x33333
1c00b458:	80000e37          	lui	t3,0x80000
1c00b45c:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00b460:	fffe4e13          	not	t3,t3
1c00b464:	5ef9                	li	t4,-2
1c00b466:	01f61593          	slli	a1,a2,0x1f
1c00b46a:	0017d693          	srli	a3,a5,0x1
1c00b46e:	0017f713          	andi	a4,a5,1
1c00b472:	8ecd                	or	a3,a3,a1
1c00b474:	00d707b3          	add	a5,a4,a3
1c00b478:	00e7b733          	sltu	a4,a5,a4
1c00b47c:	8205                	srli	a2,a2,0x1
1c00b47e:	963a                	add	a2,a2,a4
1c00b480:	8742                	mv	a4,a6
1c00b482:	0805                	addi	a6,a6,1
1c00b484:	fec8e1e3          	bltu	a7,a2,1c00b466 <pos_libc_prf+0x216>
1c00b488:	00279593          	slli	a1,a5,0x2
1c00b48c:	01e7d513          	srli	a0,a5,0x1e
1c00b490:	00261693          	slli	a3,a2,0x2
1c00b494:	97ae                	add	a5,a5,a1
1c00b496:	8ec9                	or	a3,a3,a0
1c00b498:	9636                	add	a2,a2,a3
1c00b49a:	00b7b5b3          	sltu	a1,a5,a1
1c00b49e:	962e                	add	a2,a2,a1
1c00b4a0:	01f7d693          	srli	a3,a5,0x1f
1c00b4a4:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00b4a8:	137d                	addi	t1,t1,-1
1c00b4aa:	01c61763          	bne	a2,t3,1c00b4b8 <pos_libc_prf+0x268>
1c00b4ae:	00170813          	addi	a6,a4,1
1c00b4b2:	0786                	slli	a5,a5,0x1
1c00b4b4:	ffe6e613          	ori	a2,a3,-2
1c00b4b8:	fbd847e3          	blt	a6,t4,1c00b466 <pos_libc_prf+0x216>
1c00b4bc:	07005363          	blez	a6,1c00b522 <pos_libc_prf+0x2d2>
1c00b4c0:	800008b7          	lui	a7,0x80000
1c00b4c4:	4e15                	li	t3,5
1c00b4c6:	fff8c893          	not	a7,a7
1c00b4ca:	00278693          	addi	a3,a5,2
1c00b4ce:	00f6b7b3          	sltu	a5,a3,a5
1c00b4d2:	963e                	add	a2,a2,a5
1c00b4d4:	03c657b3          	divu	a5,a2,t3
1c00b4d8:	0036d713          	srli	a4,a3,0x3
1c00b4dc:	187d                	addi	a6,a6,-1
1c00b4de:	0305                	addi	t1,t1,1
1c00b4e0:	00279593          	slli	a1,a5,0x2
1c00b4e4:	95be                	add	a1,a1,a5
1c00b4e6:	8e0d                	sub	a2,a2,a1
1c00b4e8:	0676                	slli	a2,a2,0x1d
1c00b4ea:	8f51                	or	a4,a4,a2
1c00b4ec:	03c75633          	divu	a2,a4,t3
1c00b4f0:	00361713          	slli	a4,a2,0x3
1c00b4f4:	00561593          	slli	a1,a2,0x5
1c00b4f8:	95ba                	add	a1,a1,a4
1c00b4fa:	8e8d                	sub	a3,a3,a1
1c00b4fc:	03c6d6b3          	divu	a3,a3,t3
1c00b500:	8275                	srli	a2,a2,0x1d
1c00b502:	963e                	add	a2,a2,a5
1c00b504:	00e687b3          	add	a5,a3,a4
1c00b508:	00d7b6b3          	sltu	a3,a5,a3
1c00b50c:	9636                	add	a2,a2,a3
1c00b50e:	01f7d713          	srli	a4,a5,0x1f
1c00b512:	0606                	slli	a2,a2,0x1
1c00b514:	8e59                	or	a2,a2,a4
1c00b516:	0786                	slli	a5,a5,0x1
1c00b518:	187d                	addi	a6,a6,-1
1c00b51a:	fec8fae3          	bgeu	a7,a2,1c00b50e <pos_libc_prf+0x2be>
1c00b51e:	fb0046e3          	bgtz	a6,1c00b4ca <pos_libc_prf+0x27a>
1c00b522:	4e11                	li	t3,4
1c00b524:	01f61693          	slli	a3,a2,0x1f
1c00b528:	0017d713          	srli	a4,a5,0x1
1c00b52c:	8f55                	or	a4,a4,a3
1c00b52e:	8b85                	andi	a5,a5,1
1c00b530:	00e78533          	add	a0,a5,a4
1c00b534:	8205                	srli	a2,a2,0x1
1c00b536:	00f537b3          	sltu	a5,a0,a5
1c00b53a:	00c788b3          	add	a7,a5,a2
1c00b53e:	0805                	addi	a6,a6,1
1c00b540:	87aa                	mv	a5,a0
1c00b542:	8646                	mv	a2,a7
1c00b544:	ffc810e3          	bne	a6,t3,1c00b524 <pos_libc_prf+0x2d4>
1c00b548:	06700793          	li	a5,103
1c00b54c:	2a0acee3          	bltz	s5,1c00c008 <pos_libc_prf+0xdb8>
1c00b550:	28fd83e3          	beq	s11,a5,1c00bfd6 <pos_libc_prf+0xd86>
1c00b554:	04700793          	li	a5,71
1c00b558:	26fd8fe3          	beq	s11,a5,1c00bfd6 <pos_libc_prf+0xd86>
1c00b55c:	06600793          	li	a5,102
1c00b560:	2cfd85e3          	beq	s11,a5,1c00c02a <pos_libc_prf+0xdda>
1c00b564:	001a8813          	addi	a6,s5,1
1c00b568:	47c1                	li	a5,16
1c00b56a:	0107d363          	bge	a5,a6,1c00b570 <pos_libc_prf+0x320>
1c00b56e:	4841                	li	a6,16
1c00b570:	187d                	addi	a6,a6,-1
1c00b572:	4601                	li	a2,0
1c00b574:	4781                	li	a5,0
1c00b576:	080006b7          	lui	a3,0x8000
1c00b57a:	4e15                	li	t3,5
1c00b57c:	5efd                	li	t4,-1
1c00b57e:	00278713          	addi	a4,a5,2
1c00b582:	00f737b3          	sltu	a5,a4,a5
1c00b586:	97b6                	add	a5,a5,a3
1c00b588:	03c7dfb3          	divu	t6,a5,t3
1c00b58c:	00375593          	srli	a1,a4,0x3
1c00b590:	187d                	addi	a6,a6,-1
1c00b592:	002f9693          	slli	a3,t6,0x2
1c00b596:	96fe                	add	a3,a3,t6
1c00b598:	8f95                	sub	a5,a5,a3
1c00b59a:	07f6                	slli	a5,a5,0x1d
1c00b59c:	8ddd                	or	a1,a1,a5
1c00b59e:	03c5d5b3          	divu	a1,a1,t3
1c00b5a2:	00359693          	slli	a3,a1,0x3
1c00b5a6:	00559793          	slli	a5,a1,0x5
1c00b5aa:	97b6                	add	a5,a5,a3
1c00b5ac:	8f1d                	sub	a4,a4,a5
1c00b5ae:	03c757b3          	divu	a5,a4,t3
1c00b5b2:	81f5                	srli	a1,a1,0x1d
1c00b5b4:	95fe                	add	a1,a1,t6
1c00b5b6:	96be                	add	a3,a3,a5
1c00b5b8:	00f6b733          	sltu	a4,a3,a5
1c00b5bc:	972e                	add	a4,a4,a1
1c00b5be:	01f71593          	slli	a1,a4,0x1f
1c00b5c2:	0016d793          	srli	a5,a3,0x1
1c00b5c6:	8fcd                	or	a5,a5,a1
1c00b5c8:	8a85                	andi	a3,a3,1
1c00b5ca:	97b6                	add	a5,a5,a3
1c00b5cc:	8305                	srli	a4,a4,0x1
1c00b5ce:	00d7b6b3          	sltu	a3,a5,a3
1c00b5d2:	96ba                	add	a3,a3,a4
1c00b5d4:	fbd815e3          	bne	a6,t4,1c00b57e <pos_libc_prf+0x32e>
1c00b5d8:	97aa                	add	a5,a5,a0
1c00b5da:	96c6                	add	a3,a3,a7
1c00b5dc:	00a7b533          	sltu	a0,a5,a0
1c00b5e0:	00d508b3          	add	a7,a0,a3
1c00b5e4:	f00006b7          	lui	a3,0xf0000
1c00b5e8:	0116f6b3          	and	a3,a3,a7
1c00b5ec:	c2b5                	beqz	a3,1c00b650 <pos_libc_prf+0x400>
1c00b5ee:	00278813          	addi	a6,a5,2
1c00b5f2:	00f836b3          	sltu	a3,a6,a5
1c00b5f6:	98b6                	add	a7,a7,a3
1c00b5f8:	4e95                	li	t4,5
1c00b5fa:	03d8de33          	divu	t3,a7,t4
1c00b5fe:	00385693          	srli	a3,a6,0x3
1c00b602:	0305                	addi	t1,t1,1
1c00b604:	002e1513          	slli	a0,t3,0x2
1c00b608:	9572                	add	a0,a0,t3
1c00b60a:	40a888b3          	sub	a7,a7,a0
1c00b60e:	01d89513          	slli	a0,a7,0x1d
1c00b612:	8ec9                	or	a3,a3,a0
1c00b614:	03d6d6b3          	divu	a3,a3,t4
1c00b618:	00369513          	slli	a0,a3,0x3
1c00b61c:	00569793          	slli	a5,a3,0x5
1c00b620:	97aa                	add	a5,a5,a0
1c00b622:	40f807b3          	sub	a5,a6,a5
1c00b626:	03d7d7b3          	divu	a5,a5,t4
1c00b62a:	82f5                	srli	a3,a3,0x1d
1c00b62c:	96f2                	add	a3,a3,t3
1c00b62e:	953e                	add	a0,a0,a5
1c00b630:	00f537b3          	sltu	a5,a0,a5
1c00b634:	96be                	add	a3,a3,a5
1c00b636:	01f69813          	slli	a6,a3,0x1f
1c00b63a:	00155793          	srli	a5,a0,0x1
1c00b63e:	00f867b3          	or	a5,a6,a5
1c00b642:	8905                	andi	a0,a0,1
1c00b644:	97aa                	add	a5,a5,a0
1c00b646:	8285                	srli	a3,a3,0x1
1c00b648:	00a7b533          	sltu	a0,a5,a0
1c00b64c:	00d508b3          	add	a7,a0,a3
1c00b650:	001f0993          	addi	s3,t5,1
1c00b654:	06600693          	li	a3,102
1c00b658:	884e                	mv	a6,s3
1c00b65a:	4edd8163          	beq	s11,a3,1c00bb3c <pos_libc_prf+0x8ec>
1c00b65e:	00279693          	slli	a3,a5,0x2
1c00b662:	01e7d513          	srli	a0,a5,0x1e
1c00b666:	00289e13          	slli	t3,a7,0x2
1c00b66a:	97b6                	add	a5,a5,a3
1c00b66c:	01c56e33          	or	t3,a0,t3
1c00b670:	00d7b833          	sltu	a6,a5,a3
1c00b674:	011e06b3          	add	a3,t3,a7
1c00b678:	9836                	add	a6,a6,a3
1c00b67a:	0806                	slli	a6,a6,0x1
1c00b67c:	01f7d693          	srli	a3,a5,0x1f
1c00b680:	0106e833          	or	a6,a3,a6
1c00b684:	01c85693          	srli	a3,a6,0x1c
1c00b688:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00b68c:	4772                	lw	a4,28(sp)
1c00b68e:	00af0023          	sb	a0,0(t5)
1c00b692:	00179513          	slli	a0,a5,0x1
1c00b696:	47d2                	lw	a5,20(sp)
1c00b698:	00d036b3          	snez	a3,a3
1c00b69c:	01576bb3          	or	s7,a4,s5
1c00b6a0:	00f87833          	and	a6,a6,a5
1c00b6a4:	40d30333          	sub	t1,t1,a3
1c00b6a8:	060b8463          	beqz	s7,1c00b710 <pos_libc_prf+0x4c0>
1c00b6ac:	02e00793          	li	a5,46
1c00b6b0:	00ff00a3          	sb	a5,1(t5)
1c00b6b4:	002f0993          	addi	s3,t5,2
1c00b6b8:	040a8c63          	beqz	s5,1c00b710 <pos_libc_prf+0x4c0>
1c00b6bc:	002a8793          	addi	a5,s5,2
1c00b6c0:	9f3e                	add	t5,t5,a5
1c00b6c2:	88ce                	mv	a7,s3
1c00b6c4:	4ebd                	li	t4,15
1c00b6c6:	03000f93          	li	t6,48
1c00b6ca:	00251793          	slli	a5,a0,0x2
1c00b6ce:	01e55693          	srli	a3,a0,0x1e
1c00b6d2:	00281713          	slli	a4,a6,0x2
1c00b6d6:	00a785b3          	add	a1,a5,a0
1c00b6da:	8f55                	or	a4,a4,a3
1c00b6dc:	9742                	add	a4,a4,a6
1c00b6de:	00f5b7b3          	sltu	a5,a1,a5
1c00b6e2:	97ba                	add	a5,a5,a4
1c00b6e4:	0786                	slli	a5,a5,0x1
1c00b6e6:	01f5d713          	srli	a4,a1,0x1f
1c00b6ea:	8fd9                	or	a5,a5,a4
1c00b6ec:	01c7d713          	srli	a4,a5,0x1c
1c00b6f0:	03070713          	addi	a4,a4,48
1c00b6f4:	0885                	addi	a7,a7,1
1c00b6f6:	53d05763          	blez	t4,1c00bc24 <pos_libc_prf+0x9d4>
1c00b6fa:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00b6fe:	4752                	lw	a4,20(sp)
1c00b700:	1efd                	addi	t4,t4,-1
1c00b702:	00159513          	slli	a0,a1,0x1
1c00b706:	00e7f833          	and	a6,a5,a4
1c00b70a:	fd1f10e3          	bne	t5,a7,1c00b6ca <pos_libc_prf+0x47a>
1c00b70e:	99d6                	add	s3,s3,s5
1c00b710:	4e061c63          	bnez	a2,1c00bc08 <pos_libc_prf+0x9b8>
1c00b714:	fdfdf793          	andi	a5,s11,-33
1c00b718:	04500693          	li	a3,69
1c00b71c:	00d781e3          	beq	a5,a3,1c00bf1e <pos_libc_prf+0xcce>
1c00b720:	105c                	addi	a5,sp,36
1c00b722:	00098023          	sb	zero,0(s3)
1c00b726:	40f989b3          	sub	s3,s3,a5
1c00b72a:	aa05                	j	1c00b85a <pos_libc_prf+0x60a>
1c00b72c:	b80c0fe3          	beqz	s8,1c00b2ca <pos_libc_prf+0x7a>
1c00b730:	b931                	j	1c00b34c <pos_libc_prf+0xfc>
1c00b732:	016c0863          	beq	s8,s6,1c00b742 <pos_libc_prf+0x4f2>
1c00b736:	c15c1be3          	bne	s8,s5,1c00b34c <pos_libc_prf+0xfc>
1c00b73a:	03000913          	li	s2,48
1c00b73e:	8da6                	mv	s11,s1
1c00b740:	b139                	j	1c00b34e <pos_libc_prf+0xfe>
1c00b742:	4785                	li	a5,1
1c00b744:	c03e                	sw	a5,0(sp)
1c00b746:	8da6                	mv	s11,s1
1c00b748:	b119                	j	1c00b34e <pos_libc_prf+0xfe>
1c00b74a:	4785                	li	a5,1
1c00b74c:	c23e                	sw	a5,4(sp)
1c00b74e:	8da6                	mv	s11,s1
1c00b750:	befd                	j	1c00b34e <pos_libc_prf+0xfe>
1c00b752:	4785                	li	a5,1
1c00b754:	c43e                	sw	a5,8(sp)
1c00b756:	8da6                	mv	s11,s1
1c00b758:	bedd                	j	1c00b34e <pos_libc_prf+0xfe>
1c00b75a:	0b85                	addi	s7,s7,1
1c00b75c:	002a1793          	slli	a5,s4,0x2
1c00b760:	97d2                	add	a5,a5,s4
1c00b762:	0786                	slli	a5,a5,0x1
1c00b764:	97ee                	add	a5,a5,s11
1c00b766:	000bcd83          	lbu	s11,0(s7)
1c00b76a:	fd078a13          	addi	s4,a5,-48
1c00b76e:	8662                	mv	a2,s8
1c00b770:	fd0d8793          	addi	a5,s11,-48
1c00b774:	8c5e                	mv	s8,s7
1c00b776:	fef572e3          	bgeu	a0,a5,1c00b75a <pos_libc_prf+0x50a>
1c00b77a:	0609                	addi	a2,a2,2
1c00b77c:	0c800793          	li	a5,200
1c00b780:	c147f1e3          	bgeu	a5,s4,1c00b382 <pos_libc_prf+0x132>
1c00b784:	0c800a13          	li	s4,200
1c00b788:	beed                	j	1c00b382 <pos_libc_prf+0x132>
1c00b78a:	0c800793          	li	a5,200
1c00b78e:	b3b7dae3          	bge	a5,s11,1c00b2c2 <pos_libc_prf+0x72>
1c00b792:	547d                	li	s0,-1
1c00b794:	be1d                	j	1c00b2ca <pos_libc_prf+0x7a>
1c00b796:	47b2                	lw	a5,12(sp)
1c00b798:	0007aa03          	lw	s4,0(a5)
1c00b79c:	00478693          	addi	a3,a5,4
1c00b7a0:	000a5663          	bgez	s4,1c00b7ac <pos_libc_prf+0x55c>
1c00b7a4:	4785                	li	a5,1
1c00b7a6:	41400a33          	neg	s4,s4
1c00b7aa:	c03e                	sw	a5,0(sp)
1c00b7ac:	000bcd83          	lbu	s11,0(s7)
1c00b7b0:	c636                	sw	a3,12(sp)
1c00b7b2:	002c0613          	addi	a2,s8,2
1c00b7b6:	b7d9                	j	1c00b77c <pos_libc_prf+0x52c>
1c00b7b8:	b00d89e3          	beqz	s11,1c00b2ca <pos_libc_prf+0x7a>
1c00b7bc:	b619                	j	1c00b2c2 <pos_libc_prf+0x72>
1c00b7be:	06400793          	li	a5,100
1c00b7c2:	4afd8363          	beq	s11,a5,1c00bc68 <pos_libc_prf+0xa18>
1c00b7c6:	19b7d963          	bge	a5,s11,1c00b958 <pos_libc_prf+0x708>
1c00b7ca:	f9bd8793          	addi	a5,s11,-101
1c00b7ce:	4689                	li	a3,2
1c00b7d0:	aef6e9e3          	bltu	a3,a5,1c00b2c2 <pos_libc_prf+0x72>
1c00b7d4:	47b2                	lw	a5,12(sp)
1c00b7d6:	7ff00893          	li	a7,2047
1c00b7da:	00778b13          	addi	s6,a5,7
1c00b7de:	ff8b7b13          	andi	s6,s6,-8
1c00b7e2:	004b2783          	lw	a5,4(s6)
1c00b7e6:	000b2603          	lw	a2,0(s6)
1c00b7ea:	0b21                	addi	s6,s6,8
1c00b7ec:	00b79693          	slli	a3,a5,0xb
1c00b7f0:	01565813          	srli	a6,a2,0x15
1c00b7f4:	0147d513          	srli	a0,a5,0x14
1c00b7f8:	00d866b3          	or	a3,a6,a3
1c00b7fc:	0686                	slli	a3,a3,0x1
1c00b7fe:	7ff57813          	andi	a6,a0,2047
1c00b802:	00b61313          	slli	t1,a2,0xb
1c00b806:	0016d513          	srli	a0,a3,0x1
1c00b80a:	86be                	mv	a3,a5
1c00b80c:	c11818e3          	bne	a6,a7,1c00b41c <pos_libc_prf+0x1cc>
1c00b810:	105c                	addi	a5,sp,36
1c00b812:	0006d863          	bgez	a3,1c00b822 <pos_libc_prf+0x5d2>
1c00b816:	02d00793          	li	a5,45
1c00b81a:	02f10223          	sb	a5,36(sp)
1c00b81e:	02510793          	addi	a5,sp,37
1c00b822:	00a36633          	or	a2,t1,a0
1c00b826:	fbfd8593          	addi	a1,s11,-65
1c00b82a:	00378993          	addi	s3,a5,3
1c00b82e:	46e5                	li	a3,25
1c00b830:	0c0612e3          	bnez	a2,1c00c0f4 <pos_libc_prf+0xea4>
1c00b834:	10b6e5e3          	bltu	a3,a1,1c00c13e <pos_libc_prf+0xeee>
1c00b838:	04900693          	li	a3,73
1c00b83c:	00d78023          	sb	a3,0(a5)
1c00b840:	04e00693          	li	a3,78
1c00b844:	00d780a3          	sb	a3,1(a5)
1c00b848:	04600693          	li	a3,70
1c00b84c:	00d78123          	sb	a3,2(a5)
1c00b850:	000781a3          	sb	zero,3(a5)
1c00b854:	105c                	addi	a5,sp,36
1c00b856:	40f989b3          	sub	s3,s3,a5
1c00b85a:	47a2                	lw	a5,8(sp)
1c00b85c:	4712                	lw	a4,4(sp)
1c00b85e:	8fd9                	or	a5,a5,a4
1c00b860:	ce3e                	sw	a5,28(sp)
1c00b862:	5e079b63          	bnez	a5,1c00be58 <pos_libc_prf+0xc08>
1c00b866:	02414683          	lbu	a3,36(sp)
1c00b86a:	02d00793          	li	a5,45
1c00b86e:	5ef68563          	beq	a3,a5,1c00be58 <pos_libc_prf+0xc08>
1c00b872:	0c800793          	li	a5,200
1c00b876:	0d37d863          	bge	a5,s3,1c00b946 <pos_libc_prf+0x6f6>
1c00b87a:	547d                	li	s0,-1
1c00b87c:	b4b9                	j	1c00b2ca <pos_libc_prf+0x7a>
1c00b87e:	07000793          	li	a5,112
1c00b882:	46fd8f63          	beq	s11,a5,1c00bd00 <pos_libc_prf+0xab0>
1c00b886:	1bb7d663          	bge	a5,s11,1c00ba32 <pos_libc_prf+0x7e2>
1c00b88a:	07500793          	li	a5,117
1c00b88e:	52fd8763          	beq	s11,a5,1c00bdbc <pos_libc_prf+0xb6c>
1c00b892:	07800793          	li	a5,120
1c00b896:	16fd9163          	bne	s11,a5,1c00b9f8 <pos_libc_prf+0x7a8>
1c00b89a:	47b2                	lw	a5,12(sp)
1c00b89c:	1054                	addi	a3,sp,36
1c00b89e:	4390                	lw	a2,0(a5)
1c00b8a0:	00478b13          	addi	s6,a5,4
1c00b8a4:	47f2                	lw	a5,28(sp)
1c00b8a6:	28079163          	bnez	a5,1c00bb28 <pos_libc_prf+0x8d8>
1c00b8aa:	87b6                	mv	a5,a3
1c00b8ac:	4ea5                	li	t4,9
1c00b8ae:	4e3d                	li	t3,15
1c00b8b0:	a039                	j	1c00b8be <pos_libc_prf+0x66e>
1c00b8b2:	ff098fa3          	sb	a6,-1(s3)
1c00b8b6:	02ce7663          	bgeu	t3,a2,1c00b8e2 <pos_libc_prf+0x692>
1c00b8ba:	862a                	mv	a2,a0
1c00b8bc:	87ce                	mv	a5,s3
1c00b8be:	00f67593          	andi	a1,a2,15
1c00b8c2:	00178993          	addi	s3,a5,1
1c00b8c6:	05758813          	addi	a6,a1,87
1c00b8ca:	03058713          	addi	a4,a1,48
1c00b8ce:	00465513          	srli	a0,a2,0x4
1c00b8d2:	febee0e3          	bltu	t4,a1,1c00b8b2 <pos_libc_prf+0x662>
1c00b8d6:	00e78023          	sb	a4,0(a5)
1c00b8da:	00178993          	addi	s3,a5,1
1c00b8de:	fcce6ee3          	bltu	t3,a2,1c00b8ba <pos_libc_prf+0x66a>
1c00b8e2:	40d98633          	sub	a2,s3,a3
1c00b8e6:	01565c63          	bge	a2,s5,1c00b8fe <pos_libc_prf+0x6ae>
1c00b8ea:	03000513          	li	a0,48
1c00b8ee:	87ce                	mv	a5,s3
1c00b8f0:	0985                	addi	s3,s3,1
1c00b8f2:	40d98733          	sub	a4,s3,a3
1c00b8f6:	fea98fa3          	sb	a0,-1(s3)
1c00b8fa:	ff574ae3          	blt	a4,s5,1c00b8ee <pos_libc_prf+0x69e>
1c00b8fe:	00098023          	sb	zero,0(s3)
1c00b902:	00f6fe63          	bgeu	a3,a5,1c00b91e <pos_libc_prf+0x6ce>
1c00b906:	0006c603          	lbu	a2,0(a3)
1c00b90a:	0007c703          	lbu	a4,0(a5)
1c00b90e:	0685                	addi	a3,a3,1
1c00b910:	00c78023          	sb	a2,0(a5)
1c00b914:	fee68fa3          	sb	a4,-1(a3)
1c00b918:	17fd                	addi	a5,a5,-1
1c00b91a:	fef6e6e3          	bltu	a3,a5,1c00b906 <pos_libc_prf+0x6b6>
1c00b91e:	05800793          	li	a5,88
1c00b922:	66fd8463          	beq	s11,a5,1c00bf8a <pos_libc_prf+0xd3a>
1c00b926:	105c                	addi	a5,sp,36
1c00b928:	40f989b3          	sub	s3,s3,a5
1c00b92c:	47f2                	lw	a5,28(sp)
1c00b92e:	c399                	beqz	a5,1c00b934 <pos_libc_prf+0x6e4>
1c00b930:	4789                	li	a5,2
1c00b932:	ce3e                	sw	a5,28(sp)
1c00b934:	57fd                	li	a5,-1
1c00b936:	f2fa8ee3          	beq	s5,a5,1c00b872 <pos_libc_prf+0x622>
1c00b93a:	0c800793          	li	a5,200
1c00b93e:	e537cae3          	blt	a5,s3,1c00b792 <pos_libc_prf+0x542>
1c00b942:	02000913          	li	s2,32
1c00b946:	00198613          	addi	a2,s3,1
1c00b94a:	0349c963          	blt	s3,s4,1c00b97c <pos_libc_prf+0x72c>
1c00b94e:	c65a                	sw	s6,12(sp)
1c00b950:	8a4e                	mv	s4,s3
1c00b952:	1a0a1663          	bnez	s4,1c00bafe <pos_libc_prf+0x8ae>
1c00b956:	b2b5                	j	1c00b2c2 <pos_libc_prf+0x72>
1c00b958:	06300793          	li	a5,99
1c00b95c:	96fd93e3          	bne	s11,a5,1c00b2c2 <pos_libc_prf+0x72>
1c00b960:	4732                	lw	a4,12(sp)
1c00b962:	020102a3          	sb	zero,37(sp)
1c00b966:	4785                	li	a5,1
1c00b968:	4314                	lw	a3,0(a4)
1c00b96a:	00470b13          	addi	s6,a4,4
1c00b96e:	02d10223          	sb	a3,36(sp)
1c00b972:	1947d463          	bge	a5,s4,1c00bafa <pos_libc_prf+0x8aa>
1c00b976:	4609                	li	a2,2
1c00b978:	4985                	li	s3,1
1c00b97a:	ce02                	sw	zero,28(sp)
1c00b97c:	4782                	lw	a5,0(sp)
1c00b97e:	4e078463          	beqz	a5,1c00be66 <pos_libc_prf+0xc16>
1c00b982:	413a07b3          	sub	a5,s4,s3
1c00b986:	4585                	li	a1,1
1c00b988:	0149d363          	bge	s3,s4,1c00b98e <pos_libc_prf+0x73e>
1c00b98c:	85be                	mv	a1,a5
1c00b98e:	17fd                	addi	a5,a5,-1
1c00b990:	0037b793          	sltiu	a5,a5,3
1c00b994:	eb95                	bnez	a5,1c00b9c8 <pos_libc_prf+0x778>
1c00b996:	0349d963          	bge	s3,s4,1c00b9c8 <pos_libc_prf+0x778>
1c00b99a:	105c                	addi	a5,sp,36
1c00b99c:	97ce                	add	a5,a5,s3
1c00b99e:	ffc5f613          	andi	a2,a1,-4
1c00b9a2:	963e                	add	a2,a2,a5
1c00b9a4:	02000693          	li	a3,32
1c00b9a8:	00d78023          	sb	a3,0(a5)
1c00b9ac:	00d780a3          	sb	a3,1(a5)
1c00b9b0:	00d78123          	sb	a3,2(a5)
1c00b9b4:	00d781a3          	sb	a3,3(a5)
1c00b9b8:	0791                	addi	a5,a5,4
1c00b9ba:	fef617e3          	bne	a2,a5,1c00b9a8 <pos_libc_prf+0x758>
1c00b9be:	ffc5f793          	andi	a5,a1,-4
1c00b9c2:	99be                	add	s3,s3,a5
1c00b9c4:	02b78663          	beq	a5,a1,1c00b9f0 <pos_libc_prf+0x7a0>
1c00b9c8:	199c                	addi	a5,sp,240
1c00b9ca:	97ce                	add	a5,a5,s3
1c00b9cc:	02000693          	li	a3,32
1c00b9d0:	f2d78a23          	sb	a3,-204(a5)
1c00b9d4:	00198793          	addi	a5,s3,1
1c00b9d8:	0147dc63          	bge	a5,s4,1c00b9f0 <pos_libc_prf+0x7a0>
1c00b9dc:	1998                	addi	a4,sp,240
1c00b9de:	97ba                	add	a5,a5,a4
1c00b9e0:	f2d78a23          	sb	a3,-204(a5)
1c00b9e4:	0989                	addi	s3,s3,2
1c00b9e6:	0149d563          	bge	s3,s4,1c00b9f0 <pos_libc_prf+0x7a0>
1c00b9ea:	99ba                	add	s3,s3,a4
1c00b9ec:	f2d98a23          	sb	a3,-204(s3)
1c00b9f0:	c65a                	sw	s6,12(sp)
1c00b9f2:	100a1663          	bnez	s4,1c00bafe <pos_libc_prf+0x8ae>
1c00b9f6:	b0f1                	j	1c00b2c2 <pos_libc_prf+0x72>
1c00b9f8:	07300793          	li	a5,115
1c00b9fc:	d8fd97e3          	bne	s11,a5,1c00b78a <pos_libc_prf+0x53a>
1c00ba00:	47b2                	lw	a5,12(sp)
1c00ba02:	4981                	li	s3,0
1c00ba04:	0c800693          	li	a3,200
1c00ba08:	438c                	lw	a1,0(a5)
1c00ba0a:	00478b13          	addi	s6,a5,4
1c00ba0e:	a021                	j	1c00ba16 <pos_libc_prf+0x7c6>
1c00ba10:	0985                	addi	s3,s3,1
1c00ba12:	6ad98163          	beq	s3,a3,1c00c0b4 <pos_libc_prf+0xe64>
1c00ba16:	013587b3          	add	a5,a1,s3
1c00ba1a:	0007c783          	lbu	a5,0(a5)
1c00ba1e:	fbed                	bnez	a5,1c00ba10 <pos_libc_prf+0x7c0>
1c00ba20:	000ac563          	bltz	s5,1c00ba2a <pos_libc_prf+0x7da>
1c00ba24:	013ad363          	bge	s5,s3,1c00ba2a <pos_libc_prf+0x7da>
1c00ba28:	89d6                	mv	s3,s5
1c00ba2a:	5a099163          	bnez	s3,1c00bfcc <pos_libc_prf+0xd7c>
1c00ba2e:	c65a                	sw	s6,12(sp)
1c00ba30:	b849                	j	1c00b2c2 <pos_libc_prf+0x72>
1c00ba32:	06e00793          	li	a5,110
1c00ba36:	36fd8c63          	beq	s11,a5,1c00bdae <pos_libc_prf+0xb5e>
1c00ba3a:	06f00793          	li	a5,111
1c00ba3e:	88fd92e3          	bne	s11,a5,1c00b2c2 <pos_libc_prf+0x72>
1c00ba42:	47b2                	lw	a5,12(sp)
1c00ba44:	4390                	lw	a2,0(a5)
1c00ba46:	00478b13          	addi	s6,a5,4
1c00ba4a:	47f2                	lw	a5,28(sp)
1c00ba4c:	c7f5                	beqz	a5,1c00bb38 <pos_libc_prf+0x8e8>
1c00ba4e:	03000793          	li	a5,48
1c00ba52:	02f10223          	sb	a5,36(sp)
1c00ba56:	02510693          	addi	a3,sp,37
1c00ba5a:	60060b63          	beqz	a2,1c00c070 <pos_libc_prf+0xe20>
1c00ba5e:	89b6                	mv	s3,a3
1c00ba60:	481d                	li	a6,7
1c00ba62:	00767713          	andi	a4,a2,7
1c00ba66:	03070713          	addi	a4,a4,48
1c00ba6a:	85b2                	mv	a1,a2
1c00ba6c:	00e98023          	sb	a4,0(s3)
1c00ba70:	87ce                	mv	a5,s3
1c00ba72:	820d                	srli	a2,a2,0x3
1c00ba74:	0985                	addi	s3,s3,1
1c00ba76:	feb866e3          	bltu	a6,a1,1c00ba62 <pos_libc_prf+0x812>
1c00ba7a:	40d98633          	sub	a2,s3,a3
1c00ba7e:	01565c63          	bge	a2,s5,1c00ba96 <pos_libc_prf+0x846>
1c00ba82:	03000593          	li	a1,48
1c00ba86:	87ce                	mv	a5,s3
1c00ba88:	0985                	addi	s3,s3,1
1c00ba8a:	40d98733          	sub	a4,s3,a3
1c00ba8e:	feb98fa3          	sb	a1,-1(s3)
1c00ba92:	ff574ae3          	blt	a4,s5,1c00ba86 <pos_libc_prf+0x836>
1c00ba96:	00098023          	sb	zero,0(s3)
1c00ba9a:	00f6fe63          	bgeu	a3,a5,1c00bab6 <pos_libc_prf+0x866>
1c00ba9e:	0006c603          	lbu	a2,0(a3)
1c00baa2:	0007c703          	lbu	a4,0(a5)
1c00baa6:	0685                	addi	a3,a3,1
1c00baa8:	00c78023          	sb	a2,0(a5)
1c00baac:	fee68fa3          	sb	a4,-1(a3)
1c00bab0:	17fd                	addi	a5,a5,-1
1c00bab2:	fef6e6e3          	bltu	a3,a5,1c00ba9e <pos_libc_prf+0x84e>
1c00bab6:	1058                	addi	a4,sp,36
1c00bab8:	57fd                	li	a5,-1
1c00baba:	40e989b3          	sub	s3,s3,a4
1c00babe:	36fa8763          	beq	s5,a5,1c00be2c <pos_libc_prf+0xbdc>
1c00bac2:	0c800793          	li	a5,200
1c00bac6:	cd37c6e3          	blt	a5,s3,1c00b792 <pos_libc_prf+0x542>
1c00baca:	ce02                	sw	zero,28(sp)
1c00bacc:	bd9d                	j	1c00b942 <pos_libc_prf+0x6f2>
1c00bace:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00bad2:	02a00793          	li	a5,42
1c00bad6:	00160693          	addi	a3,a2,1
1c00bada:	14f59b63          	bne	a1,a5,1c00bc30 <pos_libc_prf+0x9e0>
1c00bade:	47b2                	lw	a5,12(sp)
1c00bae0:	00164d83          	lbu	s11,1(a2)
1c00bae4:	0609                	addi	a2,a2,2
1c00bae6:	0007aa83          	lw	s5,0(a5)
1c00baea:	0791                	addi	a5,a5,4
1c00baec:	c63e                	sw	a5,12(sp)
1c00baee:	0c800793          	li	a5,200
1c00baf2:	8957dde3          	bge	a5,s5,1c00b38c <pos_libc_prf+0x13c>
1c00baf6:	5afd                	li	s5,-1
1c00baf8:	b851                	j	1c00b38c <pos_libc_prf+0x13c>
1c00bafa:	c65a                	sw	s6,12(sp)
1c00bafc:	4a05                	li	s4,1
1c00bafe:	02410913          	addi	s2,sp,36
1c00bb02:	59fd                	li	s3,-1
1c00bb04:	41240ab3          	sub	s5,s0,s2
1c00bb08:	9a4a                	add	s4,s4,s2
1c00bb0a:	a029                	j	1c00bb14 <pos_libc_prf+0x8c4>
1c00bb0c:	012a8433          	add	s0,s5,s2
1c00bb10:	fb490963          	beq	s2,s4,1c00b2c2 <pos_libc_prf+0x72>
1c00bb14:	00094503          	lbu	a0,0(s2)
1c00bb18:	85a6                	mv	a1,s1
1c00bb1a:	0905                	addi	s2,s2,1
1c00bb1c:	9c82                	jalr	s9
1c00bb1e:	ff3517e3          	bne	a0,s3,1c00bb0c <pos_libc_prf+0x8bc>
1c00bb22:	547d                	li	s0,-1
1c00bb24:	fa6ff06f          	j	1c00b2ca <pos_libc_prf+0x7a>
1c00bb28:	77e1                	lui	a5,0xffff8
1c00bb2a:	8307c793          	xori	a5,a5,-2000
1c00bb2e:	02f11223          	sh	a5,36(sp)
1c00bb32:	02610693          	addi	a3,sp,38
1c00bb36:	bb95                	j	1c00b8aa <pos_libc_prf+0x65a>
1c00bb38:	1054                	addi	a3,sp,36
1c00bb3a:	b715                	j	1c00ba5e <pos_libc_prf+0x80e>
1c00bb3c:	5c605a63          	blez	t1,1c00c110 <pos_libc_prf+0xec0>
1c00bb40:	006f09b3          	add	s3,t5,t1
1c00bb44:	4541                	li	a0,16
1c00bb46:	03000e13          	li	t3,48
1c00bb4a:	00279713          	slli	a4,a5,0x2
1c00bb4e:	01e7d593          	srli	a1,a5,0x1e
1c00bb52:	00289693          	slli	a3,a7,0x2
1c00bb56:	00f70333          	add	t1,a4,a5
1c00bb5a:	8ecd                	or	a3,a3,a1
1c00bb5c:	96c6                	add	a3,a3,a7
1c00bb5e:	00e33733          	sltu	a4,t1,a4
1c00bb62:	9736                	add	a4,a4,a3
1c00bb64:	0706                	slli	a4,a4,0x1
1c00bb66:	01f35693          	srli	a3,t1,0x1f
1c00bb6a:	8f55                	or	a4,a4,a3
1c00bb6c:	01c75693          	srli	a3,a4,0x1c
1c00bb70:	03068693          	addi	a3,a3,48
1c00bb74:	4ea05463          	blez	a0,1c00c05c <pos_libc_prf+0xe0c>
1c00bb78:	fed80fa3          	sb	a3,-1(a6)
1c00bb7c:	46d2                	lw	a3,20(sp)
1c00bb7e:	157d                	addi	a0,a0,-1
1c00bb80:	00131793          	slli	a5,t1,0x1
1c00bb84:	00d778b3          	and	a7,a4,a3
1c00bb88:	4d099e63          	bne	s3,a6,1c00c064 <pos_libc_prf+0xe14>
1c00bb8c:	4301                	li	t1,0
1c00bb8e:	4772                	lw	a4,28(sp)
1c00bb90:	01576bb3          	or	s7,a4,s5
1c00bb94:	060b8863          	beqz	s7,1c00bc04 <pos_libc_prf+0x9b4>
1c00bb98:	02e00693          	li	a3,46
1c00bb9c:	00d98023          	sb	a3,0(s3)
1c00bba0:	00198e93          	addi	t4,s3,1
1c00bba4:	5c0a8763          	beqz	s5,1c00c172 <pos_libc_prf+0xf22>
1c00bba8:	001a8693          	addi	a3,s5,1
1c00bbac:	99b6                	add	s3,s3,a3
1c00bbae:	8876                	mv	a6,t4
1c00bbb0:	03000f13          	li	t5,48
1c00bbb4:	0805                	addi	a6,a6,1
1c00bbb6:	4a031963          	bnez	t1,1c00c068 <pos_libc_prf+0xe18>
1c00bbba:	00279713          	slli	a4,a5,0x2
1c00bbbe:	01e7d593          	srli	a1,a5,0x1e
1c00bbc2:	00289693          	slli	a3,a7,0x2
1c00bbc6:	00f70e33          	add	t3,a4,a5
1c00bbca:	8ecd                	or	a3,a3,a1
1c00bbcc:	96c6                	add	a3,a3,a7
1c00bbce:	00ee3733          	sltu	a4,t3,a4
1c00bbd2:	9736                	add	a4,a4,a3
1c00bbd4:	0706                	slli	a4,a4,0x1
1c00bbd6:	01fe5693          	srli	a3,t3,0x1f
1c00bbda:	8f55                	or	a4,a4,a3
1c00bbdc:	01c75593          	srli	a1,a4,0x1c
1c00bbe0:	03000693          	li	a3,48
1c00bbe4:	00a05a63          	blez	a0,1c00bbf8 <pos_libc_prf+0x9a8>
1c00bbe8:	03058693          	addi	a3,a1,48
1c00bbec:	45d2                	lw	a1,20(sp)
1c00bbee:	157d                	addi	a0,a0,-1
1c00bbf0:	001e1793          	slli	a5,t3,0x1
1c00bbf4:	00b778b3          	and	a7,a4,a1
1c00bbf8:	fed80fa3          	sb	a3,-1(a6)
1c00bbfc:	fb099ce3          	bne	s3,a6,1c00bbb4 <pos_libc_prf+0x964>
1c00bc00:	015e89b3          	add	s3,t4,s5
1c00bc04:	b0060ee3          	beqz	a2,1c00b720 <pos_libc_prf+0x4d0>
1c00bc08:	03000613          	li	a2,48
1c00bc0c:	fff9c783          	lbu	a5,-1(s3)
1c00bc10:	86ce                	mv	a3,s3
1c00bc12:	19fd                	addi	s3,s3,-1
1c00bc14:	fec78ce3          	beq	a5,a2,1c00bc0c <pos_libc_prf+0x9bc>
1c00bc18:	02e00613          	li	a2,46
1c00bc1c:	aec78ce3          	beq	a5,a2,1c00b714 <pos_libc_prf+0x4c4>
1c00bc20:	89b6                	mv	s3,a3
1c00bc22:	bccd                	j	1c00b714 <pos_libc_prf+0x4c4>
1c00bc24:	fff88fa3          	sb	t6,-1(a7)
1c00bc28:	ab1f11e3          	bne	t5,a7,1c00b6ca <pos_libc_prf+0x47a>
1c00bc2c:	99d6                	add	s3,s3,s5
1c00bc2e:	b4cd                	j	1c00b710 <pos_libc_prf+0x4c0>
1c00bc30:	fd058713          	addi	a4,a1,-48
1c00bc34:	47a5                	li	a5,9
1c00bc36:	8dae                	mv	s11,a1
1c00bc38:	4a81                	li	s5,0
1c00bc3a:	4525                	li	a0,9
1c00bc3c:	00e7f463          	bgeu	a5,a4,1c00bc44 <pos_libc_prf+0x9f4>
1c00bc40:	a199                	j	1c00c086 <pos_libc_prf+0xe36>
1c00bc42:	0685                	addi	a3,a3,1
1c00bc44:	002a9793          	slli	a5,s5,0x2
1c00bc48:	97d6                	add	a5,a5,s5
1c00bc4a:	0786                	slli	a5,a5,0x1
1c00bc4c:	97ee                	add	a5,a5,s11
1c00bc4e:	0006cd83          	lbu	s11,0(a3)
1c00bc52:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00bc56:	8732                	mv	a4,a2
1c00bc58:	fd0d8793          	addi	a5,s11,-48
1c00bc5c:	8636                	mv	a2,a3
1c00bc5e:	fef572e3          	bgeu	a0,a5,1c00bc42 <pos_libc_prf+0x9f2>
1c00bc62:	00270613          	addi	a2,a4,2
1c00bc66:	b561                	j	1c00baee <pos_libc_prf+0x89e>
1c00bc68:	47b2                	lw	a5,12(sp)
1c00bc6a:	0007a303          	lw	t1,0(a5)
1c00bc6e:	00478b13          	addi	s6,a5,4
1c00bc72:	2e034263          	bltz	t1,1c00bf56 <pos_libc_prf+0xd06>
1c00bc76:	47a2                	lw	a5,8(sp)
1c00bc78:	861a                	mv	a2,t1
1c00bc7a:	3c078663          	beqz	a5,1c00c046 <pos_libc_prf+0xdf6>
1c00bc7e:	02b00793          	li	a5,43
1c00bc82:	02f10223          	sb	a5,36(sp)
1c00bc86:	02510693          	addi	a3,sp,37
1c00bc8a:	89b6                	mv	s3,a3
1c00bc8c:	4529                	li	a0,10
1c00bc8e:	48a5                	li	a7,9
1c00bc90:	02a67733          	remu	a4,a2,a0
1c00bc94:	87ce                	mv	a5,s3
1c00bc96:	0985                	addi	s3,s3,1
1c00bc98:	85b2                	mv	a1,a2
1c00bc9a:	03070713          	addi	a4,a4,48
1c00bc9e:	fee98fa3          	sb	a4,-1(s3)
1c00bca2:	02a65633          	divu	a2,a2,a0
1c00bca6:	feb8e5e3          	bltu	a7,a1,1c00bc90 <pos_libc_prf+0xa40>
1c00bcaa:	40d98633          	sub	a2,s3,a3
1c00bcae:	01565c63          	bge	a2,s5,1c00bcc6 <pos_libc_prf+0xa76>
1c00bcb2:	03000593          	li	a1,48
1c00bcb6:	87ce                	mv	a5,s3
1c00bcb8:	0985                	addi	s3,s3,1
1c00bcba:	40d98733          	sub	a4,s3,a3
1c00bcbe:	feb98fa3          	sb	a1,-1(s3)
1c00bcc2:	ff574ae3          	blt	a4,s5,1c00bcb6 <pos_libc_prf+0xa66>
1c00bcc6:	00098023          	sb	zero,0(s3)
1c00bcca:	00f6fe63          	bgeu	a3,a5,1c00bce6 <pos_libc_prf+0xa96>
1c00bcce:	0006c603          	lbu	a2,0(a3)
1c00bcd2:	0007c703          	lbu	a4,0(a5)
1c00bcd6:	0685                	addi	a3,a3,1
1c00bcd8:	00c78023          	sb	a2,0(a5)
1c00bcdc:	fee68fa3          	sb	a4,-1(a3)
1c00bce0:	17fd                	addi	a5,a5,-1
1c00bce2:	fef6e6e3          	bltu	a3,a5,1c00bcce <pos_libc_prf+0xa7e>
1c00bce6:	4712                	lw	a4,4(sp)
1c00bce8:	47a2                	lw	a5,8(sp)
1c00bcea:	8fd9                	or	a5,a5,a4
1c00bcec:	ce3e                	sw	a5,28(sp)
1c00bcee:	1058                	addi	a4,sp,36
1c00bcf0:	40e989b3          	sub	s3,s3,a4
1c00bcf4:	c40790e3          	bnez	a5,1c00b934 <pos_libc_prf+0x6e4>
1c00bcf8:	01f35793          	srli	a5,t1,0x1f
1c00bcfc:	ce3e                	sw	a5,28(sp)
1c00bcfe:	b91d                	j	1c00b934 <pos_libc_prf+0x6e4>
1c00bd00:	47b2                	lw	a5,12(sp)
1c00bd02:	02610613          	addi	a2,sp,38
1c00bd06:	4ea5                	li	t4,9
1c00bd08:	438c                	lw	a1,0(a5)
1c00bd0a:	00478b13          	addi	s6,a5,4
1c00bd0e:	77e1                	lui	a5,0xffff8
1c00bd10:	8307c793          	xori	a5,a5,-2000
1c00bd14:	02f11223          	sh	a5,36(sp)
1c00bd18:	4e3d                	li	t3,15
1c00bd1a:	87b2                	mv	a5,a2
1c00bd1c:	a039                	j	1c00bd2a <pos_libc_prf+0xada>
1c00bd1e:	ff168fa3          	sb	a7,-1(a3)
1c00bd22:	02be7663          	bgeu	t3,a1,1c00bd4e <pos_libc_prf+0xafe>
1c00bd26:	85c2                	mv	a1,a6
1c00bd28:	87b6                	mv	a5,a3
1c00bd2a:	00f5f513          	andi	a0,a1,15
1c00bd2e:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00bd32:	05750893          	addi	a7,a0,87
1c00bd36:	03050713          	addi	a4,a0,48
1c00bd3a:	0045d813          	srli	a6,a1,0x4
1c00bd3e:	feaee0e3          	bltu	t4,a0,1c00bd1e <pos_libc_prf+0xace>
1c00bd42:	00e78023          	sb	a4,0(a5)
1c00bd46:	00178693          	addi	a3,a5,1
1c00bd4a:	fcbe6ee3          	bltu	t3,a1,1c00bd26 <pos_libc_prf+0xad6>
1c00bd4e:	40c689b3          	sub	s3,a3,a2
1c00bd52:	459d                	li	a1,7
1c00bd54:	0135cc63          	blt	a1,s3,1c00bd6c <pos_libc_prf+0xb1c>
1c00bd58:	03000513          	li	a0,48
1c00bd5c:	87b6                	mv	a5,a3
1c00bd5e:	0685                	addi	a3,a3,1
1c00bd60:	40c689b3          	sub	s3,a3,a2
1c00bd64:	fea68fa3          	sb	a0,-1(a3)
1c00bd68:	ff35dae3          	bge	a1,s3,1c00bd5c <pos_libc_prf+0xb0c>
1c00bd6c:	00068023          	sb	zero,0(a3)
1c00bd70:	86b2                	mv	a3,a2
1c00bd72:	00f67e63          	bgeu	a2,a5,1c00bd8e <pos_libc_prf+0xb3e>
1c00bd76:	0006c603          	lbu	a2,0(a3)
1c00bd7a:	0007c703          	lbu	a4,0(a5)
1c00bd7e:	0685                	addi	a3,a3,1
1c00bd80:	00c78023          	sb	a2,0(a5)
1c00bd84:	fee68fa3          	sb	a4,-1(a3)
1c00bd88:	17fd                	addi	a5,a5,-1
1c00bd8a:	fef6e6e3          	bltu	a3,a5,1c00bd76 <pos_libc_prf+0xb26>
1c00bd8e:	57fd                	li	a5,-1
1c00bd90:	0989                	addi	s3,s3,2
1c00bd92:	22fa8663          	beq	s5,a5,1c00bfbe <pos_libc_prf+0xd6e>
1c00bd96:	0c800793          	li	a5,200
1c00bd9a:	9f37cce3          	blt	a5,s3,1c00b792 <pos_libc_prf+0x542>
1c00bd9e:	02000913          	li	s2,32
1c00bda2:	0b49d863          	bge	s3,s4,1c00be52 <pos_libc_prf+0xc02>
1c00bda6:	00198613          	addi	a2,s3,1
1c00bdaa:	ce02                	sw	zero,28(sp)
1c00bdac:	bec1                	j	1c00b97c <pos_libc_prf+0x72c>
1c00bdae:	4732                	lw	a4,12(sp)
1c00bdb0:	431c                	lw	a5,0(a4)
1c00bdb2:	0711                	addi	a4,a4,4
1c00bdb4:	c63a                	sw	a4,12(sp)
1c00bdb6:	c380                	sw	s0,0(a5)
1c00bdb8:	d0aff06f          	j	1c00b2c2 <pos_libc_prf+0x72>
1c00bdbc:	47b2                	lw	a5,12(sp)
1c00bdbe:	4529                	li	a0,10
1c00bdc0:	48a5                	li	a7,9
1c00bdc2:	4390                	lw	a2,0(a5)
1c00bdc4:	00478b13          	addi	s6,a5,4
1c00bdc8:	105c                	addi	a5,sp,36
1c00bdca:	02a67733          	remu	a4,a2,a0
1c00bdce:	86be                	mv	a3,a5
1c00bdd0:	0785                	addi	a5,a5,1
1c00bdd2:	85b2                	mv	a1,a2
1c00bdd4:	03070713          	addi	a4,a4,48
1c00bdd8:	fee78fa3          	sb	a4,-1(a5)
1c00bddc:	02a65633          	divu	a2,a2,a0
1c00bde0:	feb8e5e3          	bltu	a7,a1,1c00bdca <pos_libc_prf+0xb7a>
1c00bde4:	1058                	addi	a4,sp,36
1c00bde6:	40e789b3          	sub	s3,a5,a4
1c00bdea:	0159dd63          	bge	s3,s5,1c00be04 <pos_libc_prf+0xbb4>
1c00bdee:	03000613          	li	a2,48
1c00bdf2:	86be                	mv	a3,a5
1c00bdf4:	1058                	addi	a4,sp,36
1c00bdf6:	0785                	addi	a5,a5,1
1c00bdf8:	40e789b3          	sub	s3,a5,a4
1c00bdfc:	fec78fa3          	sb	a2,-1(a5)
1c00be00:	ff59c9e3          	blt	s3,s5,1c00bdf2 <pos_libc_prf+0xba2>
1c00be04:	00078023          	sb	zero,0(a5)
1c00be08:	105c                	addi	a5,sp,36
1c00be0a:	00d7fe63          	bgeu	a5,a3,1c00be26 <pos_libc_prf+0xbd6>
1c00be0e:	0007c603          	lbu	a2,0(a5)
1c00be12:	0006c703          	lbu	a4,0(a3)
1c00be16:	0785                	addi	a5,a5,1
1c00be18:	00c68023          	sb	a2,0(a3)
1c00be1c:	fee78fa3          	sb	a4,-1(a5)
1c00be20:	16fd                	addi	a3,a3,-1
1c00be22:	fed7e6e3          	bltu	a5,a3,1c00be0e <pos_libc_prf+0xbbe>
1c00be26:	57fd                	li	a5,-1
1c00be28:	c8fa9de3          	bne	s5,a5,1c00bac2 <pos_libc_prf+0x872>
1c00be2c:	0c800793          	li	a5,200
1c00be30:	9737c1e3          	blt	a5,s3,1c00b792 <pos_libc_prf+0x542>
1c00be34:	ce02                	sw	zero,28(sp)
1c00be36:	be01                	j	1c00b946 <pos_libc_prf+0x6f6>
1c00be38:	85a6                	mv	a1,s1
1c00be3a:	02500513          	li	a0,37
1c00be3e:	9c82                	jalr	s9
1c00be40:	57fd                	li	a5,-1
1c00be42:	c6f51f63          	bne	a0,a5,1c00b2c0 <pos_libc_prf+0x70>
1c00be46:	547d                	li	s0,-1
1c00be48:	c82ff06f          	j	1c00b2ca <pos_libc_prf+0x7a>
1c00be4c:	4401                	li	s0,0
1c00be4e:	c7cff06f          	j	1c00b2ca <pos_libc_prf+0x7a>
1c00be52:	8a4e                	mv	s4,s3
1c00be54:	c65a                	sw	s6,12(sp)
1c00be56:	b165                	j	1c00bafe <pos_libc_prf+0x8ae>
1c00be58:	0c800793          	li	a5,200
1c00be5c:	9337cbe3          	blt	a5,s3,1c00b792 <pos_libc_prf+0x542>
1c00be60:	4785                	li	a5,1
1c00be62:	ce3e                	sw	a5,28(sp)
1c00be64:	b4cd                	j	1c00b946 <pos_libc_prf+0x6f6>
1c00be66:	104c                	addi	a1,sp,36
1c00be68:	413a09b3          	sub	s3,s4,s3
1c00be6c:	01358533          	add	a0,a1,s3
1c00be70:	9faff0ef          	jal	ra,1c00b06a <memmove>
1c00be74:	02000793          	li	a5,32
1c00be78:	24f90863          	beq	s2,a5,1c00c0c8 <pos_libc_prf+0xe78>
1c00be7c:	47f2                	lw	a5,28(sp)
1c00be7e:	99be                	add	s3,s3,a5
1c00be80:	47f2                	lw	a5,28(sp)
1c00be82:	b737d7e3          	bge	a5,s3,1c00b9f0 <pos_libc_prf+0x7a0>
1c00be86:	4772                	lw	a4,28(sp)
1c00be88:	4789                	li	a5,2
1c00be8a:	40e988b3          	sub	a7,s3,a4
1c00be8e:	fff88693          	addi	a3,a7,-1
1c00be92:	06d7f063          	bgeu	a5,a3,1c00bef2 <pos_libc_prf+0xca2>
1c00be96:	47e2                	lw	a5,24(sp)
1c00be98:	00891613          	slli	a2,s2,0x8
1c00be9c:	ffc8f593          	andi	a1,a7,-4
1c00bea0:	00f976b3          	and	a3,s2,a5
1c00bea4:	8ed1                	or	a3,a3,a2
1c00bea6:	01091793          	slli	a5,s2,0x10
1c00beaa:	8edd                	or	a3,a3,a5
1c00beac:	01891613          	slli	a2,s2,0x18
1c00beb0:	8e55                	or	a2,a2,a3
1c00beb2:	105c                	addi	a5,sp,36
1c00beb4:	00865813          	srli	a6,a2,0x8
1c00beb8:	01065513          	srli	a0,a2,0x10
1c00bebc:	97ba                	add	a5,a5,a4
1c00bebe:	95be                	add	a1,a1,a5
1c00bec0:	0306f693          	andi	a3,a3,48
1c00bec4:	8261                	srli	a2,a2,0x18
1c00bec6:	0ff87813          	andi	a6,a6,255
1c00beca:	0ff57513          	andi	a0,a0,255
1c00bece:	00d78023          	sb	a3,0(a5)
1c00bed2:	010780a3          	sb	a6,1(a5)
1c00bed6:	00a78123          	sb	a0,2(a5)
1c00beda:	00c781a3          	sb	a2,3(a5)
1c00bede:	0791                	addi	a5,a5,4
1c00bee0:	fef597e3          	bne	a1,a5,1c00bece <pos_libc_prf+0xc7e>
1c00bee4:	4772                	lw	a4,28(sp)
1c00bee6:	ffc8f793          	andi	a5,a7,-4
1c00beea:	973e                	add	a4,a4,a5
1c00beec:	ce3a                	sw	a4,28(sp)
1c00beee:	b11781e3          	beq	a5,a7,1c00b9f0 <pos_libc_prf+0x7a0>
1c00bef2:	4772                	lw	a4,28(sp)
1c00bef4:	199c                	addi	a5,sp,240
1c00bef6:	97ba                	add	a5,a5,a4
1c00bef8:	f3278a23          	sb	s2,-204(a5)
1c00befc:	00170793          	addi	a5,a4,1
1c00bf00:	af37d8e3          	bge	a5,s3,1c00b9f0 <pos_libc_prf+0x7a0>
1c00bf04:	1994                	addi	a3,sp,240
1c00bf06:	97b6                	add	a5,a5,a3
1c00bf08:	f3278a23          	sb	s2,-204(a5)
1c00bf0c:	00270b93          	addi	s7,a4,2
1c00bf10:	af3bd0e3          	bge	s7,s3,1c00b9f0 <pos_libc_prf+0x7a0>
1c00bf14:	9bb6                	add	s7,s7,a3
1c00bf16:	f32b8a23          	sb	s2,-204(s7)
1c00bf1a:	c65a                	sw	s6,12(sp)
1c00bf1c:	bcd9                	j	1c00b9f2 <pos_libc_prf+0x7a2>
1c00bf1e:	01b98023          	sb	s11,0(s3)
1c00bf22:	02b00613          	li	a2,43
1c00bf26:	00035663          	bgez	t1,1c00bf32 <pos_libc_prf+0xce2>
1c00bf2a:	40600333          	neg	t1,t1
1c00bf2e:	02d00613          	li	a2,45
1c00bf32:	47a9                	li	a5,10
1c00bf34:	02f346b3          	div	a3,t1,a5
1c00bf38:	00c980a3          	sb	a2,1(s3)
1c00bf3c:	0991                	addi	s3,s3,4
1c00bf3e:	02f367b3          	rem	a5,t1,a5
1c00bf42:	03068693          	addi	a3,a3,48
1c00bf46:	fed98f23          	sb	a3,-2(s3)
1c00bf4a:	03078793          	addi	a5,a5,48
1c00bf4e:	fef98fa3          	sb	a5,-1(s3)
1c00bf52:	fceff06f          	j	1c00b720 <pos_libc_prf+0x4d0>
1c00bf56:	02d00793          	li	a5,45
1c00bf5a:	02f10223          	sb	a5,36(sp)
1c00bf5e:	800007b7          	lui	a5,0x80000
1c00bf62:	14f30e63          	beq	t1,a5,1c00c0be <pos_libc_prf+0xe6e>
1c00bf66:	40600633          	neg	a2,t1
1c00bf6a:	02510693          	addi	a3,sp,37
1c00bf6e:	bb31                	j	1c00bc8a <pos_libc_prf+0xa3a>
1c00bf70:	4722                	lw	a4,8(sp)
1c00bf72:	10070d63          	beqz	a4,1c00c08c <pos_libc_prf+0xe3c>
1c00bf76:	02b00693          	li	a3,43
1c00bf7a:	02d10223          	sb	a3,36(sp)
1c00bf7e:	02510f13          	addi	t5,sp,37
1c00bf82:	4301                	li	t1,0
1c00bf84:	4801                	li	a6,0
1c00bf86:	d9cff06f          	j	1c00b522 <pos_libc_prf+0x2d2>
1c00bf8a:	02414783          	lbu	a5,36(sp)
1c00bf8e:	98078ce3          	beqz	a5,1c00b926 <pos_libc_prf+0x6d6>
1c00bf92:	1054                	addi	a3,sp,36
1c00bf94:	45e5                	li	a1,25
1c00bf96:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00bf9a:	f9f78793          	addi	a5,a5,-97
1c00bf9e:	0ff7f793          	andi	a5,a5,255
1c00bfa2:	00f5e963          	bltu	a1,a5,1c00bfb4 <pos_libc_prf+0xd64>
1c00bfa6:	0016c783          	lbu	a5,1(a3)
1c00bfaa:	00e68023          	sb	a4,0(a3)
1c00bfae:	0685                	addi	a3,a3,1
1c00bfb0:	f3fd                	bnez	a5,1c00bf96 <pos_libc_prf+0xd46>
1c00bfb2:	ba95                	j	1c00b926 <pos_libc_prf+0x6d6>
1c00bfb4:	0016c783          	lbu	a5,1(a3)
1c00bfb8:	0685                	addi	a3,a3,1
1c00bfba:	fff1                	bnez	a5,1c00bf96 <pos_libc_prf+0xd46>
1c00bfbc:	b2ad                	j	1c00b926 <pos_libc_prf+0x6d6>
1c00bfbe:	0c800793          	li	a5,200
1c00bfc2:	df37d0e3          	bge	a5,s3,1c00bda2 <pos_libc_prf+0xb52>
1c00bfc6:	547d                	li	s0,-1
1c00bfc8:	b02ff06f          	j	1c00b2ca <pos_libc_prf+0x7a>
1c00bfcc:	864e                	mv	a2,s3
1c00bfce:	1048                	addi	a0,sp,36
1c00bfd0:	fc5fe0ef          	jal	ra,1c00af94 <memcpy>
1c00bfd4:	b3f9                	j	1c00bda2 <pos_libc_prf+0xb52>
1c00bfd6:	47f2                	lw	a5,28(sp)
1c00bfd8:	4601                	li	a2,0
1c00bfda:	e399                	bnez	a5,1c00bfe0 <pos_libc_prf+0xd90>
1c00bfdc:	01503633          	snez	a2,s5
1c00bfe0:	57f5                	li	a5,-3
1c00bfe2:	001a8813          	addi	a6,s5,1
1c00bfe6:	00f34463          	blt	t1,a5,1c00bfee <pos_libc_prf+0xd9e>
1c00bfea:	04685163          	bge	a6,t1,1c00c02c <pos_libc_prf+0xddc>
1c00bfee:	47c1                	li	a5,16
1c00bff0:	0107d363          	bge	a5,a6,1c00bff6 <pos_libc_prf+0xda6>
1c00bff4:	4841                	li	a6,16
1c00bff6:	06700793          	li	a5,103
1c00bffa:	187d                	addi	a6,a6,-1
1c00bffc:	02fd8363          	beq	s11,a5,1c00c022 <pos_libc_prf+0xdd2>
1c00c000:	04500d93          	li	s11,69
1c00c004:	d70ff06f          	j	1c00b574 <pos_libc_prf+0x324>
1c00c008:	4a99                	li	s5,6
1c00c00a:	d4fd9563          	bne	s11,a5,1c00b554 <pos_libc_prf+0x304>
1c00c00e:	4772                	lw	a4,28(sp)
1c00c010:	4605                	li	a2,1
1c00c012:	57f5                	li	a5,-3
1c00c014:	8e19                	sub	a2,a2,a4
1c00c016:	00f34563          	blt	t1,a5,1c00c020 <pos_libc_prf+0xdd0>
1c00c01a:	479d                	li	a5,7
1c00c01c:	0067d863          	bge	a5,t1,1c00c02c <pos_libc_prf+0xddc>
1c00c020:	4819                	li	a6,6
1c00c022:	06500d93          	li	s11,101
1c00c026:	d4eff06f          	j	1c00b574 <pos_libc_prf+0x324>
1c00c02a:	4601                	li	a2,0
1c00c02c:	006a8833          	add	a6,s5,t1
1c00c030:	0b005b63          	blez	a6,1c00c0e6 <pos_libc_prf+0xe96>
1c00c034:	47c1                	li	a5,16
1c00c036:	0107d363          	bge	a5,a6,1c00c03c <pos_libc_prf+0xdec>
1c00c03a:	4841                	li	a6,16
1c00c03c:	187d                	addi	a6,a6,-1
1c00c03e:	06600d93          	li	s11,102
1c00c042:	d32ff06f          	j	1c00b574 <pos_libc_prf+0x324>
1c00c046:	4792                	lw	a5,4(sp)
1c00c048:	1054                	addi	a3,sp,36
1c00c04a:	c40780e3          	beqz	a5,1c00bc8a <pos_libc_prf+0xa3a>
1c00c04e:	02000793          	li	a5,32
1c00c052:	02f10223          	sb	a5,36(sp)
1c00c056:	02510693          	addi	a3,sp,37
1c00c05a:	b905                	j	1c00bc8a <pos_libc_prf+0xa3a>
1c00c05c:	ffc80fa3          	sb	t3,-1(a6)
1c00c060:	b30986e3          	beq	s3,a6,1c00bb8c <pos_libc_prf+0x93c>
1c00c064:	0805                	addi	a6,a6,1
1c00c066:	b4d5                	j	1c00bb4a <pos_libc_prf+0x8fa>
1c00c068:	ffe80fa3          	sb	t5,-1(a6)
1c00c06c:	0305                	addi	t1,t1,1
1c00c06e:	b679                	j	1c00bbfc <pos_libc_prf+0x9ac>
1c00c070:	020102a3          	sb	zero,37(sp)
1c00c074:	57fd                	li	a5,-1
1c00c076:	0cfa8263          	beq	s5,a5,1c00c13a <pos_libc_prf+0xeea>
1c00c07a:	4785                	li	a5,1
1c00c07c:	0b47c063          	blt	a5,s4,1c00c11c <pos_libc_prf+0xecc>
1c00c080:	4a72                	lw	s4,28(sp)
1c00c082:	c65a                	sw	s6,12(sp)
1c00c084:	bcad                	j	1c00bafe <pos_libc_prf+0x8ae>
1c00c086:	8636                	mv	a2,a3
1c00c088:	b04ff06f          	j	1c00b38c <pos_libc_prf+0x13c>
1c00c08c:	4712                	lw	a4,4(sp)
1c00c08e:	c77d                	beqz	a4,1c00c17c <pos_libc_prf+0xf2c>
1c00c090:	02000693          	li	a3,32
1c00c094:	02d10223          	sb	a3,36(sp)
1c00c098:	4301                	li	t1,0
1c00c09a:	4801                	li	a6,0
1c00c09c:	02510f13          	addi	t5,sp,37
1c00c0a0:	c82ff06f          	j	1c00b522 <pos_libc_prf+0x2d2>
1c00c0a4:	02d00693          	li	a3,45
1c00c0a8:	02d10223          	sb	a3,36(sp)
1c00c0ac:	02510f13          	addi	t5,sp,37
1c00c0b0:	b9cff06f          	j	1c00b44c <pos_libc_prf+0x1fc>
1c00c0b4:	0c800613          	li	a2,200
1c00c0b8:	960ad6e3          	bgez	s5,1c00ba24 <pos_libc_prf+0x7d4>
1c00c0bc:	bf09                	j	1c00bfce <pos_libc_prf+0xd7e>
1c00c0be:	80000637          	lui	a2,0x80000
1c00c0c2:	02510693          	addi	a3,sp,37
1c00c0c6:	b6d1                	j	1c00bc8a <pos_libc_prf+0xa3a>
1c00c0c8:	ce02                	sw	zero,28(sp)
1c00c0ca:	bb5d                	j	1c00be80 <pos_libc_prf+0xc30>
1c00c0cc:	4712                	lw	a4,4(sp)
1c00c0ce:	02410f13          	addi	t5,sp,36
1c00c0d2:	b6070d63          	beqz	a4,1c00b44c <pos_libc_prf+0x1fc>
1c00c0d6:	02000693          	li	a3,32
1c00c0da:	02d10223          	sb	a3,36(sp)
1c00c0de:	02510f13          	addi	t5,sp,37
1c00c0e2:	b6aff06f          	j	1c00b44c <pos_libc_prf+0x1fc>
1c00c0e6:	06600d93          	li	s11,102
1c00c0ea:	4781                	li	a5,0
1c00c0ec:	080006b7          	lui	a3,0x8000
1c00c0f0:	ce8ff06f          	j	1c00b5d8 <pos_libc_prf+0x388>
1c00c0f4:	06b6e363          	bltu	a3,a1,1c00c15a <pos_libc_prf+0xf0a>
1c00c0f8:	04e00693          	li	a3,78
1c00c0fc:	04100613          	li	a2,65
1c00c100:	00d78023          	sb	a3,0(a5)
1c00c104:	00c780a3          	sb	a2,1(a5)
1c00c108:	00d78123          	sb	a3,2(a5)
1c00c10c:	f44ff06f          	j	1c00b850 <pos_libc_prf+0x600>
1c00c110:	03000693          	li	a3,48
1c00c114:	00df0023          	sb	a3,0(t5)
1c00c118:	4541                	li	a0,16
1c00c11a:	bc95                	j	1c00bb8e <pos_libc_prf+0x93e>
1c00c11c:	4982                	lw	s3,0(sp)
1c00c11e:	860992e3          	bnez	s3,1c00b982 <pos_libc_prf+0x732>
1c00c122:	104c                	addi	a1,sp,36
1c00c124:	fffa0993          	addi	s3,s4,-1
1c00c128:	4609                	li	a2,2
1c00c12a:	01358533          	add	a0,a1,s3
1c00c12e:	f3dfe0ef          	jal	ra,1c00b06a <memmove>
1c00c132:	02000913          	li	s2,32
1c00c136:	ce02                	sw	zero,28(sp)
1c00c138:	b3b9                	j	1c00be86 <pos_libc_prf+0xc36>
1c00c13a:	49f2                	lw	s3,28(sp)
1c00c13c:	b19d                	j	1c00bda2 <pos_libc_prf+0xb52>
1c00c13e:	06900693          	li	a3,105
1c00c142:	00d78023          	sb	a3,0(a5)
1c00c146:	06e00693          	li	a3,110
1c00c14a:	00d780a3          	sb	a3,1(a5)
1c00c14e:	06600693          	li	a3,102
1c00c152:	00d78123          	sb	a3,2(a5)
1c00c156:	efaff06f          	j	1c00b850 <pos_libc_prf+0x600>
1c00c15a:	06e00693          	li	a3,110
1c00c15e:	06100613          	li	a2,97
1c00c162:	00d78023          	sb	a3,0(a5)
1c00c166:	00c780a3          	sb	a2,1(a5)
1c00c16a:	00d78123          	sb	a3,2(a5)
1c00c16e:	ee2ff06f          	j	1c00b850 <pos_libc_prf+0x600>
1c00c172:	89f6                	mv	s3,t4
1c00c174:	a8061ae3          	bnez	a2,1c00bc08 <pos_libc_prf+0x9b8>
1c00c178:	da8ff06f          	j	1c00b720 <pos_libc_prf+0x4d0>
1c00c17c:	4301                	li	t1,0
1c00c17e:	4801                	li	a6,0
1c00c180:	02410f13          	addi	t5,sp,36
1c00c184:	b9eff06f          	j	1c00b522 <pos_libc_prf+0x2d2>

1c00c188 <pos_init_start>:
1c00c188:	1141                	addi	sp,sp,-16
1c00c18a:	c422                	sw	s0,8(sp)
1c00c18c:	1c000437          	lui	s0,0x1c000
1c00c190:	c606                	sw	ra,12(sp)
1c00c192:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00c196:	af5fc0ef          	jal	ra,1c008c8a <pos_soc_init>
1c00c19a:	2a75                	jal	1c00c356 <pos_irq_init>
1c00c19c:	22e5                	jal	1c00c384 <pos_soc_event_init>
1c00c19e:	2225                	jal	1c00c2c6 <pos_allocs_init>
1c00c1a0:	405c                	lw	a5,4(s0)
1c00c1a2:	c791                	beqz	a5,1c00c1ae <pos_init_start+0x26>
1c00c1a4:	0411                	addi	s0,s0,4
1c00c1a6:	0411                	addi	s0,s0,4
1c00c1a8:	9782                	jalr	a5
1c00c1aa:	401c                	lw	a5,0(s0)
1c00c1ac:	ffed                	bnez	a5,1c00c1a6 <pos_init_start+0x1e>
1c00c1ae:	86cff0ef          	jal	ra,1c00b21a <pos_io_start>
1c00c1b2:	300467f3          	csrrsi	a5,mstatus,8
1c00c1b6:	40b2                	lw	ra,12(sp)
1c00c1b8:	4422                	lw	s0,8(sp)
1c00c1ba:	0141                	addi	sp,sp,16
1c00c1bc:	8082                	ret

1c00c1be <pos_init_stop>:
1c00c1be:	1141                	addi	sp,sp,-16
1c00c1c0:	c422                	sw	s0,8(sp)
1c00c1c2:	1c000437          	lui	s0,0x1c000
1c00c1c6:	c606                	sw	ra,12(sp)
1c00c1c8:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00c1cc:	852ff0ef          	jal	ra,1c00b21e <pos_io_stop>
1c00c1d0:	405c                	lw	a5,4(s0)
1c00c1d2:	c791                	beqz	a5,1c00c1de <pos_init_stop+0x20>
1c00c1d4:	0411                	addi	s0,s0,4
1c00c1d6:	0411                	addi	s0,s0,4
1c00c1d8:	9782                	jalr	a5
1c00c1da:	401c                	lw	a5,0(s0)
1c00c1dc:	ffed                	bnez	a5,1c00c1d6 <pos_init_stop+0x18>
1c00c1de:	40b2                	lw	ra,12(sp)
1c00c1e0:	4422                	lw	s0,8(sp)
1c00c1e2:	0141                	addi	sp,sp,16
1c00c1e4:	8082                	ret

1c00c1e6 <pos_alloc_init>:
1c00c1e6:	00758793          	addi	a5,a1,7
1c00c1ea:	9be1                	andi	a5,a5,-8
1c00c1ec:	40b785b3          	sub	a1,a5,a1
1c00c1f0:	c11c                	sw	a5,0(a0)
1c00c1f2:	40b605b3          	sub	a1,a2,a1
1c00c1f6:	00b05663          	blez	a1,1c00c202 <pos_alloc_init+0x1c>
1c00c1fa:	99e1                	andi	a1,a1,-8
1c00c1fc:	c38c                	sw	a1,0(a5)
1c00c1fe:	0007a223          	sw	zero,4(a5)
1c00c202:	8082                	ret

1c00c204 <pos_alloc>:
1c00c204:	411c                	lw	a5,0(a0)
1c00c206:	00758713          	addi	a4,a1,7
1c00c20a:	862a                	mv	a2,a0
1c00c20c:	ff877593          	andi	a1,a4,-8
1c00c210:	4681                	li	a3,0
1c00c212:	e789                	bnez	a5,1c00c21c <pos_alloc+0x18>
1c00c214:	a091                	j	1c00c258 <pos_alloc+0x54>
1c00c216:	86be                	mv	a3,a5
1c00c218:	c505                	beqz	a0,1c00c240 <pos_alloc+0x3c>
1c00c21a:	87aa                	mv	a5,a0
1c00c21c:	4398                	lw	a4,0(a5)
1c00c21e:	43c8                	lw	a0,4(a5)
1c00c220:	feb74be3          	blt	a4,a1,1c00c216 <pos_alloc+0x12>
1c00c224:	00b70f63          	beq	a4,a1,1c00c242 <pos_alloc+0x3e>
1c00c228:	00b78833          	add	a6,a5,a1
1c00c22c:	8f0d                	sub	a4,a4,a1
1c00c22e:	00e82023          	sw	a4,0(a6)
1c00c232:	00a82223          	sw	a0,4(a6)
1c00c236:	ca91                	beqz	a3,1c00c24a <pos_alloc+0x46>
1c00c238:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00c23c:	853e                	mv	a0,a5
1c00c23e:	8082                	ret
1c00c240:	8082                	ret
1c00c242:	ca81                	beqz	a3,1c00c252 <pos_alloc+0x4e>
1c00c244:	c2c8                	sw	a0,4(a3)
1c00c246:	853e                	mv	a0,a5
1c00c248:	8082                	ret
1c00c24a:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00c24e:	853e                	mv	a0,a5
1c00c250:	8082                	ret
1c00c252:	c208                	sw	a0,0(a2)
1c00c254:	853e                	mv	a0,a5
1c00c256:	8082                	ret
1c00c258:	4501                	li	a0,0
1c00c25a:	8082                	ret

1c00c25c <pos_free>:
1c00c25c:	411c                	lw	a5,0(a0)
1c00c25e:	061d                	addi	a2,a2,7
1c00c260:	9a61                	andi	a2,a2,-8
1c00c262:	c7a1                	beqz	a5,1c00c2aa <pos_free+0x4e>
1c00c264:	00b7e563          	bltu	a5,a1,1c00c26e <pos_free+0x12>
1c00c268:	a089                	j	1c00c2aa <pos_free+0x4e>
1c00c26a:	00b7f563          	bgeu	a5,a1,1c00c274 <pos_free+0x18>
1c00c26e:	873e                	mv	a4,a5
1c00c270:	43dc                	lw	a5,4(a5)
1c00c272:	ffe5                	bnez	a5,1c00c26a <pos_free+0xe>
1c00c274:	00c586b3          	add	a3,a1,a2
1c00c278:	00d78b63          	beq	a5,a3,1c00c28e <pos_free+0x32>
1c00c27c:	c190                	sw	a2,0(a1)
1c00c27e:	4314                	lw	a3,0(a4)
1c00c280:	c1dc                	sw	a5,4(a1)
1c00c282:	00d70533          	add	a0,a4,a3
1c00c286:	00a58e63          	beq	a1,a0,1c00c2a2 <pos_free+0x46>
1c00c28a:	c34c                	sw	a1,4(a4)
1c00c28c:	8082                	ret
1c00c28e:	4394                	lw	a3,0(a5)
1c00c290:	43dc                	lw	a5,4(a5)
1c00c292:	9636                	add	a2,a2,a3
1c00c294:	c190                	sw	a2,0(a1)
1c00c296:	4314                	lw	a3,0(a4)
1c00c298:	c1dc                	sw	a5,4(a1)
1c00c29a:	00d70533          	add	a0,a4,a3
1c00c29e:	fea596e3          	bne	a1,a0,1c00c28a <pos_free+0x2e>
1c00c2a2:	9636                	add	a2,a2,a3
1c00c2a4:	c310                	sw	a2,0(a4)
1c00c2a6:	c35c                	sw	a5,4(a4)
1c00c2a8:	8082                	ret
1c00c2aa:	00c58733          	add	a4,a1,a2
1c00c2ae:	00e78663          	beq	a5,a4,1c00c2ba <pos_free+0x5e>
1c00c2b2:	c1dc                	sw	a5,4(a1)
1c00c2b4:	c190                	sw	a2,0(a1)
1c00c2b6:	c10c                	sw	a1,0(a0)
1c00c2b8:	8082                	ret
1c00c2ba:	4398                	lw	a4,0(a5)
1c00c2bc:	43dc                	lw	a5,4(a5)
1c00c2be:	963a                	add	a2,a2,a4
1c00c2c0:	c1dc                	sw	a5,4(a1)
1c00c2c2:	c190                	sw	a2,0(a1)
1c00c2c4:	bfcd                	j	1c00c2b6 <pos_free+0x5a>

1c00c2c6 <pos_allocs_init>:
1c00c2c6:	1c0065b7          	lui	a1,0x1c006
1c00c2ca:	1141                	addi	sp,sp,-16
1c00c2cc:	18458613          	addi	a2,a1,388 # 1c006184 <__l2_priv0_end>
1c00c2d0:	1c0087b7          	lui	a5,0x1c008
1c00c2d4:	c606                	sw	ra,12(sp)
1c00c2d6:	18458593          	addi	a1,a1,388
1c00c2da:	40c78633          	sub	a2,a5,a2
1c00c2de:	04f5d863          	bge	a1,a5,1c00c32e <pos_allocs_init+0x68>
1c00c2e2:	1c006537          	lui	a0,0x1c006
1c00c2e6:	17850513          	addi	a0,a0,376 # 1c006178 <pos_alloc_l2>
1c00c2ea:	3df5                	jal	1c00c1e6 <pos_alloc_init>
1c00c2ec:	1c00c5b7          	lui	a1,0x1c00c
1c00c2f0:	39c58613          	addi	a2,a1,924 # 1c00c39c <__l2_priv1_end>
1c00c2f4:	1c0107b7          	lui	a5,0x1c010
1c00c2f8:	39c58593          	addi	a1,a1,924
1c00c2fc:	40c78633          	sub	a2,a5,a2
1c00c300:	02f5da63          	bge	a1,a5,1c00c334 <pos_allocs_init+0x6e>
1c00c304:	1c006537          	lui	a0,0x1c006
1c00c308:	17c50513          	addi	a0,a0,380 # 1c00617c <pos_alloc_l2+0x4>
1c00c30c:	3de9                	jal	1c00c1e6 <pos_alloc_init>
1c00c30e:	40b2                	lw	ra,12(sp)
1c00c310:	1c0105b7          	lui	a1,0x1c010
1c00c314:	00058793          	mv	a5,a1
1c00c318:	1c080637          	lui	a2,0x1c080
1c00c31c:	1c006537          	lui	a0,0x1c006
1c00c320:	8e1d                	sub	a2,a2,a5
1c00c322:	00058593          	mv	a1,a1
1c00c326:	18050513          	addi	a0,a0,384 # 1c006180 <pos_alloc_l2+0x8>
1c00c32a:	0141                	addi	sp,sp,16
1c00c32c:	bd6d                	j	1c00c1e6 <pos_alloc_init>
1c00c32e:	4581                	li	a1,0
1c00c330:	4601                	li	a2,0
1c00c332:	bf45                	j	1c00c2e2 <pos_allocs_init+0x1c>
1c00c334:	4581                	li	a1,0
1c00c336:	4601                	li	a2,0
1c00c338:	b7f1                	j	1c00c304 <pos_allocs_init+0x3e>

1c00c33a <pi_l2_malloc>:
1c00c33a:	85aa                	mv	a1,a0
1c00c33c:	1c006537          	lui	a0,0x1c006
1c00c340:	17850513          	addi	a0,a0,376 # 1c006178 <pos_alloc_l2>
1c00c344:	b5c1                	j	1c00c204 <pos_alloc>

1c00c346 <pi_l2_free>:
1c00c346:	862e                	mv	a2,a1
1c00c348:	85aa                	mv	a1,a0
1c00c34a:	1c006537          	lui	a0,0x1c006
1c00c34e:	17850513          	addi	a0,a0,376 # 1c006178 <pos_alloc_l2>
1c00c352:	b729                	j	1c00c25c <pos_free>

1c00c354 <__rt_handle_illegal_instr>:
1c00c354:	8082                	ret

1c00c356 <pos_irq_init>:
1c00c356:	1a10a737          	lui	a4,0x1a10a
1c00c35a:	56fd                	li	a3,-1
1c00c35c:	f14027f3          	csrr	a5,mhartid
1c00c360:	8795                	srai	a5,a5,0x5
1c00c362:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00c366:	03f7f793          	andi	a5,a5,63
1c00c36a:	477d                	li	a4,31
1c00c36c:	00e78363          	beq	a5,a4,1c00c372 <pos_irq_init+0x1c>
1c00c370:	8082                	ret
1c00c372:	1c0087b7          	lui	a5,0x1c008
1c00c376:	00078793          	mv	a5,a5
1c00c37a:	0017e793          	ori	a5,a5,1
1c00c37e:	30579073          	csrw	mtvec,a5
1c00c382:	8082                	ret

1c00c384 <pos_soc_event_init>:
1c00c384:	1a1067b7          	lui	a5,0x1a106
1c00c388:	577d                	li	a4,-1
1c00c38a:	c3d8                	sw	a4,4(a5)
1c00c38c:	c798                	sw	a4,8(a5)
1c00c38e:	c7d8                	sw	a4,12(a5)
1c00c390:	cb98                	sw	a4,16(a5)
1c00c392:	cbd8                	sw	a4,20(a5)
1c00c394:	cf98                	sw	a4,24(a5)
1c00c396:	cfd8                	sw	a4,28(a5)
1c00c398:	d398                	sw	a4,32(a5)
1c00c39a:	8082                	ret
