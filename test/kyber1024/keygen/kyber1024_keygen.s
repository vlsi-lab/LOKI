riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber1024/keygen/build/keygen/keygen

/home/alessandra.dolmeta/pqc_riscv/test/kyber1024/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6e20306f          	j	1c00b6e2 <__rt_handle_illegal_instr>
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
1c008084:	65e0306f          	j	1c00b6e2 <__rt_handle_illegal_instr>

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
1c0080c4:	4a028293          	addi	t0,t0,1184 # 1c006560 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	51030313          	addi	t1,t1,1296 # 1c0065d8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	48610113          	addi	sp,sp,1158 # 1c006560 <in>
1c0080e2:	434030ef          	jal	ra,1c00b516 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	450030ef          	jal	ra,1c00b54c <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	492020ef          	jal	ra,1c00a594 <exit>
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
1c008172:	43e020ef          	jal	ra,1c00a5b0 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	3e40206f          	j	1c00a56a <putchar>

1c00818a <main>:
1c00818a:	737d                	lui	t1,0xfffff
1c00818c:	d7010113          	addi	sp,sp,-656
1c008190:	1c000537          	lui	a0,0x1c000
1c008194:	28112623          	sw	ra,652(sp)
1c008198:	28812423          	sw	s0,648(sp)
1c00819c:	28912223          	sw	s1,644(sp)
1c0081a0:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0081a4:	911a                	add	sp,sp,t1
1c0081a6:	348020ef          	jal	ra,1c00a4ee <puts>
1c0081aa:	6705                	lui	a4,0x1
1c0081ac:	28070793          	addi	a5,a4,640 # 1280 <__CTOR_LIST__-0x1bffed84>
1c0081b0:	747d                	lui	s0,0xfffff
1c0081b2:	978a                	add	a5,a5,sp
1c0081b4:	3a040493          	addi	s1,s0,928 # fffff3a0 <__l2_shared_end+0xe3fef3a0>
1c0081b8:	94be                	add	s1,s1,a5
1c0081ba:	28070793          	addi	a5,a4,640
1c0081be:	978a                	add	a5,a5,sp
1c0081c0:	d8040413          	addi	s0,s0,-640
1c0081c4:	943e                	add	s0,s0,a5
1c0081c6:	85a6                	mv	a1,s1
1c0081c8:	8522                	mv	a0,s0
1c0081ca:	1b5010ef          	jal	ra,1c009b7e <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair>
1c0081ce:	1c000537          	lui	a0,0x1c000
1c0081d2:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c0081d6:	318020ef          	jal	ra,1c00a4ee <puts>
1c0081da:	1c000537          	lui	a0,0x1c000
1c0081de:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c0081e2:	30c020ef          	jal	ra,1c00a4ee <puts>
1c0081e6:	62000593          	li	a1,1568
1c0081ea:	8522                	mv	a0,s0
1c0081ec:	37a5                	jal	1c008154 <printbytes>
1c0081ee:	1c000537          	lui	a0,0x1c000
1c0081f2:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c0081f6:	2f8020ef          	jal	ra,1c00a4ee <puts>
1c0081fa:	6585                	lui	a1,0x1
1c0081fc:	8526                	mv	a0,s1
1c0081fe:	c6058593          	addi	a1,a1,-928 # c60 <__CTOR_LIST__-0x1bfff3a4>
1c008202:	3f89                	jal	1c008154 <printbytes>
1c008204:	6305                	lui	t1,0x1
1c008206:	911a                	add	sp,sp,t1
1c008208:	28c12083          	lw	ra,652(sp)
1c00820c:	28812403          	lw	s0,648(sp)
1c008210:	28412483          	lw	s1,644(sp)
1c008214:	4501                	li	a0,0
1c008216:	29010113          	addi	sp,sp,656
1c00821a:	8082                	ret

1c00821c <pos_fll_init>:
1c00821c:	1101                	addi	sp,sp,-32
1c00821e:	1a1005b7          	lui	a1,0x1a100
1c008222:	c64e                	sw	s3,12(sp)
1c008224:	00451613          	slli	a2,a0,0x4
1c008228:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00822c:	99b2                	add	s3,s3,a2
1c00822e:	0009a703          	lw	a4,0(s3)
1c008232:	ca26                	sw	s1,20(sp)
1c008234:	ce06                	sw	ra,28(sp)
1c008236:	cc22                	sw	s0,24(sp)
1c008238:	c84a                	sw	s2,16(sp)
1c00823a:	c452                	sw	s4,8(sp)
1c00823c:	84aa                	mv	s1,a0
1c00823e:	87ba                	mv	a5,a4
1c008240:	04074763          	bltz	a4,1c00828e <pos_fll_init+0x72>
1c008244:	00858693          	addi	a3,a1,8
1c008248:	96b2                	add	a3,a3,a2
1c00824a:	429c                	lw	a5,0(a3)
1c00824c:	f0000537          	lui	a0,0xf0000
1c008250:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c008254:	8fe9                	and	a5,a5,a0
1c008256:	00502537          	lui	a0,0x502
1c00825a:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c00825e:	8fc9                	or	a5,a5,a0
1c008260:	05b1                	addi	a1,a1,12
1c008262:	c29c                	sw	a5,0(a3)
1c008264:	962e                	add	a2,a2,a1
1c008266:	4214                	lw	a3,0(a2)
1c008268:	fc0107b7          	lui	a5,0xfc010
1c00826c:	17fd                	addi	a5,a5,-1
1c00826e:	01875593          	srli	a1,a4,0x18
1c008272:	8efd                	and	a3,a3,a5
1c008274:	0c05e593          	ori	a1,a1,192
1c008278:	00871793          	slli	a5,a4,0x8
1c00827c:	014c0537          	lui	a0,0x14c0
1c008280:	8ec9                	or	a3,a3,a0
1c008282:	05e2                	slli	a1,a1,0x18
1c008284:	83a1                	srli	a5,a5,0x8
1c008286:	c214                	sw	a3,0(a2)
1c008288:	8fcd                	or	a5,a5,a1
1c00828a:	00f9a023          	sw	a5,0(s3)
1c00828e:	1c006437          	lui	s0,0x1c006
1c008292:	5b840413          	addi	s0,s0,1464 # 1c0065b8 <pos_fll_freq>
1c008296:	00249a13          	slli	s4,s1,0x2
1c00829a:	014406b3          	add	a3,s0,s4
1c00829e:	0006a903          	lw	s2,0(a3)
1c0082a2:	02091d63          	bnez	s2,1c0082dc <pos_fll_init+0xc0>
1c0082a6:	83e9                	srli	a5,a5,0x1a
1c0082a8:	0742                	slli	a4,a4,0x10
1c0082aa:	8341                	srli	a4,a4,0x10
1c0082ac:	8bbd                	andi	a5,a5,15
1c0082ae:	073e                	slli	a4,a4,0xf
1c0082b0:	17fd                	addi	a5,a5,-1
1c0082b2:	00f75933          	srl	s2,a4,a5
1c0082b6:	0126a023          	sw	s2,0(a3)
1c0082ba:	1c0066b7          	lui	a3,0x1c006
1c0082be:	5b068693          	addi	a3,a3,1456 # 1c0065b0 <pos_fll_is_on>
1c0082c2:	96a6                	add	a3,a3,s1
1c0082c4:	4785                	li	a5,1
1c0082c6:	00f68023          	sb	a5,0(a3)
1c0082ca:	40f2                	lw	ra,28(sp)
1c0082cc:	4462                	lw	s0,24(sp)
1c0082ce:	44d2                	lw	s1,20(sp)
1c0082d0:	49b2                	lw	s3,12(sp)
1c0082d2:	4a22                	lw	s4,8(sp)
1c0082d4:	854a                	mv	a0,s2
1c0082d6:	4942                	lw	s2,16(sp)
1c0082d8:	6105                	addi	sp,sp,32
1c0082da:	8082                	ret
1c0082dc:	854a                	mv	a0,s2
1c0082de:	352d                	jal	1c008108 <__clzsi2>
1c0082e0:	1579                	addi	a0,a0,-2
1c0082e2:	8105                	srli	a0,a0,0x1
1c0082e4:	c939                	beqz	a0,1c00833a <pos_fll_init+0x11e>
1c0082e6:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c0082ea:	1c0066b7          	lui	a3,0x1c006
1c0082ee:	4785                	li	a5,1
1c0082f0:	00c797b3          	sll	a5,a5,a2
1c0082f4:	00a91733          	sll	a4,s2,a0
1c0082f8:	5b068693          	addi	a3,a3,1456 # 1c0065b0 <pos_fll_is_on>
1c0082fc:	7661                	lui	a2,0xffff8
1c0082fe:	8e79                	and	a2,a2,a4
1c008300:	009685b3          	add	a1,a3,s1
1c008304:	97b2                	add	a5,a5,a2
1c008306:	0005c603          	lbu	a2,0(a1)
1c00830a:	9452                	add	s0,s0,s4
1c00830c:	00a7d7b3          	srl	a5,a5,a0
1c008310:	c01c                	sw	a5,0(s0)
1c008312:	da45                	beqz	a2,1c0082c2 <pos_fll_init+0xa6>
1c008314:	0009a783          	lw	a5,0(s3)
1c008318:	833d                	srli	a4,a4,0xf
1c00831a:	0742                	slli	a4,a4,0x10
1c00831c:	7641                	lui	a2,0xffff0
1c00831e:	8341                	srli	a4,a4,0x10
1c008320:	8ff1                	and	a5,a5,a2
1c008322:	8fd9                	or	a5,a5,a4
1c008324:	0505                	addi	a0,a0,1
1c008326:	c4000737          	lui	a4,0xc4000
1c00832a:	893d                	andi	a0,a0,15
1c00832c:	177d                	addi	a4,a4,-1
1c00832e:	056a                	slli	a0,a0,0x1a
1c008330:	8ff9                	and	a5,a5,a4
1c008332:	8d5d                	or	a0,a0,a5
1c008334:	00a9a023          	sw	a0,0(s3)
1c008338:	b769                	j	1c0082c2 <pos_fll_init+0xa6>
1c00833a:	4505                	li	a0,1
1c00833c:	b76d                	j	1c0082e6 <pos_fll_init+0xca>

1c00833e <pos_fll_constructor>:
1c00833e:	1c0067b7          	lui	a5,0x1c006
1c008342:	5b878793          	addi	a5,a5,1464 # 1c0065b8 <pos_fll_freq>
1c008346:	0007a023          	sw	zero,0(a5)
1c00834a:	0007a223          	sw	zero,4(a5)
1c00834e:	1c0067b7          	lui	a5,0x1c006
1c008352:	5a079823          	sh	zero,1456(a5) # 1c0065b0 <pos_fll_is_on>
1c008356:	8082                	ret

1c008358 <pos_soc_init>:
1c008358:	1141                	addi	sp,sp,-16
1c00835a:	c606                	sw	ra,12(sp)
1c00835c:	c422                	sw	s0,8(sp)
1c00835e:	37c5                	jal	1c00833e <pos_fll_constructor>
1c008360:	4501                	li	a0,0
1c008362:	3d6d                	jal	1c00821c <pos_fll_init>
1c008364:	1c006437          	lui	s0,0x1c006
1c008368:	87aa                	mv	a5,a0
1c00836a:	5c040413          	addi	s0,s0,1472 # 1c0065c0 <pos_freq_domains>
1c00836e:	4505                	li	a0,1
1c008370:	c01c                	sw	a5,0(s0)
1c008372:	356d                	jal	1c00821c <pos_fll_init>
1c008374:	40b2                	lw	ra,12(sp)
1c008376:	c408                	sw	a0,8(s0)
1c008378:	4422                	lw	s0,8(sp)
1c00837a:	0141                	addi	sp,sp,16
1c00837c:	8082                	ret

1c00837e <KeccakF1600_StatePermute>:
1c00837e:	1a400837          	lui	a6,0x1a400
1c008382:	87aa                	mv	a5,a0
1c008384:	0c850613          	addi	a2,a0,200
1c008388:	1141                	addi	sp,sp,-16
1c00838a:	40a80533          	sub	a0,a6,a0
1c00838e:	4394                	lw	a3,0(a5)
1c008390:	00f50733          	add	a4,a0,a5
1c008394:	0791                	addi	a5,a5,4
1c008396:	c314                	sw	a3,0(a4)
1c008398:	fec79be3          	bne	a5,a2,1c00838e <KeccakF1600_StatePermute+0x10>
1c00839c:	4785                	li	a5,1
1c00839e:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c0083a2:	1a400737          	lui	a4,0x1a400
1c0083a6:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0083aa:	8b85                	andi	a5,a5,1
1c0083ac:	dfed                	beqz	a5,1c0083a6 <KeccakF1600_StatePermute+0x28>
1c0083ae:	c602                	sw	zero,12(sp)
1c0083b0:	4732                	lw	a4,12(sp)
1c0083b2:	03100793          	li	a5,49
1c0083b6:	02e7c663          	blt	a5,a4,1c0083e2 <KeccakF1600_StatePermute+0x64>
1c0083ba:	1a400637          	lui	a2,0x1a400
1c0083be:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0083c2:	03100513          	li	a0,49
1c0083c6:	4732                	lw	a4,12(sp)
1c0083c8:	47b2                	lw	a5,12(sp)
1c0083ca:	070a                	slli	a4,a4,0x2
1c0083cc:	9732                	add	a4,a4,a2
1c0083ce:	4314                	lw	a3,0(a4)
1c0083d0:	4732                	lw	a4,12(sp)
1c0083d2:	078a                	slli	a5,a5,0x2
1c0083d4:	97ae                	add	a5,a5,a1
1c0083d6:	0705                	addi	a4,a4,1
1c0083d8:	c63a                	sw	a4,12(sp)
1c0083da:	4732                	lw	a4,12(sp)
1c0083dc:	c394                	sw	a3,0(a5)
1c0083de:	fee554e3          	bge	a0,a4,1c0083c6 <KeccakF1600_StatePermute+0x48>
1c0083e2:	0141                	addi	sp,sp,16
1c0083e4:	8082                	ret

1c0083e6 <KYBER_poly_ntt>:
1c0083e6:	1a4007b7          	lui	a5,0x1a400
1c0083ea:	40000713          	li	a4,1024
1c0083ee:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c0083f2:	3007a423          	sw	zero,776(a5)
1c0083f6:	4705                	li	a4,1
1c0083f8:	30e7a423          	sw	a4,776(a5)
1c0083fc:	3007a423          	sw	zero,776(a5)
1c008400:	20050693          	addi	a3,a0,512
1c008404:	1a400737          	lui	a4,0x1a400
1c008408:	411c                	lw	a5,0(a0)
1c00840a:	0511                	addi	a0,a0,4
1c00840c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008410:	fed51ce3          	bne	a0,a3,1c008408 <KYBER_poly_ntt+0x22>
1c008414:	08000793          	li	a5,128
1c008418:	30f72423          	sw	a5,776(a4)
1c00841c:	30072423          	sw	zero,776(a4)
1c008420:	1a400737          	lui	a4,0x1a400
1c008424:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008428:	8b85                	andi	a5,a5,1
1c00842a:	dfed                	beqz	a5,1c008424 <KYBER_poly_ntt+0x3e>
1c00842c:	47c1                	li	a5,16
1c00842e:	30f72423          	sw	a5,776(a4)
1c008432:	30072423          	sw	zero,776(a4)
1c008436:	20058693          	addi	a3,a1,512
1c00843a:	1a400737          	lui	a4,0x1a400
1c00843e:	0001                	nop
1c008440:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008444:	0591                	addi	a1,a1,4
1c008446:	fef5ae23          	sw	a5,-4(a1)
1c00844a:	fed59ae3          	bne	a1,a3,1c00843e <KYBER_poly_ntt+0x58>
1c00844e:	8082                	ret

1c008450 <KYBER_poly_pwm>:
1c008450:	1a4007b7          	lui	a5,0x1a400
1c008454:	40000713          	li	a4,1024
1c008458:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00845c:	3007a423          	sw	zero,776(a5)
1c008460:	4709                	li	a4,2
1c008462:	30e7a423          	sw	a4,776(a5)
1c008466:	3007a423          	sw	zero,776(a5)
1c00846a:	20058693          	addi	a3,a1,512
1c00846e:	1a400737          	lui	a4,0x1a400
1c008472:	419c                	lw	a5,0(a1)
1c008474:	0591                	addi	a1,a1,4
1c008476:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00847a:	fed59ce3          	bne	a1,a3,1c008472 <KYBER_poly_pwm+0x22>
1c00847e:	47a1                	li	a5,8
1c008480:	30f72423          	sw	a5,776(a4)
1c008484:	30072423          	sw	zero,776(a4)
1c008488:	20060693          	addi	a3,a2,512
1c00848c:	1a400737          	lui	a4,0x1a400
1c008490:	421c                	lw	a5,0(a2)
1c008492:	0611                	addi	a2,a2,4
1c008494:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008498:	fec69ce3          	bne	a3,a2,1c008490 <KYBER_poly_pwm+0x40>
1c00849c:	10000793          	li	a5,256
1c0084a0:	30f72423          	sw	a5,776(a4)
1c0084a4:	30072423          	sw	zero,776(a4)
1c0084a8:	1a400737          	lui	a4,0x1a400
1c0084ac:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c0084b0:	8b85                	andi	a5,a5,1
1c0084b2:	dfed                	beqz	a5,1c0084ac <KYBER_poly_pwm+0x5c>
1c0084b4:	47c1                	li	a5,16
1c0084b6:	30f72423          	sw	a5,776(a4)
1c0084ba:	30072423          	sw	zero,776(a4)
1c0084be:	20050693          	addi	a3,a0,512
1c0084c2:	1a400737          	lui	a4,0x1a400
1c0084c6:	0001                	nop
1c0084c8:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c0084cc:	0511                	addi	a0,a0,4
1c0084ce:	fef52e23          	sw	a5,-4(a0)
1c0084d2:	fed51ae3          	bne	a0,a3,1c0084c6 <KYBER_poly_pwm+0x76>
1c0084d6:	8082                	ret

1c0084d8 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
1c0084d8:	1101                	addi	sp,sp,-32
1c0084da:	55555f37          	lui	t5,0x55555
1c0084de:	ce22                	sw	s0,28(sp)
1c0084e0:	cc26                	sw	s1,24(sp)
1c0084e2:	ca4a                	sw	s2,20(sp)
1c0084e4:	c84e                	sw	s3,16(sp)
1c0084e6:	c652                	sw	s4,12(sp)
1c0084e8:	20050f93          	addi	t6,a0,512
1c0084ec:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0084f0:	0015c683          	lbu	a3,1(a1)
1c0084f4:	0005c603          	lbu	a2,0(a1)
1c0084f8:	0025c783          	lbu	a5,2(a1)
1c0084fc:	0035c703          	lbu	a4,3(a1)
1c008500:	06a2                	slli	a3,a3,0x8
1c008502:	8ed1                	or	a3,a3,a2
1c008504:	07c2                	slli	a5,a5,0x10
1c008506:	8fd5                	or	a5,a5,a3
1c008508:	0762                	slli	a4,a4,0x18
1c00850a:	8f5d                	or	a4,a4,a5
1c00850c:	00175793          	srli	a5,a4,0x1
1c008510:	01e7f7b3          	and	a5,a5,t5
1c008514:	01e77733          	and	a4,a4,t5
1c008518:	97ba                	add	a5,a5,a4
1c00851a:	0027da13          	srli	s4,a5,0x2
1c00851e:	0047d313          	srli	t1,a5,0x4
1c008522:	0067d993          	srli	s3,a5,0x6
1c008526:	0087d893          	srli	a7,a5,0x8
1c00852a:	00a7d913          	srli	s2,a5,0xa
1c00852e:	00c7d813          	srli	a6,a5,0xc
1c008532:	00e7d493          	srli	s1,a5,0xe
1c008536:	0107d613          	srli	a2,a5,0x10
1c00853a:	0127d413          	srli	s0,a5,0x12
1c00853e:	0147d693          	srli	a3,a5,0x14
1c008542:	0167d393          	srli	t2,a5,0x16
1c008546:	0187d713          	srli	a4,a5,0x18
1c00854a:	01a7d293          	srli	t0,a5,0x1a
1c00854e:	01c7de93          	srli	t4,a5,0x1c
1c008552:	0037fe13          	andi	t3,a5,3
1c008556:	003a7a13          	andi	s4,s4,3
1c00855a:	00337313          	andi	t1,t1,3
1c00855e:	0039f993          	andi	s3,s3,3
1c008562:	0038f893          	andi	a7,a7,3
1c008566:	00397913          	andi	s2,s2,3
1c00856a:	00387813          	andi	a6,a6,3
1c00856e:	888d                	andi	s1,s1,3
1c008570:	8a0d                	andi	a2,a2,3
1c008572:	880d                	andi	s0,s0,3
1c008574:	8a8d                	andi	a3,a3,3
1c008576:	0033f393          	andi	t2,t2,3
1c00857a:	8b0d                	andi	a4,a4,3
1c00857c:	0032f293          	andi	t0,t0,3
1c008580:	003efe93          	andi	t4,t4,3
1c008584:	83f9                	srli	a5,a5,0x1e
1c008586:	414e0e33          	sub	t3,t3,s4
1c00858a:	41330333          	sub	t1,t1,s3
1c00858e:	412888b3          	sub	a7,a7,s2
1c008592:	40980833          	sub	a6,a6,s1
1c008596:	8e01                	sub	a2,a2,s0
1c008598:	407686b3          	sub	a3,a3,t2
1c00859c:	40570733          	sub	a4,a4,t0
1c0085a0:	40fe87b3          	sub	a5,t4,a5
1c0085a4:	01c51023          	sh	t3,0(a0)
1c0085a8:	00651123          	sh	t1,2(a0)
1c0085ac:	01151223          	sh	a7,4(a0)
1c0085b0:	01051323          	sh	a6,6(a0)
1c0085b4:	00c51423          	sh	a2,8(a0)
1c0085b8:	00d51523          	sh	a3,10(a0)
1c0085bc:	00e51623          	sh	a4,12(a0)
1c0085c0:	00f51723          	sh	a5,14(a0)
1c0085c4:	0541                	addi	a0,a0,16
1c0085c6:	0591                	addi	a1,a1,4
1c0085c8:	f3f514e3          	bne	a0,t6,1c0084f0 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
1c0085cc:	4472                	lw	s0,28(sp)
1c0085ce:	44e2                	lw	s1,24(sp)
1c0085d0:	4952                	lw	s2,20(sp)
1c0085d2:	49c2                	lw	s3,16(sp)
1c0085d4:	4a32                	lw	s4,12(sp)
1c0085d6:	6105                	addi	sp,sp,32
1c0085d8:	8082                	ret

1c0085da <keccak_absorb.constprop.1>:
1c0085da:	7151                	addi	sp,sp,-240
1c0085dc:	d3a6                	sw	s1,228(sp)
1c0085de:	cfce                	sw	s3,220(sp)
1c0085e0:	cdd2                	sw	s4,216(sp)
1c0085e2:	cbd6                	sw	s5,212(sp)
1c0085e4:	84b6                	mv	s1,a3
1c0085e6:	d786                	sw	ra,236(sp)
1c0085e8:	d5a2                	sw	s0,232(sp)
1c0085ea:	d1ca                	sw	s2,224(sp)
1c0085ec:	c9da                	sw	s6,208(sp)
1c0085ee:	8a2a                	mv	s4,a0
1c0085f0:	87ae                	mv	a5,a1
1c0085f2:	8ab2                	mv	s5,a2
1c0085f4:	89aa                	mv	s3,a0
1c0085f6:	0c850693          	addi	a3,a0,200
1c0085fa:	872a                	mv	a4,a0
1c0085fc:	4581                	li	a1,0
1c0085fe:	4601                	li	a2,0
1c008600:	c30c                	sw	a1,0(a4)
1c008602:	c350                	sw	a2,4(a4)
1c008604:	0721                	addi	a4,a4,8
1c008606:	fee69be3          	bne	a3,a4,1c0085fc <keccak_absorb.constprop.1+0x22>
1c00860a:	08700713          	li	a4,135
1c00860e:	09577363          	bgeu	a4,s5,1c008694 <keccak_absorb.constprop.1+0xba>
1c008612:	08878b13          	addi	s6,a5,136
1c008616:	895a                	mv	s2,s6
1c008618:	08700413          	li	s0,135
1c00861c:	86d2                	mv	a3,s4
1c00861e:	0017c703          	lbu	a4,1(a5)
1c008622:	0027ce03          	lbu	t3,2(a5)
1c008626:	0057c803          	lbu	a6,5(a5)
1c00862a:	0047cf03          	lbu	t5,4(a5)
1c00862e:	0067c503          	lbu	a0,6(a5)
1c008632:	0007ce83          	lbu	t4,0(a5)
1c008636:	0037c583          	lbu	a1,3(a5)
1c00863a:	0077c603          	lbu	a2,7(a5)
1c00863e:	0722                	slli	a4,a4,0x8
1c008640:	0e42                	slli	t3,t3,0x10
1c008642:	0822                	slli	a6,a6,0x8
1c008644:	0006a303          	lw	t1,0(a3)
1c008648:	0046a883          	lw	a7,4(a3)
1c00864c:	01c76733          	or	a4,a4,t3
1c008650:	01e86833          	or	a6,a6,t5
1c008654:	0542                	slli	a0,a0,0x10
1c008656:	01d76733          	or	a4,a4,t4
1c00865a:	05e2                	slli	a1,a1,0x18
1c00865c:	01056533          	or	a0,a0,a6
1c008660:	0662                	slli	a2,a2,0x18
1c008662:	8f4d                	or	a4,a4,a1
1c008664:	8e49                	or	a2,a2,a0
1c008666:	00e34733          	xor	a4,t1,a4
1c00866a:	00c8c633          	xor	a2,a7,a2
1c00866e:	c298                	sw	a4,0(a3)
1c008670:	c2d0                	sw	a2,4(a3)
1c008672:	07a1                	addi	a5,a5,8
1c008674:	06a1                	addi	a3,a3,8
1c008676:	faf914e3          	bne	s2,a5,1c00861e <keccak_absorb.constprop.1+0x44>
1c00867a:	85d2                	mv	a1,s4
1c00867c:	8552                	mv	a0,s4
1c00867e:	3301                	jal	1c00837e <KeccakF1600_StatePermute>
1c008680:	f78a8a93          	addi	s5,s5,-136
1c008684:	08890913          	addi	s2,s2,136
1c008688:	87da                	mv	a5,s6
1c00868a:	01547563          	bgeu	s0,s5,1c008694 <keccak_absorb.constprop.1+0xba>
1c00868e:	088b0b13          	addi	s6,s6,136
1c008692:	b769                	j	1c00861c <keccak_absorb.constprop.1+0x42>
1c008694:	0038                	addi	a4,sp,8
1c008696:	09010e13          	addi	t3,sp,144
1c00869a:	86ba                	mv	a3,a4
1c00869c:	0006a023          	sw	zero,0(a3)
1c0086a0:	0691                	addi	a3,a3,4
1c0086a2:	fede1de3          	bne	t3,a3,1c00869c <keccak_absorb.constprop.1+0xc2>
1c0086a6:	080a8263          	beqz	s5,1c00872a <keccak_absorb.constprop.1+0x150>
1c0086aa:	fffa8693          	addi	a3,s5,-1
1c0086ae:	4609                	li	a2,2
1c0086b0:	10d67163          	bgeu	a2,a3,1c0087b2 <keccak_absorb.constprop.1+0x1d8>
1c0086b4:	ffcaf313          	andi	t1,s5,-4
1c0086b8:	86be                	mv	a3,a5
1c0086ba:	933e                	add	t1,t1,a5
1c0086bc:	883a                	mv	a6,a4
1c0086be:	0016c503          	lbu	a0,1(a3)
1c0086c2:	0006c883          	lbu	a7,0(a3)
1c0086c6:	0026c583          	lbu	a1,2(a3)
1c0086ca:	0036c603          	lbu	a2,3(a3)
1c0086ce:	0522                	slli	a0,a0,0x8
1c0086d0:	01156533          	or	a0,a0,a7
1c0086d4:	05c2                	slli	a1,a1,0x10
1c0086d6:	8dc9                	or	a1,a1,a0
1c0086d8:	0662                	slli	a2,a2,0x18
1c0086da:	8e4d                	or	a2,a2,a1
1c0086dc:	00c82023          	sw	a2,0(a6)
1c0086e0:	0691                	addi	a3,a3,4
1c0086e2:	0811                	addi	a6,a6,4
1c0086e4:	fcd31de3          	bne	t1,a3,1c0086be <keccak_absorb.constprop.1+0xe4>
1c0086e8:	ffcaf693          	andi	a3,s5,-4
1c0086ec:	02da8f63          	beq	s5,a3,1c00872a <keccak_absorb.constprop.1+0x150>
1c0086f0:	00d78633          	add	a2,a5,a3
1c0086f4:	00064503          	lbu	a0,0(a2)
1c0086f8:	098c                	addi	a1,sp,208
1c0086fa:	95b6                	add	a1,a1,a3
1c0086fc:	00168613          	addi	a2,a3,1
1c008700:	f2a58c23          	sb	a0,-200(a1)
1c008704:	03567363          	bgeu	a2,s5,1c00872a <keccak_absorb.constprop.1+0x150>
1c008708:	00c785b3          	add	a1,a5,a2
1c00870c:	0005c583          	lbu	a1,0(a1)
1c008710:	0988                	addi	a0,sp,208
1c008712:	962a                	add	a2,a2,a0
1c008714:	0689                	addi	a3,a3,2
1c008716:	f2b60c23          	sb	a1,-200(a2)
1c00871a:	0156f863          	bgeu	a3,s5,1c00872a <keccak_absorb.constprop.1+0x150>
1c00871e:	97b6                	add	a5,a5,a3
1c008720:	0007c783          	lbu	a5,0(a5)
1c008724:	96aa                	add	a3,a3,a0
1c008726:	f2f68c23          	sb	a5,-200(a3)
1c00872a:	099c                	addi	a5,sp,208
1c00872c:	9abe                	add	s5,s5,a5
1c00872e:	f29a8c23          	sb	s1,-200(s5)
1c008732:	08f14783          	lbu	a5,143(sp)
1c008736:	f807e793          	ori	a5,a5,-128
1c00873a:	08f107a3          	sb	a5,143(sp)
1c00873e:	00174783          	lbu	a5,1(a4)
1c008742:	00274303          	lbu	t1,2(a4)
1c008746:	00574503          	lbu	a0,5(a4)
1c00874a:	00474f03          	lbu	t5,4(a4)
1c00874e:	00674583          	lbu	a1,6(a4)
1c008752:	00074e83          	lbu	t4,0(a4)
1c008756:	00374603          	lbu	a2,3(a4)
1c00875a:	00774683          	lbu	a3,7(a4)
1c00875e:	07a2                	slli	a5,a5,0x8
1c008760:	0342                	slli	t1,t1,0x10
1c008762:	0522                	slli	a0,a0,0x8
1c008764:	0009a883          	lw	a7,0(s3)
1c008768:	0049a803          	lw	a6,4(s3)
1c00876c:	0067e7b3          	or	a5,a5,t1
1c008770:	01e56533          	or	a0,a0,t5
1c008774:	05c2                	slli	a1,a1,0x10
1c008776:	01d7e7b3          	or	a5,a5,t4
1c00877a:	0662                	slli	a2,a2,0x18
1c00877c:	8dc9                	or	a1,a1,a0
1c00877e:	06e2                	slli	a3,a3,0x18
1c008780:	8e5d                	or	a2,a2,a5
1c008782:	00b6e7b3          	or	a5,a3,a1
1c008786:	00c8c633          	xor	a2,a7,a2
1c00878a:	00f847b3          	xor	a5,a6,a5
1c00878e:	00c9a023          	sw	a2,0(s3)
1c008792:	00f9a223          	sw	a5,4(s3)
1c008796:	0721                	addi	a4,a4,8
1c008798:	09a1                	addi	s3,s3,8
1c00879a:	faee12e3          	bne	t3,a4,1c00873e <keccak_absorb.constprop.1+0x164>
1c00879e:	50be                	lw	ra,236(sp)
1c0087a0:	542e                	lw	s0,232(sp)
1c0087a2:	549e                	lw	s1,228(sp)
1c0087a4:	590e                	lw	s2,224(sp)
1c0087a6:	49fe                	lw	s3,220(sp)
1c0087a8:	4a6e                	lw	s4,216(sp)
1c0087aa:	4ade                	lw	s5,212(sp)
1c0087ac:	4b4e                	lw	s6,208(sp)
1c0087ae:	616d                	addi	sp,sp,240
1c0087b0:	8082                	ret
1c0087b2:	4681                	li	a3,0
1c0087b4:	bf35                	j	1c0086f0 <keccak_absorb.constprop.1+0x116>

