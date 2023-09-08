riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/LOKI/test/kyber768/keygen/build/keygen/keygen

/home/alessandra.dolmeta/LOKI/test/kyber768/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	74e0306f          	j	1c00b74e <__rt_handle_illegal_instr>
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
1c008084:	6ca0306f          	j	1c00b74e <__rt_handle_illegal_instr>

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
1c0080c4:	4d028293          	addi	t0,t0,1232 # 1c006590 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	54030313          	addi	t1,t1,1344 # 1c006608 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	4b610113          	addi	sp,sp,1206 # 1c006590 <in>
1c0080e2:	4a0030ef          	jal	ra,1c00b582 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	4bc030ef          	jal	ra,1c00b5b8 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	4fe020ef          	jal	ra,1c00a600 <exit>
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
1c008172:	4aa020ef          	jal	ra,1c00a61c <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	4500206f          	j	1c00a5d6 <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1c000537          	lui	a0,0x1c000
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0081a2:	9e010113          	addi	sp,sp,-1568
1c0081a6:	3b4020ef          	jal	ra,1c00a55a <puts>
1c0081aa:	6705                	lui	a4,0x1
1c0081ac:	e0070793          	addi	a5,a4,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c0081b0:	747d                	lui	s0,0xfffff
1c0081b2:	978a                	add	a5,a5,sp
1c0081b4:	6a040493          	addi	s1,s0,1696 # fffff6a0 <__l2_shared_end+0xe3fef6a0>
1c0081b8:	94be                	add	s1,s1,a5
1c0081ba:	e0070793          	addi	a5,a4,-512
1c0081be:	978a                	add	a5,a5,sp
1c0081c0:	20040413          	addi	s0,s0,512
1c0081c4:	943e                	add	s0,s0,a5
1c0081c6:	85a6                	mv	a1,s1
1c0081c8:	8522                	mv	a0,s0
1c0081ca:	22d010ef          	jal	ra,1c009bf6 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c0081ce:	1c000537          	lui	a0,0x1c000
1c0081d2:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c0081d6:	384020ef          	jal	ra,1c00a55a <puts>
1c0081da:	1c000537          	lui	a0,0x1c000
1c0081de:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c0081e2:	378020ef          	jal	ra,1c00a55a <puts>
1c0081e6:	4a000593          	li	a1,1184
1c0081ea:	8522                	mv	a0,s0
1c0081ec:	37a5                	jal	1c008154 <printbytes>
1c0081ee:	1c000537          	lui	a0,0x1c000
1c0081f2:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c0081f6:	364020ef          	jal	ra,1c00a55a <puts>
1c0081fa:	6585                	lui	a1,0x1
1c0081fc:	8526                	mv	a0,s1
1c0081fe:	96058593          	addi	a1,a1,-1696 # 960 <__CTOR_LIST__-0x1bfff6a4>
1c008202:	3f89                	jal	1c008154 <printbytes>
1c008204:	62010113          	addi	sp,sp,1568
1c008208:	7ec12083          	lw	ra,2028(sp)
1c00820c:	7e812403          	lw	s0,2024(sp)
1c008210:	7e412483          	lw	s1,2020(sp)
1c008214:	4501                	li	a0,0
1c008216:	7f010113          	addi	sp,sp,2032
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
1c008292:	5e840413          	addi	s0,s0,1512 # 1c0065e8 <pos_fll_freq>
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
1c0082be:	5e068693          	addi	a3,a3,1504 # 1c0065e0 <pos_fll_is_on>
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
1c0082f8:	5e068693          	addi	a3,a3,1504 # 1c0065e0 <pos_fll_is_on>
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
1c008342:	5e878793          	addi	a5,a5,1512 # 1c0065e8 <pos_fll_freq>
1c008346:	0007a023          	sw	zero,0(a5)
1c00834a:	0007a223          	sw	zero,4(a5)
1c00834e:	1c0067b7          	lui	a5,0x1c006
1c008352:	5e079023          	sh	zero,1504(a5) # 1c0065e0 <pos_fll_is_on>
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
1c00836a:	5f040413          	addi	s0,s0,1520 # 1c0065f0 <pos_freq_domains>
1c00836e:	4505                	li	a0,1
1c008370:	c01c                	sw	a5,0(s0)
1c008372:	356d                	jal	1c00821c <pos_fll_init>
1c008374:	40b2                	lw	ra,12(sp)
1c008376:	c408                	sw	a0,8(s0)
1c008378:	4422                	lw	s0,8(sp)
1c00837a:	0141                	addi	sp,sp,16
1c00837c:	8082                	ret

1c00837e <KeccakF1600_StatePermute>:
1c00837e:	1101                	addi	sp,sp,-32
1c008380:	cc22                	sw	s0,24(sp)
1c008382:	842a                	mv	s0,a0
1c008384:	1c000537          	lui	a0,0x1c000
1c008388:	15050513          	addi	a0,a0,336 # 1c000150 <__clz_tab+0x134>
1c00838c:	ca26                	sw	s1,20(sp)
1c00838e:	ce06                	sw	ra,28(sp)
1c008390:	84ae                	mv	s1,a1
1c008392:	1c8020ef          	jal	ra,1c00a55a <puts>
1c008396:	1a4005b7          	lui	a1,0x1a400
1c00839a:	87a2                	mv	a5,s0
1c00839c:	0c840613          	addi	a2,s0,200
1c0083a0:	40858533          	sub	a0,a1,s0
1c0083a4:	4394                	lw	a3,0(a5)
1c0083a6:	00f50733          	add	a4,a0,a5
1c0083aa:	0791                	addi	a5,a5,4
1c0083ac:	c314                	sw	a3,0(a4)
1c0083ae:	fec79be3          	bne	a5,a2,1c0083a4 <KeccakF1600_StatePermute+0x26>
1c0083b2:	4785                	li	a5,1
1c0083b4:	18f5a823          	sw	a5,400(a1) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c0083b8:	1a400737          	lui	a4,0x1a400
1c0083bc:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0083c0:	8b85                	andi	a5,a5,1
1c0083c2:	dfed                	beqz	a5,1c0083bc <KeccakF1600_StatePermute+0x3e>
1c0083c4:	c602                	sw	zero,12(sp)
1c0083c6:	4732                	lw	a4,12(sp)
1c0083c8:	03100793          	li	a5,49
1c0083cc:	02e7c663          	blt	a5,a4,1c0083f8 <KeccakF1600_StatePermute+0x7a>
1c0083d0:	1a400637          	lui	a2,0x1a400
1c0083d4:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0083d8:	03100593          	li	a1,49
1c0083dc:	4732                	lw	a4,12(sp)
1c0083de:	47b2                	lw	a5,12(sp)
1c0083e0:	070a                	slli	a4,a4,0x2
1c0083e2:	9732                	add	a4,a4,a2
1c0083e4:	4314                	lw	a3,0(a4)
1c0083e6:	4732                	lw	a4,12(sp)
1c0083e8:	078a                	slli	a5,a5,0x2
1c0083ea:	97a6                	add	a5,a5,s1
1c0083ec:	0705                	addi	a4,a4,1
1c0083ee:	c63a                	sw	a4,12(sp)
1c0083f0:	4732                	lw	a4,12(sp)
1c0083f2:	c394                	sw	a3,0(a5)
1c0083f4:	fee5d4e3          	bge	a1,a4,1c0083dc <KeccakF1600_StatePermute+0x5e>
1c0083f8:	4462                	lw	s0,24(sp)
1c0083fa:	40f2                	lw	ra,28(sp)
1c0083fc:	44d2                	lw	s1,20(sp)
1c0083fe:	1c000537          	lui	a0,0x1c000
1c008402:	16050513          	addi	a0,a0,352 # 1c000160 <__clz_tab+0x144>
1c008406:	6105                	addi	sp,sp,32
1c008408:	1520206f          	j	1c00a55a <puts>

1c00840c <KYBER_poly_ntt>:
1c00840c:	1a4007b7          	lui	a5,0x1a400
1c008410:	40000713          	li	a4,1024
1c008414:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008418:	3007a423          	sw	zero,776(a5)
1c00841c:	4705                	li	a4,1
1c00841e:	30e7a423          	sw	a4,776(a5)
1c008422:	3007a423          	sw	zero,776(a5)
1c008426:	20050693          	addi	a3,a0,512
1c00842a:	1a400737          	lui	a4,0x1a400
1c00842e:	411c                	lw	a5,0(a0)
1c008430:	0511                	addi	a0,a0,4
1c008432:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008436:	fed51ce3          	bne	a0,a3,1c00842e <KYBER_poly_ntt+0x22>
1c00843a:	08000793          	li	a5,128
1c00843e:	30f72423          	sw	a5,776(a4)
1c008442:	30072423          	sw	zero,776(a4)
1c008446:	1a400737          	lui	a4,0x1a400
1c00844a:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00844e:	8b85                	andi	a5,a5,1
1c008450:	dfed                	beqz	a5,1c00844a <KYBER_poly_ntt+0x3e>
1c008452:	47c1                	li	a5,16
1c008454:	30f72423          	sw	a5,776(a4)
1c008458:	30072423          	sw	zero,776(a4)
1c00845c:	20058693          	addi	a3,a1,512
1c008460:	1a400737          	lui	a4,0x1a400
1c008464:	0001                	nop
1c008466:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00846a:	0591                	addi	a1,a1,4
1c00846c:	fef5ae23          	sw	a5,-4(a1)
1c008470:	fed59ae3          	bne	a1,a3,1c008464 <KYBER_poly_ntt+0x58>
1c008474:	8082                	ret

1c008476 <KYBER_poly_pwm>:
1c008476:	1a4007b7          	lui	a5,0x1a400
1c00847a:	40000713          	li	a4,1024
1c00847e:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c008482:	3007a423          	sw	zero,776(a5)
1c008486:	4709                	li	a4,2
1c008488:	30e7a423          	sw	a4,776(a5)
1c00848c:	3007a423          	sw	zero,776(a5)
1c008490:	20058693          	addi	a3,a1,512
1c008494:	1a400737          	lui	a4,0x1a400
1c008498:	419c                	lw	a5,0(a1)
1c00849a:	0591                	addi	a1,a1,4
1c00849c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c0084a0:	fed59ce3          	bne	a1,a3,1c008498 <KYBER_poly_pwm+0x22>
1c0084a4:	47a1                	li	a5,8
1c0084a6:	30f72423          	sw	a5,776(a4)
1c0084aa:	30072423          	sw	zero,776(a4)
1c0084ae:	20060693          	addi	a3,a2,512
1c0084b2:	1a400737          	lui	a4,0x1a400
1c0084b6:	421c                	lw	a5,0(a2)
1c0084b8:	0611                	addi	a2,a2,4
1c0084ba:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c0084be:	fec69ce3          	bne	a3,a2,1c0084b6 <KYBER_poly_pwm+0x40>
1c0084c2:	10000793          	li	a5,256
1c0084c6:	30f72423          	sw	a5,776(a4)
1c0084ca:	30072423          	sw	zero,776(a4)
1c0084ce:	1a400737          	lui	a4,0x1a400
1c0084d2:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c0084d6:	8b85                	andi	a5,a5,1
1c0084d8:	dfed                	beqz	a5,1c0084d2 <KYBER_poly_pwm+0x5c>
1c0084da:	47c1                	li	a5,16
1c0084dc:	30f72423          	sw	a5,776(a4)
1c0084e0:	30072423          	sw	zero,776(a4)
1c0084e4:	20050693          	addi	a3,a0,512
1c0084e8:	1a400737          	lui	a4,0x1a400
1c0084ec:	0001                	nop
1c0084ee:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c0084f2:	0511                	addi	a0,a0,4
1c0084f4:	fef52e23          	sw	a5,-4(a0)
1c0084f8:	fed51ae3          	bne	a0,a3,1c0084ec <KYBER_poly_pwm+0x76>
1c0084fc:	8082                	ret

1c0084fe <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0084fe:	1101                	addi	sp,sp,-32
1c008500:	55555f37          	lui	t5,0x55555
1c008504:	ce22                	sw	s0,28(sp)
1c008506:	cc26                	sw	s1,24(sp)
1c008508:	ca4a                	sw	s2,20(sp)
1c00850a:	c84e                	sw	s3,16(sp)
1c00850c:	c652                	sw	s4,12(sp)
1c00850e:	20050f93          	addi	t6,a0,512
1c008512:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008516:	0015c683          	lbu	a3,1(a1)
1c00851a:	0005c603          	lbu	a2,0(a1)
1c00851e:	0025c783          	lbu	a5,2(a1)
1c008522:	0035c703          	lbu	a4,3(a1)
1c008526:	06a2                	slli	a3,a3,0x8
1c008528:	8ed1                	or	a3,a3,a2
1c00852a:	07c2                	slli	a5,a5,0x10
1c00852c:	8fd5                	or	a5,a5,a3
1c00852e:	0762                	slli	a4,a4,0x18
1c008530:	8f5d                	or	a4,a4,a5
1c008532:	00175793          	srli	a5,a4,0x1
1c008536:	01e7f7b3          	and	a5,a5,t5
1c00853a:	01e77733          	and	a4,a4,t5
1c00853e:	97ba                	add	a5,a5,a4
1c008540:	0027da13          	srli	s4,a5,0x2
1c008544:	0047d313          	srli	t1,a5,0x4
1c008548:	0067d993          	srli	s3,a5,0x6
1c00854c:	0087d893          	srli	a7,a5,0x8
1c008550:	00a7d913          	srli	s2,a5,0xa
1c008554:	00c7d813          	srli	a6,a5,0xc
1c008558:	00e7d493          	srli	s1,a5,0xe
1c00855c:	0107d613          	srli	a2,a5,0x10
1c008560:	0127d413          	srli	s0,a5,0x12
1c008564:	0147d693          	srli	a3,a5,0x14
1c008568:	0167d393          	srli	t2,a5,0x16
1c00856c:	0187d713          	srli	a4,a5,0x18
1c008570:	01a7d293          	srli	t0,a5,0x1a
1c008574:	01c7de93          	srli	t4,a5,0x1c
1c008578:	0037fe13          	andi	t3,a5,3
1c00857c:	003a7a13          	andi	s4,s4,3
1c008580:	00337313          	andi	t1,t1,3
1c008584:	0039f993          	andi	s3,s3,3
1c008588:	0038f893          	andi	a7,a7,3
1c00858c:	00397913          	andi	s2,s2,3
1c008590:	00387813          	andi	a6,a6,3
1c008594:	888d                	andi	s1,s1,3
1c008596:	8a0d                	andi	a2,a2,3
1c008598:	880d                	andi	s0,s0,3
1c00859a:	8a8d                	andi	a3,a3,3
1c00859c:	0033f393          	andi	t2,t2,3
1c0085a0:	8b0d                	andi	a4,a4,3
1c0085a2:	0032f293          	andi	t0,t0,3
1c0085a6:	003efe93          	andi	t4,t4,3
1c0085aa:	83f9                	srli	a5,a5,0x1e
1c0085ac:	414e0e33          	sub	t3,t3,s4
1c0085b0:	41330333          	sub	t1,t1,s3
1c0085b4:	412888b3          	sub	a7,a7,s2
1c0085b8:	40980833          	sub	a6,a6,s1
1c0085bc:	8e01                	sub	a2,a2,s0
1c0085be:	407686b3          	sub	a3,a3,t2
1c0085c2:	40570733          	sub	a4,a4,t0
1c0085c6:	40fe87b3          	sub	a5,t4,a5
1c0085ca:	01c51023          	sh	t3,0(a0)
1c0085ce:	00651123          	sh	t1,2(a0)
1c0085d2:	01151223          	sh	a7,4(a0)
1c0085d6:	01051323          	sh	a6,6(a0)
1c0085da:	00c51423          	sh	a2,8(a0)
1c0085de:	00d51523          	sh	a3,10(a0)
1c0085e2:	00e51623          	sh	a4,12(a0)
1c0085e6:	00f51723          	sh	a5,14(a0)
1c0085ea:	0541                	addi	a0,a0,16
1c0085ec:	0591                	addi	a1,a1,4
1c0085ee:	f3f514e3          	bne	a0,t6,1c008516 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0085f2:	4472                	lw	s0,28(sp)
1c0085f4:	44e2                	lw	s1,24(sp)
1c0085f6:	4952                	lw	s2,20(sp)
1c0085f8:	49c2                	lw	s3,16(sp)
1c0085fa:	4a32                	lw	s4,12(sp)
1c0085fc:	6105                	addi	sp,sp,32
1c0085fe:	8082                	ret

1c008600 <keccak_absorb.constprop.1>:
1c008600:	7151                	addi	sp,sp,-240
1c008602:	d3a6                	sw	s1,228(sp)
1c008604:	cfce                	sw	s3,220(sp)
1c008606:	cdd2                	sw	s4,216(sp)
1c008608:	cbd6                	sw	s5,212(sp)
1c00860a:	84b6                	mv	s1,a3
1c00860c:	d786                	sw	ra,236(sp)
1c00860e:	d5a2                	sw	s0,232(sp)
1c008610:	d1ca                	sw	s2,224(sp)
1c008612:	c9da                	sw	s6,208(sp)
1c008614:	8a2a                	mv	s4,a0
1c008616:	87ae                	mv	a5,a1
1c008618:	8ab2                	mv	s5,a2
1c00861a:	89aa                	mv	s3,a0
1c00861c:	0c850693          	addi	a3,a0,200
1c008620:	872a                	mv	a4,a0
1c008622:	4581                	li	a1,0
1c008624:	4601                	li	a2,0
1c008626:	c30c                	sw	a1,0(a4)
1c008628:	c350                	sw	a2,4(a4)
1c00862a:	0721                	addi	a4,a4,8
1c00862c:	fee69be3          	bne	a3,a4,1c008622 <keccak_absorb.constprop.1+0x22>
1c008630:	08700713          	li	a4,135
1c008634:	09577363          	bgeu	a4,s5,1c0086ba <keccak_absorb.constprop.1+0xba>
1c008638:	08878b13          	addi	s6,a5,136
1c00863c:	895a                	mv	s2,s6
1c00863e:	08700413          	li	s0,135
1c008642:	86d2                	mv	a3,s4
1c008644:	0017c703          	lbu	a4,1(a5)
1c008648:	0027ce03          	lbu	t3,2(a5)
1c00864c:	0057c803          	lbu	a6,5(a5)
1c008650:	0047cf03          	lbu	t5,4(a5)
1c008654:	0067c503          	lbu	a0,6(a5)
1c008658:	0007ce83          	lbu	t4,0(a5)
1c00865c:	0037c583          	lbu	a1,3(a5)
1c008660:	0077c603          	lbu	a2,7(a5)
1c008664:	0722                	slli	a4,a4,0x8
1c008666:	0e42                	slli	t3,t3,0x10
1c008668:	0822                	slli	a6,a6,0x8
1c00866a:	0006a303          	lw	t1,0(a3)
1c00866e:	0046a883          	lw	a7,4(a3)
1c008672:	01c76733          	or	a4,a4,t3
1c008676:	01e86833          	or	a6,a6,t5
1c00867a:	0542                	slli	a0,a0,0x10
1c00867c:	01d76733          	or	a4,a4,t4
1c008680:	05e2                	slli	a1,a1,0x18
1c008682:	01056533          	or	a0,a0,a6
1c008686:	0662                	slli	a2,a2,0x18
1c008688:	8f4d                	or	a4,a4,a1
1c00868a:	8e49                	or	a2,a2,a0
1c00868c:	00e34733          	xor	a4,t1,a4
1c008690:	00c8c633          	xor	a2,a7,a2
1c008694:	c298                	sw	a4,0(a3)
1c008696:	c2d0                	sw	a2,4(a3)
1c008698:	07a1                	addi	a5,a5,8
1c00869a:	06a1                	addi	a3,a3,8
1c00869c:	faf914e3          	bne	s2,a5,1c008644 <keccak_absorb.constprop.1+0x44>
1c0086a0:	85d2                	mv	a1,s4
1c0086a2:	8552                	mv	a0,s4
1c0086a4:	39e9                	jal	1c00837e <KeccakF1600_StatePermute>
1c0086a6:	f78a8a93          	addi	s5,s5,-136
1c0086aa:	08890913          	addi	s2,s2,136
1c0086ae:	87da                	mv	a5,s6
1c0086b0:	01547563          	bgeu	s0,s5,1c0086ba <keccak_absorb.constprop.1+0xba>
1c0086b4:	088b0b13          	addi	s6,s6,136
1c0086b8:	b769                	j	1c008642 <keccak_absorb.constprop.1+0x42>
1c0086ba:	0038                	addi	a4,sp,8
1c0086bc:	09010e13          	addi	t3,sp,144
1c0086c0:	86ba                	mv	a3,a4
1c0086c2:	0006a023          	sw	zero,0(a3)
1c0086c6:	0691                	addi	a3,a3,4
1c0086c8:	fede1de3          	bne	t3,a3,1c0086c2 <keccak_absorb.constprop.1+0xc2>
1c0086cc:	080a8263          	beqz	s5,1c008750 <keccak_absorb.constprop.1+0x150>
1c0086d0:	fffa8693          	addi	a3,s5,-1
1c0086d4:	4609                	li	a2,2
1c0086d6:	10d67163          	bgeu	a2,a3,1c0087d8 <keccak_absorb.constprop.1+0x1d8>
1c0086da:	ffcaf313          	andi	t1,s5,-4
1c0086de:	86be                	mv	a3,a5
1c0086e0:	933e                	add	t1,t1,a5
1c0086e2:	883a                	mv	a6,a4
1c0086e4:	0016c503          	lbu	a0,1(a3)
1c0086e8:	0006c883          	lbu	a7,0(a3)
1c0086ec:	0026c583          	lbu	a1,2(a3)
1c0086f0:	0036c603          	lbu	a2,3(a3)
1c0086f4:	0522                	slli	a0,a0,0x8
1c0086f6:	01156533          	or	a0,a0,a7
1c0086fa:	05c2                	slli	a1,a1,0x10
1c0086fc:	8dc9                	or	a1,a1,a0
1c0086fe:	0662                	slli	a2,a2,0x18
1c008700:	8e4d                	or	a2,a2,a1
1c008702:	00c82023          	sw	a2,0(a6)
1c008706:	0691                	addi	a3,a3,4
1c008708:	0811                	addi	a6,a6,4
1c00870a:	fcd31de3          	bne	t1,a3,1c0086e4 <keccak_absorb.constprop.1+0xe4>
1c00870e:	ffcaf693          	andi	a3,s5,-4
1c008712:	02da8f63          	beq	s5,a3,1c008750 <keccak_absorb.constprop.1+0x150>
1c008716:	00d78633          	add	a2,a5,a3
1c00871a:	00064503          	lbu	a0,0(a2)
1c00871e:	098c                	addi	a1,sp,208
1c008720:	95b6                	add	a1,a1,a3
1c008722:	00168613          	addi	a2,a3,1
1c008726:	f2a58c23          	sb	a0,-200(a1)
1c00872a:	03567363          	bgeu	a2,s5,1c008750 <keccak_absorb.constprop.1+0x150>
1c00872e:	00c785b3          	add	a1,a5,a2
1c008732:	0005c583          	lbu	a1,0(a1)
1c008736:	0988                	addi	a0,sp,208
1c008738:	962a                	add	a2,a2,a0
1c00873a:	0689                	addi	a3,a3,2
1c00873c:	f2b60c23          	sb	a1,-200(a2)
1c008740:	0156f863          	bgeu	a3,s5,1c008750 <keccak_absorb.constprop.1+0x150>
1c008744:	97b6                	add	a5,a5,a3
1c008746:	0007c783          	lbu	a5,0(a5)
1c00874a:	96aa                	add	a3,a3,a0
1c00874c:	f2f68c23          	sb	a5,-200(a3)
1c008750:	099c                	addi	a5,sp,208
1c008752:	9abe                	add	s5,s5,a5
1c008754:	f29a8c23          	sb	s1,-200(s5)
1c008758:	08f14783          	lbu	a5,143(sp)
1c00875c:	f807e793          	ori	a5,a5,-128
1c008760:	08f107a3          	sb	a5,143(sp)
1c008764:	00174783          	lbu	a5,1(a4)
1c008768:	00274303          	lbu	t1,2(a4)
1c00876c:	00574503          	lbu	a0,5(a4)
1c008770:	00474f03          	lbu	t5,4(a4)
1c008774:	00674583          	lbu	a1,6(a4)
1c008778:	00074e83          	lbu	t4,0(a4)
1c00877c:	00374603          	lbu	a2,3(a4)
1c008780:	00774683          	lbu	a3,7(a4)
1c008784:	07a2                	slli	a5,a5,0x8
1c008786:	0342                	slli	t1,t1,0x10
1c008788:	0522                	slli	a0,a0,0x8
1c00878a:	0009a883          	lw	a7,0(s3)
1c00878e:	0049a803          	lw	a6,4(s3)
1c008792:	0067e7b3          	or	a5,a5,t1
1c008796:	01e56533          	or	a0,a0,t5
1c00879a:	05c2                	slli	a1,a1,0x10
1c00879c:	01d7e7b3          	or	a5,a5,t4
1c0087a0:	0662                	slli	a2,a2,0x18
1c0087a2:	8dc9                	or	a1,a1,a0
1c0087a4:	06e2                	slli	a3,a3,0x18
1c0087a6:	8e5d                	or	a2,a2,a5
1c0087a8:	00b6e7b3          	or	a5,a3,a1
1c0087ac:	00c8c633          	xor	a2,a7,a2
1c0087b0:	00f847b3          	xor	a5,a6,a5
1c0087b4:	00c9a023          	sw	a2,0(s3)
1c0087b8:	00f9a223          	sw	a5,4(s3)
1c0087bc:	0721                	addi	a4,a4,8
1c0087be:	09a1                	addi	s3,s3,8
1c0087c0:	faee12e3          	bne	t3,a4,1c008764 <keccak_absorb.constprop.1+0x164>
1c0087c4:	50be                	lw	ra,236(sp)
1c0087c6:	542e                	lw	s0,232(sp)
1c0087c8:	549e                	lw	s1,228(sp)
1c0087ca:	590e                	lw	s2,224(sp)
1c0087cc:	49fe                	lw	s3,220(sp)
1c0087ce:	4a6e                	lw	s4,216(sp)
1c0087d0:	4ade                	lw	s5,212(sp)
1c0087d2:	4b4e                	lw	s6,208(sp)
1c0087d4:	616d                	addi	sp,sp,240
1c0087d6:	8082                	ret
1c0087d8:	4681                	li	a3,0
1c0087da:	bf35                	j	1c008716 <keccak_absorb.constprop.1+0x116>

1c0087dc <shake128_absorb>:
1c0087dc:	7151                	addi	sp,sp,-240
1c0087de:	cfce                	sw	s3,220(sp)
1c0087e0:	89aa                	mv	s3,a0
1c0087e2:	0c800513          	li	a0,200
1c0087e6:	d5a2                	sw	s0,232(sp)
1c0087e8:	d3a6                	sw	s1,228(sp)
1c0087ea:	d786                	sw	ra,236(sp)
1c0087ec:	d1ca                	sw	s2,224(sp)
1c0087ee:	842e                	mv	s0,a1
1c0087f0:	84b2                	mv	s1,a2
1c0087f2:	743020ef          	jal	ra,1c00b734 <pi_l2_malloc>
1c0087f6:	00a9a023          	sw	a0,0(s3)
1c0087fa:	1c050363          	beqz	a0,1c0089c0 <shake128_absorb+0x1e4>
1c0087fe:	892a                	mv	s2,a0
1c008800:	0c850713          	addi	a4,a0,200
1c008804:	87aa                	mv	a5,a0
1c008806:	4601                	li	a2,0
1c008808:	4681                	li	a3,0
1c00880a:	c390                	sw	a2,0(a5)
1c00880c:	c3d4                	sw	a3,4(a5)
1c00880e:	07a1                	addi	a5,a5,8
1c008810:	fef71be3          	bne	a4,a5,1c008806 <shake128_absorb+0x2a>
1c008814:	0a700793          	li	a5,167
1c008818:	0897f063          	bgeu	a5,s1,1c008898 <shake128_absorb+0xbc>
1c00881c:	0a700993          	li	s3,167
1c008820:	87a2                	mv	a5,s0
1c008822:	40890eb3          	sub	t4,s2,s0
1c008826:	0a840413          	addi	s0,s0,168
1c00882a:	0017c703          	lbu	a4,1(a5)
1c00882e:	0027ce03          	lbu	t3,2(a5)
1c008832:	0057c503          	lbu	a0,5(a5)
1c008836:	0047cf83          	lbu	t6,4(a5)
1c00883a:	0067c583          	lbu	a1,6(a5)
1c00883e:	0007cf03          	lbu	t5,0(a5)
1c008842:	0037c603          	lbu	a2,3(a5)
1c008846:	0077c683          	lbu	a3,7(a5)
1c00884a:	00fe8833          	add	a6,t4,a5
1c00884e:	0722                	slli	a4,a4,0x8
1c008850:	0e42                	slli	t3,t3,0x10
1c008852:	0522                	slli	a0,a0,0x8
1c008854:	00082303          	lw	t1,0(a6)
1c008858:	00482883          	lw	a7,4(a6)
1c00885c:	01c76733          	or	a4,a4,t3
1c008860:	01f56533          	or	a0,a0,t6
1c008864:	05c2                	slli	a1,a1,0x10
1c008866:	01e76733          	or	a4,a4,t5
1c00886a:	0662                	slli	a2,a2,0x18
1c00886c:	8dc9                	or	a1,a1,a0
1c00886e:	06e2                	slli	a3,a3,0x18
1c008870:	8f51                	or	a4,a4,a2
1c008872:	8ecd                	or	a3,a3,a1
1c008874:	00e34733          	xor	a4,t1,a4
1c008878:	00d8c6b3          	xor	a3,a7,a3
1c00887c:	00e82023          	sw	a4,0(a6)
1c008880:	00d82223          	sw	a3,4(a6)
1c008884:	07a1                	addi	a5,a5,8
1c008886:	faf412e3          	bne	s0,a5,1c00882a <shake128_absorb+0x4e>
1c00888a:	f5848493          	addi	s1,s1,-168
1c00888e:	85ca                	mv	a1,s2
1c008890:	854a                	mv	a0,s2
1c008892:	34f5                	jal	1c00837e <KeccakF1600_StatePermute>
1c008894:	f899e6e3          	bltu	s3,s1,1c008820 <shake128_absorb+0x44>
1c008898:	0b010313          	addi	t1,sp,176
1c00889c:	003c                	addi	a5,sp,8
1c00889e:	0007a023          	sw	zero,0(a5)
1c0088a2:	0791                	addi	a5,a5,4
1c0088a4:	fef31de3          	bne	t1,a5,1c00889e <shake128_absorb+0xc2>
1c0088a8:	c0d9                	beqz	s1,1c00892e <shake128_absorb+0x152>
1c0088aa:	fff48793          	addi	a5,s1,-1
1c0088ae:	4709                	li	a4,2
1c0088b0:	10f77663          	bgeu	a4,a5,1c0089bc <shake128_absorb+0x1e0>
1c0088b4:	ffc4f593          	andi	a1,s1,-4
1c0088b8:	87a2                	mv	a5,s0
1c0088ba:	95a2                	add	a1,a1,s0
1c0088bc:	0028                	addi	a0,sp,8
1c0088be:	0017c603          	lbu	a2,1(a5)
1c0088c2:	0007c803          	lbu	a6,0(a5)
1c0088c6:	0027c683          	lbu	a3,2(a5)
1c0088ca:	0037c703          	lbu	a4,3(a5)
1c0088ce:	0622                	slli	a2,a2,0x8
1c0088d0:	01066633          	or	a2,a2,a6
1c0088d4:	06c2                	slli	a3,a3,0x10
1c0088d6:	8ed1                	or	a3,a3,a2
1c0088d8:	0762                	slli	a4,a4,0x18
1c0088da:	8f55                	or	a4,a4,a3
1c0088dc:	c118                	sw	a4,0(a0)
1c0088de:	0791                	addi	a5,a5,4
1c0088e0:	0511                	addi	a0,a0,4
1c0088e2:	fcf59ee3          	bne	a1,a5,1c0088be <shake128_absorb+0xe2>
1c0088e6:	ffc4f793          	andi	a5,s1,-4
1c0088ea:	04f48263          	beq	s1,a5,1c00892e <shake128_absorb+0x152>
1c0088ee:	00f40733          	add	a4,s0,a5
1c0088f2:	00074603          	lbu	a2,0(a4)
1c0088f6:	0994                	addi	a3,sp,208
1c0088f8:	96be                	add	a3,a3,a5
1c0088fa:	00178713          	addi	a4,a5,1
1c0088fe:	f2c68c23          	sb	a2,-200(a3)
1c008902:	02977663          	bgeu	a4,s1,1c00892e <shake128_absorb+0x152>
1c008906:	00e406b3          	add	a3,s0,a4
1c00890a:	0006c603          	lbu	a2,0(a3)
1c00890e:	0994                	addi	a3,sp,208
1c008910:	96ba                	add	a3,a3,a4
1c008912:	f2c68c23          	sb	a2,-200(a3)
1c008916:	00278713          	addi	a4,a5,2
1c00891a:	00977a63          	bgeu	a4,s1,1c00892e <shake128_absorb+0x152>
1c00891e:	00e407b3          	add	a5,s0,a4
1c008922:	0007c683          	lbu	a3,0(a5)
1c008926:	099c                	addi	a5,sp,208
1c008928:	97ba                	add	a5,a5,a4
1c00892a:	f2d78c23          	sb	a3,-200(a5)
1c00892e:	099c                	addi	a5,sp,208
1c008930:	00978633          	add	a2,a5,s1
1c008934:	47fd                	li	a5,31
1c008936:	f2f60c23          	sb	a5,-200(a2)
1c00893a:	0af14703          	lbu	a4,175(sp)
1c00893e:	003c                	addi	a5,sp,8
1c008940:	40f90933          	sub	s2,s2,a5
1c008944:	f8076713          	ori	a4,a4,-128
1c008948:	0ae107a3          	sb	a4,175(sp)
1c00894c:	0017c703          	lbu	a4,1(a5)
1c008950:	0027cf83          	lbu	t6,2(a5)
1c008954:	0057c883          	lbu	a7,5(a5)
1c008958:	0047c503          	lbu	a0,4(a5)
1c00895c:	0067c803          	lbu	a6,6(a5)
1c008960:	0007c583          	lbu	a1,0(a5)
1c008964:	0037c603          	lbu	a2,3(a5)
1c008968:	0077c683          	lbu	a3,7(a5)
1c00896c:	00f90e33          	add	t3,s2,a5
1c008970:	0722                	slli	a4,a4,0x8
1c008972:	0fc2                	slli	t6,t6,0x10
1c008974:	08a2                	slli	a7,a7,0x8
1c008976:	000e2f03          	lw	t5,0(t3)
1c00897a:	004e2e83          	lw	t4,4(t3)
1c00897e:	01f76733          	or	a4,a4,t6
1c008982:	00a8e8b3          	or	a7,a7,a0
1c008986:	0842                	slli	a6,a6,0x10
1c008988:	8f4d                	or	a4,a4,a1
1c00898a:	0662                	slli	a2,a2,0x18
1c00898c:	01186833          	or	a6,a6,a7
1c008990:	06e2                	slli	a3,a3,0x18
1c008992:	8f51                	or	a4,a4,a2
1c008994:	0106e6b3          	or	a3,a3,a6
1c008998:	00ef4733          	xor	a4,t5,a4
1c00899c:	00dec6b3          	xor	a3,t4,a3
1c0089a0:	00ee2023          	sw	a4,0(t3)
1c0089a4:	00de2223          	sw	a3,4(t3)
1c0089a8:	07a1                	addi	a5,a5,8
1c0089aa:	faf311e3          	bne	t1,a5,1c00894c <shake128_absorb+0x170>
1c0089ae:	50be                	lw	ra,236(sp)
1c0089b0:	542e                	lw	s0,232(sp)
1c0089b2:	549e                	lw	s1,228(sp)
1c0089b4:	590e                	lw	s2,224(sp)
1c0089b6:	49fe                	lw	s3,220(sp)
1c0089b8:	616d                	addi	sp,sp,240
1c0089ba:	8082                	ret
1c0089bc:	4781                	li	a5,0
1c0089be:	bf05                	j	1c0088ee <shake128_absorb+0x112>
1c0089c0:	06f00513          	li	a0,111
1c0089c4:	43d010ef          	jal	ra,1c00a600 <exit>

