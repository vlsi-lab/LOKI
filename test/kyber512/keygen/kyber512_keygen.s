riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/LOKI/test/kyber512/keygen/build/keygen/keygen

/home/alessandra.dolmeta/LOKI/test/kyber512/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6400306f          	j	1c00b640 <__rt_handle_illegal_instr>
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
1c008084:	5bc0306f          	j	1c00b640 <__rt_handle_illegal_instr>

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
1c0080c4:	0a028293          	addi	t0,t0,160 # 1c006160 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	11030313          	addi	t1,t1,272 # 1c0061d8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	08610113          	addi	sp,sp,134 # 1c006160 <in>
1c0080e2:	392030ef          	jal	ra,1c00b474 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	3ae030ef          	jal	ra,1c00b4aa <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	3f0020ef          	jal	ra,1c00a4f2 <exit>
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
1c008172:	39c020ef          	jal	ra,1c00a50e <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	3420206f          	j	1c00a4c8 <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1c000537          	lui	a0,0x1c000
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c00819e:	7125                	addi	sp,sp,-416
1c0081a0:	2ac020ef          	jal	ra,1c00a44c <puts>
1c0081a4:	6785                	lui	a5,0x1
1c0081a6:	747d                	lui	s0,0xfffff
1c0081a8:	98078793          	addi	a5,a5,-1664 # 980 <__CTOR_LIST__-0x1bfff684>
1c0081ac:	978a                	add	a5,a5,sp
1c0081ae:	68040413          	addi	s0,s0,1664 # fffff680 <__l2_shared_end+0xe3fef680>
1c0081b2:	943e                	add	s0,s0,a5
1c0081b4:	160c                	addi	a1,sp,800
1c0081b6:	8522                	mv	a0,s0
1c0081b8:	175010ef          	jal	ra,1c009b2c <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair>
1c0081bc:	1c000537          	lui	a0,0x1c000
1c0081c0:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c0081c4:	288020ef          	jal	ra,1c00a44c <puts>
1c0081c8:	1c000537          	lui	a0,0x1c000
1c0081cc:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c0081d0:	27c020ef          	jal	ra,1c00a44c <puts>
1c0081d4:	32000593          	li	a1,800
1c0081d8:	8522                	mv	a0,s0
1c0081da:	3fad                	jal	1c008154 <printbytes>
1c0081dc:	1c000537          	lui	a0,0x1c000
1c0081e0:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c0081e4:	268020ef          	jal	ra,1c00a44c <puts>
1c0081e8:	1608                	addi	a0,sp,800
1c0081ea:	66000593          	li	a1,1632
1c0081ee:	379d                	jal	1c008154 <printbytes>
1c0081f0:	611d                	addi	sp,sp,416
1c0081f2:	7ec12083          	lw	ra,2028(sp)
1c0081f6:	7e812403          	lw	s0,2024(sp)
1c0081fa:	4501                	li	a0,0
1c0081fc:	7f010113          	addi	sp,sp,2032
1c008200:	8082                	ret

1c008202 <pos_fll_init>:
1c008202:	1101                	addi	sp,sp,-32
1c008204:	1a1005b7          	lui	a1,0x1a100
1c008208:	c64e                	sw	s3,12(sp)
1c00820a:	00451613          	slli	a2,a0,0x4
1c00820e:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c008212:	99b2                	add	s3,s3,a2
1c008214:	0009a703          	lw	a4,0(s3)
1c008218:	ca26                	sw	s1,20(sp)
1c00821a:	ce06                	sw	ra,28(sp)
1c00821c:	cc22                	sw	s0,24(sp)
1c00821e:	c84a                	sw	s2,16(sp)
1c008220:	c452                	sw	s4,8(sp)
1c008222:	84aa                	mv	s1,a0
1c008224:	87ba                	mv	a5,a4
1c008226:	04074763          	bltz	a4,1c008274 <pos_fll_init+0x72>
1c00822a:	00858693          	addi	a3,a1,8
1c00822e:	96b2                	add	a3,a3,a2
1c008230:	429c                	lw	a5,0(a3)
1c008232:	f0000537          	lui	a0,0xf0000
1c008236:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c00823a:	8fe9                	and	a5,a5,a0
1c00823c:	00502537          	lui	a0,0x502
1c008240:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c008244:	8fc9                	or	a5,a5,a0
1c008246:	05b1                	addi	a1,a1,12
1c008248:	c29c                	sw	a5,0(a3)
1c00824a:	962e                	add	a2,a2,a1
1c00824c:	4214                	lw	a3,0(a2)
1c00824e:	fc0107b7          	lui	a5,0xfc010
1c008252:	17fd                	addi	a5,a5,-1
1c008254:	01875593          	srli	a1,a4,0x18
1c008258:	8efd                	and	a3,a3,a5
1c00825a:	0c05e593          	ori	a1,a1,192
1c00825e:	00871793          	slli	a5,a4,0x8
1c008262:	014c0537          	lui	a0,0x14c0
1c008266:	8ec9                	or	a3,a3,a0
1c008268:	05e2                	slli	a1,a1,0x18
1c00826a:	83a1                	srli	a5,a5,0x8
1c00826c:	c214                	sw	a3,0(a2)
1c00826e:	8fcd                	or	a5,a5,a1
1c008270:	00f9a023          	sw	a5,0(s3)
1c008274:	1c006437          	lui	s0,0x1c006
1c008278:	1b840413          	addi	s0,s0,440 # 1c0061b8 <pos_fll_freq>
1c00827c:	00249a13          	slli	s4,s1,0x2
1c008280:	014406b3          	add	a3,s0,s4
1c008284:	0006a903          	lw	s2,0(a3)
1c008288:	02091d63          	bnez	s2,1c0082c2 <pos_fll_init+0xc0>
1c00828c:	83e9                	srli	a5,a5,0x1a
1c00828e:	0742                	slli	a4,a4,0x10
1c008290:	8341                	srli	a4,a4,0x10
1c008292:	8bbd                	andi	a5,a5,15
1c008294:	073e                	slli	a4,a4,0xf
1c008296:	17fd                	addi	a5,a5,-1
1c008298:	00f75933          	srl	s2,a4,a5
1c00829c:	0126a023          	sw	s2,0(a3)
1c0082a0:	1c0066b7          	lui	a3,0x1c006
1c0082a4:	1b068693          	addi	a3,a3,432 # 1c0061b0 <pos_fll_is_on>
1c0082a8:	96a6                	add	a3,a3,s1
1c0082aa:	4785                	li	a5,1
1c0082ac:	00f68023          	sb	a5,0(a3)
1c0082b0:	40f2                	lw	ra,28(sp)
1c0082b2:	4462                	lw	s0,24(sp)
1c0082b4:	44d2                	lw	s1,20(sp)
1c0082b6:	49b2                	lw	s3,12(sp)
1c0082b8:	4a22                	lw	s4,8(sp)
1c0082ba:	854a                	mv	a0,s2
1c0082bc:	4942                	lw	s2,16(sp)
1c0082be:	6105                	addi	sp,sp,32
1c0082c0:	8082                	ret
1c0082c2:	854a                	mv	a0,s2
1c0082c4:	3591                	jal	1c008108 <__clzsi2>
1c0082c6:	1579                	addi	a0,a0,-2
1c0082c8:	8105                	srli	a0,a0,0x1
1c0082ca:	c939                	beqz	a0,1c008320 <pos_fll_init+0x11e>
1c0082cc:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c0082d0:	1c0066b7          	lui	a3,0x1c006
1c0082d4:	4785                	li	a5,1
1c0082d6:	00c797b3          	sll	a5,a5,a2
1c0082da:	00a91733          	sll	a4,s2,a0
1c0082de:	1b068693          	addi	a3,a3,432 # 1c0061b0 <pos_fll_is_on>
1c0082e2:	7661                	lui	a2,0xffff8
1c0082e4:	8e79                	and	a2,a2,a4
1c0082e6:	009685b3          	add	a1,a3,s1
1c0082ea:	97b2                	add	a5,a5,a2
1c0082ec:	0005c603          	lbu	a2,0(a1)
1c0082f0:	9452                	add	s0,s0,s4
1c0082f2:	00a7d7b3          	srl	a5,a5,a0
1c0082f6:	c01c                	sw	a5,0(s0)
1c0082f8:	da45                	beqz	a2,1c0082a8 <pos_fll_init+0xa6>
1c0082fa:	0009a783          	lw	a5,0(s3)
1c0082fe:	833d                	srli	a4,a4,0xf
1c008300:	0742                	slli	a4,a4,0x10
1c008302:	7641                	lui	a2,0xffff0
1c008304:	8341                	srli	a4,a4,0x10
1c008306:	8ff1                	and	a5,a5,a2
1c008308:	8fd9                	or	a5,a5,a4
1c00830a:	0505                	addi	a0,a0,1
1c00830c:	c4000737          	lui	a4,0xc4000
1c008310:	893d                	andi	a0,a0,15
1c008312:	177d                	addi	a4,a4,-1
1c008314:	056a                	slli	a0,a0,0x1a
1c008316:	8ff9                	and	a5,a5,a4
1c008318:	8d5d                	or	a0,a0,a5
1c00831a:	00a9a023          	sw	a0,0(s3)
1c00831e:	b769                	j	1c0082a8 <pos_fll_init+0xa6>
1c008320:	4505                	li	a0,1
1c008322:	b76d                	j	1c0082cc <pos_fll_init+0xca>

1c008324 <pos_fll_constructor>:
1c008324:	1c0067b7          	lui	a5,0x1c006
1c008328:	1b878793          	addi	a5,a5,440 # 1c0061b8 <pos_fll_freq>
1c00832c:	0007a023          	sw	zero,0(a5)
1c008330:	0007a223          	sw	zero,4(a5)
1c008334:	1c0067b7          	lui	a5,0x1c006
1c008338:	1a079823          	sh	zero,432(a5) # 1c0061b0 <pos_fll_is_on>
1c00833c:	8082                	ret

1c00833e <pos_soc_init>:
1c00833e:	1141                	addi	sp,sp,-16
1c008340:	c606                	sw	ra,12(sp)
1c008342:	c422                	sw	s0,8(sp)
1c008344:	37c5                	jal	1c008324 <pos_fll_constructor>
1c008346:	4501                	li	a0,0
1c008348:	3d6d                	jal	1c008202 <pos_fll_init>
1c00834a:	1c006437          	lui	s0,0x1c006
1c00834e:	87aa                	mv	a5,a0
1c008350:	1c040413          	addi	s0,s0,448 # 1c0061c0 <pos_freq_domains>
1c008354:	4505                	li	a0,1
1c008356:	c01c                	sw	a5,0(s0)
1c008358:	356d                	jal	1c008202 <pos_fll_init>
1c00835a:	40b2                	lw	ra,12(sp)
1c00835c:	c408                	sw	a0,8(s0)
1c00835e:	4422                	lw	s0,8(sp)
1c008360:	0141                	addi	sp,sp,16
1c008362:	8082                	ret

1c008364 <KeccakF1600_StatePermute>:
1c008364:	1a400837          	lui	a6,0x1a400
1c008368:	87aa                	mv	a5,a0
1c00836a:	0c850613          	addi	a2,a0,200
1c00836e:	1141                	addi	sp,sp,-16
1c008370:	40a80533          	sub	a0,a6,a0
1c008374:	4394                	lw	a3,0(a5)
1c008376:	00f50733          	add	a4,a0,a5
1c00837a:	0791                	addi	a5,a5,4
1c00837c:	c314                	sw	a3,0(a4)
1c00837e:	fec79be3          	bne	a5,a2,1c008374 <KeccakF1600_StatePermute+0x10>
1c008382:	4785                	li	a5,1
1c008384:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008388:	1a400737          	lui	a4,0x1a400
1c00838c:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008390:	8b85                	andi	a5,a5,1
1c008392:	dfed                	beqz	a5,1c00838c <KeccakF1600_StatePermute+0x28>
1c008394:	c602                	sw	zero,12(sp)
1c008396:	4732                	lw	a4,12(sp)
1c008398:	03100793          	li	a5,49
1c00839c:	02e7c663          	blt	a5,a4,1c0083c8 <KeccakF1600_StatePermute+0x64>
1c0083a0:	1a400637          	lui	a2,0x1a400
1c0083a4:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0083a8:	03100513          	li	a0,49
1c0083ac:	4732                	lw	a4,12(sp)
1c0083ae:	47b2                	lw	a5,12(sp)
1c0083b0:	070a                	slli	a4,a4,0x2
1c0083b2:	9732                	add	a4,a4,a2
1c0083b4:	4314                	lw	a3,0(a4)
1c0083b6:	4732                	lw	a4,12(sp)
1c0083b8:	078a                	slli	a5,a5,0x2
1c0083ba:	97ae                	add	a5,a5,a1
1c0083bc:	0705                	addi	a4,a4,1
1c0083be:	c63a                	sw	a4,12(sp)
1c0083c0:	4732                	lw	a4,12(sp)
1c0083c2:	c394                	sw	a3,0(a5)
1c0083c4:	fee554e3          	bge	a0,a4,1c0083ac <KeccakF1600_StatePermute+0x48>
1c0083c8:	0141                	addi	sp,sp,16
1c0083ca:	8082                	ret

1c0083cc <KYBER_poly_ntt>:
1c0083cc:	1a4007b7          	lui	a5,0x1a400
1c0083d0:	40000713          	li	a4,1024
1c0083d4:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c0083d8:	3007a423          	sw	zero,776(a5)
1c0083dc:	4705                	li	a4,1
1c0083de:	30e7a423          	sw	a4,776(a5)
1c0083e2:	3007a423          	sw	zero,776(a5)
1c0083e6:	20050693          	addi	a3,a0,512
1c0083ea:	1a400737          	lui	a4,0x1a400
1c0083ee:	411c                	lw	a5,0(a0)
1c0083f0:	0511                	addi	a0,a0,4
1c0083f2:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c0083f6:	fed51ce3          	bne	a0,a3,1c0083ee <KYBER_poly_ntt+0x22>
1c0083fa:	08000793          	li	a5,128
1c0083fe:	30f72423          	sw	a5,776(a4)
1c008402:	30072423          	sw	zero,776(a4)
1c008406:	1a400737          	lui	a4,0x1a400
1c00840a:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00840e:	8b85                	andi	a5,a5,1
1c008410:	dfed                	beqz	a5,1c00840a <KYBER_poly_ntt+0x3e>
1c008412:	47c1                	li	a5,16
1c008414:	30f72423          	sw	a5,776(a4)
1c008418:	30072423          	sw	zero,776(a4)
1c00841c:	20058693          	addi	a3,a1,512
1c008420:	1a400737          	lui	a4,0x1a400
1c008424:	0001                	nop
1c008426:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00842a:	0591                	addi	a1,a1,4
1c00842c:	fef5ae23          	sw	a5,-4(a1)
1c008430:	fed59ae3          	bne	a1,a3,1c008424 <KYBER_poly_ntt+0x58>
1c008434:	8082                	ret

1c008436 <KYBER_poly_pwm>:
1c008436:	1a4007b7          	lui	a5,0x1a400
1c00843a:	40000713          	li	a4,1024
1c00843e:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008442:	3007a423          	sw	zero,776(a5)
1c008446:	4709                	li	a4,2
1c008448:	30e7a423          	sw	a4,776(a5)
1c00844c:	3007a423          	sw	zero,776(a5)
1c008450:	20058693          	addi	a3,a1,512
1c008454:	1a400737          	lui	a4,0x1a400
1c008458:	419c                	lw	a5,0(a1)
1c00845a:	0591                	addi	a1,a1,4
1c00845c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008460:	fed59ce3          	bne	a1,a3,1c008458 <KYBER_poly_pwm+0x22>
1c008464:	47a1                	li	a5,8
1c008466:	30f72423          	sw	a5,776(a4)
1c00846a:	30072423          	sw	zero,776(a4)
1c00846e:	20060693          	addi	a3,a2,512
1c008472:	1a400737          	lui	a4,0x1a400
1c008476:	421c                	lw	a5,0(a2)
1c008478:	0611                	addi	a2,a2,4
1c00847a:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00847e:	fec69ce3          	bne	a3,a2,1c008476 <KYBER_poly_pwm+0x40>
1c008482:	10000793          	li	a5,256
1c008486:	30f72423          	sw	a5,776(a4)
1c00848a:	30072423          	sw	zero,776(a4)
1c00848e:	1a400737          	lui	a4,0x1a400
1c008492:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008496:	8b85                	andi	a5,a5,1
1c008498:	dfed                	beqz	a5,1c008492 <KYBER_poly_pwm+0x5c>
1c00849a:	47c1                	li	a5,16
1c00849c:	30f72423          	sw	a5,776(a4)
1c0084a0:	30072423          	sw	zero,776(a4)
1c0084a4:	20050693          	addi	a3,a0,512
1c0084a8:	1a400737          	lui	a4,0x1a400
1c0084ac:	0001                	nop
1c0084ae:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c0084b2:	0511                	addi	a0,a0,4
1c0084b4:	fef52e23          	sw	a5,-4(a0)
1c0084b8:	fed51ae3          	bne	a0,a3,1c0084ac <KYBER_poly_pwm+0x76>
1c0084bc:	8082                	ret

1c0084be <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>:
1c0084be:	002496b7          	lui	a3,0x249
1c0084c2:	0c058e13          	addi	t3,a1,192
1c0084c6:	24968693          	addi	a3,a3,585 # 249249 <__CTOR_LIST__-0x1bdb6dbb>
1c0084ca:	0015c703          	lbu	a4,1(a1)
1c0084ce:	0025c783          	lbu	a5,2(a1)
1c0084d2:	0005c603          	lbu	a2,0(a1)
1c0084d6:	0722                	slli	a4,a4,0x8
1c0084d8:	07c2                	slli	a5,a5,0x10
1c0084da:	8f5d                	or	a4,a4,a5
1c0084dc:	8f51                	or	a4,a4,a2
1c0084de:	00175793          	srli	a5,a4,0x1
1c0084e2:	00275613          	srli	a2,a4,0x2
1c0084e6:	8e75                	and	a2,a2,a3
1c0084e8:	8ff5                	and	a5,a5,a3
1c0084ea:	8f75                	and	a4,a4,a3
1c0084ec:	97b2                	add	a5,a5,a2
1c0084ee:	97ba                	add	a5,a5,a4
1c0084f0:	0037df13          	srli	t5,a5,0x3
1c0084f4:	0067d813          	srli	a6,a5,0x6
1c0084f8:	0097de93          	srli	t4,a5,0x9
1c0084fc:	00c7d613          	srli	a2,a5,0xc
1c008500:	00f7d313          	srli	t1,a5,0xf
1c008504:	0127d713          	srli	a4,a5,0x12
1c008508:	0077f893          	andi	a7,a5,7
1c00850c:	007f7f13          	andi	t5,t5,7
1c008510:	00787813          	andi	a6,a6,7
1c008514:	007efe93          	andi	t4,t4,7
1c008518:	8a1d                	andi	a2,a2,7
1c00851a:	00737313          	andi	t1,t1,7
1c00851e:	8b1d                	andi	a4,a4,7
1c008520:	83d5                	srli	a5,a5,0x15
1c008522:	41e888b3          	sub	a7,a7,t5
1c008526:	41d80833          	sub	a6,a6,t4
1c00852a:	40660633          	sub	a2,a2,t1
1c00852e:	40f707b3          	sub	a5,a4,a5
1c008532:	01151023          	sh	a7,0(a0)
1c008536:	01051123          	sh	a6,2(a0)
1c00853a:	00c51223          	sh	a2,4(a0)
1c00853e:	00f51323          	sh	a5,6(a0)
1c008542:	058d                	addi	a1,a1,3
1c008544:	0521                	addi	a0,a0,8
1c008546:	f8be12e3          	bne	t3,a1,1c0084ca <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1+0xc>
1c00854a:	8082                	ret

1c00854c <keccak_absorb.constprop.1>:
1c00854c:	7151                	addi	sp,sp,-240
1c00854e:	d3a6                	sw	s1,228(sp)
1c008550:	cfce                	sw	s3,220(sp)
1c008552:	cdd2                	sw	s4,216(sp)
1c008554:	cbd6                	sw	s5,212(sp)
1c008556:	84b6                	mv	s1,a3
1c008558:	d786                	sw	ra,236(sp)
1c00855a:	d5a2                	sw	s0,232(sp)
1c00855c:	d1ca                	sw	s2,224(sp)
1c00855e:	c9da                	sw	s6,208(sp)
1c008560:	8a2a                	mv	s4,a0
1c008562:	87ae                	mv	a5,a1
1c008564:	8ab2                	mv	s5,a2
1c008566:	89aa                	mv	s3,a0
1c008568:	0c850693          	addi	a3,a0,200
1c00856c:	872a                	mv	a4,a0
1c00856e:	4581                	li	a1,0
1c008570:	4601                	li	a2,0
1c008572:	c30c                	sw	a1,0(a4)
1c008574:	c350                	sw	a2,4(a4)
1c008576:	0721                	addi	a4,a4,8
1c008578:	fee69be3          	bne	a3,a4,1c00856e <keccak_absorb.constprop.1+0x22>
1c00857c:	08700713          	li	a4,135
1c008580:	09577363          	bgeu	a4,s5,1c008606 <keccak_absorb.constprop.1+0xba>
1c008584:	08878b13          	addi	s6,a5,136
1c008588:	895a                	mv	s2,s6
1c00858a:	08700413          	li	s0,135
1c00858e:	86d2                	mv	a3,s4
1c008590:	0017c703          	lbu	a4,1(a5)
1c008594:	0027ce03          	lbu	t3,2(a5)
1c008598:	0057c803          	lbu	a6,5(a5)
1c00859c:	0047cf03          	lbu	t5,4(a5)
1c0085a0:	0067c503          	lbu	a0,6(a5)
1c0085a4:	0007ce83          	lbu	t4,0(a5)
1c0085a8:	0037c583          	lbu	a1,3(a5)
1c0085ac:	0077c603          	lbu	a2,7(a5)
1c0085b0:	0722                	slli	a4,a4,0x8
1c0085b2:	0e42                	slli	t3,t3,0x10
1c0085b4:	0822                	slli	a6,a6,0x8
1c0085b6:	0006a303          	lw	t1,0(a3)
1c0085ba:	0046a883          	lw	a7,4(a3)
1c0085be:	01c76733          	or	a4,a4,t3
1c0085c2:	01e86833          	or	a6,a6,t5
1c0085c6:	0542                	slli	a0,a0,0x10
1c0085c8:	01d76733          	or	a4,a4,t4
1c0085cc:	05e2                	slli	a1,a1,0x18
1c0085ce:	01056533          	or	a0,a0,a6
1c0085d2:	0662                	slli	a2,a2,0x18
1c0085d4:	8f4d                	or	a4,a4,a1
1c0085d6:	8e49                	or	a2,a2,a0
1c0085d8:	00e34733          	xor	a4,t1,a4
1c0085dc:	00c8c633          	xor	a2,a7,a2
1c0085e0:	c298                	sw	a4,0(a3)
1c0085e2:	c2d0                	sw	a2,4(a3)
1c0085e4:	07a1                	addi	a5,a5,8
1c0085e6:	06a1                	addi	a3,a3,8
1c0085e8:	faf914e3          	bne	s2,a5,1c008590 <keccak_absorb.constprop.1+0x44>
1c0085ec:	85d2                	mv	a1,s4
1c0085ee:	8552                	mv	a0,s4
1c0085f0:	3b95                	jal	1c008364 <KeccakF1600_StatePermute>
1c0085f2:	f78a8a93          	addi	s5,s5,-136
1c0085f6:	08890913          	addi	s2,s2,136
1c0085fa:	87da                	mv	a5,s6
1c0085fc:	01547563          	bgeu	s0,s5,1c008606 <keccak_absorb.constprop.1+0xba>
1c008600:	088b0b13          	addi	s6,s6,136
1c008604:	b769                	j	1c00858e <keccak_absorb.constprop.1+0x42>
1c008606:	0038                	addi	a4,sp,8
1c008608:	09010e13          	addi	t3,sp,144
1c00860c:	86ba                	mv	a3,a4
1c00860e:	0006a023          	sw	zero,0(a3)
1c008612:	0691                	addi	a3,a3,4
1c008614:	fede1de3          	bne	t3,a3,1c00860e <keccak_absorb.constprop.1+0xc2>
1c008618:	080a8263          	beqz	s5,1c00869c <keccak_absorb.constprop.1+0x150>
1c00861c:	fffa8693          	addi	a3,s5,-1
1c008620:	4609                	li	a2,2
1c008622:	10d67163          	bgeu	a2,a3,1c008724 <keccak_absorb.constprop.1+0x1d8>
1c008626:	ffcaf313          	andi	t1,s5,-4
1c00862a:	86be                	mv	a3,a5
1c00862c:	933e                	add	t1,t1,a5
1c00862e:	883a                	mv	a6,a4
1c008630:	0016c503          	lbu	a0,1(a3)
1c008634:	0006c883          	lbu	a7,0(a3)
1c008638:	0026c583          	lbu	a1,2(a3)
1c00863c:	0036c603          	lbu	a2,3(a3)
1c008640:	0522                	slli	a0,a0,0x8
1c008642:	01156533          	or	a0,a0,a7
1c008646:	05c2                	slli	a1,a1,0x10
1c008648:	8dc9                	or	a1,a1,a0
1c00864a:	0662                	slli	a2,a2,0x18
1c00864c:	8e4d                	or	a2,a2,a1
1c00864e:	00c82023          	sw	a2,0(a6)
1c008652:	0691                	addi	a3,a3,4
1c008654:	0811                	addi	a6,a6,4
1c008656:	fcd31de3          	bne	t1,a3,1c008630 <keccak_absorb.constprop.1+0xe4>
1c00865a:	ffcaf693          	andi	a3,s5,-4
1c00865e:	02da8f63          	beq	s5,a3,1c00869c <keccak_absorb.constprop.1+0x150>
1c008662:	00d78633          	add	a2,a5,a3
1c008666:	00064503          	lbu	a0,0(a2)
1c00866a:	098c                	addi	a1,sp,208
1c00866c:	95b6                	add	a1,a1,a3
1c00866e:	00168613          	addi	a2,a3,1
1c008672:	f2a58c23          	sb	a0,-200(a1)
1c008676:	03567363          	bgeu	a2,s5,1c00869c <keccak_absorb.constprop.1+0x150>
1c00867a:	00c785b3          	add	a1,a5,a2
1c00867e:	0005c583          	lbu	a1,0(a1)
1c008682:	0988                	addi	a0,sp,208
1c008684:	962a                	add	a2,a2,a0
1c008686:	0689                	addi	a3,a3,2
1c008688:	f2b60c23          	sb	a1,-200(a2)
1c00868c:	0156f863          	bgeu	a3,s5,1c00869c <keccak_absorb.constprop.1+0x150>
1c008690:	97b6                	add	a5,a5,a3
1c008692:	0007c783          	lbu	a5,0(a5)
1c008696:	96aa                	add	a3,a3,a0
1c008698:	f2f68c23          	sb	a5,-200(a3)
1c00869c:	099c                	addi	a5,sp,208
1c00869e:	9abe                	add	s5,s5,a5
1c0086a0:	f29a8c23          	sb	s1,-200(s5)
1c0086a4:	08f14783          	lbu	a5,143(sp)
1c0086a8:	f807e793          	ori	a5,a5,-128
1c0086ac:	08f107a3          	sb	a5,143(sp)
1c0086b0:	00174783          	lbu	a5,1(a4)
1c0086b4:	00274303          	lbu	t1,2(a4)
1c0086b8:	00574503          	lbu	a0,5(a4)
1c0086bc:	00474f03          	lbu	t5,4(a4)
1c0086c0:	00674583          	lbu	a1,6(a4)
1c0086c4:	00074e83          	lbu	t4,0(a4)
1c0086c8:	00374603          	lbu	a2,3(a4)
1c0086cc:	00774683          	lbu	a3,7(a4)
1c0086d0:	07a2                	slli	a5,a5,0x8
1c0086d2:	0342                	slli	t1,t1,0x10
1c0086d4:	0522                	slli	a0,a0,0x8
1c0086d6:	0009a883          	lw	a7,0(s3)
1c0086da:	0049a803          	lw	a6,4(s3)
1c0086de:	0067e7b3          	or	a5,a5,t1
1c0086e2:	01e56533          	or	a0,a0,t5
1c0086e6:	05c2                	slli	a1,a1,0x10
1c0086e8:	01d7e7b3          	or	a5,a5,t4
1c0086ec:	0662                	slli	a2,a2,0x18
1c0086ee:	8dc9                	or	a1,a1,a0
1c0086f0:	06e2                	slli	a3,a3,0x18
1c0086f2:	8e5d                	or	a2,a2,a5
1c0086f4:	00b6e7b3          	or	a5,a3,a1
1c0086f8:	00c8c633          	xor	a2,a7,a2
1c0086fc:	00f847b3          	xor	a5,a6,a5
1c008700:	00c9a023          	sw	a2,0(s3)
1c008704:	00f9a223          	sw	a5,4(s3)
1c008708:	0721                	addi	a4,a4,8
1c00870a:	09a1                	addi	s3,s3,8
1c00870c:	faee12e3          	bne	t3,a4,1c0086b0 <keccak_absorb.constprop.1+0x164>
1c008710:	50be                	lw	ra,236(sp)
1c008712:	542e                	lw	s0,232(sp)
1c008714:	549e                	lw	s1,228(sp)
1c008716:	590e                	lw	s2,224(sp)
1c008718:	49fe                	lw	s3,220(sp)
1c00871a:	4a6e                	lw	s4,216(sp)
1c00871c:	4ade                	lw	s5,212(sp)
1c00871e:	4b4e                	lw	s6,208(sp)
1c008720:	616d                	addi	sp,sp,240
1c008722:	8082                	ret
1c008724:	4681                	li	a3,0
1c008726:	bf35                	j	1c008662 <keccak_absorb.constprop.1+0x116>

1c008728 <shake128_absorb>:
1c008728:	7151                	addi	sp,sp,-240
1c00872a:	cfce                	sw	s3,220(sp)
1c00872c:	89aa                	mv	s3,a0
1c00872e:	0c800513          	li	a0,200
1c008732:	d5a2                	sw	s0,232(sp)
1c008734:	d3a6                	sw	s1,228(sp)
1c008736:	d786                	sw	ra,236(sp)
1c008738:	d1ca                	sw	s2,224(sp)
1c00873a:	842e                	mv	s0,a1
1c00873c:	84b2                	mv	s1,a2
1c00873e:	6e9020ef          	jal	ra,1c00b626 <pi_l2_malloc>
1c008742:	00a9a023          	sw	a0,0(s3)
1c008746:	1c050363          	beqz	a0,1c00890c <shake128_absorb+0x1e4>
1c00874a:	892a                	mv	s2,a0
1c00874c:	0c850713          	addi	a4,a0,200
1c008750:	87aa                	mv	a5,a0
1c008752:	4601                	li	a2,0
1c008754:	4681                	li	a3,0
1c008756:	c390                	sw	a2,0(a5)
1c008758:	c3d4                	sw	a3,4(a5)
1c00875a:	07a1                	addi	a5,a5,8
1c00875c:	fef71be3          	bne	a4,a5,1c008752 <shake128_absorb+0x2a>
1c008760:	0a700793          	li	a5,167
1c008764:	0897f063          	bgeu	a5,s1,1c0087e4 <shake128_absorb+0xbc>
1c008768:	0a700993          	li	s3,167
1c00876c:	87a2                	mv	a5,s0
1c00876e:	40890eb3          	sub	t4,s2,s0
1c008772:	0a840413          	addi	s0,s0,168
1c008776:	0017c703          	lbu	a4,1(a5)
1c00877a:	0027ce03          	lbu	t3,2(a5)
1c00877e:	0057c503          	lbu	a0,5(a5)
1c008782:	0047cf83          	lbu	t6,4(a5)
1c008786:	0067c583          	lbu	a1,6(a5)
1c00878a:	0007cf03          	lbu	t5,0(a5)
1c00878e:	0037c603          	lbu	a2,3(a5)
1c008792:	0077c683          	lbu	a3,7(a5)
1c008796:	00fe8833          	add	a6,t4,a5
1c00879a:	0722                	slli	a4,a4,0x8
1c00879c:	0e42                	slli	t3,t3,0x10
1c00879e:	0522                	slli	a0,a0,0x8
1c0087a0:	00082303          	lw	t1,0(a6)
1c0087a4:	00482883          	lw	a7,4(a6)
1c0087a8:	01c76733          	or	a4,a4,t3
1c0087ac:	01f56533          	or	a0,a0,t6
1c0087b0:	05c2                	slli	a1,a1,0x10
1c0087b2:	01e76733          	or	a4,a4,t5
1c0087b6:	0662                	slli	a2,a2,0x18
1c0087b8:	8dc9                	or	a1,a1,a0
1c0087ba:	06e2                	slli	a3,a3,0x18
1c0087bc:	8f51                	or	a4,a4,a2
1c0087be:	8ecd                	or	a3,a3,a1
1c0087c0:	00e34733          	xor	a4,t1,a4
1c0087c4:	00d8c6b3          	xor	a3,a7,a3
1c0087c8:	00e82023          	sw	a4,0(a6)
1c0087cc:	00d82223          	sw	a3,4(a6)
1c0087d0:	07a1                	addi	a5,a5,8
1c0087d2:	faf412e3          	bne	s0,a5,1c008776 <shake128_absorb+0x4e>
1c0087d6:	f5848493          	addi	s1,s1,-168
1c0087da:	85ca                	mv	a1,s2
1c0087dc:	854a                	mv	a0,s2
1c0087de:	3659                	jal	1c008364 <KeccakF1600_StatePermute>
1c0087e0:	f899e6e3          	bltu	s3,s1,1c00876c <shake128_absorb+0x44>
1c0087e4:	0b010313          	addi	t1,sp,176
1c0087e8:	003c                	addi	a5,sp,8
1c0087ea:	0007a023          	sw	zero,0(a5)
1c0087ee:	0791                	addi	a5,a5,4
1c0087f0:	fef31de3          	bne	t1,a5,1c0087ea <shake128_absorb+0xc2>
1c0087f4:	c0d9                	beqz	s1,1c00887a <shake128_absorb+0x152>
1c0087f6:	fff48793          	addi	a5,s1,-1
1c0087fa:	4709                	li	a4,2
1c0087fc:	10f77663          	bgeu	a4,a5,1c008908 <shake128_absorb+0x1e0>
1c008800:	ffc4f593          	andi	a1,s1,-4
1c008804:	87a2                	mv	a5,s0
1c008806:	95a2                	add	a1,a1,s0
1c008808:	0028                	addi	a0,sp,8
1c00880a:	0017c603          	lbu	a2,1(a5)
1c00880e:	0007c803          	lbu	a6,0(a5)
1c008812:	0027c683          	lbu	a3,2(a5)
1c008816:	0037c703          	lbu	a4,3(a5)
1c00881a:	0622                	slli	a2,a2,0x8
1c00881c:	01066633          	or	a2,a2,a6
1c008820:	06c2                	slli	a3,a3,0x10
1c008822:	8ed1                	or	a3,a3,a2
1c008824:	0762                	slli	a4,a4,0x18
1c008826:	8f55                	or	a4,a4,a3
1c008828:	c118                	sw	a4,0(a0)
1c00882a:	0791                	addi	a5,a5,4
1c00882c:	0511                	addi	a0,a0,4
1c00882e:	fcf59ee3          	bne	a1,a5,1c00880a <shake128_absorb+0xe2>
1c008832:	ffc4f793          	andi	a5,s1,-4
1c008836:	04f48263          	beq	s1,a5,1c00887a <shake128_absorb+0x152>
1c00883a:	00f40733          	add	a4,s0,a5
1c00883e:	00074603          	lbu	a2,0(a4)
1c008842:	0994                	addi	a3,sp,208
1c008844:	96be                	add	a3,a3,a5
1c008846:	00178713          	addi	a4,a5,1
1c00884a:	f2c68c23          	sb	a2,-200(a3)
1c00884e:	02977663          	bgeu	a4,s1,1c00887a <shake128_absorb+0x152>
1c008852:	00e406b3          	add	a3,s0,a4
1c008856:	0006c603          	lbu	a2,0(a3)
1c00885a:	0994                	addi	a3,sp,208
1c00885c:	96ba                	add	a3,a3,a4
1c00885e:	f2c68c23          	sb	a2,-200(a3)
1c008862:	00278713          	addi	a4,a5,2
1c008866:	00977a63          	bgeu	a4,s1,1c00887a <shake128_absorb+0x152>
1c00886a:	00e407b3          	add	a5,s0,a4
1c00886e:	0007c683          	lbu	a3,0(a5)
1c008872:	099c                	addi	a5,sp,208
1c008874:	97ba                	add	a5,a5,a4
1c008876:	f2d78c23          	sb	a3,-200(a5)
1c00887a:	099c                	addi	a5,sp,208
1c00887c:	00978633          	add	a2,a5,s1
1c008880:	47fd                	li	a5,31
1c008882:	f2f60c23          	sb	a5,-200(a2)
1c008886:	0af14703          	lbu	a4,175(sp)
1c00888a:	003c                	addi	a5,sp,8
1c00888c:	40f90933          	sub	s2,s2,a5
1c008890:	f8076713          	ori	a4,a4,-128
1c008894:	0ae107a3          	sb	a4,175(sp)
1c008898:	0017c703          	lbu	a4,1(a5)
1c00889c:	0027cf83          	lbu	t6,2(a5)
1c0088a0:	0057c883          	lbu	a7,5(a5)
1c0088a4:	0047c503          	lbu	a0,4(a5)
1c0088a8:	0067c803          	lbu	a6,6(a5)
1c0088ac:	0007c583          	lbu	a1,0(a5)
1c0088b0:	0037c603          	lbu	a2,3(a5)
1c0088b4:	0077c683          	lbu	a3,7(a5)
1c0088b8:	00f90e33          	add	t3,s2,a5
1c0088bc:	0722                	slli	a4,a4,0x8
1c0088be:	0fc2                	slli	t6,t6,0x10
1c0088c0:	08a2                	slli	a7,a7,0x8
1c0088c2:	000e2f03          	lw	t5,0(t3)
1c0088c6:	004e2e83          	lw	t4,4(t3)
1c0088ca:	01f76733          	or	a4,a4,t6
1c0088ce:	00a8e8b3          	or	a7,a7,a0
1c0088d2:	0842                	slli	a6,a6,0x10
1c0088d4:	8f4d                	or	a4,a4,a1
1c0088d6:	0662                	slli	a2,a2,0x18
1c0088d8:	01186833          	or	a6,a6,a7
1c0088dc:	06e2                	slli	a3,a3,0x18
1c0088de:	8f51                	or	a4,a4,a2
1c0088e0:	0106e6b3          	or	a3,a3,a6
1c0088e4:	00ef4733          	xor	a4,t5,a4
1c0088e8:	00dec6b3          	xor	a3,t4,a3
1c0088ec:	00ee2023          	sw	a4,0(t3)
1c0088f0:	00de2223          	sw	a3,4(t3)
1c0088f4:	07a1                	addi	a5,a5,8
1c0088f6:	faf311e3          	bne	t1,a5,1c008898 <shake128_absorb+0x170>
1c0088fa:	50be                	lw	ra,236(sp)
1c0088fc:	542e                	lw	s0,232(sp)
1c0088fe:	549e                	lw	s1,228(sp)
1c008900:	590e                	lw	s2,224(sp)
1c008902:	49fe                	lw	s3,220(sp)
1c008904:	616d                	addi	sp,sp,240
1c008906:	8082                	ret
1c008908:	4781                	li	a5,0
1c00890a:	bf05                	j	1c00883a <shake128_absorb+0x112>
1c00890c:	06f00513          	li	a0,111
1c008910:	3e3010ef          	jal	ra,1c00a4f2 <exit>