1c0087b6 <shake128_absorb>:
1c0087b6:	7151                	addi	sp,sp,-240
1c0087b8:	cfce                	sw	s3,220(sp)
1c0087ba:	89aa                	mv	s3,a0
1c0087bc:	0c800513          	li	a0,200
1c0087c0:	d5a2                	sw	s0,232(sp)
1c0087c2:	d3a6                	sw	s1,228(sp)
1c0087c4:	d786                	sw	ra,236(sp)
1c0087c6:	d1ca                	sw	s2,224(sp)
1c0087c8:	842e                	mv	s0,a1
1c0087ca:	84b2                	mv	s1,a2
1c0087cc:	6fd020ef          	jal	ra,1c00b6c8 <pi_l2_malloc>
1c0087d0:	00a9a023          	sw	a0,0(s3)
1c0087d4:	1c050363          	beqz	a0,1c00899a <shake128_absorb+0x1e4>
1c0087d8:	892a                	mv	s2,a0
1c0087da:	0c850713          	addi	a4,a0,200
1c0087de:	87aa                	mv	a5,a0
1c0087e0:	4601                	li	a2,0
1c0087e2:	4681                	li	a3,0
1c0087e4:	c390                	sw	a2,0(a5)
1c0087e6:	c3d4                	sw	a3,4(a5)
1c0087e8:	07a1                	addi	a5,a5,8
1c0087ea:	fef71be3          	bne	a4,a5,1c0087e0 <shake128_absorb+0x2a>
1c0087ee:	0a700793          	li	a5,167
1c0087f2:	0897f063          	bgeu	a5,s1,1c008872 <shake128_absorb+0xbc>
1c0087f6:	0a700993          	li	s3,167
1c0087fa:	87a2                	mv	a5,s0
1c0087fc:	40890eb3          	sub	t4,s2,s0
1c008800:	0a840413          	addi	s0,s0,168
1c008804:	0017c703          	lbu	a4,1(a5)
1c008808:	0027ce03          	lbu	t3,2(a5)
1c00880c:	0057c503          	lbu	a0,5(a5)
1c008810:	0047cf83          	lbu	t6,4(a5)
1c008814:	0067c583          	lbu	a1,6(a5)
1c008818:	0007cf03          	lbu	t5,0(a5)
1c00881c:	0037c603          	lbu	a2,3(a5)
1c008820:	0077c683          	lbu	a3,7(a5)
1c008824:	00fe8833          	add	a6,t4,a5
1c008828:	0722                	slli	a4,a4,0x8
1c00882a:	0e42                	slli	t3,t3,0x10
1c00882c:	0522                	slli	a0,a0,0x8
1c00882e:	00082303          	lw	t1,0(a6)
1c008832:	00482883          	lw	a7,4(a6)
1c008836:	01c76733          	or	a4,a4,t3
1c00883a:	01f56533          	or	a0,a0,t6
1c00883e:	05c2                	slli	a1,a1,0x10
1c008840:	01e76733          	or	a4,a4,t5
1c008844:	0662                	slli	a2,a2,0x18
1c008846:	8dc9                	or	a1,a1,a0
1c008848:	06e2                	slli	a3,a3,0x18
1c00884a:	8f51                	or	a4,a4,a2
1c00884c:	8ecd                	or	a3,a3,a1
1c00884e:	00e34733          	xor	a4,t1,a4
1c008852:	00d8c6b3          	xor	a3,a7,a3
1c008856:	00e82023          	sw	a4,0(a6)
1c00885a:	00d82223          	sw	a3,4(a6)
1c00885e:	07a1                	addi	a5,a5,8
1c008860:	faf412e3          	bne	s0,a5,1c008804 <shake128_absorb+0x4e>
1c008864:	f5848493          	addi	s1,s1,-168
1c008868:	85ca                	mv	a1,s2
1c00886a:	854a                	mv	a0,s2
1c00886c:	3e09                	jal	1c00837e <KeccakF1600_StatePermute>
1c00886e:	f899e6e3          	bltu	s3,s1,1c0087fa <shake128_absorb+0x44>
1c008872:	0b010313          	addi	t1,sp,176
1c008876:	003c                	addi	a5,sp,8
1c008878:	0007a023          	sw	zero,0(a5)
1c00887c:	0791                	addi	a5,a5,4
1c00887e:	fef31de3          	bne	t1,a5,1c008878 <shake128_absorb+0xc2>
1c008882:	c0d9                	beqz	s1,1c008908 <shake128_absorb+0x152>
1c008884:	fff48793          	addi	a5,s1,-1
1c008888:	4709                	li	a4,2
1c00888a:	10f77663          	bgeu	a4,a5,1c008996 <shake128_absorb+0x1e0>
1c00888e:	ffc4f593          	andi	a1,s1,-4
1c008892:	87a2                	mv	a5,s0
1c008894:	95a2                	add	a1,a1,s0
1c008896:	0028                	addi	a0,sp,8
1c008898:	0017c603          	lbu	a2,1(a5)
1c00889c:	0007c803          	lbu	a6,0(a5)
1c0088a0:	0027c683          	lbu	a3,2(a5)
1c0088a4:	0037c703          	lbu	a4,3(a5)
1c0088a8:	0622                	slli	a2,a2,0x8
1c0088aa:	01066633          	or	a2,a2,a6
1c0088ae:	06c2                	slli	a3,a3,0x10
1c0088b0:	8ed1                	or	a3,a3,a2
1c0088b2:	0762                	slli	a4,a4,0x18
1c0088b4:	8f55                	or	a4,a4,a3
1c0088b6:	c118                	sw	a4,0(a0)
1c0088b8:	0791                	addi	a5,a5,4
1c0088ba:	0511                	addi	a0,a0,4
1c0088bc:	fcf59ee3          	bne	a1,a5,1c008898 <shake128_absorb+0xe2>
1c0088c0:	ffc4f793          	andi	a5,s1,-4
1c0088c4:	04f48263          	beq	s1,a5,1c008908 <shake128_absorb+0x152>
1c0088c8:	00f40733          	add	a4,s0,a5
1c0088cc:	00074603          	lbu	a2,0(a4)
1c0088d0:	0994                	addi	a3,sp,208
1c0088d2:	96be                	add	a3,a3,a5
1c0088d4:	00178713          	addi	a4,a5,1
1c0088d8:	f2c68c23          	sb	a2,-200(a3)
1c0088dc:	02977663          	bgeu	a4,s1,1c008908 <shake128_absorb+0x152>
1c0088e0:	00e406b3          	add	a3,s0,a4
1c0088e4:	0006c603          	lbu	a2,0(a3)
1c0088e8:	0994                	addi	a3,sp,208
1c0088ea:	96ba                	add	a3,a3,a4
1c0088ec:	f2c68c23          	sb	a2,-200(a3)
1c0088f0:	00278713          	addi	a4,a5,2
1c0088f4:	00977a63          	bgeu	a4,s1,1c008908 <shake128_absorb+0x152>
1c0088f8:	00e407b3          	add	a5,s0,a4
1c0088fc:	0007c683          	lbu	a3,0(a5)
1c008900:	099c                	addi	a5,sp,208
1c008902:	97ba                	add	a5,a5,a4
1c008904:	f2d78c23          	sb	a3,-200(a5)
1c008908:	099c                	addi	a5,sp,208
1c00890a:	00978633          	add	a2,a5,s1
1c00890e:	47fd                	li	a5,31
1c008910:	f2f60c23          	sb	a5,-200(a2)
1c008914:	0af14703          	lbu	a4,175(sp)
1c008918:	003c                	addi	a5,sp,8
1c00891a:	40f90933          	sub	s2,s2,a5
1c00891e:	f8076713          	ori	a4,a4,-128
1c008922:	0ae107a3          	sb	a4,175(sp)
1c008926:	0017c703          	lbu	a4,1(a5)
1c00892a:	0027cf83          	lbu	t6,2(a5)
1c00892e:	0057c883          	lbu	a7,5(a5)
1c008932:	0047c503          	lbu	a0,4(a5)
1c008936:	0067c803          	lbu	a6,6(a5)
1c00893a:	0007c583          	lbu	a1,0(a5)
1c00893e:	0037c603          	lbu	a2,3(a5)
1c008942:	0077c683          	lbu	a3,7(a5)
1c008946:	00f90e33          	add	t3,s2,a5
1c00894a:	0722                	slli	a4,a4,0x8
1c00894c:	0fc2                	slli	t6,t6,0x10
1c00894e:	08a2                	slli	a7,a7,0x8
1c008950:	000e2f03          	lw	t5,0(t3)
1c008954:	004e2e83          	lw	t4,4(t3)
1c008958:	01f76733          	or	a4,a4,t6
1c00895c:	00a8e8b3          	or	a7,a7,a0
1c008960:	0842                	slli	a6,a6,0x10
1c008962:	8f4d                	or	a4,a4,a1
1c008964:	0662                	slli	a2,a2,0x18
1c008966:	01186833          	or	a6,a6,a7
1c00896a:	06e2                	slli	a3,a3,0x18
1c00896c:	8f51                	or	a4,a4,a2
1c00896e:	0106e6b3          	or	a3,a3,a6
1c008972:	00ef4733          	xor	a4,t5,a4
1c008976:	00dec6b3          	xor	a3,t4,a3
1c00897a:	00ee2023          	sw	a4,0(t3)
1c00897e:	00de2223          	sw	a3,4(t3)
1c008982:	07a1                	addi	a5,a5,8
1c008984:	faf311e3          	bne	t1,a5,1c008926 <shake128_absorb+0x170>
1c008988:	50be                	lw	ra,236(sp)
1c00898a:	542e                	lw	s0,232(sp)
1c00898c:	549e                	lw	s1,228(sp)
1c00898e:	590e                	lw	s2,224(sp)
1c008990:	49fe                	lw	s3,220(sp)
1c008992:	616d                	addi	sp,sp,240
1c008994:	8082                	ret
1c008996:	4781                	li	a5,0
1c008998:	bf05                	j	1c0088c8 <shake128_absorb+0x112>
1c00899a:	06f00513          	li	a0,111
1c00899e:	3f7010ef          	jal	ra,1c00a594 <exit>

1c0089a2 <shake128_squeezeblocks>:
1c0089a2:	1101                	addi	sp,sp,-32
1c0089a4:	c05a                	sw	s6,0(sp)
1c0089a6:	ce06                	sw	ra,28(sp)
1c0089a8:	cc22                	sw	s0,24(sp)
1c0089aa:	ca26                	sw	s1,20(sp)
1c0089ac:	c84a                	sw	s2,16(sp)
1c0089ae:	c64e                	sw	s3,12(sp)
1c0089b0:	c452                	sw	s4,8(sp)
1c0089b2:	c256                	sw	s5,4(sp)
1c0089b4:	00062b03          	lw	s6,0(a2)
1c0089b8:	c5e9                	beqz	a1,1c008a82 <shake128_squeezeblocks+0xe0>
1c0089ba:	7ac1                	lui	s5,0xffff0
1c0089bc:	ff010a37          	lui	s4,0xff010
1c0089c0:	010009b7          	lui	s3,0x1000
1c0089c4:	84ae                	mv	s1,a1
1c0089c6:	892a                	mv	s2,a0
1c0089c8:	0a8b0413          	addi	s0,s6,168
1c0089cc:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c0089d0:	1a7d                	addi	s4,s4,-1
1c0089d2:	19fd                	addi	s3,s3,-1
1c0089d4:	85da                	mv	a1,s6
1c0089d6:	855a                	mv	a0,s6
1c0089d8:	325d                	jal	1c00837e <KeccakF1600_StatePermute>
1c0089da:	85da                	mv	a1,s6
1c0089dc:	00490813          	addi	a6,s2,4
1c0089e0:	4198                	lw	a4,0(a1)
1c0089e2:	41dc                	lw	a5,4(a1)
1c0089e4:	05a1                	addi	a1,a1,8
1c0089e6:	00875893          	srli	a7,a4,0x8
1c0089ea:	0087d513          	srli	a0,a5,0x8
1c0089ee:	0ff77613          	andi	a2,a4,255
1c0089f2:	0ff7f693          	andi	a3,a5,255
1c0089f6:	0ff8f893          	andi	a7,a7,255
1c0089fa:	0ff57513          	andi	a0,a0,255
1c0089fe:	08a2                	slli	a7,a7,0x8
1c008a00:	0522                	slli	a0,a0,0x8
1c008a02:	01567633          	and	a2,a2,s5
1c008a06:	0156f6b3          	and	a3,a3,s5
1c008a0a:	01166633          	or	a2,a2,a7
1c008a0e:	8ec9                	or	a3,a3,a0
1c008a10:	00ff08b7          	lui	a7,0xff0
1c008a14:	00ff0537          	lui	a0,0xff0
1c008a18:	011778b3          	and	a7,a4,a7
1c008a1c:	8d7d                	and	a0,a0,a5
1c008a1e:	01467633          	and	a2,a2,s4
1c008a22:	0146f6b3          	and	a3,a3,s4
1c008a26:	01166633          	or	a2,a2,a7
1c008a2a:	8ec9                	or	a3,a3,a0
1c008a2c:	8361                	srli	a4,a4,0x18
1c008a2e:	83e1                	srli	a5,a5,0x18
1c008a30:	01367633          	and	a2,a2,s3
1c008a34:	0136f6b3          	and	a3,a3,s3
1c008a38:	0762                	slli	a4,a4,0x18
1c008a3a:	07e2                	slli	a5,a5,0x18
1c008a3c:	8f51                	or	a4,a4,a2
1c008a3e:	8fd5                	or	a5,a5,a3
1c008a40:	00875e13          	srli	t3,a4,0x8
1c008a44:	01075313          	srli	t1,a4,0x10
1c008a48:	0087d893          	srli	a7,a5,0x8
1c008a4c:	0107d513          	srli	a0,a5,0x10
1c008a50:	8361                	srli	a4,a4,0x18
1c008a52:	83e1                	srli	a5,a5,0x18
1c008a54:	fec80e23          	sb	a2,-4(a6)
1c008a58:	ffc80ea3          	sb	t3,-3(a6)
1c008a5c:	fe680f23          	sb	t1,-2(a6)
1c008a60:	fee80fa3          	sb	a4,-1(a6)
1c008a64:	00d80023          	sb	a3,0(a6)
1c008a68:	011800a3          	sb	a7,1(a6)
1c008a6c:	00a80123          	sb	a0,2(a6)
1c008a70:	00f801a3          	sb	a5,3(a6)
1c008a74:	0821                	addi	a6,a6,8
1c008a76:	f6b415e3          	bne	s0,a1,1c0089e0 <shake128_squeezeblocks+0x3e>
1c008a7a:	14fd                	addi	s1,s1,-1
1c008a7c:	0a890913          	addi	s2,s2,168
1c008a80:	f8b1                	bnez	s1,1c0089d4 <shake128_squeezeblocks+0x32>
1c008a82:	40f2                	lw	ra,28(sp)
1c008a84:	4462                	lw	s0,24(sp)
1c008a86:	44d2                	lw	s1,20(sp)
1c008a88:	4942                	lw	s2,16(sp)
1c008a8a:	49b2                	lw	s3,12(sp)
1c008a8c:	4a22                	lw	s4,8(sp)
1c008a8e:	4a92                	lw	s5,4(sp)
1c008a90:	4b02                	lw	s6,0(sp)
1c008a92:	6105                	addi	sp,sp,32
1c008a94:	8082                	ret

1c008a96 <shake128_ctx_release>:
1c008a96:	4108                	lw	a0,0(a0)
1c008a98:	0c800593          	li	a1,200
1c008a9c:	4390206f          	j	1c00b6d4 <pi_l2_free>

1c008aa0 <shake256>:
1c008aa0:	7131                	addi	sp,sp,-192
1c008aa2:	db26                	sw	s1,180(sp)
1c008aa4:	d74e                	sw	s3,172(sp)
1c008aa6:	84aa                	mv	s1,a0
1c008aa8:	08800993          	li	s3,136
1c008aac:	0c800513          	li	a0,200
1c008ab0:	dd22                	sw	s0,184(sp)
1c008ab2:	d94a                	sw	s2,176(sp)
1c008ab4:	d356                	sw	s5,164(sp)
1c008ab6:	df06                	sw	ra,188(sp)
1c008ab8:	d552                	sw	s4,168(sp)
1c008aba:	d15a                	sw	s6,160(sp)
1c008abc:	cf5e                	sw	s7,156(sp)
1c008abe:	cd62                	sw	s8,152(sp)
1c008ac0:	0335d9b3          	divu	s3,a1,s3
1c008ac4:	892e                	mv	s2,a1
1c008ac6:	8432                	mv	s0,a2
1c008ac8:	8ab6                	mv	s5,a3
1c008aca:	3ff020ef          	jal	ra,1c00b6c8 <pi_l2_malloc>
1c008ace:	24050663          	beqz	a0,1c008d1a <shake256+0x27a>
1c008ad2:	46fd                	li	a3,31
1c008ad4:	8656                	mv	a2,s5
1c008ad6:	85a2                	mv	a1,s0
1c008ad8:	8a2a                	mv	s4,a0
1c008ada:	3601                	jal	1c0085da <keccak_absorb.constprop.1>
1c008adc:	08700793          	li	a5,135
1c008ae0:	0d27fe63          	bgeu	a5,s2,1c008bbc <shake256+0x11c>
1c008ae4:	00499413          	slli	s0,s3,0x4
1c008ae8:	944e                	add	s0,s0,s3
1c008aea:	040e                	slli	s0,s0,0x3
1c008aec:	7bc1                	lui	s7,0xffff0
1c008aee:	ff010b37          	lui	s6,0xff010
1c008af2:	01000ab7          	lui	s5,0x1000
1c008af6:	9426                	add	s0,s0,s1
1c008af8:	8c26                	mv	s8,s1
1c008afa:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008afe:	1b7d                	addi	s6,s6,-1
1c008b00:	1afd                	addi	s5,s5,-1
1c008b02:	85d2                	mv	a1,s4
1c008b04:	8552                	mv	a0,s4
1c008b06:	38a5                	jal	1c00837e <KeccakF1600_StatePermute>
1c008b08:	87e2                	mv	a5,s8
1c008b0a:	418a0533          	sub	a0,s4,s8
1c008b0e:	088c0593          	addi	a1,s8,136
1c008b12:	00f50733          	add	a4,a0,a5
1c008b16:	4314                	lw	a3,0(a4)
1c008b18:	4358                	lw	a4,4(a4)
1c008b1a:	07a1                	addi	a5,a5,8
1c008b1c:	0086d313          	srli	t1,a3,0x8
1c008b20:	00875893          	srli	a7,a4,0x8
1c008b24:	0ff6f813          	andi	a6,a3,255
1c008b28:	0ff77613          	andi	a2,a4,255
1c008b2c:	0ff37313          	andi	t1,t1,255
1c008b30:	0ff8f893          	andi	a7,a7,255
1c008b34:	0322                	slli	t1,t1,0x8
1c008b36:	08a2                	slli	a7,a7,0x8
1c008b38:	01787833          	and	a6,a6,s7
1c008b3c:	01767633          	and	a2,a2,s7
1c008b40:	00686833          	or	a6,a6,t1
1c008b44:	01166633          	or	a2,a2,a7
1c008b48:	00ff0337          	lui	t1,0xff0
1c008b4c:	00ff08b7          	lui	a7,0xff0
1c008b50:	0066f333          	and	t1,a3,t1
1c008b54:	011778b3          	and	a7,a4,a7
1c008b58:	01687833          	and	a6,a6,s6
1c008b5c:	01667633          	and	a2,a2,s6
1c008b60:	00686833          	or	a6,a6,t1
1c008b64:	01166633          	or	a2,a2,a7
1c008b68:	82e1                	srli	a3,a3,0x18
1c008b6a:	8361                	srli	a4,a4,0x18
1c008b6c:	01587833          	and	a6,a6,s5
1c008b70:	01567633          	and	a2,a2,s5
1c008b74:	06e2                	slli	a3,a3,0x18
1c008b76:	0762                	slli	a4,a4,0x18
1c008b78:	00d866b3          	or	a3,a6,a3
1c008b7c:	8f51                	or	a4,a4,a2
1c008b7e:	0086de93          	srli	t4,a3,0x8
1c008b82:	0106de13          	srli	t3,a3,0x10
1c008b86:	00875313          	srli	t1,a4,0x8
1c008b8a:	01075893          	srli	a7,a4,0x10
1c008b8e:	82e1                	srli	a3,a3,0x18
1c008b90:	8361                	srli	a4,a4,0x18
1c008b92:	ff078c23          	sb	a6,-8(a5)
1c008b96:	ffd78ca3          	sb	t4,-7(a5)
1c008b9a:	ffc78d23          	sb	t3,-6(a5)
1c008b9e:	fed78da3          	sb	a3,-5(a5)
1c008ba2:	fec78e23          	sb	a2,-4(a5)
1c008ba6:	fe678ea3          	sb	t1,-3(a5)
1c008baa:	ff178f23          	sb	a7,-2(a5)
1c008bae:	fee78fa3          	sb	a4,-1(a5)
1c008bb2:	f6f590e3          	bne	a1,a5,1c008b12 <shake256+0x72>
1c008bb6:	8c2e                	mv	s8,a1
1c008bb8:	f48595e3          	bne	a1,s0,1c008b02 <shake256+0x62>
1c008bbc:	08800593          	li	a1,136
1c008bc0:	02b97933          	remu	s2,s2,a1
1c008bc4:	02091263          	bnez	s2,1c008be8 <shake256+0x148>
1c008bc8:	546a                	lw	s0,184(sp)
1c008bca:	50fa                	lw	ra,188(sp)
1c008bcc:	54da                	lw	s1,180(sp)
1c008bce:	594a                	lw	s2,176(sp)
1c008bd0:	59ba                	lw	s3,172(sp)
1c008bd2:	5a9a                	lw	s5,164(sp)
1c008bd4:	5b0a                	lw	s6,160(sp)
1c008bd6:	4bfa                	lw	s7,156(sp)
1c008bd8:	4c6a                	lw	s8,152(sp)
1c008bda:	8552                	mv	a0,s4
1c008bdc:	5a2a                	lw	s4,168(sp)
1c008bde:	0c800593          	li	a1,200
1c008be2:	6129                	addi	sp,sp,192
1c008be4:	2f10206f          	j	1c00b6d4 <pi_l2_free>
1c008be8:	85d2                	mv	a1,s4
1c008bea:	8552                	mv	a0,s4
1c008bec:	f92ff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008bf0:	002c                	addi	a1,sp,8
1c008bf2:	78c1                	lui	a7,0xffff0
1c008bf4:	ff010837          	lui	a6,0xff010
1c008bf8:	01000537          	lui	a0,0x1000
1c008bfc:	09010e13          	addi	t3,sp,144
1c008c00:	862e                	mv	a2,a1
1c008c02:	40ba0333          	sub	t1,s4,a1
1c008c06:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008c0a:	187d                	addi	a6,a6,-1
1c008c0c:	157d                	addi	a0,a0,-1
1c008c0e:	00c307b3          	add	a5,t1,a2
1c008c12:	0007ae83          	lw	t4,0(a5)
1c008c16:	43d4                	lw	a3,4(a5)
1c008c18:	0621                	addi	a2,a2,8
1c008c1a:	008edf93          	srli	t6,t4,0x8
1c008c1e:	0086df13          	srli	t5,a3,0x8
1c008c22:	0ffef713          	andi	a4,t4,255
1c008c26:	0ff6f793          	andi	a5,a3,255
1c008c2a:	0fffff93          	andi	t6,t6,255
1c008c2e:	0fff7f13          	andi	t5,t5,255
1c008c32:	0fa2                	slli	t6,t6,0x8
1c008c34:	0f22                	slli	t5,t5,0x8
1c008c36:	01177733          	and	a4,a4,a7
1c008c3a:	0117f7b3          	and	a5,a5,a7
1c008c3e:	01f76733          	or	a4,a4,t6
1c008c42:	01e7e7b3          	or	a5,a5,t5
1c008c46:	00ff0fb7          	lui	t6,0xff0
1c008c4a:	00ff0f37          	lui	t5,0xff0
1c008c4e:	01feffb3          	and	t6,t4,t6
1c008c52:	01e6ff33          	and	t5,a3,t5
1c008c56:	01077733          	and	a4,a4,a6
1c008c5a:	0107f7b3          	and	a5,a5,a6
1c008c5e:	01f76733          	or	a4,a4,t6
1c008c62:	018ede93          	srli	t4,t4,0x18
1c008c66:	01e7e7b3          	or	a5,a5,t5
1c008c6a:	82e1                	srli	a3,a3,0x18
1c008c6c:	0ee2                	slli	t4,t4,0x18
1c008c6e:	8f69                	and	a4,a4,a0
1c008c70:	06e2                	slli	a3,a3,0x18
1c008c72:	8fe9                	and	a5,a5,a0
1c008c74:	01d76733          	or	a4,a4,t4
1c008c78:	8fd5                	or	a5,a5,a3
1c008c7a:	fee62c23          	sw	a4,-8(a2)
1c008c7e:	fef62e23          	sw	a5,-4(a2)
1c008c82:	f8ce16e3          	bne	t3,a2,1c008c0e <shake256+0x16e>
1c008c86:	fff90793          	addi	a5,s2,-1
1c008c8a:	4709                	li	a4,2
1c008c8c:	08f77363          	bgeu	a4,a5,1c008d12 <shake256+0x272>
1c008c90:	00499413          	slli	s0,s3,0x4
1c008c94:	013407b3          	add	a5,s0,s3
1c008c98:	078e                	slli	a5,a5,0x3
1c008c9a:	97a6                	add	a5,a5,s1
1c008c9c:	0fc97813          	andi	a6,s2,252
1c008ca0:	983e                	add	a6,a6,a5
1c008ca2:	4198                	lw	a4,0(a1)
1c008ca4:	0791                	addi	a5,a5,4
1c008ca6:	0591                	addi	a1,a1,4
1c008ca8:	00875513          	srli	a0,a4,0x8
1c008cac:	01075613          	srli	a2,a4,0x10
1c008cb0:	01875693          	srli	a3,a4,0x18
1c008cb4:	fea78ea3          	sb	a0,-3(a5)
1c008cb8:	fec78f23          	sb	a2,-2(a5)
1c008cbc:	fed78fa3          	sb	a3,-1(a5)
1c008cc0:	fee78e23          	sb	a4,-4(a5)
1c008cc4:	fcf81fe3          	bne	a6,a5,1c008ca2 <shake256+0x202>
1c008cc8:	ffc97793          	andi	a5,s2,-4
1c008ccc:	eef90ee3          	beq	s2,a5,1c008bc8 <shake256+0x128>
1c008cd0:	0918                	addi	a4,sp,144
1c008cd2:	973e                	add	a4,a4,a5
1c008cd4:	99a2                	add	s3,s3,s0
1c008cd6:	f7874683          	lbu	a3,-136(a4)
1c008cda:	098e                	slli	s3,s3,0x3
1c008cdc:	99a6                	add	s3,s3,s1
1c008cde:	00f98733          	add	a4,s3,a5
1c008ce2:	00d70023          	sb	a3,0(a4)
1c008ce6:	00178713          	addi	a4,a5,1
1c008cea:	ed277fe3          	bgeu	a4,s2,1c008bc8 <shake256+0x128>
1c008cee:	0914                	addi	a3,sp,144
1c008cf0:	96ba                	add	a3,a3,a4
1c008cf2:	f786c683          	lbu	a3,-136(a3)
1c008cf6:	974e                	add	a4,a4,s3
1c008cf8:	0789                	addi	a5,a5,2
1c008cfa:	00d70023          	sb	a3,0(a4)
1c008cfe:	ed27f5e3          	bgeu	a5,s2,1c008bc8 <shake256+0x128>
1c008d02:	0918                	addi	a4,sp,144
1c008d04:	973e                	add	a4,a4,a5
1c008d06:	f7874703          	lbu	a4,-136(a4)
1c008d0a:	99be                	add	s3,s3,a5
1c008d0c:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008d10:	bd65                	j	1c008bc8 <shake256+0x128>
1c008d12:	4781                	li	a5,0
1c008d14:	00499413          	slli	s0,s3,0x4
1c008d18:	bf65                	j	1c008cd0 <shake256+0x230>
1c008d1a:	06f00513          	li	a0,111
1c008d1e:	077010ef          	jal	ra,1c00a594 <exit>

1c008d22 <sha3_256>:
1c008d22:	712d                	addi	sp,sp,-288
1c008d24:	10812c23          	sw	s0,280(sp)
1c008d28:	4699                	li	a3,6
1c008d2a:	842a                	mv	s0,a0
1c008d2c:	0828                	addi	a0,sp,24
1c008d2e:	10112e23          	sw	ra,284(sp)
1c008d32:	10912a23          	sw	s1,276(sp)
1c008d36:	11212823          	sw	s2,272(sp)
1c008d3a:	11312623          	sw	s3,268(sp)
1c008d3e:	11412423          	sw	s4,264(sp)
1c008d42:	11512223          	sw	s5,260(sp)
1c008d46:	11612023          	sw	s6,256(sp)
1c008d4a:	dfde                	sw	s7,252(sp)
1c008d4c:	dde2                	sw	s8,248(sp)
1c008d4e:	dbe6                	sw	s9,244(sp)
1c008d50:	d9ea                	sw	s10,240(sp)
1c008d52:	d7ee                	sw	s11,236(sp)
1c008d54:	3059                	jal	1c0085da <keccak_absorb.constprop.1>
1c008d56:	082c                	addi	a1,sp,24
1c008d58:	852e                	mv	a0,a1
1c008d5a:	e24ff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008d5e:	4372                	lw	t1,28(sp)
1c008d60:	5612                	lw	a2,36(sp)
1c008d62:	5732                	lw	a4,44(sp)
1c008d64:	5582                	lw	a1,32(sp)
1c008d66:	56a2                	lw	a3,40(sp)
1c008d68:	59d2                	lw	s3,52(sp)
1c008d6a:	4ae2                	lw	s5,24(sp)
1c008d6c:	00835293          	srli	t0,t1,0x8
1c008d70:	00865f13          	srli	t5,a2,0x8
1c008d74:	00875893          	srli	a7,a4,0x8
1c008d78:	5a42                	lw	s4,48(sp)
1c008d7a:	0085df93          	srli	t6,a1,0x8
1c008d7e:	0086de93          	srli	t4,a3,0x8
1c008d82:	0ff2f293          	andi	t0,t0,255
1c008d86:	0fff7f13          	andi	t5,t5,255
1c008d8a:	0ff8f893          	andi	a7,a7,255
1c008d8e:	0ff37b93          	andi	s7,t1,255
1c008d92:	0ff67913          	andi	s2,a2,255
1c008d96:	0ff77e13          	andi	t3,a4,255
1c008d9a:	008ad393          	srli	t2,s5,0x8
1c008d9e:	0089d513          	srli	a0,s3,0x8
1c008da2:	0fffff93          	andi	t6,t6,255
1c008da6:	0ffefe93          	andi	t4,t4,255
1c008daa:	02a2                	slli	t0,t0,0x8
1c008dac:	0f22                	slli	t5,t5,0x8
1c008dae:	08a2                	slli	a7,a7,0x8
1c008db0:	ff0107b7          	lui	a5,0xff010
1c008db4:	17fd                	addi	a5,a5,-1
1c008db6:	0ff5fb13          	andi	s6,a1,255
1c008dba:	0ff6f493          	andi	s1,a3,255
1c008dbe:	005be2b3          	or	t0,s7,t0
1c008dc2:	01e96f33          	or	t5,s2,t5
1c008dc6:	011e68b3          	or	a7,t3,a7
1c008dca:	0ff3f393          	andi	t2,t2,255
1c008dce:	0fa2                	slli	t6,t6,0x8
1c008dd0:	0ea2                	slli	t4,t4,0x8
1c008dd2:	0ff57513          	andi	a0,a0,255
1c008dd6:	00ff0bb7          	lui	s7,0xff0
1c008dda:	0ffafc13          	andi	s8,s5,255
1c008dde:	0ff9f913          	andi	s2,s3,255
1c008de2:	01767bb3          	and	s7,a2,s7
1c008de6:	00f8fe33          	and	t3,a7,a5
1c008dea:	008a5813          	srli	a6,s4,0x8
1c008dee:	01fb6fb3          	or	t6,s6,t6
1c008df2:	01d4eeb3          	or	t4,s1,t4
1c008df6:	00ff7f33          	and	t5,t5,a5
1c008dfa:	010008b7          	lui	a7,0x1000
1c008dfe:	03a2                	slli	t2,t2,0x8
1c008e00:	0522                	slli	a0,a0,0x8
1c008e02:	00ff04b7          	lui	s1,0xff0
1c008e06:	00ff0b37          	lui	s6,0xff0
1c008e0a:	8cf5                	and	s1,s1,a3
1c008e0c:	01677b33          	and	s6,a4,s6
1c008e10:	00a96533          	or	a0,s2,a0
1c008e14:	007c63b3          	or	t2,s8,t2
1c008e18:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c008e1c:	00fefeb3          	and	t4,t4,a5
1c008e20:	017f6f33          	or	t5,t5,s7
1c008e24:	0ff87813          	andi	a6,a6,255
1c008e28:	00ff0c37          	lui	s8,0xff0
1c008e2c:	8261                	srli	a2,a2,0x18
1c008e2e:	0ffa7d93          	andi	s11,s4,255
1c008e32:	0185fc33          	and	s8,a1,s8
1c008e36:	012f7f33          	and	t5,t5,s2
1c008e3a:	00ffffb3          	and	t6,t6,a5
1c008e3e:	009eeeb3          	or	t4,t4,s1
1c008e42:	016e6e33          	or	t3,t3,s6
1c008e46:	8361                	srli	a4,a4,0x18
1c008e48:	0822                	slli	a6,a6,0x8
1c008e4a:	00ff0d37          	lui	s10,0xff0
1c008e4e:	82e1                	srli	a3,a3,0x18
1c008e50:	0662                	slli	a2,a2,0x18
1c008e52:	01aafd33          	and	s10,s5,s10
1c008e56:	010de833          	or	a6,s11,a6
1c008e5a:	012efeb3          	and	t4,t4,s2
1c008e5e:	012e7e33          	and	t3,t3,s2
1c008e62:	00cf6633          	or	a2,t5,a2
1c008e66:	018ada93          	srli	s5,s5,0x18
1c008e6a:	018fefb3          	or	t6,t6,s8
1c008e6e:	06e2                	slli	a3,a3,0x18
1c008e70:	01871c13          	slli	s8,a4,0x18
1c008e74:	00ff0bb7          	lui	s7,0xff0
1c008e78:	00f87b33          	and	s6,a6,a5
1c008e7c:	00dee4b3          	or	s1,t4,a3
1c008e80:	017a7bb3          	and	s7,s4,s7
1c008e84:	018e66b3          	or	a3,t3,s8
1c008e88:	018a9813          	slli	a6,s5,0x18
1c008e8c:	018a5713          	srli	a4,s4,0x18
1c008e90:	00865a93          	srli	s5,a2,0x8
1c008e94:	01065a13          	srli	s4,a2,0x10
1c008e98:	00ff0cb7          	lui	s9,0xff0
1c008e9c:	8261                	srli	a2,a2,0x18
1c008e9e:	c232                	sw	a2,4(sp)
1c008ea0:	01937cb3          	and	s9,t1,s9
1c008ea4:	0086d613          	srli	a2,a3,0x8
1c008ea8:	00f3f3b3          	and	t2,t2,a5
1c008eac:	00f2f2b3          	and	t0,t0,a5
1c008eb0:	c432                	sw	a2,8(sp)
1c008eb2:	01a3e3b3          	or	t2,t2,s10
1c008eb6:	0106d613          	srli	a2,a3,0x10
1c008eba:	0192e2b3          	or	t0,t0,s9
1c008ebe:	01835313          	srli	t1,t1,0x18
1c008ec2:	81e1                	srli	a1,a1,0x18
1c008ec4:	00ff08b7          	lui	a7,0xff0
1c008ec8:	8fe9                	and	a5,a5,a0
1c008eca:	0123f3b3          	and	t2,t2,s2
1c008ece:	0122f2b3          	and	t0,t0,s2
1c008ed2:	012fffb3          	and	t6,t6,s2
1c008ed6:	c632                	sw	a2,12(sp)
1c008ed8:	0119f8b3          	and	a7,s3,a7
1c008edc:	4612                	lw	a2,4(sp)
1c008ede:	01831513          	slli	a0,t1,0x18
1c008ee2:	05e2                	slli	a1,a1,0x18
1c008ee4:	017b6333          	or	t1,s6,s7
1c008ee8:	0103e833          	or	a6,t2,a6
1c008eec:	00a2e533          	or	a0,t0,a0
1c008ef0:	00bfe5b3          	or	a1,t6,a1
1c008ef4:	0117e8b3          	or	a7,a5,a7
1c008ef8:	01237333          	and	t1,t1,s2
1c008efc:	0128f8b3          	and	a7,a7,s2
1c008f00:	00885d93          	srli	s11,a6,0x8
1c008f04:	01085d13          	srli	s10,a6,0x10
1c008f08:	00855c93          	srli	s9,a0,0x8
1c008f0c:	01055c13          	srli	s8,a0,0x10
1c008f10:	0085db93          	srli	s7,a1,0x8
1c008f14:	0105db13          	srli	s6,a1,0x10
1c008f18:	0104d913          	srli	s2,s1,0x10
1c008f1c:	0189d793          	srli	a5,s3,0x18
1c008f20:	8161                	srli	a0,a0,0x18
1c008f22:	0084d993          	srli	s3,s1,0x8
1c008f26:	81e1                	srli	a1,a1,0x18
1c008f28:	80e1                	srli	s1,s1,0x18
1c008f2a:	01885813          	srli	a6,a6,0x18
1c008f2e:	01b400a3          	sb	s11,1(s0)
1c008f32:	01a40123          	sb	s10,2(s0)
1c008f36:	019402a3          	sb	s9,5(s0)
1c008f3a:	01840323          	sb	s8,6(s0)
1c008f3e:	00a403a3          	sb	a0,7(s0)
1c008f42:	017404a3          	sb	s7,9(s0)
1c008f46:	01640523          	sb	s6,10(s0)
1c008f4a:	00b405a3          	sb	a1,11(s0)
1c008f4e:	015406a3          	sb	s5,13(s0)
1c008f52:	01440723          	sb	s4,14(s0)
1c008f56:	00c407a3          	sb	a2,15(s0)
1c008f5a:	013408a3          	sb	s3,17(s0)
1c008f5e:	01240923          	sb	s2,18(s0)
1c008f62:	009409a3          	sb	s1,19(s0)
1c008f66:	00740023          	sb	t2,0(s0)
1c008f6a:	010401a3          	sb	a6,3(s0)
1c008f6e:	00540223          	sb	t0,4(s0)
1c008f72:	01f40423          	sb	t6,8(s0)
1c008f76:	01e40623          	sb	t5,12(s0)
1c008f7a:	01d40823          	sb	t4,16(s0)
1c008f7e:	01c40a23          	sb	t3,20(s0)
1c008f82:	4622                	lw	a2,8(sp)
1c008f84:	0762                	slli	a4,a4,0x18
1c008f86:	07e2                	slli	a5,a5,0x18
1c008f88:	00c40aa3          	sb	a2,21(s0)
1c008f8c:	4632                	lw	a2,12(sp)
1c008f8e:	00e36733          	or	a4,t1,a4
1c008f92:	00f8e7b3          	or	a5,a7,a5
1c008f96:	82e1                	srli	a3,a3,0x18
1c008f98:	00c40b23          	sb	a2,22(s0)
1c008f9c:	00d40ba3          	sb	a3,23(s0)
1c008fa0:	00875513          	srli	a0,a4,0x8
1c008fa4:	01075593          	srli	a1,a4,0x10
1c008fa8:	0087d613          	srli	a2,a5,0x8
1c008fac:	0107d693          	srli	a3,a5,0x10
1c008fb0:	8361                	srli	a4,a4,0x18
1c008fb2:	83e1                	srli	a5,a5,0x18
1c008fb4:	00640c23          	sb	t1,24(s0)
1c008fb8:	00a40ca3          	sb	a0,25(s0)
1c008fbc:	00b40d23          	sb	a1,26(s0)
1c008fc0:	00e40da3          	sb	a4,27(s0)
1c008fc4:	01140e23          	sb	a7,28(s0)
1c008fc8:	00c40ea3          	sb	a2,29(s0)
1c008fcc:	00d40f23          	sb	a3,30(s0)
1c008fd0:	00f40fa3          	sb	a5,31(s0)
1c008fd4:	11c12083          	lw	ra,284(sp)
1c008fd8:	11812403          	lw	s0,280(sp)
1c008fdc:	11412483          	lw	s1,276(sp)
1c008fe0:	11012903          	lw	s2,272(sp)
1c008fe4:	10c12983          	lw	s3,268(sp)
1c008fe8:	10812a03          	lw	s4,264(sp)
1c008fec:	10412a83          	lw	s5,260(sp)
1c008ff0:	10012b03          	lw	s6,256(sp)
1c008ff4:	5bfe                	lw	s7,252(sp)
1c008ff6:	5c6e                	lw	s8,248(sp)
1c008ff8:	5cde                	lw	s9,244(sp)
1c008ffa:	5d4e                	lw	s10,240(sp)
1c008ffc:	5dbe                	lw	s11,236(sp)
1c008ffe:	6115                	addi	sp,sp,288
1c009000:	8082                	ret