1c0089c8 <shake128_squeezeblocks>:
1c0089c8:	1101                	addi	sp,sp,-32
1c0089ca:	c05a                	sw	s6,0(sp)
1c0089cc:	ce06                	sw	ra,28(sp)
1c0089ce:	cc22                	sw	s0,24(sp)
1c0089d0:	ca26                	sw	s1,20(sp)
1c0089d2:	c84a                	sw	s2,16(sp)
1c0089d4:	c64e                	sw	s3,12(sp)
1c0089d6:	c452                	sw	s4,8(sp)
1c0089d8:	c256                	sw	s5,4(sp)
1c0089da:	00062b03          	lw	s6,0(a2)
1c0089de:	c5e9                	beqz	a1,1c008aa8 <shake128_squeezeblocks+0xe0>
1c0089e0:	7ac1                	lui	s5,0xffff0
1c0089e2:	ff010a37          	lui	s4,0xff010
1c0089e6:	010009b7          	lui	s3,0x1000
1c0089ea:	84ae                	mv	s1,a1
1c0089ec:	892a                	mv	s2,a0
1c0089ee:	0a8b0413          	addi	s0,s6,168
1c0089f2:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c0089f6:	1a7d                	addi	s4,s4,-1
1c0089f8:	19fd                	addi	s3,s3,-1
1c0089fa:	85da                	mv	a1,s6
1c0089fc:	855a                	mv	a0,s6
1c0089fe:	3241                	jal	1c00837e <KeccakF1600_StatePermute>
1c008a00:	85da                	mv	a1,s6
1c008a02:	00490813          	addi	a6,s2,4
1c008a06:	4198                	lw	a4,0(a1)
1c008a08:	41dc                	lw	a5,4(a1)
1c008a0a:	05a1                	addi	a1,a1,8
1c008a0c:	00875893          	srli	a7,a4,0x8
1c008a10:	0087d513          	srli	a0,a5,0x8
1c008a14:	0ff77613          	andi	a2,a4,255
1c008a18:	0ff7f693          	andi	a3,a5,255
1c008a1c:	0ff8f893          	andi	a7,a7,255
1c008a20:	0ff57513          	andi	a0,a0,255
1c008a24:	08a2                	slli	a7,a7,0x8
1c008a26:	0522                	slli	a0,a0,0x8
1c008a28:	01567633          	and	a2,a2,s5
1c008a2c:	0156f6b3          	and	a3,a3,s5
1c008a30:	01166633          	or	a2,a2,a7
1c008a34:	8ec9                	or	a3,a3,a0
1c008a36:	00ff08b7          	lui	a7,0xff0
1c008a3a:	00ff0537          	lui	a0,0xff0
1c008a3e:	011778b3          	and	a7,a4,a7
1c008a42:	8d7d                	and	a0,a0,a5
1c008a44:	01467633          	and	a2,a2,s4
1c008a48:	0146f6b3          	and	a3,a3,s4
1c008a4c:	01166633          	or	a2,a2,a7
1c008a50:	8ec9                	or	a3,a3,a0
1c008a52:	8361                	srli	a4,a4,0x18
1c008a54:	83e1                	srli	a5,a5,0x18
1c008a56:	01367633          	and	a2,a2,s3
1c008a5a:	0136f6b3          	and	a3,a3,s3
1c008a5e:	0762                	slli	a4,a4,0x18
1c008a60:	07e2                	slli	a5,a5,0x18
1c008a62:	8f51                	or	a4,a4,a2
1c008a64:	8fd5                	or	a5,a5,a3
1c008a66:	00875e13          	srli	t3,a4,0x8
1c008a6a:	01075313          	srli	t1,a4,0x10
1c008a6e:	0087d893          	srli	a7,a5,0x8
1c008a72:	0107d513          	srli	a0,a5,0x10
1c008a76:	8361                	srli	a4,a4,0x18
1c008a78:	83e1                	srli	a5,a5,0x18
1c008a7a:	fec80e23          	sb	a2,-4(a6)
1c008a7e:	ffc80ea3          	sb	t3,-3(a6)
1c008a82:	fe680f23          	sb	t1,-2(a6)
1c008a86:	fee80fa3          	sb	a4,-1(a6)
1c008a8a:	00d80023          	sb	a3,0(a6)
1c008a8e:	011800a3          	sb	a7,1(a6)
1c008a92:	00a80123          	sb	a0,2(a6)
1c008a96:	00f801a3          	sb	a5,3(a6)
1c008a9a:	0821                	addi	a6,a6,8
1c008a9c:	f6b415e3          	bne	s0,a1,1c008a06 <shake128_squeezeblocks+0x3e>
1c008aa0:	14fd                	addi	s1,s1,-1
1c008aa2:	0a890913          	addi	s2,s2,168
1c008aa6:	f8b1                	bnez	s1,1c0089fa <shake128_squeezeblocks+0x32>
1c008aa8:	40f2                	lw	ra,28(sp)
1c008aaa:	4462                	lw	s0,24(sp)
1c008aac:	44d2                	lw	s1,20(sp)
1c008aae:	4942                	lw	s2,16(sp)
1c008ab0:	49b2                	lw	s3,12(sp)
1c008ab2:	4a22                	lw	s4,8(sp)
1c008ab4:	4a92                	lw	s5,4(sp)
1c008ab6:	4b02                	lw	s6,0(sp)
1c008ab8:	6105                	addi	sp,sp,32
1c008aba:	8082                	ret

1c008abc <shake128_ctx_release>:
1c008abc:	4108                	lw	a0,0(a0)
1c008abe:	0c800593          	li	a1,200
1c008ac2:	47f0206f          	j	1c00b740 <pi_l2_free>

1c008ac6 <shake256>:
1c008ac6:	7131                	addi	sp,sp,-192
1c008ac8:	db26                	sw	s1,180(sp)
1c008aca:	d74e                	sw	s3,172(sp)
1c008acc:	84aa                	mv	s1,a0
1c008ace:	08800993          	li	s3,136
1c008ad2:	0c800513          	li	a0,200
1c008ad6:	dd22                	sw	s0,184(sp)
1c008ad8:	d94a                	sw	s2,176(sp)
1c008ada:	d356                	sw	s5,164(sp)
1c008adc:	df06                	sw	ra,188(sp)
1c008ade:	d552                	sw	s4,168(sp)
1c008ae0:	d15a                	sw	s6,160(sp)
1c008ae2:	cf5e                	sw	s7,156(sp)
1c008ae4:	cd62                	sw	s8,152(sp)
1c008ae6:	0335d9b3          	divu	s3,a1,s3
1c008aea:	892e                	mv	s2,a1
1c008aec:	8432                	mv	s0,a2
1c008aee:	8ab6                	mv	s5,a3
1c008af0:	445020ef          	jal	ra,1c00b734 <pi_l2_malloc>
1c008af4:	24050763          	beqz	a0,1c008d42 <shake256+0x27c>
1c008af8:	46fd                	li	a3,31
1c008afa:	8656                	mv	a2,s5
1c008afc:	85a2                	mv	a1,s0
1c008afe:	8a2a                	mv	s4,a0
1c008b00:	3601                	jal	1c008600 <keccak_absorb.constprop.1>
1c008b02:	08700793          	li	a5,135
1c008b06:	0d27ff63          	bgeu	a5,s2,1c008be4 <shake256+0x11e>
1c008b0a:	00499413          	slli	s0,s3,0x4
1c008b0e:	944e                	add	s0,s0,s3
1c008b10:	040e                	slli	s0,s0,0x3
1c008b12:	7bc1                	lui	s7,0xffff0
1c008b14:	ff010b37          	lui	s6,0xff010
1c008b18:	01000ab7          	lui	s5,0x1000
1c008b1c:	9426                	add	s0,s0,s1
1c008b1e:	8c26                	mv	s8,s1
1c008b20:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008b24:	1b7d                	addi	s6,s6,-1
1c008b26:	1afd                	addi	s5,s5,-1
1c008b28:	85d2                	mv	a1,s4
1c008b2a:	8552                	mv	a0,s4
1c008b2c:	853ff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008b30:	87e2                	mv	a5,s8
1c008b32:	418a0533          	sub	a0,s4,s8
1c008b36:	088c0593          	addi	a1,s8,136
1c008b3a:	00f50733          	add	a4,a0,a5
1c008b3e:	4314                	lw	a3,0(a4)
1c008b40:	4358                	lw	a4,4(a4)
1c008b42:	07a1                	addi	a5,a5,8
1c008b44:	0086d313          	srli	t1,a3,0x8
1c008b48:	00875893          	srli	a7,a4,0x8
1c008b4c:	0ff6f813          	andi	a6,a3,255
1c008b50:	0ff77613          	andi	a2,a4,255
1c008b54:	0ff37313          	andi	t1,t1,255
1c008b58:	0ff8f893          	andi	a7,a7,255
1c008b5c:	0322                	slli	t1,t1,0x8
1c008b5e:	08a2                	slli	a7,a7,0x8
1c008b60:	01787833          	and	a6,a6,s7
1c008b64:	01767633          	and	a2,a2,s7
1c008b68:	00686833          	or	a6,a6,t1
1c008b6c:	01166633          	or	a2,a2,a7
1c008b70:	00ff0337          	lui	t1,0xff0
1c008b74:	00ff08b7          	lui	a7,0xff0
1c008b78:	0066f333          	and	t1,a3,t1
1c008b7c:	011778b3          	and	a7,a4,a7
1c008b80:	01687833          	and	a6,a6,s6
1c008b84:	01667633          	and	a2,a2,s6
1c008b88:	00686833          	or	a6,a6,t1
1c008b8c:	01166633          	or	a2,a2,a7
1c008b90:	82e1                	srli	a3,a3,0x18
1c008b92:	8361                	srli	a4,a4,0x18
1c008b94:	01587833          	and	a6,a6,s5
1c008b98:	01567633          	and	a2,a2,s5
1c008b9c:	06e2                	slli	a3,a3,0x18
1c008b9e:	0762                	slli	a4,a4,0x18
1c008ba0:	00d866b3          	or	a3,a6,a3
1c008ba4:	8f51                	or	a4,a4,a2
1c008ba6:	0086de93          	srli	t4,a3,0x8
1c008baa:	0106de13          	srli	t3,a3,0x10
1c008bae:	00875313          	srli	t1,a4,0x8
1c008bb2:	01075893          	srli	a7,a4,0x10
1c008bb6:	82e1                	srli	a3,a3,0x18
1c008bb8:	8361                	srli	a4,a4,0x18
1c008bba:	ff078c23          	sb	a6,-8(a5)
1c008bbe:	ffd78ca3          	sb	t4,-7(a5)
1c008bc2:	ffc78d23          	sb	t3,-6(a5)
1c008bc6:	fed78da3          	sb	a3,-5(a5)
1c008bca:	fec78e23          	sb	a2,-4(a5)
1c008bce:	fe678ea3          	sb	t1,-3(a5)
1c008bd2:	ff178f23          	sb	a7,-2(a5)
1c008bd6:	fee78fa3          	sb	a4,-1(a5)
1c008bda:	f6f590e3          	bne	a1,a5,1c008b3a <shake256+0x74>
1c008bde:	8c2e                	mv	s8,a1
1c008be0:	f48594e3          	bne	a1,s0,1c008b28 <shake256+0x62>
1c008be4:	08800593          	li	a1,136
1c008be8:	02b97933          	remu	s2,s2,a1
1c008bec:	02091263          	bnez	s2,1c008c10 <shake256+0x14a>
1c008bf0:	546a                	lw	s0,184(sp)
1c008bf2:	50fa                	lw	ra,188(sp)
1c008bf4:	54da                	lw	s1,180(sp)
1c008bf6:	594a                	lw	s2,176(sp)
1c008bf8:	59ba                	lw	s3,172(sp)
1c008bfa:	5a9a                	lw	s5,164(sp)
1c008bfc:	5b0a                	lw	s6,160(sp)
1c008bfe:	4bfa                	lw	s7,156(sp)
1c008c00:	4c6a                	lw	s8,152(sp)
1c008c02:	8552                	mv	a0,s4
1c008c04:	5a2a                	lw	s4,168(sp)
1c008c06:	0c800593          	li	a1,200
1c008c0a:	6129                	addi	sp,sp,192
1c008c0c:	3350206f          	j	1c00b740 <pi_l2_free>
1c008c10:	85d2                	mv	a1,s4
1c008c12:	8552                	mv	a0,s4
1c008c14:	f6aff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008c18:	002c                	addi	a1,sp,8
1c008c1a:	78c1                	lui	a7,0xffff0
1c008c1c:	ff010837          	lui	a6,0xff010
1c008c20:	01000537          	lui	a0,0x1000
1c008c24:	09010e13          	addi	t3,sp,144
1c008c28:	862e                	mv	a2,a1
1c008c2a:	40ba0333          	sub	t1,s4,a1
1c008c2e:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008c32:	187d                	addi	a6,a6,-1
1c008c34:	157d                	addi	a0,a0,-1
1c008c36:	00c307b3          	add	a5,t1,a2
1c008c3a:	0007ae83          	lw	t4,0(a5)
1c008c3e:	43d4                	lw	a3,4(a5)
1c008c40:	0621                	addi	a2,a2,8
1c008c42:	008edf93          	srli	t6,t4,0x8
1c008c46:	0086df13          	srli	t5,a3,0x8
1c008c4a:	0ffef713          	andi	a4,t4,255
1c008c4e:	0ff6f793          	andi	a5,a3,255
1c008c52:	0fffff93          	andi	t6,t6,255
1c008c56:	0fff7f13          	andi	t5,t5,255
1c008c5a:	0fa2                	slli	t6,t6,0x8
1c008c5c:	0f22                	slli	t5,t5,0x8
1c008c5e:	01177733          	and	a4,a4,a7
1c008c62:	0117f7b3          	and	a5,a5,a7
1c008c66:	01f76733          	or	a4,a4,t6
1c008c6a:	01e7e7b3          	or	a5,a5,t5
1c008c6e:	00ff0fb7          	lui	t6,0xff0
1c008c72:	00ff0f37          	lui	t5,0xff0
1c008c76:	01feffb3          	and	t6,t4,t6
1c008c7a:	01e6ff33          	and	t5,a3,t5
1c008c7e:	01077733          	and	a4,a4,a6
1c008c82:	0107f7b3          	and	a5,a5,a6
1c008c86:	01f76733          	or	a4,a4,t6
1c008c8a:	018ede93          	srli	t4,t4,0x18
1c008c8e:	01e7e7b3          	or	a5,a5,t5
1c008c92:	82e1                	srli	a3,a3,0x18
1c008c94:	0ee2                	slli	t4,t4,0x18
1c008c96:	8f69                	and	a4,a4,a0
1c008c98:	06e2                	slli	a3,a3,0x18
1c008c9a:	8fe9                	and	a5,a5,a0
1c008c9c:	01d76733          	or	a4,a4,t4
1c008ca0:	8fd5                	or	a5,a5,a3
1c008ca2:	fee62c23          	sw	a4,-8(a2)
1c008ca6:	fef62e23          	sw	a5,-4(a2)
1c008caa:	f8ce16e3          	bne	t3,a2,1c008c36 <shake256+0x170>
1c008cae:	fff90793          	addi	a5,s2,-1
1c008cb2:	4709                	li	a4,2
1c008cb4:	08f77363          	bgeu	a4,a5,1c008d3a <shake256+0x274>
1c008cb8:	00499413          	slli	s0,s3,0x4
1c008cbc:	013407b3          	add	a5,s0,s3
1c008cc0:	078e                	slli	a5,a5,0x3
1c008cc2:	97a6                	add	a5,a5,s1
1c008cc4:	0fc97813          	andi	a6,s2,252
1c008cc8:	983e                	add	a6,a6,a5
1c008cca:	4198                	lw	a4,0(a1)
1c008ccc:	0791                	addi	a5,a5,4
1c008cce:	0591                	addi	a1,a1,4
1c008cd0:	00875513          	srli	a0,a4,0x8
1c008cd4:	01075613          	srli	a2,a4,0x10
1c008cd8:	01875693          	srli	a3,a4,0x18
1c008cdc:	fea78ea3          	sb	a0,-3(a5)
1c008ce0:	fec78f23          	sb	a2,-2(a5)
1c008ce4:	fed78fa3          	sb	a3,-1(a5)
1c008ce8:	fee78e23          	sb	a4,-4(a5)
1c008cec:	fcf81fe3          	bne	a6,a5,1c008cca <shake256+0x204>
1c008cf0:	ffc97793          	andi	a5,s2,-4
1c008cf4:	eef90ee3          	beq	s2,a5,1c008bf0 <shake256+0x12a>
1c008cf8:	0918                	addi	a4,sp,144
1c008cfa:	973e                	add	a4,a4,a5
1c008cfc:	99a2                	add	s3,s3,s0
1c008cfe:	f7874683          	lbu	a3,-136(a4)
1c008d02:	098e                	slli	s3,s3,0x3
1c008d04:	99a6                	add	s3,s3,s1
1c008d06:	00f98733          	add	a4,s3,a5
1c008d0a:	00d70023          	sb	a3,0(a4)
1c008d0e:	00178713          	addi	a4,a5,1
1c008d12:	ed277fe3          	bgeu	a4,s2,1c008bf0 <shake256+0x12a>
1c008d16:	0914                	addi	a3,sp,144
1c008d18:	96ba                	add	a3,a3,a4
1c008d1a:	f786c683          	lbu	a3,-136(a3)
1c008d1e:	974e                	add	a4,a4,s3
1c008d20:	0789                	addi	a5,a5,2
1c008d22:	00d70023          	sb	a3,0(a4)
1c008d26:	ed27f5e3          	bgeu	a5,s2,1c008bf0 <shake256+0x12a>
1c008d2a:	0918                	addi	a4,sp,144
1c008d2c:	973e                	add	a4,a4,a5
1c008d2e:	f7874703          	lbu	a4,-136(a4)
1c008d32:	99be                	add	s3,s3,a5
1c008d34:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008d38:	bd65                	j	1c008bf0 <shake256+0x12a>
1c008d3a:	4781                	li	a5,0
1c008d3c:	00499413          	slli	s0,s3,0x4
1c008d40:	bf65                	j	1c008cf8 <shake256+0x232>
1c008d42:	06f00513          	li	a0,111
1c008d46:	0bb010ef          	jal	ra,1c00a600 <exit>

1c008d4a <sha3_256>:
1c008d4a:	712d                	addi	sp,sp,-288
1c008d4c:	10812c23          	sw	s0,280(sp)
1c008d50:	4699                	li	a3,6
1c008d52:	842a                	mv	s0,a0
1c008d54:	0828                	addi	a0,sp,24
1c008d56:	10112e23          	sw	ra,284(sp)
1c008d5a:	10912a23          	sw	s1,276(sp)
1c008d5e:	11212823          	sw	s2,272(sp)
1c008d62:	11312623          	sw	s3,268(sp)
1c008d66:	11412423          	sw	s4,264(sp)
1c008d6a:	11512223          	sw	s5,260(sp)
1c008d6e:	11612023          	sw	s6,256(sp)
1c008d72:	dfde                	sw	s7,252(sp)
1c008d74:	dde2                	sw	s8,248(sp)
1c008d76:	dbe6                	sw	s9,244(sp)
1c008d78:	d9ea                	sw	s10,240(sp)
1c008d7a:	d7ee                	sw	s11,236(sp)
1c008d7c:	3051                	jal	1c008600 <keccak_absorb.constprop.1>
1c008d7e:	082c                	addi	a1,sp,24
1c008d80:	852e                	mv	a0,a1
1c008d82:	dfcff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008d86:	4372                	lw	t1,28(sp)
1c008d88:	5612                	lw	a2,36(sp)
1c008d8a:	5732                	lw	a4,44(sp)
1c008d8c:	5582                	lw	a1,32(sp)
1c008d8e:	56a2                	lw	a3,40(sp)
1c008d90:	59d2                	lw	s3,52(sp)
1c008d92:	4ae2                	lw	s5,24(sp)
1c008d94:	00835293          	srli	t0,t1,0x8
1c008d98:	00865f13          	srli	t5,a2,0x8
1c008d9c:	00875893          	srli	a7,a4,0x8
1c008da0:	5a42                	lw	s4,48(sp)
1c008da2:	0085df93          	srli	t6,a1,0x8
1c008da6:	0086de93          	srli	t4,a3,0x8
1c008daa:	0ff2f293          	andi	t0,t0,255
1c008dae:	0fff7f13          	andi	t5,t5,255
1c008db2:	0ff8f893          	andi	a7,a7,255
1c008db6:	0ff37b93          	andi	s7,t1,255
1c008dba:	0ff67913          	andi	s2,a2,255
1c008dbe:	0ff77e13          	andi	t3,a4,255
1c008dc2:	008ad393          	srli	t2,s5,0x8
1c008dc6:	0089d513          	srli	a0,s3,0x8
1c008dca:	0fffff93          	andi	t6,t6,255
1c008dce:	0ffefe93          	andi	t4,t4,255
1c008dd2:	02a2                	slli	t0,t0,0x8
1c008dd4:	0f22                	slli	t5,t5,0x8
1c008dd6:	08a2                	slli	a7,a7,0x8
1c008dd8:	ff0107b7          	lui	a5,0xff010
1c008ddc:	17fd                	addi	a5,a5,-1
1c008dde:	0ff5fb13          	andi	s6,a1,255
1c008de2:	0ff6f493          	andi	s1,a3,255
1c008de6:	005be2b3          	or	t0,s7,t0
1c008dea:	01e96f33          	or	t5,s2,t5
1c008dee:	011e68b3          	or	a7,t3,a7
1c008df2:	0ff3f393          	andi	t2,t2,255
1c008df6:	0fa2                	slli	t6,t6,0x8
1c008df8:	0ea2                	slli	t4,t4,0x8
1c008dfa:	0ff57513          	andi	a0,a0,255
1c008dfe:	00ff0bb7          	lui	s7,0xff0
1c008e02:	0ffafc13          	andi	s8,s5,255
1c008e06:	0ff9f913          	andi	s2,s3,255
1c008e0a:	01767bb3          	and	s7,a2,s7
1c008e0e:	00f8fe33          	and	t3,a7,a5
1c008e12:	008a5813          	srli	a6,s4,0x8
1c008e16:	01fb6fb3          	or	t6,s6,t6
1c008e1a:	01d4eeb3          	or	t4,s1,t4
1c008e1e:	00ff7f33          	and	t5,t5,a5
1c008e22:	010008b7          	lui	a7,0x1000
1c008e26:	03a2                	slli	t2,t2,0x8
1c008e28:	0522                	slli	a0,a0,0x8
1c008e2a:	00ff04b7          	lui	s1,0xff0
1c008e2e:	00ff0b37          	lui	s6,0xff0
1c008e32:	8cf5                	and	s1,s1,a3
1c008e34:	01677b33          	and	s6,a4,s6
1c008e38:	00a96533          	or	a0,s2,a0
1c008e3c:	007c63b3          	or	t2,s8,t2
1c008e40:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c008e44:	00fefeb3          	and	t4,t4,a5
1c008e48:	017f6f33          	or	t5,t5,s7
1c008e4c:	0ff87813          	andi	a6,a6,255
1c008e50:	00ff0c37          	lui	s8,0xff0
1c008e54:	8261                	srli	a2,a2,0x18
1c008e56:	0ffa7d93          	andi	s11,s4,255
1c008e5a:	0185fc33          	and	s8,a1,s8
1c008e5e:	012f7f33          	and	t5,t5,s2
1c008e62:	00ffffb3          	and	t6,t6,a5
1c008e66:	009eeeb3          	or	t4,t4,s1
1c008e6a:	016e6e33          	or	t3,t3,s6
1c008e6e:	8361                	srli	a4,a4,0x18
1c008e70:	0822                	slli	a6,a6,0x8
1c008e72:	00ff0d37          	lui	s10,0xff0
1c008e76:	82e1                	srli	a3,a3,0x18
1c008e78:	0662                	slli	a2,a2,0x18
1c008e7a:	01aafd33          	and	s10,s5,s10
1c008e7e:	010de833          	or	a6,s11,a6
1c008e82:	012efeb3          	and	t4,t4,s2
1c008e86:	012e7e33          	and	t3,t3,s2
1c008e8a:	00cf6633          	or	a2,t5,a2
1c008e8e:	018ada93          	srli	s5,s5,0x18
1c008e92:	018fefb3          	or	t6,t6,s8
1c008e96:	06e2                	slli	a3,a3,0x18
1c008e98:	01871c13          	slli	s8,a4,0x18
1c008e9c:	00ff0bb7          	lui	s7,0xff0
1c008ea0:	00f87b33          	and	s6,a6,a5
1c008ea4:	00dee4b3          	or	s1,t4,a3
1c008ea8:	017a7bb3          	and	s7,s4,s7
1c008eac:	018e66b3          	or	a3,t3,s8
1c008eb0:	018a9813          	slli	a6,s5,0x18
1c008eb4:	018a5713          	srli	a4,s4,0x18
1c008eb8:	00865a93          	srli	s5,a2,0x8
1c008ebc:	01065a13          	srli	s4,a2,0x10
1c008ec0:	00ff0cb7          	lui	s9,0xff0
1c008ec4:	8261                	srli	a2,a2,0x18
1c008ec6:	c232                	sw	a2,4(sp)
1c008ec8:	01937cb3          	and	s9,t1,s9
1c008ecc:	0086d613          	srli	a2,a3,0x8
1c008ed0:	00f3f3b3          	and	t2,t2,a5
1c008ed4:	00f2f2b3          	and	t0,t0,a5
1c008ed8:	c432                	sw	a2,8(sp)
1c008eda:	01a3e3b3          	or	t2,t2,s10
1c008ede:	0106d613          	srli	a2,a3,0x10
1c008ee2:	0192e2b3          	or	t0,t0,s9
1c008ee6:	01835313          	srli	t1,t1,0x18
1c008eea:	81e1                	srli	a1,a1,0x18
1c008eec:	00ff08b7          	lui	a7,0xff0
1c008ef0:	8fe9                	and	a5,a5,a0
1c008ef2:	0123f3b3          	and	t2,t2,s2
1c008ef6:	0122f2b3          	and	t0,t0,s2
1c008efa:	012fffb3          	and	t6,t6,s2
1c008efe:	c632                	sw	a2,12(sp)
1c008f00:	0119f8b3          	and	a7,s3,a7
1c008f04:	4612                	lw	a2,4(sp)
1c008f06:	01831513          	slli	a0,t1,0x18
1c008f0a:	05e2                	slli	a1,a1,0x18
1c008f0c:	017b6333          	or	t1,s6,s7
1c008f10:	0103e833          	or	a6,t2,a6
1c008f14:	00a2e533          	or	a0,t0,a0
1c008f18:	00bfe5b3          	or	a1,t6,a1
1c008f1c:	0117e8b3          	or	a7,a5,a7
1c008f20:	01237333          	and	t1,t1,s2
1c008f24:	0128f8b3          	and	a7,a7,s2
1c008f28:	00885d93          	srli	s11,a6,0x8
1c008f2c:	01085d13          	srli	s10,a6,0x10
1c008f30:	00855c93          	srli	s9,a0,0x8
1c008f34:	01055c13          	srli	s8,a0,0x10
1c008f38:	0085db93          	srli	s7,a1,0x8
1c008f3c:	0105db13          	srli	s6,a1,0x10
1c008f40:	0104d913          	srli	s2,s1,0x10
1c008f44:	0189d793          	srli	a5,s3,0x18
1c008f48:	8161                	srli	a0,a0,0x18
1c008f4a:	0084d993          	srli	s3,s1,0x8
1c008f4e:	81e1                	srli	a1,a1,0x18
1c008f50:	80e1                	srli	s1,s1,0x18
1c008f52:	01885813          	srli	a6,a6,0x18
1c008f56:	01b400a3          	sb	s11,1(s0)
1c008f5a:	01a40123          	sb	s10,2(s0)
1c008f5e:	019402a3          	sb	s9,5(s0)
1c008f62:	01840323          	sb	s8,6(s0)
1c008f66:	00a403a3          	sb	a0,7(s0)
1c008f6a:	017404a3          	sb	s7,9(s0)
1c008f6e:	01640523          	sb	s6,10(s0)
1c008f72:	00b405a3          	sb	a1,11(s0)
1c008f76:	015406a3          	sb	s5,13(s0)
1c008f7a:	01440723          	sb	s4,14(s0)
1c008f7e:	00c407a3          	sb	a2,15(s0)
1c008f82:	013408a3          	sb	s3,17(s0)
1c008f86:	01240923          	sb	s2,18(s0)
1c008f8a:	009409a3          	sb	s1,19(s0)
1c008f8e:	00740023          	sb	t2,0(s0)
1c008f92:	010401a3          	sb	a6,3(s0)
1c008f96:	00540223          	sb	t0,4(s0)
1c008f9a:	01f40423          	sb	t6,8(s0)
1c008f9e:	01e40623          	sb	t5,12(s0)
1c008fa2:	01d40823          	sb	t4,16(s0)
1c008fa6:	01c40a23          	sb	t3,20(s0)
1c008faa:	4622                	lw	a2,8(sp)
1c008fac:	0762                	slli	a4,a4,0x18
1c008fae:	07e2                	slli	a5,a5,0x18
1c008fb0:	00c40aa3          	sb	a2,21(s0)
1c008fb4:	4632                	lw	a2,12(sp)
1c008fb6:	00e36733          	or	a4,t1,a4
1c008fba:	00f8e7b3          	or	a5,a7,a5
1c008fbe:	82e1                	srli	a3,a3,0x18
1c008fc0:	00c40b23          	sb	a2,22(s0)
1c008fc4:	00d40ba3          	sb	a3,23(s0)
1c008fc8:	00875513          	srli	a0,a4,0x8
1c008fcc:	01075593          	srli	a1,a4,0x10
1c008fd0:	0087d613          	srli	a2,a5,0x8
1c008fd4:	0107d693          	srli	a3,a5,0x10
1c008fd8:	8361                	srli	a4,a4,0x18
1c008fda:	83e1                	srli	a5,a5,0x18
1c008fdc:	00640c23          	sb	t1,24(s0)
1c008fe0:	00a40ca3          	sb	a0,25(s0)
1c008fe4:	00b40d23          	sb	a1,26(s0)
1c008fe8:	00e40da3          	sb	a4,27(s0)
1c008fec:	01140e23          	sb	a7,28(s0)
1c008ff0:	00c40ea3          	sb	a2,29(s0)
1c008ff4:	00d40f23          	sb	a3,30(s0)
1c008ff8:	00f40fa3          	sb	a5,31(s0)
1c008ffc:	11c12083          	lw	ra,284(sp)
1c009000:	11812403          	lw	s0,280(sp)
1c009004:	11412483          	lw	s1,276(sp)
1c009008:	11012903          	lw	s2,272(sp)
1c00900c:	10c12983          	lw	s3,268(sp)
1c009010:	10812a03          	lw	s4,264(sp)
1c009014:	10412a83          	lw	s5,260(sp)
1c009018:	10012b03          	lw	s6,256(sp)
1c00901c:	5bfe                	lw	s7,252(sp)
1c00901e:	5c6e                	lw	s8,248(sp)
1c009020:	5cde                	lw	s9,244(sp)
1c009022:	5d4e                	lw	s10,240(sp)
1c009024:	5dbe                	lw	s11,236(sp)
1c009026:	6115                	addi	sp,sp,288
1c009028:	8082                	ret