1c008914 <shake128_squeezeblocks>:
1c008914:	1101                	addi	sp,sp,-32
1c008916:	c05a                	sw	s6,0(sp)
1c008918:	ce06                	sw	ra,28(sp)
1c00891a:	cc22                	sw	s0,24(sp)
1c00891c:	ca26                	sw	s1,20(sp)
1c00891e:	c84a                	sw	s2,16(sp)
1c008920:	c64e                	sw	s3,12(sp)
1c008922:	c452                	sw	s4,8(sp)
1c008924:	c256                	sw	s5,4(sp)
1c008926:	00062b03          	lw	s6,0(a2)
1c00892a:	c5e9                	beqz	a1,1c0089f4 <shake128_squeezeblocks+0xe0>
1c00892c:	7ac1                	lui	s5,0xffff0
1c00892e:	ff010a37          	lui	s4,0xff010
1c008932:	010009b7          	lui	s3,0x1000
1c008936:	84ae                	mv	s1,a1
1c008938:	892a                	mv	s2,a0
1c00893a:	0a8b0413          	addi	s0,s6,168
1c00893e:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008942:	1a7d                	addi	s4,s4,-1
1c008944:	19fd                	addi	s3,s3,-1
1c008946:	85da                	mv	a1,s6
1c008948:	855a                	mv	a0,s6
1c00894a:	3c29                	jal	1c008364 <KeccakF1600_StatePermute>
1c00894c:	85da                	mv	a1,s6
1c00894e:	00490813          	addi	a6,s2,4
1c008952:	4198                	lw	a4,0(a1)
1c008954:	41dc                	lw	a5,4(a1)
1c008956:	05a1                	addi	a1,a1,8
1c008958:	00875893          	srli	a7,a4,0x8
1c00895c:	0087d513          	srli	a0,a5,0x8
1c008960:	0ff77613          	andi	a2,a4,255
1c008964:	0ff7f693          	andi	a3,a5,255
1c008968:	0ff8f893          	andi	a7,a7,255
1c00896c:	0ff57513          	andi	a0,a0,255
1c008970:	08a2                	slli	a7,a7,0x8
1c008972:	0522                	slli	a0,a0,0x8
1c008974:	01567633          	and	a2,a2,s5
1c008978:	0156f6b3          	and	a3,a3,s5
1c00897c:	01166633          	or	a2,a2,a7
1c008980:	8ec9                	or	a3,a3,a0
1c008982:	00ff08b7          	lui	a7,0xff0
1c008986:	00ff0537          	lui	a0,0xff0
1c00898a:	011778b3          	and	a7,a4,a7
1c00898e:	8d7d                	and	a0,a0,a5
1c008990:	01467633          	and	a2,a2,s4
1c008994:	0146f6b3          	and	a3,a3,s4
1c008998:	01166633          	or	a2,a2,a7
1c00899c:	8ec9                	or	a3,a3,a0
1c00899e:	8361                	srli	a4,a4,0x18
1c0089a0:	83e1                	srli	a5,a5,0x18
1c0089a2:	01367633          	and	a2,a2,s3
1c0089a6:	0136f6b3          	and	a3,a3,s3
1c0089aa:	0762                	slli	a4,a4,0x18
1c0089ac:	07e2                	slli	a5,a5,0x18
1c0089ae:	8f51                	or	a4,a4,a2
1c0089b0:	8fd5                	or	a5,a5,a3
1c0089b2:	00875e13          	srli	t3,a4,0x8
1c0089b6:	01075313          	srli	t1,a4,0x10
1c0089ba:	0087d893          	srli	a7,a5,0x8
1c0089be:	0107d513          	srli	a0,a5,0x10
1c0089c2:	8361                	srli	a4,a4,0x18
1c0089c4:	83e1                	srli	a5,a5,0x18
1c0089c6:	fec80e23          	sb	a2,-4(a6)
1c0089ca:	ffc80ea3          	sb	t3,-3(a6)
1c0089ce:	fe680f23          	sb	t1,-2(a6)
1c0089d2:	fee80fa3          	sb	a4,-1(a6)
1c0089d6:	00d80023          	sb	a3,0(a6)
1c0089da:	011800a3          	sb	a7,1(a6)
1c0089de:	00a80123          	sb	a0,2(a6)
1c0089e2:	00f801a3          	sb	a5,3(a6)
1c0089e6:	0821                	addi	a6,a6,8
1c0089e8:	f6b415e3          	bne	s0,a1,1c008952 <shake128_squeezeblocks+0x3e>
1c0089ec:	14fd                	addi	s1,s1,-1
1c0089ee:	0a890913          	addi	s2,s2,168
1c0089f2:	f8b1                	bnez	s1,1c008946 <shake128_squeezeblocks+0x32>
1c0089f4:	40f2                	lw	ra,28(sp)
1c0089f6:	4462                	lw	s0,24(sp)
1c0089f8:	44d2                	lw	s1,20(sp)
1c0089fa:	4942                	lw	s2,16(sp)
1c0089fc:	49b2                	lw	s3,12(sp)
1c0089fe:	4a22                	lw	s4,8(sp)
1c008a00:	4a92                	lw	s5,4(sp)
1c008a02:	4b02                	lw	s6,0(sp)
1c008a04:	6105                	addi	sp,sp,32
1c008a06:	8082                	ret

1c008a08 <shake128_ctx_release>:
1c008a08:	4108                	lw	a0,0(a0)
1c008a0a:	0c800593          	li	a1,200
1c008a0e:	4250206f          	j	1c00b632 <pi_l2_free>

1c008a12 <shake256>:
1c008a12:	7131                	addi	sp,sp,-192
1c008a14:	db26                	sw	s1,180(sp)
1c008a16:	d74e                	sw	s3,172(sp)
1c008a18:	84aa                	mv	s1,a0
1c008a1a:	08800993          	li	s3,136
1c008a1e:	0c800513          	li	a0,200
1c008a22:	dd22                	sw	s0,184(sp)
1c008a24:	d94a                	sw	s2,176(sp)
1c008a26:	d356                	sw	s5,164(sp)
1c008a28:	df06                	sw	ra,188(sp)
1c008a2a:	d552                	sw	s4,168(sp)
1c008a2c:	d15a                	sw	s6,160(sp)
1c008a2e:	cf5e                	sw	s7,156(sp)
1c008a30:	cd62                	sw	s8,152(sp)
1c008a32:	0335d9b3          	divu	s3,a1,s3
1c008a36:	892e                	mv	s2,a1
1c008a38:	8432                	mv	s0,a2
1c008a3a:	8ab6                	mv	s5,a3
1c008a3c:	3eb020ef          	jal	ra,1c00b626 <pi_l2_malloc>
1c008a40:	24050663          	beqz	a0,1c008c8c <shake256+0x27a>
1c008a44:	46fd                	li	a3,31
1c008a46:	8656                	mv	a2,s5
1c008a48:	85a2                	mv	a1,s0
1c008a4a:	8a2a                	mv	s4,a0
1c008a4c:	3601                	jal	1c00854c <keccak_absorb.constprop.1>
1c008a4e:	08700793          	li	a5,135
1c008a52:	0d27fe63          	bgeu	a5,s2,1c008b2e <shake256+0x11c>
1c008a56:	00499413          	slli	s0,s3,0x4
1c008a5a:	944e                	add	s0,s0,s3
1c008a5c:	040e                	slli	s0,s0,0x3
1c008a5e:	7bc1                	lui	s7,0xffff0
1c008a60:	ff010b37          	lui	s6,0xff010
1c008a64:	01000ab7          	lui	s5,0x1000
1c008a68:	9426                	add	s0,s0,s1
1c008a6a:	8c26                	mv	s8,s1
1c008a6c:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008a70:	1b7d                	addi	s6,s6,-1
1c008a72:	1afd                	addi	s5,s5,-1
1c008a74:	85d2                	mv	a1,s4
1c008a76:	8552                	mv	a0,s4
1c008a78:	30f5                	jal	1c008364 <KeccakF1600_StatePermute>
1c008a7a:	87e2                	mv	a5,s8
1c008a7c:	418a0533          	sub	a0,s4,s8
1c008a80:	088c0593          	addi	a1,s8,136
1c008a84:	00f50733          	add	a4,a0,a5
1c008a88:	4314                	lw	a3,0(a4)
1c008a8a:	4358                	lw	a4,4(a4)
1c008a8c:	07a1                	addi	a5,a5,8
1c008a8e:	0086d313          	srli	t1,a3,0x8
1c008a92:	00875893          	srli	a7,a4,0x8
1c008a96:	0ff6f813          	andi	a6,a3,255
1c008a9a:	0ff77613          	andi	a2,a4,255
1c008a9e:	0ff37313          	andi	t1,t1,255
1c008aa2:	0ff8f893          	andi	a7,a7,255
1c008aa6:	0322                	slli	t1,t1,0x8
1c008aa8:	08a2                	slli	a7,a7,0x8
1c008aaa:	01787833          	and	a6,a6,s7
1c008aae:	01767633          	and	a2,a2,s7
1c008ab2:	00686833          	or	a6,a6,t1
1c008ab6:	01166633          	or	a2,a2,a7
1c008aba:	00ff0337          	lui	t1,0xff0
1c008abe:	00ff08b7          	lui	a7,0xff0
1c008ac2:	0066f333          	and	t1,a3,t1
1c008ac6:	011778b3          	and	a7,a4,a7
1c008aca:	01687833          	and	a6,a6,s6
1c008ace:	01667633          	and	a2,a2,s6
1c008ad2:	00686833          	or	a6,a6,t1
1c008ad6:	01166633          	or	a2,a2,a7
1c008ada:	82e1                	srli	a3,a3,0x18
1c008adc:	8361                	srli	a4,a4,0x18
1c008ade:	01587833          	and	a6,a6,s5
1c008ae2:	01567633          	and	a2,a2,s5
1c008ae6:	06e2                	slli	a3,a3,0x18
1c008ae8:	0762                	slli	a4,a4,0x18
1c008aea:	00d866b3          	or	a3,a6,a3
1c008aee:	8f51                	or	a4,a4,a2
1c008af0:	0086de93          	srli	t4,a3,0x8
1c008af4:	0106de13          	srli	t3,a3,0x10
1c008af8:	00875313          	srli	t1,a4,0x8
1c008afc:	01075893          	srli	a7,a4,0x10
1c008b00:	82e1                	srli	a3,a3,0x18
1c008b02:	8361                	srli	a4,a4,0x18
1c008b04:	ff078c23          	sb	a6,-8(a5)
1c008b08:	ffd78ca3          	sb	t4,-7(a5)
1c008b0c:	ffc78d23          	sb	t3,-6(a5)
1c008b10:	fed78da3          	sb	a3,-5(a5)
1c008b14:	fec78e23          	sb	a2,-4(a5)
1c008b18:	fe678ea3          	sb	t1,-3(a5)
1c008b1c:	ff178f23          	sb	a7,-2(a5)
1c008b20:	fee78fa3          	sb	a4,-1(a5)
1c008b24:	f6f590e3          	bne	a1,a5,1c008a84 <shake256+0x72>
1c008b28:	8c2e                	mv	s8,a1
1c008b2a:	f48595e3          	bne	a1,s0,1c008a74 <shake256+0x62>
1c008b2e:	08800593          	li	a1,136
1c008b32:	02b97933          	remu	s2,s2,a1
1c008b36:	02091263          	bnez	s2,1c008b5a <shake256+0x148>
1c008b3a:	546a                	lw	s0,184(sp)
1c008b3c:	50fa                	lw	ra,188(sp)
1c008b3e:	54da                	lw	s1,180(sp)
1c008b40:	594a                	lw	s2,176(sp)
1c008b42:	59ba                	lw	s3,172(sp)
1c008b44:	5a9a                	lw	s5,164(sp)
1c008b46:	5b0a                	lw	s6,160(sp)
1c008b48:	4bfa                	lw	s7,156(sp)
1c008b4a:	4c6a                	lw	s8,152(sp)
1c008b4c:	8552                	mv	a0,s4
1c008b4e:	5a2a                	lw	s4,168(sp)
1c008b50:	0c800593          	li	a1,200
1c008b54:	6129                	addi	sp,sp,192
1c008b56:	2dd0206f          	j	1c00b632 <pi_l2_free>
1c008b5a:	85d2                	mv	a1,s4
1c008b5c:	8552                	mv	a0,s4
1c008b5e:	807ff0ef          	jal	ra,1c008364 <KeccakF1600_StatePermute>
1c008b62:	002c                	addi	a1,sp,8
1c008b64:	78c1                	lui	a7,0xffff0
1c008b66:	ff010837          	lui	a6,0xff010
1c008b6a:	01000537          	lui	a0,0x1000
1c008b6e:	09010e13          	addi	t3,sp,144
1c008b72:	862e                	mv	a2,a1
1c008b74:	40ba0333          	sub	t1,s4,a1
1c008b78:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008b7c:	187d                	addi	a6,a6,-1
1c008b7e:	157d                	addi	a0,a0,-1
1c008b80:	00c307b3          	add	a5,t1,a2
1c008b84:	0007ae83          	lw	t4,0(a5)
1c008b88:	43d4                	lw	a3,4(a5)
1c008b8a:	0621                	addi	a2,a2,8
1c008b8c:	008edf93          	srli	t6,t4,0x8
1c008b90:	0086df13          	srli	t5,a3,0x8
1c008b94:	0ffef713          	andi	a4,t4,255
1c008b98:	0ff6f793          	andi	a5,a3,255
1c008b9c:	0fffff93          	andi	t6,t6,255
1c008ba0:	0fff7f13          	andi	t5,t5,255
1c008ba4:	0fa2                	slli	t6,t6,0x8
1c008ba6:	0f22                	slli	t5,t5,0x8
1c008ba8:	01177733          	and	a4,a4,a7
1c008bac:	0117f7b3          	and	a5,a5,a7
1c008bb0:	01f76733          	or	a4,a4,t6
1c008bb4:	01e7e7b3          	or	a5,a5,t5
1c008bb8:	00ff0fb7          	lui	t6,0xff0
1c008bbc:	00ff0f37          	lui	t5,0xff0
1c008bc0:	01feffb3          	and	t6,t4,t6
1c008bc4:	01e6ff33          	and	t5,a3,t5
1c008bc8:	01077733          	and	a4,a4,a6
1c008bcc:	0107f7b3          	and	a5,a5,a6
1c008bd0:	01f76733          	or	a4,a4,t6
1c008bd4:	018ede93          	srli	t4,t4,0x18
1c008bd8:	01e7e7b3          	or	a5,a5,t5
1c008bdc:	82e1                	srli	a3,a3,0x18
1c008bde:	0ee2                	slli	t4,t4,0x18
1c008be0:	8f69                	and	a4,a4,a0
1c008be2:	06e2                	slli	a3,a3,0x18
1c008be4:	8fe9                	and	a5,a5,a0
1c008be6:	01d76733          	or	a4,a4,t4
1c008bea:	8fd5                	or	a5,a5,a3
1c008bec:	fee62c23          	sw	a4,-8(a2)
1c008bf0:	fef62e23          	sw	a5,-4(a2)
1c008bf4:	f8ce16e3          	bne	t3,a2,1c008b80 <shake256+0x16e>
1c008bf8:	fff90793          	addi	a5,s2,-1
1c008bfc:	4709                	li	a4,2
1c008bfe:	08f77363          	bgeu	a4,a5,1c008c84 <shake256+0x272>
1c008c02:	00499413          	slli	s0,s3,0x4
1c008c06:	013407b3          	add	a5,s0,s3
1c008c0a:	078e                	slli	a5,a5,0x3
1c008c0c:	97a6                	add	a5,a5,s1
1c008c0e:	0fc97813          	andi	a6,s2,252
1c008c12:	983e                	add	a6,a6,a5
1c008c14:	4198                	lw	a4,0(a1)
1c008c16:	0791                	addi	a5,a5,4
1c008c18:	0591                	addi	a1,a1,4
1c008c1a:	00875513          	srli	a0,a4,0x8
1c008c1e:	01075613          	srli	a2,a4,0x10
1c008c22:	01875693          	srli	a3,a4,0x18
1c008c26:	fea78ea3          	sb	a0,-3(a5)
1c008c2a:	fec78f23          	sb	a2,-2(a5)
1c008c2e:	fed78fa3          	sb	a3,-1(a5)
1c008c32:	fee78e23          	sb	a4,-4(a5)
1c008c36:	fcf81fe3          	bne	a6,a5,1c008c14 <shake256+0x202>
1c008c3a:	ffc97793          	andi	a5,s2,-4
1c008c3e:	eef90ee3          	beq	s2,a5,1c008b3a <shake256+0x128>
1c008c42:	0918                	addi	a4,sp,144
1c008c44:	973e                	add	a4,a4,a5
1c008c46:	99a2                	add	s3,s3,s0
1c008c48:	f7874683          	lbu	a3,-136(a4)
1c008c4c:	098e                	slli	s3,s3,0x3
1c008c4e:	99a6                	add	s3,s3,s1
1c008c50:	00f98733          	add	a4,s3,a5
1c008c54:	00d70023          	sb	a3,0(a4)
1c008c58:	00178713          	addi	a4,a5,1
1c008c5c:	ed277fe3          	bgeu	a4,s2,1c008b3a <shake256+0x128>
1c008c60:	0914                	addi	a3,sp,144
1c008c62:	96ba                	add	a3,a3,a4
1c008c64:	f786c683          	lbu	a3,-136(a3)
1c008c68:	974e                	add	a4,a4,s3
1c008c6a:	0789                	addi	a5,a5,2
1c008c6c:	00d70023          	sb	a3,0(a4)
1c008c70:	ed27f5e3          	bgeu	a5,s2,1c008b3a <shake256+0x128>
1c008c74:	0918                	addi	a4,sp,144
1c008c76:	973e                	add	a4,a4,a5
1c008c78:	f7874703          	lbu	a4,-136(a4)
1c008c7c:	99be                	add	s3,s3,a5
1c008c7e:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008c82:	bd65                	j	1c008b3a <shake256+0x128>
1c008c84:	4781                	li	a5,0
1c008c86:	00499413          	slli	s0,s3,0x4
1c008c8a:	bf65                	j	1c008c42 <shake256+0x230>
1c008c8c:	06f00513          	li	a0,111
1c008c90:	063010ef          	jal	ra,1c00a4f2 <exit>

1c008c94 <sha3_256>:
1c008c94:	712d                	addi	sp,sp,-288
1c008c96:	10812c23          	sw	s0,280(sp)
1c008c9a:	4699                	li	a3,6
1c008c9c:	842a                	mv	s0,a0
1c008c9e:	0828                	addi	a0,sp,24
1c008ca0:	10112e23          	sw	ra,284(sp)
1c008ca4:	10912a23          	sw	s1,276(sp)
1c008ca8:	11212823          	sw	s2,272(sp)
1c008cac:	11312623          	sw	s3,268(sp)
1c008cb0:	11412423          	sw	s4,264(sp)
1c008cb4:	11512223          	sw	s5,260(sp)
1c008cb8:	11612023          	sw	s6,256(sp)
1c008cbc:	dfde                	sw	s7,252(sp)
1c008cbe:	dde2                	sw	s8,248(sp)
1c008cc0:	dbe6                	sw	s9,244(sp)
1c008cc2:	d9ea                	sw	s10,240(sp)
1c008cc4:	d7ee                	sw	s11,236(sp)
1c008cc6:	3059                	jal	1c00854c <keccak_absorb.constprop.1>
1c008cc8:	082c                	addi	a1,sp,24
1c008cca:	852e                	mv	a0,a1
1c008ccc:	e98ff0ef          	jal	ra,1c008364 <KeccakF1600_StatePermute>
1c008cd0:	4372                	lw	t1,28(sp)
1c008cd2:	5612                	lw	a2,36(sp)
1c008cd4:	5732                	lw	a4,44(sp)
1c008cd6:	5582                	lw	a1,32(sp)
1c008cd8:	56a2                	lw	a3,40(sp)
1c008cda:	59d2                	lw	s3,52(sp)
1c008cdc:	4ae2                	lw	s5,24(sp)
1c008cde:	00835293          	srli	t0,t1,0x8
1c008ce2:	00865f13          	srli	t5,a2,0x8
1c008ce6:	00875893          	srli	a7,a4,0x8
1c008cea:	5a42                	lw	s4,48(sp)
1c008cec:	0085df93          	srli	t6,a1,0x8
1c008cf0:	0086de93          	srli	t4,a3,0x8
1c008cf4:	0ff2f293          	andi	t0,t0,255
1c008cf8:	0fff7f13          	andi	t5,t5,255
1c008cfc:	0ff8f893          	andi	a7,a7,255
1c008d00:	0ff37b93          	andi	s7,t1,255
1c008d04:	0ff67913          	andi	s2,a2,255
1c008d08:	0ff77e13          	andi	t3,a4,255
1c008d0c:	008ad393          	srli	t2,s5,0x8
1c008d10:	0089d513          	srli	a0,s3,0x8
1c008d14:	0fffff93          	andi	t6,t6,255
1c008d18:	0ffefe93          	andi	t4,t4,255
1c008d1c:	02a2                	slli	t0,t0,0x8
1c008d1e:	0f22                	slli	t5,t5,0x8
1c008d20:	08a2                	slli	a7,a7,0x8
1c008d22:	ff0107b7          	lui	a5,0xff010
1c008d26:	17fd                	addi	a5,a5,-1
1c008d28:	0ff5fb13          	andi	s6,a1,255
1c008d2c:	0ff6f493          	andi	s1,a3,255
1c008d30:	005be2b3          	or	t0,s7,t0
1c008d34:	01e96f33          	or	t5,s2,t5
1c008d38:	011e68b3          	or	a7,t3,a7
1c008d3c:	0ff3f393          	andi	t2,t2,255
1c008d40:	0fa2                	slli	t6,t6,0x8
1c008d42:	0ea2                	slli	t4,t4,0x8
1c008d44:	0ff57513          	andi	a0,a0,255
1c008d48:	00ff0bb7          	lui	s7,0xff0
1c008d4c:	0ffafc13          	andi	s8,s5,255
1c008d50:	0ff9f913          	andi	s2,s3,255
1c008d54:	01767bb3          	and	s7,a2,s7
1c008d58:	00f8fe33          	and	t3,a7,a5
1c008d5c:	008a5813          	srli	a6,s4,0x8
1c008d60:	01fb6fb3          	or	t6,s6,t6
1c008d64:	01d4eeb3          	or	t4,s1,t4
1c008d68:	00ff7f33          	and	t5,t5,a5
1c008d6c:	010008b7          	lui	a7,0x1000
1c008d70:	03a2                	slli	t2,t2,0x8
1c008d72:	0522                	slli	a0,a0,0x8
1c008d74:	00ff04b7          	lui	s1,0xff0
1c008d78:	00ff0b37          	lui	s6,0xff0
1c008d7c:	8cf5                	and	s1,s1,a3
1c008d7e:	01677b33          	and	s6,a4,s6
1c008d82:	00a96533          	or	a0,s2,a0
1c008d86:	007c63b3          	or	t2,s8,t2
1c008d8a:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c008d8e:	00fefeb3          	and	t4,t4,a5
1c008d92:	017f6f33          	or	t5,t5,s7
1c008d96:	0ff87813          	andi	a6,a6,255
1c008d9a:	00ff0c37          	lui	s8,0xff0
1c008d9e:	8261                	srli	a2,a2,0x18
1c008da0:	0ffa7d93          	andi	s11,s4,255
1c008da4:	0185fc33          	and	s8,a1,s8
1c008da8:	012f7f33          	and	t5,t5,s2
1c008dac:	00ffffb3          	and	t6,t6,a5
1c008db0:	009eeeb3          	or	t4,t4,s1
1c008db4:	016e6e33          	or	t3,t3,s6
1c008db8:	8361                	srli	a4,a4,0x18
1c008dba:	0822                	slli	a6,a6,0x8
1c008dbc:	00ff0d37          	lui	s10,0xff0
1c008dc0:	82e1                	srli	a3,a3,0x18
1c008dc2:	0662                	slli	a2,a2,0x18
1c008dc4:	01aafd33          	and	s10,s5,s10
1c008dc8:	010de833          	or	a6,s11,a6
1c008dcc:	012efeb3          	and	t4,t4,s2
1c008dd0:	012e7e33          	and	t3,t3,s2
1c008dd4:	00cf6633          	or	a2,t5,a2
1c008dd8:	018ada93          	srli	s5,s5,0x18
1c008ddc:	018fefb3          	or	t6,t6,s8
1c008de0:	06e2                	slli	a3,a3,0x18
1c008de2:	01871c13          	slli	s8,a4,0x18
1c008de6:	00ff0bb7          	lui	s7,0xff0
1c008dea:	00f87b33          	and	s6,a6,a5
1c008dee:	00dee4b3          	or	s1,t4,a3
1c008df2:	017a7bb3          	and	s7,s4,s7
1c008df6:	018e66b3          	or	a3,t3,s8
1c008dfa:	018a9813          	slli	a6,s5,0x18
1c008dfe:	018a5713          	srli	a4,s4,0x18
1c008e02:	00865a93          	srli	s5,a2,0x8
1c008e06:	01065a13          	srli	s4,a2,0x10
1c008e0a:	00ff0cb7          	lui	s9,0xff0
1c008e0e:	8261                	srli	a2,a2,0x18
1c008e10:	c232                	sw	a2,4(sp)
1c008e12:	01937cb3          	and	s9,t1,s9
1c008e16:	0086d613          	srli	a2,a3,0x8
1c008e1a:	00f3f3b3          	and	t2,t2,a5
1c008e1e:	00f2f2b3          	and	t0,t0,a5
1c008e22:	c432                	sw	a2,8(sp)
1c008e24:	01a3e3b3          	or	t2,t2,s10
1c008e28:	0106d613          	srli	a2,a3,0x10
1c008e2c:	0192e2b3          	or	t0,t0,s9
1c008e30:	01835313          	srli	t1,t1,0x18
1c008e34:	81e1                	srli	a1,a1,0x18
1c008e36:	00ff08b7          	lui	a7,0xff0
1c008e3a:	8fe9                	and	a5,a5,a0
1c008e3c:	0123f3b3          	and	t2,t2,s2
1c008e40:	0122f2b3          	and	t0,t0,s2
1c008e44:	012fffb3          	and	t6,t6,s2
1c008e48:	c632                	sw	a2,12(sp)
1c008e4a:	0119f8b3          	and	a7,s3,a7
1c008e4e:	4612                	lw	a2,4(sp)
1c008e50:	01831513          	slli	a0,t1,0x18
1c008e54:	05e2                	slli	a1,a1,0x18
1c008e56:	017b6333          	or	t1,s6,s7
1c008e5a:	0103e833          	or	a6,t2,a6
1c008e5e:	00a2e533          	or	a0,t0,a0
1c008e62:	00bfe5b3          	or	a1,t6,a1
1c008e66:	0117e8b3          	or	a7,a5,a7
1c008e6a:	01237333          	and	t1,t1,s2
1c008e6e:	0128f8b3          	and	a7,a7,s2
1c008e72:	00885d93          	srli	s11,a6,0x8
1c008e76:	01085d13          	srli	s10,a6,0x10
1c008e7a:	00855c93          	srli	s9,a0,0x8
1c008e7e:	01055c13          	srli	s8,a0,0x10
1c008e82:	0085db93          	srli	s7,a1,0x8
1c008e86:	0105db13          	srli	s6,a1,0x10
1c008e8a:	0104d913          	srli	s2,s1,0x10
1c008e8e:	0189d793          	srli	a5,s3,0x18
1c008e92:	8161                	srli	a0,a0,0x18
1c008e94:	0084d993          	srli	s3,s1,0x8
1c008e98:	81e1                	srli	a1,a1,0x18
1c008e9a:	80e1                	srli	s1,s1,0x18
1c008e9c:	01885813          	srli	a6,a6,0x18
1c008ea0:	01b400a3          	sb	s11,1(s0)
1c008ea4:	01a40123          	sb	s10,2(s0)
1c008ea8:	019402a3          	sb	s9,5(s0)
1c008eac:	01840323          	sb	s8,6(s0)
1c008eb0:	00a403a3          	sb	a0,7(s0)
1c008eb4:	017404a3          	sb	s7,9(s0)
1c008eb8:	01640523          	sb	s6,10(s0)
1c008ebc:	00b405a3          	sb	a1,11(s0)
1c008ec0:	015406a3          	sb	s5,13(s0)
1c008ec4:	01440723          	sb	s4,14(s0)
1c008ec8:	00c407a3          	sb	a2,15(s0)
1c008ecc:	013408a3          	sb	s3,17(s0)
1c008ed0:	01240923          	sb	s2,18(s0)
1c008ed4:	009409a3          	sb	s1,19(s0)
1c008ed8:	00740023          	sb	t2,0(s0)
1c008edc:	010401a3          	sb	a6,3(s0)
1c008ee0:	00540223          	sb	t0,4(s0)
1c008ee4:	01f40423          	sb	t6,8(s0)
1c008ee8:	01e40623          	sb	t5,12(s0)
1c008eec:	01d40823          	sb	t4,16(s0)
1c008ef0:	01c40a23          	sb	t3,20(s0)
1c008ef4:	4622                	lw	a2,8(sp)
1c008ef6:	0762                	slli	a4,a4,0x18
1c008ef8:	07e2                	slli	a5,a5,0x18
1c008efa:	00c40aa3          	sb	a2,21(s0)
1c008efe:	4632                	lw	a2,12(sp)
1c008f00:	00e36733          	or	a4,t1,a4
1c008f04:	00f8e7b3          	or	a5,a7,a5
1c008f08:	82e1                	srli	a3,a3,0x18
1c008f0a:	00c40b23          	sb	a2,22(s0)
1c008f0e:	00d40ba3          	sb	a3,23(s0)
1c008f12:	00875513          	srli	a0,a4,0x8
1c008f16:	01075593          	srli	a1,a4,0x10
1c008f1a:	0087d613          	srli	a2,a5,0x8
1c008f1e:	0107d693          	srli	a3,a5,0x10
1c008f22:	8361                	srli	a4,a4,0x18
1c008f24:	83e1                	srli	a5,a5,0x18
1c008f26:	00640c23          	sb	t1,24(s0)
1c008f2a:	00a40ca3          	sb	a0,25(s0)
1c008f2e:	00b40d23          	sb	a1,26(s0)
1c008f32:	00e40da3          	sb	a4,27(s0)
1c008f36:	01140e23          	sb	a7,28(s0)
1c008f3a:	00c40ea3          	sb	a2,29(s0)
1c008f3e:	00d40f23          	sb	a3,30(s0)
1c008f42:	00f40fa3          	sb	a5,31(s0)
1c008f46:	11c12083          	lw	ra,284(sp)
1c008f4a:	11812403          	lw	s0,280(sp)
1c008f4e:	11412483          	lw	s1,276(sp)
1c008f52:	11012903          	lw	s2,272(sp)
1c008f56:	10c12983          	lw	s3,268(sp)
1c008f5a:	10812a03          	lw	s4,264(sp)
1c008f5e:	10412a83          	lw	s5,260(sp)
1c008f62:	10012b03          	lw	s6,256(sp)
1c008f66:	5bfe                	lw	s7,252(sp)
1c008f68:	5c6e                	lw	s8,248(sp)
1c008f6a:	5cde                	lw	s9,244(sp)
1c008f6c:	5d4e                	lw	s10,240(sp)
1c008f6e:	5dbe                	lw	s11,236(sp)
1c008f70:	6115                	addi	sp,sp,288
1c008f72:	8082                	ret