1c009002 <sha3_512>:
1c009002:	7105                	addi	sp,sp,-480
1c009004:	1c812c23          	sw	s0,472(sp)
1c009008:	1d312623          	sw	s3,460(sp)
1c00900c:	1d412423          	sw	s4,456(sp)
1c009010:	1c112e23          	sw	ra,476(sp)
1c009014:	1c912a23          	sw	s1,468(sp)
1c009018:	1d212823          	sw	s2,464(sp)
1c00901c:	1d512223          	sw	s5,452(sp)
1c009020:	1d612023          	sw	s6,448(sp)
1c009024:	1b712e23          	sw	s7,444(sp)
1c009028:	1b812c23          	sw	s8,440(sp)
1c00902c:	1b912a23          	sw	s9,436(sp)
1c009030:	1ba12823          	sw	s10,432(sp)
1c009034:	1bb12623          	sw	s11,428(sp)
1c009038:	842a                	mv	s0,a0
1c00903a:	8a32                	mv	s4,a2
1c00903c:	0d810993          	addi	s3,sp,216
1c009040:	081c                	addi	a5,sp,16
1c009042:	4681                	li	a3,0
1c009044:	4701                	li	a4,0
1c009046:	c394                	sw	a3,0(a5)
1c009048:	c3d8                	sw	a4,4(a5)
1c00904a:	07a1                	addi	a5,a5,8
1c00904c:	ff379be3          	bne	a5,s3,1c009042 <sha3_512+0x40>
1c009050:	04700793          	li	a5,71
1c009054:	0947f463          	bgeu	a5,s4,1c0090dc <sha3_512+0xda>
1c009058:	04858a93          	addi	s5,a1,72
1c00905c:	8956                	mv	s2,s5
1c00905e:	04700493          	li	s1,71
1c009062:	0818                	addi	a4,sp,16
1c009064:	0015c783          	lbu	a5,1(a1)
1c009068:	0025ce03          	lbu	t3,2(a1)
1c00906c:	0055c803          	lbu	a6,5(a1)
1c009070:	0045cf03          	lbu	t5,4(a1)
1c009074:	0065c503          	lbu	a0,6(a1)
1c009078:	0005ce83          	lbu	t4,0(a1)
1c00907c:	0035c603          	lbu	a2,3(a1)
1c009080:	0075c683          	lbu	a3,7(a1)
1c009084:	07a2                	slli	a5,a5,0x8
1c009086:	0e42                	slli	t3,t3,0x10
1c009088:	0822                	slli	a6,a6,0x8
1c00908a:	00072303          	lw	t1,0(a4)
1c00908e:	00472883          	lw	a7,4(a4)
1c009092:	01c7e7b3          	or	a5,a5,t3
1c009096:	01e86833          	or	a6,a6,t5
1c00909a:	0542                	slli	a0,a0,0x10
1c00909c:	01d7e7b3          	or	a5,a5,t4
1c0090a0:	0662                	slli	a2,a2,0x18
1c0090a2:	01056533          	or	a0,a0,a6
1c0090a6:	06e2                	slli	a3,a3,0x18
1c0090a8:	8fd1                	or	a5,a5,a2
1c0090aa:	8ec9                	or	a3,a3,a0
1c0090ac:	00f347b3          	xor	a5,t1,a5
1c0090b0:	00d8c6b3          	xor	a3,a7,a3
1c0090b4:	c31c                	sw	a5,0(a4)
1c0090b6:	c354                	sw	a3,4(a4)
1c0090b8:	05a1                	addi	a1,a1,8
1c0090ba:	0721                	addi	a4,a4,8
1c0090bc:	fb2594e3          	bne	a1,s2,1c009064 <sha3_512+0x62>
1c0090c0:	080c                	addi	a1,sp,16
1c0090c2:	852e                	mv	a0,a1
1c0090c4:	abaff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c0090c8:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c0090cc:	04890913          	addi	s2,s2,72
1c0090d0:	85d6                	mv	a1,s5
1c0090d2:	0144f563          	bgeu	s1,s4,1c0090dc <sha3_512+0xda>
1c0090d6:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c0090da:	b761                	j	1c009062 <sha3_512+0x60>
1c0090dc:	1218                	addi	a4,sp,288
1c0090de:	87ce                	mv	a5,s3
1c0090e0:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c0090e4:	0791                	addi	a5,a5,4
1c0090e6:	fee79de3          	bne	a5,a4,1c0090e0 <sha3_512+0xde>
1c0090ea:	080a0063          	beqz	s4,1c00916a <sha3_512+0x168>
1c0090ee:	fffa0793          	addi	a5,s4,-1
1c0090f2:	4709                	li	a4,2
1c0090f4:	68f77563          	bgeu	a4,a5,1c00977e <sha3_512+0x77c>
1c0090f8:	ffca7813          	andi	a6,s4,-4
1c0090fc:	87ae                	mv	a5,a1
1c0090fe:	982e                	add	a6,a6,a1
1c009100:	0017c603          	lbu	a2,1(a5)
1c009104:	0007c503          	lbu	a0,0(a5)
1c009108:	0027c683          	lbu	a3,2(a5)
1c00910c:	0037c703          	lbu	a4,3(a5)
1c009110:	0622                	slli	a2,a2,0x8
1c009112:	8e49                	or	a2,a2,a0
1c009114:	06c2                	slli	a3,a3,0x10
1c009116:	8ed1                	or	a3,a3,a2
1c009118:	0762                	slli	a4,a4,0x18
1c00911a:	8f55                	or	a4,a4,a3
1c00911c:	00e9a023          	sw	a4,0(s3)
1c009120:	0791                	addi	a5,a5,4
1c009122:	0991                	addi	s3,s3,4
1c009124:	fd079ee3          	bne	a5,a6,1c009100 <sha3_512+0xfe>
1c009128:	ffca7793          	andi	a5,s4,-4
1c00912c:	03478f63          	beq	a5,s4,1c00916a <sha3_512+0x168>
1c009130:	00f58733          	add	a4,a1,a5
1c009134:	00074603          	lbu	a2,0(a4)
1c009138:	1314                	addi	a3,sp,416
1c00913a:	96be                	add	a3,a3,a5
1c00913c:	00178713          	addi	a4,a5,1
1c009140:	f2c68c23          	sb	a2,-200(a3)
1c009144:	03477363          	bgeu	a4,s4,1c00916a <sha3_512+0x168>
1c009148:	00e586b3          	add	a3,a1,a4
1c00914c:	0006c683          	lbu	a3,0(a3)
1c009150:	1310                	addi	a2,sp,416
1c009152:	9732                	add	a4,a4,a2
1c009154:	0789                	addi	a5,a5,2
1c009156:	f2d70c23          	sb	a3,-200(a4)
1c00915a:	0147f863          	bgeu	a5,s4,1c00916a <sha3_512+0x168>
1c00915e:	95be                	add	a1,a1,a5
1c009160:	0005c703          	lbu	a4,0(a1)
1c009164:	97b2                	add	a5,a5,a2
1c009166:	f2e78c23          	sb	a4,-200(a5)
1c00916a:	131c                	addi	a5,sp,416
1c00916c:	9a3e                	add	s4,s4,a5
1c00916e:	4799                	li	a5,6
1c009170:	f2fa0c23          	sb	a5,-200(s4)
1c009174:	0da14703          	lbu	a4,218(sp)
1c009178:	0d914f83          	lbu	t6,217(sp)
1c00917c:	0e214783          	lbu	a5,226(sp)
1c009180:	0e114e83          	lbu	t4,225(sp)
1c009184:	0e514303          	lbu	t1,229(sp)
1c009188:	0e414383          	lbu	t2,228(sp)
1c00918c:	0e614803          	lbu	a6,230(sp)
1c009190:	0d814283          	lbu	t0,216(sp)
1c009194:	0e014f03          	lbu	t5,224(sp)
1c009198:	0db14503          	lbu	a0,219(sp)
1c00919c:	0e314603          	lbu	a2,227(sp)
1c0091a0:	0e714683          	lbu	a3,231(sp)
1c0091a4:	0fa2                	slli	t6,t6,0x8
1c0091a6:	0ea2                	slli	t4,t4,0x8
1c0091a8:	0742                	slli	a4,a4,0x10
1c0091aa:	07c2                	slli	a5,a5,0x10
1c0091ac:	0322                	slli	t1,t1,0x8
1c0091ae:	00736333          	or	t1,t1,t2
1c0091b2:	01f76733          	or	a4,a4,t6
1c0091b6:	01d7e7b3          	or	a5,a5,t4
1c0091ba:	0842                	slli	a6,a6,0x10
1c0091bc:	0dd14e03          	lbu	t3,221(sp)
1c0091c0:	00576733          	or	a4,a4,t0
1c0091c4:	01e7e7b3          	or	a5,a5,t5
1c0091c8:	00686833          	or	a6,a6,t1
1c0091cc:	0662                	slli	a2,a2,0x18
1c0091ce:	06e2                	slli	a3,a3,0x18
1c0091d0:	0562                	slli	a0,a0,0x18
1c0091d2:	0dc14483          	lbu	s1,220(sp)
1c0091d6:	0de14883          	lbu	a7,222(sp)
1c0091da:	8d59                	or	a0,a0,a4
1c0091dc:	00f66733          	or	a4,a2,a5
1c0091e0:	0106e7b3          	or	a5,a3,a6
1c0091e4:	46c2                	lw	a3,16(sp)
1c0091e6:	0df14583          	lbu	a1,223(sp)
1c0091ea:	0e22                	slli	t3,t3,0x8
1c0091ec:	009e6e33          	or	t3,t3,s1
1c0091f0:	8d35                	xor	a0,a0,a3
1c0091f2:	08c2                	slli	a7,a7,0x10
1c0091f4:	46d2                	lw	a3,20(sp)
1c0091f6:	01c8e8b3          	or	a7,a7,t3
1c0091fa:	05e2                	slli	a1,a1,0x18
1c0091fc:	0115e5b3          	or	a1,a1,a7
1c009200:	8db5                	xor	a1,a1,a3
1c009202:	46e2                	lw	a3,24(sp)
1c009204:	0ea14803          	lbu	a6,234(sp)
1c009208:	0e914483          	lbu	s1,233(sp)
1c00920c:	8eb9                	xor	a3,a3,a4
1c00920e:	4772                	lw	a4,28(sp)
1c009210:	0e814a83          	lbu	s5,232(sp)
1c009214:	0eb14a03          	lbu	s4,235(sp)
1c009218:	8f3d                	xor	a4,a4,a5
1c00921a:	0ec14d03          	lbu	s10,236(sp)
1c00921e:	11f14783          	lbu	a5,287(sp)
1c009222:	0ed14903          	lbu	s2,237(sp)
1c009226:	c82a                	sw	a0,16(sp)
1c009228:	ca2e                	sw	a1,20(sp)
1c00922a:	cc36                	sw	a3,24(sp)
1c00922c:	ce3a                	sw	a4,28(sp)
1c00922e:	0ee14f83          	lbu	t6,238(sp)
1c009232:	0f214283          	lbu	t0,242(sp)
1c009236:	0f114f03          	lbu	t5,241(sp)
1c00923a:	0fd14883          	lbu	a7,253(sp)
1c00923e:	0fc14b83          	lbu	s7,252(sp)
1c009242:	04a2                	slli	s1,s1,0x8
1c009244:	0842                	slli	a6,a6,0x10
1c009246:	02c2                	slli	t0,t0,0x10
1c009248:	08a2                	slli	a7,a7,0x8
1c00924a:	00986833          	or	a6,a6,s1
1c00924e:	0f22                	slli	t5,t5,0x8
1c009250:	01e2ef33          	or	t5,t0,t5
1c009254:	01586833          	or	a6,a6,s5
1c009258:	0178e2b3          	or	t0,a7,s7
1c00925c:	018a1893          	slli	a7,s4,0x18
1c009260:	0108e833          	or	a6,a7,a6
1c009264:	5882                	lw	a7,32(sp)
1c009266:	0ef14503          	lbu	a0,239(sp)
1c00926a:	0922                	slli	s2,s2,0x8
1c00926c:	01a96933          	or	s2,s2,s10
1c009270:	0108c8b3          	xor	a7,a7,a6
1c009274:	0fc2                	slli	t6,t6,0x10
1c009276:	5812                	lw	a6,36(sp)
1c009278:	0f014983          	lbu	s3,240(sp)
1c00927c:	0f314583          	lbu	a1,243(sp)
1c009280:	012fefb3          	or	t6,t6,s2
1c009284:	0562                	slli	a0,a0,0x18
1c009286:	0f514e83          	lbu	t4,245(sp)
1c00928a:	01f56533          	or	a0,a0,t6
1c00928e:	0f414c83          	lbu	s9,244(sp)
1c009292:	0f614c03          	lbu	s8,246(sp)
1c009296:	00a84833          	xor	a6,a6,a0
1c00929a:	5522                	lw	a0,40(sp)
1c00929c:	0f714603          	lbu	a2,247(sp)
1c0092a0:	013f6f33          	or	t5,t5,s3
1c0092a4:	05e2                	slli	a1,a1,0x18
1c0092a6:	0f914e03          	lbu	t3,249(sp)
1c0092aa:	0fa14303          	lbu	t1,250(sp)
1c0092ae:	01e5e5b3          	or	a1,a1,t5
1c0092b2:	0ea2                	slli	t4,t4,0x8
1c0092b4:	019ee4b3          	or	s1,t4,s9
1c0092b8:	8d2d                	xor	a0,a0,a1
1c0092ba:	010c1e93          	slli	t4,s8,0x10
1c0092be:	55b2                	lw	a1,44(sp)
1c0092c0:	0f814383          	lbu	t2,248(sp)
1c0092c4:	0fb14683          	lbu	a3,251(sp)
1c0092c8:	009eeeb3          	or	t4,t4,s1
1c0092cc:	0662                	slli	a2,a2,0x18
1c0092ce:	01d66633          	or	a2,a2,t4
1c0092d2:	0342                	slli	t1,t1,0x10
1c0092d4:	0e22                	slli	t3,t3,0x8
1c0092d6:	0fe14b03          	lbu	s6,254(sp)
1c0092da:	8db1                	xor	a1,a1,a2
1c0092dc:	006e6e33          	or	t3,t3,t1
1c0092e0:	5642                	lw	a2,48(sp)
1c0092e2:	0ff14703          	lbu	a4,255(sp)
1c0092e6:	007e6e33          	or	t3,t3,t2
1c0092ea:	06e2                	slli	a3,a3,0x18
1c0092ec:	01c6e6b3          	or	a3,a3,t3
1c0092f0:	8e35                	xor	a2,a2,a3
1c0092f2:	010b1313          	slli	t1,s6,0x10
1c0092f6:	56d2                	lw	a3,52(sp)
1c0092f8:	00536333          	or	t1,t1,t0
1c0092fc:	0762                	slli	a4,a4,0x18
1c0092fe:	00676733          	or	a4,a4,t1
1c009302:	8f35                	xor	a4,a4,a3
1c009304:	10114e83          	lbu	t4,257(sp)
1c009308:	10214a83          	lbu	s5,258(sp)
1c00930c:	d046                	sw	a7,32(sp)
1c00930e:	d242                	sw	a6,36(sp)
1c009310:	d42a                	sw	a0,40(sp)
1c009312:	d62e                	sw	a1,44(sp)
1c009314:	d832                	sw	a2,48(sp)
1c009316:	da3a                	sw	a4,52(sp)
1c009318:	10014903          	lbu	s2,256(sp)
1c00931c:	10914303          	lbu	t1,265(sp)
1c009320:	10a14983          	lbu	s3,266(sp)
1c009324:	10814383          	lbu	t2,264(sp)
1c009328:	10514f83          	lbu	t6,261(sp)
1c00932c:	10b14603          	lbu	a2,267(sp)
1c009330:	10414b03          	lbu	s6,260(sp)
1c009334:	10614e03          	lbu	t3,262(sp)
1c009338:	09c2                	slli	s3,s3,0x10
1c00933a:	0322                	slli	t1,t1,0x8
1c00933c:	10714583          	lbu	a1,263(sp)
1c009340:	01336333          	or	t1,t1,s3
1c009344:	00736333          	or	t1,t1,t2
1c009348:	10d14f03          	lbu	t5,269(sp)
1c00934c:	0fa2                	slli	t6,t6,0x8
1c00934e:	0662                	slli	a2,a2,0x18
1c009350:	10c14a03          	lbu	s4,268(sp)
1c009354:	016fefb3          	or	t6,t6,s6
1c009358:	11114803          	lbu	a6,273(sp)
1c00935c:	11214483          	lbu	s1,274(sp)
1c009360:	10e14883          	lbu	a7,270(sp)
1c009364:	00666633          	or	a2,a2,t1
1c009368:	0e42                	slli	t3,t3,0x10
1c00936a:	5372                	lw	t1,60(sp)
1c00936c:	01fe6e33          	or	t3,t3,t6
1c009370:	10f14683          	lbu	a3,271(sp)
1c009374:	05e2                	slli	a1,a1,0x18
1c009376:	11014283          	lbu	t0,272(sp)
1c00937a:	11314703          	lbu	a4,275(sp)
1c00937e:	01c5e5b3          	or	a1,a1,t3
1c009382:	0f22                	slli	t5,t5,0x8
1c009384:	014f6f33          	or	t5,t5,s4
1c009388:	00b34333          	xor	t1,t1,a1
1c00938c:	04c2                	slli	s1,s1,0x10
1c00938e:	4596                	lw	a1,68(sp)
1c009390:	0822                	slli	a6,a6,0x8
1c009392:	08c2                	slli	a7,a7,0x10
1c009394:	10314503          	lbu	a0,259(sp)
1c009398:	01e8e8b3          	or	a7,a7,t5
1c00939c:	00986833          	or	a6,a6,s1
1c0093a0:	06e2                	slli	a3,a3,0x18
1c0093a2:	00586833          	or	a6,a6,t0
1c0093a6:	0116e6b3          	or	a3,a3,a7
1c0093aa:	0ac2                	slli	s5,s5,0x10
1c0093ac:	0ea2                	slli	t4,t4,0x8
1c0093ae:	0762                	slli	a4,a4,0x18
1c0093b0:	5e62                	lw	t3,56(sp)
1c0093b2:	8db5                	xor	a1,a1,a3
1c0093b4:	015eeeb3          	or	t4,t4,s5
1c0093b8:	46a6                	lw	a3,72(sp)
1c0093ba:	01076733          	or	a4,a4,a6
1c0093be:	4806                	lw	a6,64(sp)
1c0093c0:	012eeeb3          	or	t4,t4,s2
1c0093c4:	0562                	slli	a0,a0,0x18
1c0093c6:	01d56533          	or	a0,a0,t4
1c0093ca:	00ae4e33          	xor	t3,t3,a0
1c0093ce:	00c84833          	xor	a6,a6,a2
1c0093d2:	8f35                	xor	a4,a4,a3
1c0093d4:	11414f03          	lbu	t5,276(sp)
1c0093d8:	11514883          	lbu	a7,277(sp)
1c0093dc:	11614503          	lbu	a0,278(sp)
1c0093e0:	11714603          	lbu	a2,279(sp)
1c0093e4:	dc72                	sw	t3,56(sp)
1c0093e6:	de1a                	sw	t1,60(sp)
1c0093e8:	c0c2                	sw	a6,64(sp)
1c0093ea:	c2ae                	sw	a1,68(sp)
1c0093ec:	c4ba                	sw	a4,72(sp)
1c0093ee:	11914703          	lbu	a4,281(sp)
1c0093f2:	11a14303          	lbu	t1,282(sp)
1c0093f6:	11814e03          	lbu	t3,280(sp)
1c0093fa:	11b14683          	lbu	a3,283(sp)
1c0093fe:	0342                	slli	t1,t1,0x10
1c009400:	0722                	slli	a4,a4,0x8
1c009402:	00676733          	or	a4,a4,t1
1c009406:	01c76733          	or	a4,a4,t3
1c00940a:	06e2                	slli	a3,a3,0x18
1c00940c:	08a2                	slli	a7,a7,0x8
1c00940e:	01e8e8b3          	or	a7,a7,t5
1c009412:	8f55                	or	a4,a4,a3
1c009414:	0542                	slli	a0,a0,0x10
1c009416:	46b6                	lw	a3,76(sp)
1c009418:	01156533          	or	a0,a0,a7
1c00941c:	0662                	slli	a2,a2,0x18
1c00941e:	11d14803          	lbu	a6,285(sp)
1c009422:	8e49                	or	a2,a2,a0
1c009424:	11c14e83          	lbu	t4,284(sp)
1c009428:	8e35                	xor	a2,a2,a3
1c00942a:	11e14583          	lbu	a1,286(sp)
1c00942e:	46c6                	lw	a3,80(sp)
1c009430:	0822                	slli	a6,a6,0x8
1c009432:	01d86833          	or	a6,a6,t4
1c009436:	8eb9                	xor	a3,a3,a4
1c009438:	0807e793          	ori	a5,a5,128
1c00943c:	4756                	lw	a4,84(sp)
1c00943e:	05c2                	slli	a1,a1,0x10
1c009440:	0105e5b3          	or	a1,a1,a6
1c009444:	07e2                	slli	a5,a5,0x18
1c009446:	8fcd                	or	a5,a5,a1
1c009448:	080c                	addi	a1,sp,16
1c00944a:	8fb9                	xor	a5,a5,a4
1c00944c:	852e                	mv	a0,a1
1c00944e:	c6b2                	sw	a2,76(sp)
1c009450:	c8b6                	sw	a3,80(sp)
1c009452:	cabe                	sw	a5,84(sp)
1c009454:	f2bfe0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c009458:	4552                	lw	a0,20(sp)
1c00945a:	45f2                	lw	a1,28(sp)
1c00945c:	5612                	lw	a2,36(sp)
1c00945e:	56b2                	lw	a3,44(sp)
1c009460:	57d2                	lw	a5,52(sp)
1c009462:	5772                	lw	a4,60(sp)
1c009464:	00855b13          	srli	s6,a0,0x8
1c009468:	01055a93          	srli	s5,a0,0x10
1c00946c:	01855a13          	srli	s4,a0,0x18
1c009470:	0085d993          	srli	s3,a1,0x8
1c009474:	0105d913          	srli	s2,a1,0x10
1c009478:	0185d493          	srli	s1,a1,0x18
1c00947c:	0ca10e23          	sb	a0,220(sp)
1c009480:	0d610ea3          	sb	s6,221(sp)
1c009484:	0d510f23          	sb	s5,222(sp)
1c009488:	0d410fa3          	sb	s4,223(sp)
1c00948c:	00865393          	srli	t2,a2,0x8
1c009490:	01065293          	srli	t0,a2,0x10
1c009494:	01865f93          	srli	t6,a2,0x18
1c009498:	0086df13          	srli	t5,a3,0x8
1c00949c:	0106de93          	srli	t4,a3,0x10
1c0094a0:	0186de13          	srli	t3,a3,0x18
1c0094a4:	0087d313          	srli	t1,a5,0x8
1c0094a8:	0107d893          	srli	a7,a5,0x10
1c0094ac:	0187d813          	srli	a6,a5,0x18
1c0094b0:	0eb10223          	sb	a1,228(sp)
1c0094b4:	0f3102a3          	sb	s3,229(sp)
1c0094b8:	0f210323          	sb	s2,230(sp)
1c0094bc:	0e9103a3          	sb	s1,231(sp)
1c0094c0:	45c2                	lw	a1,16(sp)
1c0094c2:	4536                	lw	a0,76(sp)
1c0094c4:	0ec10623          	sb	a2,236(sp)
1c0094c8:	0e7106a3          	sb	t2,237(sp)
1c0094cc:	467e                	lw	a2,220(sp)
1c0094ce:	0e510723          	sb	t0,238(sp)
1c0094d2:	0ff107a3          	sb	t6,239(sp)
1c0094d6:	0ed10a23          	sb	a3,244(sp)
1c0094da:	0fe10aa3          	sb	t5,245(sp)
1c0094de:	46e2                	lw	a3,24(sp)
1c0094e0:	0fd10b23          	sb	t4,246(sp)
1c0094e4:	0fc10ba3          	sb	t3,247(sp)
1c0094e8:	0e610ea3          	sb	t1,253(sp)
1c0094ec:	0f110f23          	sb	a7,254(sp)
1c0094f0:	0f010fa3          	sb	a6,255(sp)
1c0094f4:	10e10223          	sb	a4,260(sp)
1c0094f8:	4816                	lw	a6,68(sp)
1c0094fa:	0ef10e23          	sb	a5,252(sp)
1c0094fe:	579e                	lw	a5,228(sp)
1c009500:	00875d93          	srli	s11,a4,0x8
1c009504:	01075d13          	srli	s10,a4,0x10
1c009508:	00885c93          	srli	s9,a6,0x8
1c00950c:	01085c13          	srli	s8,a6,0x10
1c009510:	01885b93          	srli	s7,a6,0x18
1c009514:	00855b13          	srli	s6,a0,0x8
1c009518:	01055a93          	srli	s5,a0,0x10
1c00951c:	01855a13          	srli	s4,a0,0x18
1c009520:	0085d993          	srli	s3,a1,0x8
1c009524:	0105d913          	srli	s2,a1,0x10
1c009528:	0185d493          	srli	s1,a1,0x18
1c00952c:	00865393          	srli	t2,a2,0x8
1c009530:	01065293          	srli	t0,a2,0x10
1c009534:	01865f93          	srli	t6,a2,0x18
1c009538:	0086df13          	srli	t5,a3,0x8
1c00953c:	0106de93          	srli	t4,a3,0x10
1c009540:	0186de13          	srli	t3,a3,0x18
1c009544:	0087d313          	srli	t1,a5,0x8
1c009548:	0107d893          	srli	a7,a5,0x10
1c00954c:	00f40623          	sb	a5,12(s0)
1c009550:	8361                	srli	a4,a4,0x18
1c009552:	83e1                	srli	a5,a5,0x18
1c009554:	11b102a3          	sb	s11,261(sp)
1c009558:	11a10323          	sb	s10,262(sp)
1c00955c:	10e103a3          	sb	a4,263(sp)
1c009560:	11010623          	sb	a6,268(sp)
1c009564:	4706                	lw	a4,64(sp)
1c009566:	119106a3          	sb	s9,269(sp)
1c00956a:	11810723          	sb	s8,270(sp)
1c00956e:	117107a3          	sb	s7,271(sp)
1c009572:	10a10a23          	sb	a0,276(sp)
1c009576:	11610aa3          	sb	s6,277(sp)
1c00957a:	11510b23          	sb	s5,278(sp)
1c00957e:	11410ba3          	sb	s4,279(sp)
1c009582:	00b40023          	sb	a1,0(s0)
1c009586:	4a26                	lw	s4,72(sp)
1c009588:	55be                	lw	a1,236(sp)
1c00958a:	013400a3          	sb	s3,1(s0)
1c00958e:	01240123          	sb	s2,2(s0)
1c009592:	009401a3          	sb	s1,3(s0)
1c009596:	00c40223          	sb	a2,4(s0)
1c00959a:	007402a3          	sb	t2,5(s0)
1c00959e:	565e                	lw	a2,244(sp)
1c0095a0:	00540323          	sb	t0,6(s0)
1c0095a4:	01f403a3          	sb	t6,7(s0)
1c0095a8:	01e404a3          	sb	t5,9(s0)
1c0095ac:	01d40523          	sb	t4,10(s0)
1c0095b0:	01c405a3          	sb	t3,11(s0)
1c0095b4:	006406a3          	sb	t1,13(s0)
1c0095b8:	01140723          	sb	a7,14(s0)
1c0095bc:	00f407a3          	sb	a5,15(s0)
1c0095c0:	00d40423          	sb	a3,8(s0)
1c0095c4:	56fe                	lw	a3,252(sp)
1c0095c6:	5502                	lw	a0,32(sp)
1c0095c8:	54a2                	lw	s1,40(sp)
1c0095ca:	0185db13          	srli	s6,a1,0x18
1c0095ce:	00855d93          	srli	s11,a0,0x8
1c0095d2:	01055d13          	srli	s10,a0,0x10
1c0095d6:	01855c93          	srli	s9,a0,0x18
1c0095da:	5522                	lw	a0,40(sp)
1c0095dc:	5842                	lw	a6,48(sp)
1c0095de:	0085dc13          	srli	s8,a1,0x8
1c0095e2:	00855a93          	srli	s5,a0,0x8
1c0095e6:	8141                	srli	a0,a0,0x10
1c0095e8:	c42a                	sw	a0,8(sp)
1c0095ea:	5562                	lw	a0,56(sp)
1c0095ec:	0105db93          	srli	s7,a1,0x10
1c0095f0:	00b40a23          	sb	a1,20(s0)
1c0095f4:	8161                	srli	a0,a0,0x18
1c0095f6:	c22a                	sw	a0,4(sp)
1c0095f8:	5502                	lw	a0,32(sp)
1c0095fa:	45a2                	lw	a1,8(sp)
1c0095fc:	01640ba3          	sb	s6,23(s0)
1c009600:	c62a                	sw	a0,12(sp)
1c009602:	00c14503          	lbu	a0,12(sp)
1c009606:	5b22                	lw	s6,40(sp)
1c009608:	0184d993          	srli	s3,s1,0x18
1c00960c:	00865913          	srli	s2,a2,0x8
1c009610:	01065493          	srli	s1,a2,0x10
1c009614:	01865393          	srli	t2,a2,0x18
1c009618:	00a10623          	sb	a0,12(sp)
1c00961c:	0ff57513          	andi	a0,a0,255
1c009620:	10412783          	lw	a5,260(sp)
1c009624:	00885293          	srli	t0,a6,0x8
1c009628:	01085f93          	srli	t6,a6,0x10
1c00962c:	01885f13          	srli	t5,a6,0x18
1c009630:	0086de93          	srli	t4,a3,0x8
1c009634:	5862                	lw	a6,56(sp)
1c009636:	0106de13          	srli	t3,a3,0x10
1c00963a:	0186d313          	srli	t1,a3,0x18
1c00963e:	00a40823          	sb	a0,16(s0)
1c009642:	01b408a3          	sb	s11,17(s0)
1c009646:	01a40923          	sb	s10,18(s0)
1c00964a:	019409a3          	sb	s9,19(s0)
1c00964e:	01840aa3          	sb	s8,21(s0)
1c009652:	01740b23          	sb	s7,22(s0)
1c009656:	01640c23          	sb	s6,24(s0)
1c00965a:	01540ca3          	sb	s5,25(s0)
1c00965e:	00b40d23          	sb	a1,26(s0)
1c009662:	01340da3          	sb	s3,27(s0)
1c009666:	01240ea3          	sb	s2,29(s0)
1c00966a:	00940f23          	sb	s1,30(s0)
1c00966e:	00740fa3          	sb	t2,31(s0)
1c009672:	00c40e23          	sb	a2,28(s0)
1c009676:	5642                	lw	a2,48(sp)
1c009678:	02d40223          	sb	a3,36(s0)
1c00967c:	56e2                	lw	a3,56(sp)
1c00967e:	02c40023          	sb	a2,32(s0)
1c009682:	10c12603          	lw	a2,268(sp)
1c009686:	02d40423          	sb	a3,40(s0)
1c00968a:	4692                	lw	a3,4(sp)
1c00968c:	00885893          	srli	a7,a6,0x8
1c009690:	025400a3          	sb	t0,33(s0)
1c009694:	02d405a3          	sb	a3,43(s0)
1c009698:	11412683          	lw	a3,276(sp)
1c00969c:	03f40123          	sb	t6,34(s0)
1c0096a0:	03e401a3          	sb	t5,35(s0)
1c0096a4:	03d402a3          	sb	t4,37(s0)
1c0096a8:	03c40323          	sb	t3,38(s0)
1c0096ac:	026403a3          	sb	t1,39(s0)
1c0096b0:	02f40623          	sb	a5,44(s0)
1c0096b4:	0087d993          	srli	s3,a5,0x8
1c0096b8:	0107d913          	srli	s2,a5,0x10
1c0096bc:	01085813          	srli	a6,a6,0x10
1c0096c0:	00875493          	srli	s1,a4,0x8
1c0096c4:	008a5e13          	srli	t3,s4,0x8
1c0096c8:	010a5313          	srli	t1,s4,0x10
1c0096cc:	83e1                	srli	a5,a5,0x18
1c0096ce:	01075393          	srli	t2,a4,0x10
1c0096d2:	01875293          	srli	t0,a4,0x18
1c0096d6:	00865f93          	srli	t6,a2,0x8
1c0096da:	01065f13          	srli	t5,a2,0x10
1c0096de:	01865e93          	srli	t4,a2,0x18
1c0096e2:	031404a3          	sb	a7,41(s0)
1c0096e6:	03040523          	sb	a6,42(s0)
1c0096ea:	033406a3          	sb	s3,45(s0)
1c0096ee:	03240723          	sb	s2,46(s0)
1c0096f2:	029408a3          	sb	s1,49(s0)
1c0096f6:	03440c23          	sb	s4,56(s0)
1c0096fa:	018a5893          	srli	a7,s4,0x18
1c0096fe:	02f407a3          	sb	a5,47(s0)
1c009702:	02e40823          	sb	a4,48(s0)
1c009706:	02740923          	sb	t2,50(s0)
1c00970a:	025409a3          	sb	t0,51(s0)
1c00970e:	02c40a23          	sb	a2,52(s0)
1c009712:	03f40aa3          	sb	t6,53(s0)
1c009716:	03e40b23          	sb	t5,54(s0)
1c00971a:	03d40ba3          	sb	t4,55(s0)
1c00971e:	03c40ca3          	sb	t3,57(s0)
1c009722:	02640d23          	sb	t1,58(s0)
1c009726:	0086d813          	srli	a6,a3,0x8
1c00972a:	0106d513          	srli	a0,a3,0x10
1c00972e:	0186d593          	srli	a1,a3,0x18
1c009732:	03140da3          	sb	a7,59(s0)
1c009736:	02d40e23          	sb	a3,60(s0)
1c00973a:	03040ea3          	sb	a6,61(s0)
1c00973e:	02a40f23          	sb	a0,62(s0)
1c009742:	02b40fa3          	sb	a1,63(s0)
1c009746:	1dc12083          	lw	ra,476(sp)
1c00974a:	1d812403          	lw	s0,472(sp)
1c00974e:	1d412483          	lw	s1,468(sp)
1c009752:	1d012903          	lw	s2,464(sp)
1c009756:	1cc12983          	lw	s3,460(sp)
1c00975a:	1c812a03          	lw	s4,456(sp)
1c00975e:	1c412a83          	lw	s5,452(sp)
1c009762:	1c012b03          	lw	s6,448(sp)
1c009766:	1bc12b83          	lw	s7,444(sp)
1c00976a:	1b812c03          	lw	s8,440(sp)
1c00976e:	1b412c83          	lw	s9,436(sp)
1c009772:	1b012d03          	lw	s10,432(sp)
1c009776:	1ac12d83          	lw	s11,428(sp)
1c00977a:	613d                	addi	sp,sp,480
1c00977c:	8082                	ret
1c00977e:	4781                	li	a5,0
1c009780:	ba45                	j	1c009130 <sha3_512+0x12e>