1c00902a <sha3_512>:
1c00902a:	7105                	addi	sp,sp,-480
1c00902c:	1c812c23          	sw	s0,472(sp)
1c009030:	1d312623          	sw	s3,460(sp)
1c009034:	1d412423          	sw	s4,456(sp)
1c009038:	1c112e23          	sw	ra,476(sp)
1c00903c:	1c912a23          	sw	s1,468(sp)
1c009040:	1d212823          	sw	s2,464(sp)
1c009044:	1d512223          	sw	s5,452(sp)
1c009048:	1d612023          	sw	s6,448(sp)
1c00904c:	1b712e23          	sw	s7,444(sp)
1c009050:	1b812c23          	sw	s8,440(sp)
1c009054:	1b912a23          	sw	s9,436(sp)
1c009058:	1ba12823          	sw	s10,432(sp)
1c00905c:	1bb12623          	sw	s11,428(sp)
1c009060:	842a                	mv	s0,a0
1c009062:	8a32                	mv	s4,a2
1c009064:	0d810993          	addi	s3,sp,216
1c009068:	081c                	addi	a5,sp,16
1c00906a:	4681                	li	a3,0
1c00906c:	4701                	li	a4,0
1c00906e:	c394                	sw	a3,0(a5)
1c009070:	c3d8                	sw	a4,4(a5)
1c009072:	07a1                	addi	a5,a5,8
1c009074:	ff379be3          	bne	a5,s3,1c00906a <sha3_512+0x40>
1c009078:	04700793          	li	a5,71
1c00907c:	0947f463          	bgeu	a5,s4,1c009104 <sha3_512+0xda>
1c009080:	04858a93          	addi	s5,a1,72
1c009084:	8956                	mv	s2,s5
1c009086:	04700493          	li	s1,71
1c00908a:	0818                	addi	a4,sp,16
1c00908c:	0015c783          	lbu	a5,1(a1)
1c009090:	0025ce03          	lbu	t3,2(a1)
1c009094:	0055c803          	lbu	a6,5(a1)
1c009098:	0045cf03          	lbu	t5,4(a1)
1c00909c:	0065c503          	lbu	a0,6(a1)
1c0090a0:	0005ce83          	lbu	t4,0(a1)
1c0090a4:	0035c603          	lbu	a2,3(a1)
1c0090a8:	0075c683          	lbu	a3,7(a1)
1c0090ac:	07a2                	slli	a5,a5,0x8
1c0090ae:	0e42                	slli	t3,t3,0x10
1c0090b0:	0822                	slli	a6,a6,0x8
1c0090b2:	00072303          	lw	t1,0(a4)
1c0090b6:	00472883          	lw	a7,4(a4)
1c0090ba:	01c7e7b3          	or	a5,a5,t3
1c0090be:	01e86833          	or	a6,a6,t5
1c0090c2:	0542                	slli	a0,a0,0x10
1c0090c4:	01d7e7b3          	or	a5,a5,t4
1c0090c8:	0662                	slli	a2,a2,0x18
1c0090ca:	01056533          	or	a0,a0,a6
1c0090ce:	06e2                	slli	a3,a3,0x18
1c0090d0:	8fd1                	or	a5,a5,a2
1c0090d2:	8ec9                	or	a3,a3,a0
1c0090d4:	00f347b3          	xor	a5,t1,a5
1c0090d8:	00d8c6b3          	xor	a3,a7,a3
1c0090dc:	c31c                	sw	a5,0(a4)
1c0090de:	c354                	sw	a3,4(a4)
1c0090e0:	05a1                	addi	a1,a1,8
1c0090e2:	0721                	addi	a4,a4,8
1c0090e4:	fb2594e3          	bne	a1,s2,1c00908c <sha3_512+0x62>
1c0090e8:	080c                	addi	a1,sp,16
1c0090ea:	852e                	mv	a0,a1
1c0090ec:	a92ff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c0090f0:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c0090f4:	04890913          	addi	s2,s2,72
1c0090f8:	85d6                	mv	a1,s5
1c0090fa:	0144f563          	bgeu	s1,s4,1c009104 <sha3_512+0xda>
1c0090fe:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c009102:	b761                	j	1c00908a <sha3_512+0x60>
1c009104:	1218                	addi	a4,sp,288
1c009106:	87ce                	mv	a5,s3
1c009108:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00910c:	0791                	addi	a5,a5,4
1c00910e:	fee79de3          	bne	a5,a4,1c009108 <sha3_512+0xde>
1c009112:	080a0063          	beqz	s4,1c009192 <sha3_512+0x168>
1c009116:	fffa0793          	addi	a5,s4,-1
1c00911a:	4709                	li	a4,2
1c00911c:	68f77563          	bgeu	a4,a5,1c0097a6 <sha3_512+0x77c>
1c009120:	ffca7813          	andi	a6,s4,-4
1c009124:	87ae                	mv	a5,a1
1c009126:	982e                	add	a6,a6,a1
1c009128:	0017c603          	lbu	a2,1(a5)
1c00912c:	0007c503          	lbu	a0,0(a5)
1c009130:	0027c683          	lbu	a3,2(a5)
1c009134:	0037c703          	lbu	a4,3(a5)
1c009138:	0622                	slli	a2,a2,0x8
1c00913a:	8e49                	or	a2,a2,a0
1c00913c:	06c2                	slli	a3,a3,0x10
1c00913e:	8ed1                	or	a3,a3,a2
1c009140:	0762                	slli	a4,a4,0x18
1c009142:	8f55                	or	a4,a4,a3
1c009144:	00e9a023          	sw	a4,0(s3)
1c009148:	0791                	addi	a5,a5,4
1c00914a:	0991                	addi	s3,s3,4
1c00914c:	fd079ee3          	bne	a5,a6,1c009128 <sha3_512+0xfe>
1c009150:	ffca7793          	andi	a5,s4,-4
1c009154:	03478f63          	beq	a5,s4,1c009192 <sha3_512+0x168>
1c009158:	00f58733          	add	a4,a1,a5
1c00915c:	00074603          	lbu	a2,0(a4)
1c009160:	1314                	addi	a3,sp,416
1c009162:	96be                	add	a3,a3,a5
1c009164:	00178713          	addi	a4,a5,1
1c009168:	f2c68c23          	sb	a2,-200(a3)
1c00916c:	03477363          	bgeu	a4,s4,1c009192 <sha3_512+0x168>
1c009170:	00e586b3          	add	a3,a1,a4
1c009174:	0006c683          	lbu	a3,0(a3)
1c009178:	1310                	addi	a2,sp,416
1c00917a:	9732                	add	a4,a4,a2
1c00917c:	0789                	addi	a5,a5,2
1c00917e:	f2d70c23          	sb	a3,-200(a4)
1c009182:	0147f863          	bgeu	a5,s4,1c009192 <sha3_512+0x168>
1c009186:	95be                	add	a1,a1,a5
1c009188:	0005c703          	lbu	a4,0(a1)
1c00918c:	97b2                	add	a5,a5,a2
1c00918e:	f2e78c23          	sb	a4,-200(a5)
1c009192:	131c                	addi	a5,sp,416
1c009194:	9a3e                	add	s4,s4,a5
1c009196:	4799                	li	a5,6
1c009198:	f2fa0c23          	sb	a5,-200(s4)
1c00919c:	0da14703          	lbu	a4,218(sp)
1c0091a0:	0d914f83          	lbu	t6,217(sp)
1c0091a4:	0e214783          	lbu	a5,226(sp)
1c0091a8:	0e114e83          	lbu	t4,225(sp)
1c0091ac:	0e514303          	lbu	t1,229(sp)
1c0091b0:	0e414383          	lbu	t2,228(sp)
1c0091b4:	0e614803          	lbu	a6,230(sp)
1c0091b8:	0d814283          	lbu	t0,216(sp)
1c0091bc:	0e014f03          	lbu	t5,224(sp)
1c0091c0:	0db14503          	lbu	a0,219(sp)
1c0091c4:	0e314603          	lbu	a2,227(sp)
1c0091c8:	0e714683          	lbu	a3,231(sp)
1c0091cc:	0fa2                	slli	t6,t6,0x8
1c0091ce:	0ea2                	slli	t4,t4,0x8
1c0091d0:	0742                	slli	a4,a4,0x10
1c0091d2:	07c2                	slli	a5,a5,0x10
1c0091d4:	0322                	slli	t1,t1,0x8
1c0091d6:	00736333          	or	t1,t1,t2
1c0091da:	01f76733          	or	a4,a4,t6
1c0091de:	01d7e7b3          	or	a5,a5,t4
1c0091e2:	0842                	slli	a6,a6,0x10
1c0091e4:	0dd14e03          	lbu	t3,221(sp)
1c0091e8:	00576733          	or	a4,a4,t0
1c0091ec:	01e7e7b3          	or	a5,a5,t5
1c0091f0:	00686833          	or	a6,a6,t1
1c0091f4:	0662                	slli	a2,a2,0x18
1c0091f6:	06e2                	slli	a3,a3,0x18
1c0091f8:	0562                	slli	a0,a0,0x18
1c0091fa:	0dc14483          	lbu	s1,220(sp)
1c0091fe:	0de14883          	lbu	a7,222(sp)
1c009202:	8d59                	or	a0,a0,a4
1c009204:	00f66733          	or	a4,a2,a5
1c009208:	0106e7b3          	or	a5,a3,a6
1c00920c:	46c2                	lw	a3,16(sp)
1c00920e:	0df14583          	lbu	a1,223(sp)
1c009212:	0e22                	slli	t3,t3,0x8
1c009214:	009e6e33          	or	t3,t3,s1
1c009218:	8d35                	xor	a0,a0,a3
1c00921a:	08c2                	slli	a7,a7,0x10
1c00921c:	46d2                	lw	a3,20(sp)
1c00921e:	01c8e8b3          	or	a7,a7,t3
1c009222:	05e2                	slli	a1,a1,0x18
1c009224:	0115e5b3          	or	a1,a1,a7
1c009228:	8db5                	xor	a1,a1,a3
1c00922a:	46e2                	lw	a3,24(sp)
1c00922c:	0ea14803          	lbu	a6,234(sp)
1c009230:	0e914483          	lbu	s1,233(sp)
1c009234:	8eb9                	xor	a3,a3,a4
1c009236:	4772                	lw	a4,28(sp)
1c009238:	0e814a83          	lbu	s5,232(sp)
1c00923c:	0eb14a03          	lbu	s4,235(sp)
1c009240:	8f3d                	xor	a4,a4,a5
1c009242:	0ec14d03          	lbu	s10,236(sp)
1c009246:	11f14783          	lbu	a5,287(sp)
1c00924a:	0ed14903          	lbu	s2,237(sp)
1c00924e:	c82a                	sw	a0,16(sp)
1c009250:	ca2e                	sw	a1,20(sp)
1c009252:	cc36                	sw	a3,24(sp)
1c009254:	ce3a                	sw	a4,28(sp)
1c009256:	0ee14f83          	lbu	t6,238(sp)
1c00925a:	0f214283          	lbu	t0,242(sp)
1c00925e:	0f114f03          	lbu	t5,241(sp)
1c009262:	0fd14883          	lbu	a7,253(sp)
1c009266:	0fc14b83          	lbu	s7,252(sp)
1c00926a:	04a2                	slli	s1,s1,0x8
1c00926c:	0842                	slli	a6,a6,0x10
1c00926e:	02c2                	slli	t0,t0,0x10
1c009270:	08a2                	slli	a7,a7,0x8
1c009272:	00986833          	or	a6,a6,s1
1c009276:	0f22                	slli	t5,t5,0x8
1c009278:	01e2ef33          	or	t5,t0,t5
1c00927c:	01586833          	or	a6,a6,s5
1c009280:	0178e2b3          	or	t0,a7,s7
1c009284:	018a1893          	slli	a7,s4,0x18
1c009288:	0108e833          	or	a6,a7,a6
1c00928c:	5882                	lw	a7,32(sp)
1c00928e:	0ef14503          	lbu	a0,239(sp)
1c009292:	0922                	slli	s2,s2,0x8
1c009294:	01a96933          	or	s2,s2,s10
1c009298:	0108c8b3          	xor	a7,a7,a6
1c00929c:	0fc2                	slli	t6,t6,0x10
1c00929e:	5812                	lw	a6,36(sp)
1c0092a0:	0f014983          	lbu	s3,240(sp)
1c0092a4:	0f314583          	lbu	a1,243(sp)
1c0092a8:	012fefb3          	or	t6,t6,s2
1c0092ac:	0562                	slli	a0,a0,0x18
1c0092ae:	0f514e83          	lbu	t4,245(sp)
1c0092b2:	01f56533          	or	a0,a0,t6
1c0092b6:	0f414c83          	lbu	s9,244(sp)
1c0092ba:	0f614c03          	lbu	s8,246(sp)
1c0092be:	00a84833          	xor	a6,a6,a0
1c0092c2:	5522                	lw	a0,40(sp)
1c0092c4:	0f714603          	lbu	a2,247(sp)
1c0092c8:	013f6f33          	or	t5,t5,s3
1c0092cc:	05e2                	slli	a1,a1,0x18
1c0092ce:	0f914e03          	lbu	t3,249(sp)
1c0092d2:	0fa14303          	lbu	t1,250(sp)
1c0092d6:	01e5e5b3          	or	a1,a1,t5
1c0092da:	0ea2                	slli	t4,t4,0x8
1c0092dc:	019ee4b3          	or	s1,t4,s9
1c0092e0:	8d2d                	xor	a0,a0,a1
1c0092e2:	010c1e93          	slli	t4,s8,0x10
1c0092e6:	55b2                	lw	a1,44(sp)
1c0092e8:	0f814383          	lbu	t2,248(sp)
1c0092ec:	0fb14683          	lbu	a3,251(sp)
1c0092f0:	009eeeb3          	or	t4,t4,s1
1c0092f4:	0662                	slli	a2,a2,0x18
1c0092f6:	01d66633          	or	a2,a2,t4
1c0092fa:	0342                	slli	t1,t1,0x10
1c0092fc:	0e22                	slli	t3,t3,0x8
1c0092fe:	0fe14b03          	lbu	s6,254(sp)
1c009302:	8db1                	xor	a1,a1,a2
1c009304:	006e6e33          	or	t3,t3,t1
1c009308:	5642                	lw	a2,48(sp)
1c00930a:	0ff14703          	lbu	a4,255(sp)
1c00930e:	007e6e33          	or	t3,t3,t2
1c009312:	06e2                	slli	a3,a3,0x18
1c009314:	01c6e6b3          	or	a3,a3,t3
1c009318:	8e35                	xor	a2,a2,a3
1c00931a:	010b1313          	slli	t1,s6,0x10
1c00931e:	56d2                	lw	a3,52(sp)
1c009320:	00536333          	or	t1,t1,t0
1c009324:	0762                	slli	a4,a4,0x18
1c009326:	00676733          	or	a4,a4,t1
1c00932a:	8f35                	xor	a4,a4,a3
1c00932c:	10114e83          	lbu	t4,257(sp)
1c009330:	10214a83          	lbu	s5,258(sp)
1c009334:	d046                	sw	a7,32(sp)
1c009336:	d242                	sw	a6,36(sp)
1c009338:	d42a                	sw	a0,40(sp)
1c00933a:	d62e                	sw	a1,44(sp)
1c00933c:	d832                	sw	a2,48(sp)
1c00933e:	da3a                	sw	a4,52(sp)
1c009340:	10014903          	lbu	s2,256(sp)
1c009344:	10914303          	lbu	t1,265(sp)
1c009348:	10a14983          	lbu	s3,266(sp)
1c00934c:	10814383          	lbu	t2,264(sp)
1c009350:	10514f83          	lbu	t6,261(sp)
1c009354:	10b14603          	lbu	a2,267(sp)
1c009358:	10414b03          	lbu	s6,260(sp)
1c00935c:	10614e03          	lbu	t3,262(sp)
1c009360:	09c2                	slli	s3,s3,0x10
1c009362:	0322                	slli	t1,t1,0x8
1c009364:	10714583          	lbu	a1,263(sp)
1c009368:	01336333          	or	t1,t1,s3
1c00936c:	00736333          	or	t1,t1,t2
1c009370:	10d14f03          	lbu	t5,269(sp)
1c009374:	0fa2                	slli	t6,t6,0x8
1c009376:	0662                	slli	a2,a2,0x18
1c009378:	10c14a03          	lbu	s4,268(sp)
1c00937c:	016fefb3          	or	t6,t6,s6
1c009380:	11114803          	lbu	a6,273(sp)
1c009384:	11214483          	lbu	s1,274(sp)
1c009388:	10e14883          	lbu	a7,270(sp)
1c00938c:	00666633          	or	a2,a2,t1
1c009390:	0e42                	slli	t3,t3,0x10
1c009392:	5372                	lw	t1,60(sp)
1c009394:	01fe6e33          	or	t3,t3,t6
1c009398:	10f14683          	lbu	a3,271(sp)
1c00939c:	05e2                	slli	a1,a1,0x18
1c00939e:	11014283          	lbu	t0,272(sp)
1c0093a2:	11314703          	lbu	a4,275(sp)
1c0093a6:	01c5e5b3          	or	a1,a1,t3
1c0093aa:	0f22                	slli	t5,t5,0x8
1c0093ac:	014f6f33          	or	t5,t5,s4
1c0093b0:	00b34333          	xor	t1,t1,a1
1c0093b4:	04c2                	slli	s1,s1,0x10
1c0093b6:	4596                	lw	a1,68(sp)
1c0093b8:	0822                	slli	a6,a6,0x8
1c0093ba:	08c2                	slli	a7,a7,0x10
1c0093bc:	10314503          	lbu	a0,259(sp)
1c0093c0:	01e8e8b3          	or	a7,a7,t5
1c0093c4:	00986833          	or	a6,a6,s1
1c0093c8:	06e2                	slli	a3,a3,0x18
1c0093ca:	00586833          	or	a6,a6,t0
1c0093ce:	0116e6b3          	or	a3,a3,a7
1c0093d2:	0ac2                	slli	s5,s5,0x10
1c0093d4:	0ea2                	slli	t4,t4,0x8
1c0093d6:	0762                	slli	a4,a4,0x18
1c0093d8:	5e62                	lw	t3,56(sp)
1c0093da:	8db5                	xor	a1,a1,a3
1c0093dc:	015eeeb3          	or	t4,t4,s5
1c0093e0:	46a6                	lw	a3,72(sp)
1c0093e2:	01076733          	or	a4,a4,a6
1c0093e6:	4806                	lw	a6,64(sp)
1c0093e8:	012eeeb3          	or	t4,t4,s2
1c0093ec:	0562                	slli	a0,a0,0x18
1c0093ee:	01d56533          	or	a0,a0,t4
1c0093f2:	00ae4e33          	xor	t3,t3,a0
1c0093f6:	00c84833          	xor	a6,a6,a2
1c0093fa:	8f35                	xor	a4,a4,a3
1c0093fc:	11414f03          	lbu	t5,276(sp)
1c009400:	11514883          	lbu	a7,277(sp)
1c009404:	11614503          	lbu	a0,278(sp)
1c009408:	11714603          	lbu	a2,279(sp)
1c00940c:	dc72                	sw	t3,56(sp)
1c00940e:	de1a                	sw	t1,60(sp)
1c009410:	c0c2                	sw	a6,64(sp)
1c009412:	c2ae                	sw	a1,68(sp)
1c009414:	c4ba                	sw	a4,72(sp)
1c009416:	11914703          	lbu	a4,281(sp)
1c00941a:	11a14303          	lbu	t1,282(sp)
1c00941e:	11814e03          	lbu	t3,280(sp)
1c009422:	11b14683          	lbu	a3,283(sp)
1c009426:	0342                	slli	t1,t1,0x10
1c009428:	0722                	slli	a4,a4,0x8
1c00942a:	00676733          	or	a4,a4,t1
1c00942e:	01c76733          	or	a4,a4,t3
1c009432:	06e2                	slli	a3,a3,0x18
1c009434:	08a2                	slli	a7,a7,0x8
1c009436:	01e8e8b3          	or	a7,a7,t5
1c00943a:	8f55                	or	a4,a4,a3
1c00943c:	0542                	slli	a0,a0,0x10
1c00943e:	46b6                	lw	a3,76(sp)
1c009440:	01156533          	or	a0,a0,a7
1c009444:	0662                	slli	a2,a2,0x18
1c009446:	11d14803          	lbu	a6,285(sp)
1c00944a:	8e49                	or	a2,a2,a0
1c00944c:	11c14e83          	lbu	t4,284(sp)
1c009450:	8e35                	xor	a2,a2,a3
1c009452:	11e14583          	lbu	a1,286(sp)
1c009456:	46c6                	lw	a3,80(sp)
1c009458:	0822                	slli	a6,a6,0x8
1c00945a:	01d86833          	or	a6,a6,t4
1c00945e:	8eb9                	xor	a3,a3,a4
1c009460:	0807e793          	ori	a5,a5,128
1c009464:	4756                	lw	a4,84(sp)
1c009466:	05c2                	slli	a1,a1,0x10
1c009468:	0105e5b3          	or	a1,a1,a6
1c00946c:	07e2                	slli	a5,a5,0x18
1c00946e:	8fcd                	or	a5,a5,a1
1c009470:	080c                	addi	a1,sp,16
1c009472:	8fb9                	xor	a5,a5,a4
1c009474:	852e                	mv	a0,a1
1c009476:	c6b2                	sw	a2,76(sp)
1c009478:	c8b6                	sw	a3,80(sp)
1c00947a:	cabe                	sw	a5,84(sp)
1c00947c:	f03fe0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c009480:	4552                	lw	a0,20(sp)
1c009482:	45f2                	lw	a1,28(sp)
1c009484:	5612                	lw	a2,36(sp)
1c009486:	56b2                	lw	a3,44(sp)
1c009488:	57d2                	lw	a5,52(sp)
1c00948a:	5772                	lw	a4,60(sp)
1c00948c:	00855b13          	srli	s6,a0,0x8
1c009490:	01055a93          	srli	s5,a0,0x10
1c009494:	01855a13          	srli	s4,a0,0x18
1c009498:	0085d993          	srli	s3,a1,0x8
1c00949c:	0105d913          	srli	s2,a1,0x10
1c0094a0:	0185d493          	srli	s1,a1,0x18
1c0094a4:	0ca10e23          	sb	a0,220(sp)
1c0094a8:	0d610ea3          	sb	s6,221(sp)
1c0094ac:	0d510f23          	sb	s5,222(sp)
1c0094b0:	0d410fa3          	sb	s4,223(sp)
1c0094b4:	00865393          	srli	t2,a2,0x8
1c0094b8:	01065293          	srli	t0,a2,0x10
1c0094bc:	01865f93          	srli	t6,a2,0x18
1c0094c0:	0086df13          	srli	t5,a3,0x8
1c0094c4:	0106de93          	srli	t4,a3,0x10
1c0094c8:	0186de13          	srli	t3,a3,0x18
1c0094cc:	0087d313          	srli	t1,a5,0x8
1c0094d0:	0107d893          	srli	a7,a5,0x10
1c0094d4:	0187d813          	srli	a6,a5,0x18
1c0094d8:	0eb10223          	sb	a1,228(sp)
1c0094dc:	0f3102a3          	sb	s3,229(sp)
1c0094e0:	0f210323          	sb	s2,230(sp)
1c0094e4:	0e9103a3          	sb	s1,231(sp)
1c0094e8:	45c2                	lw	a1,16(sp)
1c0094ea:	4536                	lw	a0,76(sp)
1c0094ec:	0ec10623          	sb	a2,236(sp)
1c0094f0:	0e7106a3          	sb	t2,237(sp)
1c0094f4:	467e                	lw	a2,220(sp)
1c0094f6:	0e510723          	sb	t0,238(sp)
1c0094fa:	0ff107a3          	sb	t6,239(sp)
1c0094fe:	0ed10a23          	sb	a3,244(sp)
1c009502:	0fe10aa3          	sb	t5,245(sp)
1c009506:	46e2                	lw	a3,24(sp)
1c009508:	0fd10b23          	sb	t4,246(sp)
1c00950c:	0fc10ba3          	sb	t3,247(sp)
1c009510:	0e610ea3          	sb	t1,253(sp)
1c009514:	0f110f23          	sb	a7,254(sp)
1c009518:	0f010fa3          	sb	a6,255(sp)
1c00951c:	10e10223          	sb	a4,260(sp)
1c009520:	4816                	lw	a6,68(sp)
1c009522:	0ef10e23          	sb	a5,252(sp)
1c009526:	579e                	lw	a5,228(sp)
1c009528:	00875d93          	srli	s11,a4,0x8
1c00952c:	01075d13          	srli	s10,a4,0x10
1c009530:	00885c93          	srli	s9,a6,0x8
1c009534:	01085c13          	srli	s8,a6,0x10
1c009538:	01885b93          	srli	s7,a6,0x18
1c00953c:	00855b13          	srli	s6,a0,0x8
1c009540:	01055a93          	srli	s5,a0,0x10
1c009544:	01855a13          	srli	s4,a0,0x18
1c009548:	0085d993          	srli	s3,a1,0x8
1c00954c:	0105d913          	srli	s2,a1,0x10
1c009550:	0185d493          	srli	s1,a1,0x18
1c009554:	00865393          	srli	t2,a2,0x8
1c009558:	01065293          	srli	t0,a2,0x10
1c00955c:	01865f93          	srli	t6,a2,0x18
1c009560:	0086df13          	srli	t5,a3,0x8
1c009564:	0106de93          	srli	t4,a3,0x10
1c009568:	0186de13          	srli	t3,a3,0x18
1c00956c:	0087d313          	srli	t1,a5,0x8
1c009570:	0107d893          	srli	a7,a5,0x10
1c009574:	00f40623          	sb	a5,12(s0)
1c009578:	8361                	srli	a4,a4,0x18
1c00957a:	83e1                	srli	a5,a5,0x18
1c00957c:	11b102a3          	sb	s11,261(sp)
1c009580:	11a10323          	sb	s10,262(sp)
1c009584:	10e103a3          	sb	a4,263(sp)
1c009588:	11010623          	sb	a6,268(sp)
1c00958c:	4706                	lw	a4,64(sp)
1c00958e:	119106a3          	sb	s9,269(sp)
1c009592:	11810723          	sb	s8,270(sp)
1c009596:	117107a3          	sb	s7,271(sp)
1c00959a:	10a10a23          	sb	a0,276(sp)
1c00959e:	11610aa3          	sb	s6,277(sp)
1c0095a2:	11510b23          	sb	s5,278(sp)
1c0095a6:	11410ba3          	sb	s4,279(sp)
1c0095aa:	00b40023          	sb	a1,0(s0)
1c0095ae:	4a26                	lw	s4,72(sp)
1c0095b0:	55be                	lw	a1,236(sp)
1c0095b2:	013400a3          	sb	s3,1(s0)
1c0095b6:	01240123          	sb	s2,2(s0)
1c0095ba:	009401a3          	sb	s1,3(s0)
1c0095be:	00c40223          	sb	a2,4(s0)
1c0095c2:	007402a3          	sb	t2,5(s0)
1c0095c6:	565e                	lw	a2,244(sp)
1c0095c8:	00540323          	sb	t0,6(s0)
1c0095cc:	01f403a3          	sb	t6,7(s0)
1c0095d0:	01e404a3          	sb	t5,9(s0)
1c0095d4:	01d40523          	sb	t4,10(s0)
1c0095d8:	01c405a3          	sb	t3,11(s0)
1c0095dc:	006406a3          	sb	t1,13(s0)
1c0095e0:	01140723          	sb	a7,14(s0)
1c0095e4:	00f407a3          	sb	a5,15(s0)
1c0095e8:	00d40423          	sb	a3,8(s0)
1c0095ec:	56fe                	lw	a3,252(sp)
1c0095ee:	5502                	lw	a0,32(sp)
1c0095f0:	54a2                	lw	s1,40(sp)
1c0095f2:	0185db13          	srli	s6,a1,0x18
1c0095f6:	00855d93          	srli	s11,a0,0x8
1c0095fa:	01055d13          	srli	s10,a0,0x10
1c0095fe:	01855c93          	srli	s9,a0,0x18
1c009602:	5522                	lw	a0,40(sp)
1c009604:	5842                	lw	a6,48(sp)
1c009606:	0085dc13          	srli	s8,a1,0x8
1c00960a:	00855a93          	srli	s5,a0,0x8
1c00960e:	8141                	srli	a0,a0,0x10
1c009610:	c42a                	sw	a0,8(sp)
1c009612:	5562                	lw	a0,56(sp)
1c009614:	0105db93          	srli	s7,a1,0x10
1c009618:	00b40a23          	sb	a1,20(s0)
1c00961c:	8161                	srli	a0,a0,0x18
1c00961e:	c22a                	sw	a0,4(sp)
1c009620:	5502                	lw	a0,32(sp)
1c009622:	45a2                	lw	a1,8(sp)
1c009624:	01640ba3          	sb	s6,23(s0)
1c009628:	c62a                	sw	a0,12(sp)
1c00962a:	00c14503          	lbu	a0,12(sp)
1c00962e:	5b22                	lw	s6,40(sp)
1c009630:	0184d993          	srli	s3,s1,0x18
1c009634:	00865913          	srli	s2,a2,0x8
1c009638:	01065493          	srli	s1,a2,0x10
1c00963c:	01865393          	srli	t2,a2,0x18
1c009640:	00a10623          	sb	a0,12(sp)
1c009644:	0ff57513          	andi	a0,a0,255
1c009648:	10412783          	lw	a5,260(sp)
1c00964c:	00885293          	srli	t0,a6,0x8
1c009650:	01085f93          	srli	t6,a6,0x10
1c009654:	01885f13          	srli	t5,a6,0x18
1c009658:	0086de93          	srli	t4,a3,0x8
1c00965c:	5862                	lw	a6,56(sp)
1c00965e:	0106de13          	srli	t3,a3,0x10
1c009662:	0186d313          	srli	t1,a3,0x18
1c009666:	00a40823          	sb	a0,16(s0)
1c00966a:	01b408a3          	sb	s11,17(s0)
1c00966e:	01a40923          	sb	s10,18(s0)
1c009672:	019409a3          	sb	s9,19(s0)
1c009676:	01840aa3          	sb	s8,21(s0)
1c00967a:	01740b23          	sb	s7,22(s0)
1c00967e:	01640c23          	sb	s6,24(s0)
1c009682:	01540ca3          	sb	s5,25(s0)
1c009686:	00b40d23          	sb	a1,26(s0)
1c00968a:	01340da3          	sb	s3,27(s0)
1c00968e:	01240ea3          	sb	s2,29(s0)
1c009692:	00940f23          	sb	s1,30(s0)
1c009696:	00740fa3          	sb	t2,31(s0)
1c00969a:	00c40e23          	sb	a2,28(s0)
1c00969e:	5642                	lw	a2,48(sp)
1c0096a0:	02d40223          	sb	a3,36(s0)
1c0096a4:	56e2                	lw	a3,56(sp)
1c0096a6:	02c40023          	sb	a2,32(s0)
1c0096aa:	10c12603          	lw	a2,268(sp)
1c0096ae:	02d40423          	sb	a3,40(s0)
1c0096b2:	4692                	lw	a3,4(sp)
1c0096b4:	00885893          	srli	a7,a6,0x8
1c0096b8:	025400a3          	sb	t0,33(s0)
1c0096bc:	02d405a3          	sb	a3,43(s0)
1c0096c0:	11412683          	lw	a3,276(sp)
1c0096c4:	03f40123          	sb	t6,34(s0)
1c0096c8:	03e401a3          	sb	t5,35(s0)
1c0096cc:	03d402a3          	sb	t4,37(s0)
1c0096d0:	03c40323          	sb	t3,38(s0)
1c0096d4:	026403a3          	sb	t1,39(s0)
1c0096d8:	02f40623          	sb	a5,44(s0)
1c0096dc:	0087d993          	srli	s3,a5,0x8
1c0096e0:	0107d913          	srli	s2,a5,0x10
1c0096e4:	01085813          	srli	a6,a6,0x10
1c0096e8:	00875493          	srli	s1,a4,0x8
1c0096ec:	008a5e13          	srli	t3,s4,0x8
1c0096f0:	010a5313          	srli	t1,s4,0x10
1c0096f4:	83e1                	srli	a5,a5,0x18
1c0096f6:	01075393          	srli	t2,a4,0x10
1c0096fa:	01875293          	srli	t0,a4,0x18
1c0096fe:	00865f93          	srli	t6,a2,0x8
1c009702:	01065f13          	srli	t5,a2,0x10
1c009706:	01865e93          	srli	t4,a2,0x18
1c00970a:	031404a3          	sb	a7,41(s0)
1c00970e:	03040523          	sb	a6,42(s0)
1c009712:	033406a3          	sb	s3,45(s0)
1c009716:	03240723          	sb	s2,46(s0)
1c00971a:	029408a3          	sb	s1,49(s0)
1c00971e:	03440c23          	sb	s4,56(s0)
1c009722:	018a5893          	srli	a7,s4,0x18
1c009726:	02f407a3          	sb	a5,47(s0)
1c00972a:	02e40823          	sb	a4,48(s0)
1c00972e:	02740923          	sb	t2,50(s0)
1c009732:	025409a3          	sb	t0,51(s0)
1c009736:	02c40a23          	sb	a2,52(s0)
1c00973a:	03f40aa3          	sb	t6,53(s0)
1c00973e:	03e40b23          	sb	t5,54(s0)
1c009742:	03d40ba3          	sb	t4,55(s0)
1c009746:	03c40ca3          	sb	t3,57(s0)
1c00974a:	02640d23          	sb	t1,58(s0)
1c00974e:	0086d813          	srli	a6,a3,0x8
1c009752:	0106d513          	srli	a0,a3,0x10
1c009756:	0186d593          	srli	a1,a3,0x18
1c00975a:	03140da3          	sb	a7,59(s0)
1c00975e:	02d40e23          	sb	a3,60(s0)
1c009762:	03040ea3          	sb	a6,61(s0)
1c009766:	02a40f23          	sb	a0,62(s0)
1c00976a:	02b40fa3          	sb	a1,63(s0)
1c00976e:	1dc12083          	lw	ra,476(sp)
1c009772:	1d812403          	lw	s0,472(sp)
1c009776:	1d412483          	lw	s1,468(sp)
1c00977a:	1d012903          	lw	s2,464(sp)
1c00977e:	1cc12983          	lw	s3,460(sp)
1c009782:	1c812a03          	lw	s4,456(sp)
1c009786:	1c412a83          	lw	s5,452(sp)
1c00978a:	1c012b03          	lw	s6,448(sp)
1c00978e:	1bc12b83          	lw	s7,444(sp)
1c009792:	1b812c03          	lw	s8,440(sp)
1c009796:	1b412c83          	lw	s9,436(sp)
1c00979a:	1b012d03          	lw	s10,432(sp)
1c00979e:	1ac12d83          	lw	s11,428(sp)
1c0097a2:	613d                	addi	sp,sp,480
1c0097a4:	8082                	ret
1c0097a6:	4781                	li	a5,0
1c0097a8:	ba45                	j	1c009158 <sha3_512+0x12e>