1c008f74 <sha3_512>:
1c008f74:	7105                	addi	sp,sp,-480
1c008f76:	1c812c23          	sw	s0,472(sp)
1c008f7a:	1d312623          	sw	s3,460(sp)
1c008f7e:	1d412423          	sw	s4,456(sp)
1c008f82:	1c112e23          	sw	ra,476(sp)
1c008f86:	1c912a23          	sw	s1,468(sp)
1c008f8a:	1d212823          	sw	s2,464(sp)
1c008f8e:	1d512223          	sw	s5,452(sp)
1c008f92:	1d612023          	sw	s6,448(sp)
1c008f96:	1b712e23          	sw	s7,444(sp)
1c008f9a:	1b812c23          	sw	s8,440(sp)
1c008f9e:	1b912a23          	sw	s9,436(sp)
1c008fa2:	1ba12823          	sw	s10,432(sp)
1c008fa6:	1bb12623          	sw	s11,428(sp)
1c008faa:	842a                	mv	s0,a0
1c008fac:	8a32                	mv	s4,a2
1c008fae:	0d810993          	addi	s3,sp,216
1c008fb2:	081c                	addi	a5,sp,16
1c008fb4:	4681                	li	a3,0
1c008fb6:	4701                	li	a4,0
1c008fb8:	c394                	sw	a3,0(a5)
1c008fba:	c3d8                	sw	a4,4(a5)
1c008fbc:	07a1                	addi	a5,a5,8
1c008fbe:	ff379be3          	bne	a5,s3,1c008fb4 <sha3_512+0x40>
1c008fc2:	04700793          	li	a5,71
1c008fc6:	0947f463          	bgeu	a5,s4,1c00904e <sha3_512+0xda>
1c008fca:	04858a93          	addi	s5,a1,72
1c008fce:	8956                	mv	s2,s5
1c008fd0:	04700493          	li	s1,71
1c008fd4:	0818                	addi	a4,sp,16
1c008fd6:	0015c783          	lbu	a5,1(a1)
1c008fda:	0025ce03          	lbu	t3,2(a1)
1c008fde:	0055c803          	lbu	a6,5(a1)
1c008fe2:	0045cf03          	lbu	t5,4(a1)
1c008fe6:	0065c503          	lbu	a0,6(a1)
1c008fea:	0005ce83          	lbu	t4,0(a1)
1c008fee:	0035c603          	lbu	a2,3(a1)
1c008ff2:	0075c683          	lbu	a3,7(a1)
1c008ff6:	07a2                	slli	a5,a5,0x8
1c008ff8:	0e42                	slli	t3,t3,0x10
1c008ffa:	0822                	slli	a6,a6,0x8
1c008ffc:	00072303          	lw	t1,0(a4)
1c009000:	00472883          	lw	a7,4(a4)
1c009004:	01c7e7b3          	or	a5,a5,t3
1c009008:	01e86833          	or	a6,a6,t5
1c00900c:	0542                	slli	a0,a0,0x10
1c00900e:	01d7e7b3          	or	a5,a5,t4
1c009012:	0662                	slli	a2,a2,0x18
1c009014:	01056533          	or	a0,a0,a6
1c009018:	06e2                	slli	a3,a3,0x18
1c00901a:	8fd1                	or	a5,a5,a2
1c00901c:	8ec9                	or	a3,a3,a0
1c00901e:	00f347b3          	xor	a5,t1,a5
1c009022:	00d8c6b3          	xor	a3,a7,a3
1c009026:	c31c                	sw	a5,0(a4)
1c009028:	c354                	sw	a3,4(a4)
1c00902a:	05a1                	addi	a1,a1,8
1c00902c:	0721                	addi	a4,a4,8
1c00902e:	fb2594e3          	bne	a1,s2,1c008fd6 <sha3_512+0x62>
1c009032:	080c                	addi	a1,sp,16
1c009034:	852e                	mv	a0,a1
1c009036:	b2eff0ef          	jal	ra,1c008364 <KeccakF1600_StatePermute>
1c00903a:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00903e:	04890913          	addi	s2,s2,72
1c009042:	85d6                	mv	a1,s5
1c009044:	0144f563          	bgeu	s1,s4,1c00904e <sha3_512+0xda>
1c009048:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00904c:	b761                	j	1c008fd4 <sha3_512+0x60>
1c00904e:	1218                	addi	a4,sp,288
1c009050:	87ce                	mv	a5,s3
1c009052:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c009056:	0791                	addi	a5,a5,4
1c009058:	fee79de3          	bne	a5,a4,1c009052 <sha3_512+0xde>
1c00905c:	080a0063          	beqz	s4,1c0090dc <sha3_512+0x168>
1c009060:	fffa0793          	addi	a5,s4,-1
1c009064:	4709                	li	a4,2
1c009066:	68f77563          	bgeu	a4,a5,1c0096f0 <sha3_512+0x77c>
1c00906a:	ffca7813          	andi	a6,s4,-4
1c00906e:	87ae                	mv	a5,a1
1c009070:	982e                	add	a6,a6,a1
1c009072:	0017c603          	lbu	a2,1(a5)
1c009076:	0007c503          	lbu	a0,0(a5)
1c00907a:	0027c683          	lbu	a3,2(a5)
1c00907e:	0037c703          	lbu	a4,3(a5)
1c009082:	0622                	slli	a2,a2,0x8
1c009084:	8e49                	or	a2,a2,a0
1c009086:	06c2                	slli	a3,a3,0x10
1c009088:	8ed1                	or	a3,a3,a2
1c00908a:	0762                	slli	a4,a4,0x18
1c00908c:	8f55                	or	a4,a4,a3
1c00908e:	00e9a023          	sw	a4,0(s3)
1c009092:	0791                	addi	a5,a5,4
1c009094:	0991                	addi	s3,s3,4
1c009096:	fd079ee3          	bne	a5,a6,1c009072 <sha3_512+0xfe>
1c00909a:	ffca7793          	andi	a5,s4,-4
1c00909e:	03478f63          	beq	a5,s4,1c0090dc <sha3_512+0x168>
1c0090a2:	00f58733          	add	a4,a1,a5
1c0090a6:	00074603          	lbu	a2,0(a4)
1c0090aa:	1314                	addi	a3,sp,416
1c0090ac:	96be                	add	a3,a3,a5
1c0090ae:	00178713          	addi	a4,a5,1
1c0090b2:	f2c68c23          	sb	a2,-200(a3)
1c0090b6:	03477363          	bgeu	a4,s4,1c0090dc <sha3_512+0x168>
1c0090ba:	00e586b3          	add	a3,a1,a4
1c0090be:	0006c683          	lbu	a3,0(a3)
1c0090c2:	1310                	addi	a2,sp,416
1c0090c4:	9732                	add	a4,a4,a2
1c0090c6:	0789                	addi	a5,a5,2
1c0090c8:	f2d70c23          	sb	a3,-200(a4)
1c0090cc:	0147f863          	bgeu	a5,s4,1c0090dc <sha3_512+0x168>
1c0090d0:	95be                	add	a1,a1,a5
1c0090d2:	0005c703          	lbu	a4,0(a1)
1c0090d6:	97b2                	add	a5,a5,a2
1c0090d8:	f2e78c23          	sb	a4,-200(a5)
1c0090dc:	131c                	addi	a5,sp,416
1c0090de:	9a3e                	add	s4,s4,a5
1c0090e0:	4799                	li	a5,6
1c0090e2:	f2fa0c23          	sb	a5,-200(s4)
1c0090e6:	0da14703          	lbu	a4,218(sp)
1c0090ea:	0d914f83          	lbu	t6,217(sp)
1c0090ee:	0e214783          	lbu	a5,226(sp)
1c0090f2:	0e114e83          	lbu	t4,225(sp)
1c0090f6:	0e514303          	lbu	t1,229(sp)
1c0090fa:	0e414383          	lbu	t2,228(sp)
1c0090fe:	0e614803          	lbu	a6,230(sp)
1c009102:	0d814283          	lbu	t0,216(sp)
1c009106:	0e014f03          	lbu	t5,224(sp)
1c00910a:	0db14503          	lbu	a0,219(sp)
1c00910e:	0e314603          	lbu	a2,227(sp)
1c009112:	0e714683          	lbu	a3,231(sp)
1c009116:	0fa2                	slli	t6,t6,0x8
1c009118:	0ea2                	slli	t4,t4,0x8
1c00911a:	0742                	slli	a4,a4,0x10
1c00911c:	07c2                	slli	a5,a5,0x10
1c00911e:	0322                	slli	t1,t1,0x8
1c009120:	00736333          	or	t1,t1,t2
1c009124:	01f76733          	or	a4,a4,t6
1c009128:	01d7e7b3          	or	a5,a5,t4
1c00912c:	0842                	slli	a6,a6,0x10
1c00912e:	0dd14e03          	lbu	t3,221(sp)
1c009132:	00576733          	or	a4,a4,t0
1c009136:	01e7e7b3          	or	a5,a5,t5
1c00913a:	00686833          	or	a6,a6,t1
1c00913e:	0662                	slli	a2,a2,0x18
1c009140:	06e2                	slli	a3,a3,0x18
1c009142:	0562                	slli	a0,a0,0x18
1c009144:	0dc14483          	lbu	s1,220(sp)
1c009148:	0de14883          	lbu	a7,222(sp)
1c00914c:	8d59                	or	a0,a0,a4
1c00914e:	00f66733          	or	a4,a2,a5
1c009152:	0106e7b3          	or	a5,a3,a6
1c009156:	46c2                	lw	a3,16(sp)
1c009158:	0df14583          	lbu	a1,223(sp)
1c00915c:	0e22                	slli	t3,t3,0x8
1c00915e:	009e6e33          	or	t3,t3,s1
1c009162:	8d35                	xor	a0,a0,a3
1c009164:	08c2                	slli	a7,a7,0x10
1c009166:	46d2                	lw	a3,20(sp)
1c009168:	01c8e8b3          	or	a7,a7,t3
1c00916c:	05e2                	slli	a1,a1,0x18
1c00916e:	0115e5b3          	or	a1,a1,a7
1c009172:	8db5                	xor	a1,a1,a3
1c009174:	46e2                	lw	a3,24(sp)
1c009176:	0ea14803          	lbu	a6,234(sp)
1c00917a:	0e914483          	lbu	s1,233(sp)
1c00917e:	8eb9                	xor	a3,a3,a4
1c009180:	4772                	lw	a4,28(sp)
1c009182:	0e814a83          	lbu	s5,232(sp)
1c009186:	0eb14a03          	lbu	s4,235(sp)
1c00918a:	8f3d                	xor	a4,a4,a5
1c00918c:	0ec14d03          	lbu	s10,236(sp)
1c009190:	11f14783          	lbu	a5,287(sp)
1c009194:	0ed14903          	lbu	s2,237(sp)
1c009198:	c82a                	sw	a0,16(sp)
1c00919a:	ca2e                	sw	a1,20(sp)
1c00919c:	cc36                	sw	a3,24(sp)
1c00919e:	ce3a                	sw	a4,28(sp)
1c0091a0:	0ee14f83          	lbu	t6,238(sp)
1c0091a4:	0f214283          	lbu	t0,242(sp)
1c0091a8:	0f114f03          	lbu	t5,241(sp)
1c0091ac:	0fd14883          	lbu	a7,253(sp)
1c0091b0:	0fc14b83          	lbu	s7,252(sp)
1c0091b4:	04a2                	slli	s1,s1,0x8
1c0091b6:	0842                	slli	a6,a6,0x10
1c0091b8:	02c2                	slli	t0,t0,0x10
1c0091ba:	08a2                	slli	a7,a7,0x8
1c0091bc:	00986833          	or	a6,a6,s1
1c0091c0:	0f22                	slli	t5,t5,0x8
1c0091c2:	01e2ef33          	or	t5,t0,t5
1c0091c6:	01586833          	or	a6,a6,s5
1c0091ca:	0178e2b3          	or	t0,a7,s7
1c0091ce:	018a1893          	slli	a7,s4,0x18
1c0091d2:	0108e833          	or	a6,a7,a6
1c0091d6:	5882                	lw	a7,32(sp)
1c0091d8:	0ef14503          	lbu	a0,239(sp)
1c0091dc:	0922                	slli	s2,s2,0x8
1c0091de:	01a96933          	or	s2,s2,s10
1c0091e2:	0108c8b3          	xor	a7,a7,a6
1c0091e6:	0fc2                	slli	t6,t6,0x10
1c0091e8:	5812                	lw	a6,36(sp)
1c0091ea:	0f014983          	lbu	s3,240(sp)
1c0091ee:	0f314583          	lbu	a1,243(sp)
1c0091f2:	012fefb3          	or	t6,t6,s2
1c0091f6:	0562                	slli	a0,a0,0x18
1c0091f8:	0f514e83          	lbu	t4,245(sp)
1c0091fc:	01f56533          	or	a0,a0,t6
1c009200:	0f414c83          	lbu	s9,244(sp)
1c009204:	0f614c03          	lbu	s8,246(sp)
1c009208:	00a84833          	xor	a6,a6,a0
1c00920c:	5522                	lw	a0,40(sp)
1c00920e:	0f714603          	lbu	a2,247(sp)
1c009212:	013f6f33          	or	t5,t5,s3
1c009216:	05e2                	slli	a1,a1,0x18
1c009218:	0f914e03          	lbu	t3,249(sp)
1c00921c:	0fa14303          	lbu	t1,250(sp)
1c009220:	01e5e5b3          	or	a1,a1,t5
1c009224:	0ea2                	slli	t4,t4,0x8
1c009226:	019ee4b3          	or	s1,t4,s9
1c00922a:	8d2d                	xor	a0,a0,a1
1c00922c:	010c1e93          	slli	t4,s8,0x10
1c009230:	55b2                	lw	a1,44(sp)
1c009232:	0f814383          	lbu	t2,248(sp)
1c009236:	0fb14683          	lbu	a3,251(sp)
1c00923a:	009eeeb3          	or	t4,t4,s1
1c00923e:	0662                	slli	a2,a2,0x18
1c009240:	01d66633          	or	a2,a2,t4
1c009244:	0342                	slli	t1,t1,0x10
1c009246:	0e22                	slli	t3,t3,0x8
1c009248:	0fe14b03          	lbu	s6,254(sp)
1c00924c:	8db1                	xor	a1,a1,a2
1c00924e:	006e6e33          	or	t3,t3,t1
1c009252:	5642                	lw	a2,48(sp)
1c009254:	0ff14703          	lbu	a4,255(sp)
1c009258:	007e6e33          	or	t3,t3,t2
1c00925c:	06e2                	slli	a3,a3,0x18
1c00925e:	01c6e6b3          	or	a3,a3,t3
1c009262:	8e35                	xor	a2,a2,a3
1c009264:	010b1313          	slli	t1,s6,0x10
1c009268:	56d2                	lw	a3,52(sp)
1c00926a:	00536333          	or	t1,t1,t0
1c00926e:	0762                	slli	a4,a4,0x18
1c009270:	00676733          	or	a4,a4,t1
1c009274:	8f35                	xor	a4,a4,a3
1c009276:	10114e83          	lbu	t4,257(sp)
1c00927a:	10214a83          	lbu	s5,258(sp)
1c00927e:	d046                	sw	a7,32(sp)
1c009280:	d242                	sw	a6,36(sp)
1c009282:	d42a                	sw	a0,40(sp)
1c009284:	d62e                	sw	a1,44(sp)
1c009286:	d832                	sw	a2,48(sp)
1c009288:	da3a                	sw	a4,52(sp)
1c00928a:	10014903          	lbu	s2,256(sp)
1c00928e:	10914303          	lbu	t1,265(sp)
1c009292:	10a14983          	lbu	s3,266(sp)
1c009296:	10814383          	lbu	t2,264(sp)
1c00929a:	10514f83          	lbu	t6,261(sp)
1c00929e:	10b14603          	lbu	a2,267(sp)
1c0092a2:	10414b03          	lbu	s6,260(sp)
1c0092a6:	10614e03          	lbu	t3,262(sp)
1c0092aa:	09c2                	slli	s3,s3,0x10
1c0092ac:	0322                	slli	t1,t1,0x8
1c0092ae:	10714583          	lbu	a1,263(sp)
1c0092b2:	01336333          	or	t1,t1,s3
1c0092b6:	00736333          	or	t1,t1,t2
1c0092ba:	10d14f03          	lbu	t5,269(sp)
1c0092be:	0fa2                	slli	t6,t6,0x8
1c0092c0:	0662                	slli	a2,a2,0x18
1c0092c2:	10c14a03          	lbu	s4,268(sp)
1c0092c6:	016fefb3          	or	t6,t6,s6
1c0092ca:	11114803          	lbu	a6,273(sp)
1c0092ce:	11214483          	lbu	s1,274(sp)
1c0092d2:	10e14883          	lbu	a7,270(sp)
1c0092d6:	00666633          	or	a2,a2,t1
1c0092da:	0e42                	slli	t3,t3,0x10
1c0092dc:	5372                	lw	t1,60(sp)
1c0092de:	01fe6e33          	or	t3,t3,t6
1c0092e2:	10f14683          	lbu	a3,271(sp)
1c0092e6:	05e2                	slli	a1,a1,0x18
1c0092e8:	11014283          	lbu	t0,272(sp)
1c0092ec:	11314703          	lbu	a4,275(sp)
1c0092f0:	01c5e5b3          	or	a1,a1,t3
1c0092f4:	0f22                	slli	t5,t5,0x8
1c0092f6:	014f6f33          	or	t5,t5,s4
1c0092fa:	00b34333          	xor	t1,t1,a1
1c0092fe:	04c2                	slli	s1,s1,0x10
1c009300:	4596                	lw	a1,68(sp)
1c009302:	0822                	slli	a6,a6,0x8
1c009304:	08c2                	slli	a7,a7,0x10
1c009306:	10314503          	lbu	a0,259(sp)
1c00930a:	01e8e8b3          	or	a7,a7,t5
1c00930e:	00986833          	or	a6,a6,s1
1c009312:	06e2                	slli	a3,a3,0x18
1c009314:	00586833          	or	a6,a6,t0
1c009318:	0116e6b3          	or	a3,a3,a7
1c00931c:	0ac2                	slli	s5,s5,0x10
1c00931e:	0ea2                	slli	t4,t4,0x8
1c009320:	0762                	slli	a4,a4,0x18
1c009322:	5e62                	lw	t3,56(sp)
1c009324:	8db5                	xor	a1,a1,a3
1c009326:	015eeeb3          	or	t4,t4,s5
1c00932a:	46a6                	lw	a3,72(sp)
1c00932c:	01076733          	or	a4,a4,a6
1c009330:	4806                	lw	a6,64(sp)
1c009332:	012eeeb3          	or	t4,t4,s2
1c009336:	0562                	slli	a0,a0,0x18
1c009338:	01d56533          	or	a0,a0,t4
1c00933c:	00ae4e33          	xor	t3,t3,a0
1c009340:	00c84833          	xor	a6,a6,a2
1c009344:	8f35                	xor	a4,a4,a3
1c009346:	11414f03          	lbu	t5,276(sp)
1c00934a:	11514883          	lbu	a7,277(sp)
1c00934e:	11614503          	lbu	a0,278(sp)
1c009352:	11714603          	lbu	a2,279(sp)
1c009356:	dc72                	sw	t3,56(sp)
1c009358:	de1a                	sw	t1,60(sp)
1c00935a:	c0c2                	sw	a6,64(sp)
1c00935c:	c2ae                	sw	a1,68(sp)
1c00935e:	c4ba                	sw	a4,72(sp)
1c009360:	11914703          	lbu	a4,281(sp)
1c009364:	11a14303          	lbu	t1,282(sp)
1c009368:	11814e03          	lbu	t3,280(sp)
1c00936c:	11b14683          	lbu	a3,283(sp)
1c009370:	0342                	slli	t1,t1,0x10
1c009372:	0722                	slli	a4,a4,0x8
1c009374:	00676733          	or	a4,a4,t1
1c009378:	01c76733          	or	a4,a4,t3
1c00937c:	06e2                	slli	a3,a3,0x18
1c00937e:	08a2                	slli	a7,a7,0x8
1c009380:	01e8e8b3          	or	a7,a7,t5
1c009384:	8f55                	or	a4,a4,a3
1c009386:	0542                	slli	a0,a0,0x10
1c009388:	46b6                	lw	a3,76(sp)
1c00938a:	01156533          	or	a0,a0,a7
1c00938e:	0662                	slli	a2,a2,0x18
1c009390:	11d14803          	lbu	a6,285(sp)
1c009394:	8e49                	or	a2,a2,a0
1c009396:	11c14e83          	lbu	t4,284(sp)
1c00939a:	8e35                	xor	a2,a2,a3
1c00939c:	11e14583          	lbu	a1,286(sp)
1c0093a0:	46c6                	lw	a3,80(sp)
1c0093a2:	0822                	slli	a6,a6,0x8
1c0093a4:	01d86833          	or	a6,a6,t4
1c0093a8:	8eb9                	xor	a3,a3,a4
1c0093aa:	0807e793          	ori	a5,a5,128
1c0093ae:	4756                	lw	a4,84(sp)
1c0093b0:	05c2                	slli	a1,a1,0x10
1c0093b2:	0105e5b3          	or	a1,a1,a6
1c0093b6:	07e2                	slli	a5,a5,0x18
1c0093b8:	8fcd                	or	a5,a5,a1
1c0093ba:	080c                	addi	a1,sp,16
1c0093bc:	8fb9                	xor	a5,a5,a4
1c0093be:	852e                	mv	a0,a1
1c0093c0:	c6b2                	sw	a2,76(sp)
1c0093c2:	c8b6                	sw	a3,80(sp)
1c0093c4:	cabe                	sw	a5,84(sp)
1c0093c6:	f9ffe0ef          	jal	ra,1c008364 <KeccakF1600_StatePermute>
1c0093ca:	4552                	lw	a0,20(sp)
1c0093cc:	45f2                	lw	a1,28(sp)
1c0093ce:	5612                	lw	a2,36(sp)
1c0093d0:	56b2                	lw	a3,44(sp)
1c0093d2:	57d2                	lw	a5,52(sp)
1c0093d4:	5772                	lw	a4,60(sp)
1c0093d6:	00855b13          	srli	s6,a0,0x8
1c0093da:	01055a93          	srli	s5,a0,0x10
1c0093de:	01855a13          	srli	s4,a0,0x18
1c0093e2:	0085d993          	srli	s3,a1,0x8
1c0093e6:	0105d913          	srli	s2,a1,0x10
1c0093ea:	0185d493          	srli	s1,a1,0x18
1c0093ee:	0ca10e23          	sb	a0,220(sp)
1c0093f2:	0d610ea3          	sb	s6,221(sp)
1c0093f6:	0d510f23          	sb	s5,222(sp)
1c0093fa:	0d410fa3          	sb	s4,223(sp)
1c0093fe:	00865393          	srli	t2,a2,0x8
1c009402:	01065293          	srli	t0,a2,0x10
1c009406:	01865f93          	srli	t6,a2,0x18
1c00940a:	0086df13          	srli	t5,a3,0x8
1c00940e:	0106de93          	srli	t4,a3,0x10
1c009412:	0186de13          	srli	t3,a3,0x18
1c009416:	0087d313          	srli	t1,a5,0x8
1c00941a:	0107d893          	srli	a7,a5,0x10
1c00941e:	0187d813          	srli	a6,a5,0x18
1c009422:	0eb10223          	sb	a1,228(sp)
1c009426:	0f3102a3          	sb	s3,229(sp)
1c00942a:	0f210323          	sb	s2,230(sp)
1c00942e:	0e9103a3          	sb	s1,231(sp)
1c009432:	45c2                	lw	a1,16(sp)
1c009434:	4536                	lw	a0,76(sp)
1c009436:	0ec10623          	sb	a2,236(sp)
1c00943a:	0e7106a3          	sb	t2,237(sp)
1c00943e:	467e                	lw	a2,220(sp)
1c009440:	0e510723          	sb	t0,238(sp)
1c009444:	0ff107a3          	sb	t6,239(sp)
1c009448:	0ed10a23          	sb	a3,244(sp)
1c00944c:	0fe10aa3          	sb	t5,245(sp)
1c009450:	46e2                	lw	a3,24(sp)
1c009452:	0fd10b23          	sb	t4,246(sp)
1c009456:	0fc10ba3          	sb	t3,247(sp)
1c00945a:	0e610ea3          	sb	t1,253(sp)
1c00945e:	0f110f23          	sb	a7,254(sp)
1c009462:	0f010fa3          	sb	a6,255(sp)
1c009466:	10e10223          	sb	a4,260(sp)
1c00946a:	4816                	lw	a6,68(sp)
1c00946c:	0ef10e23          	sb	a5,252(sp)
1c009470:	579e                	lw	a5,228(sp)
1c009472:	00875d93          	srli	s11,a4,0x8
1c009476:	01075d13          	srli	s10,a4,0x10
1c00947a:	00885c93          	srli	s9,a6,0x8
1c00947e:	01085c13          	srli	s8,a6,0x10
1c009482:	01885b93          	srli	s7,a6,0x18
1c009486:	00855b13          	srli	s6,a0,0x8
1c00948a:	01055a93          	srli	s5,a0,0x10
1c00948e:	01855a13          	srli	s4,a0,0x18
1c009492:	0085d993          	srli	s3,a1,0x8
1c009496:	0105d913          	srli	s2,a1,0x10
1c00949a:	0185d493          	srli	s1,a1,0x18
1c00949e:	00865393          	srli	t2,a2,0x8
1c0094a2:	01065293          	srli	t0,a2,0x10
1c0094a6:	01865f93          	srli	t6,a2,0x18
1c0094aa:	0086df13          	srli	t5,a3,0x8
1c0094ae:	0106de93          	srli	t4,a3,0x10
1c0094b2:	0186de13          	srli	t3,a3,0x18
1c0094b6:	0087d313          	srli	t1,a5,0x8
1c0094ba:	0107d893          	srli	a7,a5,0x10
1c0094be:	00f40623          	sb	a5,12(s0)
1c0094c2:	8361                	srli	a4,a4,0x18
1c0094c4:	83e1                	srli	a5,a5,0x18
1c0094c6:	11b102a3          	sb	s11,261(sp)
1c0094ca:	11a10323          	sb	s10,262(sp)
1c0094ce:	10e103a3          	sb	a4,263(sp)
1c0094d2:	11010623          	sb	a6,268(sp)
1c0094d6:	4706                	lw	a4,64(sp)
1c0094d8:	119106a3          	sb	s9,269(sp)
1c0094dc:	11810723          	sb	s8,270(sp)
1c0094e0:	117107a3          	sb	s7,271(sp)
1c0094e4:	10a10a23          	sb	a0,276(sp)
1c0094e8:	11610aa3          	sb	s6,277(sp)
1c0094ec:	11510b23          	sb	s5,278(sp)
1c0094f0:	11410ba3          	sb	s4,279(sp)
1c0094f4:	00b40023          	sb	a1,0(s0)
1c0094f8:	4a26                	lw	s4,72(sp)
1c0094fa:	55be                	lw	a1,236(sp)
1c0094fc:	013400a3          	sb	s3,1(s0)
1c009500:	01240123          	sb	s2,2(s0)
1c009504:	009401a3          	sb	s1,3(s0)
1c009508:	00c40223          	sb	a2,4(s0)
1c00950c:	007402a3          	sb	t2,5(s0)
1c009510:	565e                	lw	a2,244(sp)
1c009512:	00540323          	sb	t0,6(s0)
1c009516:	01f403a3          	sb	t6,7(s0)
1c00951a:	01e404a3          	sb	t5,9(s0)
1c00951e:	01d40523          	sb	t4,10(s0)
1c009522:	01c405a3          	sb	t3,11(s0)
1c009526:	006406a3          	sb	t1,13(s0)
1c00952a:	01140723          	sb	a7,14(s0)
1c00952e:	00f407a3          	sb	a5,15(s0)
1c009532:	00d40423          	sb	a3,8(s0)
1c009536:	56fe                	lw	a3,252(sp)
1c009538:	5502                	lw	a0,32(sp)
1c00953a:	54a2                	lw	s1,40(sp)
1c00953c:	0185db13          	srli	s6,a1,0x18
1c009540:	00855d93          	srli	s11,a0,0x8
1c009544:	01055d13          	srli	s10,a0,0x10
1c009548:	01855c93          	srli	s9,a0,0x18
1c00954c:	5522                	lw	a0,40(sp)
1c00954e:	5842                	lw	a6,48(sp)
1c009550:	0085dc13          	srli	s8,a1,0x8
1c009554:	00855a93          	srli	s5,a0,0x8
1c009558:	8141                	srli	a0,a0,0x10
1c00955a:	c42a                	sw	a0,8(sp)
1c00955c:	5562                	lw	a0,56(sp)
1c00955e:	0105db93          	srli	s7,a1,0x10
1c009562:	00b40a23          	sb	a1,20(s0)
1c009566:	8161                	srli	a0,a0,0x18
1c009568:	c22a                	sw	a0,4(sp)
1c00956a:	5502                	lw	a0,32(sp)
1c00956c:	45a2                	lw	a1,8(sp)
1c00956e:	01640ba3          	sb	s6,23(s0)
1c009572:	c62a                	sw	a0,12(sp)
1c009574:	00c14503          	lbu	a0,12(sp)
1c009578:	5b22                	lw	s6,40(sp)
1c00957a:	0184d993          	srli	s3,s1,0x18
1c00957e:	00865913          	srli	s2,a2,0x8
1c009582:	01065493          	srli	s1,a2,0x10
1c009586:	01865393          	srli	t2,a2,0x18
1c00958a:	00a10623          	sb	a0,12(sp)
1c00958e:	0ff57513          	andi	a0,a0,255
1c009592:	10412783          	lw	a5,260(sp)
1c009596:	00885293          	srli	t0,a6,0x8
1c00959a:	01085f93          	srli	t6,a6,0x10
1c00959e:	01885f13          	srli	t5,a6,0x18
1c0095a2:	0086de93          	srli	t4,a3,0x8
1c0095a6:	5862                	lw	a6,56(sp)
1c0095a8:	0106de13          	srli	t3,a3,0x10
1c0095ac:	0186d313          	srli	t1,a3,0x18
1c0095b0:	00a40823          	sb	a0,16(s0)
1c0095b4:	01b408a3          	sb	s11,17(s0)
1c0095b8:	01a40923          	sb	s10,18(s0)
1c0095bc:	019409a3          	sb	s9,19(s0)
1c0095c0:	01840aa3          	sb	s8,21(s0)
1c0095c4:	01740b23          	sb	s7,22(s0)
1c0095c8:	01640c23          	sb	s6,24(s0)
1c0095cc:	01540ca3          	sb	s5,25(s0)
1c0095d0:	00b40d23          	sb	a1,26(s0)
1c0095d4:	01340da3          	sb	s3,27(s0)
1c0095d8:	01240ea3          	sb	s2,29(s0)
1c0095dc:	00940f23          	sb	s1,30(s0)
1c0095e0:	00740fa3          	sb	t2,31(s0)
1c0095e4:	00c40e23          	sb	a2,28(s0)
1c0095e8:	5642                	lw	a2,48(sp)
1c0095ea:	02d40223          	sb	a3,36(s0)
1c0095ee:	56e2                	lw	a3,56(sp)
1c0095f0:	02c40023          	sb	a2,32(s0)
1c0095f4:	10c12603          	lw	a2,268(sp)
1c0095f8:	02d40423          	sb	a3,40(s0)
1c0095fc:	4692                	lw	a3,4(sp)
1c0095fe:	00885893          	srli	a7,a6,0x8
1c009602:	025400a3          	sb	t0,33(s0)
1c009606:	02d405a3          	sb	a3,43(s0)
1c00960a:	11412683          	lw	a3,276(sp)
1c00960e:	03f40123          	sb	t6,34(s0)
1c009612:	03e401a3          	sb	t5,35(s0)
1c009616:	03d402a3          	sb	t4,37(s0)
1c00961a:	03c40323          	sb	t3,38(s0)
1c00961e:	026403a3          	sb	t1,39(s0)
1c009622:	02f40623          	sb	a5,44(s0)
1c009626:	0087d993          	srli	s3,a5,0x8
1c00962a:	0107d913          	srli	s2,a5,0x10
1c00962e:	01085813          	srli	a6,a6,0x10
1c009632:	00875493          	srli	s1,a4,0x8
1c009636:	008a5e13          	srli	t3,s4,0x8
1c00963a:	010a5313          	srli	t1,s4,0x10
1c00963e:	83e1                	srli	a5,a5,0x18
1c009640:	01075393          	srli	t2,a4,0x10
1c009644:	01875293          	srli	t0,a4,0x18
1c009648:	00865f93          	srli	t6,a2,0x8
1c00964c:	01065f13          	srli	t5,a2,0x10
1c009650:	01865e93          	srli	t4,a2,0x18
1c009654:	031404a3          	sb	a7,41(s0)
1c009658:	03040523          	sb	a6,42(s0)
1c00965c:	033406a3          	sb	s3,45(s0)
1c009660:	03240723          	sb	s2,46(s0)
1c009664:	029408a3          	sb	s1,49(s0)
1c009668:	03440c23          	sb	s4,56(s0)
1c00966c:	018a5893          	srli	a7,s4,0x18
1c009670:	02f407a3          	sb	a5,47(s0)
1c009674:	02e40823          	sb	a4,48(s0)
1c009678:	02740923          	sb	t2,50(s0)
1c00967c:	025409a3          	sb	t0,51(s0)
1c009680:	02c40a23          	sb	a2,52(s0)
1c009684:	03f40aa3          	sb	t6,53(s0)
1c009688:	03e40b23          	sb	t5,54(s0)
1c00968c:	03d40ba3          	sb	t4,55(s0)
1c009690:	03c40ca3          	sb	t3,57(s0)
1c009694:	02640d23          	sb	t1,58(s0)
1c009698:	0086d813          	srli	a6,a3,0x8
1c00969c:	0106d513          	srli	a0,a3,0x10
1c0096a0:	0186d593          	srli	a1,a3,0x18
1c0096a4:	03140da3          	sb	a7,59(s0)
1c0096a8:	02d40e23          	sb	a3,60(s0)
1c0096ac:	03040ea3          	sb	a6,61(s0)
1c0096b0:	02a40f23          	sb	a0,62(s0)
1c0096b4:	02b40fa3          	sb	a1,63(s0)
1c0096b8:	1dc12083          	lw	ra,476(sp)
1c0096bc:	1d812403          	lw	s0,472(sp)
1c0096c0:	1d412483          	lw	s1,468(sp)
1c0096c4:	1d012903          	lw	s2,464(sp)
1c0096c8:	1cc12983          	lw	s3,460(sp)
1c0096cc:	1c812a03          	lw	s4,456(sp)
1c0096d0:	1c412a83          	lw	s5,452(sp)
1c0096d4:	1c012b03          	lw	s6,448(sp)
1c0096d8:	1bc12b83          	lw	s7,444(sp)
1c0096dc:	1b812c03          	lw	s8,440(sp)
1c0096e0:	1b412c83          	lw	s9,436(sp)
1c0096e4:	1b012d03          	lw	s10,432(sp)
1c0096e8:	1ac12d83          	lw	s11,428(sp)
1c0096ec:	613d                	addi	sp,sp,480
1c0096ee:	8082                	ret
1c0096f0:	4781                	li	a5,0
1c0096f2:	ba45                	j	1c0090a2 <sha3_512+0x12e>