1c009782 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair>:
1c009782:	7371                	lui	t1,0xffffc
1c009784:	715d                	addi	sp,sp,-80
1c009786:	7b030313          	addi	t1,t1,1968 # ffffc7b0 <__l2_shared_end+0xe3fec7b0>
1c00978a:	ce6e                	sw	s11,28(sp)
1c00978c:	c686                	sw	ra,76(sp)
1c00978e:	c4a2                	sw	s0,72(sp)
1c009790:	c0ca                	sw	s2,64(sp)
1c009792:	d65e                	sw	s7,44(sp)
1c009794:	d462                	sw	s8,40(sp)
1c009796:	d266                	sw	s9,36(sp)
1c009798:	6411                	lui	s0,0x4
1c00979a:	c2a6                	sw	s1,68(sp)
1c00979c:	de4e                	sw	s3,60(sp)
1c00979e:	dc52                	sw	s4,56(sp)
1c0097a0:	da56                	sw	s5,52(sp)
1c0097a2:	d85a                	sw	s6,48(sp)
1c0097a4:	d06a                	sw	s10,32(sp)
1c0097a6:	911a                	add	sp,sp,t1
1c0097a8:	1018                	addi	a4,sp,32
1c0097aa:	7cf1                	lui	s9,0xffffc
1c0097ac:	84040793          	addi	a5,s0,-1984 # 3840 <__CTOR_LIST__-0x1bffc7c4>
1c0097b0:	97ba                	add	a5,a5,a4
1c0097b2:	7c0c8c93          	addi	s9,s9,1984 # ffffc7c0 <__l2_shared_end+0xe3fec7c0>
1c0097b6:	9cbe                	add	s9,s9,a5
1c0097b8:	8baa                	mv	s7,a0
1c0097ba:	87ae                	mv	a5,a1
1c0097bc:	8566                	mv	a0,s9
1c0097be:	02000593          	li	a1,32
1c0097c2:	ce3e                	sw	a5,28(sp)
1c0097c4:	7e0000ef          	jal	ra,1c009fa4 <randombytes>
1c0097c8:	02000613          	li	a2,32
1c0097cc:	85e6                	mv	a1,s9
1c0097ce:	8566                	mv	a0,s9
1c0097d0:	833ff0ef          	jal	ra,1c009002 <sha3_512>
1c0097d4:	1018                	addi	a4,sp,32
1c0097d6:	84040793          	addi	a5,s0,-1984
1c0097da:	7df9                	lui	s11,0xffffe
1c0097dc:	97ba                	add	a5,a5,a4
1c0097de:	1014                	addi	a3,sp,32
1c0097e0:	84040713          	addi	a4,s0,-1984
1c0097e4:	800d8913          	addi	s2,s11,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c0097e8:	9736                	add	a4,a4,a3
1c0097ea:	97ee                	add	a5,a5,s11
1c0097ec:	993a                	add	s2,s2,a4
1c0097ee:	cc3e                	sw	a5,24(sp)
1c0097f0:	ca3e                	sw	a5,20(sp)
1c0097f2:	c802                	sw	zero,16(sp)
1c0097f4:	c666                	sw	s9,12(sp)
1c0097f6:	0a890c13          	addi	s8,s2,168
1c0097fa:	6405                	lui	s0,0x1
1c0097fc:	fff40993          	addi	s3,s0,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c009800:	01014d03          	lbu	s10,16(sp)
1c009804:	4dd2                	lw	s11,20(sp)
1c009806:	4481                	li	s1,0
1c009808:	1f890b13          	addi	s6,s2,504
1c00980c:	d0040413          	addi	s0,s0,-768
1c009810:	a015                	j	1c009834 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0xb2>
1c009812:	00d59023          	sh	a3,0(a1)
1c009816:	34a31863          	bne	t1,a0,1c009b66 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x3e4>
1c00981a:	6785                	lui	a5,0x1
1c00981c:	84078513          	addi	a0,a5,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c009820:	101c                	addi	a5,sp,32
1c009822:	953e                	add	a0,a0,a5
1c009824:	a72ff0ef          	jal	ra,1c008a96 <shake128_ctx_release>
1c009828:	0485                	addi	s1,s1,1
1c00982a:	4791                	li	a5,4
1c00982c:	200d8d93          	addi	s11,s11,512
1c009830:	10f48063          	beq	s1,a5,1c009930 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x1ae>
1c009834:	45b2                	lw	a1,12(sp)
1c009836:	6a05                	lui	s4,0x1
1c009838:	101c                	addi	a5,sp,32
1c00983a:	840a0513          	addi	a0,s4,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c00983e:	953e                	add	a0,a0,a5
1c009840:	86ea                	mv	a3,s10
1c009842:	0ff4f613          	andi	a2,s1,255
1c009846:	245000ef          	jal	ra,1c00a28a <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c00984a:	101c                	addi	a5,sp,32
1c00984c:	840a0613          	addi	a2,s4,-1984
1c009850:	963e                	add	a2,a2,a5
1c009852:	854a                	mv	a0,s2
1c009854:	458d                	li	a1,3
1c009856:	94cff0ef          	jal	ra,1c0089a2 <shake128_squeezeblocks>
1c00985a:	4c81                	li	s9,0
1c00985c:	864a                	mv	a2,s2
1c00985e:	10000513          	li	a0,256
1c009862:	00164883          	lbu	a7,1(a2)
1c009866:	00064703          	lbu	a4,0(a2)
1c00986a:	001c9593          	slli	a1,s9,0x1
1c00986e:	00889693          	slli	a3,a7,0x8
1c009872:	8ed9                	or	a3,a3,a4
1c009874:	0136f6b3          	and	a3,a3,s3
1c009878:	00264703          	lbu	a4,2(a2)
1c00987c:	95ee                	add	a1,a1,s11
1c00987e:	0048de13          	srli	t3,a7,0x4
1c009882:	001c8313          	addi	t1,s9,1
1c009886:	f8d476e3          	bgeu	s0,a3,1c009812 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x90>
1c00988a:	0712                	slli	a4,a4,0x4
1c00988c:	01c76733          	or	a4,a4,t3
1c009890:	00e44863          	blt	s0,a4,1c0098a0 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x11e>
1c009894:	001c9693          	slli	a3,s9,0x1
1c009898:	96ee                	add	a3,a3,s11
1c00989a:	00e69023          	sh	a4,0(a3)
1c00989e:	0c85                	addi	s9,s9,1
1c0098a0:	f6ac8de3          	beq	s9,a0,1c00981a <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x98>
1c0098a4:	060d                	addi	a2,a2,3
1c0098a6:	fb661ee3          	bne	a2,s6,1c009862 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0xe0>
1c0098aa:	10000a93          	li	s5,256
1c0098ae:	0ff00a13          	li	s4,255
1c0098b2:	a809                	j	1c0098c4 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x142>
1c0098b4:	00b51023          	sh	a1,0(a0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c0098b8:	8776                	mv	a4,t4
1c0098ba:	2bceef63          	bltu	t4,t3,1c009b78 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x3f6>
1c0098be:	9cba                	add	s9,s9,a4
1c0098c0:	f59a6de3          	bltu	s4,s9,1c00981a <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x98>
1c0098c4:	6785                	lui	a5,0x1
1c0098c6:	84078613          	addi	a2,a5,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c0098ca:	101c                	addi	a5,sp,32
1c0098cc:	963e                	add	a2,a2,a5
1c0098ce:	4585                	li	a1,1
1c0098d0:	854a                	mv	a0,s2
1c0098d2:	8d0ff0ef          	jal	ra,1c0089a2 <shake128_squeezeblocks>
1c0098d6:	001c9893          	slli	a7,s9,0x1
1c0098da:	98ee                	add	a7,a7,s11
1c0098dc:	419a8e33          	sub	t3,s5,s9
1c0098e0:	864a                	mv	a2,s2
1c0098e2:	4701                	li	a4,0
1c0098e4:	00164303          	lbu	t1,1(a2)
1c0098e8:	00064e83          	lbu	t4,0(a2)
1c0098ec:	00264683          	lbu	a3,2(a2)
1c0098f0:	00831593          	slli	a1,t1,0x8
1c0098f4:	01d5e5b3          	or	a1,a1,t4
1c0098f8:	00171513          	slli	a0,a4,0x1
1c0098fc:	0692                	slli	a3,a3,0x4
1c0098fe:	00435313          	srli	t1,t1,0x4
1c009902:	0135f5b3          	and	a1,a1,s3
1c009906:	9546                	add	a0,a0,a7
1c009908:	00170e93          	addi	t4,a4,1
1c00990c:	0066e6b3          	or	a3,a3,t1
1c009910:	fab472e3          	bgeu	s0,a1,1c0098b4 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x132>
1c009914:	00d44863          	blt	s0,a3,1c009924 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x1a2>
1c009918:	00171593          	slli	a1,a4,0x1
1c00991c:	95c6                	add	a1,a1,a7
1c00991e:	00d59023          	sh	a3,0(a1)
1c009922:	0705                	addi	a4,a4,1
1c009924:	f9c77de3          	bgeu	a4,t3,1c0098be <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x13c>
1c009928:	060d                	addi	a2,a2,3
1c00992a:	facc1de3          	bne	s8,a2,1c0098e4 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x162>
1c00992e:	bf41                	j	1c0098be <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x13c>
1c009930:	47c2                	lw	a5,16(sp)
1c009932:	4752                	lw	a4,20(sp)
1c009934:	6985                	lui	s3,0x1
1c009936:	80098993          	addi	s3,s3,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00993a:	0785                	addi	a5,a5,1
1c00993c:	974e                	add	a4,a4,s3
1c00993e:	c83e                	sw	a5,16(sp)
1c009940:	ca3a                	sw	a4,20(sp)
1c009942:	ea979ce3          	bne	a5,s1,1c0097fa <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x78>
1c009946:	6791                	lui	a5,0x4
1c009948:	1014                	addi	a3,sp,32
1c00994a:	84078713          	addi	a4,a5,-1984 # 3840 <__CTOR_LIST__-0x1bffc7c4>
1c00994e:	9736                	add	a4,a4,a3
1c009950:	8a3e                	mv	s4,a5
1c009952:	7471                	lui	s0,0xffffc
1c009954:	74f9                	lui	s1,0xffffe
1c009956:	84078793          	addi	a5,a5,-1984
1c00995a:	97b6                	add	a5,a5,a3
1c00995c:	943a                	add	s0,s0,a4
1c00995e:	80048493          	addi	s1,s1,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c009962:	94be                	add	s1,s1,a5
1c009964:	7e040413          	addi	s0,s0,2016 # ffffc7e0 <__l2_shared_end+0xe3fec7e0>
1c009968:	85a2                	mv	a1,s0
1c00996a:	4601                	li	a2,0
1c00996c:	8526                	mv	a0,s1
1c00996e:	2e01                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c009970:	85a2                	mv	a1,s0
1c009972:	4605                	li	a2,1
1c009974:	20048513          	addi	a0,s1,512
1c009978:	2619                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00997a:	85a2                	mv	a1,s0
1c00997c:	4609                	li	a2,2
1c00997e:	40048513          	addi	a0,s1,1024
1c009982:	2cf5                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c009984:	85a2                	mv	a1,s0
1c009986:	460d                	li	a2,3
1c009988:	60048513          	addi	a0,s1,1536
1c00998c:	2ccd                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00998e:	77f5                	lui	a5,0xffffd
1c009990:	1018                	addi	a4,sp,32
1c009992:	80078913          	addi	s2,a5,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c009996:	840a0793          	addi	a5,s4,-1984
1c00999a:	97ba                	add	a5,a5,a4
1c00999c:	993e                	add	s2,s2,a5
1c00999e:	85a2                	mv	a1,s0
1c0099a0:	854a                	mv	a0,s2
1c0099a2:	4611                	li	a2,4
1c0099a4:	2ce9                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0099a6:	85a2                	mv	a1,s0
1c0099a8:	20090513          	addi	a0,s2,512
1c0099ac:	4615                	li	a2,5
1c0099ae:	2cc1                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0099b0:	85a2                	mv	a1,s0
1c0099b2:	40090513          	addi	a0,s2,1024
1c0099b6:	4619                	li	a2,6
1c0099b8:	24d9                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0099ba:	85a2                	mv	a1,s0
1c0099bc:	461d                	li	a2,7
1c0099be:	60090513          	addi	a0,s2,1536
1c0099c2:	2c75                	jal	1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0099c4:	8526                	mv	a0,s1
1c0099c6:	219d                	jal	1c009e2c <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c0099c8:	6785                	lui	a5,0x1
1c0099ca:	84078413          	addi	s0,a5,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c0099ce:	101c                	addi	a5,sp,32
1c0099d0:	854a                	mv	a0,s2
1c0099d2:	943e                	add	s0,s0,a5
1c0099d4:	01340933          	add	s2,s0,s3
1c0099d8:	2991                	jal	1c009e2c <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c0099da:	4a62                	lw	s4,24(sp)
1c0099dc:	8522                	mv	a0,s0
1c0099de:	8626                	mv	a2,s1
1c0099e0:	85d2                	mv	a1,s4
1c0099e2:	2319                	jal	1c009ee8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c0099e4:	8522                	mv	a0,s0
1c0099e6:	2e49                	jal	1c009d78 <PQCLEAN_KYBER1024_CLEAN_poly_tomont>
1c0099e8:	013a07b3          	add	a5,s4,s3
1c0099ec:	20040413          	addi	s0,s0,512
1c0099f0:	cc3e                	sw	a5,24(sp)
1c0099f2:	fe8914e3          	bne	s2,s0,1c0099da <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x258>
1c0099f6:	6405                	lui	s0,0x1
1c0099f8:	6911                	lui	s2,0x4
1c0099fa:	1018                	addi	a4,sp,32
1c0099fc:	84090793          	addi	a5,s2,-1984 # 3840 <__CTOR_LIST__-0x1bffc7c4>
1c009a00:	84040593          	addi	a1,s0,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c009a04:	7675                	lui	a2,0xffffd
1c009a06:	97ba                	add	a5,a5,a4
1c009a08:	95ba                	add	a1,a1,a4
1c009a0a:	80060613          	addi	a2,a2,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c009a0e:	963e                	add	a2,a2,a5
1c009a10:	852e                	mv	a0,a1
1c009a12:	2ba1                	jal	1c009f6a <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c009a14:	101c                	addi	a5,sp,32
1c009a16:	84040513          	addi	a0,s0,-1984
1c009a1a:	953e                	add	a0,a0,a5
1c009a1c:	2335                	jal	1c009f48 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c009a1e:	4572                	lw	a0,28(sp)
1c009a20:	85a6                	mv	a1,s1
1c009a22:	2ee9                	jal	1c009dfc <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes>
1c009a24:	101c                	addi	a5,sp,32
1c009a26:	84040593          	addi	a1,s0,-1984
1c009a2a:	95be                	add	a1,a1,a5
1c009a2c:	855e                	mv	a0,s7
1c009a2e:	26f9                	jal	1c009dfc <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes>
1c009a30:	1014                	addi	a3,sp,32
1c009a32:	84090713          	addi	a4,s2,-1984
1c009a36:	9736                	add	a4,a4,a3
1c009a38:	77f1                	lui	a5,0xffffc
1c009a3a:	97ba                	add	a5,a5,a4
1c009a3c:	c63e                	sw	a5,12(sp)
1c009a3e:	4732                	lw	a4,12(sp)
1c009a40:	7c47a803          	lw	a6,1988(a5) # ffffc7c4 <__l2_shared_end+0xe3fec7c4>
1c009a44:	7c87a503          	lw	a0,1992(a5)
1c009a48:	7cc7a583          	lw	a1,1996(a5)
1c009a4c:	7d07a603          	lw	a2,2000(a5)
1c009a50:	7d47a683          	lw	a3,2004(a5)
1c009a54:	7c07a883          	lw	a7,1984(a5)
1c009a58:	7d872703          	lw	a4,2008(a4)
1c009a5c:	7dc7a783          	lw	a5,2012(a5)
1c009a60:	0105d413          	srli	s0,a1,0x10
1c009a64:	0088dd93          	srli	s11,a7,0x8
1c009a68:	0108dd13          	srli	s10,a7,0x10
1c009a6c:	0188dc93          	srli	s9,a7,0x18
1c009a70:	00885c13          	srli	s8,a6,0x8
1c009a74:	01085b13          	srli	s6,a6,0x10
1c009a78:	01885a93          	srli	s5,a6,0x18
1c009a7c:	00855a13          	srli	s4,a0,0x8
1c009a80:	01055993          	srli	s3,a0,0x10
1c009a84:	01855913          	srli	s2,a0,0x18
1c009a88:	0085d493          	srli	s1,a1,0x8
1c009a8c:	0185d393          	srli	t2,a1,0x18
1c009a90:	00865293          	srli	t0,a2,0x8
1c009a94:	01065f93          	srli	t6,a2,0x10
1c009a98:	01865f13          	srli	t5,a2,0x18
1c009a9c:	0086de93          	srli	t4,a3,0x8
1c009aa0:	0186d313          	srli	t1,a3,0x18
1c009aa4:	611b8023          	sb	a7,1536(s7) # ff0600 <__CTOR_LIST__-0x1b00fa04>
1c009aa8:	61bb80a3          	sb	s11,1537(s7)
1c009aac:	61ab8123          	sb	s10,1538(s7)
1c009ab0:	619b81a3          	sb	s9,1539(s7)
1c009ab4:	610b8223          	sb	a6,1540(s7)
1c009ab8:	618b82a3          	sb	s8,1541(s7)
1c009abc:	616b8323          	sb	s6,1542(s7)
1c009ac0:	615b83a3          	sb	s5,1543(s7)
1c009ac4:	60ab8423          	sb	a0,1544(s7)
1c009ac8:	614b84a3          	sb	s4,1545(s7)
1c009acc:	613b8523          	sb	s3,1546(s7)
1c009ad0:	612b85a3          	sb	s2,1547(s7)
1c009ad4:	60bb8623          	sb	a1,1548(s7)
1c009ad8:	609b86a3          	sb	s1,1549(s7)
1c009adc:	608b8723          	sb	s0,1550(s7)
1c009ae0:	60cb8823          	sb	a2,1552(s7)
1c009ae4:	60db8a23          	sb	a3,1556(s7)
1c009ae8:	0106de13          	srli	t3,a3,0x10
1c009aec:	607b87a3          	sb	t2,1551(s7)
1c009af0:	605b88a3          	sb	t0,1553(s7)
1c009af4:	61fb8923          	sb	t6,1554(s7)
1c009af8:	61eb89a3          	sb	t5,1555(s7)
1c009afc:	61db8aa3          	sb	t4,1557(s7)
1c009b00:	61cb8b23          	sb	t3,1558(s7)
1c009b04:	00875893          	srli	a7,a4,0x8
1c009b08:	606b8ba3          	sb	t1,1559(s7)
1c009b0c:	01075813          	srli	a6,a4,0x10
1c009b10:	01875513          	srli	a0,a4,0x18
1c009b14:	0087d593          	srli	a1,a5,0x8
1c009b18:	0107d613          	srli	a2,a5,0x10
1c009b1c:	0187d693          	srli	a3,a5,0x18
1c009b20:	6311                	lui	t1,0x4
1c009b22:	60eb8c23          	sb	a4,1560(s7)
1c009b26:	611b8ca3          	sb	a7,1561(s7)
1c009b2a:	610b8d23          	sb	a6,1562(s7)
1c009b2e:	60ab8da3          	sb	a0,1563(s7)
1c009b32:	60fb8e23          	sb	a5,1564(s7)
1c009b36:	60bb8ea3          	sb	a1,1565(s7)
1c009b3a:	60cb8f23          	sb	a2,1566(s7)
1c009b3e:	60db8fa3          	sb	a3,1567(s7)
1c009b42:	85030313          	addi	t1,t1,-1968 # 3850 <__CTOR_LIST__-0x1bffc7b4>
1c009b46:	911a                	add	sp,sp,t1
1c009b48:	40b6                	lw	ra,76(sp)
1c009b4a:	4426                	lw	s0,72(sp)
1c009b4c:	4496                	lw	s1,68(sp)
1c009b4e:	4906                	lw	s2,64(sp)
1c009b50:	59f2                	lw	s3,60(sp)
1c009b52:	5a62                	lw	s4,56(sp)
1c009b54:	5ad2                	lw	s5,52(sp)
1c009b56:	5b42                	lw	s6,48(sp)
1c009b58:	5bb2                	lw	s7,44(sp)
1c009b5a:	5c22                	lw	s8,40(sp)
1c009b5c:	5c92                	lw	s9,36(sp)
1c009b5e:	5d02                	lw	s10,32(sp)
1c009b60:	4df2                	lw	s11,28(sp)
1c009b62:	6161                	addi	sp,sp,80
1c009b64:	8082                	ret
1c009b66:	0048d893          	srli	a7,a7,0x4
1c009b6a:	0712                	slli	a4,a4,0x4
1c009b6c:	01176733          	or	a4,a4,a7
1c009b70:	8c9a                	mv	s9,t1
1c009b72:	d2e451e3          	bge	s0,a4,1c009894 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x112>
1c009b76:	b33d                	j	1c0098a4 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x122>
1c009b78:	dad450e3          	bge	s0,a3,1c009918 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x196>
1c009b7c:	b375                	j	1c009928 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x1a6>

1c009b7e <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair>:
1c009b7e:	1141                	addi	sp,sp,-16
1c009b80:	c422                	sw	s0,8(sp)
1c009b82:	c226                	sw	s1,4(sp)
1c009b84:	842a                	mv	s0,a0
1c009b86:	84ae                	mv	s1,a1
1c009b88:	c606                	sw	ra,12(sp)
1c009b8a:	c04a                	sw	s2,0(sp)
1c009b8c:	3edd                	jal	1c009782 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair>
1c009b8e:	60048713          	addi	a4,s1,1536
1c009b92:	00440793          	addi	a5,s0,4
1c009b96:	00f77663          	bgeu	a4,a5,1c009ba2 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x24>
1c009b9a:	60448793          	addi	a5,s1,1540
1c009b9e:	06f46c63          	bltu	s0,a5,1c009c16 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x98>
1c009ba2:	86a2                	mv	a3,s0
1c009ba4:	62040313          	addi	t1,s0,1568
1c009ba8:	0016c803          	lbu	a6,1(a3)
1c009bac:	0006c883          	lbu	a7,0(a3)
1c009bb0:	0026c603          	lbu	a2,2(a3)
1c009bb4:	0036c783          	lbu	a5,3(a3)
1c009bb8:	0822                	slli	a6,a6,0x8
1c009bba:	01186833          	or	a6,a6,a7
1c009bbe:	0642                	slli	a2,a2,0x10
1c009bc0:	01066633          	or	a2,a2,a6
1c009bc4:	07e2                	slli	a5,a5,0x18
1c009bc6:	8fd1                	or	a5,a5,a2
1c009bc8:	0087d893          	srli	a7,a5,0x8
1c009bcc:	0107d813          	srli	a6,a5,0x10
1c009bd0:	83e1                	srli	a5,a5,0x18
1c009bd2:	00c70023          	sb	a2,0(a4)
1c009bd6:	011700a3          	sb	a7,1(a4)
1c009bda:	01070123          	sb	a6,2(a4)
1c009bde:	00f701a3          	sb	a5,3(a4)
1c009be2:	0691                	addi	a3,a3,4
1c009be4:	0711                	addi	a4,a4,4
1c009be6:	fc6691e3          	bne	a3,t1,1c009ba8 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x2a>
1c009bea:	6905                	lui	s2,0x1
1c009bec:	c2090513          	addi	a0,s2,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c009bf0:	85a2                	mv	a1,s0
1c009bf2:	9526                	add	a0,a0,s1
1c009bf4:	62000613          	li	a2,1568
1c009bf8:	92aff0ef          	jal	ra,1c008d22 <sha3_256>
1c009bfc:	c4090513          	addi	a0,s2,-960
1c009c00:	9526                	add	a0,a0,s1
1c009c02:	02000593          	li	a1,32
1c009c06:	2e79                	jal	1c009fa4 <randombytes>
1c009c08:	40b2                	lw	ra,12(sp)
1c009c0a:	4422                	lw	s0,8(sp)
1c009c0c:	4492                	lw	s1,4(sp)
1c009c0e:	4902                	lw	s2,0(sp)
1c009c10:	4501                	li	a0,0
1c009c12:	0141                	addi	sp,sp,16
1c009c14:	8082                	ret
1c009c16:	87a2                	mv	a5,s0
1c009c18:	62040613          	addi	a2,s0,1568
1c009c1c:	0007c683          	lbu	a3,0(a5)
1c009c20:	0785                	addi	a5,a5,1
1c009c22:	0705                	addi	a4,a4,1
1c009c24:	fed70fa3          	sb	a3,-1(a4)
1c009c28:	fec79ae3          	bne	a5,a2,1c009c1c <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x9e>
1c009c2c:	bf7d                	j	1c009bea <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x6c>

1c009c2e <PQCLEAN_KYBER1024_CLEAN_poly_tobytes>:
1c009c2e:	6805                	lui	a6,0x1
1c009c30:	18050893          	addi	a7,a0,384
1c009c34:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009c38:	00059703          	lh	a4,0(a1)
1c009c3c:	00259783          	lh	a5,2(a1)
1c009c40:	050d                	addi	a0,a0,3
1c009c42:	40f75613          	srai	a2,a4,0xf
1c009c46:	40f7d693          	srai	a3,a5,0xf
1c009c4a:	01067633          	and	a2,a2,a6
1c009c4e:	0106f6b3          	and	a3,a3,a6
1c009c52:	9732                	add	a4,a4,a2
1c009c54:	97b6                	add	a5,a5,a3
1c009c56:	0742                	slli	a4,a4,0x10
1c009c58:	07c2                	slli	a5,a5,0x10
1c009c5a:	8341                	srli	a4,a4,0x10
1c009c5c:	83c1                	srli	a5,a5,0x10
1c009c5e:	00479613          	slli	a2,a5,0x4
1c009c62:	00875693          	srli	a3,a4,0x8
1c009c66:	8ed1                	or	a3,a3,a2
1c009c68:	8391                	srli	a5,a5,0x4
1c009c6a:	fee50ea3          	sb	a4,-3(a0)
1c009c6e:	fed50f23          	sb	a3,-2(a0)
1c009c72:	fef50fa3          	sb	a5,-1(a0)
1c009c76:	0591                	addi	a1,a1,4
1c009c78:	fca890e3          	bne	a7,a0,1c009c38 <PQCLEAN_KYBER1024_CLEAN_poly_tobytes+0xa>
1c009c7c:	8082                	ret

1c009c7e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c009c7e:	7175                	addi	sp,sp,-144
1c009c80:	c522                	sw	s0,136(sp)
1c009c82:	86b2                	mv	a3,a2
1c009c84:	842a                	mv	s0,a0
1c009c86:	862e                	mv	a2,a1
1c009c88:	850a                	mv	a0,sp
1c009c8a:	08000593          	li	a1,128
1c009c8e:	c706                	sw	ra,140(sp)
1c009c90:	2d0d                	jal	1c00a2c2 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c009c92:	858a                	mv	a1,sp
1c009c94:	8522                	mv	a0,s0
1c009c96:	843fe0ef          	jal	ra,1c0084d8 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c009c9a:	40ba                	lw	ra,140(sp)
1c009c9c:	442a                	lw	s0,136(sp)
1c009c9e:	6149                	addi	sp,sp,144
1c009ca0:	8082                	ret

1c009ca2 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c009ca2:	9f010113          	addi	sp,sp,-1552
1c009ca6:	6341                	lui	t1,0x10
1c009ca8:	60812423          	sw	s0,1544(sp)
1c009cac:	60112623          	sw	ra,1548(sp)
1c009cb0:	842a                	mv	s0,a0
1c009cb2:	4e01                	li	t3,0
1c009cb4:	137d                	addi	t1,t1,-1
1c009cb6:	10000f93          	li	t6,256
1c009cba:	00061503          	lh	a0,0(a2)
1c009cbe:	00461383          	lh	t2,4(a2)
1c009cc2:	00059803          	lh	a6,0(a1)
1c009cc6:	00459283          	lh	t0,4(a1)
1c009cca:	00259683          	lh	a3,2(a1)
1c009cce:	00659f03          	lh	t5,6(a1)
1c009cd2:	00261703          	lh	a4,2(a2)
1c009cd6:	00661e83          	lh	t4,6(a2)
1c009cda:	401e5793          	srai	a5,t3,0x1
1c009cde:	00279893          	slli	a7,a5,0x2
1c009ce2:	60010093          	addi	ra,sp,1536
1c009ce6:	0542                	slli	a0,a0,0x10
1c009ce8:	0063f3b3          	and	t2,t2,t1
1c009cec:	0842                	slli	a6,a6,0x10
1c009cee:	0062f2b3          	and	t0,t0,t1
1c009cf2:	0785                	addi	a5,a5,1
1c009cf4:	9886                	add	a7,a7,ra
1c009cf6:	06c2                	slli	a3,a3,0x10
1c009cf8:	006f7f33          	and	t5,t5,t1
1c009cfc:	00756533          	or	a0,a0,t2
1c009d00:	0742                	slli	a4,a4,0x10
1c009d02:	006efeb3          	and	t4,t4,t1
1c009d06:	00586833          	or	a6,a6,t0
1c009d0a:	078a                	slli	a5,a5,0x2
1c009d0c:	9786                	add	a5,a5,ra
1c009d0e:	01e6e6b3          	or	a3,a3,t5
1c009d12:	01d76733          	or	a4,a4,t4
1c009d16:	a108a023          	sw	a6,-1536(a7) # fefa00 <__CTOR_LIST__-0x1b010604>
1c009d1a:	c0a8a023          	sw	a0,-1024(a7)
1c009d1e:	a0d7a023          	sw	a3,-1536(a5)
1c009d22:	c0e7a023          	sw	a4,-1024(a5)
1c009d26:	0e11                	addi	t3,t3,4
1c009d28:	05a1                	addi	a1,a1,8
1c009d2a:	0621                	addi	a2,a2,8
1c009d2c:	f9fe17e3          	bne	t3,t6,1c009cba <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x18>
1c009d30:	0410                	addi	a2,sp,512
1c009d32:	858a                	mv	a1,sp
1c009d34:	40010513          	addi	a0,sp,1024
1c009d38:	f18fe0ef          	jal	ra,1c008450 <KYBER_poly_pwm>
1c009d3c:	40010793          	addi	a5,sp,1024
1c009d40:	8522                	mv	a0,s0
1c009d42:	60010813          	addi	a6,sp,1536
1c009d46:	4394                	lw	a3,0(a5)
1c009d48:	43d8                	lw	a4,4(a5)
1c009d4a:	07a1                	addi	a5,a5,8
1c009d4c:	0106d593          	srli	a1,a3,0x10
1c009d50:	01075613          	srli	a2,a4,0x10
1c009d54:	00b51023          	sh	a1,0(a0)
1c009d58:	00c51123          	sh	a2,2(a0)
1c009d5c:	00d51223          	sh	a3,4(a0)
1c009d60:	00e51323          	sh	a4,6(a0)
1c009d64:	0521                	addi	a0,a0,8
1c009d66:	fef810e3          	bne	a6,a5,1c009d46 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0xa4>
1c009d6a:	60c12083          	lw	ra,1548(sp)
1c009d6e:	60812403          	lw	s0,1544(sp)
1c009d72:	61010113          	addi	sp,sp,1552
1c009d76:	8082                	ret

1c009d78 <PQCLEAN_KYBER1024_CLEAN_poly_tomont>:
1c009d78:	1141                	addi	sp,sp,-16
1c009d7a:	c422                	sw	s0,8(sp)
1c009d7c:	c226                	sw	s1,4(sp)
1c009d7e:	c04a                	sw	s2,0(sp)
1c009d80:	c606                	sw	ra,12(sp)
1c009d82:	842a                	mv	s0,a0
1c009d84:	20050913          	addi	s2,a0,512
1c009d88:	54900493          	li	s1,1353
1c009d8c:	00041503          	lh	a0,0(s0)
1c009d90:	0409                	addi	s0,s0,2
1c009d92:	02950533          	mul	a0,a0,s1
1c009d96:	2955                	jal	1c00a24a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c009d98:	fea41f23          	sh	a0,-2(s0)
1c009d9c:	ff2418e3          	bne	s0,s2,1c009d8c <PQCLEAN_KYBER1024_CLEAN_poly_tomont+0x14>
1c009da0:	40b2                	lw	ra,12(sp)
1c009da2:	4422                	lw	s0,8(sp)
1c009da4:	4492                	lw	s1,4(sp)
1c009da6:	4902                	lw	s2,0(sp)
1c009da8:	0141                	addi	sp,sp,16
1c009daa:	8082                	ret

1c009dac <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c009dac:	1141                	addi	sp,sp,-16
1c009dae:	c422                	sw	s0,8(sp)
1c009db0:	c226                	sw	s1,4(sp)
1c009db2:	c606                	sw	ra,12(sp)
1c009db4:	842a                	mv	s0,a0
1c009db6:	20050493          	addi	s1,a0,512
1c009dba:	00041503          	lh	a0,0(s0)
1c009dbe:	0409                	addi	s0,s0,2
1c009dc0:	215d                	jal	1c00a266 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c009dc2:	fea41f23          	sh	a0,-2(s0)
1c009dc6:	fe941ae3          	bne	s0,s1,1c009dba <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c009dca:	40b2                	lw	ra,12(sp)
1c009dcc:	4422                	lw	s0,8(sp)
1c009dce:	4492                	lw	s1,4(sp)
1c009dd0:	0141                	addi	sp,sp,16
1c009dd2:	8082                	ret

1c009dd4 <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c009dd4:	4781                	li	a5,0
1c009dd6:	20000893          	li	a7,512
1c009dda:	00f606b3          	add	a3,a2,a5
1c009dde:	00f58733          	add	a4,a1,a5
1c009de2:	0006d803          	lhu	a6,0(a3)
1c009de6:	00075703          	lhu	a4,0(a4)
1c009dea:	00f506b3          	add	a3,a0,a5
1c009dee:	0789                	addi	a5,a5,2
1c009df0:	9742                	add	a4,a4,a6
1c009df2:	00e69023          	sh	a4,0(a3)
1c009df6:	ff1792e3          	bne	a5,a7,1c009dda <PQCLEAN_KYBER1024_CLEAN_poly_add+0x6>
1c009dfa:	8082                	ret

1c009dfc <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes>:
1c009dfc:	1141                	addi	sp,sp,-16
1c009dfe:	c422                	sw	s0,8(sp)
1c009e00:	c226                	sw	s1,4(sp)
1c009e02:	c04a                	sw	s2,0(sp)
1c009e04:	c606                	sw	ra,12(sp)
1c009e06:	842a                	mv	s0,a0
1c009e08:	84ae                	mv	s1,a1
1c009e0a:	60050913          	addi	s2,a0,1536
1c009e0e:	85a6                	mv	a1,s1
1c009e10:	8522                	mv	a0,s0
1c009e12:	18040413          	addi	s0,s0,384
1c009e16:	3d21                	jal	1c009c2e <PQCLEAN_KYBER1024_CLEAN_poly_tobytes>
1c009e18:	20048493          	addi	s1,s1,512
1c009e1c:	ff2419e3          	bne	s0,s2,1c009e0e <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes+0x12>
1c009e20:	40b2                	lw	ra,12(sp)
1c009e22:	4422                	lw	s0,8(sp)
1c009e24:	4492                	lw	s1,4(sp)
1c009e26:	4902                	lw	s2,0(sp)
1c009e28:	0141                	addi	sp,sp,16
1c009e2a:	8082                	ret

1c009e2c <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c009e2c:	9e010113          	addi	sp,sp,-1568
1c009e30:	60812c23          	sw	s0,1560(sp)
1c009e34:	6405                	lui	s0,0x1
1c009e36:	60912a23          	sw	s1,1556(sp)
1c009e3a:	80040413          	addi	s0,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c009e3e:	64c1                	lui	s1,0x10
1c009e40:	61212823          	sw	s2,1552(sp)
1c009e44:	61312623          	sw	s3,1548(sp)
1c009e48:	61412423          	sw	s4,1544(sp)
1c009e4c:	60112e23          	sw	ra,1564(sp)
1c009e50:	8a2a                	mv	s4,a0
1c009e52:	942a                	add	s0,s0,a0
1c009e54:	40010993          	addi	s3,sp,1024
1c009e58:	14fd                	addi	s1,s1,-1
1c009e5a:	10000913          	li	s2,256
1c009e5e:	20000613          	li	a2,512
1c009e62:	85d2                	mv	a1,s4
1c009e64:	854e                	mv	a0,s3
1c009e66:	2975                	jal	1c00a322 <memcpy>
1c009e68:	864e                	mv	a2,s3
1c009e6a:	4681                	li	a3,0
1c009e6c:	00061703          	lh	a4,0(a2)
1c009e70:	00261583          	lh	a1,2(a2)
1c009e74:	4016d793          	srai	a5,a3,0x1
1c009e78:	078a                	slli	a5,a5,0x2
1c009e7a:	0742                	slli	a4,a4,0x10
1c009e7c:	8de5                	and	a1,a1,s1
1c009e7e:	60010513          	addi	a0,sp,1536
1c009e82:	97aa                	add	a5,a5,a0
1c009e84:	8f4d                	or	a4,a4,a1
1c009e86:	a0e7a023          	sw	a4,-1536(a5)
1c009e8a:	0689                	addi	a3,a3,2
1c009e8c:	0611                	addi	a2,a2,4
1c009e8e:	fd269fe3          	bne	a3,s2,1c009e6c <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x40>
1c009e92:	040c                	addi	a1,sp,512
1c009e94:	850a                	mv	a0,sp
1c009e96:	d50fe0ef          	jal	ra,1c0083e6 <KYBER_poly_ntt>
1c009e9a:	0418                	addi	a4,sp,512
1c009e9c:	87d2                	mv	a5,s4
1c009e9e:	4310                	lw	a2,0(a4)
1c009ea0:	4354                	lw	a3,4(a4)
1c009ea2:	0721                	addi	a4,a4,8
1c009ea4:	01065813          	srli	a6,a2,0x10
1c009ea8:	0106d593          	srli	a1,a3,0x10
1c009eac:	01079023          	sh	a6,0(a5)
1c009eb0:	00b79123          	sh	a1,2(a5)
1c009eb4:	00c79223          	sh	a2,4(a5)
1c009eb8:	00d79323          	sh	a3,6(a5)
1c009ebc:	07a1                	addi	a5,a5,8
1c009ebe:	fee990e3          	bne	s3,a4,1c009e9e <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x72>
1c009ec2:	200a0a13          	addi	s4,s4,512
1c009ec6:	f9441ce3          	bne	s0,s4,1c009e5e <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x32>
1c009eca:	61c12083          	lw	ra,1564(sp)
1c009ece:	61812403          	lw	s0,1560(sp)
1c009ed2:	61412483          	lw	s1,1556(sp)
1c009ed6:	61012903          	lw	s2,1552(sp)
1c009eda:	60c12983          	lw	s3,1548(sp)
1c009ede:	60812a03          	lw	s4,1544(sp)
1c009ee2:	62010113          	addi	sp,sp,1568
1c009ee6:	8082                	ret

1c009ee8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c009ee8:	de010113          	addi	sp,sp,-544
1c009eec:	20812c23          	sw	s0,536(sp)
1c009ef0:	20912a23          	sw	s1,532(sp)
1c009ef4:	21212823          	sw	s2,528(sp)
1c009ef8:	21312623          	sw	s3,524(sp)
1c009efc:	20112e23          	sw	ra,540(sp)
1c009f00:	84aa                	mv	s1,a0
1c009f02:	89ae                	mv	s3,a1
1c009f04:	8932                	mv	s2,a2
1c009f06:	20000413          	li	s0,512
1c009f0a:	3b61                	jal	1c009ca2 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c009f0c:	00890633          	add	a2,s2,s0
1c009f10:	008985b3          	add	a1,s3,s0
1c009f14:	850a                	mv	a0,sp
1c009f16:	3371                	jal	1c009ca2 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c009f18:	860a                	mv	a2,sp
1c009f1a:	85a6                	mv	a1,s1
1c009f1c:	8526                	mv	a0,s1
1c009f1e:	20040413          	addi	s0,s0,512
1c009f22:	3d4d                	jal	1c009dd4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c009f24:	80040793          	addi	a5,s0,-2048
1c009f28:	f3f5                	bnez	a5,1c009f0c <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x24>
1c009f2a:	8526                	mv	a0,s1
1c009f2c:	3541                	jal	1c009dac <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009f2e:	21c12083          	lw	ra,540(sp)
1c009f32:	21812403          	lw	s0,536(sp)
1c009f36:	21412483          	lw	s1,532(sp)
1c009f3a:	21012903          	lw	s2,528(sp)
1c009f3e:	20c12983          	lw	s3,524(sp)
1c009f42:	22010113          	addi	sp,sp,544
1c009f46:	8082                	ret

1c009f48 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c009f48:	1141                	addi	sp,sp,-16
1c009f4a:	c606                	sw	ra,12(sp)
1c009f4c:	c422                	sw	s0,8(sp)
1c009f4e:	842a                	mv	s0,a0
1c009f50:	3db1                	jal	1c009dac <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009f52:	20040513          	addi	a0,s0,512
1c009f56:	3d99                	jal	1c009dac <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009f58:	40040513          	addi	a0,s0,1024
1c009f5c:	3d81                	jal	1c009dac <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009f5e:	60040513          	addi	a0,s0,1536
1c009f62:	4422                	lw	s0,8(sp)
1c009f64:	40b2                	lw	ra,12(sp)
1c009f66:	0141                	addi	sp,sp,16
1c009f68:	b591                	j	1c009dac <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c009f6a <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c009f6a:	1101                	addi	sp,sp,-32
1c009f6c:	cc22                	sw	s0,24(sp)
1c009f6e:	ca26                	sw	s1,20(sp)
1c009f70:	c84a                	sw	s2,16(sp)
1c009f72:	c64e                	sw	s3,12(sp)
1c009f74:	ce06                	sw	ra,28(sp)
1c009f76:	89aa                	mv	s3,a0
1c009f78:	892e                	mv	s2,a1
1c009f7a:	84b2                	mv	s1,a2
1c009f7c:	4401                	li	s0,0
1c009f7e:	00848633          	add	a2,s1,s0
1c009f82:	008905b3          	add	a1,s2,s0
1c009f86:	00898533          	add	a0,s3,s0
1c009f8a:	35a9                	jal	1c009dd4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c009f8c:	20040413          	addi	s0,s0,512
1c009f90:	80040793          	addi	a5,s0,-2048
1c009f94:	f7ed                	bnez	a5,1c009f7e <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c009f96:	40f2                	lw	ra,28(sp)
1c009f98:	4462                	lw	s0,24(sp)
1c009f9a:	44d2                	lw	s1,20(sp)
1c009f9c:	4942                	lw	s2,16(sp)
1c009f9e:	49b2                	lw	s3,12(sp)
1c009fa0:	6105                	addi	sp,sp,32
1c009fa2:	8082                	ret

1c009fa4 <randombytes>:
1c009fa4:	2a058263          	beqz	a1,1c00a248 <randombytes+0x2a4>
1c009fa8:	715d                	addi	sp,sp,-80
1c009faa:	00b50733          	add	a4,a0,a1
1c009fae:	c63a                	sw	a4,12(sp)
1c009fb0:	9e378737          	lui	a4,0x9e378
1c009fb4:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c009fb8:	1c0067b7          	lui	a5,0x1c006
1c009fbc:	c43a                	sw	a4,8(sp)
1c009fbe:	e377a737          	lui	a4,0xe377a
1c009fc2:	5b478793          	addi	a5,a5,1460 # 1c0065b4 <outleft>
1c009fc6:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c009fca:	c83e                	sw	a5,16(sp)
1c009fcc:	ca3a                	sw	a4,20(sp)
1c009fce:	439c                	lw	a5,0(a5)
1c009fd0:	c6ef3737          	lui	a4,0xc6ef3
1c009fd4:	c6a2                	sw	s0,76(sp)
1c009fd6:	1c0062b7          	lui	t0,0x1c006
1c009fda:	1c006437          	lui	s0,0x1c006
1c009fde:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c009fe2:	d06e                	sw	s11,32(sp)
1c009fe4:	c4a6                	sw	s1,72(sp)
1c009fe6:	c2ca                	sw	s2,68(sp)
1c009fe8:	c0ce                	sw	s3,64(sp)
1c009fea:	de52                	sw	s4,60(sp)
1c009fec:	dc56                	sw	s5,56(sp)
1c009fee:	da5a                	sw	s6,52(sp)
1c009ff0:	d85e                	sw	s7,48(sp)
1c009ff2:	d662                	sw	s8,44(sp)
1c009ff4:	d466                	sw	s9,40(sp)
1c009ff6:	d26a                	sw	s10,36(sp)
1c009ff8:	8daa                	mv	s11,a0
1c009ffa:	59040413          	addi	s0,s0,1424 # 1c006590 <out>
1c009ffe:	56028293          	addi	t0,t0,1376 # 1c006560 <in>
1c00a002:	cc3a                	sw	a4,24(sp)
1c00a004:	cf85                	beqz	a5,1c00a03c <randombytes+0x98>
1c00a006:	17fd                	addi	a5,a5,-1
1c00a008:	00279713          	slli	a4,a5,0x2
1c00a00c:	9722                	add	a4,a4,s0
1c00a00e:	4304                	lw	s1,0(a4)
1c00a010:	4742                	lw	a4,16(sp)
1c00a012:	009d8023          	sb	s1,0(s11)
1c00a016:	0d85                	addi	s11,s11,1
1c00a018:	c31c                	sw	a5,0(a4)
1c00a01a:	4732                	lw	a4,12(sp)
1c00a01c:	feed94e3          	bne	s11,a4,1c00a004 <randombytes+0x60>
1c00a020:	4436                	lw	s0,76(sp)
1c00a022:	44a6                	lw	s1,72(sp)
1c00a024:	4916                	lw	s2,68(sp)
1c00a026:	4986                	lw	s3,64(sp)
1c00a028:	5a72                	lw	s4,60(sp)
1c00a02a:	5ae2                	lw	s5,56(sp)
1c00a02c:	5b52                	lw	s6,52(sp)
1c00a02e:	5bc2                	lw	s7,48(sp)
1c00a030:	5c32                	lw	s8,44(sp)
1c00a032:	5ca2                	lw	s9,40(sp)
1c00a034:	5d12                	lw	s10,36(sp)
1c00a036:	5d82                	lw	s11,32(sp)
1c00a038:	6161                	addi	sp,sp,80
1c00a03a:	8082                	ret
1c00a03c:	0002a703          	lw	a4,0(t0)
1c00a040:	0042ae83          	lw	t4,4(t0)
1c00a044:	0082af03          	lw	t5,8(t0)
1c00a048:	0705                	addi	a4,a4,1
1c00a04a:	00e2a023          	sw	a4,0(t0)
1c00a04e:	00c2af83          	lw	t6,12(t0)
1c00a052:	ef11                	bnez	a4,1c00a06e <randombytes+0xca>
1c00a054:	0e85                	addi	t4,t4,1
1c00a056:	01d2a223          	sw	t4,4(t0)
1c00a05a:	000e9a63          	bnez	t4,1c00a06e <randombytes+0xca>
1c00a05e:	0f05                	addi	t5,t5,1
1c00a060:	01e2a423          	sw	t5,8(t0)
1c00a064:	000f1563          	bnez	t5,1c00a06e <randombytes+0xca>
1c00a068:	0f85                	addi	t6,t6,1
1c00a06a:	01f2a623          	sw	t6,12(t0)
1c00a06e:	0102ae03          	lw	t3,16(t0)
1c00a072:	0142a303          	lw	t1,20(t0)
1c00a076:	0182a883          	lw	a7,24(t0)
1c00a07a:	01c2a803          	lw	a6,28(t0)
1c00a07e:	0202a503          	lw	a0,32(t0)
1c00a082:	0242a583          	lw	a1,36(t0)
1c00a086:	0282a603          	lw	a2,40(t0)
1c00a08a:	02c2a683          	lw	a3,44(t0)
1c00a08e:	00974713          	xori	a4,a4,9
1c00a092:	007ece93          	xori	t4,t4,7
1c00a096:	009f4f13          	xori	t5,t5,9
1c00a09a:	003fcf93          	xori	t6,t6,3
1c00a09e:	002e4e13          	xori	t3,t3,2
1c00a0a2:	00334313          	xori	t1,t1,3
1c00a0a6:	0088c893          	xori	a7,a7,8
1c00a0aa:	00484813          	xori	a6,a6,4
1c00a0ae:	00654513          	xori	a0,a0,6
1c00a0b2:	0025c593          	xori	a1,a1,2
1c00a0b6:	00664613          	xori	a2,a2,6
1c00a0ba:	0046c693          	xori	a3,a3,4
1c00a0be:	4495                	li	s1,5
1c00a0c0:	49a5                	li	s3,9
1c00a0c2:	4a1d                	li	s4,7
1c00a0c4:	4a89                	li	s5,2
1c00a0c6:	4b0d                	li	s6,3
1c00a0c8:	4ba1                	li	s7,8
1c00a0ca:	4d0d                	li	s10,3
1c00a0cc:	4c0d                	li	s8,3
1c00a0ce:	4781                	li	a5,0
1c00a0d0:	ce6e                	sw	s11,28(sp)
1c00a0d2:	43d2                	lw	t2,20(sp)
1c00a0d4:	00778db3          	add	s11,a5,t2
1c00a0d8:	43a2                	lw	t2,8(sp)
1c00a0da:	01b6dc93          	srli	s9,a3,0x1b
1c00a0de:	00569913          	slli	s2,a3,0x5
1c00a0e2:	979e                	add	a5,a5,t2
1c00a0e4:	0036c393          	xori	t2,a3,3
1c00a0e8:	01996933          	or	s2,s2,s9
1c00a0ec:	93be                	add	t2,t2,a5
1c00a0ee:	0123c3b3          	xor	t2,t2,s2
1c00a0f2:	971e                	add	a4,a4,t2
1c00a0f4:	01975c93          	srli	s9,a4,0x19
1c00a0f8:	00174393          	xori	t2,a4,1
1c00a0fc:	00771913          	slli	s2,a4,0x7
1c00a100:	01996933          	or	s2,s2,s9
1c00a104:	93be                	add	t2,t2,a5
1c00a106:	0123c3b3          	xor	t2,t2,s2
1c00a10a:	9e9e                	add	t4,t4,t2
1c00a10c:	017edc93          	srli	s9,t4,0x17
1c00a110:	004ec393          	xori	t2,t4,4
1c00a114:	009e9913          	slli	s2,t4,0x9
1c00a118:	01996933          	or	s2,s2,s9
1c00a11c:	93be                	add	t2,t2,a5
1c00a11e:	0123c3b3          	xor	t2,t2,s2
1c00a122:	9f1e                	add	t5,t5,t2
1c00a124:	013f5c93          	srli	s9,t5,0x13
1c00a128:	001f4393          	xori	t2,t5,1
1c00a12c:	00df1913          	slli	s2,t5,0xd
1c00a130:	01996933          	or	s2,s2,s9
1c00a134:	93be                	add	t2,t2,a5
1c00a136:	0123c3b3          	xor	t2,t2,s2
1c00a13a:	9f9e                	add	t6,t6,t2
1c00a13c:	01bfdc93          	srli	s9,t6,0x1b
1c00a140:	005fc393          	xori	t2,t6,5
1c00a144:	005f9913          	slli	s2,t6,0x5
1c00a148:	01996933          	or	s2,s2,s9
1c00a14c:	93be                	add	t2,t2,a5
1c00a14e:	0123c3b3          	xor	t2,t2,s2
1c00a152:	9e1e                	add	t3,t3,t2
1c00a154:	019e5c93          	srli	s9,t3,0x19
1c00a158:	009e4393          	xori	t2,t3,9
1c00a15c:	007e1913          	slli	s2,t3,0x7
1c00a160:	01996933          	or	s2,s2,s9
1c00a164:	93be                	add	t2,t2,a5
1c00a166:	0123c3b3          	xor	t2,t2,s2
1c00a16a:	931e                	add	t1,t1,t2
1c00a16c:	01735c93          	srli	s9,t1,0x17
1c00a170:	00234393          	xori	t2,t1,2
1c00a174:	00931913          	slli	s2,t1,0x9
1c00a178:	01996933          	or	s2,s2,s9
1c00a17c:	93be                	add	t2,t2,a5
1c00a17e:	0123c3b3          	xor	t2,t2,s2
1c00a182:	989e                	add	a7,a7,t2
1c00a184:	0138dc93          	srli	s9,a7,0x13
1c00a188:	0068c393          	xori	t2,a7,6
1c00a18c:	00d89913          	slli	s2,a7,0xd
1c00a190:	01996933          	or	s2,s2,s9
1c00a194:	93be                	add	t2,t2,a5
1c00a196:	0123c3b3          	xor	t2,t2,s2
1c00a19a:	981e                	add	a6,a6,t2
1c00a19c:	01b85c93          	srli	s9,a6,0x1b
1c00a1a0:	00584393          	xori	t2,a6,5
1c00a1a4:	00581913          	slli	s2,a6,0x5
1c00a1a8:	01996933          	or	s2,s2,s9
1c00a1ac:	93be                	add	t2,t2,a5
1c00a1ae:	0123c3b3          	xor	t2,t2,s2
1c00a1b2:	951e                	add	a0,a0,t2
1c00a1b4:	01955c93          	srli	s9,a0,0x19
1c00a1b8:	00354393          	xori	t2,a0,3
1c00a1bc:	00751913          	slli	s2,a0,0x7
1c00a1c0:	01996933          	or	s2,s2,s9
1c00a1c4:	93be                	add	t2,t2,a5
1c00a1c6:	0123c3b3          	xor	t2,t2,s2
1c00a1ca:	959e                	add	a1,a1,t2
1c00a1cc:	0175dc93          	srli	s9,a1,0x17
1c00a1d0:	0055c393          	xori	t2,a1,5
1c00a1d4:	00959913          	slli	s2,a1,0x9
1c00a1d8:	01996933          	or	s2,s2,s9
1c00a1dc:	93be                	add	t2,t2,a5
1c00a1de:	0123c3b3          	xor	t2,t2,s2
1c00a1e2:	961e                	add	a2,a2,t2
1c00a1e4:	00864393          	xori	t2,a2,8
1c00a1e8:	00d61913          	slli	s2,a2,0xd
1c00a1ec:	01365c93          	srli	s9,a2,0x13
1c00a1f0:	93be                	add	t2,t2,a5
1c00a1f2:	01996933          	or	s2,s2,s9
1c00a1f6:	0123c3b3          	xor	t2,t2,s2
1c00a1fa:	969e                	add	a3,a3,t2
1c00a1fc:	edb79ee3          	bne	a5,s11,1c00a0d8 <randombytes+0x134>
1c00a200:	43e2                	lw	t2,24(sp)
1c00a202:	01cc4c33          	xor	s8,s8,t3
1c00a206:	006d4d33          	xor	s10,s10,t1
1c00a20a:	011bcbb3          	xor	s7,s7,a7
1c00a20e:	010b4b33          	xor	s6,s6,a6
1c00a212:	00aacab3          	xor	s5,s5,a0
1c00a216:	00ba4a33          	xor	s4,s4,a1
1c00a21a:	00c9c9b3          	xor	s3,s3,a2
1c00a21e:	8cb5                	xor	s1,s1,a3
1c00a220:	ea7799e3          	bne	a5,t2,1c00a0d2 <randombytes+0x12e>
1c00a224:	4df2                	lw	s11,28(sp)
1c00a226:	01842023          	sw	s8,0(s0)
1c00a22a:	01a42223          	sw	s10,4(s0)
1c00a22e:	01742423          	sw	s7,8(s0)
1c00a232:	01642623          	sw	s6,12(s0)
1c00a236:	01542823          	sw	s5,16(s0)
1c00a23a:	01442a23          	sw	s4,20(s0)
1c00a23e:	01342c23          	sw	s3,24(s0)
1c00a242:	cc44                	sw	s1,28(s0)
1c00a244:	479d                	li	a5,7
1c00a246:	b3e9                	j	1c00a010 <randombytes+0x6c>
1c00a248:	8082                	ret

1c00a24a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>:
1c00a24a:	777d                	lui	a4,0xfffff
1c00a24c:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00a250:	02f507b3          	mul	a5,a0,a5
1c00a254:	2ff70713          	addi	a4,a4,767
1c00a258:	07c2                	slli	a5,a5,0x10
1c00a25a:	87c1                	srai	a5,a5,0x10
1c00a25c:	02e787b3          	mul	a5,a5,a4
1c00a260:	953e                	add	a0,a0,a5
1c00a262:	8541                	srai	a0,a0,0x10
1c00a264:	8082                	ret

1c00a266 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00a266:	6795                	lui	a5,0x5
1c00a268:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a26c:	02f507b3          	mul	a5,a0,a5
1c00a270:	02000737          	lui	a4,0x2000
1c00a274:	97ba                	add	a5,a5,a4
1c00a276:	6705                	lui	a4,0x1
1c00a278:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a27c:	87e9                	srai	a5,a5,0x1a
1c00a27e:	02e787b3          	mul	a5,a5,a4
1c00a282:	8d1d                	sub	a0,a0,a5
1c00a284:	0542                	slli	a0,a0,0x10
1c00a286:	8541                	srai	a0,a0,0x10
1c00a288:	8082                	ret

1c00a28a <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00a28a:	7139                	addi	sp,sp,-64
1c00a28c:	da26                	sw	s1,52(sp)
1c00a28e:	d84a                	sw	s2,48(sp)
1c00a290:	84b2                	mv	s1,a2
1c00a292:	892a                	mv	s2,a0
1c00a294:	02000613          	li	a2,32
1c00a298:	0068                	addi	a0,sp,12
1c00a29a:	de06                	sw	ra,60(sp)
1c00a29c:	dc22                	sw	s0,56(sp)
1c00a29e:	8436                	mv	s0,a3
1c00a2a0:	2049                	jal	1c00a322 <memcpy>
1c00a2a2:	006c                	addi	a1,sp,12
1c00a2a4:	854a                	mv	a0,s2
1c00a2a6:	02200613          	li	a2,34
1c00a2aa:	02910623          	sb	s1,44(sp)
1c00a2ae:	028106a3          	sb	s0,45(sp)
1c00a2b2:	d04fe0ef          	jal	ra,1c0087b6 <shake128_absorb>
1c00a2b6:	50f2                	lw	ra,60(sp)
1c00a2b8:	5462                	lw	s0,56(sp)
1c00a2ba:	54d2                	lw	s1,52(sp)
1c00a2bc:	5942                	lw	s2,48(sp)
1c00a2be:	6121                	addi	sp,sp,64
1c00a2c0:	8082                	ret

1c00a2c2 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00a2c2:	7139                	addi	sp,sp,-64
1c00a2c4:	87b2                	mv	a5,a2
1c00a2c6:	da26                	sw	s1,52(sp)
1c00a2c8:	d84a                	sw	s2,48(sp)
1c00a2ca:	84aa                	mv	s1,a0
1c00a2cc:	892e                	mv	s2,a1
1c00a2ce:	02000613          	li	a2,32
1c00a2d2:	85be                	mv	a1,a5
1c00a2d4:	0068                	addi	a0,sp,12
1c00a2d6:	de06                	sw	ra,60(sp)
1c00a2d8:	dc22                	sw	s0,56(sp)
1c00a2da:	8436                	mv	s0,a3
1c00a2dc:	2099                	jal	1c00a322 <memcpy>
1c00a2de:	0070                	addi	a2,sp,12
1c00a2e0:	85ca                	mv	a1,s2
1c00a2e2:	8526                	mv	a0,s1
1c00a2e4:	02100693          	li	a3,33
1c00a2e8:	02810623          	sb	s0,44(sp)
1c00a2ec:	fb4fe0ef          	jal	ra,1c008aa0 <shake256>
1c00a2f0:	50f2                	lw	ra,60(sp)
1c00a2f2:	5462                	lw	s0,56(sp)
1c00a2f4:	54d2                	lw	s1,52(sp)
1c00a2f6:	5942                	lw	s2,48(sp)
1c00a2f8:	6121                	addi	sp,sp,64
1c00a2fa:	8082                	ret

1c00a2fc <pos_wait_forever>:
1c00a2fc:	f14027f3          	csrr	a5,mhartid
1c00a300:	8795                	srai	a5,a5,0x5
1c00a302:	03f7f793          	andi	a5,a5,63
1c00a306:	477d                	li	a4,31
1c00a308:	00e78363          	beq	a5,a4,1c00a30e <pos_wait_forever+0x12>
1c00a30c:	a001                	j	1c00a30c <pos_wait_forever+0x10>
1c00a30e:	1a10a7b7          	lui	a5,0x1a10a
1c00a312:	577d                	li	a4,-1
1c00a314:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a318:	10500073          	wfi
1c00a31c:	10500073          	wfi
1c00a320:	bfe5                	j	1c00a318 <pos_wait_forever+0x1c>

1c00a322 <memcpy>:
1c00a322:	00c5e7b3          	or	a5,a1,a2
1c00a326:	8fc9                	or	a5,a5,a0
1c00a328:	8b8d                	andi	a5,a5,3
1c00a32a:	872e                	mv	a4,a1
1c00a32c:	882a                	mv	a6,a0
1c00a32e:	cbc5                	beqz	a5,1c00a3de <memcpy+0xbc>
1c00a330:	c279                	beqz	a2,1c00a3f6 <memcpy+0xd4>
1c00a332:	00350793          	addi	a5,a0,3
1c00a336:	8f8d                	sub	a5,a5,a1
1c00a338:	0077b793          	sltiu	a5,a5,7
1c00a33c:	e7d1                	bnez	a5,1c00a3c8 <memcpy+0xa6>
1c00a33e:	fff60793          	addi	a5,a2,-1
1c00a342:	0047b793          	sltiu	a5,a5,4
1c00a346:	e3c9                	bnez	a5,1c00a3c8 <memcpy+0xa6>
1c00a348:	ffc67e13          	andi	t3,a2,-4
1c00a34c:	9e2e                	add	t3,t3,a1
1c00a34e:	00174883          	lbu	a7,1(a4)
1c00a352:	00074303          	lbu	t1,0(a4)
1c00a356:	00274683          	lbu	a3,2(a4)
1c00a35a:	00374783          	lbu	a5,3(a4)
1c00a35e:	08a2                	slli	a7,a7,0x8
1c00a360:	0068e8b3          	or	a7,a7,t1
1c00a364:	06c2                	slli	a3,a3,0x10
1c00a366:	0116e6b3          	or	a3,a3,a7
1c00a36a:	07e2                	slli	a5,a5,0x18
1c00a36c:	8fd5                	or	a5,a5,a3
1c00a36e:	0087d313          	srli	t1,a5,0x8
1c00a372:	0107d893          	srli	a7,a5,0x10
1c00a376:	83e1                	srli	a5,a5,0x18
1c00a378:	00d80023          	sb	a3,0(a6)
1c00a37c:	006800a3          	sb	t1,1(a6)
1c00a380:	01180123          	sb	a7,2(a6)
1c00a384:	00f801a3          	sb	a5,3(a6)
1c00a388:	0711                	addi	a4,a4,4
1c00a38a:	0811                	addi	a6,a6,4
1c00a38c:	fdc711e3          	bne	a4,t3,1c00a34e <memcpy+0x2c>
1c00a390:	ffc67793          	andi	a5,a2,-4
1c00a394:	00367693          	andi	a3,a2,3
1c00a398:	00f50733          	add	a4,a0,a5
1c00a39c:	95be                	add	a1,a1,a5
1c00a39e:	02f60f63          	beq	a2,a5,1c00a3dc <memcpy+0xba>
1c00a3a2:	0005c603          	lbu	a2,0(a1)
1c00a3a6:	fff68793          	addi	a5,a3,-1
1c00a3aa:	00c70023          	sb	a2,0(a4)
1c00a3ae:	c79d                	beqz	a5,1c00a3dc <memcpy+0xba>
1c00a3b0:	0015c603          	lbu	a2,1(a1)
1c00a3b4:	4789                	li	a5,2
1c00a3b6:	00c700a3          	sb	a2,1(a4)
1c00a3ba:	02f68163          	beq	a3,a5,1c00a3dc <memcpy+0xba>
1c00a3be:	0025c783          	lbu	a5,2(a1)
1c00a3c2:	00f70123          	sb	a5,2(a4)
1c00a3c6:	8082                	ret
1c00a3c8:	962e                	add	a2,a2,a1
1c00a3ca:	87aa                	mv	a5,a0
1c00a3cc:	0005c703          	lbu	a4,0(a1)
1c00a3d0:	0585                	addi	a1,a1,1
1c00a3d2:	0785                	addi	a5,a5,1
1c00a3d4:	fee78fa3          	sb	a4,-1(a5)
1c00a3d8:	fec59ae3          	bne	a1,a2,1c00a3cc <memcpy+0xaa>
1c00a3dc:	8082                	ret
1c00a3de:	de7d                	beqz	a2,1c00a3dc <memcpy+0xba>
1c00a3e0:	87aa                	mv	a5,a0
1c00a3e2:	4194                	lw	a3,0(a1)
1c00a3e4:	0791                	addi	a5,a5,4
1c00a3e6:	40c78733          	sub	a4,a5,a2
1c00a3ea:	fed7ae23          	sw	a3,-4(a5)
1c00a3ee:	0591                	addi	a1,a1,4
1c00a3f0:	fea719e3          	bne	a4,a0,1c00a3e2 <memcpy+0xc0>
1c00a3f4:	8082                	ret
1c00a3f6:	8082                	ret

1c00a3f8 <memmove>:
1c00a3f8:	40b507b3          	sub	a5,a0,a1
1c00a3fc:	0ac7e063          	bltu	a5,a2,1c00a49c <memmove+0xa4>
1c00a400:	c661                	beqz	a2,1c00a4c8 <memmove+0xd0>
1c00a402:	00350793          	addi	a5,a0,3
1c00a406:	8f8d                	sub	a5,a5,a1
1c00a408:	0077b793          	sltiu	a5,a5,7
1c00a40c:	e3dd                	bnez	a5,1c00a4b2 <memmove+0xba>
1c00a40e:	fff60793          	addi	a5,a2,-1
1c00a412:	0047b793          	sltiu	a5,a5,4
1c00a416:	efd1                	bnez	a5,1c00a4b2 <memmove+0xba>
1c00a418:	ffc67e13          	andi	t3,a2,-4
1c00a41c:	872e                	mv	a4,a1
1c00a41e:	882a                	mv	a6,a0
1c00a420:	9e2e                	add	t3,t3,a1
1c00a422:	00174883          	lbu	a7,1(a4)
1c00a426:	00074303          	lbu	t1,0(a4)
1c00a42a:	00274683          	lbu	a3,2(a4)
1c00a42e:	00374783          	lbu	a5,3(a4)
1c00a432:	08a2                	slli	a7,a7,0x8
1c00a434:	0068e8b3          	or	a7,a7,t1
1c00a438:	06c2                	slli	a3,a3,0x10
1c00a43a:	0116e6b3          	or	a3,a3,a7
1c00a43e:	07e2                	slli	a5,a5,0x18
1c00a440:	8fd5                	or	a5,a5,a3
1c00a442:	0087d313          	srli	t1,a5,0x8
1c00a446:	0107d893          	srli	a7,a5,0x10
1c00a44a:	83e1                	srli	a5,a5,0x18
1c00a44c:	00d80023          	sb	a3,0(a6)
1c00a450:	006800a3          	sb	t1,1(a6)
1c00a454:	01180123          	sb	a7,2(a6)
1c00a458:	00f801a3          	sb	a5,3(a6)
1c00a45c:	0711                	addi	a4,a4,4
1c00a45e:	0811                	addi	a6,a6,4
1c00a460:	fdc711e3          	bne	a4,t3,1c00a422 <memmove+0x2a>
1c00a464:	ffc67793          	andi	a5,a2,-4
1c00a468:	00367693          	andi	a3,a2,3
1c00a46c:	00f50733          	add	a4,a0,a5
1c00a470:	95be                	add	a1,a1,a5
1c00a472:	04f60a63          	beq	a2,a5,1c00a4c6 <memmove+0xce>
1c00a476:	0005c603          	lbu	a2,0(a1)
1c00a47a:	fff68793          	addi	a5,a3,-1
1c00a47e:	00c70023          	sb	a2,0(a4)
1c00a482:	c3b1                	beqz	a5,1c00a4c6 <memmove+0xce>
1c00a484:	0015c603          	lbu	a2,1(a1)
1c00a488:	4789                	li	a5,2
1c00a48a:	00c700a3          	sb	a2,1(a4)
1c00a48e:	02f68c63          	beq	a3,a5,1c00a4c6 <memmove+0xce>
1c00a492:	0025c783          	lbu	a5,2(a1)
1c00a496:	00f70123          	sb	a5,2(a4)
1c00a49a:	8082                	ret
1c00a49c:	167d                	addi	a2,a2,-1
1c00a49e:	00c587b3          	add	a5,a1,a2
1c00a4a2:	0007c703          	lbu	a4,0(a5)
1c00a4a6:	00c507b3          	add	a5,a0,a2
1c00a4aa:	00e78023          	sb	a4,0(a5)
1c00a4ae:	f67d                	bnez	a2,1c00a49c <memmove+0xa4>
1c00a4b0:	8082                	ret
1c00a4b2:	962a                	add	a2,a2,a0
1c00a4b4:	87aa                	mv	a5,a0
1c00a4b6:	0005c703          	lbu	a4,0(a1)
1c00a4ba:	0785                	addi	a5,a5,1
1c00a4bc:	0585                	addi	a1,a1,1
1c00a4be:	fee78fa3          	sb	a4,-1(a5)
1c00a4c2:	fec79ae3          	bne	a5,a2,1c00a4b6 <memmove+0xbe>
1c00a4c6:	8082                	ret
1c00a4c8:	8082                	ret

1c00a4ca <strchr>:
1c00a4ca:	00054703          	lbu	a4,0(a0)
1c00a4ce:	0ff5f593          	andi	a1,a1,255
1c00a4d2:	87aa                	mv	a5,a0
1c00a4d4:	00b70863          	beq	a4,a1,1c00a4e4 <strchr+0x1a>
1c00a4d8:	cb01                	beqz	a4,1c00a4e8 <strchr+0x1e>
1c00a4da:	0017c703          	lbu	a4,1(a5)
1c00a4de:	0785                	addi	a5,a5,1
1c00a4e0:	feb71ce3          	bne	a4,a1,1c00a4d8 <strchr+0xe>
1c00a4e4:	853e                	mv	a0,a5
1c00a4e6:	8082                	ret
1c00a4e8:	4501                	li	a0,0
1c00a4ea:	dded                	beqz	a1,1c00a4e4 <strchr+0x1a>
1c00a4ec:	8082                	ret

1c00a4ee <puts>:
1c00a4ee:	00054783          	lbu	a5,0(a0)
1c00a4f2:	c78d                	beqz	a5,1c00a51c <puts+0x2e>
1c00a4f4:	f14026f3          	csrr	a3,mhartid
1c00a4f8:	00369713          	slli	a4,a3,0x3
1c00a4fc:	1a10f637          	lui	a2,0x1a10f
1c00a500:	0ff77713          	andi	a4,a4,255
1c00a504:	9732                	add	a4,a4,a2
1c00a506:	6609                	lui	a2,0x2
1c00a508:	068a                	slli	a3,a3,0x2
1c00a50a:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a50e:	8ef1                	and	a3,a3,a2
1c00a510:	9736                	add	a4,a4,a3
1c00a512:	c31c                	sw	a5,0(a4)
1c00a514:	00154783          	lbu	a5,1(a0)
1c00a518:	0505                	addi	a0,a0,1
1c00a51a:	ffe5                	bnez	a5,1c00a512 <puts+0x24>
1c00a51c:	f1402773          	csrr	a4,mhartid
1c00a520:	00371793          	slli	a5,a4,0x3
1c00a524:	1a10f6b7          	lui	a3,0x1a10f
1c00a528:	0ff7f793          	andi	a5,a5,255
1c00a52c:	97b6                	add	a5,a5,a3
1c00a52e:	6689                	lui	a3,0x2
1c00a530:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a534:	070a                	slli	a4,a4,0x2
1c00a536:	8f75                	and	a4,a4,a3
1c00a538:	97ba                	add	a5,a5,a4
1c00a53a:	4729                	li	a4,10
1c00a53c:	c398                	sw	a4,0(a5)
1c00a53e:	4501                	li	a0,0
1c00a540:	8082                	ret

1c00a542 <pos_libc_fputc_locked>:
1c00a542:	6689                	lui	a3,0x2
1c00a544:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a548:	f14027f3          	csrr	a5,mhartid
1c00a54c:	00379713          	slli	a4,a5,0x3
1c00a550:	078a                	slli	a5,a5,0x2
1c00a552:	8ff5                	and	a5,a5,a3
1c00a554:	0ff77713          	andi	a4,a4,255
1c00a558:	1a10f6b7          	lui	a3,0x1a10f
1c00a55c:	9736                	add	a4,a4,a3
1c00a55e:	97ba                	add	a5,a5,a4
1c00a560:	0ff57513          	andi	a0,a0,255
1c00a564:	c388                	sw	a0,0(a5)
1c00a566:	4501                	li	a0,0
1c00a568:	8082                	ret

1c00a56a <putchar>:
1c00a56a:	6689                	lui	a3,0x2
1c00a56c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a570:	f14027f3          	csrr	a5,mhartid
1c00a574:	00379713          	slli	a4,a5,0x3
1c00a578:	078a                	slli	a5,a5,0x2
1c00a57a:	8ff5                	and	a5,a5,a3
1c00a57c:	0ff77713          	andi	a4,a4,255
1c00a580:	1a10f6b7          	lui	a3,0x1a10f
1c00a584:	9736                	add	a4,a4,a3
1c00a586:	97ba                	add	a5,a5,a4
1c00a588:	0ff57513          	andi	a0,a0,255
1c00a58c:	c388                	sw	a0,0(a5)
1c00a58e:	4501                	li	a0,0
1c00a590:	8082                	ret

1c00a592 <pos_libc_prf_locked>:
1c00a592:	a0b1                	j	1c00a5de <pos_libc_prf>

1c00a594 <exit>:
1c00a594:	800007b7          	lui	a5,0x80000
1c00a598:	1141                	addi	sp,sp,-16
1c00a59a:	8d5d                	or	a0,a0,a5
1c00a59c:	c606                	sw	ra,12(sp)
1c00a59e:	1a1047b7          	lui	a5,0x1a104
1c00a5a2:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a5a6:	3b99                	jal	1c00a2fc <pos_wait_forever>

1c00a5a8 <pos_io_start>:
1c00a5a8:	4501                	li	a0,0
1c00a5aa:	8082                	ret

1c00a5ac <pos_io_stop>:
1c00a5ac:	4501                	li	a0,0
1c00a5ae:	8082                	ret

1c00a5b0 <printf>:
1c00a5b0:	7139                	addi	sp,sp,-64
1c00a5b2:	02410313          	addi	t1,sp,36
1c00a5b6:	d432                	sw	a2,40(sp)
1c00a5b8:	862a                	mv	a2,a0
1c00a5ba:	1c00a537          	lui	a0,0x1c00a
1c00a5be:	d22e                	sw	a1,36(sp)
1c00a5c0:	d636                	sw	a3,44(sp)
1c00a5c2:	4589                	li	a1,2
1c00a5c4:	869a                	mv	a3,t1
1c00a5c6:	54250513          	addi	a0,a0,1346 # 1c00a542 <pos_libc_fputc_locked>
1c00a5ca:	ce06                	sw	ra,28(sp)
1c00a5cc:	d83a                	sw	a4,48(sp)
1c00a5ce:	da3e                	sw	a5,52(sp)
1c00a5d0:	dc42                	sw	a6,56(sp)
1c00a5d2:	de46                	sw	a7,60(sp)
1c00a5d4:	c61a                	sw	t1,12(sp)
1c00a5d6:	3f75                	jal	1c00a592 <pos_libc_prf_locked>
1c00a5d8:	40f2                	lw	ra,28(sp)
1c00a5da:	6121                	addi	sp,sp,64
1c00a5dc:	8082                	ret

1c00a5de <pos_libc_prf>:
1c00a5de:	7169                	addi	sp,sp,-304
1c00a5e0:	12112623          	sw	ra,300(sp)
1c00a5e4:	12812423          	sw	s0,296(sp)
1c00a5e8:	12912223          	sw	s1,292(sp)
1c00a5ec:	13212023          	sw	s2,288(sp)
1c00a5f0:	11312e23          	sw	s3,284(sp)
1c00a5f4:	11412c23          	sw	s4,280(sp)
1c00a5f8:	11512a23          	sw	s5,276(sp)
1c00a5fc:	11612823          	sw	s6,272(sp)
1c00a600:	11712623          	sw	s7,268(sp)
1c00a604:	11812423          	sw	s8,264(sp)
1c00a608:	11912223          	sw	s9,260(sp)
1c00a60c:	11a12023          	sw	s10,256(sp)
1c00a610:	dfee                	sw	s11,252(sp)
1c00a612:	00064783          	lbu	a5,0(a2)
1c00a616:	c636                	sw	a3,12(sp)
1c00a618:	3c0781e3          	beqz	a5,1c00b1da <pos_libc_prf+0xbfc>
1c00a61c:	7741                	lui	a4,0xffff0
1c00a61e:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a622:	cc3a                	sw	a4,24(sp)
1c00a624:	10000737          	lui	a4,0x10000
1c00a628:	177d                	addi	a4,a4,-1
1c00a62a:	8caa                	mv	s9,a0
1c00a62c:	84ae                	mv	s1,a1
1c00a62e:	00160c13          	addi	s8,a2,1
1c00a632:	4401                	li	s0,0
1c00a634:	1c000d37          	lui	s10,0x1c000
1c00a638:	ca3a                	sw	a4,20(sp)
1c00a63a:	853e                	mv	a0,a5
1c00a63c:	02500793          	li	a5,37
1c00a640:	04f50863          	beq	a0,a5,1c00a690 <pos_libc_prf+0xb2>
1c00a644:	85a6                	mv	a1,s1
1c00a646:	9c82                	jalr	s9
1c00a648:	57fd                	li	a5,-1
1c00a64a:	4cf50b63          	beq	a0,a5,1c00ab20 <pos_libc_prf+0x542>
1c00a64e:	0405                	addi	s0,s0,1
1c00a650:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00a654:	0c05                	addi	s8,s8,1
1c00a656:	f17d                	bnez	a0,1c00a63c <pos_libc_prf+0x5e>
1c00a658:	12c12083          	lw	ra,300(sp)
1c00a65c:	8522                	mv	a0,s0
1c00a65e:	12812403          	lw	s0,296(sp)
1c00a662:	12412483          	lw	s1,292(sp)
1c00a666:	12012903          	lw	s2,288(sp)
1c00a66a:	11c12983          	lw	s3,284(sp)
1c00a66e:	11812a03          	lw	s4,280(sp)
1c00a672:	11412a83          	lw	s5,276(sp)
1c00a676:	11012b03          	lw	s6,272(sp)
1c00a67a:	10c12b83          	lw	s7,268(sp)
1c00a67e:	10812c03          	lw	s8,264(sp)
1c00a682:	10412c83          	lw	s9,260(sp)
1c00a686:	10012d03          	lw	s10,256(sp)
1c00a68a:	5dfe                	lw	s11,252(sp)
1c00a68c:	6155                	addi	sp,sp,304
1c00a68e:	8082                	ret
1c00a690:	8de2                	mv	s11,s8
1c00a692:	000dcc03          	lbu	s8,0(s11)
1c00a696:	150d0513          	addi	a0,s10,336 # 1c000150 <__clz_tab+0x134>
1c00a69a:	c826                	sw	s1,16(sp)
1c00a69c:	85e2                	mv	a1,s8
1c00a69e:	c202                	sw	zero,4(sp)
1c00a6a0:	c402                	sw	zero,8(sp)
1c00a6a2:	c002                	sw	zero,0(sp)
1c00a6a4:	001d8493          	addi	s1,s11,1
1c00a6a8:	350d                	jal	1c00a4ca <strchr>
1c00a6aa:	02000913          	li	s2,32
1c00a6ae:	4b81                	li	s7,0
1c00a6b0:	02b00993          	li	s3,43
1c00a6b4:	02d00b13          	li	s6,45
1c00a6b8:	03000a93          	li	s5,48
1c00a6bc:	02000a13          	li	s4,32
1c00a6c0:	8626                	mv	a2,s1
1c00a6c2:	c51d                	beqz	a0,1c00a6f0 <pos_libc_prf+0x112>
1c00a6c4:	413c0e63          	beq	s8,s3,1c00aae0 <pos_libc_prf+0x502>
1c00a6c8:	3f89ec63          	bltu	s3,s8,1c00aac0 <pos_libc_prf+0x4e2>
1c00a6cc:	414c0663          	beq	s8,s4,1c00aad8 <pos_libc_prf+0x4fa>
1c00a6d0:	02300793          	li	a5,35
1c00a6d4:	3efc1363          	bne	s8,a5,1c00aaba <pos_libc_prf+0x4dc>
1c00a6d8:	4b85                	li	s7,1
1c00a6da:	8da6                	mv	s11,s1
1c00a6dc:	000dcc03          	lbu	s8,0(s11)
1c00a6e0:	150d0513          	addi	a0,s10,336
1c00a6e4:	001d8493          	addi	s1,s11,1
1c00a6e8:	85e2                	mv	a1,s8
1c00a6ea:	33c5                	jal	1c00a4ca <strchr>
1c00a6ec:	8626                	mv	a2,s1
1c00a6ee:	f979                	bnez	a0,1c00a6c4 <pos_libc_prf+0xe6>
1c00a6f0:	87e2                	mv	a5,s8
1c00a6f2:	ce5e                	sw	s7,28(sp)
1c00a6f4:	02a00693          	li	a3,42
1c00a6f8:	8c6e                	mv	s8,s11
1c00a6fa:	8ba6                	mv	s7,s1
1c00a6fc:	8dbe                	mv	s11,a5
1c00a6fe:	44c2                	lw	s1,16(sp)
1c00a700:	42d78263          	beq	a5,a3,1c00ab24 <pos_libc_prf+0x546>
1c00a704:	fd078693          	addi	a3,a5,-48
1c00a708:	4525                	li	a0,9
1c00a70a:	4a01                	li	s4,0
1c00a70c:	3cd57f63          	bgeu	a0,a3,1c00aaea <pos_libc_prf+0x50c>
1c00a710:	02e00793          	li	a5,46
1c00a714:	5afd                	li	s5,-1
1c00a716:	74fd8363          	beq	s11,a5,1c00ae5c <pos_libc_prf+0x87e>
1c00a71a:	1c0007b7          	lui	a5,0x1c000
1c00a71e:	85ee                	mv	a1,s11
1c00a720:	15878513          	addi	a0,a5,344 # 1c000158 <__clz_tab+0x13c>
1c00a724:	c832                	sw	a2,16(sp)
1c00a726:	3355                	jal	1c00a4ca <strchr>
1c00a728:	4642                	lw	a2,16(sp)
1c00a72a:	8c32                	mv	s8,a2
1c00a72c:	c509                	beqz	a0,1c00a736 <pos_libc_prf+0x158>
1c00a72e:	00064d83          	lbu	s11,0(a2)
1c00a732:	00160c13          	addi	s8,a2,1
1c00a736:	06900793          	li	a5,105
1c00a73a:	0afd8ee3          	beq	s11,a5,1c00aff6 <pos_libc_prf+0xa18>
1c00a73e:	4db7c763          	blt	a5,s11,1c00ac0c <pos_libc_prf+0x62e>
1c00a742:	05800793          	li	a5,88
1c00a746:	4efd8163          	beq	s11,a5,1c00ac28 <pos_libc_prf+0x64a>
1c00a74a:	41b7c163          	blt	a5,s11,1c00ab4c <pos_libc_prf+0x56e>
1c00a74e:	02500793          	li	a5,37
1c00a752:	26fd8ae3          	beq	s11,a5,1c00b1c6 <pos_libc_prf+0xbe8>
1c00a756:	3fb7d863          	bge	a5,s11,1c00ab46 <pos_libc_prf+0x568>
1c00a75a:	fbbd8793          	addi	a5,s11,-69
1c00a75e:	4689                	li	a3,2
1c00a760:	eef6e8e3          	bltu	a3,a5,1c00a650 <pos_libc_prf+0x72>
1c00a764:	47b2                	lw	a5,12(sp)
1c00a766:	7ff00893          	li	a7,2047
1c00a76a:	00778b13          	addi	s6,a5,7
1c00a76e:	ff8b7b13          	andi	s6,s6,-8
1c00a772:	004b2783          	lw	a5,4(s6) # ff0004 <__CTOR_LIST__-0x1b010000>
1c00a776:	000b2603          	lw	a2,0(s6)
1c00a77a:	0b21                	addi	s6,s6,8
1c00a77c:	00b79693          	slli	a3,a5,0xb
1c00a780:	01565513          	srli	a0,a2,0x15
1c00a784:	8ec9                	or	a3,a3,a0
1c00a786:	0147d813          	srli	a6,a5,0x14
1c00a78a:	0686                	slli	a3,a3,0x1
1c00a78c:	7ff87813          	andi	a6,a6,2047
1c00a790:	0016d513          	srli	a0,a3,0x1
1c00a794:	00b61313          	slli	t1,a2,0xb
1c00a798:	86be                	mv	a3,a5
1c00a79a:	41180263          	beq	a6,a7,1c00ab9e <pos_libc_prf+0x5c0>
1c00a79e:	04600793          	li	a5,70
1c00a7a2:	00fd9463          	bne	s11,a5,1c00a7aa <pos_libc_prf+0x1cc>
1c00a7a6:	06600d93          	li	s11,102
1c00a7aa:	006867b3          	or	a5,a6,t1
1c00a7ae:	00a7e8b3          	or	a7,a5,a0
1c00a7b2:	862a                	mv	a2,a0
1c00a7b4:	340885e3          	beqz	a7,1c00b2fe <pos_libc_prf+0xd20>
1c00a7b8:	80000637          	lui	a2,0x80000
1c00a7bc:	c0280813          	addi	a6,a6,-1022
1c00a7c0:	879a                	mv	a5,t1
1c00a7c2:	8e49                	or	a2,a2,a0
1c00a7c4:	4606c7e3          	bltz	a3,1c00b432 <pos_libc_prf+0xe54>
1c00a7c8:	4722                	lw	a4,8(sp)
1c00a7ca:	480708e3          	beqz	a4,1c00b45a <pos_libc_prf+0xe7c>
1c00a7ce:	02b00693          	li	a3,43
1c00a7d2:	02d10223          	sb	a3,36(sp)
1c00a7d6:	02510f13          	addi	t5,sp,37
1c00a7da:	56f9                	li	a3,-2
1c00a7dc:	4301                	li	t1,0
1c00a7de:	06d85663          	bge	a6,a3,1c00a84a <pos_libc_prf+0x26c>
1c00a7e2:	333338b7          	lui	a7,0x33333
1c00a7e6:	80000e37          	lui	t3,0x80000
1c00a7ea:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a7ee:	fffe4e13          	not	t3,t3
1c00a7f2:	5ef9                	li	t4,-2
1c00a7f4:	01f61593          	slli	a1,a2,0x1f
1c00a7f8:	0017d693          	srli	a3,a5,0x1
1c00a7fc:	0017f713          	andi	a4,a5,1
1c00a800:	8ecd                	or	a3,a3,a1
1c00a802:	00d707b3          	add	a5,a4,a3
1c00a806:	00e7b733          	sltu	a4,a5,a4
1c00a80a:	8205                	srli	a2,a2,0x1
1c00a80c:	963a                	add	a2,a2,a4
1c00a80e:	8742                	mv	a4,a6
1c00a810:	0805                	addi	a6,a6,1
1c00a812:	fec8e1e3          	bltu	a7,a2,1c00a7f4 <pos_libc_prf+0x216>
1c00a816:	00279593          	slli	a1,a5,0x2
1c00a81a:	01e7d513          	srli	a0,a5,0x1e
1c00a81e:	00261693          	slli	a3,a2,0x2
1c00a822:	97ae                	add	a5,a5,a1
1c00a824:	8ec9                	or	a3,a3,a0
1c00a826:	9636                	add	a2,a2,a3
1c00a828:	00b7b5b3          	sltu	a1,a5,a1
1c00a82c:	962e                	add	a2,a2,a1
1c00a82e:	01f7d693          	srli	a3,a5,0x1f
1c00a832:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00a836:	137d                	addi	t1,t1,-1
1c00a838:	01c61763          	bne	a2,t3,1c00a846 <pos_libc_prf+0x268>
1c00a83c:	00170813          	addi	a6,a4,1
1c00a840:	0786                	slli	a5,a5,0x1
1c00a842:	ffe6e613          	ori	a2,a3,-2
1c00a846:	fbd847e3          	blt	a6,t4,1c00a7f4 <pos_libc_prf+0x216>
1c00a84a:	07005363          	blez	a6,1c00a8b0 <pos_libc_prf+0x2d2>
1c00a84e:	800008b7          	lui	a7,0x80000
1c00a852:	4e15                	li	t3,5
1c00a854:	fff8c893          	not	a7,a7
1c00a858:	00278693          	addi	a3,a5,2
1c00a85c:	00f6b7b3          	sltu	a5,a3,a5
1c00a860:	963e                	add	a2,a2,a5
1c00a862:	03c657b3          	divu	a5,a2,t3
1c00a866:	0036d713          	srli	a4,a3,0x3
1c00a86a:	187d                	addi	a6,a6,-1
1c00a86c:	0305                	addi	t1,t1,1
1c00a86e:	00279593          	slli	a1,a5,0x2
1c00a872:	95be                	add	a1,a1,a5
1c00a874:	8e0d                	sub	a2,a2,a1
1c00a876:	0676                	slli	a2,a2,0x1d
1c00a878:	8f51                	or	a4,a4,a2
1c00a87a:	03c75633          	divu	a2,a4,t3
1c00a87e:	00361713          	slli	a4,a2,0x3
1c00a882:	00561593          	slli	a1,a2,0x5
1c00a886:	95ba                	add	a1,a1,a4
1c00a888:	8e8d                	sub	a3,a3,a1
1c00a88a:	03c6d6b3          	divu	a3,a3,t3
1c00a88e:	8275                	srli	a2,a2,0x1d
1c00a890:	963e                	add	a2,a2,a5
1c00a892:	00e687b3          	add	a5,a3,a4
1c00a896:	00d7b6b3          	sltu	a3,a5,a3
1c00a89a:	9636                	add	a2,a2,a3
1c00a89c:	01f7d713          	srli	a4,a5,0x1f
1c00a8a0:	0606                	slli	a2,a2,0x1
1c00a8a2:	8e59                	or	a2,a2,a4
1c00a8a4:	0786                	slli	a5,a5,0x1
1c00a8a6:	187d                	addi	a6,a6,-1
1c00a8a8:	fec8fae3          	bgeu	a7,a2,1c00a89c <pos_libc_prf+0x2be>
1c00a8ac:	fb0046e3          	bgtz	a6,1c00a858 <pos_libc_prf+0x27a>
1c00a8b0:	4e11                	li	t3,4
1c00a8b2:	01f61693          	slli	a3,a2,0x1f
1c00a8b6:	0017d713          	srli	a4,a5,0x1
1c00a8ba:	8f55                	or	a4,a4,a3
1c00a8bc:	8b85                	andi	a5,a5,1
1c00a8be:	00e78533          	add	a0,a5,a4
1c00a8c2:	8205                	srli	a2,a2,0x1
1c00a8c4:	00f537b3          	sltu	a5,a0,a5
1c00a8c8:	00c788b3          	add	a7,a5,a2
1c00a8cc:	0805                	addi	a6,a6,1
1c00a8ce:	87aa                	mv	a5,a0
1c00a8d0:	8646                	mv	a2,a7
1c00a8d2:	ffc810e3          	bne	a6,t3,1c00a8b2 <pos_libc_prf+0x2d4>
1c00a8d6:	06700793          	li	a5,103
1c00a8da:	2a0acee3          	bltz	s5,1c00b396 <pos_libc_prf+0xdb8>
1c00a8de:	28fd83e3          	beq	s11,a5,1c00b364 <pos_libc_prf+0xd86>
1c00a8e2:	04700793          	li	a5,71
1c00a8e6:	26fd8fe3          	beq	s11,a5,1c00b364 <pos_libc_prf+0xd86>
1c00a8ea:	06600793          	li	a5,102
1c00a8ee:	2cfd85e3          	beq	s11,a5,1c00b3b8 <pos_libc_prf+0xdda>
1c00a8f2:	001a8813          	addi	a6,s5,1
1c00a8f6:	47c1                	li	a5,16
1c00a8f8:	0107d363          	bge	a5,a6,1c00a8fe <pos_libc_prf+0x320>
1c00a8fc:	4841                	li	a6,16
1c00a8fe:	187d                	addi	a6,a6,-1
1c00a900:	4601                	li	a2,0
1c00a902:	4781                	li	a5,0
1c00a904:	080006b7          	lui	a3,0x8000
1c00a908:	4e15                	li	t3,5
1c00a90a:	5efd                	li	t4,-1
1c00a90c:	00278713          	addi	a4,a5,2
1c00a910:	00f737b3          	sltu	a5,a4,a5
1c00a914:	97b6                	add	a5,a5,a3
1c00a916:	03c7dfb3          	divu	t6,a5,t3
1c00a91a:	00375593          	srli	a1,a4,0x3
1c00a91e:	187d                	addi	a6,a6,-1
1c00a920:	002f9693          	slli	a3,t6,0x2
1c00a924:	96fe                	add	a3,a3,t6
1c00a926:	8f95                	sub	a5,a5,a3
1c00a928:	07f6                	slli	a5,a5,0x1d
1c00a92a:	8ddd                	or	a1,a1,a5
1c00a92c:	03c5d5b3          	divu	a1,a1,t3
1c00a930:	00359693          	slli	a3,a1,0x3
1c00a934:	00559793          	slli	a5,a1,0x5
1c00a938:	97b6                	add	a5,a5,a3
1c00a93a:	8f1d                	sub	a4,a4,a5
1c00a93c:	03c757b3          	divu	a5,a4,t3
1c00a940:	81f5                	srli	a1,a1,0x1d
1c00a942:	95fe                	add	a1,a1,t6
1c00a944:	96be                	add	a3,a3,a5
1c00a946:	00f6b733          	sltu	a4,a3,a5
1c00a94a:	972e                	add	a4,a4,a1
1c00a94c:	01f71593          	slli	a1,a4,0x1f
1c00a950:	0016d793          	srli	a5,a3,0x1
1c00a954:	8fcd                	or	a5,a5,a1
1c00a956:	8a85                	andi	a3,a3,1
1c00a958:	97b6                	add	a5,a5,a3
1c00a95a:	8305                	srli	a4,a4,0x1
1c00a95c:	00d7b6b3          	sltu	a3,a5,a3
1c00a960:	96ba                	add	a3,a3,a4
1c00a962:	fbd815e3          	bne	a6,t4,1c00a90c <pos_libc_prf+0x32e>
1c00a966:	97aa                	add	a5,a5,a0
1c00a968:	96c6                	add	a3,a3,a7
1c00a96a:	00a7b533          	sltu	a0,a5,a0
1c00a96e:	00d508b3          	add	a7,a0,a3
1c00a972:	f00006b7          	lui	a3,0xf0000
1c00a976:	0116f6b3          	and	a3,a3,a7
1c00a97a:	c2b5                	beqz	a3,1c00a9de <pos_libc_prf+0x400>
1c00a97c:	00278813          	addi	a6,a5,2
1c00a980:	00f836b3          	sltu	a3,a6,a5
1c00a984:	98b6                	add	a7,a7,a3
1c00a986:	4e95                	li	t4,5
1c00a988:	03d8de33          	divu	t3,a7,t4
1c00a98c:	00385693          	srli	a3,a6,0x3
1c00a990:	0305                	addi	t1,t1,1
1c00a992:	002e1513          	slli	a0,t3,0x2
1c00a996:	9572                	add	a0,a0,t3
1c00a998:	40a888b3          	sub	a7,a7,a0
1c00a99c:	01d89513          	slli	a0,a7,0x1d
1c00a9a0:	8ec9                	or	a3,a3,a0
1c00a9a2:	03d6d6b3          	divu	a3,a3,t4
1c00a9a6:	00369513          	slli	a0,a3,0x3
1c00a9aa:	00569793          	slli	a5,a3,0x5
1c00a9ae:	97aa                	add	a5,a5,a0
1c00a9b0:	40f807b3          	sub	a5,a6,a5
1c00a9b4:	03d7d7b3          	divu	a5,a5,t4
1c00a9b8:	82f5                	srli	a3,a3,0x1d
1c00a9ba:	96f2                	add	a3,a3,t3
1c00a9bc:	953e                	add	a0,a0,a5
1c00a9be:	00f537b3          	sltu	a5,a0,a5
1c00a9c2:	96be                	add	a3,a3,a5
1c00a9c4:	01f69813          	slli	a6,a3,0x1f
1c00a9c8:	00155793          	srli	a5,a0,0x1
1c00a9cc:	00f867b3          	or	a5,a6,a5
1c00a9d0:	8905                	andi	a0,a0,1
1c00a9d2:	97aa                	add	a5,a5,a0
1c00a9d4:	8285                	srli	a3,a3,0x1
1c00a9d6:	00a7b533          	sltu	a0,a5,a0
1c00a9da:	00d508b3          	add	a7,a0,a3
1c00a9de:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a9e2:	06600693          	li	a3,102
1c00a9e6:	884e                	mv	a6,s3
1c00a9e8:	4edd8163          	beq	s11,a3,1c00aeca <pos_libc_prf+0x8ec>
1c00a9ec:	00279693          	slli	a3,a5,0x2
1c00a9f0:	01e7d513          	srli	a0,a5,0x1e
1c00a9f4:	00289e13          	slli	t3,a7,0x2
1c00a9f8:	97b6                	add	a5,a5,a3
1c00a9fa:	01c56e33          	or	t3,a0,t3
1c00a9fe:	00d7b833          	sltu	a6,a5,a3
1c00aa02:	011e06b3          	add	a3,t3,a7
1c00aa06:	9836                	add	a6,a6,a3
1c00aa08:	0806                	slli	a6,a6,0x1
1c00aa0a:	01f7d693          	srli	a3,a5,0x1f
1c00aa0e:	0106e833          	or	a6,a3,a6
1c00aa12:	01c85693          	srli	a3,a6,0x1c
1c00aa16:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00aa1a:	4772                	lw	a4,28(sp)
1c00aa1c:	00af0023          	sb	a0,0(t5)
1c00aa20:	00179513          	slli	a0,a5,0x1
1c00aa24:	47d2                	lw	a5,20(sp)
1c00aa26:	00d036b3          	snez	a3,a3
1c00aa2a:	01576bb3          	or	s7,a4,s5
1c00aa2e:	00f87833          	and	a6,a6,a5
1c00aa32:	40d30333          	sub	t1,t1,a3
1c00aa36:	060b8463          	beqz	s7,1c00aa9e <pos_libc_prf+0x4c0>
1c00aa3a:	02e00793          	li	a5,46
1c00aa3e:	00ff00a3          	sb	a5,1(t5)
1c00aa42:	002f0993          	addi	s3,t5,2
1c00aa46:	040a8c63          	beqz	s5,1c00aa9e <pos_libc_prf+0x4c0>
1c00aa4a:	002a8793          	addi	a5,s5,2
1c00aa4e:	9f3e                	add	t5,t5,a5
1c00aa50:	88ce                	mv	a7,s3
1c00aa52:	4ebd                	li	t4,15
1c00aa54:	03000f93          	li	t6,48
1c00aa58:	00251793          	slli	a5,a0,0x2
1c00aa5c:	01e55693          	srli	a3,a0,0x1e
1c00aa60:	00281713          	slli	a4,a6,0x2
1c00aa64:	00a785b3          	add	a1,a5,a0
1c00aa68:	8f55                	or	a4,a4,a3
1c00aa6a:	9742                	add	a4,a4,a6
1c00aa6c:	00f5b7b3          	sltu	a5,a1,a5
1c00aa70:	97ba                	add	a5,a5,a4
1c00aa72:	0786                	slli	a5,a5,0x1
1c00aa74:	01f5d713          	srli	a4,a1,0x1f
1c00aa78:	8fd9                	or	a5,a5,a4
1c00aa7a:	01c7d713          	srli	a4,a5,0x1c
1c00aa7e:	03070713          	addi	a4,a4,48
1c00aa82:	0885                	addi	a7,a7,1
1c00aa84:	53d05763          	blez	t4,1c00afb2 <pos_libc_prf+0x9d4>
1c00aa88:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00aa8c:	4752                	lw	a4,20(sp)
1c00aa8e:	1efd                	addi	t4,t4,-1
1c00aa90:	00159513          	slli	a0,a1,0x1
1c00aa94:	00e7f833          	and	a6,a5,a4
1c00aa98:	fd1f10e3          	bne	t5,a7,1c00aa58 <pos_libc_prf+0x47a>
1c00aa9c:	99d6                	add	s3,s3,s5
1c00aa9e:	4e061c63          	bnez	a2,1c00af96 <pos_libc_prf+0x9b8>
1c00aaa2:	fdfdf793          	andi	a5,s11,-33
1c00aaa6:	04500693          	li	a3,69
1c00aaaa:	00d781e3          	beq	a5,a3,1c00b2ac <pos_libc_prf+0xcce>
1c00aaae:	105c                	addi	a5,sp,36
1c00aab0:	00098023          	sb	zero,0(s3)
1c00aab4:	40f989b3          	sub	s3,s3,a5
1c00aab8:	aa05                	j	1c00abe8 <pos_libc_prf+0x60a>
1c00aaba:	b80c0fe3          	beqz	s8,1c00a658 <pos_libc_prf+0x7a>
1c00aabe:	b931                	j	1c00a6da <pos_libc_prf+0xfc>
1c00aac0:	016c0863          	beq	s8,s6,1c00aad0 <pos_libc_prf+0x4f2>
1c00aac4:	c15c1be3          	bne	s8,s5,1c00a6da <pos_libc_prf+0xfc>
1c00aac8:	03000913          	li	s2,48
1c00aacc:	8da6                	mv	s11,s1
1c00aace:	b139                	j	1c00a6dc <pos_libc_prf+0xfe>
1c00aad0:	4785                	li	a5,1
1c00aad2:	c03e                	sw	a5,0(sp)
1c00aad4:	8da6                	mv	s11,s1
1c00aad6:	b119                	j	1c00a6dc <pos_libc_prf+0xfe>
1c00aad8:	4785                	li	a5,1
1c00aada:	c23e                	sw	a5,4(sp)
1c00aadc:	8da6                	mv	s11,s1
1c00aade:	befd                	j	1c00a6dc <pos_libc_prf+0xfe>
1c00aae0:	4785                	li	a5,1
1c00aae2:	c43e                	sw	a5,8(sp)
1c00aae4:	8da6                	mv	s11,s1
1c00aae6:	bedd                	j	1c00a6dc <pos_libc_prf+0xfe>
1c00aae8:	0b85                	addi	s7,s7,1
1c00aaea:	002a1793          	slli	a5,s4,0x2
1c00aaee:	97d2                	add	a5,a5,s4
1c00aaf0:	0786                	slli	a5,a5,0x1
1c00aaf2:	97ee                	add	a5,a5,s11
1c00aaf4:	000bcd83          	lbu	s11,0(s7)
1c00aaf8:	fd078a13          	addi	s4,a5,-48
1c00aafc:	8662                	mv	a2,s8
1c00aafe:	fd0d8793          	addi	a5,s11,-48
1c00ab02:	8c5e                	mv	s8,s7
1c00ab04:	fef572e3          	bgeu	a0,a5,1c00aae8 <pos_libc_prf+0x50a>
1c00ab08:	0609                	addi	a2,a2,2
1c00ab0a:	0c800793          	li	a5,200
1c00ab0e:	c147f1e3          	bgeu	a5,s4,1c00a710 <pos_libc_prf+0x132>
1c00ab12:	0c800a13          	li	s4,200
1c00ab16:	beed                	j	1c00a710 <pos_libc_prf+0x132>
1c00ab18:	0c800793          	li	a5,200
1c00ab1c:	b3b7dae3          	bge	a5,s11,1c00a650 <pos_libc_prf+0x72>
1c00ab20:	547d                	li	s0,-1
1c00ab22:	be1d                	j	1c00a658 <pos_libc_prf+0x7a>
1c00ab24:	47b2                	lw	a5,12(sp)
1c00ab26:	0007aa03          	lw	s4,0(a5)
1c00ab2a:	00478693          	addi	a3,a5,4
1c00ab2e:	000a5663          	bgez	s4,1c00ab3a <pos_libc_prf+0x55c>
1c00ab32:	4785                	li	a5,1
1c00ab34:	41400a33          	neg	s4,s4
1c00ab38:	c03e                	sw	a5,0(sp)
1c00ab3a:	000bcd83          	lbu	s11,0(s7)
1c00ab3e:	c636                	sw	a3,12(sp)
1c00ab40:	002c0613          	addi	a2,s8,2
1c00ab44:	b7d9                	j	1c00ab0a <pos_libc_prf+0x52c>
1c00ab46:	b00d89e3          	beqz	s11,1c00a658 <pos_libc_prf+0x7a>
1c00ab4a:	b619                	j	1c00a650 <pos_libc_prf+0x72>
1c00ab4c:	06400793          	li	a5,100
1c00ab50:	4afd8363          	beq	s11,a5,1c00aff6 <pos_libc_prf+0xa18>
1c00ab54:	19b7d963          	bge	a5,s11,1c00ace6 <pos_libc_prf+0x708>
1c00ab58:	f9bd8793          	addi	a5,s11,-101
1c00ab5c:	4689                	li	a3,2
1c00ab5e:	aef6e9e3          	bltu	a3,a5,1c00a650 <pos_libc_prf+0x72>
1c00ab62:	47b2                	lw	a5,12(sp)
1c00ab64:	7ff00893          	li	a7,2047
1c00ab68:	00778b13          	addi	s6,a5,7
1c00ab6c:	ff8b7b13          	andi	s6,s6,-8
1c00ab70:	004b2783          	lw	a5,4(s6)
1c00ab74:	000b2603          	lw	a2,0(s6)
1c00ab78:	0b21                	addi	s6,s6,8
1c00ab7a:	00b79693          	slli	a3,a5,0xb
1c00ab7e:	01565813          	srli	a6,a2,0x15
1c00ab82:	0147d513          	srli	a0,a5,0x14
1c00ab86:	00d866b3          	or	a3,a6,a3
1c00ab8a:	0686                	slli	a3,a3,0x1
1c00ab8c:	7ff57813          	andi	a6,a0,2047
1c00ab90:	00b61313          	slli	t1,a2,0xb
1c00ab94:	0016d513          	srli	a0,a3,0x1
1c00ab98:	86be                	mv	a3,a5
1c00ab9a:	c11818e3          	bne	a6,a7,1c00a7aa <pos_libc_prf+0x1cc>
1c00ab9e:	105c                	addi	a5,sp,36
1c00aba0:	0006d863          	bgez	a3,1c00abb0 <pos_libc_prf+0x5d2>
1c00aba4:	02d00793          	li	a5,45
1c00aba8:	02f10223          	sb	a5,36(sp)
1c00abac:	02510793          	addi	a5,sp,37
1c00abb0:	00a36633          	or	a2,t1,a0
1c00abb4:	fbfd8593          	addi	a1,s11,-65
1c00abb8:	00378993          	addi	s3,a5,3
1c00abbc:	46e5                	li	a3,25
1c00abbe:	0c0612e3          	bnez	a2,1c00b482 <pos_libc_prf+0xea4>
1c00abc2:	10b6e5e3          	bltu	a3,a1,1c00b4cc <pos_libc_prf+0xeee>
1c00abc6:	04900693          	li	a3,73
1c00abca:	00d78023          	sb	a3,0(a5)
1c00abce:	04e00693          	li	a3,78
1c00abd2:	00d780a3          	sb	a3,1(a5)
1c00abd6:	04600693          	li	a3,70
1c00abda:	00d78123          	sb	a3,2(a5)
1c00abde:	000781a3          	sb	zero,3(a5)
1c00abe2:	105c                	addi	a5,sp,36
1c00abe4:	40f989b3          	sub	s3,s3,a5
1c00abe8:	47a2                	lw	a5,8(sp)
1c00abea:	4712                	lw	a4,4(sp)
1c00abec:	8fd9                	or	a5,a5,a4
1c00abee:	ce3e                	sw	a5,28(sp)
1c00abf0:	5e079b63          	bnez	a5,1c00b1e6 <pos_libc_prf+0xc08>
1c00abf4:	02414683          	lbu	a3,36(sp)
1c00abf8:	02d00793          	li	a5,45
1c00abfc:	5ef68563          	beq	a3,a5,1c00b1e6 <pos_libc_prf+0xc08>
1c00ac00:	0c800793          	li	a5,200
1c00ac04:	0d37d863          	bge	a5,s3,1c00acd4 <pos_libc_prf+0x6f6>
1c00ac08:	547d                	li	s0,-1
1c00ac0a:	b4b9                	j	1c00a658 <pos_libc_prf+0x7a>
1c00ac0c:	07000793          	li	a5,112
1c00ac10:	46fd8f63          	beq	s11,a5,1c00b08e <pos_libc_prf+0xab0>
1c00ac14:	1bb7d663          	bge	a5,s11,1c00adc0 <pos_libc_prf+0x7e2>
1c00ac18:	07500793          	li	a5,117
1c00ac1c:	52fd8763          	beq	s11,a5,1c00b14a <pos_libc_prf+0xb6c>
1c00ac20:	07800793          	li	a5,120
1c00ac24:	16fd9163          	bne	s11,a5,1c00ad86 <pos_libc_prf+0x7a8>
1c00ac28:	47b2                	lw	a5,12(sp)
1c00ac2a:	1054                	addi	a3,sp,36
1c00ac2c:	4390                	lw	a2,0(a5)
1c00ac2e:	00478b13          	addi	s6,a5,4
1c00ac32:	47f2                	lw	a5,28(sp)
1c00ac34:	28079163          	bnez	a5,1c00aeb6 <pos_libc_prf+0x8d8>
1c00ac38:	87b6                	mv	a5,a3
1c00ac3a:	4ea5                	li	t4,9
1c00ac3c:	4e3d                	li	t3,15
1c00ac3e:	a039                	j	1c00ac4c <pos_libc_prf+0x66e>
1c00ac40:	ff098fa3          	sb	a6,-1(s3)
1c00ac44:	02ce7663          	bgeu	t3,a2,1c00ac70 <pos_libc_prf+0x692>
1c00ac48:	862a                	mv	a2,a0
1c00ac4a:	87ce                	mv	a5,s3
1c00ac4c:	00f67593          	andi	a1,a2,15
1c00ac50:	00178993          	addi	s3,a5,1
1c00ac54:	05758813          	addi	a6,a1,87
1c00ac58:	03058713          	addi	a4,a1,48
1c00ac5c:	00465513          	srli	a0,a2,0x4
1c00ac60:	febee0e3          	bltu	t4,a1,1c00ac40 <pos_libc_prf+0x662>
1c00ac64:	00e78023          	sb	a4,0(a5)
1c00ac68:	00178993          	addi	s3,a5,1
1c00ac6c:	fcce6ee3          	bltu	t3,a2,1c00ac48 <pos_libc_prf+0x66a>
1c00ac70:	40d98633          	sub	a2,s3,a3
1c00ac74:	01565c63          	bge	a2,s5,1c00ac8c <pos_libc_prf+0x6ae>
1c00ac78:	03000513          	li	a0,48
1c00ac7c:	87ce                	mv	a5,s3
1c00ac7e:	0985                	addi	s3,s3,1
1c00ac80:	40d98733          	sub	a4,s3,a3
1c00ac84:	fea98fa3          	sb	a0,-1(s3)
1c00ac88:	ff574ae3          	blt	a4,s5,1c00ac7c <pos_libc_prf+0x69e>
1c00ac8c:	00098023          	sb	zero,0(s3)
1c00ac90:	00f6fe63          	bgeu	a3,a5,1c00acac <pos_libc_prf+0x6ce>
1c00ac94:	0006c603          	lbu	a2,0(a3)
1c00ac98:	0007c703          	lbu	a4,0(a5)
1c00ac9c:	0685                	addi	a3,a3,1
1c00ac9e:	00c78023          	sb	a2,0(a5)
1c00aca2:	fee68fa3          	sb	a4,-1(a3)
1c00aca6:	17fd                	addi	a5,a5,-1
1c00aca8:	fef6e6e3          	bltu	a3,a5,1c00ac94 <pos_libc_prf+0x6b6>
1c00acac:	05800793          	li	a5,88
1c00acb0:	66fd8463          	beq	s11,a5,1c00b318 <pos_libc_prf+0xd3a>
1c00acb4:	105c                	addi	a5,sp,36
1c00acb6:	40f989b3          	sub	s3,s3,a5
1c00acba:	47f2                	lw	a5,28(sp)
1c00acbc:	c399                	beqz	a5,1c00acc2 <pos_libc_prf+0x6e4>
1c00acbe:	4789                	li	a5,2
1c00acc0:	ce3e                	sw	a5,28(sp)
1c00acc2:	57fd                	li	a5,-1
1c00acc4:	f2fa8ee3          	beq	s5,a5,1c00ac00 <pos_libc_prf+0x622>
1c00acc8:	0c800793          	li	a5,200
1c00accc:	e537cae3          	blt	a5,s3,1c00ab20 <pos_libc_prf+0x542>
1c00acd0:	02000913          	li	s2,32
1c00acd4:	00198613          	addi	a2,s3,1
1c00acd8:	0349c963          	blt	s3,s4,1c00ad0a <pos_libc_prf+0x72c>
1c00acdc:	c65a                	sw	s6,12(sp)
1c00acde:	8a4e                	mv	s4,s3
1c00ace0:	1a0a1663          	bnez	s4,1c00ae8c <pos_libc_prf+0x8ae>
1c00ace4:	b2b5                	j	1c00a650 <pos_libc_prf+0x72>
1c00ace6:	06300793          	li	a5,99
1c00acea:	96fd93e3          	bne	s11,a5,1c00a650 <pos_libc_prf+0x72>
1c00acee:	4732                	lw	a4,12(sp)
1c00acf0:	020102a3          	sb	zero,37(sp)
1c00acf4:	4785                	li	a5,1
1c00acf6:	4314                	lw	a3,0(a4)
1c00acf8:	00470b13          	addi	s6,a4,4
1c00acfc:	02d10223          	sb	a3,36(sp)
1c00ad00:	1947d463          	bge	a5,s4,1c00ae88 <pos_libc_prf+0x8aa>
1c00ad04:	4609                	li	a2,2
1c00ad06:	4985                	li	s3,1
1c00ad08:	ce02                	sw	zero,28(sp)
1c00ad0a:	4782                	lw	a5,0(sp)
1c00ad0c:	4e078463          	beqz	a5,1c00b1f4 <pos_libc_prf+0xc16>
1c00ad10:	413a07b3          	sub	a5,s4,s3
1c00ad14:	4585                	li	a1,1
1c00ad16:	0149d363          	bge	s3,s4,1c00ad1c <pos_libc_prf+0x73e>
1c00ad1a:	85be                	mv	a1,a5
1c00ad1c:	17fd                	addi	a5,a5,-1
1c00ad1e:	0037b793          	sltiu	a5,a5,3
1c00ad22:	eb95                	bnez	a5,1c00ad56 <pos_libc_prf+0x778>
1c00ad24:	0349d963          	bge	s3,s4,1c00ad56 <pos_libc_prf+0x778>
1c00ad28:	105c                	addi	a5,sp,36
1c00ad2a:	97ce                	add	a5,a5,s3
1c00ad2c:	ffc5f613          	andi	a2,a1,-4
1c00ad30:	963e                	add	a2,a2,a5
1c00ad32:	02000693          	li	a3,32
1c00ad36:	00d78023          	sb	a3,0(a5)
1c00ad3a:	00d780a3          	sb	a3,1(a5)
1c00ad3e:	00d78123          	sb	a3,2(a5)
1c00ad42:	00d781a3          	sb	a3,3(a5)
1c00ad46:	0791                	addi	a5,a5,4
1c00ad48:	fef617e3          	bne	a2,a5,1c00ad36 <pos_libc_prf+0x758>
1c00ad4c:	ffc5f793          	andi	a5,a1,-4
1c00ad50:	99be                	add	s3,s3,a5
1c00ad52:	02b78663          	beq	a5,a1,1c00ad7e <pos_libc_prf+0x7a0>
1c00ad56:	199c                	addi	a5,sp,240
1c00ad58:	97ce                	add	a5,a5,s3
1c00ad5a:	02000693          	li	a3,32
1c00ad5e:	f2d78a23          	sb	a3,-204(a5)
1c00ad62:	00198793          	addi	a5,s3,1
1c00ad66:	0147dc63          	bge	a5,s4,1c00ad7e <pos_libc_prf+0x7a0>
1c00ad6a:	1998                	addi	a4,sp,240
1c00ad6c:	97ba                	add	a5,a5,a4
1c00ad6e:	f2d78a23          	sb	a3,-204(a5)
1c00ad72:	0989                	addi	s3,s3,2
1c00ad74:	0149d563          	bge	s3,s4,1c00ad7e <pos_libc_prf+0x7a0>
1c00ad78:	99ba                	add	s3,s3,a4
1c00ad7a:	f2d98a23          	sb	a3,-204(s3)
1c00ad7e:	c65a                	sw	s6,12(sp)
1c00ad80:	100a1663          	bnez	s4,1c00ae8c <pos_libc_prf+0x8ae>
1c00ad84:	b0f1                	j	1c00a650 <pos_libc_prf+0x72>
1c00ad86:	07300793          	li	a5,115
1c00ad8a:	d8fd97e3          	bne	s11,a5,1c00ab18 <pos_libc_prf+0x53a>
1c00ad8e:	47b2                	lw	a5,12(sp)
1c00ad90:	4981                	li	s3,0
1c00ad92:	0c800693          	li	a3,200
1c00ad96:	438c                	lw	a1,0(a5)
1c00ad98:	00478b13          	addi	s6,a5,4
1c00ad9c:	a021                	j	1c00ada4 <pos_libc_prf+0x7c6>
1c00ad9e:	0985                	addi	s3,s3,1
1c00ada0:	6ad98163          	beq	s3,a3,1c00b442 <pos_libc_prf+0xe64>
1c00ada4:	013587b3          	add	a5,a1,s3
1c00ada8:	0007c783          	lbu	a5,0(a5)
1c00adac:	fbed                	bnez	a5,1c00ad9e <pos_libc_prf+0x7c0>
1c00adae:	000ac563          	bltz	s5,1c00adb8 <pos_libc_prf+0x7da>
1c00adb2:	013ad363          	bge	s5,s3,1c00adb8 <pos_libc_prf+0x7da>
1c00adb6:	89d6                	mv	s3,s5
1c00adb8:	5a099163          	bnez	s3,1c00b35a <pos_libc_prf+0xd7c>
1c00adbc:	c65a                	sw	s6,12(sp)
1c00adbe:	b849                	j	1c00a650 <pos_libc_prf+0x72>
1c00adc0:	06e00793          	li	a5,110
1c00adc4:	36fd8c63          	beq	s11,a5,1c00b13c <pos_libc_prf+0xb5e>
1c00adc8:	06f00793          	li	a5,111
1c00adcc:	88fd92e3          	bne	s11,a5,1c00a650 <pos_libc_prf+0x72>
1c00add0:	47b2                	lw	a5,12(sp)
1c00add2:	4390                	lw	a2,0(a5)
1c00add4:	00478b13          	addi	s6,a5,4
1c00add8:	47f2                	lw	a5,28(sp)
1c00adda:	c7f5                	beqz	a5,1c00aec6 <pos_libc_prf+0x8e8>
1c00addc:	03000793          	li	a5,48
1c00ade0:	02f10223          	sb	a5,36(sp)
1c00ade4:	02510693          	addi	a3,sp,37
1c00ade8:	60060b63          	beqz	a2,1c00b3fe <pos_libc_prf+0xe20>
1c00adec:	89b6                	mv	s3,a3
1c00adee:	481d                	li	a6,7
1c00adf0:	00767713          	andi	a4,a2,7
1c00adf4:	03070713          	addi	a4,a4,48
1c00adf8:	85b2                	mv	a1,a2
1c00adfa:	00e98023          	sb	a4,0(s3)
1c00adfe:	87ce                	mv	a5,s3
1c00ae00:	820d                	srli	a2,a2,0x3
1c00ae02:	0985                	addi	s3,s3,1
1c00ae04:	feb866e3          	bltu	a6,a1,1c00adf0 <pos_libc_prf+0x812>
1c00ae08:	40d98633          	sub	a2,s3,a3
1c00ae0c:	01565c63          	bge	a2,s5,1c00ae24 <pos_libc_prf+0x846>
1c00ae10:	03000593          	li	a1,48
1c00ae14:	87ce                	mv	a5,s3
1c00ae16:	0985                	addi	s3,s3,1
1c00ae18:	40d98733          	sub	a4,s3,a3
1c00ae1c:	feb98fa3          	sb	a1,-1(s3)
1c00ae20:	ff574ae3          	blt	a4,s5,1c00ae14 <pos_libc_prf+0x836>
1c00ae24:	00098023          	sb	zero,0(s3)
1c00ae28:	00f6fe63          	bgeu	a3,a5,1c00ae44 <pos_libc_prf+0x866>
1c00ae2c:	0006c603          	lbu	a2,0(a3)
1c00ae30:	0007c703          	lbu	a4,0(a5)
1c00ae34:	0685                	addi	a3,a3,1
1c00ae36:	00c78023          	sb	a2,0(a5)
1c00ae3a:	fee68fa3          	sb	a4,-1(a3)
1c00ae3e:	17fd                	addi	a5,a5,-1
1c00ae40:	fef6e6e3          	bltu	a3,a5,1c00ae2c <pos_libc_prf+0x84e>
1c00ae44:	1058                	addi	a4,sp,36
1c00ae46:	57fd                	li	a5,-1
1c00ae48:	40e989b3          	sub	s3,s3,a4
1c00ae4c:	36fa8763          	beq	s5,a5,1c00b1ba <pos_libc_prf+0xbdc>
1c00ae50:	0c800793          	li	a5,200
1c00ae54:	cd37c6e3          	blt	a5,s3,1c00ab20 <pos_libc_prf+0x542>
1c00ae58:	ce02                	sw	zero,28(sp)
1c00ae5a:	bd9d                	j	1c00acd0 <pos_libc_prf+0x6f2>
1c00ae5c:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00ae60:	02a00793          	li	a5,42
1c00ae64:	00160693          	addi	a3,a2,1
1c00ae68:	14f59b63          	bne	a1,a5,1c00afbe <pos_libc_prf+0x9e0>
1c00ae6c:	47b2                	lw	a5,12(sp)
1c00ae6e:	00164d83          	lbu	s11,1(a2)
1c00ae72:	0609                	addi	a2,a2,2
1c00ae74:	0007aa83          	lw	s5,0(a5)
1c00ae78:	0791                	addi	a5,a5,4
1c00ae7a:	c63e                	sw	a5,12(sp)
1c00ae7c:	0c800793          	li	a5,200
1c00ae80:	8957dde3          	bge	a5,s5,1c00a71a <pos_libc_prf+0x13c>
1c00ae84:	5afd                	li	s5,-1
1c00ae86:	b851                	j	1c00a71a <pos_libc_prf+0x13c>
1c00ae88:	c65a                	sw	s6,12(sp)
1c00ae8a:	4a05                	li	s4,1
1c00ae8c:	02410913          	addi	s2,sp,36
1c00ae90:	59fd                	li	s3,-1
1c00ae92:	41240ab3          	sub	s5,s0,s2
1c00ae96:	9a4a                	add	s4,s4,s2
1c00ae98:	a029                	j	1c00aea2 <pos_libc_prf+0x8c4>
1c00ae9a:	012a8433          	add	s0,s5,s2
1c00ae9e:	fb490963          	beq	s2,s4,1c00a650 <pos_libc_prf+0x72>
1c00aea2:	00094503          	lbu	a0,0(s2)
1c00aea6:	85a6                	mv	a1,s1
1c00aea8:	0905                	addi	s2,s2,1
1c00aeaa:	9c82                	jalr	s9
1c00aeac:	ff3517e3          	bne	a0,s3,1c00ae9a <pos_libc_prf+0x8bc>
1c00aeb0:	547d                	li	s0,-1
1c00aeb2:	fa6ff06f          	j	1c00a658 <pos_libc_prf+0x7a>
1c00aeb6:	77e1                	lui	a5,0xffff8
1c00aeb8:	8307c793          	xori	a5,a5,-2000
1c00aebc:	02f11223          	sh	a5,36(sp)
1c00aec0:	02610693          	addi	a3,sp,38
1c00aec4:	bb95                	j	1c00ac38 <pos_libc_prf+0x65a>
1c00aec6:	1054                	addi	a3,sp,36
1c00aec8:	b715                	j	1c00adec <pos_libc_prf+0x80e>
1c00aeca:	5c605a63          	blez	t1,1c00b49e <pos_libc_prf+0xec0>
1c00aece:	006f09b3          	add	s3,t5,t1
1c00aed2:	4541                	li	a0,16
1c00aed4:	03000e13          	li	t3,48
1c00aed8:	00279713          	slli	a4,a5,0x2
1c00aedc:	01e7d593          	srli	a1,a5,0x1e
1c00aee0:	00289693          	slli	a3,a7,0x2
1c00aee4:	00f70333          	add	t1,a4,a5
1c00aee8:	8ecd                	or	a3,a3,a1
1c00aeea:	96c6                	add	a3,a3,a7
1c00aeec:	00e33733          	sltu	a4,t1,a4
1c00aef0:	9736                	add	a4,a4,a3
1c00aef2:	0706                	slli	a4,a4,0x1
1c00aef4:	01f35693          	srli	a3,t1,0x1f
1c00aef8:	8f55                	or	a4,a4,a3
1c00aefa:	01c75693          	srli	a3,a4,0x1c
1c00aefe:	03068693          	addi	a3,a3,48
1c00af02:	4ea05463          	blez	a0,1c00b3ea <pos_libc_prf+0xe0c>
1c00af06:	fed80fa3          	sb	a3,-1(a6)
1c00af0a:	46d2                	lw	a3,20(sp)
1c00af0c:	157d                	addi	a0,a0,-1
1c00af0e:	00131793          	slli	a5,t1,0x1
1c00af12:	00d778b3          	and	a7,a4,a3
1c00af16:	4d099e63          	bne	s3,a6,1c00b3f2 <pos_libc_prf+0xe14>
1c00af1a:	4301                	li	t1,0
1c00af1c:	4772                	lw	a4,28(sp)
1c00af1e:	01576bb3          	or	s7,a4,s5
1c00af22:	060b8863          	beqz	s7,1c00af92 <pos_libc_prf+0x9b4>
1c00af26:	02e00693          	li	a3,46
1c00af2a:	00d98023          	sb	a3,0(s3)
1c00af2e:	00198e93          	addi	t4,s3,1
1c00af32:	5c0a8763          	beqz	s5,1c00b500 <pos_libc_prf+0xf22>
1c00af36:	001a8693          	addi	a3,s5,1
1c00af3a:	99b6                	add	s3,s3,a3
1c00af3c:	8876                	mv	a6,t4
1c00af3e:	03000f13          	li	t5,48
1c00af42:	0805                	addi	a6,a6,1
1c00af44:	4a031963          	bnez	t1,1c00b3f6 <pos_libc_prf+0xe18>
1c00af48:	00279713          	slli	a4,a5,0x2
1c00af4c:	01e7d593          	srli	a1,a5,0x1e
1c00af50:	00289693          	slli	a3,a7,0x2
1c00af54:	00f70e33          	add	t3,a4,a5
1c00af58:	8ecd                	or	a3,a3,a1
1c00af5a:	96c6                	add	a3,a3,a7
1c00af5c:	00ee3733          	sltu	a4,t3,a4
1c00af60:	9736                	add	a4,a4,a3
1c00af62:	0706                	slli	a4,a4,0x1
1c00af64:	01fe5693          	srli	a3,t3,0x1f
1c00af68:	8f55                	or	a4,a4,a3
1c00af6a:	01c75593          	srli	a1,a4,0x1c
1c00af6e:	03000693          	li	a3,48
1c00af72:	00a05a63          	blez	a0,1c00af86 <pos_libc_prf+0x9a8>
1c00af76:	03058693          	addi	a3,a1,48
1c00af7a:	45d2                	lw	a1,20(sp)
1c00af7c:	157d                	addi	a0,a0,-1
1c00af7e:	001e1793          	slli	a5,t3,0x1
1c00af82:	00b778b3          	and	a7,a4,a1
1c00af86:	fed80fa3          	sb	a3,-1(a6)
1c00af8a:	fb099ce3          	bne	s3,a6,1c00af42 <pos_libc_prf+0x964>
1c00af8e:	015e89b3          	add	s3,t4,s5
1c00af92:	b0060ee3          	beqz	a2,1c00aaae <pos_libc_prf+0x4d0>
1c00af96:	03000613          	li	a2,48
1c00af9a:	fff9c783          	lbu	a5,-1(s3)
1c00af9e:	86ce                	mv	a3,s3
1c00afa0:	19fd                	addi	s3,s3,-1
1c00afa2:	fec78ce3          	beq	a5,a2,1c00af9a <pos_libc_prf+0x9bc>
1c00afa6:	02e00613          	li	a2,46
1c00afaa:	aec78ce3          	beq	a5,a2,1c00aaa2 <pos_libc_prf+0x4c4>
1c00afae:	89b6                	mv	s3,a3
1c00afb0:	bccd                	j	1c00aaa2 <pos_libc_prf+0x4c4>
1c00afb2:	fff88fa3          	sb	t6,-1(a7)
1c00afb6:	ab1f11e3          	bne	t5,a7,1c00aa58 <pos_libc_prf+0x47a>
1c00afba:	99d6                	add	s3,s3,s5
1c00afbc:	b4cd                	j	1c00aa9e <pos_libc_prf+0x4c0>
1c00afbe:	fd058713          	addi	a4,a1,-48
1c00afc2:	47a5                	li	a5,9
1c00afc4:	8dae                	mv	s11,a1
1c00afc6:	4a81                	li	s5,0
1c00afc8:	4525                	li	a0,9
1c00afca:	00e7f463          	bgeu	a5,a4,1c00afd2 <pos_libc_prf+0x9f4>
1c00afce:	a199                	j	1c00b414 <pos_libc_prf+0xe36>
1c00afd0:	0685                	addi	a3,a3,1
1c00afd2:	002a9793          	slli	a5,s5,0x2
1c00afd6:	97d6                	add	a5,a5,s5
1c00afd8:	0786                	slli	a5,a5,0x1
1c00afda:	97ee                	add	a5,a5,s11
1c00afdc:	0006cd83          	lbu	s11,0(a3)
1c00afe0:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00afe4:	8732                	mv	a4,a2
1c00afe6:	fd0d8793          	addi	a5,s11,-48
1c00afea:	8636                	mv	a2,a3
1c00afec:	fef572e3          	bgeu	a0,a5,1c00afd0 <pos_libc_prf+0x9f2>
1c00aff0:	00270613          	addi	a2,a4,2
1c00aff4:	b561                	j	1c00ae7c <pos_libc_prf+0x89e>
1c00aff6:	47b2                	lw	a5,12(sp)
1c00aff8:	0007a303          	lw	t1,0(a5)
1c00affc:	00478b13          	addi	s6,a5,4
1c00b000:	2e034263          	bltz	t1,1c00b2e4 <pos_libc_prf+0xd06>
1c00b004:	47a2                	lw	a5,8(sp)
1c00b006:	861a                	mv	a2,t1
1c00b008:	3c078663          	beqz	a5,1c00b3d4 <pos_libc_prf+0xdf6>
1c00b00c:	02b00793          	li	a5,43
1c00b010:	02f10223          	sb	a5,36(sp)
1c00b014:	02510693          	addi	a3,sp,37
1c00b018:	89b6                	mv	s3,a3
1c00b01a:	4529                	li	a0,10
1c00b01c:	48a5                	li	a7,9
1c00b01e:	02a67733          	remu	a4,a2,a0
1c00b022:	87ce                	mv	a5,s3
1c00b024:	0985                	addi	s3,s3,1
1c00b026:	85b2                	mv	a1,a2
1c00b028:	03070713          	addi	a4,a4,48
1c00b02c:	fee98fa3          	sb	a4,-1(s3)
1c00b030:	02a65633          	divu	a2,a2,a0
1c00b034:	feb8e5e3          	bltu	a7,a1,1c00b01e <pos_libc_prf+0xa40>
1c00b038:	40d98633          	sub	a2,s3,a3
1c00b03c:	01565c63          	bge	a2,s5,1c00b054 <pos_libc_prf+0xa76>
1c00b040:	03000593          	li	a1,48
1c00b044:	87ce                	mv	a5,s3
1c00b046:	0985                	addi	s3,s3,1
1c00b048:	40d98733          	sub	a4,s3,a3
1c00b04c:	feb98fa3          	sb	a1,-1(s3)
1c00b050:	ff574ae3          	blt	a4,s5,1c00b044 <pos_libc_prf+0xa66>
1c00b054:	00098023          	sb	zero,0(s3)
1c00b058:	00f6fe63          	bgeu	a3,a5,1c00b074 <pos_libc_prf+0xa96>
1c00b05c:	0006c603          	lbu	a2,0(a3)
1c00b060:	0007c703          	lbu	a4,0(a5)
1c00b064:	0685                	addi	a3,a3,1
1c00b066:	00c78023          	sb	a2,0(a5)
1c00b06a:	fee68fa3          	sb	a4,-1(a3)
1c00b06e:	17fd                	addi	a5,a5,-1
1c00b070:	fef6e6e3          	bltu	a3,a5,1c00b05c <pos_libc_prf+0xa7e>
1c00b074:	4712                	lw	a4,4(sp)
1c00b076:	47a2                	lw	a5,8(sp)
1c00b078:	8fd9                	or	a5,a5,a4
1c00b07a:	ce3e                	sw	a5,28(sp)
1c00b07c:	1058                	addi	a4,sp,36
1c00b07e:	40e989b3          	sub	s3,s3,a4
1c00b082:	c40790e3          	bnez	a5,1c00acc2 <pos_libc_prf+0x6e4>
1c00b086:	01f35793          	srli	a5,t1,0x1f
1c00b08a:	ce3e                	sw	a5,28(sp)
1c00b08c:	b91d                	j	1c00acc2 <pos_libc_prf+0x6e4>
1c00b08e:	47b2                	lw	a5,12(sp)
1c00b090:	02610613          	addi	a2,sp,38
1c00b094:	4ea5                	li	t4,9
1c00b096:	438c                	lw	a1,0(a5)
1c00b098:	00478b13          	addi	s6,a5,4
1c00b09c:	77e1                	lui	a5,0xffff8
1c00b09e:	8307c793          	xori	a5,a5,-2000
1c00b0a2:	02f11223          	sh	a5,36(sp)
1c00b0a6:	4e3d                	li	t3,15
1c00b0a8:	87b2                	mv	a5,a2
1c00b0aa:	a039                	j	1c00b0b8 <pos_libc_prf+0xada>
1c00b0ac:	ff168fa3          	sb	a7,-1(a3)
1c00b0b0:	02be7663          	bgeu	t3,a1,1c00b0dc <pos_libc_prf+0xafe>
1c00b0b4:	85c2                	mv	a1,a6
1c00b0b6:	87b6                	mv	a5,a3
1c00b0b8:	00f5f513          	andi	a0,a1,15
1c00b0bc:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00b0c0:	05750893          	addi	a7,a0,87
1c00b0c4:	03050713          	addi	a4,a0,48
1c00b0c8:	0045d813          	srli	a6,a1,0x4
1c00b0cc:	feaee0e3          	bltu	t4,a0,1c00b0ac <pos_libc_prf+0xace>
1c00b0d0:	00e78023          	sb	a4,0(a5)
1c00b0d4:	00178693          	addi	a3,a5,1
1c00b0d8:	fcbe6ee3          	bltu	t3,a1,1c00b0b4 <pos_libc_prf+0xad6>
1c00b0dc:	40c689b3          	sub	s3,a3,a2
1c00b0e0:	459d                	li	a1,7
1c00b0e2:	0135cc63          	blt	a1,s3,1c00b0fa <pos_libc_prf+0xb1c>
1c00b0e6:	03000513          	li	a0,48
1c00b0ea:	87b6                	mv	a5,a3
1c00b0ec:	0685                	addi	a3,a3,1
1c00b0ee:	40c689b3          	sub	s3,a3,a2
1c00b0f2:	fea68fa3          	sb	a0,-1(a3)
1c00b0f6:	ff35dae3          	bge	a1,s3,1c00b0ea <pos_libc_prf+0xb0c>
1c00b0fa:	00068023          	sb	zero,0(a3)
1c00b0fe:	86b2                	mv	a3,a2
1c00b100:	00f67e63          	bgeu	a2,a5,1c00b11c <pos_libc_prf+0xb3e>
1c00b104:	0006c603          	lbu	a2,0(a3)
1c00b108:	0007c703          	lbu	a4,0(a5)
1c00b10c:	0685                	addi	a3,a3,1
1c00b10e:	00c78023          	sb	a2,0(a5)
1c00b112:	fee68fa3          	sb	a4,-1(a3)
1c00b116:	17fd                	addi	a5,a5,-1
1c00b118:	fef6e6e3          	bltu	a3,a5,1c00b104 <pos_libc_prf+0xb26>
1c00b11c:	57fd                	li	a5,-1
1c00b11e:	0989                	addi	s3,s3,2
1c00b120:	22fa8663          	beq	s5,a5,1c00b34c <pos_libc_prf+0xd6e>
1c00b124:	0c800793          	li	a5,200
1c00b128:	9f37cce3          	blt	a5,s3,1c00ab20 <pos_libc_prf+0x542>
1c00b12c:	02000913          	li	s2,32
1c00b130:	0b49d863          	bge	s3,s4,1c00b1e0 <pos_libc_prf+0xc02>
1c00b134:	00198613          	addi	a2,s3,1
1c00b138:	ce02                	sw	zero,28(sp)
1c00b13a:	bec1                	j	1c00ad0a <pos_libc_prf+0x72c>
1c00b13c:	4732                	lw	a4,12(sp)
1c00b13e:	431c                	lw	a5,0(a4)
1c00b140:	0711                	addi	a4,a4,4
1c00b142:	c63a                	sw	a4,12(sp)
1c00b144:	c380                	sw	s0,0(a5)
1c00b146:	d0aff06f          	j	1c00a650 <pos_libc_prf+0x72>
1c00b14a:	47b2                	lw	a5,12(sp)
1c00b14c:	4529                	li	a0,10
1c00b14e:	48a5                	li	a7,9
1c00b150:	4390                	lw	a2,0(a5)
1c00b152:	00478b13          	addi	s6,a5,4
1c00b156:	105c                	addi	a5,sp,36
1c00b158:	02a67733          	remu	a4,a2,a0
1c00b15c:	86be                	mv	a3,a5
1c00b15e:	0785                	addi	a5,a5,1
1c00b160:	85b2                	mv	a1,a2
1c00b162:	03070713          	addi	a4,a4,48
1c00b166:	fee78fa3          	sb	a4,-1(a5)
1c00b16a:	02a65633          	divu	a2,a2,a0
1c00b16e:	feb8e5e3          	bltu	a7,a1,1c00b158 <pos_libc_prf+0xb7a>
1c00b172:	1058                	addi	a4,sp,36
1c00b174:	40e789b3          	sub	s3,a5,a4
1c00b178:	0159dd63          	bge	s3,s5,1c00b192 <pos_libc_prf+0xbb4>
1c00b17c:	03000613          	li	a2,48
1c00b180:	86be                	mv	a3,a5
1c00b182:	1058                	addi	a4,sp,36
1c00b184:	0785                	addi	a5,a5,1
1c00b186:	40e789b3          	sub	s3,a5,a4
1c00b18a:	fec78fa3          	sb	a2,-1(a5)
1c00b18e:	ff59c9e3          	blt	s3,s5,1c00b180 <pos_libc_prf+0xba2>
1c00b192:	00078023          	sb	zero,0(a5)
1c00b196:	105c                	addi	a5,sp,36
1c00b198:	00d7fe63          	bgeu	a5,a3,1c00b1b4 <pos_libc_prf+0xbd6>
1c00b19c:	0007c603          	lbu	a2,0(a5)
1c00b1a0:	0006c703          	lbu	a4,0(a3)
1c00b1a4:	0785                	addi	a5,a5,1
1c00b1a6:	00c68023          	sb	a2,0(a3)
1c00b1aa:	fee78fa3          	sb	a4,-1(a5)
1c00b1ae:	16fd                	addi	a3,a3,-1
1c00b1b0:	fed7e6e3          	bltu	a5,a3,1c00b19c <pos_libc_prf+0xbbe>
1c00b1b4:	57fd                	li	a5,-1
1c00b1b6:	c8fa9de3          	bne	s5,a5,1c00ae50 <pos_libc_prf+0x872>
1c00b1ba:	0c800793          	li	a5,200
1c00b1be:	9737c1e3          	blt	a5,s3,1c00ab20 <pos_libc_prf+0x542>
1c00b1c2:	ce02                	sw	zero,28(sp)
1c00b1c4:	be01                	j	1c00acd4 <pos_libc_prf+0x6f6>
1c00b1c6:	85a6                	mv	a1,s1
1c00b1c8:	02500513          	li	a0,37
1c00b1cc:	9c82                	jalr	s9
1c00b1ce:	57fd                	li	a5,-1
1c00b1d0:	c6f51f63          	bne	a0,a5,1c00a64e <pos_libc_prf+0x70>
1c00b1d4:	547d                	li	s0,-1
1c00b1d6:	c82ff06f          	j	1c00a658 <pos_libc_prf+0x7a>
1c00b1da:	4401                	li	s0,0
1c00b1dc:	c7cff06f          	j	1c00a658 <pos_libc_prf+0x7a>
1c00b1e0:	8a4e                	mv	s4,s3
1c00b1e2:	c65a                	sw	s6,12(sp)
1c00b1e4:	b165                	j	1c00ae8c <pos_libc_prf+0x8ae>
1c00b1e6:	0c800793          	li	a5,200
1c00b1ea:	9337cbe3          	blt	a5,s3,1c00ab20 <pos_libc_prf+0x542>
1c00b1ee:	4785                	li	a5,1
1c00b1f0:	ce3e                	sw	a5,28(sp)
1c00b1f2:	b4cd                	j	1c00acd4 <pos_libc_prf+0x6f6>
1c00b1f4:	104c                	addi	a1,sp,36
1c00b1f6:	413a09b3          	sub	s3,s4,s3
1c00b1fa:	01358533          	add	a0,a1,s3
1c00b1fe:	9faff0ef          	jal	ra,1c00a3f8 <memmove>
1c00b202:	02000793          	li	a5,32
1c00b206:	24f90863          	beq	s2,a5,1c00b456 <pos_libc_prf+0xe78>
1c00b20a:	47f2                	lw	a5,28(sp)
1c00b20c:	99be                	add	s3,s3,a5
1c00b20e:	47f2                	lw	a5,28(sp)
1c00b210:	b737d7e3          	bge	a5,s3,1c00ad7e <pos_libc_prf+0x7a0>
1c00b214:	4772                	lw	a4,28(sp)
1c00b216:	4789                	li	a5,2
1c00b218:	40e988b3          	sub	a7,s3,a4
1c00b21c:	fff88693          	addi	a3,a7,-1
1c00b220:	06d7f063          	bgeu	a5,a3,1c00b280 <pos_libc_prf+0xca2>
1c00b224:	47e2                	lw	a5,24(sp)
1c00b226:	00891613          	slli	a2,s2,0x8
1c00b22a:	ffc8f593          	andi	a1,a7,-4
1c00b22e:	00f976b3          	and	a3,s2,a5
1c00b232:	8ed1                	or	a3,a3,a2
1c00b234:	01091793          	slli	a5,s2,0x10
1c00b238:	8edd                	or	a3,a3,a5
1c00b23a:	01891613          	slli	a2,s2,0x18
1c00b23e:	8e55                	or	a2,a2,a3
1c00b240:	105c                	addi	a5,sp,36
1c00b242:	00865813          	srli	a6,a2,0x8
1c00b246:	01065513          	srli	a0,a2,0x10
1c00b24a:	97ba                	add	a5,a5,a4
1c00b24c:	95be                	add	a1,a1,a5
1c00b24e:	0306f693          	andi	a3,a3,48
1c00b252:	8261                	srli	a2,a2,0x18
1c00b254:	0ff87813          	andi	a6,a6,255
1c00b258:	0ff57513          	andi	a0,a0,255
1c00b25c:	00d78023          	sb	a3,0(a5)
1c00b260:	010780a3          	sb	a6,1(a5)
1c00b264:	00a78123          	sb	a0,2(a5)
1c00b268:	00c781a3          	sb	a2,3(a5)
1c00b26c:	0791                	addi	a5,a5,4
1c00b26e:	fef597e3          	bne	a1,a5,1c00b25c <pos_libc_prf+0xc7e>
1c00b272:	4772                	lw	a4,28(sp)
1c00b274:	ffc8f793          	andi	a5,a7,-4
1c00b278:	973e                	add	a4,a4,a5
1c00b27a:	ce3a                	sw	a4,28(sp)
1c00b27c:	b11781e3          	beq	a5,a7,1c00ad7e <pos_libc_prf+0x7a0>
1c00b280:	4772                	lw	a4,28(sp)
1c00b282:	199c                	addi	a5,sp,240
1c00b284:	97ba                	add	a5,a5,a4
1c00b286:	f3278a23          	sb	s2,-204(a5)
1c00b28a:	00170793          	addi	a5,a4,1
1c00b28e:	af37d8e3          	bge	a5,s3,1c00ad7e <pos_libc_prf+0x7a0>
1c00b292:	1994                	addi	a3,sp,240
1c00b294:	97b6                	add	a5,a5,a3
1c00b296:	f3278a23          	sb	s2,-204(a5)
1c00b29a:	00270b93          	addi	s7,a4,2
1c00b29e:	af3bd0e3          	bge	s7,s3,1c00ad7e <pos_libc_prf+0x7a0>
1c00b2a2:	9bb6                	add	s7,s7,a3
1c00b2a4:	f32b8a23          	sb	s2,-204(s7)
1c00b2a8:	c65a                	sw	s6,12(sp)
1c00b2aa:	bcd9                	j	1c00ad80 <pos_libc_prf+0x7a2>
1c00b2ac:	01b98023          	sb	s11,0(s3)
1c00b2b0:	02b00613          	li	a2,43
1c00b2b4:	00035663          	bgez	t1,1c00b2c0 <pos_libc_prf+0xce2>
1c00b2b8:	40600333          	neg	t1,t1
1c00b2bc:	02d00613          	li	a2,45
1c00b2c0:	47a9                	li	a5,10
1c00b2c2:	02f346b3          	div	a3,t1,a5
1c00b2c6:	00c980a3          	sb	a2,1(s3)
1c00b2ca:	0991                	addi	s3,s3,4
1c00b2cc:	02f367b3          	rem	a5,t1,a5
1c00b2d0:	03068693          	addi	a3,a3,48
1c00b2d4:	fed98f23          	sb	a3,-2(s3)
1c00b2d8:	03078793          	addi	a5,a5,48
1c00b2dc:	fef98fa3          	sb	a5,-1(s3)
1c00b2e0:	fceff06f          	j	1c00aaae <pos_libc_prf+0x4d0>
1c00b2e4:	02d00793          	li	a5,45
1c00b2e8:	02f10223          	sb	a5,36(sp)
1c00b2ec:	800007b7          	lui	a5,0x80000
1c00b2f0:	14f30e63          	beq	t1,a5,1c00b44c <pos_libc_prf+0xe6e>
1c00b2f4:	40600633          	neg	a2,t1
1c00b2f8:	02510693          	addi	a3,sp,37
1c00b2fc:	bb31                	j	1c00b018 <pos_libc_prf+0xa3a>
1c00b2fe:	4722                	lw	a4,8(sp)
1c00b300:	10070d63          	beqz	a4,1c00b41a <pos_libc_prf+0xe3c>
1c00b304:	02b00693          	li	a3,43
1c00b308:	02d10223          	sb	a3,36(sp)
1c00b30c:	02510f13          	addi	t5,sp,37
1c00b310:	4301                	li	t1,0
1c00b312:	4801                	li	a6,0
1c00b314:	d9cff06f          	j	1c00a8b0 <pos_libc_prf+0x2d2>
1c00b318:	02414783          	lbu	a5,36(sp)
1c00b31c:	98078ce3          	beqz	a5,1c00acb4 <pos_libc_prf+0x6d6>
1c00b320:	1054                	addi	a3,sp,36
1c00b322:	45e5                	li	a1,25
1c00b324:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00b328:	f9f78793          	addi	a5,a5,-97
1c00b32c:	0ff7f793          	andi	a5,a5,255
1c00b330:	00f5e963          	bltu	a1,a5,1c00b342 <pos_libc_prf+0xd64>
1c00b334:	0016c783          	lbu	a5,1(a3)
1c00b338:	00e68023          	sb	a4,0(a3)
1c00b33c:	0685                	addi	a3,a3,1
1c00b33e:	f3fd                	bnez	a5,1c00b324 <pos_libc_prf+0xd46>
1c00b340:	ba95                	j	1c00acb4 <pos_libc_prf+0x6d6>
1c00b342:	0016c783          	lbu	a5,1(a3)
1c00b346:	0685                	addi	a3,a3,1
1c00b348:	fff1                	bnez	a5,1c00b324 <pos_libc_prf+0xd46>
1c00b34a:	b2ad                	j	1c00acb4 <pos_libc_prf+0x6d6>
1c00b34c:	0c800793          	li	a5,200
1c00b350:	df37d0e3          	bge	a5,s3,1c00b130 <pos_libc_prf+0xb52>
1c00b354:	547d                	li	s0,-1
1c00b356:	b02ff06f          	j	1c00a658 <pos_libc_prf+0x7a>
1c00b35a:	864e                	mv	a2,s3
1c00b35c:	1048                	addi	a0,sp,36
1c00b35e:	fc5fe0ef          	jal	ra,1c00a322 <memcpy>
1c00b362:	b3f9                	j	1c00b130 <pos_libc_prf+0xb52>
1c00b364:	47f2                	lw	a5,28(sp)
1c00b366:	4601                	li	a2,0
1c00b368:	e399                	bnez	a5,1c00b36e <pos_libc_prf+0xd90>
1c00b36a:	01503633          	snez	a2,s5
1c00b36e:	57f5                	li	a5,-3
1c00b370:	001a8813          	addi	a6,s5,1
1c00b374:	00f34463          	blt	t1,a5,1c00b37c <pos_libc_prf+0xd9e>
1c00b378:	04685163          	bge	a6,t1,1c00b3ba <pos_libc_prf+0xddc>
1c00b37c:	47c1                	li	a5,16
1c00b37e:	0107d363          	bge	a5,a6,1c00b384 <pos_libc_prf+0xda6>
1c00b382:	4841                	li	a6,16
1c00b384:	06700793          	li	a5,103
1c00b388:	187d                	addi	a6,a6,-1
1c00b38a:	02fd8363          	beq	s11,a5,1c00b3b0 <pos_libc_prf+0xdd2>
1c00b38e:	04500d93          	li	s11,69
1c00b392:	d70ff06f          	j	1c00a902 <pos_libc_prf+0x324>
1c00b396:	4a99                	li	s5,6
1c00b398:	d4fd9563          	bne	s11,a5,1c00a8e2 <pos_libc_prf+0x304>
1c00b39c:	4772                	lw	a4,28(sp)
1c00b39e:	4605                	li	a2,1
1c00b3a0:	57f5                	li	a5,-3
1c00b3a2:	8e19                	sub	a2,a2,a4
1c00b3a4:	00f34563          	blt	t1,a5,1c00b3ae <pos_libc_prf+0xdd0>
1c00b3a8:	479d                	li	a5,7
1c00b3aa:	0067d863          	bge	a5,t1,1c00b3ba <pos_libc_prf+0xddc>
1c00b3ae:	4819                	li	a6,6
1c00b3b0:	06500d93          	li	s11,101
1c00b3b4:	d4eff06f          	j	1c00a902 <pos_libc_prf+0x324>
1c00b3b8:	4601                	li	a2,0
1c00b3ba:	006a8833          	add	a6,s5,t1
1c00b3be:	0b005b63          	blez	a6,1c00b474 <pos_libc_prf+0xe96>
1c00b3c2:	47c1                	li	a5,16
1c00b3c4:	0107d363          	bge	a5,a6,1c00b3ca <pos_libc_prf+0xdec>
1c00b3c8:	4841                	li	a6,16
1c00b3ca:	187d                	addi	a6,a6,-1
1c00b3cc:	06600d93          	li	s11,102
1c00b3d0:	d32ff06f          	j	1c00a902 <pos_libc_prf+0x324>
1c00b3d4:	4792                	lw	a5,4(sp)
1c00b3d6:	1054                	addi	a3,sp,36
1c00b3d8:	c40780e3          	beqz	a5,1c00b018 <pos_libc_prf+0xa3a>
1c00b3dc:	02000793          	li	a5,32
1c00b3e0:	02f10223          	sb	a5,36(sp)
1c00b3e4:	02510693          	addi	a3,sp,37
1c00b3e8:	b905                	j	1c00b018 <pos_libc_prf+0xa3a>
1c00b3ea:	ffc80fa3          	sb	t3,-1(a6)
1c00b3ee:	b30986e3          	beq	s3,a6,1c00af1a <pos_libc_prf+0x93c>
1c00b3f2:	0805                	addi	a6,a6,1
1c00b3f4:	b4d5                	j	1c00aed8 <pos_libc_prf+0x8fa>
1c00b3f6:	ffe80fa3          	sb	t5,-1(a6)
1c00b3fa:	0305                	addi	t1,t1,1
1c00b3fc:	b679                	j	1c00af8a <pos_libc_prf+0x9ac>
1c00b3fe:	020102a3          	sb	zero,37(sp)
1c00b402:	57fd                	li	a5,-1
1c00b404:	0cfa8263          	beq	s5,a5,1c00b4c8 <pos_libc_prf+0xeea>
1c00b408:	4785                	li	a5,1
1c00b40a:	0b47c063          	blt	a5,s4,1c00b4aa <pos_libc_prf+0xecc>
1c00b40e:	4a72                	lw	s4,28(sp)
1c00b410:	c65a                	sw	s6,12(sp)
1c00b412:	bcad                	j	1c00ae8c <pos_libc_prf+0x8ae>
1c00b414:	8636                	mv	a2,a3
1c00b416:	b04ff06f          	j	1c00a71a <pos_libc_prf+0x13c>
1c00b41a:	4712                	lw	a4,4(sp)
1c00b41c:	c77d                	beqz	a4,1c00b50a <pos_libc_prf+0xf2c>
1c00b41e:	02000693          	li	a3,32
1c00b422:	02d10223          	sb	a3,36(sp)
1c00b426:	4301                	li	t1,0
1c00b428:	4801                	li	a6,0
1c00b42a:	02510f13          	addi	t5,sp,37
1c00b42e:	c82ff06f          	j	1c00a8b0 <pos_libc_prf+0x2d2>
1c00b432:	02d00693          	li	a3,45
1c00b436:	02d10223          	sb	a3,36(sp)
1c00b43a:	02510f13          	addi	t5,sp,37
1c00b43e:	b9cff06f          	j	1c00a7da <pos_libc_prf+0x1fc>
1c00b442:	0c800613          	li	a2,200
1c00b446:	960ad6e3          	bgez	s5,1c00adb2 <pos_libc_prf+0x7d4>
1c00b44a:	bf09                	j	1c00b35c <pos_libc_prf+0xd7e>
1c00b44c:	80000637          	lui	a2,0x80000
1c00b450:	02510693          	addi	a3,sp,37
1c00b454:	b6d1                	j	1c00b018 <pos_libc_prf+0xa3a>
1c00b456:	ce02                	sw	zero,28(sp)
1c00b458:	bb5d                	j	1c00b20e <pos_libc_prf+0xc30>
1c00b45a:	4712                	lw	a4,4(sp)
1c00b45c:	02410f13          	addi	t5,sp,36
1c00b460:	b6070d63          	beqz	a4,1c00a7da <pos_libc_prf+0x1fc>
1c00b464:	02000693          	li	a3,32
1c00b468:	02d10223          	sb	a3,36(sp)
1c00b46c:	02510f13          	addi	t5,sp,37
1c00b470:	b6aff06f          	j	1c00a7da <pos_libc_prf+0x1fc>
1c00b474:	06600d93          	li	s11,102
1c00b478:	4781                	li	a5,0
1c00b47a:	080006b7          	lui	a3,0x8000
1c00b47e:	ce8ff06f          	j	1c00a966 <pos_libc_prf+0x388>
1c00b482:	06b6e363          	bltu	a3,a1,1c00b4e8 <pos_libc_prf+0xf0a>
1c00b486:	04e00693          	li	a3,78
1c00b48a:	04100613          	li	a2,65
1c00b48e:	00d78023          	sb	a3,0(a5)
1c00b492:	00c780a3          	sb	a2,1(a5)
1c00b496:	00d78123          	sb	a3,2(a5)
1c00b49a:	f44ff06f          	j	1c00abde <pos_libc_prf+0x600>
1c00b49e:	03000693          	li	a3,48
1c00b4a2:	00df0023          	sb	a3,0(t5)
1c00b4a6:	4541                	li	a0,16
1c00b4a8:	bc95                	j	1c00af1c <pos_libc_prf+0x93e>
1c00b4aa:	4982                	lw	s3,0(sp)
1c00b4ac:	860992e3          	bnez	s3,1c00ad10 <pos_libc_prf+0x732>
1c00b4b0:	104c                	addi	a1,sp,36
1c00b4b2:	fffa0993          	addi	s3,s4,-1
1c00b4b6:	4609                	li	a2,2
1c00b4b8:	01358533          	add	a0,a1,s3
1c00b4bc:	f3dfe0ef          	jal	ra,1c00a3f8 <memmove>
1c00b4c0:	02000913          	li	s2,32
1c00b4c4:	ce02                	sw	zero,28(sp)
1c00b4c6:	b3b9                	j	1c00b214 <pos_libc_prf+0xc36>
1c00b4c8:	49f2                	lw	s3,28(sp)
1c00b4ca:	b19d                	j	1c00b130 <pos_libc_prf+0xb52>
1c00b4cc:	06900693          	li	a3,105
1c00b4d0:	00d78023          	sb	a3,0(a5)
1c00b4d4:	06e00693          	li	a3,110
1c00b4d8:	00d780a3          	sb	a3,1(a5)
1c00b4dc:	06600693          	li	a3,102
1c00b4e0:	00d78123          	sb	a3,2(a5)
1c00b4e4:	efaff06f          	j	1c00abde <pos_libc_prf+0x600>
1c00b4e8:	06e00693          	li	a3,110
1c00b4ec:	06100613          	li	a2,97
1c00b4f0:	00d78023          	sb	a3,0(a5)
1c00b4f4:	00c780a3          	sb	a2,1(a5)
1c00b4f8:	00d78123          	sb	a3,2(a5)
1c00b4fc:	ee2ff06f          	j	1c00abde <pos_libc_prf+0x600>
1c00b500:	89f6                	mv	s3,t4
1c00b502:	a8061ae3          	bnez	a2,1c00af96 <pos_libc_prf+0x9b8>
1c00b506:	da8ff06f          	j	1c00aaae <pos_libc_prf+0x4d0>
1c00b50a:	4301                	li	t1,0
1c00b50c:	4801                	li	a6,0
1c00b50e:	02410f13          	addi	t5,sp,36
1c00b512:	b9eff06f          	j	1c00a8b0 <pos_libc_prf+0x2d2>

1c00b516 <pos_init_start>:
1c00b516:	1141                	addi	sp,sp,-16
1c00b518:	c422                	sw	s0,8(sp)
1c00b51a:	1c000437          	lui	s0,0x1c000
1c00b51e:	c606                	sw	ra,12(sp)
1c00b520:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b524:	e35fc0ef          	jal	ra,1c008358 <pos_soc_init>
1c00b528:	2a75                	jal	1c00b6e4 <pos_irq_init>
1c00b52a:	22e5                	jal	1c00b712 <pos_soc_event_init>
1c00b52c:	2225                	jal	1c00b654 <pos_allocs_init>
1c00b52e:	405c                	lw	a5,4(s0)
1c00b530:	c791                	beqz	a5,1c00b53c <pos_init_start+0x26>
1c00b532:	0411                	addi	s0,s0,4
1c00b534:	0411                	addi	s0,s0,4
1c00b536:	9782                	jalr	a5
1c00b538:	401c                	lw	a5,0(s0)
1c00b53a:	ffed                	bnez	a5,1c00b534 <pos_init_start+0x1e>
1c00b53c:	86cff0ef          	jal	ra,1c00a5a8 <pos_io_start>
1c00b540:	300467f3          	csrrsi	a5,mstatus,8
1c00b544:	40b2                	lw	ra,12(sp)
1c00b546:	4422                	lw	s0,8(sp)
1c00b548:	0141                	addi	sp,sp,16
1c00b54a:	8082                	ret

1c00b54c <pos_init_stop>:
1c00b54c:	1141                	addi	sp,sp,-16
1c00b54e:	c422                	sw	s0,8(sp)
1c00b550:	1c000437          	lui	s0,0x1c000
1c00b554:	c606                	sw	ra,12(sp)
1c00b556:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b55a:	852ff0ef          	jal	ra,1c00a5ac <pos_io_stop>
1c00b55e:	405c                	lw	a5,4(s0)
1c00b560:	c791                	beqz	a5,1c00b56c <pos_init_stop+0x20>
1c00b562:	0411                	addi	s0,s0,4
1c00b564:	0411                	addi	s0,s0,4
1c00b566:	9782                	jalr	a5
1c00b568:	401c                	lw	a5,0(s0)
1c00b56a:	ffed                	bnez	a5,1c00b564 <pos_init_stop+0x18>
1c00b56c:	40b2                	lw	ra,12(sp)
1c00b56e:	4422                	lw	s0,8(sp)
1c00b570:	0141                	addi	sp,sp,16
1c00b572:	8082                	ret

1c00b574 <pos_alloc_init>:
1c00b574:	00758793          	addi	a5,a1,7
1c00b578:	9be1                	andi	a5,a5,-8
1c00b57a:	40b785b3          	sub	a1,a5,a1
1c00b57e:	c11c                	sw	a5,0(a0)
1c00b580:	40b605b3          	sub	a1,a2,a1
1c00b584:	00b05663          	blez	a1,1c00b590 <pos_alloc_init+0x1c>
1c00b588:	99e1                	andi	a1,a1,-8
1c00b58a:	c38c                	sw	a1,0(a5)
1c00b58c:	0007a223          	sw	zero,4(a5)
1c00b590:	8082                	ret

1c00b592 <pos_alloc>:
1c00b592:	411c                	lw	a5,0(a0)
1c00b594:	00758713          	addi	a4,a1,7
1c00b598:	862a                	mv	a2,a0
1c00b59a:	ff877593          	andi	a1,a4,-8
1c00b59e:	4681                	li	a3,0
1c00b5a0:	e789                	bnez	a5,1c00b5aa <pos_alloc+0x18>
1c00b5a2:	a091                	j	1c00b5e6 <pos_alloc+0x54>
1c00b5a4:	86be                	mv	a3,a5
1c00b5a6:	c505                	beqz	a0,1c00b5ce <pos_alloc+0x3c>
1c00b5a8:	87aa                	mv	a5,a0
1c00b5aa:	4398                	lw	a4,0(a5)
1c00b5ac:	43c8                	lw	a0,4(a5)
1c00b5ae:	feb74be3          	blt	a4,a1,1c00b5a4 <pos_alloc+0x12>
1c00b5b2:	00b70f63          	beq	a4,a1,1c00b5d0 <pos_alloc+0x3e>
1c00b5b6:	00b78833          	add	a6,a5,a1
1c00b5ba:	8f0d                	sub	a4,a4,a1
1c00b5bc:	00e82023          	sw	a4,0(a6)
1c00b5c0:	00a82223          	sw	a0,4(a6)
1c00b5c4:	ca91                	beqz	a3,1c00b5d8 <pos_alloc+0x46>
1c00b5c6:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00b5ca:	853e                	mv	a0,a5
1c00b5cc:	8082                	ret
1c00b5ce:	8082                	ret
1c00b5d0:	ca81                	beqz	a3,1c00b5e0 <pos_alloc+0x4e>
1c00b5d2:	c2c8                	sw	a0,4(a3)
1c00b5d4:	853e                	mv	a0,a5
1c00b5d6:	8082                	ret
1c00b5d8:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b5dc:	853e                	mv	a0,a5
1c00b5de:	8082                	ret
1c00b5e0:	c208                	sw	a0,0(a2)
1c00b5e2:	853e                	mv	a0,a5
1c00b5e4:	8082                	ret
1c00b5e6:	4501                	li	a0,0
1c00b5e8:	8082                	ret

1c00b5ea <pos_free>:
1c00b5ea:	411c                	lw	a5,0(a0)
1c00b5ec:	061d                	addi	a2,a2,7
1c00b5ee:	9a61                	andi	a2,a2,-8
1c00b5f0:	c7a1                	beqz	a5,1c00b638 <pos_free+0x4e>
1c00b5f2:	00b7e563          	bltu	a5,a1,1c00b5fc <pos_free+0x12>
1c00b5f6:	a089                	j	1c00b638 <pos_free+0x4e>
1c00b5f8:	00b7f563          	bgeu	a5,a1,1c00b602 <pos_free+0x18>
1c00b5fc:	873e                	mv	a4,a5
1c00b5fe:	43dc                	lw	a5,4(a5)
1c00b600:	ffe5                	bnez	a5,1c00b5f8 <pos_free+0xe>
1c00b602:	00c586b3          	add	a3,a1,a2
1c00b606:	00d78b63          	beq	a5,a3,1c00b61c <pos_free+0x32>
1c00b60a:	c190                	sw	a2,0(a1)
1c00b60c:	4314                	lw	a3,0(a4)
1c00b60e:	c1dc                	sw	a5,4(a1)
1c00b610:	00d70533          	add	a0,a4,a3
1c00b614:	00a58e63          	beq	a1,a0,1c00b630 <pos_free+0x46>
1c00b618:	c34c                	sw	a1,4(a4)
1c00b61a:	8082                	ret
1c00b61c:	4394                	lw	a3,0(a5)
1c00b61e:	43dc                	lw	a5,4(a5)
1c00b620:	9636                	add	a2,a2,a3
1c00b622:	c190                	sw	a2,0(a1)
1c00b624:	4314                	lw	a3,0(a4)
1c00b626:	c1dc                	sw	a5,4(a1)
1c00b628:	00d70533          	add	a0,a4,a3
1c00b62c:	fea596e3          	bne	a1,a0,1c00b618 <pos_free+0x2e>
1c00b630:	9636                	add	a2,a2,a3
1c00b632:	c310                	sw	a2,0(a4)
1c00b634:	c35c                	sw	a5,4(a4)
1c00b636:	8082                	ret
1c00b638:	00c58733          	add	a4,a1,a2
1c00b63c:	00e78663          	beq	a5,a4,1c00b648 <pos_free+0x5e>
1c00b640:	c1dc                	sw	a5,4(a1)
1c00b642:	c190                	sw	a2,0(a1)
1c00b644:	c10c                	sw	a1,0(a0)
1c00b646:	8082                	ret
1c00b648:	4398                	lw	a4,0(a5)
1c00b64a:	43dc                	lw	a5,4(a5)
1c00b64c:	963a                	add	a2,a2,a4
1c00b64e:	c1dc                	sw	a5,4(a1)
1c00b650:	c190                	sw	a2,0(a1)
1c00b652:	bfcd                	j	1c00b644 <pos_free+0x5a>

1c00b654 <pos_allocs_init>:
1c00b654:	1c0065b7          	lui	a1,0x1c006
1c00b658:	1141                	addi	sp,sp,-16
1c00b65a:	5d858613          	addi	a2,a1,1496 # 1c0065d8 <__l2_priv0_end>
1c00b65e:	1c0087b7          	lui	a5,0x1c008
1c00b662:	c606                	sw	ra,12(sp)
1c00b664:	5d858593          	addi	a1,a1,1496
1c00b668:	40c78633          	sub	a2,a5,a2
1c00b66c:	04f5d863          	bge	a1,a5,1c00b6bc <pos_allocs_init+0x68>
1c00b670:	1c006537          	lui	a0,0x1c006
1c00b674:	5cc50513          	addi	a0,a0,1484 # 1c0065cc <pos_alloc_l2>
1c00b678:	3df5                	jal	1c00b574 <pos_alloc_init>
1c00b67a:	1c00b5b7          	lui	a1,0x1c00b
1c00b67e:	72c58613          	addi	a2,a1,1836 # 1c00b72c <__l2_priv1_end>
1c00b682:	1c0107b7          	lui	a5,0x1c010
1c00b686:	72c58593          	addi	a1,a1,1836
1c00b68a:	40c78633          	sub	a2,a5,a2
1c00b68e:	02f5da63          	bge	a1,a5,1c00b6c2 <pos_allocs_init+0x6e>
1c00b692:	1c006537          	lui	a0,0x1c006
1c00b696:	5d050513          	addi	a0,a0,1488 # 1c0065d0 <pos_alloc_l2+0x4>
1c00b69a:	3de9                	jal	1c00b574 <pos_alloc_init>
1c00b69c:	40b2                	lw	ra,12(sp)
1c00b69e:	1c0105b7          	lui	a1,0x1c010
1c00b6a2:	00058793          	mv	a5,a1
1c00b6a6:	1c080637          	lui	a2,0x1c080
1c00b6aa:	1c006537          	lui	a0,0x1c006
1c00b6ae:	8e1d                	sub	a2,a2,a5
1c00b6b0:	00058593          	mv	a1,a1
1c00b6b4:	5d450513          	addi	a0,a0,1492 # 1c0065d4 <pos_alloc_l2+0x8>
1c00b6b8:	0141                	addi	sp,sp,16
1c00b6ba:	bd6d                	j	1c00b574 <pos_alloc_init>
1c00b6bc:	4581                	li	a1,0
1c00b6be:	4601                	li	a2,0
1c00b6c0:	bf45                	j	1c00b670 <pos_allocs_init+0x1c>
1c00b6c2:	4581                	li	a1,0
1c00b6c4:	4601                	li	a2,0
1c00b6c6:	b7f1                	j	1c00b692 <pos_allocs_init+0x3e>

1c00b6c8 <pi_l2_malloc>:
1c00b6c8:	85aa                	mv	a1,a0
1c00b6ca:	1c006537          	lui	a0,0x1c006
1c00b6ce:	5cc50513          	addi	a0,a0,1484 # 1c0065cc <pos_alloc_l2>
1c00b6d2:	b5c1                	j	1c00b592 <pos_alloc>

1c00b6d4 <pi_l2_free>:
1c00b6d4:	862e                	mv	a2,a1
1c00b6d6:	85aa                	mv	a1,a0
1c00b6d8:	1c006537          	lui	a0,0x1c006
1c00b6dc:	5cc50513          	addi	a0,a0,1484 # 1c0065cc <pos_alloc_l2>
1c00b6e0:	b729                	j	1c00b5ea <pos_free>

1c00b6e2 <__rt_handle_illegal_instr>:
1c00b6e2:	8082                	ret

1c00b6e4 <pos_irq_init>:
1c00b6e4:	1a10a737          	lui	a4,0x1a10a
1c00b6e8:	56fd                	li	a3,-1
1c00b6ea:	f14027f3          	csrr	a5,mhartid
1c00b6ee:	8795                	srai	a5,a5,0x5
1c00b6f0:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b6f4:	03f7f793          	andi	a5,a5,63
1c00b6f8:	477d                	li	a4,31
1c00b6fa:	00e78363          	beq	a5,a4,1c00b700 <pos_irq_init+0x1c>
1c00b6fe:	8082                	ret
1c00b700:	1c0087b7          	lui	a5,0x1c008
1c00b704:	00078793          	mv	a5,a5
1c00b708:	0017e793          	ori	a5,a5,1
1c00b70c:	30579073          	csrw	mtvec,a5
1c00b710:	8082                	ret

1c00b712 <pos_soc_event_init>:
1c00b712:	1a1067b7          	lui	a5,0x1a106
1c00b716:	577d                	li	a4,-1
1c00b718:	c3d8                	sw	a4,4(a5)
1c00b71a:	c798                	sw	a4,8(a5)
1c00b71c:	c7d8                	sw	a4,12(a5)
1c00b71e:	cb98                	sw	a4,16(a5)
1c00b720:	cbd8                	sw	a4,20(a5)
1c00b722:	cf98                	sw	a4,24(a5)
1c00b724:	cfd8                	sw	a4,28(a5)
1c00b726:	d398                	sw	a4,32(a5)
1c00b728:	8082                	ret

1c00b72a <_endtext>:
	...