1c0097aa <PQCLEAN_KYBER768_CLEAN_gen_matrix>:
1c0097aa:	db010113          	addi	sp,sp,-592
1c0097ae:	21b12e23          	sw	s11,540(sp)
1c0097b2:	6d85                	lui	s11,0x1
1c0097b4:	24912223          	sw	s1,580(sp)
1c0097b8:	25212023          	sw	s2,576(sp)
1c0097bc:	23512a23          	sw	s5,564(sp)
1c0097c0:	23612823          	sw	s6,560(sp)
1c0097c4:	23912223          	sw	s9,548(sp)
1c0097c8:	23a12023          	sw	s10,544(sp)
1c0097cc:	24112623          	sw	ra,588(sp)
1c0097d0:	fffd8d13          	addi	s10,s11,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c0097d4:	24812423          	sw	s0,584(sp)
1c0097d8:	23312e23          	sw	s3,572(sp)
1c0097dc:	23412c23          	sw	s4,568(sp)
1c0097e0:	23712623          	sw	s7,556(sp)
1c0097e4:	23812423          	sw	s8,552(sp)
1c0097e8:	8cae                	mv	s9,a1
1c0097ea:	c432                	sw	a2,8(sp)
1c0097ec:	c62a                	sw	a0,12(sp)
1c0097ee:	4b01                	li	s6,0
1c0097f0:	20c10a93          	addi	s5,sp,524
1c0097f4:	d00d8d93          	addi	s11,s11,-768
1c0097f8:	10000913          	li	s2,256
1c0097fc:	1964                	addi	s1,sp,188
1c0097fe:	4432                	lw	s0,12(sp)
1c009800:	0ffb7c13          	andi	s8,s6,255
1c009804:	4981                	li	s3,0
1c009806:	a831                	j	1c009822 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x78>
1c009808:	00f69023          	sh	a5,0(a3)
1c00980c:	15251763          	bne	a0,s2,1c00995a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1b0>
1c009810:	0808                	addi	a0,sp,16
1c009812:	aaaff0ef          	jal	ra,1c008abc <shake128_ctx_release>
1c009816:	0985                	addi	s3,s3,1
1c009818:	478d                	li	a5,3
1c00981a:	20040413          	addi	s0,s0,512
1c00981e:	0ef98a63          	beq	s3,a5,1c009912 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x168>
1c009822:	47a2                	lw	a5,8(sp)
1c009824:	0ff9f613          	andi	a2,s3,255
1c009828:	cff9                	beqz	a5,1c009906 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x15c>
1c00982a:	86b2                	mv	a3,a2
1c00982c:	85e6                	mv	a1,s9
1c00982e:	8662                	mv	a2,s8
1c009830:	0808                	addi	a0,sp,16
1c009832:	2c5000ef          	jal	ra,1c00a2f6 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c009836:	0810                	addi	a2,sp,16
1c009838:	458d                	li	a1,3
1c00983a:	0848                	addi	a0,sp,20
1c00983c:	98cff0ef          	jal	ra,1c0089c8 <shake128_squeezeblocks>
1c009840:	4b81                	li	s7,0
1c009842:	0858                	addi	a4,sp,20
1c009844:	00174583          	lbu	a1,1(a4)
1c009848:	00074603          	lbu	a2,0(a4)
1c00984c:	001b9693          	slli	a3,s7,0x1
1c009850:	00859793          	slli	a5,a1,0x8
1c009854:	8fd1                	or	a5,a5,a2
1c009856:	01a7f7b3          	and	a5,a5,s10
1c00985a:	07c2                	slli	a5,a5,0x10
1c00985c:	83c1                	srli	a5,a5,0x10
1c00985e:	00274603          	lbu	a2,2(a4)
1c009862:	96a2                	add	a3,a3,s0
1c009864:	0045d313          	srli	t1,a1,0x4
1c009868:	001b8513          	addi	a0,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00986c:	f8fdfee3          	bgeu	s11,a5,1c009808 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x5e>
1c009870:	0612                	slli	a2,a2,0x4
1c009872:	00666633          	or	a2,a2,t1
1c009876:	00cdc863          	blt	s11,a2,1c009886 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xdc>
1c00987a:	001b9793          	slli	a5,s7,0x1
1c00987e:	97a2                	add	a5,a5,s0
1c009880:	00c79023          	sh	a2,0(a5)
1c009884:	0b85                	addi	s7,s7,1
1c009886:	f92b85e3          	beq	s7,s2,1c009810 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00988a:	070d                	addi	a4,a4,3
1c00988c:	faea9ce3          	bne	s5,a4,1c009844 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x9a>
1c009890:	0ff00a13          	li	s4,255
1c009894:	a821                	j	1c0098ac <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x102>
1c009896:	00171593          	slli	a1,a4,0x1
1c00989a:	95aa                	add	a1,a1,a0
1c00989c:	0705                	addi	a4,a4,1
1c00989e:	00f59023          	sh	a5,0(a1)
1c0098a2:	0c676363          	bltu	a4,t1,1c009968 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1be>
1c0098a6:	9bba                	add	s7,s7,a4
1c0098a8:	f77a64e3          	bltu	s4,s7,1c009810 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c0098ac:	0810                	addi	a2,sp,16
1c0098ae:	0848                	addi	a0,sp,20
1c0098b0:	4585                	li	a1,1
1c0098b2:	916ff0ef          	jal	ra,1c0089c8 <shake128_squeezeblocks>
1c0098b6:	001b9513          	slli	a0,s7,0x1
1c0098ba:	9522                	add	a0,a0,s0
1c0098bc:	41790333          	sub	t1,s2,s7
1c0098c0:	0850                	addi	a2,sp,20
1c0098c2:	4701                	li	a4,0
1c0098c4:	00164583          	lbu	a1,1(a2)
1c0098c8:	00064e03          	lbu	t3,0(a2)
1c0098cc:	00264683          	lbu	a3,2(a2)
1c0098d0:	00859793          	slli	a5,a1,0x8
1c0098d4:	01c7e7b3          	or	a5,a5,t3
1c0098d8:	01a7f7b3          	and	a5,a5,s10
1c0098dc:	07c2                	slli	a5,a5,0x10
1c0098de:	0692                	slli	a3,a3,0x4
1c0098e0:	8191                	srli	a1,a1,0x4
1c0098e2:	83c1                	srli	a5,a5,0x10
1c0098e4:	8ecd                	or	a3,a3,a1
1c0098e6:	fafdf8e3          	bgeu	s11,a5,1c009896 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xec>
1c0098ea:	00ddc863          	blt	s11,a3,1c0098fa <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x150>
1c0098ee:	00171793          	slli	a5,a4,0x1
1c0098f2:	97aa                	add	a5,a5,a0
1c0098f4:	00d79023          	sh	a3,0(a5)
1c0098f8:	0705                	addi	a4,a4,1
1c0098fa:	fa6776e3          	bgeu	a4,t1,1c0098a6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c0098fe:	060d                	addi	a2,a2,3
1c009900:	fcc492e3          	bne	s1,a2,1c0098c4 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x11a>
1c009904:	b74d                	j	1c0098a6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c009906:	86e2                	mv	a3,s8
1c009908:	85e6                	mv	a1,s9
1c00990a:	0808                	addi	a0,sp,16
1c00990c:	1eb000ef          	jal	ra,1c00a2f6 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c009910:	b71d                	j	1c009836 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x8c>
1c009912:	47b2                	lw	a5,12(sp)
1c009914:	0b05                	addi	s6,s6,1
1c009916:	60078793          	addi	a5,a5,1536
1c00991a:	c63e                	sw	a5,12(sp)
1c00991c:	ef3b11e3          	bne	s6,s3,1c0097fe <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x54>
1c009920:	24c12083          	lw	ra,588(sp)
1c009924:	24812403          	lw	s0,584(sp)
1c009928:	24412483          	lw	s1,580(sp)
1c00992c:	24012903          	lw	s2,576(sp)
1c009930:	23c12983          	lw	s3,572(sp)
1c009934:	23812a03          	lw	s4,568(sp)
1c009938:	23412a83          	lw	s5,564(sp)
1c00993c:	23012b03          	lw	s6,560(sp)
1c009940:	22c12b83          	lw	s7,556(sp)
1c009944:	22812c03          	lw	s8,552(sp)
1c009948:	22412c83          	lw	s9,548(sp)
1c00994c:	22012d03          	lw	s10,544(sp)
1c009950:	21c12d83          	lw	s11,540(sp)
1c009954:	25010113          	addi	sp,sp,592
1c009958:	8082                	ret
1c00995a:	8191                	srli	a1,a1,0x4
1c00995c:	0612                	slli	a2,a2,0x4
1c00995e:	8e4d                	or	a2,a2,a1
1c009960:	8baa                	mv	s7,a0
1c009962:	f0cddce3          	bge	s11,a2,1c00987a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xd0>
1c009966:	b715                	j	1c00988a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xe0>
1c009968:	f8ddd3e3          	bge	s11,a3,1c0098ee <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x144>
1c00996c:	bf49                	j	1c0098fe <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x154>

1c00996e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c00996e:	7379                	lui	t1,0xffffe
1c009970:	b7010113          	addi	sp,sp,-1168
1c009974:	48112623          	sw	ra,1164(sp)
1c009978:	48812423          	sw	s0,1160(sp)
1c00997c:	48912223          	sw	s1,1156(sp)
1c009980:	49212023          	sw	s2,1152(sp)
1c009984:	47312e23          	sw	s3,1148(sp)
1c009988:	47412c23          	sw	s4,1144(sp)
1c00998c:	47512a23          	sw	s5,1140(sp)
1c009990:	47612823          	sw	s6,1136(sp)
1c009994:	47712623          	sw	s7,1132(sp)
1c009998:	47812423          	sw	s8,1128(sp)
1c00999c:	47912223          	sw	s9,1124(sp)
1c0099a0:	47a12023          	sw	s10,1120(sp)
1c0099a4:	45b12e23          	sw	s11,1116(sp)
1c0099a8:	6a09                	lui	s4,0x2
1c0099aa:	911a                	add	sp,sp,t1
1c0099ac:	7979                	lui	s2,0xffffe
1c0099ae:	0818                	addi	a4,sp,16
1c0099b0:	440a0793          	addi	a5,s4,1088 # 2440 <__CTOR_LIST__-0x1bffdbc4>
1c0099b4:	97ba                	add	a5,a5,a4
1c0099b6:	bc090493          	addi	s1,s2,-1088 # ffffdbc0 <__l2_shared_end+0xe3fedbc0>
1c0099ba:	94be                	add	s1,s1,a5
1c0099bc:	842a                	mv	s0,a0
1c0099be:	8b2e                	mv	s6,a1
1c0099c0:	8526                	mv	a0,s1
1c0099c2:	02000593          	li	a1,32
1c0099c6:	25a9                	jal	1c00a010 <randombytes>
1c0099c8:	85a6                	mv	a1,s1
1c0099ca:	8526                	mv	a0,s1
1c0099cc:	02000613          	li	a2,32
1c0099d0:	e5aff0ef          	jal	ra,1c00902a <sha3_512>
1c0099d4:	0818                	addi	a4,sp,16
1c0099d6:	79fd                	lui	s3,0xfffff
1c0099d8:	440a0793          	addi	a5,s4,1088
1c0099dc:	97ba                	add	a5,a5,a4
1c0099de:	e0098a93          	addi	s5,s3,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c0099e2:	9abe                	add	s5,s5,a5
1c0099e4:	85a6                	mv	a1,s1
1c0099e6:	8556                	mv	a0,s5
1c0099e8:	4601                	li	a2,0
1c0099ea:	33c1                	jal	1c0097aa <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c0099ec:	0818                	addi	a4,sp,16
1c0099ee:	440a0793          	addi	a5,s4,1088
1c0099f2:	97ba                	add	a5,a5,a4
1c0099f4:	80098993          	addi	s3,s3,-2048
1c0099f8:	99be                	add	s3,s3,a5
1c0099fa:	02048493          	addi	s1,s1,32 # ff0020 <__CTOR_LIST__-0x1b00ffe4>
1c0099fe:	85a6                	mv	a1,s1
1c009a00:	854e                	mv	a0,s3
1c009a02:	4601                	li	a2,0
1c009a04:	2ccd                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009a06:	85a6                	mv	a1,s1
1c009a08:	20098513          	addi	a0,s3,512
1c009a0c:	4605                	li	a2,1
1c009a0e:	24e5                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009a10:	85a6                	mv	a1,s1
1c009a12:	40098513          	addi	a0,s3,1024
1c009a16:	4609                	li	a2,2
1c009a18:	2cf9                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009a1a:	8c52                	mv	s8,s4
1c009a1c:	0818                	addi	a4,sp,16
1c009a1e:	440c0793          	addi	a5,s8,1088 # ff0440 <__CTOR_LIST__-0x1b00fbc4>
1c009a22:	97ba                	add	a5,a5,a4
1c009a24:	c0090a13          	addi	s4,s2,-1024
1c009a28:	9a3e                	add	s4,s4,a5
1c009a2a:	85a6                	mv	a1,s1
1c009a2c:	8552                	mv	a0,s4
1c009a2e:	460d                	li	a2,3
1c009a30:	24d9                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009a32:	85a6                	mv	a1,s1
1c009a34:	200a0513          	addi	a0,s4,512
1c009a38:	4611                	li	a2,4
1c009a3a:	2c75                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009a3c:	85a6                	mv	a1,s1
1c009a3e:	4615                	li	a2,5
1c009a40:	400a0513          	addi	a0,s4,1024
1c009a44:	2c4d                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009a46:	854e                	mv	a0,s3
1c009a48:	2999                	jal	1c009e9e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009a4a:	8552                	mv	a0,s4
1c009a4c:	2989                	jal	1c009e9e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009a4e:	0818                	addi	a4,sp,16
1c009a50:	440c0793          	addi	a5,s8,1088
1c009a54:	97ba                	add	a5,a5,a4
1c009a56:	20090493          	addi	s1,s2,512
1c009a5a:	94be                	add	s1,s1,a5
1c009a5c:	864e                	mv	a2,s3
1c009a5e:	85d6                	mv	a1,s5
1c009a60:	8526                	mv	a0,s1
1c009a62:	29d5                	jal	1c009f56 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a64:	8526                	mv	a0,s1
1c009a66:	2669                	jal	1c009df0 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a68:	20048b93          	addi	s7,s1,512
1c009a6c:	864e                	mv	a2,s3
1c009a6e:	600a8593          	addi	a1,s5,1536
1c009a72:	855e                	mv	a0,s7
1c009a74:	21cd                	jal	1c009f56 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a76:	855e                	mv	a0,s7
1c009a78:	2ea5                	jal	1c009df0 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a7a:	e40c0793          	addi	a5,s8,-448
1c009a7e:	0818                	addi	a4,sp,16
1c009a80:	40048a93          	addi	s5,s1,1024
1c009a84:	00f705b3          	add	a1,a4,a5
1c009a88:	864e                	mv	a2,s3
1c009a8a:	8556                	mv	a0,s5
1c009a8c:	21e9                	jal	1c009f56 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a8e:	8556                	mv	a0,s5
1c009a90:	2685                	jal	1c009df0 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a92:	8652                	mv	a2,s4
1c009a94:	85a6                	mv	a1,s1
1c009a96:	8526                	mv	a0,s1
1c009a98:	2b25                	jal	1c009fd0 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c009a9a:	8526                	mv	a0,s1
1c009a9c:	2b21                	jal	1c009fb4 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c009a9e:	85ce                	mv	a1,s3
1c009aa0:	855a                	mv	a0,s6
1c009aa2:	2ec9                	jal	1c009e74 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009aa4:	85a6                	mv	a1,s1
1c009aa6:	8522                	mv	a0,s0
1c009aa8:	26f1                	jal	1c009e74 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009aaa:	0818                	addi	a4,sp,16
1c009aac:	440c0793          	addi	a5,s8,1088
1c009ab0:	97ba                	add	a5,a5,a4
1c009ab2:	97ca                	add	a5,a5,s2
1c009ab4:	c63e                	sw	a5,12(sp)
1c009ab6:	4732                	lw	a4,12(sp)
1c009ab8:	bc47a803          	lw	a6,-1084(a5)
1c009abc:	bc87a503          	lw	a0,-1080(a5)
1c009ac0:	bcc7a583          	lw	a1,-1076(a5)
1c009ac4:	bd07a603          	lw	a2,-1072(a5)
1c009ac8:	bd47a683          	lw	a3,-1068(a5)
1c009acc:	bc07a883          	lw	a7,-1088(a5)
1c009ad0:	bd872703          	lw	a4,-1064(a4)
1c009ad4:	bdc7a783          	lw	a5,-1060(a5)
1c009ad8:	0088dd93          	srli	s11,a7,0x8
1c009adc:	0108dd13          	srli	s10,a7,0x10
1c009ae0:	0188dc93          	srli	s9,a7,0x18
1c009ae4:	00885c13          	srli	s8,a6,0x8
1c009ae8:	01085b93          	srli	s7,a6,0x10
1c009aec:	01885b13          	srli	s6,a6,0x18
1c009af0:	00855a93          	srli	s5,a0,0x8
1c009af4:	01055a13          	srli	s4,a0,0x10
1c009af8:	01855993          	srli	s3,a0,0x18
1c009afc:	0085d913          	srli	s2,a1,0x8
1c009b00:	0105d493          	srli	s1,a1,0x10
1c009b04:	0185d393          	srli	t2,a1,0x18
1c009b08:	00865293          	srli	t0,a2,0x8
1c009b0c:	01065f93          	srli	t6,a2,0x10
1c009b10:	01865f13          	srli	t5,a2,0x18
1c009b14:	0086de93          	srli	t4,a3,0x8
1c009b18:	0186d313          	srli	t1,a3,0x18
1c009b1c:	49140023          	sb	a7,1152(s0)
1c009b20:	49b400a3          	sb	s11,1153(s0)
1c009b24:	49a40123          	sb	s10,1154(s0)
1c009b28:	499401a3          	sb	s9,1155(s0)
1c009b2c:	49040223          	sb	a6,1156(s0)
1c009b30:	498402a3          	sb	s8,1157(s0)
1c009b34:	49740323          	sb	s7,1158(s0)
1c009b38:	496403a3          	sb	s6,1159(s0)
1c009b3c:	48a40423          	sb	a0,1160(s0)
1c009b40:	495404a3          	sb	s5,1161(s0)
1c009b44:	49440523          	sb	s4,1162(s0)
1c009b48:	493405a3          	sb	s3,1163(s0)
1c009b4c:	48b40623          	sb	a1,1164(s0)
1c009b50:	492406a3          	sb	s2,1165(s0)
1c009b54:	48940723          	sb	s1,1166(s0)
1c009b58:	48c40823          	sb	a2,1168(s0)
1c009b5c:	48d40a23          	sb	a3,1172(s0)
1c009b60:	0106de13          	srli	t3,a3,0x10
1c009b64:	487407a3          	sb	t2,1167(s0)
1c009b68:	485408a3          	sb	t0,1169(s0)
1c009b6c:	49f40923          	sb	t6,1170(s0)
1c009b70:	49e409a3          	sb	t5,1171(s0)
1c009b74:	49d40aa3          	sb	t4,1173(s0)
1c009b78:	00875893          	srli	a7,a4,0x8
1c009b7c:	01075813          	srli	a6,a4,0x10
1c009b80:	01875513          	srli	a0,a4,0x18
1c009b84:	0087d593          	srli	a1,a5,0x8
1c009b88:	0107d613          	srli	a2,a5,0x10
1c009b8c:	0187d693          	srli	a3,a5,0x18
1c009b90:	49c40b23          	sb	t3,1174(s0)
1c009b94:	48640ba3          	sb	t1,1175(s0)
1c009b98:	48e40c23          	sb	a4,1176(s0)
1c009b9c:	49140ca3          	sb	a7,1177(s0)
1c009ba0:	49040d23          	sb	a6,1178(s0)
1c009ba4:	48a40da3          	sb	a0,1179(s0)
1c009ba8:	48f40e23          	sb	a5,1180(s0)
1c009bac:	48b40ea3          	sb	a1,1181(s0)
1c009bb0:	48c40f23          	sb	a2,1182(s0)
1c009bb4:	48d40fa3          	sb	a3,1183(s0)
1c009bb8:	6309                	lui	t1,0x2
1c009bba:	911a                	add	sp,sp,t1
1c009bbc:	48c12083          	lw	ra,1164(sp)
1c009bc0:	48812403          	lw	s0,1160(sp)
1c009bc4:	48412483          	lw	s1,1156(sp)
1c009bc8:	48012903          	lw	s2,1152(sp)
1c009bcc:	47c12983          	lw	s3,1148(sp)
1c009bd0:	47812a03          	lw	s4,1144(sp)
1c009bd4:	47412a83          	lw	s5,1140(sp)
1c009bd8:	47012b03          	lw	s6,1136(sp)
1c009bdc:	46c12b83          	lw	s7,1132(sp)
1c009be0:	46812c03          	lw	s8,1128(sp)
1c009be4:	46412c83          	lw	s9,1124(sp)
1c009be8:	46012d03          	lw	s10,1120(sp)
1c009bec:	45c12d83          	lw	s11,1116(sp)
1c009bf0:	49010113          	addi	sp,sp,1168
1c009bf4:	8082                	ret

1c009bf6 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c009bf6:	1141                	addi	sp,sp,-16
1c009bf8:	c422                	sw	s0,8(sp)
1c009bfa:	c226                	sw	s1,4(sp)
1c009bfc:	842a                	mv	s0,a0
1c009bfe:	84ae                	mv	s1,a1
1c009c00:	c606                	sw	ra,12(sp)
1c009c02:	c04a                	sw	s2,0(sp)
1c009c04:	33ad                	jal	1c00996e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c009c06:	48048713          	addi	a4,s1,1152
1c009c0a:	00440793          	addi	a5,s0,4
1c009c0e:	00f77663          	bgeu	a4,a5,1c009c1a <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x24>
1c009c12:	48448793          	addi	a5,s1,1156
1c009c16:	06f46c63          	bltu	s0,a5,1c009c8e <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x98>
1c009c1a:	86a2                	mv	a3,s0
1c009c1c:	4a040313          	addi	t1,s0,1184
1c009c20:	0016c803          	lbu	a6,1(a3)
1c009c24:	0006c883          	lbu	a7,0(a3)
1c009c28:	0026c603          	lbu	a2,2(a3)
1c009c2c:	0036c783          	lbu	a5,3(a3)
1c009c30:	0822                	slli	a6,a6,0x8
1c009c32:	01186833          	or	a6,a6,a7
1c009c36:	0642                	slli	a2,a2,0x10
1c009c38:	01066633          	or	a2,a2,a6
1c009c3c:	07e2                	slli	a5,a5,0x18
1c009c3e:	8fd1                	or	a5,a5,a2
1c009c40:	0087d893          	srli	a7,a5,0x8
1c009c44:	0107d813          	srli	a6,a5,0x10
1c009c48:	83e1                	srli	a5,a5,0x18
1c009c4a:	00c70023          	sb	a2,0(a4)
1c009c4e:	011700a3          	sb	a7,1(a4)
1c009c52:	01070123          	sb	a6,2(a4)
1c009c56:	00f701a3          	sb	a5,3(a4)
1c009c5a:	0691                	addi	a3,a3,4
1c009c5c:	0711                	addi	a4,a4,4
1c009c5e:	fc6691e3          	bne	a3,t1,1c009c20 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x2a>
1c009c62:	6905                	lui	s2,0x1
1c009c64:	92090513          	addi	a0,s2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009c68:	85a2                	mv	a1,s0
1c009c6a:	9526                	add	a0,a0,s1
1c009c6c:	4a000613          	li	a2,1184
1c009c70:	8daff0ef          	jal	ra,1c008d4a <sha3_256>
1c009c74:	94090513          	addi	a0,s2,-1728
1c009c78:	9526                	add	a0,a0,s1
1c009c7a:	02000593          	li	a1,32
1c009c7e:	2e49                	jal	1c00a010 <randombytes>
1c009c80:	40b2                	lw	ra,12(sp)
1c009c82:	4422                	lw	s0,8(sp)
1c009c84:	4492                	lw	s1,4(sp)
1c009c86:	4902                	lw	s2,0(sp)
1c009c88:	4501                	li	a0,0
1c009c8a:	0141                	addi	sp,sp,16
1c009c8c:	8082                	ret
1c009c8e:	87a2                	mv	a5,s0
1c009c90:	4a040613          	addi	a2,s0,1184
1c009c94:	0007c683          	lbu	a3,0(a5)
1c009c98:	0785                	addi	a5,a5,1
1c009c9a:	0705                	addi	a4,a4,1
1c009c9c:	fed70fa3          	sb	a3,-1(a4)
1c009ca0:	fec79ae3          	bne	a5,a2,1c009c94 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x9e>
1c009ca4:	bf7d                	j	1c009c62 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6c>

1c009ca6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>:
1c009ca6:	6805                	lui	a6,0x1
1c009ca8:	18050893          	addi	a7,a0,384 # 1000180 <__CTOR_LIST__-0x1afffe84>
1c009cac:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009cb0:	00059703          	lh	a4,0(a1)
1c009cb4:	00259783          	lh	a5,2(a1)
1c009cb8:	050d                	addi	a0,a0,3
1c009cba:	40f75613          	srai	a2,a4,0xf
1c009cbe:	40f7d693          	srai	a3,a5,0xf
1c009cc2:	01067633          	and	a2,a2,a6
1c009cc6:	0106f6b3          	and	a3,a3,a6
1c009cca:	9732                	add	a4,a4,a2
1c009ccc:	97b6                	add	a5,a5,a3
1c009cce:	0742                	slli	a4,a4,0x10
1c009cd0:	07c2                	slli	a5,a5,0x10
1c009cd2:	8341                	srli	a4,a4,0x10
1c009cd4:	83c1                	srli	a5,a5,0x10
1c009cd6:	00479613          	slli	a2,a5,0x4
1c009cda:	00875693          	srli	a3,a4,0x8
1c009cde:	8ed1                	or	a3,a3,a2
1c009ce0:	8391                	srli	a5,a5,0x4
1c009ce2:	fee50ea3          	sb	a4,-3(a0)
1c009ce6:	fed50f23          	sb	a3,-2(a0)
1c009cea:	fef50fa3          	sb	a5,-1(a0)
1c009cee:	0591                	addi	a1,a1,4
1c009cf0:	fca890e3          	bne	a7,a0,1c009cb0 <PQCLEAN_KYBER768_CLEAN_poly_tobytes+0xa>
1c009cf4:	8082                	ret

1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c009cf6:	7175                	addi	sp,sp,-144
1c009cf8:	c522                	sw	s0,136(sp)
1c009cfa:	86b2                	mv	a3,a2
1c009cfc:	842a                	mv	s0,a0
1c009cfe:	862e                	mv	a2,a1
1c009d00:	850a                	mv	a0,sp
1c009d02:	08000593          	li	a1,128
1c009d06:	c706                	sw	ra,140(sp)
1c009d08:	251d                	jal	1c00a32e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c009d0a:	858a                	mv	a1,sp
1c009d0c:	8522                	mv	a0,s0
1c009d0e:	ff0fe0ef          	jal	ra,1c0084fe <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c009d12:	40ba                	lw	ra,140(sp)
1c009d14:	442a                	lw	s0,136(sp)
1c009d16:	6149                	addi	sp,sp,144
1c009d18:	8082                	ret

1c009d1a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c009d1a:	9f010113          	addi	sp,sp,-1552
1c009d1e:	6341                	lui	t1,0x10
1c009d20:	60812423          	sw	s0,1544(sp)
1c009d24:	60112623          	sw	ra,1548(sp)
1c009d28:	842a                	mv	s0,a0
1c009d2a:	4e01                	li	t3,0
1c009d2c:	137d                	addi	t1,t1,-1
1c009d2e:	10000f93          	li	t6,256
1c009d32:	00061503          	lh	a0,0(a2)
1c009d36:	00461383          	lh	t2,4(a2)
1c009d3a:	00059803          	lh	a6,0(a1)
1c009d3e:	00459283          	lh	t0,4(a1)
1c009d42:	00259683          	lh	a3,2(a1)
1c009d46:	00659f03          	lh	t5,6(a1)
1c009d4a:	00261703          	lh	a4,2(a2)
1c009d4e:	00661e83          	lh	t4,6(a2)
1c009d52:	401e5793          	srai	a5,t3,0x1
1c009d56:	00279893          	slli	a7,a5,0x2
1c009d5a:	60010093          	addi	ra,sp,1536
1c009d5e:	0542                	slli	a0,a0,0x10
1c009d60:	0063f3b3          	and	t2,t2,t1
1c009d64:	0842                	slli	a6,a6,0x10
1c009d66:	0062f2b3          	and	t0,t0,t1
1c009d6a:	0785                	addi	a5,a5,1
1c009d6c:	9886                	add	a7,a7,ra
1c009d6e:	06c2                	slli	a3,a3,0x10
1c009d70:	006f7f33          	and	t5,t5,t1
1c009d74:	00756533          	or	a0,a0,t2
1c009d78:	0742                	slli	a4,a4,0x10
1c009d7a:	006efeb3          	and	t4,t4,t1
1c009d7e:	00586833          	or	a6,a6,t0
1c009d82:	078a                	slli	a5,a5,0x2
1c009d84:	9786                	add	a5,a5,ra
1c009d86:	01e6e6b3          	or	a3,a3,t5
1c009d8a:	01d76733          	or	a4,a4,t4
1c009d8e:	a108a023          	sw	a6,-1536(a7) # fefa00 <__CTOR_LIST__-0x1b010604>
1c009d92:	c0a8a023          	sw	a0,-1024(a7)
1c009d96:	a0d7a023          	sw	a3,-1536(a5)
1c009d9a:	c0e7a023          	sw	a4,-1024(a5)
1c009d9e:	0e11                	addi	t3,t3,4
1c009da0:	05a1                	addi	a1,a1,8
1c009da2:	0621                	addi	a2,a2,8
1c009da4:	f9fe17e3          	bne	t3,t6,1c009d32 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x18>
1c009da8:	0410                	addi	a2,sp,512
1c009daa:	858a                	mv	a1,sp
1c009dac:	40010513          	addi	a0,sp,1024
1c009db0:	ec6fe0ef          	jal	ra,1c008476 <KYBER_poly_pwm>
1c009db4:	40010793          	addi	a5,sp,1024
1c009db8:	8522                	mv	a0,s0
1c009dba:	60010813          	addi	a6,sp,1536
1c009dbe:	4394                	lw	a3,0(a5)
1c009dc0:	43d8                	lw	a4,4(a5)
1c009dc2:	07a1                	addi	a5,a5,8
1c009dc4:	0106d593          	srli	a1,a3,0x10
1c009dc8:	01075613          	srli	a2,a4,0x10
1c009dcc:	00b51023          	sh	a1,0(a0)
1c009dd0:	00c51123          	sh	a2,2(a0)
1c009dd4:	00d51223          	sh	a3,4(a0)
1c009dd8:	00e51323          	sh	a4,6(a0)
1c009ddc:	0521                	addi	a0,a0,8
1c009dde:	fef810e3          	bne	a6,a5,1c009dbe <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0xa4>
1c009de2:	60c12083          	lw	ra,1548(sp)
1c009de6:	60812403          	lw	s0,1544(sp)
1c009dea:	61010113          	addi	sp,sp,1552
1c009dee:	8082                	ret

1c009df0 <PQCLEAN_KYBER768_CLEAN_poly_tomont>:
1c009df0:	1141                	addi	sp,sp,-16
1c009df2:	c422                	sw	s0,8(sp)
1c009df4:	c226                	sw	s1,4(sp)
1c009df6:	c04a                	sw	s2,0(sp)
1c009df8:	c606                	sw	ra,12(sp)
1c009dfa:	842a                	mv	s0,a0
1c009dfc:	20050913          	addi	s2,a0,512
1c009e00:	54900493          	li	s1,1353
1c009e04:	00041503          	lh	a0,0(s0)
1c009e08:	0409                	addi	s0,s0,2
1c009e0a:	02950533          	mul	a0,a0,s1
1c009e0e:	2165                	jal	1c00a2b6 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009e10:	fea41f23          	sh	a0,-2(s0)
1c009e14:	ff2418e3          	bne	s0,s2,1c009e04 <PQCLEAN_KYBER768_CLEAN_poly_tomont+0x14>
1c009e18:	40b2                	lw	ra,12(sp)
1c009e1a:	4422                	lw	s0,8(sp)
1c009e1c:	4492                	lw	s1,4(sp)
1c009e1e:	4902                	lw	s2,0(sp)
1c009e20:	0141                	addi	sp,sp,16
1c009e22:	8082                	ret

1c009e24 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c009e24:	1141                	addi	sp,sp,-16
1c009e26:	c422                	sw	s0,8(sp)
1c009e28:	c226                	sw	s1,4(sp)
1c009e2a:	c606                	sw	ra,12(sp)
1c009e2c:	842a                	mv	s0,a0
1c009e2e:	20050493          	addi	s1,a0,512
1c009e32:	00041503          	lh	a0,0(s0)
1c009e36:	0409                	addi	s0,s0,2
1c009e38:	2969                	jal	1c00a2d2 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009e3a:	fea41f23          	sh	a0,-2(s0)
1c009e3e:	fe941ae3          	bne	s0,s1,1c009e32 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c009e42:	40b2                	lw	ra,12(sp)
1c009e44:	4422                	lw	s0,8(sp)
1c009e46:	4492                	lw	s1,4(sp)
1c009e48:	0141                	addi	sp,sp,16
1c009e4a:	8082                	ret

1c009e4c <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c009e4c:	4781                	li	a5,0
1c009e4e:	20000893          	li	a7,512
1c009e52:	00f606b3          	add	a3,a2,a5
1c009e56:	00f58733          	add	a4,a1,a5
1c009e5a:	0006d803          	lhu	a6,0(a3)
1c009e5e:	00075703          	lhu	a4,0(a4)
1c009e62:	00f506b3          	add	a3,a0,a5
1c009e66:	0789                	addi	a5,a5,2
1c009e68:	9742                	add	a4,a4,a6
1c009e6a:	00e69023          	sh	a4,0(a3)
1c009e6e:	ff1792e3          	bne	a5,a7,1c009e52 <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c009e72:	8082                	ret

1c009e74 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>:
1c009e74:	1141                	addi	sp,sp,-16
1c009e76:	c606                	sw	ra,12(sp)
1c009e78:	c422                	sw	s0,8(sp)
1c009e7a:	c226                	sw	s1,4(sp)
1c009e7c:	842a                	mv	s0,a0
1c009e7e:	84ae                	mv	s1,a1
1c009e80:	351d                	jal	1c009ca6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009e82:	20048593          	addi	a1,s1,512
1c009e86:	18040513          	addi	a0,s0,384
1c009e8a:	3d31                	jal	1c009ca6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009e8c:	30040513          	addi	a0,s0,768
1c009e90:	4422                	lw	s0,8(sp)
1c009e92:	40b2                	lw	ra,12(sp)
1c009e94:	40048593          	addi	a1,s1,1024
1c009e98:	4492                	lw	s1,4(sp)
1c009e9a:	0141                	addi	sp,sp,16
1c009e9c:	b529                	j	1c009ca6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>