1c0096f4 <PQCLEAN_KYBER512_CLEAN_gen_matrix>:
1c0096f4:	db010113          	addi	sp,sp,-592
1c0096f8:	c62a                	sw	a0,12(sp)
1c0096fa:	47b2                	lw	a5,12(sp)
1c0096fc:	23612823          	sw	s6,560(sp)
1c009700:	4b01                	li	s6,0
1c009702:	23512a23          	sw	s5,564(sp)
1c009706:	00ab1a93          	slli	s5,s6,0xa
1c00970a:	6805                	lui	a6,0x1
1c00970c:	97d6                	add	a5,a5,s5
1c00970e:	24812423          	sw	s0,584(sp)
1c009712:	24912223          	sw	s1,580(sp)
1c009716:	25212023          	sw	s2,576(sp)
1c00971a:	23412c23          	sw	s4,568(sp)
1c00971e:	23712623          	sw	s7,556(sp)
1c009722:	23812423          	sw	s8,552(sp)
1c009726:	23912223          	sw	s9,548(sp)
1c00972a:	23a12023          	sw	s10,544(sp)
1c00972e:	24112623          	sw	ra,588(sp)
1c009732:	23312e23          	sw	s3,572(sp)
1c009736:	21b12e23          	sw	s11,540(sp)
1c00973a:	8c2e                	mv	s8,a1
1c00973c:	c432                	sw	a2,8(sp)
1c00973e:	20c10a13          	addi	s4,sp,524
1c009742:	fff80b93          	addi	s7,a6,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c009746:	d0080d13          	addi	s10,a6,-768
1c00974a:	1960                	addi	s0,sp,188
1c00974c:	0ffb7c93          	andi	s9,s6,255
1c009750:	c23e                	sw	a5,4(sp)
1c009752:	4901                	li	s2,0
1c009754:	10000493          	li	s1,256
1c009758:	47a2                	lw	a5,8(sp)
1c00975a:	0ff97613          	andi	a2,s2,255
1c00975e:	c3d9                	beqz	a5,1c0097e4 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xf0>
1c009760:	86b2                	mv	a3,a2
1c009762:	85e2                	mv	a1,s8
1c009764:	8666                	mv	a2,s9
1c009766:	0808                	addi	a0,sp,16
1c009768:	281000ef          	jal	ra,1c00a1e8 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00976c:	0810                	addi	a2,sp,16
1c00976e:	458d                	li	a1,3
1c009770:	0848                	addi	a0,sp,20
1c009772:	9a2ff0ef          	jal	ra,1c008914 <shake128_squeezeblocks>
1c009776:	4792                	lw	a5,4(sp)
1c009778:	00991313          	slli	t1,s2,0x9
1c00977c:	0858                	addi	a4,sp,20
1c00977e:	00f30ab3          	add	s5,t1,a5
1c009782:	4d81                	li	s11,0
1c009784:	00174583          	lbu	a1,1(a4)
1c009788:	00074603          	lbu	a2,0(a4)
1c00978c:	001d9693          	slli	a3,s11,0x1
1c009790:	00859793          	slli	a5,a1,0x8
1c009794:	8fd1                	or	a5,a5,a2
1c009796:	0177f7b3          	and	a5,a5,s7
1c00979a:	07c2                	slli	a5,a5,0x10
1c00979c:	83c1                	srli	a5,a5,0x10
1c00979e:	00274603          	lbu	a2,2(a4)
1c0097a2:	96d6                	add	a3,a3,s5
1c0097a4:	0045de13          	srli	t3,a1,0x4
1c0097a8:	001d8513          	addi	a0,s11,1
1c0097ac:	04fd6263          	bltu	s10,a5,1c0097f0 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xfc>
1c0097b0:	00f69023          	sh	a5,0(a3)
1c0097b4:	10951863          	bne	a0,s1,1c0098c4 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1d0>
1c0097b8:	0808                	addi	a0,sp,16
1c0097ba:	a4eff0ef          	jal	ra,1c008a08 <shake128_ctx_release>
1c0097be:	0c090463          	beqz	s2,1c009886 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x192>
1c0097c2:	0d2b0463          	beq	s6,s2,1c00988a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x196>
1c0097c6:	47b2                	lw	a5,12(sp)
1c0097c8:	4b05                	li	s6,1
1c0097ca:	00ab1a93          	slli	s5,s6,0xa
1c0097ce:	97d6                	add	a5,a5,s5
1c0097d0:	c23e                	sw	a5,4(sp)
1c0097d2:	47a2                	lw	a5,8(sp)
1c0097d4:	4901                	li	s2,0
1c0097d6:	0ffb7c93          	andi	s9,s6,255
1c0097da:	10000493          	li	s1,256
1c0097de:	0ff97613          	andi	a2,s2,255
1c0097e2:	ffbd                	bnez	a5,1c009760 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x6c>
1c0097e4:	86e6                	mv	a3,s9
1c0097e6:	85e2                	mv	a1,s8
1c0097e8:	0808                	addi	a0,sp,16
1c0097ea:	1ff000ef          	jal	ra,1c00a1e8 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c0097ee:	bfbd                	j	1c00976c <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x78>
1c0097f0:	0612                	slli	a2,a2,0x4
1c0097f2:	01c66633          	or	a2,a2,t3
1c0097f6:	00cd4863          	blt	s10,a2,1c009806 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x112>
1c0097fa:	001d9793          	slli	a5,s11,0x1
1c0097fe:	97d6                	add	a5,a5,s5
1c009800:	00c79023          	sh	a2,0(a5)
1c009804:	0d85                	addi	s11,s11,1
1c009806:	fa9d89e3          	beq	s11,s1,1c0097b8 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00980a:	070d                	addi	a4,a4,3
1c00980c:	f6ea1ce3          	bne	s4,a4,1c009784 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x90>
1c009810:	0ff00993          	li	s3,255
1c009814:	a821                	j	1c00982c <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x138>
1c009816:	00171593          	slli	a1,a4,0x1
1c00981a:	95aa                	add	a1,a1,a0
1c00981c:	0705                	addi	a4,a4,1
1c00981e:	00f59023          	sh	a5,0(a1)
1c009822:	0bc76863          	bltu	a4,t3,1c0098d2 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1de>
1c009826:	9dba                	add	s11,s11,a4
1c009828:	f9b9e8e3          	bltu	s3,s11,1c0097b8 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00982c:	0810                	addi	a2,sp,16
1c00982e:	0848                	addi	a0,sp,20
1c009830:	4585                	li	a1,1
1c009832:	8e2ff0ef          	jal	ra,1c008914 <shake128_squeezeblocks>
1c009836:	001d9513          	slli	a0,s11,0x1
1c00983a:	9556                	add	a0,a0,s5
1c00983c:	41b48e33          	sub	t3,s1,s11
1c009840:	0850                	addi	a2,sp,20
1c009842:	4701                	li	a4,0
1c009844:	00164583          	lbu	a1,1(a2)
1c009848:	00064e83          	lbu	t4,0(a2)
1c00984c:	00264683          	lbu	a3,2(a2)
1c009850:	00859793          	slli	a5,a1,0x8
1c009854:	01d7e7b3          	or	a5,a5,t4
1c009858:	0177f7b3          	and	a5,a5,s7
1c00985c:	07c2                	slli	a5,a5,0x10
1c00985e:	0692                	slli	a3,a3,0x4
1c009860:	8191                	srli	a1,a1,0x4
1c009862:	83c1                	srli	a5,a5,0x10
1c009864:	8ecd                	or	a3,a3,a1
1c009866:	fafd78e3          	bgeu	s10,a5,1c009816 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x122>
1c00986a:	00dd4863          	blt	s10,a3,1c00987a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x186>
1c00986e:	00171793          	slli	a5,a4,0x1
1c009872:	97aa                	add	a5,a5,a0
1c009874:	00d79023          	sh	a3,0(a5)
1c009878:	0705                	addi	a4,a4,1
1c00987a:	fbc776e3          	bgeu	a4,t3,1c009826 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c00987e:	060d                	addi	a2,a2,3
1c009880:	fcc412e3          	bne	s0,a2,1c009844 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x150>
1c009884:	b74d                	j	1c009826 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c009886:	4905                	li	s2,1
1c009888:	bdc1                	j	1c009758 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x64>
1c00988a:	24c12083          	lw	ra,588(sp)
1c00988e:	24812403          	lw	s0,584(sp)
1c009892:	24412483          	lw	s1,580(sp)
1c009896:	24012903          	lw	s2,576(sp)
1c00989a:	23c12983          	lw	s3,572(sp)
1c00989e:	23812a03          	lw	s4,568(sp)
1c0098a2:	23412a83          	lw	s5,564(sp)
1c0098a6:	23012b03          	lw	s6,560(sp)
1c0098aa:	22c12b83          	lw	s7,556(sp)
1c0098ae:	22812c03          	lw	s8,552(sp)
1c0098b2:	22412c83          	lw	s9,548(sp)
1c0098b6:	22012d03          	lw	s10,544(sp)
1c0098ba:	21c12d83          	lw	s11,540(sp)
1c0098be:	25010113          	addi	sp,sp,592
1c0098c2:	8082                	ret
1c0098c4:	8191                	srli	a1,a1,0x4
1c0098c6:	0612                	slli	a2,a2,0x4
1c0098c8:	8e4d                	or	a2,a2,a1
1c0098ca:	8daa                	mv	s11,a0
1c0098cc:	f2cd57e3          	bge	s10,a2,1c0097fa <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x106>
1c0098d0:	bf2d                	j	1c00980a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x116>
1c0098d2:	f8dd5ee3          	bge	s10,a3,1c00986e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x17a>
1c0098d6:	b765                	j	1c00987e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x18a>

1c0098d8 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair>:
1c0098d8:	737d                	lui	t1,0xfffff
1c0098da:	b7010113          	addi	sp,sp,-1168
1c0098de:	48112623          	sw	ra,1164(sp)
1c0098e2:	48812423          	sw	s0,1160(sp)
1c0098e6:	48912223          	sw	s1,1156(sp)
1c0098ea:	49212023          	sw	s2,1152(sp)
1c0098ee:	47312e23          	sw	s3,1148(sp)
1c0098f2:	47412c23          	sw	s4,1144(sp)
1c0098f6:	47512a23          	sw	s5,1140(sp)
1c0098fa:	47612823          	sw	s6,1136(sp)
1c0098fe:	47712623          	sw	s7,1132(sp)
1c009902:	47812423          	sw	s8,1128(sp)
1c009906:	47912223          	sw	s9,1124(sp)
1c00990a:	47a12023          	sw	s10,1120(sp)
1c00990e:	45b12e23          	sw	s11,1116(sp)
1c009912:	6905                	lui	s2,0x1
1c009914:	911a                	add	sp,sp,t1
1c009916:	0818                	addi	a4,sp,16
1c009918:	7a7d                	lui	s4,0xfffff
1c00991a:	44090793          	addi	a5,s2,1088 # 1440 <__CTOR_LIST__-0x1bffebc4>
1c00991e:	97ba                	add	a5,a5,a4
1c009920:	bc0a0493          	addi	s1,s4,-1088 # ffffebc0 <__l2_shared_end+0xe3feebc0>
1c009924:	94be                	add	s1,s1,a5
1c009926:	842a                	mv	s0,a0
1c009928:	8aae                	mv	s5,a1
1c00992a:	8526                	mv	a0,s1
1c00992c:	02000593          	li	a1,32
1c009930:	2bc9                	jal	1c009f02 <randombytes>
1c009932:	85a6                	mv	a1,s1
1c009934:	8526                	mv	a0,s1
1c009936:	02000613          	li	a2,32
1c00993a:	e3aff0ef          	jal	ra,1c008f74 <sha3_512>
1c00993e:	081c                	addi	a5,sp,16
1c009940:	c4090513          	addi	a0,s2,-960
1c009944:	85a6                	mv	a1,s1
1c009946:	953e                	add	a0,a0,a5
1c009948:	4601                	li	a2,0
1c00994a:	336d                	jal	1c0096f4 <PQCLEAN_KYBER512_CLEAN_gen_matrix>
1c00994c:	8b4a                	mv	s6,s2
1c00994e:	0818                	addi	a4,sp,16
1c009950:	440b0793          	addi	a5,s6,1088 # ff0440 <__CTOR_LIST__-0x1b00fbc4>
1c009954:	97ba                	add	a5,a5,a4
1c009956:	400a0913          	addi	s2,s4,1024
1c00995a:	993e                	add	s2,s2,a5
1c00995c:	02048493          	addi	s1,s1,32 # ff0020 <__CTOR_LIST__-0x1b00ffe4>
1c009960:	85a6                	mv	a1,s1
1c009962:	854a                	mv	a0,s2
1c009964:	4601                	li	a2,0
1c009966:	2c75                	jal	1c009c22 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c009968:	85a6                	mv	a1,s1
1c00996a:	20090513          	addi	a0,s2,512
1c00996e:	4605                	li	a2,1
1c009970:	2c4d                	jal	1c009c22 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c009972:	0818                	addi	a4,sp,16
1c009974:	440b0793          	addi	a5,s6,1088
1c009978:	97ba                	add	a5,a5,a4
1c00997a:	c00a0993          	addi	s3,s4,-1024
1c00997e:	99be                	add	s3,s3,a5
1c009980:	85a6                	mv	a1,s1
1c009982:	854e                	mv	a0,s3
1c009984:	4609                	li	a2,2
1c009986:	2c71                	jal	1c009c22 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c009988:	85a6                	mv	a1,s1
1c00998a:	460d                	li	a2,3
1c00998c:	20098513          	addi	a0,s3,512
1c009990:	2c49                	jal	1c009c22 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c009992:	854a                	mv	a0,s2
1c009994:	2135                	jal	1c009dc0 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c009996:	0818                	addi	a4,sp,16
1c009998:	440b0793          	addi	a5,s6,1088
1c00999c:	97ba                	add	a5,a5,a4
1c00999e:	97d2                	add	a5,a5,s4
1c0099a0:	854e                	mv	a0,s3
1c0099a2:	c63e                	sw	a5,12(sp)
1c0099a4:	2931                	jal	1c009dc0 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c0099a6:	4532                	lw	a0,12(sp)
1c0099a8:	081c                	addi	a5,sp,16
1c0099aa:	c40b0593          	addi	a1,s6,-960
1c0099ae:	864a                	mv	a2,s2
1c0099b0:	95be                	add	a1,a1,a5
1c0099b2:	21d9                	jal	1c009e78 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c0099b4:	4532                	lw	a0,12(sp)
1c0099b6:	269d                	jal	1c009d1c <PQCLEAN_KYBER512_CLEAN_poly_tomont>
1c0099b8:	47b2                	lw	a5,12(sp)
1c0099ba:	0818                	addi	a4,sp,16
1c0099bc:	864a                	mv	a2,s2
1c0099be:	20078493          	addi	s1,a5,512
1c0099c2:	040b0793          	addi	a5,s6,64
1c0099c6:	00f705b3          	add	a1,a4,a5
1c0099ca:	8526                	mv	a0,s1
1c0099cc:	2175                	jal	1c009e78 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c0099ce:	8526                	mv	a0,s1
1c0099d0:	26b1                	jal	1c009d1c <PQCLEAN_KYBER512_CLEAN_poly_tomont>
1c0099d2:	45b2                	lw	a1,12(sp)
1c0099d4:	864e                	mv	a2,s3
1c0099d6:	852e                	mv	a0,a1
1c0099d8:	2301                	jal	1c009ed8 <PQCLEAN_KYBER512_CLEAN_polyvec_add>
1c0099da:	4532                	lw	a0,12(sp)
1c0099dc:	21dd                	jal	1c009ec2 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>
1c0099de:	85ca                	mv	a1,s2
1c0099e0:	8556                	mv	a0,s5
1c0099e2:	2e7d                	jal	1c009da0 <PQCLEAN_KYBER512_CLEAN_polyvec_tobytes>
1c0099e4:	45b2                	lw	a1,12(sp)
1c0099e6:	8522                	mv	a0,s0
1c0099e8:	2e65                	jal	1c009da0 <PQCLEAN_KYBER512_CLEAN_polyvec_tobytes>
1c0099ea:	47b2                	lw	a5,12(sp)
1c0099ec:	4732                	lw	a4,12(sp)
1c0099ee:	bc47a803          	lw	a6,-1084(a5)
1c0099f2:	bc87a503          	lw	a0,-1080(a5)
1c0099f6:	bcc7a583          	lw	a1,-1076(a5)
1c0099fa:	bd07a603          	lw	a2,-1072(a5)
1c0099fe:	bd47a683          	lw	a3,-1068(a5)
1c009a02:	bc07a883          	lw	a7,-1088(a5)
1c009a06:	bd872703          	lw	a4,-1064(a4)
1c009a0a:	bdc7a783          	lw	a5,-1060(a5)
1c009a0e:	0088dd93          	srli	s11,a7,0x8
1c009a12:	0108dd13          	srli	s10,a7,0x10
1c009a16:	0188dc93          	srli	s9,a7,0x18
1c009a1a:	00885c13          	srli	s8,a6,0x8
1c009a1e:	01085b93          	srli	s7,a6,0x10
1c009a22:	01885b13          	srli	s6,a6,0x18
1c009a26:	00855a93          	srli	s5,a0,0x8
1c009a2a:	01055a13          	srli	s4,a0,0x10
1c009a2e:	01855993          	srli	s3,a0,0x18
1c009a32:	0085d913          	srli	s2,a1,0x8
1c009a36:	0105d493          	srli	s1,a1,0x10
1c009a3a:	0185d393          	srli	t2,a1,0x18
1c009a3e:	00865293          	srli	t0,a2,0x8
1c009a42:	01065f93          	srli	t6,a2,0x10
1c009a46:	01865f13          	srli	t5,a2,0x18
1c009a4a:	0086de93          	srli	t4,a3,0x8
1c009a4e:	0186d313          	srli	t1,a3,0x18
1c009a52:	31140023          	sb	a7,768(s0)
1c009a56:	31b400a3          	sb	s11,769(s0)
1c009a5a:	31a40123          	sb	s10,770(s0)
1c009a5e:	319401a3          	sb	s9,771(s0)
1c009a62:	31040223          	sb	a6,772(s0)
1c009a66:	318402a3          	sb	s8,773(s0)
1c009a6a:	31740323          	sb	s7,774(s0)
1c009a6e:	316403a3          	sb	s6,775(s0)
1c009a72:	30a40423          	sb	a0,776(s0)
1c009a76:	315404a3          	sb	s5,777(s0)
1c009a7a:	31440523          	sb	s4,778(s0)
1c009a7e:	313405a3          	sb	s3,779(s0)
1c009a82:	30b40623          	sb	a1,780(s0)
1c009a86:	312406a3          	sb	s2,781(s0)
1c009a8a:	30940723          	sb	s1,782(s0)
1c009a8e:	30c40823          	sb	a2,784(s0)
1c009a92:	30d40a23          	sb	a3,788(s0)
1c009a96:	0106de13          	srli	t3,a3,0x10
1c009a9a:	307407a3          	sb	t2,783(s0)
1c009a9e:	305408a3          	sb	t0,785(s0)
1c009aa2:	31f40923          	sb	t6,786(s0)
1c009aa6:	31e409a3          	sb	t5,787(s0)
1c009aaa:	31d40aa3          	sb	t4,789(s0)
1c009aae:	00875893          	srli	a7,a4,0x8
1c009ab2:	01075813          	srli	a6,a4,0x10
1c009ab6:	01875513          	srli	a0,a4,0x18
1c009aba:	0087d593          	srli	a1,a5,0x8
1c009abe:	0107d613          	srli	a2,a5,0x10
1c009ac2:	0187d693          	srli	a3,a5,0x18
1c009ac6:	31c40b23          	sb	t3,790(s0)
1c009aca:	30640ba3          	sb	t1,791(s0)
1c009ace:	30e40c23          	sb	a4,792(s0)
1c009ad2:	31140ca3          	sb	a7,793(s0)
1c009ad6:	31040d23          	sb	a6,794(s0)
1c009ada:	30a40da3          	sb	a0,795(s0)
1c009ade:	30f40e23          	sb	a5,796(s0)
1c009ae2:	30b40ea3          	sb	a1,797(s0)
1c009ae6:	30c40f23          	sb	a2,798(s0)
1c009aea:	30d40fa3          	sb	a3,799(s0)
1c009aee:	6305                	lui	t1,0x1
1c009af0:	911a                	add	sp,sp,t1
1c009af2:	48c12083          	lw	ra,1164(sp)
1c009af6:	48812403          	lw	s0,1160(sp)
1c009afa:	48412483          	lw	s1,1156(sp)
1c009afe:	48012903          	lw	s2,1152(sp)
1c009b02:	47c12983          	lw	s3,1148(sp)
1c009b06:	47812a03          	lw	s4,1144(sp)
1c009b0a:	47412a83          	lw	s5,1140(sp)
1c009b0e:	47012b03          	lw	s6,1136(sp)
1c009b12:	46c12b83          	lw	s7,1132(sp)
1c009b16:	46812c03          	lw	s8,1128(sp)
1c009b1a:	46412c83          	lw	s9,1124(sp)
1c009b1e:	46012d03          	lw	s10,1120(sp)
1c009b22:	45c12d83          	lw	s11,1116(sp)
1c009b26:	49010113          	addi	sp,sp,1168
1c009b2a:	8082                	ret

1c009b2c <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair>:
1c009b2c:	1141                	addi	sp,sp,-16
1c009b2e:	c422                	sw	s0,8(sp)
1c009b30:	c226                	sw	s1,4(sp)
1c009b32:	842a                	mv	s0,a0
1c009b34:	84ae                	mv	s1,a1
1c009b36:	c606                	sw	ra,12(sp)
1c009b38:	3345                	jal	1c0098d8 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair>
1c009b3a:	30048713          	addi	a4,s1,768
1c009b3e:	00440793          	addi	a5,s0,4
1c009b42:	00f77663          	bgeu	a4,a5,1c009b4e <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x22>
1c009b46:	30448793          	addi	a5,s1,772
1c009b4a:	06f46863          	bltu	s0,a5,1c009bba <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x8e>
1c009b4e:	86a2                	mv	a3,s0
1c009b50:	32040313          	addi	t1,s0,800
1c009b54:	0016c803          	lbu	a6,1(a3)
1c009b58:	0006c883          	lbu	a7,0(a3)
1c009b5c:	0026c603          	lbu	a2,2(a3)
1c009b60:	0036c783          	lbu	a5,3(a3)
1c009b64:	0822                	slli	a6,a6,0x8
1c009b66:	01186833          	or	a6,a6,a7
1c009b6a:	0642                	slli	a2,a2,0x10
1c009b6c:	01066633          	or	a2,a2,a6
1c009b70:	07e2                	slli	a5,a5,0x18
1c009b72:	8fd1                	or	a5,a5,a2
1c009b74:	0087d893          	srli	a7,a5,0x8
1c009b78:	0107d813          	srli	a6,a5,0x10
1c009b7c:	83e1                	srli	a5,a5,0x18
1c009b7e:	00c70023          	sb	a2,0(a4)
1c009b82:	011700a3          	sb	a7,1(a4)
1c009b86:	01070123          	sb	a6,2(a4)
1c009b8a:	00f701a3          	sb	a5,3(a4)
1c009b8e:	0691                	addi	a3,a3,4
1c009b90:	0711                	addi	a4,a4,4
1c009b92:	fc6691e3          	bne	a3,t1,1c009b54 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x28>
1c009b96:	85a2                	mv	a1,s0
1c009b98:	62048513          	addi	a0,s1,1568
1c009b9c:	32000613          	li	a2,800
1c009ba0:	8f4ff0ef          	jal	ra,1c008c94 <sha3_256>
1c009ba4:	64048513          	addi	a0,s1,1600
1c009ba8:	02000593          	li	a1,32
1c009bac:	2e99                	jal	1c009f02 <randombytes>
1c009bae:	40b2                	lw	ra,12(sp)
1c009bb0:	4422                	lw	s0,8(sp)
1c009bb2:	4492                	lw	s1,4(sp)
1c009bb4:	4501                	li	a0,0
1c009bb6:	0141                	addi	sp,sp,16
1c009bb8:	8082                	ret
1c009bba:	87a2                	mv	a5,s0
1c009bbc:	32040613          	addi	a2,s0,800
1c009bc0:	0007c683          	lbu	a3,0(a5)
1c009bc4:	0785                	addi	a5,a5,1
1c009bc6:	0705                	addi	a4,a4,1
1c009bc8:	fed70fa3          	sb	a3,-1(a4)
1c009bcc:	fec79ae3          	bne	a5,a2,1c009bc0 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x94>
1c009bd0:	b7d9                	j	1c009b96 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x6a>

1c009bd2 <PQCLEAN_KYBER512_CLEAN_poly_tobytes>:
1c009bd2:	6805                	lui	a6,0x1
1c009bd4:	18050893          	addi	a7,a0,384 # 1000180 <__CTOR_LIST__-0x1afffe84>
1c009bd8:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009bdc:	00059703          	lh	a4,0(a1)
1c009be0:	00259783          	lh	a5,2(a1)
1c009be4:	050d                	addi	a0,a0,3
1c009be6:	40f75613          	srai	a2,a4,0xf
1c009bea:	40f7d693          	srai	a3,a5,0xf
1c009bee:	01067633          	and	a2,a2,a6
1c009bf2:	0106f6b3          	and	a3,a3,a6
1c009bf6:	9732                	add	a4,a4,a2
1c009bf8:	97b6                	add	a5,a5,a3
1c009bfa:	0742                	slli	a4,a4,0x10
1c009bfc:	07c2                	slli	a5,a5,0x10
1c009bfe:	8341                	srli	a4,a4,0x10
1c009c00:	83c1                	srli	a5,a5,0x10
1c009c02:	00479613          	slli	a2,a5,0x4
1c009c06:	00875693          	srli	a3,a4,0x8
1c009c0a:	8ed1                	or	a3,a3,a2
1c009c0c:	8391                	srli	a5,a5,0x4
1c009c0e:	fee50ea3          	sb	a4,-3(a0)
1c009c12:	fed50f23          	sb	a3,-2(a0)
1c009c16:	fef50fa3          	sb	a5,-1(a0)
1c009c1a:	0591                	addi	a1,a1,4
1c009c1c:	fca890e3          	bne	a7,a0,1c009bdc <PQCLEAN_KYBER512_CLEAN_poly_tobytes+0xa>
1c009c20:	8082                	ret

1c009c22 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>:
1c009c22:	7155                	addi	sp,sp,-208
1c009c24:	c5a2                	sw	s0,200(sp)
1c009c26:	86b2                	mv	a3,a2
1c009c28:	842a                	mv	s0,a0
1c009c2a:	862e                	mv	a2,a1
1c009c2c:	850a                	mv	a0,sp
1c009c2e:	0c000593          	li	a1,192
1c009c32:	c786                	sw	ra,204(sp)
1c009c34:	23f5                	jal	1c00a220 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c009c36:	858a                	mv	a1,sp
1c009c38:	8522                	mv	a0,s0
1c009c3a:	885fe0ef          	jal	ra,1c0084be <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>
1c009c3e:	40be                	lw	ra,204(sp)
1c009c40:	442e                	lw	s0,200(sp)
1c009c42:	6169                	addi	sp,sp,208
1c009c44:	8082                	ret

1c009c46 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>:
1c009c46:	9f010113          	addi	sp,sp,-1552
1c009c4a:	6341                	lui	t1,0x10
1c009c4c:	60812423          	sw	s0,1544(sp)
1c009c50:	60112623          	sw	ra,1548(sp)
1c009c54:	842a                	mv	s0,a0
1c009c56:	4e01                	li	t3,0
1c009c58:	137d                	addi	t1,t1,-1
1c009c5a:	10000f93          	li	t6,256
1c009c5e:	00061503          	lh	a0,0(a2)
1c009c62:	00461383          	lh	t2,4(a2)
1c009c66:	00059803          	lh	a6,0(a1)
1c009c6a:	00459283          	lh	t0,4(a1)
1c009c6e:	00259683          	lh	a3,2(a1)
1c009c72:	00659f03          	lh	t5,6(a1)
1c009c76:	00261703          	lh	a4,2(a2)
1c009c7a:	00661e83          	lh	t4,6(a2)
1c009c7e:	401e5793          	srai	a5,t3,0x1
1c009c82:	00279893          	slli	a7,a5,0x2
1c009c86:	60010093          	addi	ra,sp,1536
1c009c8a:	0542                	slli	a0,a0,0x10
1c009c8c:	0063f3b3          	and	t2,t2,t1
1c009c90:	0842                	slli	a6,a6,0x10
1c009c92:	0062f2b3          	and	t0,t0,t1
1c009c96:	0785                	addi	a5,a5,1
1c009c98:	9886                	add	a7,a7,ra
1c009c9a:	06c2                	slli	a3,a3,0x10
1c009c9c:	006f7f33          	and	t5,t5,t1
1c009ca0:	00756533          	or	a0,a0,t2
1c009ca4:	0742                	slli	a4,a4,0x10
1c009ca6:	006efeb3          	and	t4,t4,t1
1c009caa:	00586833          	or	a6,a6,t0
1c009cae:	078a                	slli	a5,a5,0x2
1c009cb0:	9786                	add	a5,a5,ra
1c009cb2:	01e6e6b3          	or	a3,a3,t5
1c009cb6:	01d76733          	or	a4,a4,t4
1c009cba:	a108a023          	sw	a6,-1536(a7) # fefa00 <__CTOR_LIST__-0x1b010604>
1c009cbe:	c0a8a023          	sw	a0,-1024(a7)
1c009cc2:	a0d7a023          	sw	a3,-1536(a5)
1c009cc6:	c0e7a023          	sw	a4,-1024(a5)
1c009cca:	0e11                	addi	t3,t3,4
1c009ccc:	05a1                	addi	a1,a1,8
1c009cce:	0621                	addi	a2,a2,8
1c009cd0:	f9fe17e3          	bne	t3,t6,1c009c5e <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0x18>
1c009cd4:	0410                	addi	a2,sp,512
1c009cd6:	858a                	mv	a1,sp
1c009cd8:	40010513          	addi	a0,sp,1024
1c009cdc:	f5afe0ef          	jal	ra,1c008436 <KYBER_poly_pwm>
1c009ce0:	40010793          	addi	a5,sp,1024
1c009ce4:	8522                	mv	a0,s0
1c009ce6:	60010813          	addi	a6,sp,1536
1c009cea:	4394                	lw	a3,0(a5)
1c009cec:	43d8                	lw	a4,4(a5)
1c009cee:	07a1                	addi	a5,a5,8
1c009cf0:	0106d593          	srli	a1,a3,0x10
1c009cf4:	01075613          	srli	a2,a4,0x10
1c009cf8:	00b51023          	sh	a1,0(a0)
1c009cfc:	00c51123          	sh	a2,2(a0)
1c009d00:	00d51223          	sh	a3,4(a0)
1c009d04:	00e51323          	sh	a4,6(a0)
1c009d08:	0521                	addi	a0,a0,8
1c009d0a:	fef810e3          	bne	a6,a5,1c009cea <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0xa4>
1c009d0e:	60c12083          	lw	ra,1548(sp)
1c009d12:	60812403          	lw	s0,1544(sp)
1c009d16:	61010113          	addi	sp,sp,1552
1c009d1a:	8082                	ret

1c009d1c <PQCLEAN_KYBER512_CLEAN_poly_tomont>:
1c009d1c:	1141                	addi	sp,sp,-16
1c009d1e:	c422                	sw	s0,8(sp)
1c009d20:	c226                	sw	s1,4(sp)
1c009d22:	c04a                	sw	s2,0(sp)
1c009d24:	c606                	sw	ra,12(sp)
1c009d26:	842a                	mv	s0,a0
1c009d28:	20050913          	addi	s2,a0,512
1c009d2c:	54900493          	li	s1,1353
1c009d30:	00041503          	lh	a0,0(s0)
1c009d34:	0409                	addi	s0,s0,2
1c009d36:	02950533          	mul	a0,a0,s1
1c009d3a:	21bd                	jal	1c00a1a8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009d3c:	fea41f23          	sh	a0,-2(s0)
1c009d40:	ff2418e3          	bne	s0,s2,1c009d30 <PQCLEAN_KYBER512_CLEAN_poly_tomont+0x14>
1c009d44:	40b2                	lw	ra,12(sp)
1c009d46:	4422                	lw	s0,8(sp)
1c009d48:	4492                	lw	s1,4(sp)
1c009d4a:	4902                	lw	s2,0(sp)
1c009d4c:	0141                	addi	sp,sp,16
1c009d4e:	8082                	ret