1c009e9e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c009e9e:	9e010113          	addi	sp,sp,-1568
1c009ea2:	60912a23          	sw	s1,1556(sp)
1c009ea6:	64c1                	lui	s1,0x10
1c009ea8:	60812c23          	sw	s0,1560(sp)
1c009eac:	61212823          	sw	s2,1552(sp)
1c009eb0:	61312623          	sw	s3,1548(sp)
1c009eb4:	61412423          	sw	s4,1544(sp)
1c009eb8:	60112e23          	sw	ra,1564(sp)
1c009ebc:	8a2a                	mv	s4,a0
1c009ebe:	60050413          	addi	s0,a0,1536
1c009ec2:	40010993          	addi	s3,sp,1024
1c009ec6:	14fd                	addi	s1,s1,-1
1c009ec8:	10000913          	li	s2,256
1c009ecc:	20000613          	li	a2,512
1c009ed0:	85d2                	mv	a1,s4
1c009ed2:	854e                	mv	a0,s3
1c009ed4:	296d                	jal	1c00a38e <memcpy>
1c009ed6:	864e                	mv	a2,s3
1c009ed8:	4681                	li	a3,0
1c009eda:	00061703          	lh	a4,0(a2)
1c009ede:	00261583          	lh	a1,2(a2)
1c009ee2:	4016d793          	srai	a5,a3,0x1
1c009ee6:	078a                	slli	a5,a5,0x2
1c009ee8:	0742                	slli	a4,a4,0x10
1c009eea:	8de5                	and	a1,a1,s1
1c009eec:	60010513          	addi	a0,sp,1536
1c009ef0:	97aa                	add	a5,a5,a0
1c009ef2:	8f4d                	or	a4,a4,a1
1c009ef4:	a0e7a023          	sw	a4,-1536(a5)
1c009ef8:	0689                	addi	a3,a3,2
1c009efa:	0611                	addi	a2,a2,4
1c009efc:	fd269fe3          	bne	a3,s2,1c009eda <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x3c>
1c009f00:	040c                	addi	a1,sp,512
1c009f02:	850a                	mv	a0,sp
1c009f04:	d08fe0ef          	jal	ra,1c00840c <KYBER_poly_ntt>
1c009f08:	0418                	addi	a4,sp,512
1c009f0a:	87d2                	mv	a5,s4
1c009f0c:	4310                	lw	a2,0(a4)
1c009f0e:	4354                	lw	a3,4(a4)
1c009f10:	0721                	addi	a4,a4,8
1c009f12:	01065813          	srli	a6,a2,0x10
1c009f16:	0106d593          	srli	a1,a3,0x10
1c009f1a:	01079023          	sh	a6,0(a5)
1c009f1e:	00b79123          	sh	a1,2(a5)
1c009f22:	00c79223          	sh	a2,4(a5)
1c009f26:	00d79323          	sh	a3,6(a5)
1c009f2a:	07a1                	addi	a5,a5,8
1c009f2c:	fee990e3          	bne	s3,a4,1c009f0c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x6e>
1c009f30:	200a0a13          	addi	s4,s4,512
1c009f34:	f9441ce3          	bne	s0,s4,1c009ecc <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c009f38:	61c12083          	lw	ra,1564(sp)
1c009f3c:	61812403          	lw	s0,1560(sp)
1c009f40:	61412483          	lw	s1,1556(sp)
1c009f44:	61012903          	lw	s2,1552(sp)
1c009f48:	60c12983          	lw	s3,1548(sp)
1c009f4c:	60812a03          	lw	s4,1544(sp)
1c009f50:	62010113          	addi	sp,sp,1568
1c009f54:	8082                	ret

1c009f56 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c009f56:	df010113          	addi	sp,sp,-528
1c009f5a:	20112623          	sw	ra,524(sp)
1c009f5e:	20812423          	sw	s0,520(sp)
1c009f62:	20912223          	sw	s1,516(sp)
1c009f66:	21212023          	sw	s2,512(sp)
1c009f6a:	842a                	mv	s0,a0
1c009f6c:	84ae                	mv	s1,a1
1c009f6e:	8932                	mv	s2,a2
1c009f70:	336d                	jal	1c009d1a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009f72:	20090613          	addi	a2,s2,512
1c009f76:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c009f7a:	850a                	mv	a0,sp
1c009f7c:	3b79                	jal	1c009d1a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009f7e:	860a                	mv	a2,sp
1c009f80:	85a2                	mv	a1,s0
1c009f82:	8522                	mv	a0,s0
1c009f84:	35e1                	jal	1c009e4c <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009f86:	40090613          	addi	a2,s2,1024
1c009f8a:	40048593          	addi	a1,s1,1024
1c009f8e:	850a                	mv	a0,sp
1c009f90:	3369                	jal	1c009d1a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009f92:	860a                	mv	a2,sp
1c009f94:	85a2                	mv	a1,s0
1c009f96:	8522                	mv	a0,s0
1c009f98:	3d55                	jal	1c009e4c <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009f9a:	8522                	mv	a0,s0
1c009f9c:	3561                	jal	1c009e24 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009f9e:	20c12083          	lw	ra,524(sp)
1c009fa2:	20812403          	lw	s0,520(sp)
1c009fa6:	20412483          	lw	s1,516(sp)
1c009faa:	20012903          	lw	s2,512(sp)
1c009fae:	21010113          	addi	sp,sp,528
1c009fb2:	8082                	ret

1c009fb4 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c009fb4:	1141                	addi	sp,sp,-16
1c009fb6:	c606                	sw	ra,12(sp)
1c009fb8:	c422                	sw	s0,8(sp)
1c009fba:	842a                	mv	s0,a0
1c009fbc:	35a5                	jal	1c009e24 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009fbe:	20040513          	addi	a0,s0,512
1c009fc2:	358d                	jal	1c009e24 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009fc4:	40040513          	addi	a0,s0,1024
1c009fc8:	4422                	lw	s0,8(sp)
1c009fca:	40b2                	lw	ra,12(sp)
1c009fcc:	0141                	addi	sp,sp,16
1c009fce:	bd99                	j	1c009e24 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c009fd0 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c009fd0:	1101                	addi	sp,sp,-32
1c009fd2:	cc22                	sw	s0,24(sp)
1c009fd4:	ca26                	sw	s1,20(sp)
1c009fd6:	c84a                	sw	s2,16(sp)
1c009fd8:	c64e                	sw	s3,12(sp)
1c009fda:	c452                	sw	s4,8(sp)
1c009fdc:	ce06                	sw	ra,28(sp)
1c009fde:	89aa                	mv	s3,a0
1c009fe0:	892e                	mv	s2,a1
1c009fe2:	84b2                	mv	s1,a2
1c009fe4:	4401                	li	s0,0
1c009fe6:	60000a13          	li	s4,1536
1c009fea:	00848633          	add	a2,s1,s0
1c009fee:	008905b3          	add	a1,s2,s0
1c009ff2:	00898533          	add	a0,s3,s0
1c009ff6:	20040413          	addi	s0,s0,512
1c009ffa:	3d89                	jal	1c009e4c <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009ffc:	ff4417e3          	bne	s0,s4,1c009fea <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00a000:	40f2                	lw	ra,28(sp)
1c00a002:	4462                	lw	s0,24(sp)
1c00a004:	44d2                	lw	s1,20(sp)
1c00a006:	4942                	lw	s2,16(sp)
1c00a008:	49b2                	lw	s3,12(sp)
1c00a00a:	4a22                	lw	s4,8(sp)
1c00a00c:	6105                	addi	sp,sp,32
1c00a00e:	8082                	ret

1c00a010 <randombytes>:
1c00a010:	2a058263          	beqz	a1,1c00a2b4 <randombytes+0x2a4>
1c00a014:	715d                	addi	sp,sp,-80
1c00a016:	00b50733          	add	a4,a0,a1
1c00a01a:	c63a                	sw	a4,12(sp)
1c00a01c:	9e378737          	lui	a4,0x9e378
1c00a020:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c00a024:	1c0067b7          	lui	a5,0x1c006
1c00a028:	c43a                	sw	a4,8(sp)
1c00a02a:	e377a737          	lui	a4,0xe377a
1c00a02e:	5e478793          	addi	a5,a5,1508 # 1c0065e4 <outleft>
1c00a032:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c00a036:	c83e                	sw	a5,16(sp)
1c00a038:	ca3a                	sw	a4,20(sp)
1c00a03a:	439c                	lw	a5,0(a5)
1c00a03c:	c6ef3737          	lui	a4,0xc6ef3
1c00a040:	c6a2                	sw	s0,76(sp)
1c00a042:	1c0062b7          	lui	t0,0x1c006
1c00a046:	1c006437          	lui	s0,0x1c006
1c00a04a:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c00a04e:	d06e                	sw	s11,32(sp)
1c00a050:	c4a6                	sw	s1,72(sp)
1c00a052:	c2ca                	sw	s2,68(sp)
1c00a054:	c0ce                	sw	s3,64(sp)
1c00a056:	de52                	sw	s4,60(sp)
1c00a058:	dc56                	sw	s5,56(sp)
1c00a05a:	da5a                	sw	s6,52(sp)
1c00a05c:	d85e                	sw	s7,48(sp)
1c00a05e:	d662                	sw	s8,44(sp)
1c00a060:	d466                	sw	s9,40(sp)
1c00a062:	d26a                	sw	s10,36(sp)
1c00a064:	8daa                	mv	s11,a0
1c00a066:	5c040413          	addi	s0,s0,1472 # 1c0065c0 <out>
1c00a06a:	59028293          	addi	t0,t0,1424 # 1c006590 <in>
1c00a06e:	cc3a                	sw	a4,24(sp)
1c00a070:	cf85                	beqz	a5,1c00a0a8 <randombytes+0x98>
1c00a072:	17fd                	addi	a5,a5,-1
1c00a074:	00279713          	slli	a4,a5,0x2
1c00a078:	9722                	add	a4,a4,s0
1c00a07a:	4304                	lw	s1,0(a4)
1c00a07c:	4742                	lw	a4,16(sp)
1c00a07e:	009d8023          	sb	s1,0(s11)
1c00a082:	0d85                	addi	s11,s11,1
1c00a084:	c31c                	sw	a5,0(a4)
1c00a086:	4732                	lw	a4,12(sp)
1c00a088:	feed94e3          	bne	s11,a4,1c00a070 <randombytes+0x60>
1c00a08c:	4436                	lw	s0,76(sp)
1c00a08e:	44a6                	lw	s1,72(sp)
1c00a090:	4916                	lw	s2,68(sp)
1c00a092:	4986                	lw	s3,64(sp)
1c00a094:	5a72                	lw	s4,60(sp)
1c00a096:	5ae2                	lw	s5,56(sp)
1c00a098:	5b52                	lw	s6,52(sp)
1c00a09a:	5bc2                	lw	s7,48(sp)
1c00a09c:	5c32                	lw	s8,44(sp)
1c00a09e:	5ca2                	lw	s9,40(sp)
1c00a0a0:	5d12                	lw	s10,36(sp)
1c00a0a2:	5d82                	lw	s11,32(sp)
1c00a0a4:	6161                	addi	sp,sp,80
1c00a0a6:	8082                	ret
1c00a0a8:	0002a703          	lw	a4,0(t0)
1c00a0ac:	0042ae83          	lw	t4,4(t0)
1c00a0b0:	0082af03          	lw	t5,8(t0)
1c00a0b4:	0705                	addi	a4,a4,1
1c00a0b6:	00e2a023          	sw	a4,0(t0)
1c00a0ba:	00c2af83          	lw	t6,12(t0)
1c00a0be:	ef11                	bnez	a4,1c00a0da <randombytes+0xca>
1c00a0c0:	0e85                	addi	t4,t4,1
1c00a0c2:	01d2a223          	sw	t4,4(t0)
1c00a0c6:	000e9a63          	bnez	t4,1c00a0da <randombytes+0xca>
1c00a0ca:	0f05                	addi	t5,t5,1
1c00a0cc:	01e2a423          	sw	t5,8(t0)
1c00a0d0:	000f1563          	bnez	t5,1c00a0da <randombytes+0xca>
1c00a0d4:	0f85                	addi	t6,t6,1
1c00a0d6:	01f2a623          	sw	t6,12(t0)
1c00a0da:	0102ae03          	lw	t3,16(t0)
1c00a0de:	0142a303          	lw	t1,20(t0)
1c00a0e2:	0182a883          	lw	a7,24(t0)
1c00a0e6:	01c2a803          	lw	a6,28(t0)
1c00a0ea:	0202a503          	lw	a0,32(t0)
1c00a0ee:	0242a583          	lw	a1,36(t0)
1c00a0f2:	0282a603          	lw	a2,40(t0)
1c00a0f6:	02c2a683          	lw	a3,44(t0)
1c00a0fa:	00974713          	xori	a4,a4,9
1c00a0fe:	007ece93          	xori	t4,t4,7
1c00a102:	009f4f13          	xori	t5,t5,9
1c00a106:	003fcf93          	xori	t6,t6,3
1c00a10a:	002e4e13          	xori	t3,t3,2
1c00a10e:	00334313          	xori	t1,t1,3
1c00a112:	0088c893          	xori	a7,a7,8
1c00a116:	00484813          	xori	a6,a6,4
1c00a11a:	00654513          	xori	a0,a0,6
1c00a11e:	0025c593          	xori	a1,a1,2
1c00a122:	00664613          	xori	a2,a2,6
1c00a126:	0046c693          	xori	a3,a3,4
1c00a12a:	4495                	li	s1,5
1c00a12c:	49a5                	li	s3,9
1c00a12e:	4a1d                	li	s4,7
1c00a130:	4a89                	li	s5,2
1c00a132:	4b0d                	li	s6,3
1c00a134:	4ba1                	li	s7,8
1c00a136:	4d0d                	li	s10,3
1c00a138:	4c0d                	li	s8,3
1c00a13a:	4781                	li	a5,0
1c00a13c:	ce6e                	sw	s11,28(sp)
1c00a13e:	43d2                	lw	t2,20(sp)
1c00a140:	00778db3          	add	s11,a5,t2
1c00a144:	43a2                	lw	t2,8(sp)
1c00a146:	01b6dc93          	srli	s9,a3,0x1b
1c00a14a:	00569913          	slli	s2,a3,0x5
1c00a14e:	979e                	add	a5,a5,t2
1c00a150:	0036c393          	xori	t2,a3,3
1c00a154:	01996933          	or	s2,s2,s9
1c00a158:	93be                	add	t2,t2,a5
1c00a15a:	0123c3b3          	xor	t2,t2,s2
1c00a15e:	971e                	add	a4,a4,t2
1c00a160:	01975c93          	srli	s9,a4,0x19
1c00a164:	00174393          	xori	t2,a4,1
1c00a168:	00771913          	slli	s2,a4,0x7
1c00a16c:	01996933          	or	s2,s2,s9
1c00a170:	93be                	add	t2,t2,a5
1c00a172:	0123c3b3          	xor	t2,t2,s2
1c00a176:	9e9e                	add	t4,t4,t2
1c00a178:	017edc93          	srli	s9,t4,0x17
1c00a17c:	004ec393          	xori	t2,t4,4
1c00a180:	009e9913          	slli	s2,t4,0x9
1c00a184:	01996933          	or	s2,s2,s9
1c00a188:	93be                	add	t2,t2,a5
1c00a18a:	0123c3b3          	xor	t2,t2,s2
1c00a18e:	9f1e                	add	t5,t5,t2
1c00a190:	013f5c93          	srli	s9,t5,0x13
1c00a194:	001f4393          	xori	t2,t5,1
1c00a198:	00df1913          	slli	s2,t5,0xd
1c00a19c:	01996933          	or	s2,s2,s9
1c00a1a0:	93be                	add	t2,t2,a5
1c00a1a2:	0123c3b3          	xor	t2,t2,s2
1c00a1a6:	9f9e                	add	t6,t6,t2
1c00a1a8:	01bfdc93          	srli	s9,t6,0x1b
1c00a1ac:	005fc393          	xori	t2,t6,5
1c00a1b0:	005f9913          	slli	s2,t6,0x5
1c00a1b4:	01996933          	or	s2,s2,s9
1c00a1b8:	93be                	add	t2,t2,a5
1c00a1ba:	0123c3b3          	xor	t2,t2,s2
1c00a1be:	9e1e                	add	t3,t3,t2
1c00a1c0:	019e5c93          	srli	s9,t3,0x19
1c00a1c4:	009e4393          	xori	t2,t3,9
1c00a1c8:	007e1913          	slli	s2,t3,0x7
1c00a1cc:	01996933          	or	s2,s2,s9
1c00a1d0:	93be                	add	t2,t2,a5
1c00a1d2:	0123c3b3          	xor	t2,t2,s2
1c00a1d6:	931e                	add	t1,t1,t2
1c00a1d8:	01735c93          	srli	s9,t1,0x17
1c00a1dc:	00234393          	xori	t2,t1,2
1c00a1e0:	00931913          	slli	s2,t1,0x9
1c00a1e4:	01996933          	or	s2,s2,s9
1c00a1e8:	93be                	add	t2,t2,a5
1c00a1ea:	0123c3b3          	xor	t2,t2,s2
1c00a1ee:	989e                	add	a7,a7,t2
1c00a1f0:	0138dc93          	srli	s9,a7,0x13
1c00a1f4:	0068c393          	xori	t2,a7,6
1c00a1f8:	00d89913          	slli	s2,a7,0xd
1c00a1fc:	01996933          	or	s2,s2,s9
1c00a200:	93be                	add	t2,t2,a5
1c00a202:	0123c3b3          	xor	t2,t2,s2
1c00a206:	981e                	add	a6,a6,t2
1c00a208:	01b85c93          	srli	s9,a6,0x1b
1c00a20c:	00584393          	xori	t2,a6,5
1c00a210:	00581913          	slli	s2,a6,0x5
1c00a214:	01996933          	or	s2,s2,s9
1c00a218:	93be                	add	t2,t2,a5
1c00a21a:	0123c3b3          	xor	t2,t2,s2
1c00a21e:	951e                	add	a0,a0,t2
1c00a220:	01955c93          	srli	s9,a0,0x19
1c00a224:	00354393          	xori	t2,a0,3
1c00a228:	00751913          	slli	s2,a0,0x7
1c00a22c:	01996933          	or	s2,s2,s9
1c00a230:	93be                	add	t2,t2,a5
1c00a232:	0123c3b3          	xor	t2,t2,s2
1c00a236:	959e                	add	a1,a1,t2
1c00a238:	0175dc93          	srli	s9,a1,0x17
1c00a23c:	0055c393          	xori	t2,a1,5
1c00a240:	00959913          	slli	s2,a1,0x9
1c00a244:	01996933          	or	s2,s2,s9
1c00a248:	93be                	add	t2,t2,a5
1c00a24a:	0123c3b3          	xor	t2,t2,s2
1c00a24e:	961e                	add	a2,a2,t2
1c00a250:	00864393          	xori	t2,a2,8
1c00a254:	00d61913          	slli	s2,a2,0xd
1c00a258:	01365c93          	srli	s9,a2,0x13
1c00a25c:	93be                	add	t2,t2,a5
1c00a25e:	01996933          	or	s2,s2,s9
1c00a262:	0123c3b3          	xor	t2,t2,s2
1c00a266:	969e                	add	a3,a3,t2
1c00a268:	edb79ee3          	bne	a5,s11,1c00a144 <randombytes+0x134>
1c00a26c:	43e2                	lw	t2,24(sp)
1c00a26e:	01cc4c33          	xor	s8,s8,t3
1c00a272:	006d4d33          	xor	s10,s10,t1
1c00a276:	011bcbb3          	xor	s7,s7,a7
1c00a27a:	010b4b33          	xor	s6,s6,a6
1c00a27e:	00aacab3          	xor	s5,s5,a0
1c00a282:	00ba4a33          	xor	s4,s4,a1
1c00a286:	00c9c9b3          	xor	s3,s3,a2
1c00a28a:	8cb5                	xor	s1,s1,a3
1c00a28c:	ea7799e3          	bne	a5,t2,1c00a13e <randombytes+0x12e>
1c00a290:	4df2                	lw	s11,28(sp)
1c00a292:	01842023          	sw	s8,0(s0)
1c00a296:	01a42223          	sw	s10,4(s0)
1c00a29a:	01742423          	sw	s7,8(s0)
1c00a29e:	01642623          	sw	s6,12(s0)
1c00a2a2:	01542823          	sw	s5,16(s0)
1c00a2a6:	01442a23          	sw	s4,20(s0)
1c00a2aa:	01342c23          	sw	s3,24(s0)
1c00a2ae:	cc44                	sw	s1,28(s0)
1c00a2b0:	479d                	li	a5,7
1c00a2b2:	b3e9                	j	1c00a07c <randombytes+0x6c>
1c00a2b4:	8082                	ret

1c00a2b6 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00a2b6:	777d                	lui	a4,0xfffff
1c00a2b8:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00a2bc:	02f507b3          	mul	a5,a0,a5
1c00a2c0:	2ff70713          	addi	a4,a4,767
1c00a2c4:	07c2                	slli	a5,a5,0x10
1c00a2c6:	87c1                	srai	a5,a5,0x10
1c00a2c8:	02e787b3          	mul	a5,a5,a4
1c00a2cc:	953e                	add	a0,a0,a5
1c00a2ce:	8541                	srai	a0,a0,0x10
1c00a2d0:	8082                	ret

1c00a2d2 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00a2d2:	6795                	lui	a5,0x5
1c00a2d4:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a2d8:	02f507b3          	mul	a5,a0,a5
1c00a2dc:	02000737          	lui	a4,0x2000
1c00a2e0:	97ba                	add	a5,a5,a4
1c00a2e2:	6705                	lui	a4,0x1
1c00a2e4:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a2e8:	87e9                	srai	a5,a5,0x1a
1c00a2ea:	02e787b3          	mul	a5,a5,a4
1c00a2ee:	8d1d                	sub	a0,a0,a5
1c00a2f0:	0542                	slli	a0,a0,0x10
1c00a2f2:	8541                	srai	a0,a0,0x10
1c00a2f4:	8082                	ret

1c00a2f6 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00a2f6:	7139                	addi	sp,sp,-64
1c00a2f8:	da26                	sw	s1,52(sp)
1c00a2fa:	d84a                	sw	s2,48(sp)
1c00a2fc:	84b2                	mv	s1,a2
1c00a2fe:	892a                	mv	s2,a0
1c00a300:	02000613          	li	a2,32
1c00a304:	0068                	addi	a0,sp,12
1c00a306:	de06                	sw	ra,60(sp)
1c00a308:	dc22                	sw	s0,56(sp)
1c00a30a:	8436                	mv	s0,a3
1c00a30c:	2049                	jal	1c00a38e <memcpy>
1c00a30e:	006c                	addi	a1,sp,12
1c00a310:	854a                	mv	a0,s2
1c00a312:	02200613          	li	a2,34
1c00a316:	02910623          	sb	s1,44(sp)
1c00a31a:	028106a3          	sb	s0,45(sp)
1c00a31e:	cbefe0ef          	jal	ra,1c0087dc <shake128_absorb>
1c00a322:	50f2                	lw	ra,60(sp)
1c00a324:	5462                	lw	s0,56(sp)
1c00a326:	54d2                	lw	s1,52(sp)
1c00a328:	5942                	lw	s2,48(sp)
1c00a32a:	6121                	addi	sp,sp,64
1c00a32c:	8082                	ret

1c00a32e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00a32e:	7139                	addi	sp,sp,-64
1c00a330:	87b2                	mv	a5,a2
1c00a332:	da26                	sw	s1,52(sp)
1c00a334:	d84a                	sw	s2,48(sp)
1c00a336:	84aa                	mv	s1,a0
1c00a338:	892e                	mv	s2,a1
1c00a33a:	02000613          	li	a2,32
1c00a33e:	85be                	mv	a1,a5
1c00a340:	0068                	addi	a0,sp,12
1c00a342:	de06                	sw	ra,60(sp)
1c00a344:	dc22                	sw	s0,56(sp)
1c00a346:	8436                	mv	s0,a3
1c00a348:	2099                	jal	1c00a38e <memcpy>
1c00a34a:	0070                	addi	a2,sp,12
1c00a34c:	85ca                	mv	a1,s2
1c00a34e:	8526                	mv	a0,s1
1c00a350:	02100693          	li	a3,33
1c00a354:	02810623          	sb	s0,44(sp)
1c00a358:	f6efe0ef          	jal	ra,1c008ac6 <shake256>
1c00a35c:	50f2                	lw	ra,60(sp)
1c00a35e:	5462                	lw	s0,56(sp)
1c00a360:	54d2                	lw	s1,52(sp)
1c00a362:	5942                	lw	s2,48(sp)
1c00a364:	6121                	addi	sp,sp,64
1c00a366:	8082                	ret

1c00a368 <pos_wait_forever>:
1c00a368:	f14027f3          	csrr	a5,mhartid
1c00a36c:	8795                	srai	a5,a5,0x5
1c00a36e:	03f7f793          	andi	a5,a5,63
1c00a372:	477d                	li	a4,31
1c00a374:	00e78363          	beq	a5,a4,1c00a37a <pos_wait_forever+0x12>
1c00a378:	a001                	j	1c00a378 <pos_wait_forever+0x10>
1c00a37a:	1a10a7b7          	lui	a5,0x1a10a
1c00a37e:	577d                	li	a4,-1
1c00a380:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a384:	10500073          	wfi
1c00a388:	10500073          	wfi
1c00a38c:	bfe5                	j	1c00a384 <pos_wait_forever+0x1c>

1c00a38e <memcpy>:
1c00a38e:	00c5e7b3          	or	a5,a1,a2
1c00a392:	8fc9                	or	a5,a5,a0
1c00a394:	8b8d                	andi	a5,a5,3
1c00a396:	872e                	mv	a4,a1
1c00a398:	882a                	mv	a6,a0
1c00a39a:	cbc5                	beqz	a5,1c00a44a <memcpy+0xbc>
1c00a39c:	c279                	beqz	a2,1c00a462 <memcpy+0xd4>
1c00a39e:	00350793          	addi	a5,a0,3
1c00a3a2:	8f8d                	sub	a5,a5,a1
1c00a3a4:	0077b793          	sltiu	a5,a5,7
1c00a3a8:	e7d1                	bnez	a5,1c00a434 <memcpy+0xa6>
1c00a3aa:	fff60793          	addi	a5,a2,-1
1c00a3ae:	0047b793          	sltiu	a5,a5,4
1c00a3b2:	e3c9                	bnez	a5,1c00a434 <memcpy+0xa6>
1c00a3b4:	ffc67e13          	andi	t3,a2,-4
1c00a3b8:	9e2e                	add	t3,t3,a1
1c00a3ba:	00174883          	lbu	a7,1(a4)
1c00a3be:	00074303          	lbu	t1,0(a4)
1c00a3c2:	00274683          	lbu	a3,2(a4)
1c00a3c6:	00374783          	lbu	a5,3(a4)
1c00a3ca:	08a2                	slli	a7,a7,0x8
1c00a3cc:	0068e8b3          	or	a7,a7,t1
1c00a3d0:	06c2                	slli	a3,a3,0x10
1c00a3d2:	0116e6b3          	or	a3,a3,a7
1c00a3d6:	07e2                	slli	a5,a5,0x18
1c00a3d8:	8fd5                	or	a5,a5,a3
1c00a3da:	0087d313          	srli	t1,a5,0x8
1c00a3de:	0107d893          	srli	a7,a5,0x10
1c00a3e2:	83e1                	srli	a5,a5,0x18
1c00a3e4:	00d80023          	sb	a3,0(a6)
1c00a3e8:	006800a3          	sb	t1,1(a6)
1c00a3ec:	01180123          	sb	a7,2(a6)
1c00a3f0:	00f801a3          	sb	a5,3(a6)
1c00a3f4:	0711                	addi	a4,a4,4
1c00a3f6:	0811                	addi	a6,a6,4
1c00a3f8:	fdc711e3          	bne	a4,t3,1c00a3ba <memcpy+0x2c>
1c00a3fc:	ffc67793          	andi	a5,a2,-4
1c00a400:	00367693          	andi	a3,a2,3
1c00a404:	00f50733          	add	a4,a0,a5
1c00a408:	95be                	add	a1,a1,a5
1c00a40a:	02f60f63          	beq	a2,a5,1c00a448 <memcpy+0xba>
1c00a40e:	0005c603          	lbu	a2,0(a1)
1c00a412:	fff68793          	addi	a5,a3,-1
1c00a416:	00c70023          	sb	a2,0(a4)
1c00a41a:	c79d                	beqz	a5,1c00a448 <memcpy+0xba>
1c00a41c:	0015c603          	lbu	a2,1(a1)
1c00a420:	4789                	li	a5,2
1c00a422:	00c700a3          	sb	a2,1(a4)
1c00a426:	02f68163          	beq	a3,a5,1c00a448 <memcpy+0xba>
1c00a42a:	0025c783          	lbu	a5,2(a1)
1c00a42e:	00f70123          	sb	a5,2(a4)
1c00a432:	8082                	ret
1c00a434:	962e                	add	a2,a2,a1
1c00a436:	87aa                	mv	a5,a0
1c00a438:	0005c703          	lbu	a4,0(a1)
1c00a43c:	0585                	addi	a1,a1,1
1c00a43e:	0785                	addi	a5,a5,1
1c00a440:	fee78fa3          	sb	a4,-1(a5)
1c00a444:	fec59ae3          	bne	a1,a2,1c00a438 <memcpy+0xaa>
1c00a448:	8082                	ret
1c00a44a:	de7d                	beqz	a2,1c00a448 <memcpy+0xba>
1c00a44c:	87aa                	mv	a5,a0
1c00a44e:	4194                	lw	a3,0(a1)
1c00a450:	0791                	addi	a5,a5,4
1c00a452:	40c78733          	sub	a4,a5,a2
1c00a456:	fed7ae23          	sw	a3,-4(a5)
1c00a45a:	0591                	addi	a1,a1,4
1c00a45c:	fea719e3          	bne	a4,a0,1c00a44e <memcpy+0xc0>
1c00a460:	8082                	ret
1c00a462:	8082                	ret

1c00a464 <memmove>:
1c00a464:	40b507b3          	sub	a5,a0,a1
1c00a468:	0ac7e063          	bltu	a5,a2,1c00a508 <memmove+0xa4>
1c00a46c:	c661                	beqz	a2,1c00a534 <memmove+0xd0>
1c00a46e:	00350793          	addi	a5,a0,3
1c00a472:	8f8d                	sub	a5,a5,a1
1c00a474:	0077b793          	sltiu	a5,a5,7
1c00a478:	e3dd                	bnez	a5,1c00a51e <memmove+0xba>
1c00a47a:	fff60793          	addi	a5,a2,-1
1c00a47e:	0047b793          	sltiu	a5,a5,4
1c00a482:	efd1                	bnez	a5,1c00a51e <memmove+0xba>
1c00a484:	ffc67e13          	andi	t3,a2,-4
1c00a488:	872e                	mv	a4,a1
1c00a48a:	882a                	mv	a6,a0
1c00a48c:	9e2e                	add	t3,t3,a1
1c00a48e:	00174883          	lbu	a7,1(a4)
1c00a492:	00074303          	lbu	t1,0(a4)
1c00a496:	00274683          	lbu	a3,2(a4)
1c00a49a:	00374783          	lbu	a5,3(a4)
1c00a49e:	08a2                	slli	a7,a7,0x8
1c00a4a0:	0068e8b3          	or	a7,a7,t1
1c00a4a4:	06c2                	slli	a3,a3,0x10
1c00a4a6:	0116e6b3          	or	a3,a3,a7
1c00a4aa:	07e2                	slli	a5,a5,0x18
1c00a4ac:	8fd5                	or	a5,a5,a3
1c00a4ae:	0087d313          	srli	t1,a5,0x8
1c00a4b2:	0107d893          	srli	a7,a5,0x10
1c00a4b6:	83e1                	srli	a5,a5,0x18
1c00a4b8:	00d80023          	sb	a3,0(a6)
1c00a4bc:	006800a3          	sb	t1,1(a6)
1c00a4c0:	01180123          	sb	a7,2(a6)
1c00a4c4:	00f801a3          	sb	a5,3(a6)
1c00a4c8:	0711                	addi	a4,a4,4
1c00a4ca:	0811                	addi	a6,a6,4
1c00a4cc:	fdc711e3          	bne	a4,t3,1c00a48e <memmove+0x2a>
1c00a4d0:	ffc67793          	andi	a5,a2,-4
1c00a4d4:	00367693          	andi	a3,a2,3
1c00a4d8:	00f50733          	add	a4,a0,a5
1c00a4dc:	95be                	add	a1,a1,a5
1c00a4de:	04f60a63          	beq	a2,a5,1c00a532 <memmove+0xce>
1c00a4e2:	0005c603          	lbu	a2,0(a1)
1c00a4e6:	fff68793          	addi	a5,a3,-1
1c00a4ea:	00c70023          	sb	a2,0(a4)
1c00a4ee:	c3b1                	beqz	a5,1c00a532 <memmove+0xce>
1c00a4f0:	0015c603          	lbu	a2,1(a1)
1c00a4f4:	4789                	li	a5,2
1c00a4f6:	00c700a3          	sb	a2,1(a4)
1c00a4fa:	02f68c63          	beq	a3,a5,1c00a532 <memmove+0xce>
1c00a4fe:	0025c783          	lbu	a5,2(a1)
1c00a502:	00f70123          	sb	a5,2(a4)
1c00a506:	8082                	ret
1c00a508:	167d                	addi	a2,a2,-1
1c00a50a:	00c587b3          	add	a5,a1,a2
1c00a50e:	0007c703          	lbu	a4,0(a5)
1c00a512:	00c507b3          	add	a5,a0,a2
1c00a516:	00e78023          	sb	a4,0(a5)
1c00a51a:	f67d                	bnez	a2,1c00a508 <memmove+0xa4>
1c00a51c:	8082                	ret
1c00a51e:	962a                	add	a2,a2,a0
1c00a520:	87aa                	mv	a5,a0
1c00a522:	0005c703          	lbu	a4,0(a1)
1c00a526:	0785                	addi	a5,a5,1
1c00a528:	0585                	addi	a1,a1,1
1c00a52a:	fee78fa3          	sb	a4,-1(a5)
1c00a52e:	fec79ae3          	bne	a5,a2,1c00a522 <memmove+0xbe>
1c00a532:	8082                	ret
1c00a534:	8082                	ret