1c009d50 <PQCLEAN_KYBER512_CLEAN_poly_reduce>:
1c009d50:	1141                	addi	sp,sp,-16
1c009d52:	c422                	sw	s0,8(sp)
1c009d54:	c226                	sw	s1,4(sp)
1c009d56:	c606                	sw	ra,12(sp)
1c009d58:	842a                	mv	s0,a0
1c009d5a:	20050493          	addi	s1,a0,512
1c009d5e:	00041503          	lh	a0,0(s0)
1c009d62:	0409                	addi	s0,s0,2
1c009d64:	2185                	jal	1c00a1c4 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c009d66:	fea41f23          	sh	a0,-2(s0)
1c009d6a:	fe941ae3          	bne	s0,s1,1c009d5e <PQCLEAN_KYBER512_CLEAN_poly_reduce+0xe>
1c009d6e:	40b2                	lw	ra,12(sp)
1c009d70:	4422                	lw	s0,8(sp)
1c009d72:	4492                	lw	s1,4(sp)
1c009d74:	0141                	addi	sp,sp,16
1c009d76:	8082                	ret

1c009d78 <PQCLEAN_KYBER512_CLEAN_poly_add>:
1c009d78:	4781                	li	a5,0
1c009d7a:	20000893          	li	a7,512
1c009d7e:	00f606b3          	add	a3,a2,a5
1c009d82:	00f58733          	add	a4,a1,a5
1c009d86:	0006d803          	lhu	a6,0(a3)
1c009d8a:	00075703          	lhu	a4,0(a4)
1c009d8e:	00f506b3          	add	a3,a0,a5
1c009d92:	0789                	addi	a5,a5,2
1c009d94:	9742                	add	a4,a4,a6
1c009d96:	00e69023          	sh	a4,0(a3)
1c009d9a:	ff1792e3          	bne	a5,a7,1c009d7e <PQCLEAN_KYBER512_CLEAN_poly_add+0x6>
1c009d9e:	8082                	ret

1c009da0 <PQCLEAN_KYBER512_CLEAN_polyvec_tobytes>:
1c009da0:	1141                	addi	sp,sp,-16
1c009da2:	c422                	sw	s0,8(sp)
1c009da4:	c226                	sw	s1,4(sp)
1c009da6:	c606                	sw	ra,12(sp)
1c009da8:	842a                	mv	s0,a0
1c009daa:	84ae                	mv	s1,a1
1c009dac:	351d                	jal	1c009bd2 <PQCLEAN_KYBER512_CLEAN_poly_tobytes>
1c009dae:	18040513          	addi	a0,s0,384
1c009db2:	4422                	lw	s0,8(sp)
1c009db4:	40b2                	lw	ra,12(sp)
1c009db6:	20048593          	addi	a1,s1,512
1c009dba:	4492                	lw	s1,4(sp)
1c009dbc:	0141                	addi	sp,sp,16
1c009dbe:	bd11                	j	1c009bd2 <PQCLEAN_KYBER512_CLEAN_poly_tobytes>

1c009dc0 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>:
1c009dc0:	9e010113          	addi	sp,sp,-1568
1c009dc4:	60912a23          	sw	s1,1556(sp)
1c009dc8:	64c1                	lui	s1,0x10
1c009dca:	60812c23          	sw	s0,1560(sp)
1c009dce:	61212823          	sw	s2,1552(sp)
1c009dd2:	61312623          	sw	s3,1548(sp)
1c009dd6:	61412423          	sw	s4,1544(sp)
1c009dda:	60112e23          	sw	ra,1564(sp)
1c009dde:	8a2a                	mv	s4,a0
1c009de0:	40050413          	addi	s0,a0,1024
1c009de4:	40010993          	addi	s3,sp,1024
1c009de8:	14fd                	addi	s1,s1,-1
1c009dea:	10000913          	li	s2,256
1c009dee:	20000613          	li	a2,512
1c009df2:	85d2                	mv	a1,s4
1c009df4:	854e                	mv	a0,s3
1c009df6:	2169                	jal	1c00a280 <memcpy>
1c009df8:	864e                	mv	a2,s3
1c009dfa:	4681                	li	a3,0
1c009dfc:	00061703          	lh	a4,0(a2)
1c009e00:	00261583          	lh	a1,2(a2)
1c009e04:	4016d793          	srai	a5,a3,0x1
1c009e08:	078a                	slli	a5,a5,0x2
1c009e0a:	0742                	slli	a4,a4,0x10
1c009e0c:	8de5                	and	a1,a1,s1
1c009e0e:	60010513          	addi	a0,sp,1536
1c009e12:	97aa                	add	a5,a5,a0
1c009e14:	8f4d                	or	a4,a4,a1
1c009e16:	a0e7a023          	sw	a4,-1536(a5)
1c009e1a:	0689                	addi	a3,a3,2
1c009e1c:	0611                	addi	a2,a2,4
1c009e1e:	fd269fe3          	bne	a3,s2,1c009dfc <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x3c>
1c009e22:	040c                	addi	a1,sp,512
1c009e24:	850a                	mv	a0,sp
1c009e26:	da6fe0ef          	jal	ra,1c0083cc <KYBER_poly_ntt>
1c009e2a:	0418                	addi	a4,sp,512
1c009e2c:	87d2                	mv	a5,s4
1c009e2e:	4310                	lw	a2,0(a4)
1c009e30:	4354                	lw	a3,4(a4)
1c009e32:	0721                	addi	a4,a4,8
1c009e34:	01065813          	srli	a6,a2,0x10
1c009e38:	0106d593          	srli	a1,a3,0x10
1c009e3c:	01079023          	sh	a6,0(a5)
1c009e40:	00b79123          	sh	a1,2(a5)
1c009e44:	00c79223          	sh	a2,4(a5)
1c009e48:	00d79323          	sh	a3,6(a5)
1c009e4c:	07a1                	addi	a5,a5,8
1c009e4e:	fee990e3          	bne	s3,a4,1c009e2e <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x6e>
1c009e52:	200a0a13          	addi	s4,s4,512
1c009e56:	f9441ce3          	bne	s0,s4,1c009dee <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x2e>
1c009e5a:	61c12083          	lw	ra,1564(sp)
1c009e5e:	61812403          	lw	s0,1560(sp)
1c009e62:	61412483          	lw	s1,1556(sp)
1c009e66:	61012903          	lw	s2,1552(sp)
1c009e6a:	60c12983          	lw	s3,1548(sp)
1c009e6e:	60812a03          	lw	s4,1544(sp)
1c009e72:	62010113          	addi	sp,sp,1568
1c009e76:	8082                	ret

1c009e78 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>:
1c009e78:	df010113          	addi	sp,sp,-528
1c009e7c:	20112623          	sw	ra,524(sp)
1c009e80:	20812423          	sw	s0,520(sp)
1c009e84:	20912223          	sw	s1,516(sp)
1c009e88:	21212023          	sw	s2,512(sp)
1c009e8c:	842a                	mv	s0,a0
1c009e8e:	84ae                	mv	s1,a1
1c009e90:	8932                	mv	s2,a2
1c009e92:	3b55                	jal	1c009c46 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c009e94:	20090613          	addi	a2,s2,512
1c009e98:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c009e9c:	850a                	mv	a0,sp
1c009e9e:	3365                	jal	1c009c46 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c009ea0:	860a                	mv	a2,sp
1c009ea2:	85a2                	mv	a1,s0
1c009ea4:	8522                	mv	a0,s0
1c009ea6:	3dc9                	jal	1c009d78 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c009ea8:	8522                	mv	a0,s0
1c009eaa:	355d                	jal	1c009d50 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c009eac:	20c12083          	lw	ra,524(sp)
1c009eb0:	20812403          	lw	s0,520(sp)
1c009eb4:	20412483          	lw	s1,516(sp)
1c009eb8:	20012903          	lw	s2,512(sp)
1c009ebc:	21010113          	addi	sp,sp,528
1c009ec0:	8082                	ret

1c009ec2 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>:
1c009ec2:	1141                	addi	sp,sp,-16
1c009ec4:	c422                	sw	s0,8(sp)
1c009ec6:	c606                	sw	ra,12(sp)
1c009ec8:	842a                	mv	s0,a0
1c009eca:	3559                	jal	1c009d50 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c009ecc:	20040513          	addi	a0,s0,512
1c009ed0:	4422                	lw	s0,8(sp)
1c009ed2:	40b2                	lw	ra,12(sp)
1c009ed4:	0141                	addi	sp,sp,16
1c009ed6:	bdad                	j	1c009d50 <PQCLEAN_KYBER512_CLEAN_poly_reduce>

1c009ed8 <PQCLEAN_KYBER512_CLEAN_polyvec_add>:
1c009ed8:	1141                	addi	sp,sp,-16
1c009eda:	c422                	sw	s0,8(sp)
1c009edc:	c226                	sw	s1,4(sp)
1c009ede:	c04a                	sw	s2,0(sp)
1c009ee0:	c606                	sw	ra,12(sp)
1c009ee2:	842a                	mv	s0,a0
1c009ee4:	84ae                	mv	s1,a1
1c009ee6:	8932                	mv	s2,a2
1c009ee8:	3d41                	jal	1c009d78 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c009eea:	20040513          	addi	a0,s0,512
1c009eee:	4422                	lw	s0,8(sp)
1c009ef0:	40b2                	lw	ra,12(sp)
1c009ef2:	20090613          	addi	a2,s2,512
1c009ef6:	20048593          	addi	a1,s1,512
1c009efa:	4902                	lw	s2,0(sp)
1c009efc:	4492                	lw	s1,4(sp)
1c009efe:	0141                	addi	sp,sp,16
1c009f00:	bda5                	j	1c009d78 <PQCLEAN_KYBER512_CLEAN_poly_add>

1c009f02 <randombytes>:
1c009f02:	2a058263          	beqz	a1,1c00a1a6 <randombytes+0x2a4>
1c009f06:	715d                	addi	sp,sp,-80
1c009f08:	00b50733          	add	a4,a0,a1
1c009f0c:	c63a                	sw	a4,12(sp)
1c009f0e:	9e378737          	lui	a4,0x9e378
1c009f12:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c009f16:	1c0067b7          	lui	a5,0x1c006
1c009f1a:	c43a                	sw	a4,8(sp)
1c009f1c:	e377a737          	lui	a4,0xe377a
1c009f20:	1b478793          	addi	a5,a5,436 # 1c0061b4 <outleft>
1c009f24:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c009f28:	c83e                	sw	a5,16(sp)
1c009f2a:	ca3a                	sw	a4,20(sp)
1c009f2c:	439c                	lw	a5,0(a5)
1c009f2e:	c6ef3737          	lui	a4,0xc6ef3
1c009f32:	c6a2                	sw	s0,76(sp)
1c009f34:	1c0062b7          	lui	t0,0x1c006
1c009f38:	1c006437          	lui	s0,0x1c006
1c009f3c:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c009f40:	d06e                	sw	s11,32(sp)
1c009f42:	c4a6                	sw	s1,72(sp)
1c009f44:	c2ca                	sw	s2,68(sp)
1c009f46:	c0ce                	sw	s3,64(sp)
1c009f48:	de52                	sw	s4,60(sp)
1c009f4a:	dc56                	sw	s5,56(sp)
1c009f4c:	da5a                	sw	s6,52(sp)
1c009f4e:	d85e                	sw	s7,48(sp)
1c009f50:	d662                	sw	s8,44(sp)
1c009f52:	d466                	sw	s9,40(sp)
1c009f54:	d26a                	sw	s10,36(sp)
1c009f56:	8daa                	mv	s11,a0
1c009f58:	19040413          	addi	s0,s0,400 # 1c006190 <out>
1c009f5c:	16028293          	addi	t0,t0,352 # 1c006160 <in>
1c009f60:	cc3a                	sw	a4,24(sp)
1c009f62:	cf85                	beqz	a5,1c009f9a <randombytes+0x98>
1c009f64:	17fd                	addi	a5,a5,-1
1c009f66:	00279713          	slli	a4,a5,0x2
1c009f6a:	9722                	add	a4,a4,s0
1c009f6c:	4304                	lw	s1,0(a4)
1c009f6e:	4742                	lw	a4,16(sp)
1c009f70:	009d8023          	sb	s1,0(s11)
1c009f74:	0d85                	addi	s11,s11,1
1c009f76:	c31c                	sw	a5,0(a4)
1c009f78:	4732                	lw	a4,12(sp)
1c009f7a:	feed94e3          	bne	s11,a4,1c009f62 <randombytes+0x60>
1c009f7e:	4436                	lw	s0,76(sp)
1c009f80:	44a6                	lw	s1,72(sp)
1c009f82:	4916                	lw	s2,68(sp)
1c009f84:	4986                	lw	s3,64(sp)
1c009f86:	5a72                	lw	s4,60(sp)
1c009f88:	5ae2                	lw	s5,56(sp)
1c009f8a:	5b52                	lw	s6,52(sp)
1c009f8c:	5bc2                	lw	s7,48(sp)
1c009f8e:	5c32                	lw	s8,44(sp)
1c009f90:	5ca2                	lw	s9,40(sp)
1c009f92:	5d12                	lw	s10,36(sp)
1c009f94:	5d82                	lw	s11,32(sp)
1c009f96:	6161                	addi	sp,sp,80
1c009f98:	8082                	ret
1c009f9a:	0002a703          	lw	a4,0(t0)
1c009f9e:	0042ae83          	lw	t4,4(t0)
1c009fa2:	0082af03          	lw	t5,8(t0)
1c009fa6:	0705                	addi	a4,a4,1
1c009fa8:	00e2a023          	sw	a4,0(t0)
1c009fac:	00c2af83          	lw	t6,12(t0)
1c009fb0:	ef11                	bnez	a4,1c009fcc <randombytes+0xca>
1c009fb2:	0e85                	addi	t4,t4,1
1c009fb4:	01d2a223          	sw	t4,4(t0)
1c009fb8:	000e9a63          	bnez	t4,1c009fcc <randombytes+0xca>
1c009fbc:	0f05                	addi	t5,t5,1
1c009fbe:	01e2a423          	sw	t5,8(t0)
1c009fc2:	000f1563          	bnez	t5,1c009fcc <randombytes+0xca>
1c009fc6:	0f85                	addi	t6,t6,1
1c009fc8:	01f2a623          	sw	t6,12(t0)
1c009fcc:	0102ae03          	lw	t3,16(t0)
1c009fd0:	0142a303          	lw	t1,20(t0)
1c009fd4:	0182a883          	lw	a7,24(t0)
1c009fd8:	01c2a803          	lw	a6,28(t0)
1c009fdc:	0202a503          	lw	a0,32(t0)
1c009fe0:	0242a583          	lw	a1,36(t0)
1c009fe4:	0282a603          	lw	a2,40(t0)
1c009fe8:	02c2a683          	lw	a3,44(t0)
1c009fec:	00974713          	xori	a4,a4,9
1c009ff0:	007ece93          	xori	t4,t4,7
1c009ff4:	009f4f13          	xori	t5,t5,9
1c009ff8:	003fcf93          	xori	t6,t6,3
1c009ffc:	002e4e13          	xori	t3,t3,2
1c00a000:	00334313          	xori	t1,t1,3
1c00a004:	0088c893          	xori	a7,a7,8
1c00a008:	00484813          	xori	a6,a6,4
1c00a00c:	00654513          	xori	a0,a0,6
1c00a010:	0025c593          	xori	a1,a1,2
1c00a014:	00664613          	xori	a2,a2,6
1c00a018:	0046c693          	xori	a3,a3,4
1c00a01c:	4495                	li	s1,5
1c00a01e:	49a5                	li	s3,9
1c00a020:	4a1d                	li	s4,7
1c00a022:	4a89                	li	s5,2
1c00a024:	4b0d                	li	s6,3
1c00a026:	4ba1                	li	s7,8
1c00a028:	4d0d                	li	s10,3
1c00a02a:	4c0d                	li	s8,3
1c00a02c:	4781                	li	a5,0
1c00a02e:	ce6e                	sw	s11,28(sp)
1c00a030:	43d2                	lw	t2,20(sp)
1c00a032:	00778db3          	add	s11,a5,t2
1c00a036:	43a2                	lw	t2,8(sp)
1c00a038:	01b6dc93          	srli	s9,a3,0x1b
1c00a03c:	00569913          	slli	s2,a3,0x5
1c00a040:	979e                	add	a5,a5,t2
1c00a042:	0036c393          	xori	t2,a3,3
1c00a046:	01996933          	or	s2,s2,s9
1c00a04a:	93be                	add	t2,t2,a5
1c00a04c:	0123c3b3          	xor	t2,t2,s2
1c00a050:	971e                	add	a4,a4,t2
1c00a052:	01975c93          	srli	s9,a4,0x19
1c00a056:	00174393          	xori	t2,a4,1
1c00a05a:	00771913          	slli	s2,a4,0x7
1c00a05e:	01996933          	or	s2,s2,s9
1c00a062:	93be                	add	t2,t2,a5
1c00a064:	0123c3b3          	xor	t2,t2,s2
1c00a068:	9e9e                	add	t4,t4,t2
1c00a06a:	017edc93          	srli	s9,t4,0x17
1c00a06e:	004ec393          	xori	t2,t4,4
1c00a072:	009e9913          	slli	s2,t4,0x9
1c00a076:	01996933          	or	s2,s2,s9
1c00a07a:	93be                	add	t2,t2,a5
1c00a07c:	0123c3b3          	xor	t2,t2,s2
1c00a080:	9f1e                	add	t5,t5,t2
1c00a082:	013f5c93          	srli	s9,t5,0x13
1c00a086:	001f4393          	xori	t2,t5,1
1c00a08a:	00df1913          	slli	s2,t5,0xd
1c00a08e:	01996933          	or	s2,s2,s9
1c00a092:	93be                	add	t2,t2,a5
1c00a094:	0123c3b3          	xor	t2,t2,s2
1c00a098:	9f9e                	add	t6,t6,t2
1c00a09a:	01bfdc93          	srli	s9,t6,0x1b
1c00a09e:	005fc393          	xori	t2,t6,5
1c00a0a2:	005f9913          	slli	s2,t6,0x5
1c00a0a6:	01996933          	or	s2,s2,s9
1c00a0aa:	93be                	add	t2,t2,a5
1c00a0ac:	0123c3b3          	xor	t2,t2,s2
1c00a0b0:	9e1e                	add	t3,t3,t2
1c00a0b2:	019e5c93          	srli	s9,t3,0x19
1c00a0b6:	009e4393          	xori	t2,t3,9
1c00a0ba:	007e1913          	slli	s2,t3,0x7
1c00a0be:	01996933          	or	s2,s2,s9
1c00a0c2:	93be                	add	t2,t2,a5
1c00a0c4:	0123c3b3          	xor	t2,t2,s2
1c00a0c8:	931e                	add	t1,t1,t2
1c00a0ca:	01735c93          	srli	s9,t1,0x17
1c00a0ce:	00234393          	xori	t2,t1,2
1c00a0d2:	00931913          	slli	s2,t1,0x9
1c00a0d6:	01996933          	or	s2,s2,s9
1c00a0da:	93be                	add	t2,t2,a5
1c00a0dc:	0123c3b3          	xor	t2,t2,s2
1c00a0e0:	989e                	add	a7,a7,t2
1c00a0e2:	0138dc93          	srli	s9,a7,0x13
1c00a0e6:	0068c393          	xori	t2,a7,6
1c00a0ea:	00d89913          	slli	s2,a7,0xd
1c00a0ee:	01996933          	or	s2,s2,s9
1c00a0f2:	93be                	add	t2,t2,a5
1c00a0f4:	0123c3b3          	xor	t2,t2,s2
1c00a0f8:	981e                	add	a6,a6,t2
1c00a0fa:	01b85c93          	srli	s9,a6,0x1b
1c00a0fe:	00584393          	xori	t2,a6,5
1c00a102:	00581913          	slli	s2,a6,0x5
1c00a106:	01996933          	or	s2,s2,s9
1c00a10a:	93be                	add	t2,t2,a5
1c00a10c:	0123c3b3          	xor	t2,t2,s2
1c00a110:	951e                	add	a0,a0,t2
1c00a112:	01955c93          	srli	s9,a0,0x19
1c00a116:	00354393          	xori	t2,a0,3
1c00a11a:	00751913          	slli	s2,a0,0x7
1c00a11e:	01996933          	or	s2,s2,s9
1c00a122:	93be                	add	t2,t2,a5
1c00a124:	0123c3b3          	xor	t2,t2,s2
1c00a128:	959e                	add	a1,a1,t2
1c00a12a:	0175dc93          	srli	s9,a1,0x17
1c00a12e:	0055c393          	xori	t2,a1,5
1c00a132:	00959913          	slli	s2,a1,0x9
1c00a136:	01996933          	or	s2,s2,s9
1c00a13a:	93be                	add	t2,t2,a5
1c00a13c:	0123c3b3          	xor	t2,t2,s2
1c00a140:	961e                	add	a2,a2,t2
1c00a142:	00864393          	xori	t2,a2,8
1c00a146:	00d61913          	slli	s2,a2,0xd
1c00a14a:	01365c93          	srli	s9,a2,0x13
1c00a14e:	93be                	add	t2,t2,a5
1c00a150:	01996933          	or	s2,s2,s9
1c00a154:	0123c3b3          	xor	t2,t2,s2
1c00a158:	969e                	add	a3,a3,t2
1c00a15a:	edb79ee3          	bne	a5,s11,1c00a036 <randombytes+0x134>
1c00a15e:	43e2                	lw	t2,24(sp)
1c00a160:	01cc4c33          	xor	s8,s8,t3
1c00a164:	006d4d33          	xor	s10,s10,t1
1c00a168:	011bcbb3          	xor	s7,s7,a7
1c00a16c:	010b4b33          	xor	s6,s6,a6
1c00a170:	00aacab3          	xor	s5,s5,a0
1c00a174:	00ba4a33          	xor	s4,s4,a1
1c00a178:	00c9c9b3          	xor	s3,s3,a2
1c00a17c:	8cb5                	xor	s1,s1,a3
1c00a17e:	ea7799e3          	bne	a5,t2,1c00a030 <randombytes+0x12e>
1c00a182:	4df2                	lw	s11,28(sp)
1c00a184:	01842023          	sw	s8,0(s0)
1c00a188:	01a42223          	sw	s10,4(s0)
1c00a18c:	01742423          	sw	s7,8(s0)
1c00a190:	01642623          	sw	s6,12(s0)
1c00a194:	01542823          	sw	s5,16(s0)
1c00a198:	01442a23          	sw	s4,20(s0)
1c00a19c:	01342c23          	sw	s3,24(s0)
1c00a1a0:	cc44                	sw	s1,28(s0)
1c00a1a2:	479d                	li	a5,7
1c00a1a4:	b3e9                	j	1c009f6e <randombytes+0x6c>
1c00a1a6:	8082                	ret

1c00a1a8 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>:
1c00a1a8:	777d                	lui	a4,0xfffff
1c00a1aa:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00a1ae:	02f507b3          	mul	a5,a0,a5
1c00a1b2:	2ff70713          	addi	a4,a4,767
1c00a1b6:	07c2                	slli	a5,a5,0x10
1c00a1b8:	87c1                	srai	a5,a5,0x10
1c00a1ba:	02e787b3          	mul	a5,a5,a4
1c00a1be:	953e                	add	a0,a0,a5
1c00a1c0:	8541                	srai	a0,a0,0x10
1c00a1c2:	8082                	ret

1c00a1c4 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>:
1c00a1c4:	6795                	lui	a5,0x5
1c00a1c6:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a1ca:	02f507b3          	mul	a5,a0,a5
1c00a1ce:	02000737          	lui	a4,0x2000
1c00a1d2:	97ba                	add	a5,a5,a4
1c00a1d4:	6705                	lui	a4,0x1
1c00a1d6:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a1da:	87e9                	srai	a5,a5,0x1a
1c00a1dc:	02e787b3          	mul	a5,a5,a4
1c00a1e0:	8d1d                	sub	a0,a0,a5
1c00a1e2:	0542                	slli	a0,a0,0x10
1c00a1e4:	8541                	srai	a0,a0,0x10
1c00a1e6:	8082                	ret

1c00a1e8 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>:
1c00a1e8:	7139                	addi	sp,sp,-64
1c00a1ea:	da26                	sw	s1,52(sp)
1c00a1ec:	d84a                	sw	s2,48(sp)
1c00a1ee:	84b2                	mv	s1,a2
1c00a1f0:	892a                	mv	s2,a0
1c00a1f2:	02000613          	li	a2,32
1c00a1f6:	0068                	addi	a0,sp,12
1c00a1f8:	de06                	sw	ra,60(sp)
1c00a1fa:	dc22                	sw	s0,56(sp)
1c00a1fc:	8436                	mv	s0,a3
1c00a1fe:	2049                	jal	1c00a280 <memcpy>
1c00a200:	006c                	addi	a1,sp,12
1c00a202:	854a                	mv	a0,s2
1c00a204:	02200613          	li	a2,34
1c00a208:	02910623          	sb	s1,44(sp)
1c00a20c:	028106a3          	sb	s0,45(sp)
1c00a210:	d18fe0ef          	jal	ra,1c008728 <shake128_absorb>
1c00a214:	50f2                	lw	ra,60(sp)
1c00a216:	5462                	lw	s0,56(sp)
1c00a218:	54d2                	lw	s1,52(sp)
1c00a21a:	5942                	lw	s2,48(sp)
1c00a21c:	6121                	addi	sp,sp,64
1c00a21e:	8082                	ret

1c00a220 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>:
1c00a220:	7139                	addi	sp,sp,-64
1c00a222:	87b2                	mv	a5,a2
1c00a224:	da26                	sw	s1,52(sp)
1c00a226:	d84a                	sw	s2,48(sp)
1c00a228:	84aa                	mv	s1,a0
1c00a22a:	892e                	mv	s2,a1
1c00a22c:	02000613          	li	a2,32
1c00a230:	85be                	mv	a1,a5
1c00a232:	0068                	addi	a0,sp,12
1c00a234:	de06                	sw	ra,60(sp)
1c00a236:	dc22                	sw	s0,56(sp)
1c00a238:	8436                	mv	s0,a3
1c00a23a:	2099                	jal	1c00a280 <memcpy>
1c00a23c:	0070                	addi	a2,sp,12
1c00a23e:	85ca                	mv	a1,s2
1c00a240:	8526                	mv	a0,s1
1c00a242:	02100693          	li	a3,33
1c00a246:	02810623          	sb	s0,44(sp)
1c00a24a:	fc8fe0ef          	jal	ra,1c008a12 <shake256>
1c00a24e:	50f2                	lw	ra,60(sp)
1c00a250:	5462                	lw	s0,56(sp)
1c00a252:	54d2                	lw	s1,52(sp)
1c00a254:	5942                	lw	s2,48(sp)
1c00a256:	6121                	addi	sp,sp,64
1c00a258:	8082                	ret

1c00a25a <pos_wait_forever>:
1c00a25a:	f14027f3          	csrr	a5,mhartid
1c00a25e:	8795                	srai	a5,a5,0x5
1c00a260:	03f7f793          	andi	a5,a5,63
1c00a264:	477d                	li	a4,31
1c00a266:	00e78363          	beq	a5,a4,1c00a26c <pos_wait_forever+0x12>
1c00a26a:	a001                	j	1c00a26a <pos_wait_forever+0x10>
1c00a26c:	1a10a7b7          	lui	a5,0x1a10a
1c00a270:	577d                	li	a4,-1
1c00a272:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a276:	10500073          	wfi
1c00a27a:	10500073          	wfi
1c00a27e:	bfe5                	j	1c00a276 <pos_wait_forever+0x1c>

1c00a280 <memcpy>:
1c00a280:	00c5e7b3          	or	a5,a1,a2
1c00a284:	8fc9                	or	a5,a5,a0
1c00a286:	8b8d                	andi	a5,a5,3
1c00a288:	872e                	mv	a4,a1
1c00a28a:	882a                	mv	a6,a0
1c00a28c:	cbc5                	beqz	a5,1c00a33c <memcpy+0xbc>
1c00a28e:	c279                	beqz	a2,1c00a354 <memcpy+0xd4>
1c00a290:	00350793          	addi	a5,a0,3
1c00a294:	8f8d                	sub	a5,a5,a1
1c00a296:	0077b793          	sltiu	a5,a5,7
1c00a29a:	e7d1                	bnez	a5,1c00a326 <memcpy+0xa6>
1c00a29c:	fff60793          	addi	a5,a2,-1
1c00a2a0:	0047b793          	sltiu	a5,a5,4
1c00a2a4:	e3c9                	bnez	a5,1c00a326 <memcpy+0xa6>
1c00a2a6:	ffc67e13          	andi	t3,a2,-4
1c00a2aa:	9e2e                	add	t3,t3,a1
1c00a2ac:	00174883          	lbu	a7,1(a4)
1c00a2b0:	00074303          	lbu	t1,0(a4)
1c00a2b4:	00274683          	lbu	a3,2(a4)
1c00a2b8:	00374783          	lbu	a5,3(a4)
1c00a2bc:	08a2                	slli	a7,a7,0x8
1c00a2be:	0068e8b3          	or	a7,a7,t1
1c00a2c2:	06c2                	slli	a3,a3,0x10
1c00a2c4:	0116e6b3          	or	a3,a3,a7
1c00a2c8:	07e2                	slli	a5,a5,0x18
1c00a2ca:	8fd5                	or	a5,a5,a3
1c00a2cc:	0087d313          	srli	t1,a5,0x8
1c00a2d0:	0107d893          	srli	a7,a5,0x10
1c00a2d4:	83e1                	srli	a5,a5,0x18
1c00a2d6:	00d80023          	sb	a3,0(a6)
1c00a2da:	006800a3          	sb	t1,1(a6)
1c00a2de:	01180123          	sb	a7,2(a6)
1c00a2e2:	00f801a3          	sb	a5,3(a6)
1c00a2e6:	0711                	addi	a4,a4,4
1c00a2e8:	0811                	addi	a6,a6,4
1c00a2ea:	fdc711e3          	bne	a4,t3,1c00a2ac <memcpy+0x2c>
1c00a2ee:	ffc67793          	andi	a5,a2,-4
1c00a2f2:	00367693          	andi	a3,a2,3
1c00a2f6:	00f50733          	add	a4,a0,a5
1c00a2fa:	95be                	add	a1,a1,a5
1c00a2fc:	02f60f63          	beq	a2,a5,1c00a33a <memcpy+0xba>
1c00a300:	0005c603          	lbu	a2,0(a1)
1c00a304:	fff68793          	addi	a5,a3,-1
1c00a308:	00c70023          	sb	a2,0(a4)
1c00a30c:	c79d                	beqz	a5,1c00a33a <memcpy+0xba>
1c00a30e:	0015c603          	lbu	a2,1(a1)
1c00a312:	4789                	li	a5,2
1c00a314:	00c700a3          	sb	a2,1(a4)
1c00a318:	02f68163          	beq	a3,a5,1c00a33a <memcpy+0xba>
1c00a31c:	0025c783          	lbu	a5,2(a1)
1c00a320:	00f70123          	sb	a5,2(a4)
1c00a324:	8082                	ret
1c00a326:	962e                	add	a2,a2,a1
1c00a328:	87aa                	mv	a5,a0
1c00a32a:	0005c703          	lbu	a4,0(a1)
1c00a32e:	0585                	addi	a1,a1,1
1c00a330:	0785                	addi	a5,a5,1
1c00a332:	fee78fa3          	sb	a4,-1(a5)
1c00a336:	fec59ae3          	bne	a1,a2,1c00a32a <memcpy+0xaa>
1c00a33a:	8082                	ret
1c00a33c:	de7d                	beqz	a2,1c00a33a <memcpy+0xba>
1c00a33e:	87aa                	mv	a5,a0
1c00a340:	4194                	lw	a3,0(a1)
1c00a342:	0791                	addi	a5,a5,4
1c00a344:	40c78733          	sub	a4,a5,a2
1c00a348:	fed7ae23          	sw	a3,-4(a5)
1c00a34c:	0591                	addi	a1,a1,4
1c00a34e:	fea719e3          	bne	a4,a0,1c00a340 <memcpy+0xc0>
1c00a352:	8082                	ret
1c00a354:	8082                	ret

1c00a356 <memmove>:
1c00a356:	40b507b3          	sub	a5,a0,a1
1c00a35a:	0ac7e063          	bltu	a5,a2,1c00a3fa <memmove+0xa4>
1c00a35e:	c661                	beqz	a2,1c00a426 <memmove+0xd0>
1c00a360:	00350793          	addi	a5,a0,3
1c00a364:	8f8d                	sub	a5,a5,a1
1c00a366:	0077b793          	sltiu	a5,a5,7
1c00a36a:	e3dd                	bnez	a5,1c00a410 <memmove+0xba>
1c00a36c:	fff60793          	addi	a5,a2,-1
1c00a370:	0047b793          	sltiu	a5,a5,4
1c00a374:	efd1                	bnez	a5,1c00a410 <memmove+0xba>
1c00a376:	ffc67e13          	andi	t3,a2,-4
1c00a37a:	872e                	mv	a4,a1
1c00a37c:	882a                	mv	a6,a0
1c00a37e:	9e2e                	add	t3,t3,a1
1c00a380:	00174883          	lbu	a7,1(a4)
1c00a384:	00074303          	lbu	t1,0(a4)
1c00a388:	00274683          	lbu	a3,2(a4)
1c00a38c:	00374783          	lbu	a5,3(a4)
1c00a390:	08a2                	slli	a7,a7,0x8
1c00a392:	0068e8b3          	or	a7,a7,t1
1c00a396:	06c2                	slli	a3,a3,0x10
1c00a398:	0116e6b3          	or	a3,a3,a7
1c00a39c:	07e2                	slli	a5,a5,0x18
1c00a39e:	8fd5                	or	a5,a5,a3
1c00a3a0:	0087d313          	srli	t1,a5,0x8
1c00a3a4:	0107d893          	srli	a7,a5,0x10
1c00a3a8:	83e1                	srli	a5,a5,0x18
1c00a3aa:	00d80023          	sb	a3,0(a6)
1c00a3ae:	006800a3          	sb	t1,1(a6)
1c00a3b2:	01180123          	sb	a7,2(a6)
1c00a3b6:	00f801a3          	sb	a5,3(a6)
1c00a3ba:	0711                	addi	a4,a4,4
1c00a3bc:	0811                	addi	a6,a6,4
1c00a3be:	fdc711e3          	bne	a4,t3,1c00a380 <memmove+0x2a>
1c00a3c2:	ffc67793          	andi	a5,a2,-4
1c00a3c6:	00367693          	andi	a3,a2,3
1c00a3ca:	00f50733          	add	a4,a0,a5
1c00a3ce:	95be                	add	a1,a1,a5
1c00a3d0:	04f60a63          	beq	a2,a5,1c00a424 <memmove+0xce>
1c00a3d4:	0005c603          	lbu	a2,0(a1)
1c00a3d8:	fff68793          	addi	a5,a3,-1
1c00a3dc:	00c70023          	sb	a2,0(a4)
1c00a3e0:	c3b1                	beqz	a5,1c00a424 <memmove+0xce>
1c00a3e2:	0015c603          	lbu	a2,1(a1)
1c00a3e6:	4789                	li	a5,2
1c00a3e8:	00c700a3          	sb	a2,1(a4)
1c00a3ec:	02f68c63          	beq	a3,a5,1c00a424 <memmove+0xce>
1c00a3f0:	0025c783          	lbu	a5,2(a1)
1c00a3f4:	00f70123          	sb	a5,2(a4)
1c00a3f8:	8082                	ret
1c00a3fa:	167d                	addi	a2,a2,-1
1c00a3fc:	00c587b3          	add	a5,a1,a2
1c00a400:	0007c703          	lbu	a4,0(a5)
1c00a404:	00c507b3          	add	a5,a0,a2
1c00a408:	00e78023          	sb	a4,0(a5)
1c00a40c:	f67d                	bnez	a2,1c00a3fa <memmove+0xa4>
1c00a40e:	8082                	ret
1c00a410:	962a                	add	a2,a2,a0
1c00a412:	87aa                	mv	a5,a0
1c00a414:	0005c703          	lbu	a4,0(a1)
1c00a418:	0785                	addi	a5,a5,1
1c00a41a:	0585                	addi	a1,a1,1
1c00a41c:	fee78fa3          	sb	a4,-1(a5)
1c00a420:	fec79ae3          	bne	a5,a2,1c00a414 <memmove+0xbe>
1c00a424:	8082                	ret
1c00a426:	8082                	ret