1c00a536 <strchr>:
1c00a536:	00054703          	lbu	a4,0(a0)
1c00a53a:	0ff5f593          	andi	a1,a1,255
1c00a53e:	87aa                	mv	a5,a0
1c00a540:	00b70863          	beq	a4,a1,1c00a550 <strchr+0x1a>
1c00a544:	cb01                	beqz	a4,1c00a554 <strchr+0x1e>
1c00a546:	0017c703          	lbu	a4,1(a5)
1c00a54a:	0785                	addi	a5,a5,1
1c00a54c:	feb71ce3          	bne	a4,a1,1c00a544 <strchr+0xe>
1c00a550:	853e                	mv	a0,a5
1c00a552:	8082                	ret
1c00a554:	4501                	li	a0,0
1c00a556:	dded                	beqz	a1,1c00a550 <strchr+0x1a>
1c00a558:	8082                	ret

1c00a55a <puts>:
1c00a55a:	00054783          	lbu	a5,0(a0)
1c00a55e:	c78d                	beqz	a5,1c00a588 <puts+0x2e>
1c00a560:	f14026f3          	csrr	a3,mhartid
1c00a564:	00369713          	slli	a4,a3,0x3
1c00a568:	1a10f637          	lui	a2,0x1a10f
1c00a56c:	0ff77713          	andi	a4,a4,255
1c00a570:	9732                	add	a4,a4,a2
1c00a572:	6609                	lui	a2,0x2
1c00a574:	068a                	slli	a3,a3,0x2
1c00a576:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a57a:	8ef1                	and	a3,a3,a2
1c00a57c:	9736                	add	a4,a4,a3
1c00a57e:	c31c                	sw	a5,0(a4)
1c00a580:	00154783          	lbu	a5,1(a0)
1c00a584:	0505                	addi	a0,a0,1
1c00a586:	ffe5                	bnez	a5,1c00a57e <puts+0x24>
1c00a588:	f1402773          	csrr	a4,mhartid
1c00a58c:	00371793          	slli	a5,a4,0x3
1c00a590:	1a10f6b7          	lui	a3,0x1a10f
1c00a594:	0ff7f793          	andi	a5,a5,255
1c00a598:	97b6                	add	a5,a5,a3
1c00a59a:	6689                	lui	a3,0x2
1c00a59c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5a0:	070a                	slli	a4,a4,0x2
1c00a5a2:	8f75                	and	a4,a4,a3
1c00a5a4:	97ba                	add	a5,a5,a4
1c00a5a6:	4729                	li	a4,10
1c00a5a8:	c398                	sw	a4,0(a5)
1c00a5aa:	4501                	li	a0,0
1c00a5ac:	8082                	ret

1c00a5ae <pos_libc_fputc_locked>:
1c00a5ae:	6689                	lui	a3,0x2
1c00a5b0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5b4:	f14027f3          	csrr	a5,mhartid
1c00a5b8:	00379713          	slli	a4,a5,0x3
1c00a5bc:	078a                	slli	a5,a5,0x2
1c00a5be:	8ff5                	and	a5,a5,a3
1c00a5c0:	0ff77713          	andi	a4,a4,255
1c00a5c4:	1a10f6b7          	lui	a3,0x1a10f
1c00a5c8:	9736                	add	a4,a4,a3
1c00a5ca:	97ba                	add	a5,a5,a4
1c00a5cc:	0ff57513          	andi	a0,a0,255
1c00a5d0:	c388                	sw	a0,0(a5)
1c00a5d2:	4501                	li	a0,0
1c00a5d4:	8082                	ret

1c00a5d6 <putchar>:
1c00a5d6:	6689                	lui	a3,0x2
1c00a5d8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5dc:	f14027f3          	csrr	a5,mhartid
1c00a5e0:	00379713          	slli	a4,a5,0x3
1c00a5e4:	078a                	slli	a5,a5,0x2
1c00a5e6:	8ff5                	and	a5,a5,a3
1c00a5e8:	0ff77713          	andi	a4,a4,255
1c00a5ec:	1a10f6b7          	lui	a3,0x1a10f
1c00a5f0:	9736                	add	a4,a4,a3
1c00a5f2:	97ba                	add	a5,a5,a4
1c00a5f4:	0ff57513          	andi	a0,a0,255
1c00a5f8:	c388                	sw	a0,0(a5)
1c00a5fa:	4501                	li	a0,0
1c00a5fc:	8082                	ret

1c00a5fe <pos_libc_prf_locked>:
1c00a5fe:	a0b1                	j	1c00a64a <pos_libc_prf>

1c00a600 <exit>:
1c00a600:	800007b7          	lui	a5,0x80000
1c00a604:	1141                	addi	sp,sp,-16
1c00a606:	8d5d                	or	a0,a0,a5
1c00a608:	c606                	sw	ra,12(sp)
1c00a60a:	1a1047b7          	lui	a5,0x1a104
1c00a60e:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a612:	3b99                	jal	1c00a368 <pos_wait_forever>

1c00a614 <pos_io_start>:
1c00a614:	4501                	li	a0,0
1c00a616:	8082                	ret

1c00a618 <pos_io_stop>:
1c00a618:	4501                	li	a0,0
1c00a61a:	8082                	ret

1c00a61c <printf>:
1c00a61c:	7139                	addi	sp,sp,-64
1c00a61e:	02410313          	addi	t1,sp,36
1c00a622:	d432                	sw	a2,40(sp)
1c00a624:	862a                	mv	a2,a0
1c00a626:	1c00a537          	lui	a0,0x1c00a
1c00a62a:	d22e                	sw	a1,36(sp)
1c00a62c:	d636                	sw	a3,44(sp)
1c00a62e:	4589                	li	a1,2
1c00a630:	869a                	mv	a3,t1
1c00a632:	5ae50513          	addi	a0,a0,1454 # 1c00a5ae <pos_libc_fputc_locked>
1c00a636:	ce06                	sw	ra,28(sp)
1c00a638:	d83a                	sw	a4,48(sp)
1c00a63a:	da3e                	sw	a5,52(sp)
1c00a63c:	dc42                	sw	a6,56(sp)
1c00a63e:	de46                	sw	a7,60(sp)
1c00a640:	c61a                	sw	t1,12(sp)
1c00a642:	3f75                	jal	1c00a5fe <pos_libc_prf_locked>
1c00a644:	40f2                	lw	ra,28(sp)
1c00a646:	6121                	addi	sp,sp,64
1c00a648:	8082                	ret

1c00a64a <pos_libc_prf>:
1c00a64a:	7169                	addi	sp,sp,-304
1c00a64c:	12112623          	sw	ra,300(sp)
1c00a650:	12812423          	sw	s0,296(sp)
1c00a654:	12912223          	sw	s1,292(sp)
1c00a658:	13212023          	sw	s2,288(sp)
1c00a65c:	11312e23          	sw	s3,284(sp)
1c00a660:	11412c23          	sw	s4,280(sp)
1c00a664:	11512a23          	sw	s5,276(sp)
1c00a668:	11612823          	sw	s6,272(sp)
1c00a66c:	11712623          	sw	s7,268(sp)
1c00a670:	11812423          	sw	s8,264(sp)
1c00a674:	11912223          	sw	s9,260(sp)
1c00a678:	11a12023          	sw	s10,256(sp)
1c00a67c:	dfee                	sw	s11,252(sp)
1c00a67e:	00064783          	lbu	a5,0(a2)
1c00a682:	c636                	sw	a3,12(sp)
1c00a684:	3c0781e3          	beqz	a5,1c00b246 <pos_libc_prf+0xbfc>
1c00a688:	7741                	lui	a4,0xffff0
1c00a68a:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a68e:	cc3a                	sw	a4,24(sp)
1c00a690:	10000737          	lui	a4,0x10000
1c00a694:	177d                	addi	a4,a4,-1
1c00a696:	8caa                	mv	s9,a0
1c00a698:	84ae                	mv	s1,a1
1c00a69a:	00160c13          	addi	s8,a2,1
1c00a69e:	4401                	li	s0,0
1c00a6a0:	1c000d37          	lui	s10,0x1c000
1c00a6a4:	ca3a                	sw	a4,20(sp)
1c00a6a6:	853e                	mv	a0,a5
1c00a6a8:	02500793          	li	a5,37
1c00a6ac:	04f50863          	beq	a0,a5,1c00a6fc <pos_libc_prf+0xb2>
1c00a6b0:	85a6                	mv	a1,s1
1c00a6b2:	9c82                	jalr	s9
1c00a6b4:	57fd                	li	a5,-1
1c00a6b6:	4cf50b63          	beq	a0,a5,1c00ab8c <pos_libc_prf+0x542>
1c00a6ba:	0405                	addi	s0,s0,1
1c00a6bc:	000c4503          	lbu	a0,0(s8)
1c00a6c0:	0c05                	addi	s8,s8,1
1c00a6c2:	f17d                	bnez	a0,1c00a6a8 <pos_libc_prf+0x5e>
1c00a6c4:	12c12083          	lw	ra,300(sp)
1c00a6c8:	8522                	mv	a0,s0
1c00a6ca:	12812403          	lw	s0,296(sp)
1c00a6ce:	12412483          	lw	s1,292(sp)
1c00a6d2:	12012903          	lw	s2,288(sp)
1c00a6d6:	11c12983          	lw	s3,284(sp)
1c00a6da:	11812a03          	lw	s4,280(sp)
1c00a6de:	11412a83          	lw	s5,276(sp)
1c00a6e2:	11012b03          	lw	s6,272(sp)
1c00a6e6:	10c12b83          	lw	s7,268(sp)
1c00a6ea:	10812c03          	lw	s8,264(sp)
1c00a6ee:	10412c83          	lw	s9,260(sp)
1c00a6f2:	10012d03          	lw	s10,256(sp)
1c00a6f6:	5dfe                	lw	s11,252(sp)
1c00a6f8:	6155                	addi	sp,sp,304
1c00a6fa:	8082                	ret
1c00a6fc:	8de2                	mv	s11,s8
1c00a6fe:	000dcc03          	lbu	s8,0(s11)
1c00a702:	174d0513          	addi	a0,s10,372 # 1c000174 <__clz_tab+0x158>
1c00a706:	c826                	sw	s1,16(sp)
1c00a708:	85e2                	mv	a1,s8
1c00a70a:	c202                	sw	zero,4(sp)
1c00a70c:	c402                	sw	zero,8(sp)
1c00a70e:	c002                	sw	zero,0(sp)
1c00a710:	001d8493          	addi	s1,s11,1
1c00a714:	350d                	jal	1c00a536 <strchr>
1c00a716:	02000913          	li	s2,32
1c00a71a:	4b81                	li	s7,0
1c00a71c:	02b00993          	li	s3,43
1c00a720:	02d00b13          	li	s6,45
1c00a724:	03000a93          	li	s5,48
1c00a728:	02000a13          	li	s4,32
1c00a72c:	8626                	mv	a2,s1
1c00a72e:	c51d                	beqz	a0,1c00a75c <pos_libc_prf+0x112>
1c00a730:	413c0e63          	beq	s8,s3,1c00ab4c <pos_libc_prf+0x502>
1c00a734:	3f89ec63          	bltu	s3,s8,1c00ab2c <pos_libc_prf+0x4e2>
1c00a738:	414c0663          	beq	s8,s4,1c00ab44 <pos_libc_prf+0x4fa>
1c00a73c:	02300793          	li	a5,35
1c00a740:	3efc1363          	bne	s8,a5,1c00ab26 <pos_libc_prf+0x4dc>
1c00a744:	4b85                	li	s7,1
1c00a746:	8da6                	mv	s11,s1
1c00a748:	000dcc03          	lbu	s8,0(s11)
1c00a74c:	174d0513          	addi	a0,s10,372
1c00a750:	001d8493          	addi	s1,s11,1
1c00a754:	85e2                	mv	a1,s8
1c00a756:	33c5                	jal	1c00a536 <strchr>
1c00a758:	8626                	mv	a2,s1
1c00a75a:	f979                	bnez	a0,1c00a730 <pos_libc_prf+0xe6>
1c00a75c:	87e2                	mv	a5,s8
1c00a75e:	ce5e                	sw	s7,28(sp)
1c00a760:	02a00693          	li	a3,42
1c00a764:	8c6e                	mv	s8,s11
1c00a766:	8ba6                	mv	s7,s1
1c00a768:	8dbe                	mv	s11,a5
1c00a76a:	44c2                	lw	s1,16(sp)
1c00a76c:	42d78263          	beq	a5,a3,1c00ab90 <pos_libc_prf+0x546>
1c00a770:	fd078693          	addi	a3,a5,-48
1c00a774:	4525                	li	a0,9
1c00a776:	4a01                	li	s4,0
1c00a778:	3cd57f63          	bgeu	a0,a3,1c00ab56 <pos_libc_prf+0x50c>
1c00a77c:	02e00793          	li	a5,46
1c00a780:	5afd                	li	s5,-1
1c00a782:	74fd8363          	beq	s11,a5,1c00aec8 <pos_libc_prf+0x87e>
1c00a786:	1c0007b7          	lui	a5,0x1c000
1c00a78a:	85ee                	mv	a1,s11
1c00a78c:	17c78513          	addi	a0,a5,380 # 1c00017c <__clz_tab+0x160>
1c00a790:	c832                	sw	a2,16(sp)
1c00a792:	3355                	jal	1c00a536 <strchr>
1c00a794:	4642                	lw	a2,16(sp)
1c00a796:	8c32                	mv	s8,a2
1c00a798:	c509                	beqz	a0,1c00a7a2 <pos_libc_prf+0x158>
1c00a79a:	00064d83          	lbu	s11,0(a2)
1c00a79e:	00160c13          	addi	s8,a2,1
1c00a7a2:	06900793          	li	a5,105
1c00a7a6:	0afd8ee3          	beq	s11,a5,1c00b062 <pos_libc_prf+0xa18>
1c00a7aa:	4db7c763          	blt	a5,s11,1c00ac78 <pos_libc_prf+0x62e>
1c00a7ae:	05800793          	li	a5,88
1c00a7b2:	4efd8163          	beq	s11,a5,1c00ac94 <pos_libc_prf+0x64a>
1c00a7b6:	41b7c163          	blt	a5,s11,1c00abb8 <pos_libc_prf+0x56e>
1c00a7ba:	02500793          	li	a5,37
1c00a7be:	26fd8ae3          	beq	s11,a5,1c00b232 <pos_libc_prf+0xbe8>
1c00a7c2:	3fb7d863          	bge	a5,s11,1c00abb2 <pos_libc_prf+0x568>
1c00a7c6:	fbbd8793          	addi	a5,s11,-69
1c00a7ca:	4689                	li	a3,2
1c00a7cc:	eef6e8e3          	bltu	a3,a5,1c00a6bc <pos_libc_prf+0x72>
1c00a7d0:	47b2                	lw	a5,12(sp)
1c00a7d2:	7ff00893          	li	a7,2047
1c00a7d6:	00778b13          	addi	s6,a5,7
1c00a7da:	ff8b7b13          	andi	s6,s6,-8
1c00a7de:	004b2783          	lw	a5,4(s6) # ff0004 <__CTOR_LIST__-0x1b010000>
1c00a7e2:	000b2603          	lw	a2,0(s6)
1c00a7e6:	0b21                	addi	s6,s6,8
1c00a7e8:	00b79693          	slli	a3,a5,0xb
1c00a7ec:	01565513          	srli	a0,a2,0x15
1c00a7f0:	8ec9                	or	a3,a3,a0
1c00a7f2:	0147d813          	srli	a6,a5,0x14
1c00a7f6:	0686                	slli	a3,a3,0x1
1c00a7f8:	7ff87813          	andi	a6,a6,2047
1c00a7fc:	0016d513          	srli	a0,a3,0x1
1c00a800:	00b61313          	slli	t1,a2,0xb
1c00a804:	86be                	mv	a3,a5
1c00a806:	41180263          	beq	a6,a7,1c00ac0a <pos_libc_prf+0x5c0>
1c00a80a:	04600793          	li	a5,70
1c00a80e:	00fd9463          	bne	s11,a5,1c00a816 <pos_libc_prf+0x1cc>
1c00a812:	06600d93          	li	s11,102
1c00a816:	006867b3          	or	a5,a6,t1
1c00a81a:	00a7e8b3          	or	a7,a5,a0
1c00a81e:	862a                	mv	a2,a0
1c00a820:	340885e3          	beqz	a7,1c00b36a <pos_libc_prf+0xd20>
1c00a824:	80000637          	lui	a2,0x80000
1c00a828:	c0280813          	addi	a6,a6,-1022
1c00a82c:	879a                	mv	a5,t1
1c00a82e:	8e49                	or	a2,a2,a0
1c00a830:	4606c7e3          	bltz	a3,1c00b49e <pos_libc_prf+0xe54>
1c00a834:	4722                	lw	a4,8(sp)
1c00a836:	480708e3          	beqz	a4,1c00b4c6 <pos_libc_prf+0xe7c>
1c00a83a:	02b00693          	li	a3,43
1c00a83e:	02d10223          	sb	a3,36(sp)
1c00a842:	02510f13          	addi	t5,sp,37
1c00a846:	56f9                	li	a3,-2
1c00a848:	4301                	li	t1,0
1c00a84a:	06d85663          	bge	a6,a3,1c00a8b6 <pos_libc_prf+0x26c>
1c00a84e:	333338b7          	lui	a7,0x33333
1c00a852:	80000e37          	lui	t3,0x80000
1c00a856:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a85a:	fffe4e13          	not	t3,t3
1c00a85e:	5ef9                	li	t4,-2
1c00a860:	01f61593          	slli	a1,a2,0x1f
1c00a864:	0017d693          	srli	a3,a5,0x1
1c00a868:	0017f713          	andi	a4,a5,1
1c00a86c:	8ecd                	or	a3,a3,a1
1c00a86e:	00d707b3          	add	a5,a4,a3
1c00a872:	00e7b733          	sltu	a4,a5,a4
1c00a876:	8205                	srli	a2,a2,0x1
1c00a878:	963a                	add	a2,a2,a4
1c00a87a:	8742                	mv	a4,a6
1c00a87c:	0805                	addi	a6,a6,1
1c00a87e:	fec8e1e3          	bltu	a7,a2,1c00a860 <pos_libc_prf+0x216>
1c00a882:	00279593          	slli	a1,a5,0x2
1c00a886:	01e7d513          	srli	a0,a5,0x1e
1c00a88a:	00261693          	slli	a3,a2,0x2
1c00a88e:	97ae                	add	a5,a5,a1
1c00a890:	8ec9                	or	a3,a3,a0
1c00a892:	9636                	add	a2,a2,a3
1c00a894:	00b7b5b3          	sltu	a1,a5,a1
1c00a898:	962e                	add	a2,a2,a1
1c00a89a:	01f7d693          	srli	a3,a5,0x1f
1c00a89e:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00a8a2:	137d                	addi	t1,t1,-1
1c00a8a4:	01c61763          	bne	a2,t3,1c00a8b2 <pos_libc_prf+0x268>
1c00a8a8:	00170813          	addi	a6,a4,1
1c00a8ac:	0786                	slli	a5,a5,0x1
1c00a8ae:	ffe6e613          	ori	a2,a3,-2
1c00a8b2:	fbd847e3          	blt	a6,t4,1c00a860 <pos_libc_prf+0x216>
1c00a8b6:	07005363          	blez	a6,1c00a91c <pos_libc_prf+0x2d2>
1c00a8ba:	800008b7          	lui	a7,0x80000
1c00a8be:	4e15                	li	t3,5
1c00a8c0:	fff8c893          	not	a7,a7
1c00a8c4:	00278693          	addi	a3,a5,2
1c00a8c8:	00f6b7b3          	sltu	a5,a3,a5
1c00a8cc:	963e                	add	a2,a2,a5
1c00a8ce:	03c657b3          	divu	a5,a2,t3
1c00a8d2:	0036d713          	srli	a4,a3,0x3
1c00a8d6:	187d                	addi	a6,a6,-1
1c00a8d8:	0305                	addi	t1,t1,1
1c00a8da:	00279593          	slli	a1,a5,0x2
1c00a8de:	95be                	add	a1,a1,a5
1c00a8e0:	8e0d                	sub	a2,a2,a1
1c00a8e2:	0676                	slli	a2,a2,0x1d
1c00a8e4:	8f51                	or	a4,a4,a2
1c00a8e6:	03c75633          	divu	a2,a4,t3
1c00a8ea:	00361713          	slli	a4,a2,0x3
1c00a8ee:	00561593          	slli	a1,a2,0x5
1c00a8f2:	95ba                	add	a1,a1,a4
1c00a8f4:	8e8d                	sub	a3,a3,a1
1c00a8f6:	03c6d6b3          	divu	a3,a3,t3
1c00a8fa:	8275                	srli	a2,a2,0x1d
1c00a8fc:	963e                	add	a2,a2,a5
1c00a8fe:	00e687b3          	add	a5,a3,a4
1c00a902:	00d7b6b3          	sltu	a3,a5,a3
1c00a906:	9636                	add	a2,a2,a3
1c00a908:	01f7d713          	srli	a4,a5,0x1f
1c00a90c:	0606                	slli	a2,a2,0x1
1c00a90e:	8e59                	or	a2,a2,a4
1c00a910:	0786                	slli	a5,a5,0x1
1c00a912:	187d                	addi	a6,a6,-1
1c00a914:	fec8fae3          	bgeu	a7,a2,1c00a908 <pos_libc_prf+0x2be>
1c00a918:	fb0046e3          	bgtz	a6,1c00a8c4 <pos_libc_prf+0x27a>
1c00a91c:	4e11                	li	t3,4
1c00a91e:	01f61693          	slli	a3,a2,0x1f
1c00a922:	0017d713          	srli	a4,a5,0x1
1c00a926:	8f55                	or	a4,a4,a3
1c00a928:	8b85                	andi	a5,a5,1
1c00a92a:	00e78533          	add	a0,a5,a4
1c00a92e:	8205                	srli	a2,a2,0x1
1c00a930:	00f537b3          	sltu	a5,a0,a5
1c00a934:	00c788b3          	add	a7,a5,a2
1c00a938:	0805                	addi	a6,a6,1
1c00a93a:	87aa                	mv	a5,a0
1c00a93c:	8646                	mv	a2,a7
1c00a93e:	ffc810e3          	bne	a6,t3,1c00a91e <pos_libc_prf+0x2d4>
1c00a942:	06700793          	li	a5,103
1c00a946:	2a0acee3          	bltz	s5,1c00b402 <pos_libc_prf+0xdb8>
1c00a94a:	28fd83e3          	beq	s11,a5,1c00b3d0 <pos_libc_prf+0xd86>
1c00a94e:	04700793          	li	a5,71
1c00a952:	26fd8fe3          	beq	s11,a5,1c00b3d0 <pos_libc_prf+0xd86>
1c00a956:	06600793          	li	a5,102
1c00a95a:	2cfd85e3          	beq	s11,a5,1c00b424 <pos_libc_prf+0xdda>
1c00a95e:	001a8813          	addi	a6,s5,1
1c00a962:	47c1                	li	a5,16
1c00a964:	0107d363          	bge	a5,a6,1c00a96a <pos_libc_prf+0x320>
1c00a968:	4841                	li	a6,16
1c00a96a:	187d                	addi	a6,a6,-1
1c00a96c:	4601                	li	a2,0
1c00a96e:	4781                	li	a5,0
1c00a970:	080006b7          	lui	a3,0x8000
1c00a974:	4e15                	li	t3,5
1c00a976:	5efd                	li	t4,-1
1c00a978:	00278713          	addi	a4,a5,2
1c00a97c:	00f737b3          	sltu	a5,a4,a5
1c00a980:	97b6                	add	a5,a5,a3
1c00a982:	03c7dfb3          	divu	t6,a5,t3
1c00a986:	00375593          	srli	a1,a4,0x3
1c00a98a:	187d                	addi	a6,a6,-1
1c00a98c:	002f9693          	slli	a3,t6,0x2
1c00a990:	96fe                	add	a3,a3,t6
1c00a992:	8f95                	sub	a5,a5,a3
1c00a994:	07f6                	slli	a5,a5,0x1d
1c00a996:	8ddd                	or	a1,a1,a5
1c00a998:	03c5d5b3          	divu	a1,a1,t3
1c00a99c:	00359693          	slli	a3,a1,0x3
1c00a9a0:	00559793          	slli	a5,a1,0x5
1c00a9a4:	97b6                	add	a5,a5,a3
1c00a9a6:	8f1d                	sub	a4,a4,a5
1c00a9a8:	03c757b3          	divu	a5,a4,t3
1c00a9ac:	81f5                	srli	a1,a1,0x1d
1c00a9ae:	95fe                	add	a1,a1,t6
1c00a9b0:	96be                	add	a3,a3,a5
1c00a9b2:	00f6b733          	sltu	a4,a3,a5
1c00a9b6:	972e                	add	a4,a4,a1
1c00a9b8:	01f71593          	slli	a1,a4,0x1f
1c00a9bc:	0016d793          	srli	a5,a3,0x1
1c00a9c0:	8fcd                	or	a5,a5,a1
1c00a9c2:	8a85                	andi	a3,a3,1
1c00a9c4:	97b6                	add	a5,a5,a3
1c00a9c6:	8305                	srli	a4,a4,0x1
1c00a9c8:	00d7b6b3          	sltu	a3,a5,a3
1c00a9cc:	96ba                	add	a3,a3,a4
1c00a9ce:	fbd815e3          	bne	a6,t4,1c00a978 <pos_libc_prf+0x32e>
1c00a9d2:	97aa                	add	a5,a5,a0
1c00a9d4:	96c6                	add	a3,a3,a7
1c00a9d6:	00a7b533          	sltu	a0,a5,a0
1c00a9da:	00d508b3          	add	a7,a0,a3
1c00a9de:	f00006b7          	lui	a3,0xf0000
1c00a9e2:	0116f6b3          	and	a3,a3,a7
1c00a9e6:	c2b5                	beqz	a3,1c00aa4a <pos_libc_prf+0x400>
1c00a9e8:	00278813          	addi	a6,a5,2
1c00a9ec:	00f836b3          	sltu	a3,a6,a5
1c00a9f0:	98b6                	add	a7,a7,a3
1c00a9f2:	4e95                	li	t4,5
1c00a9f4:	03d8de33          	divu	t3,a7,t4
1c00a9f8:	00385693          	srli	a3,a6,0x3
1c00a9fc:	0305                	addi	t1,t1,1
1c00a9fe:	002e1513          	slli	a0,t3,0x2
1c00aa02:	9572                	add	a0,a0,t3
1c00aa04:	40a888b3          	sub	a7,a7,a0
1c00aa08:	01d89513          	slli	a0,a7,0x1d
1c00aa0c:	8ec9                	or	a3,a3,a0
1c00aa0e:	03d6d6b3          	divu	a3,a3,t4
1c00aa12:	00369513          	slli	a0,a3,0x3
1c00aa16:	00569793          	slli	a5,a3,0x5
1c00aa1a:	97aa                	add	a5,a5,a0
1c00aa1c:	40f807b3          	sub	a5,a6,a5
1c00aa20:	03d7d7b3          	divu	a5,a5,t4
1c00aa24:	82f5                	srli	a3,a3,0x1d
1c00aa26:	96f2                	add	a3,a3,t3
1c00aa28:	953e                	add	a0,a0,a5
1c00aa2a:	00f537b3          	sltu	a5,a0,a5
1c00aa2e:	96be                	add	a3,a3,a5
1c00aa30:	01f69813          	slli	a6,a3,0x1f
1c00aa34:	00155793          	srli	a5,a0,0x1
1c00aa38:	00f867b3          	or	a5,a6,a5
1c00aa3c:	8905                	andi	a0,a0,1
1c00aa3e:	97aa                	add	a5,a5,a0
1c00aa40:	8285                	srli	a3,a3,0x1
1c00aa42:	00a7b533          	sltu	a0,a5,a0
1c00aa46:	00d508b3          	add	a7,a0,a3
1c00aa4a:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00aa4e:	06600693          	li	a3,102
1c00aa52:	884e                	mv	a6,s3
1c00aa54:	4edd8163          	beq	s11,a3,1c00af36 <pos_libc_prf+0x8ec>
1c00aa58:	00279693          	slli	a3,a5,0x2
1c00aa5c:	01e7d513          	srli	a0,a5,0x1e
1c00aa60:	00289e13          	slli	t3,a7,0x2
1c00aa64:	97b6                	add	a5,a5,a3
1c00aa66:	01c56e33          	or	t3,a0,t3
1c00aa6a:	00d7b833          	sltu	a6,a5,a3
1c00aa6e:	011e06b3          	add	a3,t3,a7
1c00aa72:	9836                	add	a6,a6,a3
1c00aa74:	0806                	slli	a6,a6,0x1
1c00aa76:	01f7d693          	srli	a3,a5,0x1f
1c00aa7a:	0106e833          	or	a6,a3,a6
1c00aa7e:	01c85693          	srli	a3,a6,0x1c
1c00aa82:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00aa86:	4772                	lw	a4,28(sp)
1c00aa88:	00af0023          	sb	a0,0(t5)
1c00aa8c:	00179513          	slli	a0,a5,0x1
1c00aa90:	47d2                	lw	a5,20(sp)
1c00aa92:	00d036b3          	snez	a3,a3
1c00aa96:	01576bb3          	or	s7,a4,s5
1c00aa9a:	00f87833          	and	a6,a6,a5
1c00aa9e:	40d30333          	sub	t1,t1,a3
1c00aaa2:	060b8463          	beqz	s7,1c00ab0a <pos_libc_prf+0x4c0>
1c00aaa6:	02e00793          	li	a5,46
1c00aaaa:	00ff00a3          	sb	a5,1(t5)
1c00aaae:	002f0993          	addi	s3,t5,2
1c00aab2:	040a8c63          	beqz	s5,1c00ab0a <pos_libc_prf+0x4c0>
1c00aab6:	002a8793          	addi	a5,s5,2
1c00aaba:	9f3e                	add	t5,t5,a5
1c00aabc:	88ce                	mv	a7,s3
1c00aabe:	4ebd                	li	t4,15
1c00aac0:	03000f93          	li	t6,48
1c00aac4:	00251793          	slli	a5,a0,0x2
1c00aac8:	01e55693          	srli	a3,a0,0x1e
1c00aacc:	00281713          	slli	a4,a6,0x2
1c00aad0:	00a785b3          	add	a1,a5,a0
1c00aad4:	8f55                	or	a4,a4,a3
1c00aad6:	9742                	add	a4,a4,a6
1c00aad8:	00f5b7b3          	sltu	a5,a1,a5
1c00aadc:	97ba                	add	a5,a5,a4
1c00aade:	0786                	slli	a5,a5,0x1
1c00aae0:	01f5d713          	srli	a4,a1,0x1f
1c00aae4:	8fd9                	or	a5,a5,a4
1c00aae6:	01c7d713          	srli	a4,a5,0x1c
1c00aaea:	03070713          	addi	a4,a4,48
1c00aaee:	0885                	addi	a7,a7,1
1c00aaf0:	53d05763          	blez	t4,1c00b01e <pos_libc_prf+0x9d4>
1c00aaf4:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00aaf8:	4752                	lw	a4,20(sp)
1c00aafa:	1efd                	addi	t4,t4,-1
1c00aafc:	00159513          	slli	a0,a1,0x1
1c00ab00:	00e7f833          	and	a6,a5,a4
1c00ab04:	fd1f10e3          	bne	t5,a7,1c00aac4 <pos_libc_prf+0x47a>
1c00ab08:	99d6                	add	s3,s3,s5
1c00ab0a:	4e061c63          	bnez	a2,1c00b002 <pos_libc_prf+0x9b8>
1c00ab0e:	fdfdf793          	andi	a5,s11,-33
1c00ab12:	04500693          	li	a3,69
1c00ab16:	00d781e3          	beq	a5,a3,1c00b318 <pos_libc_prf+0xcce>
1c00ab1a:	105c                	addi	a5,sp,36
1c00ab1c:	00098023          	sb	zero,0(s3)
1c00ab20:	40f989b3          	sub	s3,s3,a5
1c00ab24:	aa05                	j	1c00ac54 <pos_libc_prf+0x60a>
1c00ab26:	b80c0fe3          	beqz	s8,1c00a6c4 <pos_libc_prf+0x7a>
1c00ab2a:	b931                	j	1c00a746 <pos_libc_prf+0xfc>
1c00ab2c:	016c0863          	beq	s8,s6,1c00ab3c <pos_libc_prf+0x4f2>
1c00ab30:	c15c1be3          	bne	s8,s5,1c00a746 <pos_libc_prf+0xfc>
1c00ab34:	03000913          	li	s2,48
1c00ab38:	8da6                	mv	s11,s1
1c00ab3a:	b139                	j	1c00a748 <pos_libc_prf+0xfe>
1c00ab3c:	4785                	li	a5,1
1c00ab3e:	c03e                	sw	a5,0(sp)
1c00ab40:	8da6                	mv	s11,s1
1c00ab42:	b119                	j	1c00a748 <pos_libc_prf+0xfe>
1c00ab44:	4785                	li	a5,1
1c00ab46:	c23e                	sw	a5,4(sp)
1c00ab48:	8da6                	mv	s11,s1
1c00ab4a:	befd                	j	1c00a748 <pos_libc_prf+0xfe>
1c00ab4c:	4785                	li	a5,1
1c00ab4e:	c43e                	sw	a5,8(sp)
1c00ab50:	8da6                	mv	s11,s1
1c00ab52:	bedd                	j	1c00a748 <pos_libc_prf+0xfe>
1c00ab54:	0b85                	addi	s7,s7,1
1c00ab56:	002a1793          	slli	a5,s4,0x2
1c00ab5a:	97d2                	add	a5,a5,s4
1c00ab5c:	0786                	slli	a5,a5,0x1
1c00ab5e:	97ee                	add	a5,a5,s11
1c00ab60:	000bcd83          	lbu	s11,0(s7)
1c00ab64:	fd078a13          	addi	s4,a5,-48
1c00ab68:	8662                	mv	a2,s8
1c00ab6a:	fd0d8793          	addi	a5,s11,-48
1c00ab6e:	8c5e                	mv	s8,s7
1c00ab70:	fef572e3          	bgeu	a0,a5,1c00ab54 <pos_libc_prf+0x50a>
1c00ab74:	0609                	addi	a2,a2,2
1c00ab76:	0c800793          	li	a5,200
1c00ab7a:	c147f1e3          	bgeu	a5,s4,1c00a77c <pos_libc_prf+0x132>
1c00ab7e:	0c800a13          	li	s4,200
1c00ab82:	beed                	j	1c00a77c <pos_libc_prf+0x132>
1c00ab84:	0c800793          	li	a5,200
1c00ab88:	b3b7dae3          	bge	a5,s11,1c00a6bc <pos_libc_prf+0x72>
1c00ab8c:	547d                	li	s0,-1
1c00ab8e:	be1d                	j	1c00a6c4 <pos_libc_prf+0x7a>
1c00ab90:	47b2                	lw	a5,12(sp)
1c00ab92:	0007aa03          	lw	s4,0(a5)
1c00ab96:	00478693          	addi	a3,a5,4
1c00ab9a:	000a5663          	bgez	s4,1c00aba6 <pos_libc_prf+0x55c>
1c00ab9e:	4785                	li	a5,1
1c00aba0:	41400a33          	neg	s4,s4
1c00aba4:	c03e                	sw	a5,0(sp)
1c00aba6:	000bcd83          	lbu	s11,0(s7)
1c00abaa:	c636                	sw	a3,12(sp)
1c00abac:	002c0613          	addi	a2,s8,2
1c00abb0:	b7d9                	j	1c00ab76 <pos_libc_prf+0x52c>
1c00abb2:	b00d89e3          	beqz	s11,1c00a6c4 <pos_libc_prf+0x7a>
1c00abb6:	b619                	j	1c00a6bc <pos_libc_prf+0x72>
1c00abb8:	06400793          	li	a5,100
1c00abbc:	4afd8363          	beq	s11,a5,1c00b062 <pos_libc_prf+0xa18>
1c00abc0:	19b7d963          	bge	a5,s11,1c00ad52 <pos_libc_prf+0x708>
1c00abc4:	f9bd8793          	addi	a5,s11,-101
1c00abc8:	4689                	li	a3,2
1c00abca:	aef6e9e3          	bltu	a3,a5,1c00a6bc <pos_libc_prf+0x72>
1c00abce:	47b2                	lw	a5,12(sp)
1c00abd0:	7ff00893          	li	a7,2047
1c00abd4:	00778b13          	addi	s6,a5,7
1c00abd8:	ff8b7b13          	andi	s6,s6,-8
1c00abdc:	004b2783          	lw	a5,4(s6)
1c00abe0:	000b2603          	lw	a2,0(s6)
1c00abe4:	0b21                	addi	s6,s6,8
1c00abe6:	00b79693          	slli	a3,a5,0xb
1c00abea:	01565813          	srli	a6,a2,0x15
1c00abee:	0147d513          	srli	a0,a5,0x14
1c00abf2:	00d866b3          	or	a3,a6,a3
1c00abf6:	0686                	slli	a3,a3,0x1
1c00abf8:	7ff57813          	andi	a6,a0,2047
1c00abfc:	00b61313          	slli	t1,a2,0xb
1c00ac00:	0016d513          	srli	a0,a3,0x1
1c00ac04:	86be                	mv	a3,a5
1c00ac06:	c11818e3          	bne	a6,a7,1c00a816 <pos_libc_prf+0x1cc>
1c00ac0a:	105c                	addi	a5,sp,36
1c00ac0c:	0006d863          	bgez	a3,1c00ac1c <pos_libc_prf+0x5d2>
1c00ac10:	02d00793          	li	a5,45
1c00ac14:	02f10223          	sb	a5,36(sp)
1c00ac18:	02510793          	addi	a5,sp,37
1c00ac1c:	00a36633          	or	a2,t1,a0
1c00ac20:	fbfd8593          	addi	a1,s11,-65
1c00ac24:	00378993          	addi	s3,a5,3
1c00ac28:	46e5                	li	a3,25
1c00ac2a:	0c0612e3          	bnez	a2,1c00b4ee <pos_libc_prf+0xea4>
1c00ac2e:	10b6e5e3          	bltu	a3,a1,1c00b538 <pos_libc_prf+0xeee>
1c00ac32:	04900693          	li	a3,73
1c00ac36:	00d78023          	sb	a3,0(a5)
1c00ac3a:	04e00693          	li	a3,78
1c00ac3e:	00d780a3          	sb	a3,1(a5)
1c00ac42:	04600693          	li	a3,70
1c00ac46:	00d78123          	sb	a3,2(a5)
1c00ac4a:	000781a3          	sb	zero,3(a5)
1c00ac4e:	105c                	addi	a5,sp,36
1c00ac50:	40f989b3          	sub	s3,s3,a5
1c00ac54:	47a2                	lw	a5,8(sp)
1c00ac56:	4712                	lw	a4,4(sp)
1c00ac58:	8fd9                	or	a5,a5,a4
1c00ac5a:	ce3e                	sw	a5,28(sp)
1c00ac5c:	5e079b63          	bnez	a5,1c00b252 <pos_libc_prf+0xc08>
1c00ac60:	02414683          	lbu	a3,36(sp)
1c00ac64:	02d00793          	li	a5,45
1c00ac68:	5ef68563          	beq	a3,a5,1c00b252 <pos_libc_prf+0xc08>
1c00ac6c:	0c800793          	li	a5,200
1c00ac70:	0d37d863          	bge	a5,s3,1c00ad40 <pos_libc_prf+0x6f6>
1c00ac74:	547d                	li	s0,-1
1c00ac76:	b4b9                	j	1c00a6c4 <pos_libc_prf+0x7a>
1c00ac78:	07000793          	li	a5,112
1c00ac7c:	46fd8f63          	beq	s11,a5,1c00b0fa <pos_libc_prf+0xab0>
1c00ac80:	1bb7d663          	bge	a5,s11,1c00ae2c <pos_libc_prf+0x7e2>
1c00ac84:	07500793          	li	a5,117
1c00ac88:	52fd8763          	beq	s11,a5,1c00b1b6 <pos_libc_prf+0xb6c>
1c00ac8c:	07800793          	li	a5,120
1c00ac90:	16fd9163          	bne	s11,a5,1c00adf2 <pos_libc_prf+0x7a8>
1c00ac94:	47b2                	lw	a5,12(sp)
1c00ac96:	1054                	addi	a3,sp,36
1c00ac98:	4390                	lw	a2,0(a5)
1c00ac9a:	00478b13          	addi	s6,a5,4
1c00ac9e:	47f2                	lw	a5,28(sp)
1c00aca0:	28079163          	bnez	a5,1c00af22 <pos_libc_prf+0x8d8>
1c00aca4:	87b6                	mv	a5,a3
1c00aca6:	4ea5                	li	t4,9
1c00aca8:	4e3d                	li	t3,15
1c00acaa:	a039                	j	1c00acb8 <pos_libc_prf+0x66e>
1c00acac:	ff098fa3          	sb	a6,-1(s3)
1c00acb0:	02ce7663          	bgeu	t3,a2,1c00acdc <pos_libc_prf+0x692>
1c00acb4:	862a                	mv	a2,a0
1c00acb6:	87ce                	mv	a5,s3
1c00acb8:	00f67593          	andi	a1,a2,15
1c00acbc:	00178993          	addi	s3,a5,1
1c00acc0:	05758813          	addi	a6,a1,87
1c00acc4:	03058713          	addi	a4,a1,48
1c00acc8:	00465513          	srli	a0,a2,0x4
1c00accc:	febee0e3          	bltu	t4,a1,1c00acac <pos_libc_prf+0x662>
1c00acd0:	00e78023          	sb	a4,0(a5)
1c00acd4:	00178993          	addi	s3,a5,1
1c00acd8:	fcce6ee3          	bltu	t3,a2,1c00acb4 <pos_libc_prf+0x66a>
1c00acdc:	40d98633          	sub	a2,s3,a3
1c00ace0:	01565c63          	bge	a2,s5,1c00acf8 <pos_libc_prf+0x6ae>
1c00ace4:	03000513          	li	a0,48
1c00ace8:	87ce                	mv	a5,s3
1c00acea:	0985                	addi	s3,s3,1
1c00acec:	40d98733          	sub	a4,s3,a3
1c00acf0:	fea98fa3          	sb	a0,-1(s3)
1c00acf4:	ff574ae3          	blt	a4,s5,1c00ace8 <pos_libc_prf+0x69e>
1c00acf8:	00098023          	sb	zero,0(s3)
1c00acfc:	00f6fe63          	bgeu	a3,a5,1c00ad18 <pos_libc_prf+0x6ce>
1c00ad00:	0006c603          	lbu	a2,0(a3)
1c00ad04:	0007c703          	lbu	a4,0(a5)
1c00ad08:	0685                	addi	a3,a3,1
1c00ad0a:	00c78023          	sb	a2,0(a5)
1c00ad0e:	fee68fa3          	sb	a4,-1(a3)
1c00ad12:	17fd                	addi	a5,a5,-1
1c00ad14:	fef6e6e3          	bltu	a3,a5,1c00ad00 <pos_libc_prf+0x6b6>
1c00ad18:	05800793          	li	a5,88
1c00ad1c:	66fd8463          	beq	s11,a5,1c00b384 <pos_libc_prf+0xd3a>
1c00ad20:	105c                	addi	a5,sp,36
1c00ad22:	40f989b3          	sub	s3,s3,a5
1c00ad26:	47f2                	lw	a5,28(sp)
1c00ad28:	c399                	beqz	a5,1c00ad2e <pos_libc_prf+0x6e4>
1c00ad2a:	4789                	li	a5,2
1c00ad2c:	ce3e                	sw	a5,28(sp)
1c00ad2e:	57fd                	li	a5,-1
1c00ad30:	f2fa8ee3          	beq	s5,a5,1c00ac6c <pos_libc_prf+0x622>
1c00ad34:	0c800793          	li	a5,200
1c00ad38:	e537cae3          	blt	a5,s3,1c00ab8c <pos_libc_prf+0x542>
1c00ad3c:	02000913          	li	s2,32
1c00ad40:	00198613          	addi	a2,s3,1
1c00ad44:	0349c963          	blt	s3,s4,1c00ad76 <pos_libc_prf+0x72c>
1c00ad48:	c65a                	sw	s6,12(sp)
1c00ad4a:	8a4e                	mv	s4,s3
1c00ad4c:	1a0a1663          	bnez	s4,1c00aef8 <pos_libc_prf+0x8ae>
1c00ad50:	b2b5                	j	1c00a6bc <pos_libc_prf+0x72>
1c00ad52:	06300793          	li	a5,99
1c00ad56:	96fd93e3          	bne	s11,a5,1c00a6bc <pos_libc_prf+0x72>
1c00ad5a:	4732                	lw	a4,12(sp)
1c00ad5c:	020102a3          	sb	zero,37(sp)
1c00ad60:	4785                	li	a5,1
1c00ad62:	4314                	lw	a3,0(a4)
1c00ad64:	00470b13          	addi	s6,a4,4
1c00ad68:	02d10223          	sb	a3,36(sp)
1c00ad6c:	1947d463          	bge	a5,s4,1c00aef4 <pos_libc_prf+0x8aa>
1c00ad70:	4609                	li	a2,2
1c00ad72:	4985                	li	s3,1
1c00ad74:	ce02                	sw	zero,28(sp)
1c00ad76:	4782                	lw	a5,0(sp)
1c00ad78:	4e078463          	beqz	a5,1c00b260 <pos_libc_prf+0xc16>
1c00ad7c:	413a07b3          	sub	a5,s4,s3
1c00ad80:	4585                	li	a1,1
1c00ad82:	0149d363          	bge	s3,s4,1c00ad88 <pos_libc_prf+0x73e>
1c00ad86:	85be                	mv	a1,a5
1c00ad88:	17fd                	addi	a5,a5,-1
1c00ad8a:	0037b793          	sltiu	a5,a5,3
1c00ad8e:	eb95                	bnez	a5,1c00adc2 <pos_libc_prf+0x778>
1c00ad90:	0349d963          	bge	s3,s4,1c00adc2 <pos_libc_prf+0x778>
1c00ad94:	105c                	addi	a5,sp,36
1c00ad96:	97ce                	add	a5,a5,s3
1c00ad98:	ffc5f613          	andi	a2,a1,-4
1c00ad9c:	963e                	add	a2,a2,a5
1c00ad9e:	02000693          	li	a3,32
1c00ada2:	00d78023          	sb	a3,0(a5)
1c00ada6:	00d780a3          	sb	a3,1(a5)
1c00adaa:	00d78123          	sb	a3,2(a5)
1c00adae:	00d781a3          	sb	a3,3(a5)
1c00adb2:	0791                	addi	a5,a5,4
1c00adb4:	fef617e3          	bne	a2,a5,1c00ada2 <pos_libc_prf+0x758>
1c00adb8:	ffc5f793          	andi	a5,a1,-4
1c00adbc:	99be                	add	s3,s3,a5
1c00adbe:	02b78663          	beq	a5,a1,1c00adea <pos_libc_prf+0x7a0>
1c00adc2:	199c                	addi	a5,sp,240
1c00adc4:	97ce                	add	a5,a5,s3
1c00adc6:	02000693          	li	a3,32
1c00adca:	f2d78a23          	sb	a3,-204(a5)
1c00adce:	00198793          	addi	a5,s3,1
1c00add2:	0147dc63          	bge	a5,s4,1c00adea <pos_libc_prf+0x7a0>
1c00add6:	1998                	addi	a4,sp,240
1c00add8:	97ba                	add	a5,a5,a4
1c00adda:	f2d78a23          	sb	a3,-204(a5)
1c00adde:	0989                	addi	s3,s3,2
1c00ade0:	0149d563          	bge	s3,s4,1c00adea <pos_libc_prf+0x7a0>
1c00ade4:	99ba                	add	s3,s3,a4
1c00ade6:	f2d98a23          	sb	a3,-204(s3)
1c00adea:	c65a                	sw	s6,12(sp)
1c00adec:	100a1663          	bnez	s4,1c00aef8 <pos_libc_prf+0x8ae>
1c00adf0:	b0f1                	j	1c00a6bc <pos_libc_prf+0x72>
1c00adf2:	07300793          	li	a5,115
1c00adf6:	d8fd97e3          	bne	s11,a5,1c00ab84 <pos_libc_prf+0x53a>
1c00adfa:	47b2                	lw	a5,12(sp)
1c00adfc:	4981                	li	s3,0
1c00adfe:	0c800693          	li	a3,200
1c00ae02:	438c                	lw	a1,0(a5)
1c00ae04:	00478b13          	addi	s6,a5,4
1c00ae08:	a021                	j	1c00ae10 <pos_libc_prf+0x7c6>
1c00ae0a:	0985                	addi	s3,s3,1
1c00ae0c:	6ad98163          	beq	s3,a3,1c00b4ae <pos_libc_prf+0xe64>
1c00ae10:	013587b3          	add	a5,a1,s3
1c00ae14:	0007c783          	lbu	a5,0(a5)
1c00ae18:	fbed                	bnez	a5,1c00ae0a <pos_libc_prf+0x7c0>
1c00ae1a:	000ac563          	bltz	s5,1c00ae24 <pos_libc_prf+0x7da>
1c00ae1e:	013ad363          	bge	s5,s3,1c00ae24 <pos_libc_prf+0x7da>
1c00ae22:	89d6                	mv	s3,s5
1c00ae24:	5a099163          	bnez	s3,1c00b3c6 <pos_libc_prf+0xd7c>
1c00ae28:	c65a                	sw	s6,12(sp)
1c00ae2a:	b849                	j	1c00a6bc <pos_libc_prf+0x72>
1c00ae2c:	06e00793          	li	a5,110
1c00ae30:	36fd8c63          	beq	s11,a5,1c00b1a8 <pos_libc_prf+0xb5e>
1c00ae34:	06f00793          	li	a5,111
1c00ae38:	88fd92e3          	bne	s11,a5,1c00a6bc <pos_libc_prf+0x72>
1c00ae3c:	47b2                	lw	a5,12(sp)
1c00ae3e:	4390                	lw	a2,0(a5)
1c00ae40:	00478b13          	addi	s6,a5,4
1c00ae44:	47f2                	lw	a5,28(sp)
1c00ae46:	c7f5                	beqz	a5,1c00af32 <pos_libc_prf+0x8e8>
1c00ae48:	03000793          	li	a5,48
1c00ae4c:	02f10223          	sb	a5,36(sp)
1c00ae50:	02510693          	addi	a3,sp,37
1c00ae54:	60060b63          	beqz	a2,1c00b46a <pos_libc_prf+0xe20>
1c00ae58:	89b6                	mv	s3,a3
1c00ae5a:	481d                	li	a6,7
1c00ae5c:	00767713          	andi	a4,a2,7
1c00ae60:	03070713          	addi	a4,a4,48
1c00ae64:	85b2                	mv	a1,a2
1c00ae66:	00e98023          	sb	a4,0(s3)
1c00ae6a:	87ce                	mv	a5,s3
1c00ae6c:	820d                	srli	a2,a2,0x3
1c00ae6e:	0985                	addi	s3,s3,1
1c00ae70:	feb866e3          	bltu	a6,a1,1c00ae5c <pos_libc_prf+0x812>
1c00ae74:	40d98633          	sub	a2,s3,a3
1c00ae78:	01565c63          	bge	a2,s5,1c00ae90 <pos_libc_prf+0x846>
1c00ae7c:	03000593          	li	a1,48
1c00ae80:	87ce                	mv	a5,s3
1c00ae82:	0985                	addi	s3,s3,1
1c00ae84:	40d98733          	sub	a4,s3,a3
1c00ae88:	feb98fa3          	sb	a1,-1(s3)
1c00ae8c:	ff574ae3          	blt	a4,s5,1c00ae80 <pos_libc_prf+0x836>
1c00ae90:	00098023          	sb	zero,0(s3)
1c00ae94:	00f6fe63          	bgeu	a3,a5,1c00aeb0 <pos_libc_prf+0x866>
1c00ae98:	0006c603          	lbu	a2,0(a3)
1c00ae9c:	0007c703          	lbu	a4,0(a5)
1c00aea0:	0685                	addi	a3,a3,1
1c00aea2:	00c78023          	sb	a2,0(a5)
1c00aea6:	fee68fa3          	sb	a4,-1(a3)
1c00aeaa:	17fd                	addi	a5,a5,-1
1c00aeac:	fef6e6e3          	bltu	a3,a5,1c00ae98 <pos_libc_prf+0x84e>
1c00aeb0:	1058                	addi	a4,sp,36
1c00aeb2:	57fd                	li	a5,-1
1c00aeb4:	40e989b3          	sub	s3,s3,a4
1c00aeb8:	36fa8763          	beq	s5,a5,1c00b226 <pos_libc_prf+0xbdc>
1c00aebc:	0c800793          	li	a5,200
1c00aec0:	cd37c6e3          	blt	a5,s3,1c00ab8c <pos_libc_prf+0x542>
1c00aec4:	ce02                	sw	zero,28(sp)
1c00aec6:	bd9d                	j	1c00ad3c <pos_libc_prf+0x6f2>
1c00aec8:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00aecc:	02a00793          	li	a5,42
1c00aed0:	00160693          	addi	a3,a2,1
1c00aed4:	14f59b63          	bne	a1,a5,1c00b02a <pos_libc_prf+0x9e0>
1c00aed8:	47b2                	lw	a5,12(sp)
1c00aeda:	00164d83          	lbu	s11,1(a2)
1c00aede:	0609                	addi	a2,a2,2
1c00aee0:	0007aa83          	lw	s5,0(a5)
1c00aee4:	0791                	addi	a5,a5,4
1c00aee6:	c63e                	sw	a5,12(sp)
1c00aee8:	0c800793          	li	a5,200
1c00aeec:	8957dde3          	bge	a5,s5,1c00a786 <pos_libc_prf+0x13c>
1c00aef0:	5afd                	li	s5,-1
1c00aef2:	b851                	j	1c00a786 <pos_libc_prf+0x13c>
1c00aef4:	c65a                	sw	s6,12(sp)
1c00aef6:	4a05                	li	s4,1
1c00aef8:	02410913          	addi	s2,sp,36
1c00aefc:	59fd                	li	s3,-1
1c00aefe:	41240ab3          	sub	s5,s0,s2
1c00af02:	9a4a                	add	s4,s4,s2
1c00af04:	a029                	j	1c00af0e <pos_libc_prf+0x8c4>
1c00af06:	012a8433          	add	s0,s5,s2
1c00af0a:	fb490963          	beq	s2,s4,1c00a6bc <pos_libc_prf+0x72>
1c00af0e:	00094503          	lbu	a0,0(s2)
1c00af12:	85a6                	mv	a1,s1
1c00af14:	0905                	addi	s2,s2,1
1c00af16:	9c82                	jalr	s9
1c00af18:	ff3517e3          	bne	a0,s3,1c00af06 <pos_libc_prf+0x8bc>
1c00af1c:	547d                	li	s0,-1
1c00af1e:	fa6ff06f          	j	1c00a6c4 <pos_libc_prf+0x7a>
1c00af22:	77e1                	lui	a5,0xffff8
1c00af24:	8307c793          	xori	a5,a5,-2000
1c00af28:	02f11223          	sh	a5,36(sp)
1c00af2c:	02610693          	addi	a3,sp,38
1c00af30:	bb95                	j	1c00aca4 <pos_libc_prf+0x65a>
1c00af32:	1054                	addi	a3,sp,36
1c00af34:	b715                	j	1c00ae58 <pos_libc_prf+0x80e>
1c00af36:	5c605a63          	blez	t1,1c00b50a <pos_libc_prf+0xec0>
1c00af3a:	006f09b3          	add	s3,t5,t1
1c00af3e:	4541                	li	a0,16
1c00af40:	03000e13          	li	t3,48
1c00af44:	00279713          	slli	a4,a5,0x2
1c00af48:	01e7d593          	srli	a1,a5,0x1e
1c00af4c:	00289693          	slli	a3,a7,0x2
1c00af50:	00f70333          	add	t1,a4,a5
1c00af54:	8ecd                	or	a3,a3,a1
1c00af56:	96c6                	add	a3,a3,a7
1c00af58:	00e33733          	sltu	a4,t1,a4
1c00af5c:	9736                	add	a4,a4,a3
1c00af5e:	0706                	slli	a4,a4,0x1
1c00af60:	01f35693          	srli	a3,t1,0x1f
1c00af64:	8f55                	or	a4,a4,a3
1c00af66:	01c75693          	srli	a3,a4,0x1c
1c00af6a:	03068693          	addi	a3,a3,48
1c00af6e:	4ea05463          	blez	a0,1c00b456 <pos_libc_prf+0xe0c>
1c00af72:	fed80fa3          	sb	a3,-1(a6)
1c00af76:	46d2                	lw	a3,20(sp)
1c00af78:	157d                	addi	a0,a0,-1
1c00af7a:	00131793          	slli	a5,t1,0x1
1c00af7e:	00d778b3          	and	a7,a4,a3
1c00af82:	4d099e63          	bne	s3,a6,1c00b45e <pos_libc_prf+0xe14>
1c00af86:	4301                	li	t1,0
1c00af88:	4772                	lw	a4,28(sp)
1c00af8a:	01576bb3          	or	s7,a4,s5
1c00af8e:	060b8863          	beqz	s7,1c00affe <pos_libc_prf+0x9b4>
1c00af92:	02e00693          	li	a3,46
1c00af96:	00d98023          	sb	a3,0(s3)
1c00af9a:	00198e93          	addi	t4,s3,1
1c00af9e:	5c0a8763          	beqz	s5,1c00b56c <pos_libc_prf+0xf22>
1c00afa2:	001a8693          	addi	a3,s5,1
1c00afa6:	99b6                	add	s3,s3,a3
1c00afa8:	8876                	mv	a6,t4
1c00afaa:	03000f13          	li	t5,48
1c00afae:	0805                	addi	a6,a6,1
1c00afb0:	4a031963          	bnez	t1,1c00b462 <pos_libc_prf+0xe18>
1c00afb4:	00279713          	slli	a4,a5,0x2
1c00afb8:	01e7d593          	srli	a1,a5,0x1e
1c00afbc:	00289693          	slli	a3,a7,0x2
1c00afc0:	00f70e33          	add	t3,a4,a5
1c00afc4:	8ecd                	or	a3,a3,a1
1c00afc6:	96c6                	add	a3,a3,a7
1c00afc8:	00ee3733          	sltu	a4,t3,a4
1c00afcc:	9736                	add	a4,a4,a3
1c00afce:	0706                	slli	a4,a4,0x1
1c00afd0:	01fe5693          	srli	a3,t3,0x1f
1c00afd4:	8f55                	or	a4,a4,a3
1c00afd6:	01c75593          	srli	a1,a4,0x1c
1c00afda:	03000693          	li	a3,48
1c00afde:	00a05a63          	blez	a0,1c00aff2 <pos_libc_prf+0x9a8>
1c00afe2:	03058693          	addi	a3,a1,48
1c00afe6:	45d2                	lw	a1,20(sp)
1c00afe8:	157d                	addi	a0,a0,-1
1c00afea:	001e1793          	slli	a5,t3,0x1
1c00afee:	00b778b3          	and	a7,a4,a1
1c00aff2:	fed80fa3          	sb	a3,-1(a6)
1c00aff6:	fb099ce3          	bne	s3,a6,1c00afae <pos_libc_prf+0x964>
1c00affa:	015e89b3          	add	s3,t4,s5
1c00affe:	b0060ee3          	beqz	a2,1c00ab1a <pos_libc_prf+0x4d0>
1c00b002:	03000613          	li	a2,48
1c00b006:	fff9c783          	lbu	a5,-1(s3)
1c00b00a:	86ce                	mv	a3,s3
1c00b00c:	19fd                	addi	s3,s3,-1
1c00b00e:	fec78ce3          	beq	a5,a2,1c00b006 <pos_libc_prf+0x9bc>
1c00b012:	02e00613          	li	a2,46
1c00b016:	aec78ce3          	beq	a5,a2,1c00ab0e <pos_libc_prf+0x4c4>
1c00b01a:	89b6                	mv	s3,a3
1c00b01c:	bccd                	j	1c00ab0e <pos_libc_prf+0x4c4>
1c00b01e:	fff88fa3          	sb	t6,-1(a7)
1c00b022:	ab1f11e3          	bne	t5,a7,1c00aac4 <pos_libc_prf+0x47a>
1c00b026:	99d6                	add	s3,s3,s5
1c00b028:	b4cd                	j	1c00ab0a <pos_libc_prf+0x4c0>
1c00b02a:	fd058713          	addi	a4,a1,-48
1c00b02e:	47a5                	li	a5,9
1c00b030:	8dae                	mv	s11,a1
1c00b032:	4a81                	li	s5,0
1c00b034:	4525                	li	a0,9
1c00b036:	00e7f463          	bgeu	a5,a4,1c00b03e <pos_libc_prf+0x9f4>
1c00b03a:	a199                	j	1c00b480 <pos_libc_prf+0xe36>
1c00b03c:	0685                	addi	a3,a3,1
1c00b03e:	002a9793          	slli	a5,s5,0x2
1c00b042:	97d6                	add	a5,a5,s5
1c00b044:	0786                	slli	a5,a5,0x1
1c00b046:	97ee                	add	a5,a5,s11
1c00b048:	0006cd83          	lbu	s11,0(a3)
1c00b04c:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00b050:	8732                	mv	a4,a2
1c00b052:	fd0d8793          	addi	a5,s11,-48
1c00b056:	8636                	mv	a2,a3
1c00b058:	fef572e3          	bgeu	a0,a5,1c00b03c <pos_libc_prf+0x9f2>
1c00b05c:	00270613          	addi	a2,a4,2
1c00b060:	b561                	j	1c00aee8 <pos_libc_prf+0x89e>
1c00b062:	47b2                	lw	a5,12(sp)
1c00b064:	0007a303          	lw	t1,0(a5)
1c00b068:	00478b13          	addi	s6,a5,4
1c00b06c:	2e034263          	bltz	t1,1c00b350 <pos_libc_prf+0xd06>
1c00b070:	47a2                	lw	a5,8(sp)
1c00b072:	861a                	mv	a2,t1
1c00b074:	3c078663          	beqz	a5,1c00b440 <pos_libc_prf+0xdf6>
1c00b078:	02b00793          	li	a5,43
1c00b07c:	02f10223          	sb	a5,36(sp)
1c00b080:	02510693          	addi	a3,sp,37
1c00b084:	89b6                	mv	s3,a3
1c00b086:	4529                	li	a0,10
1c00b088:	48a5                	li	a7,9
1c00b08a:	02a67733          	remu	a4,a2,a0
1c00b08e:	87ce                	mv	a5,s3
1c00b090:	0985                	addi	s3,s3,1
1c00b092:	85b2                	mv	a1,a2
1c00b094:	03070713          	addi	a4,a4,48
1c00b098:	fee98fa3          	sb	a4,-1(s3)
1c00b09c:	02a65633          	divu	a2,a2,a0
1c00b0a0:	feb8e5e3          	bltu	a7,a1,1c00b08a <pos_libc_prf+0xa40>
1c00b0a4:	40d98633          	sub	a2,s3,a3
1c00b0a8:	01565c63          	bge	a2,s5,1c00b0c0 <pos_libc_prf+0xa76>
1c00b0ac:	03000593          	li	a1,48
1c00b0b0:	87ce                	mv	a5,s3
1c00b0b2:	0985                	addi	s3,s3,1
1c00b0b4:	40d98733          	sub	a4,s3,a3
1c00b0b8:	feb98fa3          	sb	a1,-1(s3)
1c00b0bc:	ff574ae3          	blt	a4,s5,1c00b0b0 <pos_libc_prf+0xa66>
1c00b0c0:	00098023          	sb	zero,0(s3)
1c00b0c4:	00f6fe63          	bgeu	a3,a5,1c00b0e0 <pos_libc_prf+0xa96>
1c00b0c8:	0006c603          	lbu	a2,0(a3)
1c00b0cc:	0007c703          	lbu	a4,0(a5)
1c00b0d0:	0685                	addi	a3,a3,1
1c00b0d2:	00c78023          	sb	a2,0(a5)
1c00b0d6:	fee68fa3          	sb	a4,-1(a3)
1c00b0da:	17fd                	addi	a5,a5,-1
1c00b0dc:	fef6e6e3          	bltu	a3,a5,1c00b0c8 <pos_libc_prf+0xa7e>
1c00b0e0:	4712                	lw	a4,4(sp)
1c00b0e2:	47a2                	lw	a5,8(sp)
1c00b0e4:	8fd9                	or	a5,a5,a4
1c00b0e6:	ce3e                	sw	a5,28(sp)
1c00b0e8:	1058                	addi	a4,sp,36
1c00b0ea:	40e989b3          	sub	s3,s3,a4
1c00b0ee:	c40790e3          	bnez	a5,1c00ad2e <pos_libc_prf+0x6e4>
1c00b0f2:	01f35793          	srli	a5,t1,0x1f
1c00b0f6:	ce3e                	sw	a5,28(sp)
1c00b0f8:	b91d                	j	1c00ad2e <pos_libc_prf+0x6e4>
1c00b0fa:	47b2                	lw	a5,12(sp)
1c00b0fc:	02610613          	addi	a2,sp,38
1c00b100:	4ea5                	li	t4,9
1c00b102:	438c                	lw	a1,0(a5)
1c00b104:	00478b13          	addi	s6,a5,4
1c00b108:	77e1                	lui	a5,0xffff8
1c00b10a:	8307c793          	xori	a5,a5,-2000
1c00b10e:	02f11223          	sh	a5,36(sp)
1c00b112:	4e3d                	li	t3,15
1c00b114:	87b2                	mv	a5,a2
1c00b116:	a039                	j	1c00b124 <pos_libc_prf+0xada>
1c00b118:	ff168fa3          	sb	a7,-1(a3)
1c00b11c:	02be7663          	bgeu	t3,a1,1c00b148 <pos_libc_prf+0xafe>
1c00b120:	85c2                	mv	a1,a6
1c00b122:	87b6                	mv	a5,a3
1c00b124:	00f5f513          	andi	a0,a1,15
1c00b128:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00b12c:	05750893          	addi	a7,a0,87
1c00b130:	03050713          	addi	a4,a0,48
1c00b134:	0045d813          	srli	a6,a1,0x4
1c00b138:	feaee0e3          	bltu	t4,a0,1c00b118 <pos_libc_prf+0xace>
1c00b13c:	00e78023          	sb	a4,0(a5)
1c00b140:	00178693          	addi	a3,a5,1
1c00b144:	fcbe6ee3          	bltu	t3,a1,1c00b120 <pos_libc_prf+0xad6>
1c00b148:	40c689b3          	sub	s3,a3,a2
1c00b14c:	459d                	li	a1,7
1c00b14e:	0135cc63          	blt	a1,s3,1c00b166 <pos_libc_prf+0xb1c>
1c00b152:	03000513          	li	a0,48
1c00b156:	87b6                	mv	a5,a3
1c00b158:	0685                	addi	a3,a3,1
1c00b15a:	40c689b3          	sub	s3,a3,a2
1c00b15e:	fea68fa3          	sb	a0,-1(a3)
1c00b162:	ff35dae3          	bge	a1,s3,1c00b156 <pos_libc_prf+0xb0c>
1c00b166:	00068023          	sb	zero,0(a3)
1c00b16a:	86b2                	mv	a3,a2
1c00b16c:	00f67e63          	bgeu	a2,a5,1c00b188 <pos_libc_prf+0xb3e>
1c00b170:	0006c603          	lbu	a2,0(a3)
1c00b174:	0007c703          	lbu	a4,0(a5)
1c00b178:	0685                	addi	a3,a3,1
1c00b17a:	00c78023          	sb	a2,0(a5)
1c00b17e:	fee68fa3          	sb	a4,-1(a3)
1c00b182:	17fd                	addi	a5,a5,-1
1c00b184:	fef6e6e3          	bltu	a3,a5,1c00b170 <pos_libc_prf+0xb26>
1c00b188:	57fd                	li	a5,-1
1c00b18a:	0989                	addi	s3,s3,2
1c00b18c:	22fa8663          	beq	s5,a5,1c00b3b8 <pos_libc_prf+0xd6e>
1c00b190:	0c800793          	li	a5,200
1c00b194:	9f37cce3          	blt	a5,s3,1c00ab8c <pos_libc_prf+0x542>
1c00b198:	02000913          	li	s2,32
1c00b19c:	0b49d863          	bge	s3,s4,1c00b24c <pos_libc_prf+0xc02>
1c00b1a0:	00198613          	addi	a2,s3,1
1c00b1a4:	ce02                	sw	zero,28(sp)
1c00b1a6:	bec1                	j	1c00ad76 <pos_libc_prf+0x72c>
1c00b1a8:	4732                	lw	a4,12(sp)
1c00b1aa:	431c                	lw	a5,0(a4)
1c00b1ac:	0711                	addi	a4,a4,4
1c00b1ae:	c63a                	sw	a4,12(sp)
1c00b1b0:	c380                	sw	s0,0(a5)
1c00b1b2:	d0aff06f          	j	1c00a6bc <pos_libc_prf+0x72>
1c00b1b6:	47b2                	lw	a5,12(sp)
1c00b1b8:	4529                	li	a0,10
1c00b1ba:	48a5                	li	a7,9
1c00b1bc:	4390                	lw	a2,0(a5)
1c00b1be:	00478b13          	addi	s6,a5,4
1c00b1c2:	105c                	addi	a5,sp,36
1c00b1c4:	02a67733          	remu	a4,a2,a0
1c00b1c8:	86be                	mv	a3,a5
1c00b1ca:	0785                	addi	a5,a5,1
1c00b1cc:	85b2                	mv	a1,a2
1c00b1ce:	03070713          	addi	a4,a4,48
1c00b1d2:	fee78fa3          	sb	a4,-1(a5)
1c00b1d6:	02a65633          	divu	a2,a2,a0
1c00b1da:	feb8e5e3          	bltu	a7,a1,1c00b1c4 <pos_libc_prf+0xb7a>
1c00b1de:	1058                	addi	a4,sp,36
1c00b1e0:	40e789b3          	sub	s3,a5,a4
1c00b1e4:	0159dd63          	bge	s3,s5,1c00b1fe <pos_libc_prf+0xbb4>
1c00b1e8:	03000613          	li	a2,48
1c00b1ec:	86be                	mv	a3,a5
1c00b1ee:	1058                	addi	a4,sp,36
1c00b1f0:	0785                	addi	a5,a5,1
1c00b1f2:	40e789b3          	sub	s3,a5,a4
1c00b1f6:	fec78fa3          	sb	a2,-1(a5)
1c00b1fa:	ff59c9e3          	blt	s3,s5,1c00b1ec <pos_libc_prf+0xba2>
1c00b1fe:	00078023          	sb	zero,0(a5)
1c00b202:	105c                	addi	a5,sp,36
1c00b204:	00d7fe63          	bgeu	a5,a3,1c00b220 <pos_libc_prf+0xbd6>
1c00b208:	0007c603          	lbu	a2,0(a5)
1c00b20c:	0006c703          	lbu	a4,0(a3)
1c00b210:	0785                	addi	a5,a5,1
1c00b212:	00c68023          	sb	a2,0(a3)
1c00b216:	fee78fa3          	sb	a4,-1(a5)
1c00b21a:	16fd                	addi	a3,a3,-1
1c00b21c:	fed7e6e3          	bltu	a5,a3,1c00b208 <pos_libc_prf+0xbbe>
1c00b220:	57fd                	li	a5,-1
1c00b222:	c8fa9de3          	bne	s5,a5,1c00aebc <pos_libc_prf+0x872>
1c00b226:	0c800793          	li	a5,200
1c00b22a:	9737c1e3          	blt	a5,s3,1c00ab8c <pos_libc_prf+0x542>
1c00b22e:	ce02                	sw	zero,28(sp)
1c00b230:	be01                	j	1c00ad40 <pos_libc_prf+0x6f6>
1c00b232:	85a6                	mv	a1,s1
1c00b234:	02500513          	li	a0,37
1c00b238:	9c82                	jalr	s9
1c00b23a:	57fd                	li	a5,-1
1c00b23c:	c6f51f63          	bne	a0,a5,1c00a6ba <pos_libc_prf+0x70>
1c00b240:	547d                	li	s0,-1
1c00b242:	c82ff06f          	j	1c00a6c4 <pos_libc_prf+0x7a>
1c00b246:	4401                	li	s0,0
1c00b248:	c7cff06f          	j	1c00a6c4 <pos_libc_prf+0x7a>
1c00b24c:	8a4e                	mv	s4,s3
1c00b24e:	c65a                	sw	s6,12(sp)
1c00b250:	b165                	j	1c00aef8 <pos_libc_prf+0x8ae>
1c00b252:	0c800793          	li	a5,200
1c00b256:	9337cbe3          	blt	a5,s3,1c00ab8c <pos_libc_prf+0x542>
1c00b25a:	4785                	li	a5,1
1c00b25c:	ce3e                	sw	a5,28(sp)
1c00b25e:	b4cd                	j	1c00ad40 <pos_libc_prf+0x6f6>
1c00b260:	104c                	addi	a1,sp,36
1c00b262:	413a09b3          	sub	s3,s4,s3
1c00b266:	01358533          	add	a0,a1,s3
1c00b26a:	9faff0ef          	jal	ra,1c00a464 <memmove>
1c00b26e:	02000793          	li	a5,32
1c00b272:	24f90863          	beq	s2,a5,1c00b4c2 <pos_libc_prf+0xe78>
1c00b276:	47f2                	lw	a5,28(sp)
1c00b278:	99be                	add	s3,s3,a5
1c00b27a:	47f2                	lw	a5,28(sp)
1c00b27c:	b737d7e3          	bge	a5,s3,1c00adea <pos_libc_prf+0x7a0>
1c00b280:	4772                	lw	a4,28(sp)
1c00b282:	4789                	li	a5,2
1c00b284:	40e988b3          	sub	a7,s3,a4
1c00b288:	fff88693          	addi	a3,a7,-1
1c00b28c:	06d7f063          	bgeu	a5,a3,1c00b2ec <pos_libc_prf+0xca2>
1c00b290:	47e2                	lw	a5,24(sp)
1c00b292:	00891613          	slli	a2,s2,0x8
1c00b296:	ffc8f593          	andi	a1,a7,-4
1c00b29a:	00f976b3          	and	a3,s2,a5
1c00b29e:	8ed1                	or	a3,a3,a2
1c00b2a0:	01091793          	slli	a5,s2,0x10
1c00b2a4:	8edd                	or	a3,a3,a5
1c00b2a6:	01891613          	slli	a2,s2,0x18
1c00b2aa:	8e55                	or	a2,a2,a3
1c00b2ac:	105c                	addi	a5,sp,36
1c00b2ae:	00865813          	srli	a6,a2,0x8
1c00b2b2:	01065513          	srli	a0,a2,0x10
1c00b2b6:	97ba                	add	a5,a5,a4
1c00b2b8:	95be                	add	a1,a1,a5
1c00b2ba:	0306f693          	andi	a3,a3,48
1c00b2be:	8261                	srli	a2,a2,0x18
1c00b2c0:	0ff87813          	andi	a6,a6,255
1c00b2c4:	0ff57513          	andi	a0,a0,255
1c00b2c8:	00d78023          	sb	a3,0(a5)
1c00b2cc:	010780a3          	sb	a6,1(a5)
1c00b2d0:	00a78123          	sb	a0,2(a5)
1c00b2d4:	00c781a3          	sb	a2,3(a5)
1c00b2d8:	0791                	addi	a5,a5,4
1c00b2da:	fef597e3          	bne	a1,a5,1c00b2c8 <pos_libc_prf+0xc7e>
1c00b2de:	4772                	lw	a4,28(sp)
1c00b2e0:	ffc8f793          	andi	a5,a7,-4
1c00b2e4:	973e                	add	a4,a4,a5
1c00b2e6:	ce3a                	sw	a4,28(sp)
1c00b2e8:	b11781e3          	beq	a5,a7,1c00adea <pos_libc_prf+0x7a0>
1c00b2ec:	4772                	lw	a4,28(sp)
1c00b2ee:	199c                	addi	a5,sp,240
1c00b2f0:	97ba                	add	a5,a5,a4
1c00b2f2:	f3278a23          	sb	s2,-204(a5)
1c00b2f6:	00170793          	addi	a5,a4,1
1c00b2fa:	af37d8e3          	bge	a5,s3,1c00adea <pos_libc_prf+0x7a0>
1c00b2fe:	1994                	addi	a3,sp,240
1c00b300:	97b6                	add	a5,a5,a3
1c00b302:	f3278a23          	sb	s2,-204(a5)
1c00b306:	00270b93          	addi	s7,a4,2
1c00b30a:	af3bd0e3          	bge	s7,s3,1c00adea <pos_libc_prf+0x7a0>
1c00b30e:	9bb6                	add	s7,s7,a3
1c00b310:	f32b8a23          	sb	s2,-204(s7)
1c00b314:	c65a                	sw	s6,12(sp)
1c00b316:	bcd9                	j	1c00adec <pos_libc_prf+0x7a2>
1c00b318:	01b98023          	sb	s11,0(s3)
1c00b31c:	02b00613          	li	a2,43
1c00b320:	00035663          	bgez	t1,1c00b32c <pos_libc_prf+0xce2>
1c00b324:	40600333          	neg	t1,t1
1c00b328:	02d00613          	li	a2,45
1c00b32c:	47a9                	li	a5,10
1c00b32e:	02f346b3          	div	a3,t1,a5
1c00b332:	00c980a3          	sb	a2,1(s3)
1c00b336:	0991                	addi	s3,s3,4
1c00b338:	02f367b3          	rem	a5,t1,a5
1c00b33c:	03068693          	addi	a3,a3,48
1c00b340:	fed98f23          	sb	a3,-2(s3)
1c00b344:	03078793          	addi	a5,a5,48
1c00b348:	fef98fa3          	sb	a5,-1(s3)
1c00b34c:	fceff06f          	j	1c00ab1a <pos_libc_prf+0x4d0>
1c00b350:	02d00793          	li	a5,45
1c00b354:	02f10223          	sb	a5,36(sp)
1c00b358:	800007b7          	lui	a5,0x80000
1c00b35c:	14f30e63          	beq	t1,a5,1c00b4b8 <pos_libc_prf+0xe6e>
1c00b360:	40600633          	neg	a2,t1
1c00b364:	02510693          	addi	a3,sp,37
1c00b368:	bb31                	j	1c00b084 <pos_libc_prf+0xa3a>
1c00b36a:	4722                	lw	a4,8(sp)
1c00b36c:	10070d63          	beqz	a4,1c00b486 <pos_libc_prf+0xe3c>
1c00b370:	02b00693          	li	a3,43
1c00b374:	02d10223          	sb	a3,36(sp)
1c00b378:	02510f13          	addi	t5,sp,37
1c00b37c:	4301                	li	t1,0
1c00b37e:	4801                	li	a6,0
1c00b380:	d9cff06f          	j	1c00a91c <pos_libc_prf+0x2d2>
1c00b384:	02414783          	lbu	a5,36(sp)
1c00b388:	98078ce3          	beqz	a5,1c00ad20 <pos_libc_prf+0x6d6>
1c00b38c:	1054                	addi	a3,sp,36
1c00b38e:	45e5                	li	a1,25
1c00b390:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00b394:	f9f78793          	addi	a5,a5,-97
1c00b398:	0ff7f793          	andi	a5,a5,255
1c00b39c:	00f5e963          	bltu	a1,a5,1c00b3ae <pos_libc_prf+0xd64>
1c00b3a0:	0016c783          	lbu	a5,1(a3)
1c00b3a4:	00e68023          	sb	a4,0(a3)
1c00b3a8:	0685                	addi	a3,a3,1
1c00b3aa:	f3fd                	bnez	a5,1c00b390 <pos_libc_prf+0xd46>
1c00b3ac:	ba95                	j	1c00ad20 <pos_libc_prf+0x6d6>
1c00b3ae:	0016c783          	lbu	a5,1(a3)
1c00b3b2:	0685                	addi	a3,a3,1
1c00b3b4:	fff1                	bnez	a5,1c00b390 <pos_libc_prf+0xd46>
1c00b3b6:	b2ad                	j	1c00ad20 <pos_libc_prf+0x6d6>
1c00b3b8:	0c800793          	li	a5,200
1c00b3bc:	df37d0e3          	bge	a5,s3,1c00b19c <pos_libc_prf+0xb52>
1c00b3c0:	547d                	li	s0,-1
1c00b3c2:	b02ff06f          	j	1c00a6c4 <pos_libc_prf+0x7a>
1c00b3c6:	864e                	mv	a2,s3
1c00b3c8:	1048                	addi	a0,sp,36
1c00b3ca:	fc5fe0ef          	jal	ra,1c00a38e <memcpy>
1c00b3ce:	b3f9                	j	1c00b19c <pos_libc_prf+0xb52>
1c00b3d0:	47f2                	lw	a5,28(sp)
1c00b3d2:	4601                	li	a2,0
1c00b3d4:	e399                	bnez	a5,1c00b3da <pos_libc_prf+0xd90>
1c00b3d6:	01503633          	snez	a2,s5
1c00b3da:	57f5                	li	a5,-3
1c00b3dc:	001a8813          	addi	a6,s5,1
1c00b3e0:	00f34463          	blt	t1,a5,1c00b3e8 <pos_libc_prf+0xd9e>
1c00b3e4:	04685163          	bge	a6,t1,1c00b426 <pos_libc_prf+0xddc>
1c00b3e8:	47c1                	li	a5,16
1c00b3ea:	0107d363          	bge	a5,a6,1c00b3f0 <pos_libc_prf+0xda6>
1c00b3ee:	4841                	li	a6,16
1c00b3f0:	06700793          	li	a5,103
1c00b3f4:	187d                	addi	a6,a6,-1
1c00b3f6:	02fd8363          	beq	s11,a5,1c00b41c <pos_libc_prf+0xdd2>
1c00b3fa:	04500d93          	li	s11,69
1c00b3fe:	d70ff06f          	j	1c00a96e <pos_libc_prf+0x324>
1c00b402:	4a99                	li	s5,6
1c00b404:	d4fd9563          	bne	s11,a5,1c00a94e <pos_libc_prf+0x304>
1c00b408:	4772                	lw	a4,28(sp)
1c00b40a:	4605                	li	a2,1
1c00b40c:	57f5                	li	a5,-3
1c00b40e:	8e19                	sub	a2,a2,a4
1c00b410:	00f34563          	blt	t1,a5,1c00b41a <pos_libc_prf+0xdd0>
1c00b414:	479d                	li	a5,7
1c00b416:	0067d863          	bge	a5,t1,1c00b426 <pos_libc_prf+0xddc>
1c00b41a:	4819                	li	a6,6
1c00b41c:	06500d93          	li	s11,101
1c00b420:	d4eff06f          	j	1c00a96e <pos_libc_prf+0x324>
1c00b424:	4601                	li	a2,0
1c00b426:	006a8833          	add	a6,s5,t1
1c00b42a:	0b005b63          	blez	a6,1c00b4e0 <pos_libc_prf+0xe96>
1c00b42e:	47c1                	li	a5,16
1c00b430:	0107d363          	bge	a5,a6,1c00b436 <pos_libc_prf+0xdec>
1c00b434:	4841                	li	a6,16
1c00b436:	187d                	addi	a6,a6,-1
1c00b438:	06600d93          	li	s11,102
1c00b43c:	d32ff06f          	j	1c00a96e <pos_libc_prf+0x324>
1c00b440:	4792                	lw	a5,4(sp)
1c00b442:	1054                	addi	a3,sp,36
1c00b444:	c40780e3          	beqz	a5,1c00b084 <pos_libc_prf+0xa3a>
1c00b448:	02000793          	li	a5,32
1c00b44c:	02f10223          	sb	a5,36(sp)
1c00b450:	02510693          	addi	a3,sp,37
1c00b454:	b905                	j	1c00b084 <pos_libc_prf+0xa3a>
1c00b456:	ffc80fa3          	sb	t3,-1(a6)
1c00b45a:	b30986e3          	beq	s3,a6,1c00af86 <pos_libc_prf+0x93c>
1c00b45e:	0805                	addi	a6,a6,1
1c00b460:	b4d5                	j	1c00af44 <pos_libc_prf+0x8fa>
1c00b462:	ffe80fa3          	sb	t5,-1(a6)
1c00b466:	0305                	addi	t1,t1,1
1c00b468:	b679                	j	1c00aff6 <pos_libc_prf+0x9ac>
1c00b46a:	020102a3          	sb	zero,37(sp)
1c00b46e:	57fd                	li	a5,-1
1c00b470:	0cfa8263          	beq	s5,a5,1c00b534 <pos_libc_prf+0xeea>
1c00b474:	4785                	li	a5,1
1c00b476:	0b47c063          	blt	a5,s4,1c00b516 <pos_libc_prf+0xecc>
1c00b47a:	4a72                	lw	s4,28(sp)
1c00b47c:	c65a                	sw	s6,12(sp)
1c00b47e:	bcad                	j	1c00aef8 <pos_libc_prf+0x8ae>
1c00b480:	8636                	mv	a2,a3
1c00b482:	b04ff06f          	j	1c00a786 <pos_libc_prf+0x13c>
1c00b486:	4712                	lw	a4,4(sp)
1c00b488:	c77d                	beqz	a4,1c00b576 <pos_libc_prf+0xf2c>
1c00b48a:	02000693          	li	a3,32
1c00b48e:	02d10223          	sb	a3,36(sp)
1c00b492:	4301                	li	t1,0
1c00b494:	4801                	li	a6,0
1c00b496:	02510f13          	addi	t5,sp,37
1c00b49a:	c82ff06f          	j	1c00a91c <pos_libc_prf+0x2d2>
1c00b49e:	02d00693          	li	a3,45
1c00b4a2:	02d10223          	sb	a3,36(sp)
1c00b4a6:	02510f13          	addi	t5,sp,37
1c00b4aa:	b9cff06f          	j	1c00a846 <pos_libc_prf+0x1fc>
1c00b4ae:	0c800613          	li	a2,200
1c00b4b2:	960ad6e3          	bgez	s5,1c00ae1e <pos_libc_prf+0x7d4>
1c00b4b6:	bf09                	j	1c00b3c8 <pos_libc_prf+0xd7e>
1c00b4b8:	80000637          	lui	a2,0x80000
1c00b4bc:	02510693          	addi	a3,sp,37
1c00b4c0:	b6d1                	j	1c00b084 <pos_libc_prf+0xa3a>
1c00b4c2:	ce02                	sw	zero,28(sp)
1c00b4c4:	bb5d                	j	1c00b27a <pos_libc_prf+0xc30>
1c00b4c6:	4712                	lw	a4,4(sp)
1c00b4c8:	02410f13          	addi	t5,sp,36
1c00b4cc:	b6070d63          	beqz	a4,1c00a846 <pos_libc_prf+0x1fc>
1c00b4d0:	02000693          	li	a3,32
1c00b4d4:	02d10223          	sb	a3,36(sp)
1c00b4d8:	02510f13          	addi	t5,sp,37
1c00b4dc:	b6aff06f          	j	1c00a846 <pos_libc_prf+0x1fc>
1c00b4e0:	06600d93          	li	s11,102
1c00b4e4:	4781                	li	a5,0
1c00b4e6:	080006b7          	lui	a3,0x8000
1c00b4ea:	ce8ff06f          	j	1c00a9d2 <pos_libc_prf+0x388>
1c00b4ee:	06b6e363          	bltu	a3,a1,1c00b554 <pos_libc_prf+0xf0a>
1c00b4f2:	04e00693          	li	a3,78
1c00b4f6:	04100613          	li	a2,65
1c00b4fa:	00d78023          	sb	a3,0(a5)
1c00b4fe:	00c780a3          	sb	a2,1(a5)
1c00b502:	00d78123          	sb	a3,2(a5)
1c00b506:	f44ff06f          	j	1c00ac4a <pos_libc_prf+0x600>
1c00b50a:	03000693          	li	a3,48
1c00b50e:	00df0023          	sb	a3,0(t5)
1c00b512:	4541                	li	a0,16
1c00b514:	bc95                	j	1c00af88 <pos_libc_prf+0x93e>
1c00b516:	4982                	lw	s3,0(sp)
1c00b518:	860992e3          	bnez	s3,1c00ad7c <pos_libc_prf+0x732>
1c00b51c:	104c                	addi	a1,sp,36
1c00b51e:	fffa0993          	addi	s3,s4,-1
1c00b522:	4609                	li	a2,2
1c00b524:	01358533          	add	a0,a1,s3
1c00b528:	f3dfe0ef          	jal	ra,1c00a464 <memmove>
1c00b52c:	02000913          	li	s2,32
1c00b530:	ce02                	sw	zero,28(sp)
1c00b532:	b3b9                	j	1c00b280 <pos_libc_prf+0xc36>
1c00b534:	49f2                	lw	s3,28(sp)
1c00b536:	b19d                	j	1c00b19c <pos_libc_prf+0xb52>
1c00b538:	06900693          	li	a3,105
1c00b53c:	00d78023          	sb	a3,0(a5)
1c00b540:	06e00693          	li	a3,110
1c00b544:	00d780a3          	sb	a3,1(a5)
1c00b548:	06600693          	li	a3,102
1c00b54c:	00d78123          	sb	a3,2(a5)
1c00b550:	efaff06f          	j	1c00ac4a <pos_libc_prf+0x600>
1c00b554:	06e00693          	li	a3,110
1c00b558:	06100613          	li	a2,97
1c00b55c:	00d78023          	sb	a3,0(a5)
1c00b560:	00c780a3          	sb	a2,1(a5)
1c00b564:	00d78123          	sb	a3,2(a5)
1c00b568:	ee2ff06f          	j	1c00ac4a <pos_libc_prf+0x600>
1c00b56c:	89f6                	mv	s3,t4
1c00b56e:	a8061ae3          	bnez	a2,1c00b002 <pos_libc_prf+0x9b8>
1c00b572:	da8ff06f          	j	1c00ab1a <pos_libc_prf+0x4d0>
1c00b576:	4301                	li	t1,0
1c00b578:	4801                	li	a6,0
1c00b57a:	02410f13          	addi	t5,sp,36
1c00b57e:	b9eff06f          	j	1c00a91c <pos_libc_prf+0x2d2>