1c00a428 <strchr>:
1c00a428:	00054703          	lbu	a4,0(a0)
1c00a42c:	0ff5f593          	andi	a1,a1,255
1c00a430:	87aa                	mv	a5,a0
1c00a432:	00b70863          	beq	a4,a1,1c00a442 <strchr+0x1a>
1c00a436:	cb01                	beqz	a4,1c00a446 <strchr+0x1e>
1c00a438:	0017c703          	lbu	a4,1(a5)
1c00a43c:	0785                	addi	a5,a5,1
1c00a43e:	feb71ce3          	bne	a4,a1,1c00a436 <strchr+0xe>
1c00a442:	853e                	mv	a0,a5
1c00a444:	8082                	ret
1c00a446:	4501                	li	a0,0
1c00a448:	dded                	beqz	a1,1c00a442 <strchr+0x1a>
1c00a44a:	8082                	ret

1c00a44c <puts>:
1c00a44c:	00054783          	lbu	a5,0(a0)
1c00a450:	c78d                	beqz	a5,1c00a47a <puts+0x2e>
1c00a452:	f14026f3          	csrr	a3,mhartid
1c00a456:	00369713          	slli	a4,a3,0x3
1c00a45a:	1a10f637          	lui	a2,0x1a10f
1c00a45e:	0ff77713          	andi	a4,a4,255
1c00a462:	9732                	add	a4,a4,a2
1c00a464:	6609                	lui	a2,0x2
1c00a466:	068a                	slli	a3,a3,0x2
1c00a468:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a46c:	8ef1                	and	a3,a3,a2
1c00a46e:	9736                	add	a4,a4,a3
1c00a470:	c31c                	sw	a5,0(a4)
1c00a472:	00154783          	lbu	a5,1(a0)
1c00a476:	0505                	addi	a0,a0,1
1c00a478:	ffe5                	bnez	a5,1c00a470 <puts+0x24>
1c00a47a:	f1402773          	csrr	a4,mhartid
1c00a47e:	00371793          	slli	a5,a4,0x3
1c00a482:	1a10f6b7          	lui	a3,0x1a10f
1c00a486:	0ff7f793          	andi	a5,a5,255
1c00a48a:	97b6                	add	a5,a5,a3
1c00a48c:	6689                	lui	a3,0x2
1c00a48e:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a492:	070a                	slli	a4,a4,0x2
1c00a494:	8f75                	and	a4,a4,a3
1c00a496:	97ba                	add	a5,a5,a4
1c00a498:	4729                	li	a4,10
1c00a49a:	c398                	sw	a4,0(a5)
1c00a49c:	4501                	li	a0,0
1c00a49e:	8082                	ret

1c00a4a0 <pos_libc_fputc_locked>:
1c00a4a0:	6689                	lui	a3,0x2
1c00a4a2:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a4a6:	f14027f3          	csrr	a5,mhartid
1c00a4aa:	00379713          	slli	a4,a5,0x3
1c00a4ae:	078a                	slli	a5,a5,0x2
1c00a4b0:	8ff5                	and	a5,a5,a3
1c00a4b2:	0ff77713          	andi	a4,a4,255
1c00a4b6:	1a10f6b7          	lui	a3,0x1a10f
1c00a4ba:	9736                	add	a4,a4,a3
1c00a4bc:	97ba                	add	a5,a5,a4
1c00a4be:	0ff57513          	andi	a0,a0,255
1c00a4c2:	c388                	sw	a0,0(a5)
1c00a4c4:	4501                	li	a0,0
1c00a4c6:	8082                	ret

1c00a4c8 <putchar>:
1c00a4c8:	6689                	lui	a3,0x2
1c00a4ca:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a4ce:	f14027f3          	csrr	a5,mhartid
1c00a4d2:	00379713          	slli	a4,a5,0x3
1c00a4d6:	078a                	slli	a5,a5,0x2
1c00a4d8:	8ff5                	and	a5,a5,a3
1c00a4da:	0ff77713          	andi	a4,a4,255
1c00a4de:	1a10f6b7          	lui	a3,0x1a10f
1c00a4e2:	9736                	add	a4,a4,a3
1c00a4e4:	97ba                	add	a5,a5,a4
1c00a4e6:	0ff57513          	andi	a0,a0,255
1c00a4ea:	c388                	sw	a0,0(a5)
1c00a4ec:	4501                	li	a0,0
1c00a4ee:	8082                	ret

1c00a4f0 <pos_libc_prf_locked>:
1c00a4f0:	a0b1                	j	1c00a53c <pos_libc_prf>

1c00a4f2 <exit>:
1c00a4f2:	800007b7          	lui	a5,0x80000
1c00a4f6:	1141                	addi	sp,sp,-16
1c00a4f8:	8d5d                	or	a0,a0,a5
1c00a4fa:	c606                	sw	ra,12(sp)
1c00a4fc:	1a1047b7          	lui	a5,0x1a104
1c00a500:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a504:	3b99                	jal	1c00a25a <pos_wait_forever>

1c00a506 <pos_io_start>:
1c00a506:	4501                	li	a0,0
1c00a508:	8082                	ret

1c00a50a <pos_io_stop>:
1c00a50a:	4501                	li	a0,0
1c00a50c:	8082                	ret

1c00a50e <printf>:
1c00a50e:	7139                	addi	sp,sp,-64
1c00a510:	02410313          	addi	t1,sp,36
1c00a514:	d432                	sw	a2,40(sp)
1c00a516:	862a                	mv	a2,a0
1c00a518:	1c00a537          	lui	a0,0x1c00a
1c00a51c:	d22e                	sw	a1,36(sp)
1c00a51e:	d636                	sw	a3,44(sp)
1c00a520:	4589                	li	a1,2
1c00a522:	869a                	mv	a3,t1
1c00a524:	4a050513          	addi	a0,a0,1184 # 1c00a4a0 <pos_libc_fputc_locked>
1c00a528:	ce06                	sw	ra,28(sp)
1c00a52a:	d83a                	sw	a4,48(sp)
1c00a52c:	da3e                	sw	a5,52(sp)
1c00a52e:	dc42                	sw	a6,56(sp)
1c00a530:	de46                	sw	a7,60(sp)
1c00a532:	c61a                	sw	t1,12(sp)
1c00a534:	3f75                	jal	1c00a4f0 <pos_libc_prf_locked>
1c00a536:	40f2                	lw	ra,28(sp)
1c00a538:	6121                	addi	sp,sp,64
1c00a53a:	8082                	ret