1c00b582 <pos_init_start>:
1c00b582:	1141                	addi	sp,sp,-16
1c00b584:	c422                	sw	s0,8(sp)
1c00b586:	1c000437          	lui	s0,0x1c000
1c00b58a:	c606                	sw	ra,12(sp)
1c00b58c:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b590:	dc9fc0ef          	jal	ra,1c008358 <pos_soc_init>
1c00b594:	2a75                	jal	1c00b750 <pos_irq_init>
1c00b596:	22e5                	jal	1c00b77e <pos_soc_event_init>
1c00b598:	2225                	jal	1c00b6c0 <pos_allocs_init>
1c00b59a:	405c                	lw	a5,4(s0)
1c00b59c:	c791                	beqz	a5,1c00b5a8 <pos_init_start+0x26>
1c00b59e:	0411                	addi	s0,s0,4
1c00b5a0:	0411                	addi	s0,s0,4
1c00b5a2:	9782                	jalr	a5
1c00b5a4:	401c                	lw	a5,0(s0)
1c00b5a6:	ffed                	bnez	a5,1c00b5a0 <pos_init_start+0x1e>
1c00b5a8:	86cff0ef          	jal	ra,1c00a614 <pos_io_start>
1c00b5ac:	300467f3          	csrrsi	a5,mstatus,8
1c00b5b0:	40b2                	lw	ra,12(sp)
1c00b5b2:	4422                	lw	s0,8(sp)
1c00b5b4:	0141                	addi	sp,sp,16
1c00b5b6:	8082                	ret

1c00b5b8 <pos_init_stop>:
1c00b5b8:	1141                	addi	sp,sp,-16
1c00b5ba:	c422                	sw	s0,8(sp)
1c00b5bc:	1c000437          	lui	s0,0x1c000
1c00b5c0:	c606                	sw	ra,12(sp)
1c00b5c2:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b5c6:	852ff0ef          	jal	ra,1c00a618 <pos_io_stop>
1c00b5ca:	405c                	lw	a5,4(s0)
1c00b5cc:	c791                	beqz	a5,1c00b5d8 <pos_init_stop+0x20>
1c00b5ce:	0411                	addi	s0,s0,4
1c00b5d0:	0411                	addi	s0,s0,4
1c00b5d2:	9782                	jalr	a5
1c00b5d4:	401c                	lw	a5,0(s0)
1c00b5d6:	ffed                	bnez	a5,1c00b5d0 <pos_init_stop+0x18>
1c00b5d8:	40b2                	lw	ra,12(sp)
1c00b5da:	4422                	lw	s0,8(sp)
1c00b5dc:	0141                	addi	sp,sp,16
1c00b5de:	8082                	ret

1c00b5e0 <pos_alloc_init>:
1c00b5e0:	00758793          	addi	a5,a1,7
1c00b5e4:	9be1                	andi	a5,a5,-8
1c00b5e6:	40b785b3          	sub	a1,a5,a1
1c00b5ea:	c11c                	sw	a5,0(a0)
1c00b5ec:	40b605b3          	sub	a1,a2,a1
1c00b5f0:	00b05663          	blez	a1,1c00b5fc <pos_alloc_init+0x1c>
1c00b5f4:	99e1                	andi	a1,a1,-8
1c00b5f6:	c38c                	sw	a1,0(a5)
1c00b5f8:	0007a223          	sw	zero,4(a5)
1c00b5fc:	8082                	ret

1c00b5fe <pos_alloc>:
1c00b5fe:	411c                	lw	a5,0(a0)
1c00b600:	00758713          	addi	a4,a1,7
1c00b604:	862a                	mv	a2,a0
1c00b606:	ff877593          	andi	a1,a4,-8
1c00b60a:	4681                	li	a3,0
1c00b60c:	e789                	bnez	a5,1c00b616 <pos_alloc+0x18>
1c00b60e:	a091                	j	1c00b652 <pos_alloc+0x54>
1c00b610:	86be                	mv	a3,a5
1c00b612:	c505                	beqz	a0,1c00b63a <pos_alloc+0x3c>
1c00b614:	87aa                	mv	a5,a0
1c00b616:	4398                	lw	a4,0(a5)
1c00b618:	43c8                	lw	a0,4(a5)
1c00b61a:	feb74be3          	blt	a4,a1,1c00b610 <pos_alloc+0x12>
1c00b61e:	00b70f63          	beq	a4,a1,1c00b63c <pos_alloc+0x3e>
1c00b622:	00b78833          	add	a6,a5,a1
1c00b626:	8f0d                	sub	a4,a4,a1
1c00b628:	00e82023          	sw	a4,0(a6)
1c00b62c:	00a82223          	sw	a0,4(a6)
1c00b630:	ca91                	beqz	a3,1c00b644 <pos_alloc+0x46>
1c00b632:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00b636:	853e                	mv	a0,a5
1c00b638:	8082                	ret
1c00b63a:	8082                	ret
1c00b63c:	ca81                	beqz	a3,1c00b64c <pos_alloc+0x4e>
1c00b63e:	c2c8                	sw	a0,4(a3)
1c00b640:	853e                	mv	a0,a5
1c00b642:	8082                	ret
1c00b644:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b648:	853e                	mv	a0,a5
1c00b64a:	8082                	ret
1c00b64c:	c208                	sw	a0,0(a2)
1c00b64e:	853e                	mv	a0,a5
1c00b650:	8082                	ret
1c00b652:	4501                	li	a0,0
1c00b654:	8082                	ret

1c00b656 <pos_free>:
1c00b656:	411c                	lw	a5,0(a0)
1c00b658:	061d                	addi	a2,a2,7
1c00b65a:	9a61                	andi	a2,a2,-8
1c00b65c:	c7a1                	beqz	a5,1c00b6a4 <pos_free+0x4e>
1c00b65e:	00b7e563          	bltu	a5,a1,1c00b668 <pos_free+0x12>
1c00b662:	a089                	j	1c00b6a4 <pos_free+0x4e>
1c00b664:	00b7f563          	bgeu	a5,a1,1c00b66e <pos_free+0x18>
1c00b668:	873e                	mv	a4,a5
1c00b66a:	43dc                	lw	a5,4(a5)
1c00b66c:	ffe5                	bnez	a5,1c00b664 <pos_free+0xe>
1c00b66e:	00c586b3          	add	a3,a1,a2
1c00b672:	00d78b63          	beq	a5,a3,1c00b688 <pos_free+0x32>
1c00b676:	c190                	sw	a2,0(a1)
1c00b678:	4314                	lw	a3,0(a4)
1c00b67a:	c1dc                	sw	a5,4(a1)
1c00b67c:	00d70533          	add	a0,a4,a3
1c00b680:	00a58e63          	beq	a1,a0,1c00b69c <pos_free+0x46>
1c00b684:	c34c                	sw	a1,4(a4)
1c00b686:	8082                	ret
1c00b688:	4394                	lw	a3,0(a5)
1c00b68a:	43dc                	lw	a5,4(a5)
1c00b68c:	9636                	add	a2,a2,a3
1c00b68e:	c190                	sw	a2,0(a1)
1c00b690:	4314                	lw	a3,0(a4)
1c00b692:	c1dc                	sw	a5,4(a1)
1c00b694:	00d70533          	add	a0,a4,a3
1c00b698:	fea596e3          	bne	a1,a0,1c00b684 <pos_free+0x2e>
1c00b69c:	9636                	add	a2,a2,a3
1c00b69e:	c310                	sw	a2,0(a4)
1c00b6a0:	c35c                	sw	a5,4(a4)
1c00b6a2:	8082                	ret
1c00b6a4:	00c58733          	add	a4,a1,a2
1c00b6a8:	00e78663          	beq	a5,a4,1c00b6b4 <pos_free+0x5e>
1c00b6ac:	c1dc                	sw	a5,4(a1)
1c00b6ae:	c190                	sw	a2,0(a1)
1c00b6b0:	c10c                	sw	a1,0(a0)
1c00b6b2:	8082                	ret
1c00b6b4:	4398                	lw	a4,0(a5)
1c00b6b6:	43dc                	lw	a5,4(a5)
1c00b6b8:	963a                	add	a2,a2,a4
1c00b6ba:	c1dc                	sw	a5,4(a1)
1c00b6bc:	c190                	sw	a2,0(a1)
1c00b6be:	bfcd                	j	1c00b6b0 <pos_free+0x5a>

1c00b6c0 <pos_allocs_init>:
1c00b6c0:	1c0065b7          	lui	a1,0x1c006
1c00b6c4:	1141                	addi	sp,sp,-16
1c00b6c6:	60858613          	addi	a2,a1,1544 # 1c006608 <__l2_priv0_end>
1c00b6ca:	1c0087b7          	lui	a5,0x1c008
1c00b6ce:	c606                	sw	ra,12(sp)
1c00b6d0:	60858593          	addi	a1,a1,1544
1c00b6d4:	40c78633          	sub	a2,a5,a2
1c00b6d8:	04f5d863          	bge	a1,a5,1c00b728 <pos_allocs_init+0x68>
1c00b6dc:	1c006537          	lui	a0,0x1c006
1c00b6e0:	5fc50513          	addi	a0,a0,1532 # 1c0065fc <pos_alloc_l2>
1c00b6e4:	3df5                	jal	1c00b5e0 <pos_alloc_init>
1c00b6e6:	1c00b5b7          	lui	a1,0x1c00b
1c00b6ea:	79858613          	addi	a2,a1,1944 # 1c00b798 <__l2_priv1_end>
1c00b6ee:	1c0107b7          	lui	a5,0x1c010
1c00b6f2:	79858593          	addi	a1,a1,1944
1c00b6f6:	40c78633          	sub	a2,a5,a2
1c00b6fa:	02f5da63          	bge	a1,a5,1c00b72e <pos_allocs_init+0x6e>
1c00b6fe:	1c006537          	lui	a0,0x1c006
1c00b702:	60050513          	addi	a0,a0,1536 # 1c006600 <pos_alloc_l2+0x4>
1c00b706:	3de9                	jal	1c00b5e0 <pos_alloc_init>
1c00b708:	40b2                	lw	ra,12(sp)
1c00b70a:	1c0105b7          	lui	a1,0x1c010
1c00b70e:	00058793          	mv	a5,a1
1c00b712:	1c080637          	lui	a2,0x1c080
1c00b716:	1c006537          	lui	a0,0x1c006
1c00b71a:	8e1d                	sub	a2,a2,a5
1c00b71c:	00058593          	mv	a1,a1
1c00b720:	60450513          	addi	a0,a0,1540 # 1c006604 <pos_alloc_l2+0x8>
1c00b724:	0141                	addi	sp,sp,16
1c00b726:	bd6d                	j	1c00b5e0 <pos_alloc_init>
1c00b728:	4581                	li	a1,0
1c00b72a:	4601                	li	a2,0
1c00b72c:	bf45                	j	1c00b6dc <pos_allocs_init+0x1c>
1c00b72e:	4581                	li	a1,0
1c00b730:	4601                	li	a2,0
1c00b732:	b7f1                	j	1c00b6fe <pos_allocs_init+0x3e>

1c00b734 <pi_l2_malloc>:
1c00b734:	85aa                	mv	a1,a0
1c00b736:	1c006537          	lui	a0,0x1c006
1c00b73a:	5fc50513          	addi	a0,a0,1532 # 1c0065fc <pos_alloc_l2>
1c00b73e:	b5c1                	j	1c00b5fe <pos_alloc>

1c00b740 <pi_l2_free>:
1c00b740:	862e                	mv	a2,a1
1c00b742:	85aa                	mv	a1,a0
1c00b744:	1c006537          	lui	a0,0x1c006
1c00b748:	5fc50513          	addi	a0,a0,1532 # 1c0065fc <pos_alloc_l2>
1c00b74c:	b729                	j	1c00b656 <pos_free>

1c00b74e <__rt_handle_illegal_instr>:
1c00b74e:	8082                	ret

1c00b750 <pos_irq_init>:
1c00b750:	1a10a737          	lui	a4,0x1a10a
1c00b754:	56fd                	li	a3,-1
1c00b756:	f14027f3          	csrr	a5,mhartid
1c00b75a:	8795                	srai	a5,a5,0x5
1c00b75c:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b760:	03f7f793          	andi	a5,a5,63
1c00b764:	477d                	li	a4,31
1c00b766:	00e78363          	beq	a5,a4,1c00b76c <pos_irq_init+0x1c>
1c00b76a:	8082                	ret
1c00b76c:	1c0087b7          	lui	a5,0x1c008
1c00b770:	00078793          	mv	a5,a5
1c00b774:	0017e793          	ori	a5,a5,1
1c00b778:	30579073          	csrw	mtvec,a5
1c00b77c:	8082                	ret

1c00b77e <pos_soc_event_init>:
1c00b77e:	1a1067b7          	lui	a5,0x1a106
1c00b782:	577d                	li	a4,-1
1c00b784:	c3d8                	sw	a4,4(a5)
1c00b786:	c798                	sw	a4,8(a5)
1c00b788:	c7d8                	sw	a4,12(a5)
1c00b78a:	cb98                	sw	a4,16(a5)
1c00b78c:	cbd8                	sw	a4,20(a5)
1c00b78e:	cf98                	sw	a4,24(a5)
1c00b790:	cfd8                	sw	a4,28(a5)
1c00b792:	d398                	sw	a4,32(a5)
1c00b794:	8082                	ret

1c00b796 <_endtext>:
	...