1c00a53c <pos_libc_prf>:
1c00a53c:	7169                	addi	sp,sp,-304
1c00a53e:	12112623          	sw	ra,300(sp)
1c00a542:	12812423          	sw	s0,296(sp)
1c00a546:	12912223          	sw	s1,292(sp)
1c00a54a:	13212023          	sw	s2,288(sp)
1c00a54e:	11312e23          	sw	s3,284(sp)
1c00a552:	11412c23          	sw	s4,280(sp)
1c00a556:	11512a23          	sw	s5,276(sp)
1c00a55a:	11612823          	sw	s6,272(sp)
1c00a55e:	11712623          	sw	s7,268(sp)
1c00a562:	11812423          	sw	s8,264(sp)
1c00a566:	11912223          	sw	s9,260(sp)
1c00a56a:	11a12023          	sw	s10,256(sp)
1c00a56e:	dfee                	sw	s11,252(sp)
1c00a570:	00064783          	lbu	a5,0(a2)
1c00a574:	c636                	sw	a3,12(sp)
1c00a576:	3c0781e3          	beqz	a5,1c00b138 <pos_libc_prf+0xbfc>
1c00a57a:	7741                	lui	a4,0xffff0
1c00a57c:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a580:	cc3a                	sw	a4,24(sp)
1c00a582:	10000737          	lui	a4,0x10000
1c00a586:	177d                	addi	a4,a4,-1
1c00a588:	8caa                	mv	s9,a0
1c00a58a:	84ae                	mv	s1,a1
1c00a58c:	00160c13          	addi	s8,a2,1
1c00a590:	4401                	li	s0,0
1c00a592:	1c000d37          	lui	s10,0x1c000
1c00a596:	ca3a                	sw	a4,20(sp)
1c00a598:	853e                	mv	a0,a5
1c00a59a:	02500793          	li	a5,37
1c00a59e:	04f50863          	beq	a0,a5,1c00a5ee <pos_libc_prf+0xb2>
1c00a5a2:	85a6                	mv	a1,s1
1c00a5a4:	9c82                	jalr	s9
1c00a5a6:	57fd                	li	a5,-1
1c00a5a8:	4cf50b63          	beq	a0,a5,1c00aa7e <pos_libc_prf+0x542>
1c00a5ac:	0405                	addi	s0,s0,1
1c00a5ae:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00a5b2:	0c05                	addi	s8,s8,1
1c00a5b4:	f17d                	bnez	a0,1c00a59a <pos_libc_prf+0x5e>
1c00a5b6:	12c12083          	lw	ra,300(sp)
1c00a5ba:	8522                	mv	a0,s0
1c00a5bc:	12812403          	lw	s0,296(sp)
1c00a5c0:	12412483          	lw	s1,292(sp)
1c00a5c4:	12012903          	lw	s2,288(sp)
1c00a5c8:	11c12983          	lw	s3,284(sp)
1c00a5cc:	11812a03          	lw	s4,280(sp)
1c00a5d0:	11412a83          	lw	s5,276(sp)
1c00a5d4:	11012b03          	lw	s6,272(sp)
1c00a5d8:	10c12b83          	lw	s7,268(sp)
1c00a5dc:	10812c03          	lw	s8,264(sp)
1c00a5e0:	10412c83          	lw	s9,260(sp)
1c00a5e4:	10012d03          	lw	s10,256(sp)
1c00a5e8:	5dfe                	lw	s11,252(sp)
1c00a5ea:	6155                	addi	sp,sp,304
1c00a5ec:	8082                	ret
1c00a5ee:	8de2                	mv	s11,s8
1c00a5f0:	000dcc03          	lbu	s8,0(s11)
1c00a5f4:	150d0513          	addi	a0,s10,336 # 1c000150 <__clz_tab+0x134>
1c00a5f8:	c826                	sw	s1,16(sp)
1c00a5fa:	85e2                	mv	a1,s8
1c00a5fc:	c202                	sw	zero,4(sp)
1c00a5fe:	c402                	sw	zero,8(sp)
1c00a600:	c002                	sw	zero,0(sp)
1c00a602:	001d8493          	addi	s1,s11,1
1c00a606:	350d                	jal	1c00a428 <strchr>
1c00a608:	02000913          	li	s2,32
1c00a60c:	4b81                	li	s7,0
1c00a60e:	02b00993          	li	s3,43
1c00a612:	02d00b13          	li	s6,45
1c00a616:	03000a93          	li	s5,48
1c00a61a:	02000a13          	li	s4,32
1c00a61e:	8626                	mv	a2,s1
1c00a620:	c51d                	beqz	a0,1c00a64e <pos_libc_prf+0x112>
1c00a622:	413c0e63          	beq	s8,s3,1c00aa3e <pos_libc_prf+0x502>
1c00a626:	3f89ec63          	bltu	s3,s8,1c00aa1e <pos_libc_prf+0x4e2>
1c00a62a:	414c0663          	beq	s8,s4,1c00aa36 <pos_libc_prf+0x4fa>
1c00a62e:	02300793          	li	a5,35
1c00a632:	3efc1363          	bne	s8,a5,1c00aa18 <pos_libc_prf+0x4dc>
1c00a636:	4b85                	li	s7,1
1c00a638:	8da6                	mv	s11,s1
1c00a63a:	000dcc03          	lbu	s8,0(s11)
1c00a63e:	150d0513          	addi	a0,s10,336
1c00a642:	001d8493          	addi	s1,s11,1
1c00a646:	85e2                	mv	a1,s8
1c00a648:	33c5                	jal	1c00a428 <strchr>
1c00a64a:	8626                	mv	a2,s1
1c00a64c:	f979                	bnez	a0,1c00a622 <pos_libc_prf+0xe6>
1c00a64e:	87e2                	mv	a5,s8
1c00a650:	ce5e                	sw	s7,28(sp)
1c00a652:	02a00693          	li	a3,42
1c00a656:	8c6e                	mv	s8,s11
1c00a658:	8ba6                	mv	s7,s1
1c00a65a:	8dbe                	mv	s11,a5
1c00a65c:	44c2                	lw	s1,16(sp)
1c00a65e:	42d78263          	beq	a5,a3,1c00aa82 <pos_libc_prf+0x546>
1c00a662:	fd078693          	addi	a3,a5,-48
1c00a666:	4525                	li	a0,9
1c00a668:	4a01                	li	s4,0
1c00a66a:	3cd57f63          	bgeu	a0,a3,1c00aa48 <pos_libc_prf+0x50c>
1c00a66e:	02e00793          	li	a5,46
1c00a672:	5afd                	li	s5,-1
1c00a674:	74fd8363          	beq	s11,a5,1c00adba <pos_libc_prf+0x87e>
1c00a678:	1c0007b7          	lui	a5,0x1c000
1c00a67c:	85ee                	mv	a1,s11
1c00a67e:	15878513          	addi	a0,a5,344 # 1c000158 <__clz_tab+0x13c>
1c00a682:	c832                	sw	a2,16(sp)
1c00a684:	3355                	jal	1c00a428 <strchr>
1c00a686:	4642                	lw	a2,16(sp)
1c00a688:	8c32                	mv	s8,a2
1c00a68a:	c509                	beqz	a0,1c00a694 <pos_libc_prf+0x158>
1c00a68c:	00064d83          	lbu	s11,0(a2)
1c00a690:	00160c13          	addi	s8,a2,1
1c00a694:	06900793          	li	a5,105
1c00a698:	0afd8ee3          	beq	s11,a5,1c00af54 <pos_libc_prf+0xa18>
1c00a69c:	4db7c763          	blt	a5,s11,1c00ab6a <pos_libc_prf+0x62e>
1c00a6a0:	05800793          	li	a5,88
1c00a6a4:	4efd8163          	beq	s11,a5,1c00ab86 <pos_libc_prf+0x64a>
1c00a6a8:	41b7c163          	blt	a5,s11,1c00aaaa <pos_libc_prf+0x56e>
1c00a6ac:	02500793          	li	a5,37
1c00a6b0:	26fd8ae3          	beq	s11,a5,1c00b124 <pos_libc_prf+0xbe8>
1c00a6b4:	3fb7d863          	bge	a5,s11,1c00aaa4 <pos_libc_prf+0x568>
1c00a6b8:	fbbd8793          	addi	a5,s11,-69
1c00a6bc:	4689                	li	a3,2
1c00a6be:	eef6e8e3          	bltu	a3,a5,1c00a5ae <pos_libc_prf+0x72>
1c00a6c2:	47b2                	lw	a5,12(sp)
1c00a6c4:	7ff00893          	li	a7,2047
1c00a6c8:	00778b13          	addi	s6,a5,7
1c00a6cc:	ff8b7b13          	andi	s6,s6,-8
1c00a6d0:	004b2783          	lw	a5,4(s6)
1c00a6d4:	000b2603          	lw	a2,0(s6)
1c00a6d8:	0b21                	addi	s6,s6,8
1c00a6da:	00b79693          	slli	a3,a5,0xb
1c00a6de:	01565513          	srli	a0,a2,0x15
1c00a6e2:	8ec9                	or	a3,a3,a0
1c00a6e4:	0147d813          	srli	a6,a5,0x14
1c00a6e8:	0686                	slli	a3,a3,0x1
1c00a6ea:	7ff87813          	andi	a6,a6,2047
1c00a6ee:	0016d513          	srli	a0,a3,0x1
1c00a6f2:	00b61313          	slli	t1,a2,0xb
1c00a6f6:	86be                	mv	a3,a5
1c00a6f8:	41180263          	beq	a6,a7,1c00aafc <pos_libc_prf+0x5c0>
1c00a6fc:	04600793          	li	a5,70
1c00a700:	00fd9463          	bne	s11,a5,1c00a708 <pos_libc_prf+0x1cc>
1c00a704:	06600d93          	li	s11,102
1c00a708:	006867b3          	or	a5,a6,t1
1c00a70c:	00a7e8b3          	or	a7,a5,a0
1c00a710:	862a                	mv	a2,a0
1c00a712:	340885e3          	beqz	a7,1c00b25c <pos_libc_prf+0xd20>
1c00a716:	80000637          	lui	a2,0x80000
1c00a71a:	c0280813          	addi	a6,a6,-1022
1c00a71e:	879a                	mv	a5,t1
1c00a720:	8e49                	or	a2,a2,a0
1c00a722:	4606c7e3          	bltz	a3,1c00b390 <pos_libc_prf+0xe54>
1c00a726:	4722                	lw	a4,8(sp)
1c00a728:	480708e3          	beqz	a4,1c00b3b8 <pos_libc_prf+0xe7c>
1c00a72c:	02b00693          	li	a3,43
1c00a730:	02d10223          	sb	a3,36(sp)
1c00a734:	02510f13          	addi	t5,sp,37
1c00a738:	56f9                	li	a3,-2
1c00a73a:	4301                	li	t1,0
1c00a73c:	06d85663          	bge	a6,a3,1c00a7a8 <pos_libc_prf+0x26c>
1c00a740:	333338b7          	lui	a7,0x33333
1c00a744:	80000e37          	lui	t3,0x80000
1c00a748:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a74c:	fffe4e13          	not	t3,t3
1c00a750:	5ef9                	li	t4,-2
1c00a752:	01f61593          	slli	a1,a2,0x1f
1c00a756:	0017d693          	srli	a3,a5,0x1
1c00a75a:	0017f713          	andi	a4,a5,1
1c00a75e:	8ecd                	or	a3,a3,a1
1c00a760:	00d707b3          	add	a5,a4,a3
1c00a764:	00e7b733          	sltu	a4,a5,a4
1c00a768:	8205                	srli	a2,a2,0x1
1c00a76a:	963a                	add	a2,a2,a4
1c00a76c:	8742                	mv	a4,a6
1c00a76e:	0805                	addi	a6,a6,1
1c00a770:	fec8e1e3          	bltu	a7,a2,1c00a752 <pos_libc_prf+0x216>
1c00a774:	00279593          	slli	a1,a5,0x2
1c00a778:	01e7d513          	srli	a0,a5,0x1e
1c00a77c:	00261693          	slli	a3,a2,0x2
1c00a780:	97ae                	add	a5,a5,a1
1c00a782:	8ec9                	or	a3,a3,a0
1c00a784:	9636                	add	a2,a2,a3
1c00a786:	00b7b5b3          	sltu	a1,a5,a1
1c00a78a:	962e                	add	a2,a2,a1
1c00a78c:	01f7d693          	srli	a3,a5,0x1f
1c00a790:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00a794:	137d                	addi	t1,t1,-1
1c00a796:	01c61763          	bne	a2,t3,1c00a7a4 <pos_libc_prf+0x268>
1c00a79a:	00170813          	addi	a6,a4,1
1c00a79e:	0786                	slli	a5,a5,0x1
1c00a7a0:	ffe6e613          	ori	a2,a3,-2
1c00a7a4:	fbd847e3          	blt	a6,t4,1c00a752 <pos_libc_prf+0x216>
1c00a7a8:	07005363          	blez	a6,1c00a80e <pos_libc_prf+0x2d2>
1c00a7ac:	800008b7          	lui	a7,0x80000
1c00a7b0:	4e15                	li	t3,5
1c00a7b2:	fff8c893          	not	a7,a7
1c00a7b6:	00278693          	addi	a3,a5,2
1c00a7ba:	00f6b7b3          	sltu	a5,a3,a5
1c00a7be:	963e                	add	a2,a2,a5
1c00a7c0:	03c657b3          	divu	a5,a2,t3
1c00a7c4:	0036d713          	srli	a4,a3,0x3
1c00a7c8:	187d                	addi	a6,a6,-1
1c00a7ca:	0305                	addi	t1,t1,1
1c00a7cc:	00279593          	slli	a1,a5,0x2
1c00a7d0:	95be                	add	a1,a1,a5
1c00a7d2:	8e0d                	sub	a2,a2,a1
1c00a7d4:	0676                	slli	a2,a2,0x1d
1c00a7d6:	8f51                	or	a4,a4,a2
1c00a7d8:	03c75633          	divu	a2,a4,t3
1c00a7dc:	00361713          	slli	a4,a2,0x3
1c00a7e0:	00561593          	slli	a1,a2,0x5
1c00a7e4:	95ba                	add	a1,a1,a4
1c00a7e6:	8e8d                	sub	a3,a3,a1
1c00a7e8:	03c6d6b3          	divu	a3,a3,t3
1c00a7ec:	8275                	srli	a2,a2,0x1d
1c00a7ee:	963e                	add	a2,a2,a5
1c00a7f0:	00e687b3          	add	a5,a3,a4
1c00a7f4:	00d7b6b3          	sltu	a3,a5,a3
1c00a7f8:	9636                	add	a2,a2,a3
1c00a7fa:	01f7d713          	srli	a4,a5,0x1f
1c00a7fe:	0606                	slli	a2,a2,0x1
1c00a800:	8e59                	or	a2,a2,a4
1c00a802:	0786                	slli	a5,a5,0x1
1c00a804:	187d                	addi	a6,a6,-1
1c00a806:	fec8fae3          	bgeu	a7,a2,1c00a7fa <pos_libc_prf+0x2be>
1c00a80a:	fb0046e3          	bgtz	a6,1c00a7b6 <pos_libc_prf+0x27a>
1c00a80e:	4e11                	li	t3,4
1c00a810:	01f61693          	slli	a3,a2,0x1f
1c00a814:	0017d713          	srli	a4,a5,0x1
1c00a818:	8f55                	or	a4,a4,a3
1c00a81a:	8b85                	andi	a5,a5,1
1c00a81c:	00e78533          	add	a0,a5,a4
1c00a820:	8205                	srli	a2,a2,0x1
1c00a822:	00f537b3          	sltu	a5,a0,a5
1c00a826:	00c788b3          	add	a7,a5,a2
1c00a82a:	0805                	addi	a6,a6,1
1c00a82c:	87aa                	mv	a5,a0
1c00a82e:	8646                	mv	a2,a7
1c00a830:	ffc810e3          	bne	a6,t3,1c00a810 <pos_libc_prf+0x2d4>
1c00a834:	06700793          	li	a5,103
1c00a838:	2a0acee3          	bltz	s5,1c00b2f4 <pos_libc_prf+0xdb8>
1c00a83c:	28fd83e3          	beq	s11,a5,1c00b2c2 <pos_libc_prf+0xd86>
1c00a840:	04700793          	li	a5,71
1c00a844:	26fd8fe3          	beq	s11,a5,1c00b2c2 <pos_libc_prf+0xd86>
1c00a848:	06600793          	li	a5,102
1c00a84c:	2cfd85e3          	beq	s11,a5,1c00b316 <pos_libc_prf+0xdda>
1c00a850:	001a8813          	addi	a6,s5,1
1c00a854:	47c1                	li	a5,16
1c00a856:	0107d363          	bge	a5,a6,1c00a85c <pos_libc_prf+0x320>
1c00a85a:	4841                	li	a6,16
1c00a85c:	187d                	addi	a6,a6,-1
1c00a85e:	4601                	li	a2,0
1c00a860:	4781                	li	a5,0
1c00a862:	080006b7          	lui	a3,0x8000
1c00a866:	4e15                	li	t3,5
1c00a868:	5efd                	li	t4,-1
1c00a86a:	00278713          	addi	a4,a5,2
1c00a86e:	00f737b3          	sltu	a5,a4,a5
1c00a872:	97b6                	add	a5,a5,a3
1c00a874:	03c7dfb3          	divu	t6,a5,t3
1c00a878:	00375593          	srli	a1,a4,0x3
1c00a87c:	187d                	addi	a6,a6,-1
1c00a87e:	002f9693          	slli	a3,t6,0x2
1c00a882:	96fe                	add	a3,a3,t6
1c00a884:	8f95                	sub	a5,a5,a3
1c00a886:	07f6                	slli	a5,a5,0x1d
1c00a888:	8ddd                	or	a1,a1,a5
1c00a88a:	03c5d5b3          	divu	a1,a1,t3
1c00a88e:	00359693          	slli	a3,a1,0x3
1c00a892:	00559793          	slli	a5,a1,0x5
1c00a896:	97b6                	add	a5,a5,a3
1c00a898:	8f1d                	sub	a4,a4,a5
1c00a89a:	03c757b3          	divu	a5,a4,t3
1c00a89e:	81f5                	srli	a1,a1,0x1d
1c00a8a0:	95fe                	add	a1,a1,t6
1c00a8a2:	96be                	add	a3,a3,a5
1c00a8a4:	00f6b733          	sltu	a4,a3,a5
1c00a8a8:	972e                	add	a4,a4,a1
1c00a8aa:	01f71593          	slli	a1,a4,0x1f
1c00a8ae:	0016d793          	srli	a5,a3,0x1
1c00a8b2:	8fcd                	or	a5,a5,a1
1c00a8b4:	8a85                	andi	a3,a3,1
1c00a8b6:	97b6                	add	a5,a5,a3
1c00a8b8:	8305                	srli	a4,a4,0x1
1c00a8ba:	00d7b6b3          	sltu	a3,a5,a3
1c00a8be:	96ba                	add	a3,a3,a4
1c00a8c0:	fbd815e3          	bne	a6,t4,1c00a86a <pos_libc_prf+0x32e>
1c00a8c4:	97aa                	add	a5,a5,a0
1c00a8c6:	96c6                	add	a3,a3,a7
1c00a8c8:	00a7b533          	sltu	a0,a5,a0
1c00a8cc:	00d508b3          	add	a7,a0,a3
1c00a8d0:	f00006b7          	lui	a3,0xf0000
1c00a8d4:	0116f6b3          	and	a3,a3,a7
1c00a8d8:	c2b5                	beqz	a3,1c00a93c <pos_libc_prf+0x400>
1c00a8da:	00278813          	addi	a6,a5,2
1c00a8de:	00f836b3          	sltu	a3,a6,a5
1c00a8e2:	98b6                	add	a7,a7,a3
1c00a8e4:	4e95                	li	t4,5
1c00a8e6:	03d8de33          	divu	t3,a7,t4
1c00a8ea:	00385693          	srli	a3,a6,0x3
1c00a8ee:	0305                	addi	t1,t1,1
1c00a8f0:	002e1513          	slli	a0,t3,0x2
1c00a8f4:	9572                	add	a0,a0,t3
1c00a8f6:	40a888b3          	sub	a7,a7,a0
1c00a8fa:	01d89513          	slli	a0,a7,0x1d
1c00a8fe:	8ec9                	or	a3,a3,a0
1c00a900:	03d6d6b3          	divu	a3,a3,t4
1c00a904:	00369513          	slli	a0,a3,0x3
1c00a908:	00569793          	slli	a5,a3,0x5
1c00a90c:	97aa                	add	a5,a5,a0
1c00a90e:	40f807b3          	sub	a5,a6,a5
1c00a912:	03d7d7b3          	divu	a5,a5,t4
1c00a916:	82f5                	srli	a3,a3,0x1d
1c00a918:	96f2                	add	a3,a3,t3
1c00a91a:	953e                	add	a0,a0,a5
1c00a91c:	00f537b3          	sltu	a5,a0,a5
1c00a920:	96be                	add	a3,a3,a5
1c00a922:	01f69813          	slli	a6,a3,0x1f
1c00a926:	00155793          	srli	a5,a0,0x1
1c00a92a:	00f867b3          	or	a5,a6,a5
1c00a92e:	8905                	andi	a0,a0,1
1c00a930:	97aa                	add	a5,a5,a0
1c00a932:	8285                	srli	a3,a3,0x1
1c00a934:	00a7b533          	sltu	a0,a5,a0
1c00a938:	00d508b3          	add	a7,a0,a3
1c00a93c:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a940:	06600693          	li	a3,102
1c00a944:	884e                	mv	a6,s3
1c00a946:	4edd8163          	beq	s11,a3,1c00ae28 <pos_libc_prf+0x8ec>
1c00a94a:	00279693          	slli	a3,a5,0x2
1c00a94e:	01e7d513          	srli	a0,a5,0x1e
1c00a952:	00289e13          	slli	t3,a7,0x2
1c00a956:	97b6                	add	a5,a5,a3
1c00a958:	01c56e33          	or	t3,a0,t3
1c00a95c:	00d7b833          	sltu	a6,a5,a3
1c00a960:	011e06b3          	add	a3,t3,a7
1c00a964:	9836                	add	a6,a6,a3
1c00a966:	0806                	slli	a6,a6,0x1
1c00a968:	01f7d693          	srli	a3,a5,0x1f
1c00a96c:	0106e833          	or	a6,a3,a6
1c00a970:	01c85693          	srli	a3,a6,0x1c
1c00a974:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00a978:	4772                	lw	a4,28(sp)
1c00a97a:	00af0023          	sb	a0,0(t5)
1c00a97e:	00179513          	slli	a0,a5,0x1
1c00a982:	47d2                	lw	a5,20(sp)
1c00a984:	00d036b3          	snez	a3,a3
1c00a988:	01576bb3          	or	s7,a4,s5
1c00a98c:	00f87833          	and	a6,a6,a5
1c00a990:	40d30333          	sub	t1,t1,a3
1c00a994:	060b8463          	beqz	s7,1c00a9fc <pos_libc_prf+0x4c0>
1c00a998:	02e00793          	li	a5,46
1c00a99c:	00ff00a3          	sb	a5,1(t5)
1c00a9a0:	002f0993          	addi	s3,t5,2
1c00a9a4:	040a8c63          	beqz	s5,1c00a9fc <pos_libc_prf+0x4c0>
1c00a9a8:	002a8793          	addi	a5,s5,2
1c00a9ac:	9f3e                	add	t5,t5,a5
1c00a9ae:	88ce                	mv	a7,s3
1c00a9b0:	4ebd                	li	t4,15
1c00a9b2:	03000f93          	li	t6,48
1c00a9b6:	00251793          	slli	a5,a0,0x2
1c00a9ba:	01e55693          	srli	a3,a0,0x1e
1c00a9be:	00281713          	slli	a4,a6,0x2
1c00a9c2:	00a785b3          	add	a1,a5,a0
1c00a9c6:	8f55                	or	a4,a4,a3
1c00a9c8:	9742                	add	a4,a4,a6
1c00a9ca:	00f5b7b3          	sltu	a5,a1,a5
1c00a9ce:	97ba                	add	a5,a5,a4
1c00a9d0:	0786                	slli	a5,a5,0x1
1c00a9d2:	01f5d713          	srli	a4,a1,0x1f
1c00a9d6:	8fd9                	or	a5,a5,a4
1c00a9d8:	01c7d713          	srli	a4,a5,0x1c
1c00a9dc:	03070713          	addi	a4,a4,48
1c00a9e0:	0885                	addi	a7,a7,1
1c00a9e2:	53d05763          	blez	t4,1c00af10 <pos_libc_prf+0x9d4>
1c00a9e6:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00a9ea:	4752                	lw	a4,20(sp)
1c00a9ec:	1efd                	addi	t4,t4,-1
1c00a9ee:	00159513          	slli	a0,a1,0x1
1c00a9f2:	00e7f833          	and	a6,a5,a4
1c00a9f6:	fd1f10e3          	bne	t5,a7,1c00a9b6 <pos_libc_prf+0x47a>
1c00a9fa:	99d6                	add	s3,s3,s5
1c00a9fc:	4e061c63          	bnez	a2,1c00aef4 <pos_libc_prf+0x9b8>
1c00aa00:	fdfdf793          	andi	a5,s11,-33
1c00aa04:	04500693          	li	a3,69
1c00aa08:	00d781e3          	beq	a5,a3,1c00b20a <pos_libc_prf+0xcce>
1c00aa0c:	105c                	addi	a5,sp,36
1c00aa0e:	00098023          	sb	zero,0(s3)
1c00aa12:	40f989b3          	sub	s3,s3,a5
1c00aa16:	aa05                	j	1c00ab46 <pos_libc_prf+0x60a>
1c00aa18:	b80c0fe3          	beqz	s8,1c00a5b6 <pos_libc_prf+0x7a>
1c00aa1c:	b931                	j	1c00a638 <pos_libc_prf+0xfc>
1c00aa1e:	016c0863          	beq	s8,s6,1c00aa2e <pos_libc_prf+0x4f2>
1c00aa22:	c15c1be3          	bne	s8,s5,1c00a638 <pos_libc_prf+0xfc>
1c00aa26:	03000913          	li	s2,48
1c00aa2a:	8da6                	mv	s11,s1
1c00aa2c:	b139                	j	1c00a63a <pos_libc_prf+0xfe>
1c00aa2e:	4785                	li	a5,1
1c00aa30:	c03e                	sw	a5,0(sp)
1c00aa32:	8da6                	mv	s11,s1
1c00aa34:	b119                	j	1c00a63a <pos_libc_prf+0xfe>
1c00aa36:	4785                	li	a5,1
1c00aa38:	c23e                	sw	a5,4(sp)
1c00aa3a:	8da6                	mv	s11,s1
1c00aa3c:	befd                	j	1c00a63a <pos_libc_prf+0xfe>
1c00aa3e:	4785                	li	a5,1
1c00aa40:	c43e                	sw	a5,8(sp)
1c00aa42:	8da6                	mv	s11,s1
1c00aa44:	bedd                	j	1c00a63a <pos_libc_prf+0xfe>
1c00aa46:	0b85                	addi	s7,s7,1
1c00aa48:	002a1793          	slli	a5,s4,0x2
1c00aa4c:	97d2                	add	a5,a5,s4
1c00aa4e:	0786                	slli	a5,a5,0x1
1c00aa50:	97ee                	add	a5,a5,s11
1c00aa52:	000bcd83          	lbu	s11,0(s7) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00aa56:	fd078a13          	addi	s4,a5,-48
1c00aa5a:	8662                	mv	a2,s8
1c00aa5c:	fd0d8793          	addi	a5,s11,-48
1c00aa60:	8c5e                	mv	s8,s7
1c00aa62:	fef572e3          	bgeu	a0,a5,1c00aa46 <pos_libc_prf+0x50a>
1c00aa66:	0609                	addi	a2,a2,2
1c00aa68:	0c800793          	li	a5,200
1c00aa6c:	c147f1e3          	bgeu	a5,s4,1c00a66e <pos_libc_prf+0x132>
1c00aa70:	0c800a13          	li	s4,200
1c00aa74:	beed                	j	1c00a66e <pos_libc_prf+0x132>
1c00aa76:	0c800793          	li	a5,200
1c00aa7a:	b3b7dae3          	bge	a5,s11,1c00a5ae <pos_libc_prf+0x72>
1c00aa7e:	547d                	li	s0,-1
1c00aa80:	be1d                	j	1c00a5b6 <pos_libc_prf+0x7a>
1c00aa82:	47b2                	lw	a5,12(sp)
1c00aa84:	0007aa03          	lw	s4,0(a5)
1c00aa88:	00478693          	addi	a3,a5,4
1c00aa8c:	000a5663          	bgez	s4,1c00aa98 <pos_libc_prf+0x55c>
1c00aa90:	4785                	li	a5,1
1c00aa92:	41400a33          	neg	s4,s4
1c00aa96:	c03e                	sw	a5,0(sp)
1c00aa98:	000bcd83          	lbu	s11,0(s7)
1c00aa9c:	c636                	sw	a3,12(sp)
1c00aa9e:	002c0613          	addi	a2,s8,2
1c00aaa2:	b7d9                	j	1c00aa68 <pos_libc_prf+0x52c>
1c00aaa4:	b00d89e3          	beqz	s11,1c00a5b6 <pos_libc_prf+0x7a>
1c00aaa8:	b619                	j	1c00a5ae <pos_libc_prf+0x72>
1c00aaaa:	06400793          	li	a5,100
1c00aaae:	4afd8363          	beq	s11,a5,1c00af54 <pos_libc_prf+0xa18>
1c00aab2:	19b7d963          	bge	a5,s11,1c00ac44 <pos_libc_prf+0x708>
1c00aab6:	f9bd8793          	addi	a5,s11,-101
1c00aaba:	4689                	li	a3,2
1c00aabc:	aef6e9e3          	bltu	a3,a5,1c00a5ae <pos_libc_prf+0x72>
1c00aac0:	47b2                	lw	a5,12(sp)
1c00aac2:	7ff00893          	li	a7,2047
1c00aac6:	00778b13          	addi	s6,a5,7
1c00aaca:	ff8b7b13          	andi	s6,s6,-8
1c00aace:	004b2783          	lw	a5,4(s6)
1c00aad2:	000b2603          	lw	a2,0(s6)
1c00aad6:	0b21                	addi	s6,s6,8
1c00aad8:	00b79693          	slli	a3,a5,0xb
1c00aadc:	01565813          	srli	a6,a2,0x15
1c00aae0:	0147d513          	srli	a0,a5,0x14
1c00aae4:	00d866b3          	or	a3,a6,a3
1c00aae8:	0686                	slli	a3,a3,0x1
1c00aaea:	7ff57813          	andi	a6,a0,2047
1c00aaee:	00b61313          	slli	t1,a2,0xb
1c00aaf2:	0016d513          	srli	a0,a3,0x1
1c00aaf6:	86be                	mv	a3,a5
1c00aaf8:	c11818e3          	bne	a6,a7,1c00a708 <pos_libc_prf+0x1cc>
1c00aafc:	105c                	addi	a5,sp,36
1c00aafe:	0006d863          	bgez	a3,1c00ab0e <pos_libc_prf+0x5d2>
1c00ab02:	02d00793          	li	a5,45
1c00ab06:	02f10223          	sb	a5,36(sp)
1c00ab0a:	02510793          	addi	a5,sp,37
1c00ab0e:	00a36633          	or	a2,t1,a0
1c00ab12:	fbfd8593          	addi	a1,s11,-65
1c00ab16:	00378993          	addi	s3,a5,3
1c00ab1a:	46e5                	li	a3,25
1c00ab1c:	0c0612e3          	bnez	a2,1c00b3e0 <pos_libc_prf+0xea4>
1c00ab20:	10b6e5e3          	bltu	a3,a1,1c00b42a <pos_libc_prf+0xeee>
1c00ab24:	04900693          	li	a3,73
1c00ab28:	00d78023          	sb	a3,0(a5)
1c00ab2c:	04e00693          	li	a3,78
1c00ab30:	00d780a3          	sb	a3,1(a5)
1c00ab34:	04600693          	li	a3,70
1c00ab38:	00d78123          	sb	a3,2(a5)
1c00ab3c:	000781a3          	sb	zero,3(a5)
1c00ab40:	105c                	addi	a5,sp,36
1c00ab42:	40f989b3          	sub	s3,s3,a5
1c00ab46:	47a2                	lw	a5,8(sp)
1c00ab48:	4712                	lw	a4,4(sp)
1c00ab4a:	8fd9                	or	a5,a5,a4
1c00ab4c:	ce3e                	sw	a5,28(sp)
1c00ab4e:	5e079b63          	bnez	a5,1c00b144 <pos_libc_prf+0xc08>
1c00ab52:	02414683          	lbu	a3,36(sp)
1c00ab56:	02d00793          	li	a5,45
1c00ab5a:	5ef68563          	beq	a3,a5,1c00b144 <pos_libc_prf+0xc08>
1c00ab5e:	0c800793          	li	a5,200
1c00ab62:	0d37d863          	bge	a5,s3,1c00ac32 <pos_libc_prf+0x6f6>
1c00ab66:	547d                	li	s0,-1
1c00ab68:	b4b9                	j	1c00a5b6 <pos_libc_prf+0x7a>
1c00ab6a:	07000793          	li	a5,112
1c00ab6e:	46fd8f63          	beq	s11,a5,1c00afec <pos_libc_prf+0xab0>
1c00ab72:	1bb7d663          	bge	a5,s11,1c00ad1e <pos_libc_prf+0x7e2>
1c00ab76:	07500793          	li	a5,117
1c00ab7a:	52fd8763          	beq	s11,a5,1c00b0a8 <pos_libc_prf+0xb6c>
1c00ab7e:	07800793          	li	a5,120
1c00ab82:	16fd9163          	bne	s11,a5,1c00ace4 <pos_libc_prf+0x7a8>
1c00ab86:	47b2                	lw	a5,12(sp)
1c00ab88:	1054                	addi	a3,sp,36
1c00ab8a:	4390                	lw	a2,0(a5)
1c00ab8c:	00478b13          	addi	s6,a5,4
1c00ab90:	47f2                	lw	a5,28(sp)
1c00ab92:	28079163          	bnez	a5,1c00ae14 <pos_libc_prf+0x8d8>
1c00ab96:	87b6                	mv	a5,a3
1c00ab98:	4ea5                	li	t4,9
1c00ab9a:	4e3d                	li	t3,15
1c00ab9c:	a039                	j	1c00abaa <pos_libc_prf+0x66e>
1c00ab9e:	ff098fa3          	sb	a6,-1(s3)
1c00aba2:	02ce7663          	bgeu	t3,a2,1c00abce <pos_libc_prf+0x692>
1c00aba6:	862a                	mv	a2,a0
1c00aba8:	87ce                	mv	a5,s3
1c00abaa:	00f67593          	andi	a1,a2,15
1c00abae:	00178993          	addi	s3,a5,1
1c00abb2:	05758813          	addi	a6,a1,87
1c00abb6:	03058713          	addi	a4,a1,48
1c00abba:	00465513          	srli	a0,a2,0x4
1c00abbe:	febee0e3          	bltu	t4,a1,1c00ab9e <pos_libc_prf+0x662>
1c00abc2:	00e78023          	sb	a4,0(a5)
1c00abc6:	00178993          	addi	s3,a5,1
1c00abca:	fcce6ee3          	bltu	t3,a2,1c00aba6 <pos_libc_prf+0x66a>
1c00abce:	40d98633          	sub	a2,s3,a3
1c00abd2:	01565c63          	bge	a2,s5,1c00abea <pos_libc_prf+0x6ae>
1c00abd6:	03000513          	li	a0,48
1c00abda:	87ce                	mv	a5,s3
1c00abdc:	0985                	addi	s3,s3,1
1c00abde:	40d98733          	sub	a4,s3,a3
1c00abe2:	fea98fa3          	sb	a0,-1(s3)
1c00abe6:	ff574ae3          	blt	a4,s5,1c00abda <pos_libc_prf+0x69e>
1c00abea:	00098023          	sb	zero,0(s3)
1c00abee:	00f6fe63          	bgeu	a3,a5,1c00ac0a <pos_libc_prf+0x6ce>
1c00abf2:	0006c603          	lbu	a2,0(a3)
1c00abf6:	0007c703          	lbu	a4,0(a5)
1c00abfa:	0685                	addi	a3,a3,1
1c00abfc:	00c78023          	sb	a2,0(a5)
1c00ac00:	fee68fa3          	sb	a4,-1(a3)
1c00ac04:	17fd                	addi	a5,a5,-1
1c00ac06:	fef6e6e3          	bltu	a3,a5,1c00abf2 <pos_libc_prf+0x6b6>
1c00ac0a:	05800793          	li	a5,88
1c00ac0e:	66fd8463          	beq	s11,a5,1c00b276 <pos_libc_prf+0xd3a>
1c00ac12:	105c                	addi	a5,sp,36
1c00ac14:	40f989b3          	sub	s3,s3,a5
1c00ac18:	47f2                	lw	a5,28(sp)
1c00ac1a:	c399                	beqz	a5,1c00ac20 <pos_libc_prf+0x6e4>
1c00ac1c:	4789                	li	a5,2
1c00ac1e:	ce3e                	sw	a5,28(sp)
1c00ac20:	57fd                	li	a5,-1
1c00ac22:	f2fa8ee3          	beq	s5,a5,1c00ab5e <pos_libc_prf+0x622>
1c00ac26:	0c800793          	li	a5,200
1c00ac2a:	e537cae3          	blt	a5,s3,1c00aa7e <pos_libc_prf+0x542>
1c00ac2e:	02000913          	li	s2,32
1c00ac32:	00198613          	addi	a2,s3,1
1c00ac36:	0349c963          	blt	s3,s4,1c00ac68 <pos_libc_prf+0x72c>
1c00ac3a:	c65a                	sw	s6,12(sp)
1c00ac3c:	8a4e                	mv	s4,s3
1c00ac3e:	1a0a1663          	bnez	s4,1c00adea <pos_libc_prf+0x8ae>
1c00ac42:	b2b5                	j	1c00a5ae <pos_libc_prf+0x72>
1c00ac44:	06300793          	li	a5,99
1c00ac48:	96fd93e3          	bne	s11,a5,1c00a5ae <pos_libc_prf+0x72>
1c00ac4c:	4732                	lw	a4,12(sp)
1c00ac4e:	020102a3          	sb	zero,37(sp)
1c00ac52:	4785                	li	a5,1
1c00ac54:	4314                	lw	a3,0(a4)
1c00ac56:	00470b13          	addi	s6,a4,4
1c00ac5a:	02d10223          	sb	a3,36(sp)
1c00ac5e:	1947d463          	bge	a5,s4,1c00ade6 <pos_libc_prf+0x8aa>
1c00ac62:	4609                	li	a2,2
1c00ac64:	4985                	li	s3,1
1c00ac66:	ce02                	sw	zero,28(sp)
1c00ac68:	4782                	lw	a5,0(sp)
1c00ac6a:	4e078463          	beqz	a5,1c00b152 <pos_libc_prf+0xc16>
1c00ac6e:	413a07b3          	sub	a5,s4,s3
1c00ac72:	4585                	li	a1,1
1c00ac74:	0149d363          	bge	s3,s4,1c00ac7a <pos_libc_prf+0x73e>
1c00ac78:	85be                	mv	a1,a5
1c00ac7a:	17fd                	addi	a5,a5,-1
1c00ac7c:	0037b793          	sltiu	a5,a5,3
1c00ac80:	eb95                	bnez	a5,1c00acb4 <pos_libc_prf+0x778>
1c00ac82:	0349d963          	bge	s3,s4,1c00acb4 <pos_libc_prf+0x778>
1c00ac86:	105c                	addi	a5,sp,36
1c00ac88:	97ce                	add	a5,a5,s3
1c00ac8a:	ffc5f613          	andi	a2,a1,-4
1c00ac8e:	963e                	add	a2,a2,a5
1c00ac90:	02000693          	li	a3,32
1c00ac94:	00d78023          	sb	a3,0(a5)
1c00ac98:	00d780a3          	sb	a3,1(a5)
1c00ac9c:	00d78123          	sb	a3,2(a5)
1c00aca0:	00d781a3          	sb	a3,3(a5)
1c00aca4:	0791                	addi	a5,a5,4
1c00aca6:	fef617e3          	bne	a2,a5,1c00ac94 <pos_libc_prf+0x758>
1c00acaa:	ffc5f793          	andi	a5,a1,-4
1c00acae:	99be                	add	s3,s3,a5
1c00acb0:	02b78663          	beq	a5,a1,1c00acdc <pos_libc_prf+0x7a0>
1c00acb4:	199c                	addi	a5,sp,240
1c00acb6:	97ce                	add	a5,a5,s3
1c00acb8:	02000693          	li	a3,32
1c00acbc:	f2d78a23          	sb	a3,-204(a5)
1c00acc0:	00198793          	addi	a5,s3,1
1c00acc4:	0147dc63          	bge	a5,s4,1c00acdc <pos_libc_prf+0x7a0>
1c00acc8:	1998                	addi	a4,sp,240
1c00acca:	97ba                	add	a5,a5,a4
1c00accc:	f2d78a23          	sb	a3,-204(a5)
1c00acd0:	0989                	addi	s3,s3,2
1c00acd2:	0149d563          	bge	s3,s4,1c00acdc <pos_libc_prf+0x7a0>
1c00acd6:	99ba                	add	s3,s3,a4
1c00acd8:	f2d98a23          	sb	a3,-204(s3)
1c00acdc:	c65a                	sw	s6,12(sp)
1c00acde:	100a1663          	bnez	s4,1c00adea <pos_libc_prf+0x8ae>
1c00ace2:	b0f1                	j	1c00a5ae <pos_libc_prf+0x72>
1c00ace4:	07300793          	li	a5,115
1c00ace8:	d8fd97e3          	bne	s11,a5,1c00aa76 <pos_libc_prf+0x53a>
1c00acec:	47b2                	lw	a5,12(sp)
1c00acee:	4981                	li	s3,0
1c00acf0:	0c800693          	li	a3,200
1c00acf4:	438c                	lw	a1,0(a5)
1c00acf6:	00478b13          	addi	s6,a5,4
1c00acfa:	a021                	j	1c00ad02 <pos_libc_prf+0x7c6>
1c00acfc:	0985                	addi	s3,s3,1
1c00acfe:	6ad98163          	beq	s3,a3,1c00b3a0 <pos_libc_prf+0xe64>
1c00ad02:	013587b3          	add	a5,a1,s3
1c00ad06:	0007c783          	lbu	a5,0(a5)
1c00ad0a:	fbed                	bnez	a5,1c00acfc <pos_libc_prf+0x7c0>
1c00ad0c:	000ac563          	bltz	s5,1c00ad16 <pos_libc_prf+0x7da>
1c00ad10:	013ad363          	bge	s5,s3,1c00ad16 <pos_libc_prf+0x7da>
1c00ad14:	89d6                	mv	s3,s5
1c00ad16:	5a099163          	bnez	s3,1c00b2b8 <pos_libc_prf+0xd7c>
1c00ad1a:	c65a                	sw	s6,12(sp)
1c00ad1c:	b849                	j	1c00a5ae <pos_libc_prf+0x72>
1c00ad1e:	06e00793          	li	a5,110
1c00ad22:	36fd8c63          	beq	s11,a5,1c00b09a <pos_libc_prf+0xb5e>
1c00ad26:	06f00793          	li	a5,111
1c00ad2a:	88fd92e3          	bne	s11,a5,1c00a5ae <pos_libc_prf+0x72>
1c00ad2e:	47b2                	lw	a5,12(sp)
1c00ad30:	4390                	lw	a2,0(a5)
1c00ad32:	00478b13          	addi	s6,a5,4
1c00ad36:	47f2                	lw	a5,28(sp)
1c00ad38:	c7f5                	beqz	a5,1c00ae24 <pos_libc_prf+0x8e8>
1c00ad3a:	03000793          	li	a5,48
1c00ad3e:	02f10223          	sb	a5,36(sp)
1c00ad42:	02510693          	addi	a3,sp,37
1c00ad46:	60060b63          	beqz	a2,1c00b35c <pos_libc_prf+0xe20>
1c00ad4a:	89b6                	mv	s3,a3
1c00ad4c:	481d                	li	a6,7
1c00ad4e:	00767713          	andi	a4,a2,7
1c00ad52:	03070713          	addi	a4,a4,48
1c00ad56:	85b2                	mv	a1,a2
1c00ad58:	00e98023          	sb	a4,0(s3)
1c00ad5c:	87ce                	mv	a5,s3
1c00ad5e:	820d                	srli	a2,a2,0x3
1c00ad60:	0985                	addi	s3,s3,1
1c00ad62:	feb866e3          	bltu	a6,a1,1c00ad4e <pos_libc_prf+0x812>
1c00ad66:	40d98633          	sub	a2,s3,a3
1c00ad6a:	01565c63          	bge	a2,s5,1c00ad82 <pos_libc_prf+0x846>
1c00ad6e:	03000593          	li	a1,48
1c00ad72:	87ce                	mv	a5,s3
1c00ad74:	0985                	addi	s3,s3,1
1c00ad76:	40d98733          	sub	a4,s3,a3
1c00ad7a:	feb98fa3          	sb	a1,-1(s3)
1c00ad7e:	ff574ae3          	blt	a4,s5,1c00ad72 <pos_libc_prf+0x836>
1c00ad82:	00098023          	sb	zero,0(s3)
1c00ad86:	00f6fe63          	bgeu	a3,a5,1c00ada2 <pos_libc_prf+0x866>
1c00ad8a:	0006c603          	lbu	a2,0(a3)
1c00ad8e:	0007c703          	lbu	a4,0(a5)
1c00ad92:	0685                	addi	a3,a3,1
1c00ad94:	00c78023          	sb	a2,0(a5)
1c00ad98:	fee68fa3          	sb	a4,-1(a3)
1c00ad9c:	17fd                	addi	a5,a5,-1
1c00ad9e:	fef6e6e3          	bltu	a3,a5,1c00ad8a <pos_libc_prf+0x84e>
1c00ada2:	1058                	addi	a4,sp,36
1c00ada4:	57fd                	li	a5,-1
1c00ada6:	40e989b3          	sub	s3,s3,a4
1c00adaa:	36fa8763          	beq	s5,a5,1c00b118 <pos_libc_prf+0xbdc>
1c00adae:	0c800793          	li	a5,200
1c00adb2:	cd37c6e3          	blt	a5,s3,1c00aa7e <pos_libc_prf+0x542>
1c00adb6:	ce02                	sw	zero,28(sp)
1c00adb8:	bd9d                	j	1c00ac2e <pos_libc_prf+0x6f2>
1c00adba:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00adbe:	02a00793          	li	a5,42
1c00adc2:	00160693          	addi	a3,a2,1
1c00adc6:	14f59b63          	bne	a1,a5,1c00af1c <pos_libc_prf+0x9e0>
1c00adca:	47b2                	lw	a5,12(sp)
1c00adcc:	00164d83          	lbu	s11,1(a2)
1c00add0:	0609                	addi	a2,a2,2
1c00add2:	0007aa83          	lw	s5,0(a5)
1c00add6:	0791                	addi	a5,a5,4
1c00add8:	c63e                	sw	a5,12(sp)
1c00adda:	0c800793          	li	a5,200
1c00adde:	8957dde3          	bge	a5,s5,1c00a678 <pos_libc_prf+0x13c>
1c00ade2:	5afd                	li	s5,-1
1c00ade4:	b851                	j	1c00a678 <pos_libc_prf+0x13c>
1c00ade6:	c65a                	sw	s6,12(sp)
1c00ade8:	4a05                	li	s4,1
1c00adea:	02410913          	addi	s2,sp,36
1c00adee:	59fd                	li	s3,-1
1c00adf0:	41240ab3          	sub	s5,s0,s2
1c00adf4:	9a4a                	add	s4,s4,s2
1c00adf6:	a029                	j	1c00ae00 <pos_libc_prf+0x8c4>
1c00adf8:	012a8433          	add	s0,s5,s2
1c00adfc:	fb490963          	beq	s2,s4,1c00a5ae <pos_libc_prf+0x72>
1c00ae00:	00094503          	lbu	a0,0(s2)
1c00ae04:	85a6                	mv	a1,s1
1c00ae06:	0905                	addi	s2,s2,1
1c00ae08:	9c82                	jalr	s9
1c00ae0a:	ff3517e3          	bne	a0,s3,1c00adf8 <pos_libc_prf+0x8bc>
1c00ae0e:	547d                	li	s0,-1
1c00ae10:	fa6ff06f          	j	1c00a5b6 <pos_libc_prf+0x7a>
1c00ae14:	77e1                	lui	a5,0xffff8
1c00ae16:	8307c793          	xori	a5,a5,-2000
1c00ae1a:	02f11223          	sh	a5,36(sp)
1c00ae1e:	02610693          	addi	a3,sp,38
1c00ae22:	bb95                	j	1c00ab96 <pos_libc_prf+0x65a>
1c00ae24:	1054                	addi	a3,sp,36
1c00ae26:	b715                	j	1c00ad4a <pos_libc_prf+0x80e>
1c00ae28:	5c605a63          	blez	t1,1c00b3fc <pos_libc_prf+0xec0>
1c00ae2c:	006f09b3          	add	s3,t5,t1
1c00ae30:	4541                	li	a0,16
1c00ae32:	03000e13          	li	t3,48
1c00ae36:	00279713          	slli	a4,a5,0x2
1c00ae3a:	01e7d593          	srli	a1,a5,0x1e
1c00ae3e:	00289693          	slli	a3,a7,0x2
1c00ae42:	00f70333          	add	t1,a4,a5
1c00ae46:	8ecd                	or	a3,a3,a1
1c00ae48:	96c6                	add	a3,a3,a7
1c00ae4a:	00e33733          	sltu	a4,t1,a4
1c00ae4e:	9736                	add	a4,a4,a3
1c00ae50:	0706                	slli	a4,a4,0x1
1c00ae52:	01f35693          	srli	a3,t1,0x1f
1c00ae56:	8f55                	or	a4,a4,a3
1c00ae58:	01c75693          	srli	a3,a4,0x1c
1c00ae5c:	03068693          	addi	a3,a3,48
1c00ae60:	4ea05463          	blez	a0,1c00b348 <pos_libc_prf+0xe0c>
1c00ae64:	fed80fa3          	sb	a3,-1(a6)
1c00ae68:	46d2                	lw	a3,20(sp)
1c00ae6a:	157d                	addi	a0,a0,-1
1c00ae6c:	00131793          	slli	a5,t1,0x1
1c00ae70:	00d778b3          	and	a7,a4,a3
1c00ae74:	4d099e63          	bne	s3,a6,1c00b350 <pos_libc_prf+0xe14>
1c00ae78:	4301                	li	t1,0
1c00ae7a:	4772                	lw	a4,28(sp)
1c00ae7c:	01576bb3          	or	s7,a4,s5
1c00ae80:	060b8863          	beqz	s7,1c00aef0 <pos_libc_prf+0x9b4>
1c00ae84:	02e00693          	li	a3,46
1c00ae88:	00d98023          	sb	a3,0(s3)
1c00ae8c:	00198e93          	addi	t4,s3,1
1c00ae90:	5c0a8763          	beqz	s5,1c00b45e <pos_libc_prf+0xf22>
1c00ae94:	001a8693          	addi	a3,s5,1
1c00ae98:	99b6                	add	s3,s3,a3
1c00ae9a:	8876                	mv	a6,t4
1c00ae9c:	03000f13          	li	t5,48
1c00aea0:	0805                	addi	a6,a6,1
1c00aea2:	4a031963          	bnez	t1,1c00b354 <pos_libc_prf+0xe18>
1c00aea6:	00279713          	slli	a4,a5,0x2
1c00aeaa:	01e7d593          	srli	a1,a5,0x1e
1c00aeae:	00289693          	slli	a3,a7,0x2
1c00aeb2:	00f70e33          	add	t3,a4,a5
1c00aeb6:	8ecd                	or	a3,a3,a1
1c00aeb8:	96c6                	add	a3,a3,a7
1c00aeba:	00ee3733          	sltu	a4,t3,a4
1c00aebe:	9736                	add	a4,a4,a3
1c00aec0:	0706                	slli	a4,a4,0x1
1c00aec2:	01fe5693          	srli	a3,t3,0x1f
1c00aec6:	8f55                	or	a4,a4,a3
1c00aec8:	01c75593          	srli	a1,a4,0x1c
1c00aecc:	03000693          	li	a3,48
1c00aed0:	00a05a63          	blez	a0,1c00aee4 <pos_libc_prf+0x9a8>
1c00aed4:	03058693          	addi	a3,a1,48
1c00aed8:	45d2                	lw	a1,20(sp)
1c00aeda:	157d                	addi	a0,a0,-1
1c00aedc:	001e1793          	slli	a5,t3,0x1
1c00aee0:	00b778b3          	and	a7,a4,a1
1c00aee4:	fed80fa3          	sb	a3,-1(a6)
1c00aee8:	fb099ce3          	bne	s3,a6,1c00aea0 <pos_libc_prf+0x964>
1c00aeec:	015e89b3          	add	s3,t4,s5
1c00aef0:	b0060ee3          	beqz	a2,1c00aa0c <pos_libc_prf+0x4d0>
1c00aef4:	03000613          	li	a2,48
1c00aef8:	fff9c783          	lbu	a5,-1(s3)
1c00aefc:	86ce                	mv	a3,s3
1c00aefe:	19fd                	addi	s3,s3,-1
1c00af00:	fec78ce3          	beq	a5,a2,1c00aef8 <pos_libc_prf+0x9bc>
1c00af04:	02e00613          	li	a2,46
1c00af08:	aec78ce3          	beq	a5,a2,1c00aa00 <pos_libc_prf+0x4c4>
1c00af0c:	89b6                	mv	s3,a3
1c00af0e:	bccd                	j	1c00aa00 <pos_libc_prf+0x4c4>
1c00af10:	fff88fa3          	sb	t6,-1(a7)
1c00af14:	ab1f11e3          	bne	t5,a7,1c00a9b6 <pos_libc_prf+0x47a>
1c00af18:	99d6                	add	s3,s3,s5
1c00af1a:	b4cd                	j	1c00a9fc <pos_libc_prf+0x4c0>
1c00af1c:	fd058713          	addi	a4,a1,-48
1c00af20:	47a5                	li	a5,9
1c00af22:	8dae                	mv	s11,a1
1c00af24:	4a81                	li	s5,0
1c00af26:	4525                	li	a0,9
1c00af28:	00e7f463          	bgeu	a5,a4,1c00af30 <pos_libc_prf+0x9f4>
1c00af2c:	a199                	j	1c00b372 <pos_libc_prf+0xe36>
1c00af2e:	0685                	addi	a3,a3,1
1c00af30:	002a9793          	slli	a5,s5,0x2
1c00af34:	97d6                	add	a5,a5,s5
1c00af36:	0786                	slli	a5,a5,0x1
1c00af38:	97ee                	add	a5,a5,s11
1c00af3a:	0006cd83          	lbu	s11,0(a3)
1c00af3e:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00af42:	8732                	mv	a4,a2
1c00af44:	fd0d8793          	addi	a5,s11,-48
1c00af48:	8636                	mv	a2,a3
1c00af4a:	fef572e3          	bgeu	a0,a5,1c00af2e <pos_libc_prf+0x9f2>
1c00af4e:	00270613          	addi	a2,a4,2
1c00af52:	b561                	j	1c00adda <pos_libc_prf+0x89e>
1c00af54:	47b2                	lw	a5,12(sp)
1c00af56:	0007a303          	lw	t1,0(a5)
1c00af5a:	00478b13          	addi	s6,a5,4
1c00af5e:	2e034263          	bltz	t1,1c00b242 <pos_libc_prf+0xd06>
1c00af62:	47a2                	lw	a5,8(sp)
1c00af64:	861a                	mv	a2,t1
1c00af66:	3c078663          	beqz	a5,1c00b332 <pos_libc_prf+0xdf6>
1c00af6a:	02b00793          	li	a5,43
1c00af6e:	02f10223          	sb	a5,36(sp)
1c00af72:	02510693          	addi	a3,sp,37
1c00af76:	89b6                	mv	s3,a3
1c00af78:	4529                	li	a0,10
1c00af7a:	48a5                	li	a7,9
1c00af7c:	02a67733          	remu	a4,a2,a0
1c00af80:	87ce                	mv	a5,s3
1c00af82:	0985                	addi	s3,s3,1
1c00af84:	85b2                	mv	a1,a2
1c00af86:	03070713          	addi	a4,a4,48
1c00af8a:	fee98fa3          	sb	a4,-1(s3)
1c00af8e:	02a65633          	divu	a2,a2,a0
1c00af92:	feb8e5e3          	bltu	a7,a1,1c00af7c <pos_libc_prf+0xa40>
1c00af96:	40d98633          	sub	a2,s3,a3
1c00af9a:	01565c63          	bge	a2,s5,1c00afb2 <pos_libc_prf+0xa76>
1c00af9e:	03000593          	li	a1,48
1c00afa2:	87ce                	mv	a5,s3
1c00afa4:	0985                	addi	s3,s3,1
1c00afa6:	40d98733          	sub	a4,s3,a3
1c00afaa:	feb98fa3          	sb	a1,-1(s3)
1c00afae:	ff574ae3          	blt	a4,s5,1c00afa2 <pos_libc_prf+0xa66>
1c00afb2:	00098023          	sb	zero,0(s3)
1c00afb6:	00f6fe63          	bgeu	a3,a5,1c00afd2 <pos_libc_prf+0xa96>
1c00afba:	0006c603          	lbu	a2,0(a3)
1c00afbe:	0007c703          	lbu	a4,0(a5)
1c00afc2:	0685                	addi	a3,a3,1
1c00afc4:	00c78023          	sb	a2,0(a5)
1c00afc8:	fee68fa3          	sb	a4,-1(a3)
1c00afcc:	17fd                	addi	a5,a5,-1
1c00afce:	fef6e6e3          	bltu	a3,a5,1c00afba <pos_libc_prf+0xa7e>
1c00afd2:	4712                	lw	a4,4(sp)
1c00afd4:	47a2                	lw	a5,8(sp)
1c00afd6:	8fd9                	or	a5,a5,a4
1c00afd8:	ce3e                	sw	a5,28(sp)
1c00afda:	1058                	addi	a4,sp,36
1c00afdc:	40e989b3          	sub	s3,s3,a4
1c00afe0:	c40790e3          	bnez	a5,1c00ac20 <pos_libc_prf+0x6e4>
1c00afe4:	01f35793          	srli	a5,t1,0x1f
1c00afe8:	ce3e                	sw	a5,28(sp)
1c00afea:	b91d                	j	1c00ac20 <pos_libc_prf+0x6e4>
1c00afec:	47b2                	lw	a5,12(sp)
1c00afee:	02610613          	addi	a2,sp,38
1c00aff2:	4ea5                	li	t4,9
1c00aff4:	438c                	lw	a1,0(a5)
1c00aff6:	00478b13          	addi	s6,a5,4
1c00affa:	77e1                	lui	a5,0xffff8
1c00affc:	8307c793          	xori	a5,a5,-2000
1c00b000:	02f11223          	sh	a5,36(sp)
1c00b004:	4e3d                	li	t3,15
1c00b006:	87b2                	mv	a5,a2
1c00b008:	a039                	j	1c00b016 <pos_libc_prf+0xada>
1c00b00a:	ff168fa3          	sb	a7,-1(a3)
1c00b00e:	02be7663          	bgeu	t3,a1,1c00b03a <pos_libc_prf+0xafe>
1c00b012:	85c2                	mv	a1,a6
1c00b014:	87b6                	mv	a5,a3
1c00b016:	00f5f513          	andi	a0,a1,15
1c00b01a:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00b01e:	05750893          	addi	a7,a0,87
1c00b022:	03050713          	addi	a4,a0,48
1c00b026:	0045d813          	srli	a6,a1,0x4
1c00b02a:	feaee0e3          	bltu	t4,a0,1c00b00a <pos_libc_prf+0xace>
1c00b02e:	00e78023          	sb	a4,0(a5)
1c00b032:	00178693          	addi	a3,a5,1
1c00b036:	fcbe6ee3          	bltu	t3,a1,1c00b012 <pos_libc_prf+0xad6>
1c00b03a:	40c689b3          	sub	s3,a3,a2
1c00b03e:	459d                	li	a1,7
1c00b040:	0135cc63          	blt	a1,s3,1c00b058 <pos_libc_prf+0xb1c>
1c00b044:	03000513          	li	a0,48
1c00b048:	87b6                	mv	a5,a3
1c00b04a:	0685                	addi	a3,a3,1
1c00b04c:	40c689b3          	sub	s3,a3,a2
1c00b050:	fea68fa3          	sb	a0,-1(a3)
1c00b054:	ff35dae3          	bge	a1,s3,1c00b048 <pos_libc_prf+0xb0c>
1c00b058:	00068023          	sb	zero,0(a3)
1c00b05c:	86b2                	mv	a3,a2
1c00b05e:	00f67e63          	bgeu	a2,a5,1c00b07a <pos_libc_prf+0xb3e>
1c00b062:	0006c603          	lbu	a2,0(a3)
1c00b066:	0007c703          	lbu	a4,0(a5)
1c00b06a:	0685                	addi	a3,a3,1
1c00b06c:	00c78023          	sb	a2,0(a5)
1c00b070:	fee68fa3          	sb	a4,-1(a3)
1c00b074:	17fd                	addi	a5,a5,-1
1c00b076:	fef6e6e3          	bltu	a3,a5,1c00b062 <pos_libc_prf+0xb26>
1c00b07a:	57fd                	li	a5,-1
1c00b07c:	0989                	addi	s3,s3,2
1c00b07e:	22fa8663          	beq	s5,a5,1c00b2aa <pos_libc_prf+0xd6e>
1c00b082:	0c800793          	li	a5,200
1c00b086:	9f37cce3          	blt	a5,s3,1c00aa7e <pos_libc_prf+0x542>
1c00b08a:	02000913          	li	s2,32
1c00b08e:	0b49d863          	bge	s3,s4,1c00b13e <pos_libc_prf+0xc02>
1c00b092:	00198613          	addi	a2,s3,1
1c00b096:	ce02                	sw	zero,28(sp)
1c00b098:	bec1                	j	1c00ac68 <pos_libc_prf+0x72c>
1c00b09a:	4732                	lw	a4,12(sp)
1c00b09c:	431c                	lw	a5,0(a4)
1c00b09e:	0711                	addi	a4,a4,4
1c00b0a0:	c63a                	sw	a4,12(sp)
1c00b0a2:	c380                	sw	s0,0(a5)
1c00b0a4:	d0aff06f          	j	1c00a5ae <pos_libc_prf+0x72>
1c00b0a8:	47b2                	lw	a5,12(sp)
1c00b0aa:	4529                	li	a0,10
1c00b0ac:	48a5                	li	a7,9
1c00b0ae:	4390                	lw	a2,0(a5)
1c00b0b0:	00478b13          	addi	s6,a5,4
1c00b0b4:	105c                	addi	a5,sp,36
1c00b0b6:	02a67733          	remu	a4,a2,a0
1c00b0ba:	86be                	mv	a3,a5
1c00b0bc:	0785                	addi	a5,a5,1
1c00b0be:	85b2                	mv	a1,a2
1c00b0c0:	03070713          	addi	a4,a4,48
1c00b0c4:	fee78fa3          	sb	a4,-1(a5)
1c00b0c8:	02a65633          	divu	a2,a2,a0
1c00b0cc:	feb8e5e3          	bltu	a7,a1,1c00b0b6 <pos_libc_prf+0xb7a>
1c00b0d0:	1058                	addi	a4,sp,36
1c00b0d2:	40e789b3          	sub	s3,a5,a4
1c00b0d6:	0159dd63          	bge	s3,s5,1c00b0f0 <pos_libc_prf+0xbb4>
1c00b0da:	03000613          	li	a2,48
1c00b0de:	86be                	mv	a3,a5
1c00b0e0:	1058                	addi	a4,sp,36
1c00b0e2:	0785                	addi	a5,a5,1
1c00b0e4:	40e789b3          	sub	s3,a5,a4
1c00b0e8:	fec78fa3          	sb	a2,-1(a5)
1c00b0ec:	ff59c9e3          	blt	s3,s5,1c00b0de <pos_libc_prf+0xba2>
1c00b0f0:	00078023          	sb	zero,0(a5)
1c00b0f4:	105c                	addi	a5,sp,36
1c00b0f6:	00d7fe63          	bgeu	a5,a3,1c00b112 <pos_libc_prf+0xbd6>
1c00b0fa:	0007c603          	lbu	a2,0(a5)
1c00b0fe:	0006c703          	lbu	a4,0(a3)
1c00b102:	0785                	addi	a5,a5,1
1c00b104:	00c68023          	sb	a2,0(a3)
1c00b108:	fee78fa3          	sb	a4,-1(a5)
1c00b10c:	16fd                	addi	a3,a3,-1
1c00b10e:	fed7e6e3          	bltu	a5,a3,1c00b0fa <pos_libc_prf+0xbbe>
1c00b112:	57fd                	li	a5,-1
1c00b114:	c8fa9de3          	bne	s5,a5,1c00adae <pos_libc_prf+0x872>
1c00b118:	0c800793          	li	a5,200
1c00b11c:	9737c1e3          	blt	a5,s3,1c00aa7e <pos_libc_prf+0x542>
1c00b120:	ce02                	sw	zero,28(sp)
1c00b122:	be01                	j	1c00ac32 <pos_libc_prf+0x6f6>
1c00b124:	85a6                	mv	a1,s1
1c00b126:	02500513          	li	a0,37
1c00b12a:	9c82                	jalr	s9
1c00b12c:	57fd                	li	a5,-1
1c00b12e:	c6f51f63          	bne	a0,a5,1c00a5ac <pos_libc_prf+0x70>
1c00b132:	547d                	li	s0,-1
1c00b134:	c82ff06f          	j	1c00a5b6 <pos_libc_prf+0x7a>
1c00b138:	4401                	li	s0,0
1c00b13a:	c7cff06f          	j	1c00a5b6 <pos_libc_prf+0x7a>
1c00b13e:	8a4e                	mv	s4,s3
1c00b140:	c65a                	sw	s6,12(sp)
1c00b142:	b165                	j	1c00adea <pos_libc_prf+0x8ae>
1c00b144:	0c800793          	li	a5,200
1c00b148:	9337cbe3          	blt	a5,s3,1c00aa7e <pos_libc_prf+0x542>
1c00b14c:	4785                	li	a5,1
1c00b14e:	ce3e                	sw	a5,28(sp)
1c00b150:	b4cd                	j	1c00ac32 <pos_libc_prf+0x6f6>
1c00b152:	104c                	addi	a1,sp,36
1c00b154:	413a09b3          	sub	s3,s4,s3
1c00b158:	01358533          	add	a0,a1,s3
1c00b15c:	9faff0ef          	jal	ra,1c00a356 <memmove>
1c00b160:	02000793          	li	a5,32
1c00b164:	24f90863          	beq	s2,a5,1c00b3b4 <pos_libc_prf+0xe78>
1c00b168:	47f2                	lw	a5,28(sp)
1c00b16a:	99be                	add	s3,s3,a5
1c00b16c:	47f2                	lw	a5,28(sp)
1c00b16e:	b737d7e3          	bge	a5,s3,1c00acdc <pos_libc_prf+0x7a0>
1c00b172:	4772                	lw	a4,28(sp)
1c00b174:	4789                	li	a5,2
1c00b176:	40e988b3          	sub	a7,s3,a4
1c00b17a:	fff88693          	addi	a3,a7,-1
1c00b17e:	06d7f063          	bgeu	a5,a3,1c00b1de <pos_libc_prf+0xca2>
1c00b182:	47e2                	lw	a5,24(sp)
1c00b184:	00891613          	slli	a2,s2,0x8
1c00b188:	ffc8f593          	andi	a1,a7,-4
1c00b18c:	00f976b3          	and	a3,s2,a5
1c00b190:	8ed1                	or	a3,a3,a2
1c00b192:	01091793          	slli	a5,s2,0x10
1c00b196:	8edd                	or	a3,a3,a5
1c00b198:	01891613          	slli	a2,s2,0x18
1c00b19c:	8e55                	or	a2,a2,a3
1c00b19e:	105c                	addi	a5,sp,36
1c00b1a0:	00865813          	srli	a6,a2,0x8
1c00b1a4:	01065513          	srli	a0,a2,0x10
1c00b1a8:	97ba                	add	a5,a5,a4
1c00b1aa:	95be                	add	a1,a1,a5
1c00b1ac:	0306f693          	andi	a3,a3,48
1c00b1b0:	8261                	srli	a2,a2,0x18
1c00b1b2:	0ff87813          	andi	a6,a6,255
1c00b1b6:	0ff57513          	andi	a0,a0,255
1c00b1ba:	00d78023          	sb	a3,0(a5)
1c00b1be:	010780a3          	sb	a6,1(a5)
1c00b1c2:	00a78123          	sb	a0,2(a5)
1c00b1c6:	00c781a3          	sb	a2,3(a5)
1c00b1ca:	0791                	addi	a5,a5,4
1c00b1cc:	fef597e3          	bne	a1,a5,1c00b1ba <pos_libc_prf+0xc7e>
1c00b1d0:	4772                	lw	a4,28(sp)
1c00b1d2:	ffc8f793          	andi	a5,a7,-4
1c00b1d6:	973e                	add	a4,a4,a5
1c00b1d8:	ce3a                	sw	a4,28(sp)
1c00b1da:	b11781e3          	beq	a5,a7,1c00acdc <pos_libc_prf+0x7a0>
1c00b1de:	4772                	lw	a4,28(sp)
1c00b1e0:	199c                	addi	a5,sp,240
1c00b1e2:	97ba                	add	a5,a5,a4
1c00b1e4:	f3278a23          	sb	s2,-204(a5)
1c00b1e8:	00170793          	addi	a5,a4,1
1c00b1ec:	af37d8e3          	bge	a5,s3,1c00acdc <pos_libc_prf+0x7a0>
1c00b1f0:	1994                	addi	a3,sp,240
1c00b1f2:	97b6                	add	a5,a5,a3
1c00b1f4:	f3278a23          	sb	s2,-204(a5)
1c00b1f8:	00270b93          	addi	s7,a4,2
1c00b1fc:	af3bd0e3          	bge	s7,s3,1c00acdc <pos_libc_prf+0x7a0>
1c00b200:	9bb6                	add	s7,s7,a3
1c00b202:	f32b8a23          	sb	s2,-204(s7)
1c00b206:	c65a                	sw	s6,12(sp)
1c00b208:	bcd9                	j	1c00acde <pos_libc_prf+0x7a2>
1c00b20a:	01b98023          	sb	s11,0(s3)
1c00b20e:	02b00613          	li	a2,43
1c00b212:	00035663          	bgez	t1,1c00b21e <pos_libc_prf+0xce2>
1c00b216:	40600333          	neg	t1,t1
1c00b21a:	02d00613          	li	a2,45
1c00b21e:	47a9                	li	a5,10
1c00b220:	02f346b3          	div	a3,t1,a5
1c00b224:	00c980a3          	sb	a2,1(s3)
1c00b228:	0991                	addi	s3,s3,4
1c00b22a:	02f367b3          	rem	a5,t1,a5
1c00b22e:	03068693          	addi	a3,a3,48
1c00b232:	fed98f23          	sb	a3,-2(s3)
1c00b236:	03078793          	addi	a5,a5,48
1c00b23a:	fef98fa3          	sb	a5,-1(s3)
1c00b23e:	fceff06f          	j	1c00aa0c <pos_libc_prf+0x4d0>
1c00b242:	02d00793          	li	a5,45
1c00b246:	02f10223          	sb	a5,36(sp)
1c00b24a:	800007b7          	lui	a5,0x80000
1c00b24e:	14f30e63          	beq	t1,a5,1c00b3aa <pos_libc_prf+0xe6e>
1c00b252:	40600633          	neg	a2,t1
1c00b256:	02510693          	addi	a3,sp,37
1c00b25a:	bb31                	j	1c00af76 <pos_libc_prf+0xa3a>
1c00b25c:	4722                	lw	a4,8(sp)
1c00b25e:	10070d63          	beqz	a4,1c00b378 <pos_libc_prf+0xe3c>
1c00b262:	02b00693          	li	a3,43
1c00b266:	02d10223          	sb	a3,36(sp)
1c00b26a:	02510f13          	addi	t5,sp,37
1c00b26e:	4301                	li	t1,0
1c00b270:	4801                	li	a6,0
1c00b272:	d9cff06f          	j	1c00a80e <pos_libc_prf+0x2d2>
1c00b276:	02414783          	lbu	a5,36(sp)
1c00b27a:	98078ce3          	beqz	a5,1c00ac12 <pos_libc_prf+0x6d6>
1c00b27e:	1054                	addi	a3,sp,36
1c00b280:	45e5                	li	a1,25
1c00b282:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00b286:	f9f78793          	addi	a5,a5,-97
1c00b28a:	0ff7f793          	andi	a5,a5,255
1c00b28e:	00f5e963          	bltu	a1,a5,1c00b2a0 <pos_libc_prf+0xd64>
1c00b292:	0016c783          	lbu	a5,1(a3)
1c00b296:	00e68023          	sb	a4,0(a3)
1c00b29a:	0685                	addi	a3,a3,1
1c00b29c:	f3fd                	bnez	a5,1c00b282 <pos_libc_prf+0xd46>
1c00b29e:	ba95                	j	1c00ac12 <pos_libc_prf+0x6d6>
1c00b2a0:	0016c783          	lbu	a5,1(a3)
1c00b2a4:	0685                	addi	a3,a3,1
1c00b2a6:	fff1                	bnez	a5,1c00b282 <pos_libc_prf+0xd46>
1c00b2a8:	b2ad                	j	1c00ac12 <pos_libc_prf+0x6d6>
1c00b2aa:	0c800793          	li	a5,200
1c00b2ae:	df37d0e3          	bge	a5,s3,1c00b08e <pos_libc_prf+0xb52>
1c00b2b2:	547d                	li	s0,-1
1c00b2b4:	b02ff06f          	j	1c00a5b6 <pos_libc_prf+0x7a>
1c00b2b8:	864e                	mv	a2,s3
1c00b2ba:	1048                	addi	a0,sp,36
1c00b2bc:	fc5fe0ef          	jal	ra,1c00a280 <memcpy>
1c00b2c0:	b3f9                	j	1c00b08e <pos_libc_prf+0xb52>
1c00b2c2:	47f2                	lw	a5,28(sp)
1c00b2c4:	4601                	li	a2,0
1c00b2c6:	e399                	bnez	a5,1c00b2cc <pos_libc_prf+0xd90>
1c00b2c8:	01503633          	snez	a2,s5
1c00b2cc:	57f5                	li	a5,-3
1c00b2ce:	001a8813          	addi	a6,s5,1
1c00b2d2:	00f34463          	blt	t1,a5,1c00b2da <pos_libc_prf+0xd9e>
1c00b2d6:	04685163          	bge	a6,t1,1c00b318 <pos_libc_prf+0xddc>
1c00b2da:	47c1                	li	a5,16
1c00b2dc:	0107d363          	bge	a5,a6,1c00b2e2 <pos_libc_prf+0xda6>
1c00b2e0:	4841                	li	a6,16
1c00b2e2:	06700793          	li	a5,103
1c00b2e6:	187d                	addi	a6,a6,-1
1c00b2e8:	02fd8363          	beq	s11,a5,1c00b30e <pos_libc_prf+0xdd2>
1c00b2ec:	04500d93          	li	s11,69
1c00b2f0:	d70ff06f          	j	1c00a860 <pos_libc_prf+0x324>
1c00b2f4:	4a99                	li	s5,6
1c00b2f6:	d4fd9563          	bne	s11,a5,1c00a840 <pos_libc_prf+0x304>
1c00b2fa:	4772                	lw	a4,28(sp)
1c00b2fc:	4605                	li	a2,1
1c00b2fe:	57f5                	li	a5,-3
1c00b300:	8e19                	sub	a2,a2,a4
1c00b302:	00f34563          	blt	t1,a5,1c00b30c <pos_libc_prf+0xdd0>
1c00b306:	479d                	li	a5,7
1c00b308:	0067d863          	bge	a5,t1,1c00b318 <pos_libc_prf+0xddc>
1c00b30c:	4819                	li	a6,6
1c00b30e:	06500d93          	li	s11,101
1c00b312:	d4eff06f          	j	1c00a860 <pos_libc_prf+0x324>
1c00b316:	4601                	li	a2,0
1c00b318:	006a8833          	add	a6,s5,t1
1c00b31c:	0b005b63          	blez	a6,1c00b3d2 <pos_libc_prf+0xe96>
1c00b320:	47c1                	li	a5,16
1c00b322:	0107d363          	bge	a5,a6,1c00b328 <pos_libc_prf+0xdec>
1c00b326:	4841                	li	a6,16
1c00b328:	187d                	addi	a6,a6,-1
1c00b32a:	06600d93          	li	s11,102
1c00b32e:	d32ff06f          	j	1c00a860 <pos_libc_prf+0x324>
1c00b332:	4792                	lw	a5,4(sp)
1c00b334:	1054                	addi	a3,sp,36
1c00b336:	c40780e3          	beqz	a5,1c00af76 <pos_libc_prf+0xa3a>
1c00b33a:	02000793          	li	a5,32
1c00b33e:	02f10223          	sb	a5,36(sp)
1c00b342:	02510693          	addi	a3,sp,37
1c00b346:	b905                	j	1c00af76 <pos_libc_prf+0xa3a>
1c00b348:	ffc80fa3          	sb	t3,-1(a6)
1c00b34c:	b30986e3          	beq	s3,a6,1c00ae78 <pos_libc_prf+0x93c>
1c00b350:	0805                	addi	a6,a6,1
1c00b352:	b4d5                	j	1c00ae36 <pos_libc_prf+0x8fa>
1c00b354:	ffe80fa3          	sb	t5,-1(a6)
1c00b358:	0305                	addi	t1,t1,1
1c00b35a:	b679                	j	1c00aee8 <pos_libc_prf+0x9ac>
1c00b35c:	020102a3          	sb	zero,37(sp)
1c00b360:	57fd                	li	a5,-1
1c00b362:	0cfa8263          	beq	s5,a5,1c00b426 <pos_libc_prf+0xeea>
1c00b366:	4785                	li	a5,1
1c00b368:	0b47c063          	blt	a5,s4,1c00b408 <pos_libc_prf+0xecc>
1c00b36c:	4a72                	lw	s4,28(sp)
1c00b36e:	c65a                	sw	s6,12(sp)
1c00b370:	bcad                	j	1c00adea <pos_libc_prf+0x8ae>
1c00b372:	8636                	mv	a2,a3
1c00b374:	b04ff06f          	j	1c00a678 <pos_libc_prf+0x13c>
1c00b378:	4712                	lw	a4,4(sp)
1c00b37a:	c77d                	beqz	a4,1c00b468 <pos_libc_prf+0xf2c>
1c00b37c:	02000693          	li	a3,32
1c00b380:	02d10223          	sb	a3,36(sp)
1c00b384:	4301                	li	t1,0
1c00b386:	4801                	li	a6,0
1c00b388:	02510f13          	addi	t5,sp,37
1c00b38c:	c82ff06f          	j	1c00a80e <pos_libc_prf+0x2d2>
1c00b390:	02d00693          	li	a3,45
1c00b394:	02d10223          	sb	a3,36(sp)
1c00b398:	02510f13          	addi	t5,sp,37
1c00b39c:	b9cff06f          	j	1c00a738 <pos_libc_prf+0x1fc>
1c00b3a0:	0c800613          	li	a2,200
1c00b3a4:	960ad6e3          	bgez	s5,1c00ad10 <pos_libc_prf+0x7d4>
1c00b3a8:	bf09                	j	1c00b2ba <pos_libc_prf+0xd7e>
1c00b3aa:	80000637          	lui	a2,0x80000
1c00b3ae:	02510693          	addi	a3,sp,37
1c00b3b2:	b6d1                	j	1c00af76 <pos_libc_prf+0xa3a>
1c00b3b4:	ce02                	sw	zero,28(sp)
1c00b3b6:	bb5d                	j	1c00b16c <pos_libc_prf+0xc30>
1c00b3b8:	4712                	lw	a4,4(sp)
1c00b3ba:	02410f13          	addi	t5,sp,36
1c00b3be:	b6070d63          	beqz	a4,1c00a738 <pos_libc_prf+0x1fc>
1c00b3c2:	02000693          	li	a3,32
1c00b3c6:	02d10223          	sb	a3,36(sp)
1c00b3ca:	02510f13          	addi	t5,sp,37
1c00b3ce:	b6aff06f          	j	1c00a738 <pos_libc_prf+0x1fc>
1c00b3d2:	06600d93          	li	s11,102
1c00b3d6:	4781                	li	a5,0
1c00b3d8:	080006b7          	lui	a3,0x8000
1c00b3dc:	ce8ff06f          	j	1c00a8c4 <pos_libc_prf+0x388>
1c00b3e0:	06b6e363          	bltu	a3,a1,1c00b446 <pos_libc_prf+0xf0a>
1c00b3e4:	04e00693          	li	a3,78
1c00b3e8:	04100613          	li	a2,65
1c00b3ec:	00d78023          	sb	a3,0(a5)
1c00b3f0:	00c780a3          	sb	a2,1(a5)
1c00b3f4:	00d78123          	sb	a3,2(a5)
1c00b3f8:	f44ff06f          	j	1c00ab3c <pos_libc_prf+0x600>
1c00b3fc:	03000693          	li	a3,48
1c00b400:	00df0023          	sb	a3,0(t5)
1c00b404:	4541                	li	a0,16
1c00b406:	bc95                	j	1c00ae7a <pos_libc_prf+0x93e>
1c00b408:	4982                	lw	s3,0(sp)
1c00b40a:	860992e3          	bnez	s3,1c00ac6e <pos_libc_prf+0x732>
1c00b40e:	104c                	addi	a1,sp,36
1c00b410:	fffa0993          	addi	s3,s4,-1
1c00b414:	4609                	li	a2,2
1c00b416:	01358533          	add	a0,a1,s3
1c00b41a:	f3dfe0ef          	jal	ra,1c00a356 <memmove>
1c00b41e:	02000913          	li	s2,32
1c00b422:	ce02                	sw	zero,28(sp)
1c00b424:	b3b9                	j	1c00b172 <pos_libc_prf+0xc36>
1c00b426:	49f2                	lw	s3,28(sp)
1c00b428:	b19d                	j	1c00b08e <pos_libc_prf+0xb52>
1c00b42a:	06900693          	li	a3,105
1c00b42e:	00d78023          	sb	a3,0(a5)
1c00b432:	06e00693          	li	a3,110
1c00b436:	00d780a3          	sb	a3,1(a5)
1c00b43a:	06600693          	li	a3,102
1c00b43e:	00d78123          	sb	a3,2(a5)
1c00b442:	efaff06f          	j	1c00ab3c <pos_libc_prf+0x600>
1c00b446:	06e00693          	li	a3,110
1c00b44a:	06100613          	li	a2,97
1c00b44e:	00d78023          	sb	a3,0(a5)
1c00b452:	00c780a3          	sb	a2,1(a5)
1c00b456:	00d78123          	sb	a3,2(a5)
1c00b45a:	ee2ff06f          	j	1c00ab3c <pos_libc_prf+0x600>
1c00b45e:	89f6                	mv	s3,t4
1c00b460:	a8061ae3          	bnez	a2,1c00aef4 <pos_libc_prf+0x9b8>
1c00b464:	da8ff06f          	j	1c00aa0c <pos_libc_prf+0x4d0>
1c00b468:	4301                	li	t1,0
1c00b46a:	4801                	li	a6,0
1c00b46c:	02410f13          	addi	t5,sp,36
1c00b470:	b9eff06f          	j	1c00a80e <pos_libc_prf+0x2d2>

1c00b474 <pos_init_start>:
1c00b474:	1141                	addi	sp,sp,-16
1c00b476:	c422                	sw	s0,8(sp)
1c00b478:	1c000437          	lui	s0,0x1c000
1c00b47c:	c606                	sw	ra,12(sp)
1c00b47e:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b482:	ebdfc0ef          	jal	ra,1c00833e <pos_soc_init>
1c00b486:	2a75                	jal	1c00b642 <pos_irq_init>
1c00b488:	22e5                	jal	1c00b670 <pos_soc_event_init>
1c00b48a:	2225                	jal	1c00b5b2 <pos_allocs_init>
1c00b48c:	405c                	lw	a5,4(s0)
1c00b48e:	c791                	beqz	a5,1c00b49a <pos_init_start+0x26>
1c00b490:	0411                	addi	s0,s0,4
1c00b492:	0411                	addi	s0,s0,4
1c00b494:	9782                	jalr	a5
1c00b496:	401c                	lw	a5,0(s0)
1c00b498:	ffed                	bnez	a5,1c00b492 <pos_init_start+0x1e>
1c00b49a:	86cff0ef          	jal	ra,1c00a506 <pos_io_start>
1c00b49e:	300467f3          	csrrsi	a5,mstatus,8
1c00b4a2:	40b2                	lw	ra,12(sp)
1c00b4a4:	4422                	lw	s0,8(sp)
1c00b4a6:	0141                	addi	sp,sp,16
1c00b4a8:	8082                	ret

1c00b4aa <pos_init_stop>:
1c00b4aa:	1141                	addi	sp,sp,-16
1c00b4ac:	c422                	sw	s0,8(sp)
1c00b4ae:	1c000437          	lui	s0,0x1c000
1c00b4b2:	c606                	sw	ra,12(sp)
1c00b4b4:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b4b8:	852ff0ef          	jal	ra,1c00a50a <pos_io_stop>
1c00b4bc:	405c                	lw	a5,4(s0)
1c00b4be:	c791                	beqz	a5,1c00b4ca <pos_init_stop+0x20>
1c00b4c0:	0411                	addi	s0,s0,4
1c00b4c2:	0411                	addi	s0,s0,4
1c00b4c4:	9782                	jalr	a5
1c00b4c6:	401c                	lw	a5,0(s0)
1c00b4c8:	ffed                	bnez	a5,1c00b4c2 <pos_init_stop+0x18>
1c00b4ca:	40b2                	lw	ra,12(sp)
1c00b4cc:	4422                	lw	s0,8(sp)
1c00b4ce:	0141                	addi	sp,sp,16
1c00b4d0:	8082                	ret

1c00b4d2 <pos_alloc_init>:
1c00b4d2:	00758793          	addi	a5,a1,7
1c00b4d6:	9be1                	andi	a5,a5,-8
1c00b4d8:	40b785b3          	sub	a1,a5,a1
1c00b4dc:	c11c                	sw	a5,0(a0)
1c00b4de:	40b605b3          	sub	a1,a2,a1
1c00b4e2:	00b05663          	blez	a1,1c00b4ee <pos_alloc_init+0x1c>
1c00b4e6:	99e1                	andi	a1,a1,-8
1c00b4e8:	c38c                	sw	a1,0(a5)
1c00b4ea:	0007a223          	sw	zero,4(a5)
1c00b4ee:	8082                	ret

1c00b4f0 <pos_alloc>:
1c00b4f0:	411c                	lw	a5,0(a0)
1c00b4f2:	00758713          	addi	a4,a1,7
1c00b4f6:	862a                	mv	a2,a0
1c00b4f8:	ff877593          	andi	a1,a4,-8
1c00b4fc:	4681                	li	a3,0
1c00b4fe:	e789                	bnez	a5,1c00b508 <pos_alloc+0x18>
1c00b500:	a091                	j	1c00b544 <pos_alloc+0x54>
1c00b502:	86be                	mv	a3,a5
1c00b504:	c505                	beqz	a0,1c00b52c <pos_alloc+0x3c>
1c00b506:	87aa                	mv	a5,a0
1c00b508:	4398                	lw	a4,0(a5)
1c00b50a:	43c8                	lw	a0,4(a5)
1c00b50c:	feb74be3          	blt	a4,a1,1c00b502 <pos_alloc+0x12>
1c00b510:	00b70f63          	beq	a4,a1,1c00b52e <pos_alloc+0x3e>
1c00b514:	00b78833          	add	a6,a5,a1
1c00b518:	8f0d                	sub	a4,a4,a1
1c00b51a:	00e82023          	sw	a4,0(a6)
1c00b51e:	00a82223          	sw	a0,4(a6)
1c00b522:	ca91                	beqz	a3,1c00b536 <pos_alloc+0x46>
1c00b524:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00b528:	853e                	mv	a0,a5
1c00b52a:	8082                	ret
1c00b52c:	8082                	ret
1c00b52e:	ca81                	beqz	a3,1c00b53e <pos_alloc+0x4e>
1c00b530:	c2c8                	sw	a0,4(a3)
1c00b532:	853e                	mv	a0,a5
1c00b534:	8082                	ret
1c00b536:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b53a:	853e                	mv	a0,a5
1c00b53c:	8082                	ret
1c00b53e:	c208                	sw	a0,0(a2)
1c00b540:	853e                	mv	a0,a5
1c00b542:	8082                	ret
1c00b544:	4501                	li	a0,0
1c00b546:	8082                	ret

1c00b548 <pos_free>:
1c00b548:	411c                	lw	a5,0(a0)
1c00b54a:	061d                	addi	a2,a2,7
1c00b54c:	9a61                	andi	a2,a2,-8
1c00b54e:	c7a1                	beqz	a5,1c00b596 <pos_free+0x4e>
1c00b550:	00b7e563          	bltu	a5,a1,1c00b55a <pos_free+0x12>
1c00b554:	a089                	j	1c00b596 <pos_free+0x4e>
1c00b556:	00b7f563          	bgeu	a5,a1,1c00b560 <pos_free+0x18>
1c00b55a:	873e                	mv	a4,a5
1c00b55c:	43dc                	lw	a5,4(a5)
1c00b55e:	ffe5                	bnez	a5,1c00b556 <pos_free+0xe>
1c00b560:	00c586b3          	add	a3,a1,a2
1c00b564:	00d78b63          	beq	a5,a3,1c00b57a <pos_free+0x32>
1c00b568:	c190                	sw	a2,0(a1)
1c00b56a:	4314                	lw	a3,0(a4)
1c00b56c:	c1dc                	sw	a5,4(a1)
1c00b56e:	00d70533          	add	a0,a4,a3
1c00b572:	00a58e63          	beq	a1,a0,1c00b58e <pos_free+0x46>
1c00b576:	c34c                	sw	a1,4(a4)
1c00b578:	8082                	ret
1c00b57a:	4394                	lw	a3,0(a5)
1c00b57c:	43dc                	lw	a5,4(a5)
1c00b57e:	9636                	add	a2,a2,a3
1c00b580:	c190                	sw	a2,0(a1)
1c00b582:	4314                	lw	a3,0(a4)
1c00b584:	c1dc                	sw	a5,4(a1)
1c00b586:	00d70533          	add	a0,a4,a3
1c00b58a:	fea596e3          	bne	a1,a0,1c00b576 <pos_free+0x2e>
1c00b58e:	9636                	add	a2,a2,a3
1c00b590:	c310                	sw	a2,0(a4)
1c00b592:	c35c                	sw	a5,4(a4)
1c00b594:	8082                	ret
1c00b596:	00c58733          	add	a4,a1,a2
1c00b59a:	00e78663          	beq	a5,a4,1c00b5a6 <pos_free+0x5e>
1c00b59e:	c1dc                	sw	a5,4(a1)
1c00b5a0:	c190                	sw	a2,0(a1)
1c00b5a2:	c10c                	sw	a1,0(a0)
1c00b5a4:	8082                	ret
1c00b5a6:	4398                	lw	a4,0(a5)
1c00b5a8:	43dc                	lw	a5,4(a5)
1c00b5aa:	963a                	add	a2,a2,a4
1c00b5ac:	c1dc                	sw	a5,4(a1)
1c00b5ae:	c190                	sw	a2,0(a1)
1c00b5b0:	bfcd                	j	1c00b5a2 <pos_free+0x5a>

1c00b5b2 <pos_allocs_init>:
1c00b5b2:	1c0065b7          	lui	a1,0x1c006
1c00b5b6:	1141                	addi	sp,sp,-16
1c00b5b8:	1d858613          	addi	a2,a1,472 # 1c0061d8 <__l2_priv0_end>
1c00b5bc:	1c0087b7          	lui	a5,0x1c008
1c00b5c0:	c606                	sw	ra,12(sp)
1c00b5c2:	1d858593          	addi	a1,a1,472
1c00b5c6:	40c78633          	sub	a2,a5,a2
1c00b5ca:	04f5d863          	bge	a1,a5,1c00b61a <pos_allocs_init+0x68>
1c00b5ce:	1c006537          	lui	a0,0x1c006
1c00b5d2:	1cc50513          	addi	a0,a0,460 # 1c0061cc <pos_alloc_l2>
1c00b5d6:	3df5                	jal	1c00b4d2 <pos_alloc_init>
1c00b5d8:	1c00b5b7          	lui	a1,0x1c00b
1c00b5dc:	68858613          	addi	a2,a1,1672 # 1c00b688 <__l2_priv1_end>
1c00b5e0:	1c0107b7          	lui	a5,0x1c010
1c00b5e4:	68858593          	addi	a1,a1,1672
1c00b5e8:	40c78633          	sub	a2,a5,a2
1c00b5ec:	02f5da63          	bge	a1,a5,1c00b620 <pos_allocs_init+0x6e>
1c00b5f0:	1c006537          	lui	a0,0x1c006
1c00b5f4:	1d050513          	addi	a0,a0,464 # 1c0061d0 <pos_alloc_l2+0x4>
1c00b5f8:	3de9                	jal	1c00b4d2 <pos_alloc_init>
1c00b5fa:	40b2                	lw	ra,12(sp)
1c00b5fc:	1c0105b7          	lui	a1,0x1c010
1c00b600:	00058793          	mv	a5,a1
1c00b604:	1c080637          	lui	a2,0x1c080
1c00b608:	1c006537          	lui	a0,0x1c006
1c00b60c:	8e1d                	sub	a2,a2,a5
1c00b60e:	00058593          	mv	a1,a1
1c00b612:	1d450513          	addi	a0,a0,468 # 1c0061d4 <pos_alloc_l2+0x8>
1c00b616:	0141                	addi	sp,sp,16
1c00b618:	bd6d                	j	1c00b4d2 <pos_alloc_init>
1c00b61a:	4581                	li	a1,0
1c00b61c:	4601                	li	a2,0
1c00b61e:	bf45                	j	1c00b5ce <pos_allocs_init+0x1c>
1c00b620:	4581                	li	a1,0
1c00b622:	4601                	li	a2,0
1c00b624:	b7f1                	j	1c00b5f0 <pos_allocs_init+0x3e>

1c00b626 <pi_l2_malloc>:
1c00b626:	85aa                	mv	a1,a0
1c00b628:	1c006537          	lui	a0,0x1c006
1c00b62c:	1cc50513          	addi	a0,a0,460 # 1c0061cc <pos_alloc_l2>
1c00b630:	b5c1                	j	1c00b4f0 <pos_alloc>

1c00b632 <pi_l2_free>:
1c00b632:	862e                	mv	a2,a1
1c00b634:	85aa                	mv	a1,a0
1c00b636:	1c006537          	lui	a0,0x1c006
1c00b63a:	1cc50513          	addi	a0,a0,460 # 1c0061cc <pos_alloc_l2>
1c00b63e:	b729                	j	1c00b548 <pos_free>

1c00b640 <__rt_handle_illegal_instr>:
1c00b640:	8082                	ret

1c00b642 <pos_irq_init>:
1c00b642:	1a10a737          	lui	a4,0x1a10a
1c00b646:	56fd                	li	a3,-1
1c00b648:	f14027f3          	csrr	a5,mhartid
1c00b64c:	8795                	srai	a5,a5,0x5
1c00b64e:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b652:	03f7f793          	andi	a5,a5,63
1c00b656:	477d                	li	a4,31
1c00b658:	00e78363          	beq	a5,a4,1c00b65e <pos_irq_init+0x1c>
1c00b65c:	8082                	ret
1c00b65e:	1c0087b7          	lui	a5,0x1c008
1c00b662:	00078793          	mv	a5,a5
1c00b666:	0017e793          	ori	a5,a5,1
1c00b66a:	30579073          	csrw	mtvec,a5
1c00b66e:	8082                	ret

1c00b670 <pos_soc_event_init>:
1c00b670:	1a1067b7          	lui	a5,0x1a106
1c00b674:	577d                	li	a4,-1
1c00b676:	c3d8                	sw	a4,4(a5)
1c00b678:	c798                	sw	a4,8(a5)
1c00b67a:	c7d8                	sw	a4,12(a5)
1c00b67c:	cb98                	sw	a4,16(a5)
1c00b67e:	cbd8                	sw	a4,20(a5)
1c00b680:	cf98                	sw	a4,24(a5)
1c00b682:	cfd8                	sw	a4,28(a5)
1c00b684:	d398                	sw	a4,32(a5)
1c00b686:	8082                	ret
