riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/LOKI/test/kyber768/enc/build/enc/enc

/home/alessandra.dolmeta/LOKI/test/kyber768/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	2330406f          	j	1c00ca32 <__rt_handle_illegal_instr>
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
1c008084:	1af0406f          	j	1c00ca32 <__rt_handle_illegal_instr>

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
1c0080c4:	0c028293          	addi	t0,t0,192 # 1c006180 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	0dc30313          	addi	t1,t1,220 # 1c0061a4 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	0a610113          	addi	sp,sp,166 # 1c006180 <pos_fll_is_on>
1c0080e2:	784040ef          	jal	ra,1c00c866 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	7a0040ef          	jal	ra,1c00c89c <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	7e2030ef          	jal	ra,1c00b8e4 <exit>
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
1c008172:	78e030ef          	jal	ra,1c00b900 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	7340306f          	j	1c00b8ba <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1e85d7b7          	lui	a5,0x1e85d
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	43878793          	addi	a5,a5,1080 # 1e85d438 <__l2_shared_end+0x284d438>
1c0081a2:	712d                	addi	sp,sp,-288
1c0081a4:	46f12023          	sw	a5,1120(sp)
1c0081a8:	a30d07b7          	lui	a5,0xa30d0
1c0081ac:	15c78793          	addi	a5,a5,348 # a30d015c <__l2_shared_end+0x870c015c>
1c0081b0:	46f12223          	sw	a5,1124(sp)
1c0081b4:	bc7077b7          	lui	a5,0xbc707
1c0081b8:	49a78793          	addi	a5,a5,1178 # bc70749a <__l2_shared_end+0xa06f749a>
1c0081bc:	46f12423          	sw	a5,1128(sp)
1c0081c0:	6f9187b7          	lui	a5,0x6f918
1c0081c4:	07f1                	addi	a5,a5,28
1c0081c6:	46f12623          	sw	a5,1132(sp)
1c0081ca:	58bdc7b7          	lui	a5,0x58bdc
1c0081ce:	77878793          	addi	a5,a5,1912 # 58bdc778 <__l2_shared_end+0x3cbcc778>
1c0081d2:	46f12823          	sw	a5,1136(sp)
1c0081d6:	b1d3e7b7          	lui	a5,0xb1d3e
1c0081da:	c9178793          	addi	a5,a5,-879 # b1d3dc91 <__l2_shared_end+0x95d2dc91>
1c0081de:	46f12a23          	sw	a5,1140(sp)
1c0081e2:	f0b687b7          	lui	a5,0xf0b68
1c0081e6:	4ea78793          	addi	a5,a5,1258 # f0b684ea <__l2_shared_end+0xd4b584ea>
1c0081ea:	46f12c23          	sw	a5,1144(sp)
1c0081ee:	b846b7b7          	lui	a5,0xb846b
1c0081f2:	35178793          	addi	a5,a5,849 # b846b351 <__l2_shared_end+0x9c45b351>
1c0081f6:	46f12e23          	sw	a5,1148(sp)
1c0081fa:	7cb9c7b7          	lui	a5,0x7cb9c
1c0081fe:	10378793          	addi	a5,a5,259 # 7cb9c103 <__l2_shared_end+0x60b8c103>
1c008202:	48f12023          	sw	a5,1152(sp)
1c008206:	204067b7          	lui	a5,0x20406
1c00820a:	09478793          	addi	a5,a5,148 # 20406094 <__l2_shared_end+0x43f6094>
1c00820e:	48f12223          	sw	a5,1156(sp)
1c008212:	279b27b7          	lui	a5,0x279b2
1c008216:	7b778793          	addi	a5,a5,1975 # 279b27b7 <__l2_shared_end+0xb9a27b7>
1c00821a:	48f12423          	sw	a5,1160(sp)
1c00821e:	493077b7          	lui	a5,0x49307
1c008222:	c8378793          	addi	a5,a5,-893 # 49306c83 <__l2_shared_end+0x2d2f6c83>
1c008226:	48f12623          	sw	a5,1164(sp)
1c00822a:	379a17b7          	lui	a5,0x379a1
1c00822e:	bea78793          	addi	a5,a5,-1046 # 379a0bea <__l2_shared_end+0x1b990bea>
1c008232:	48f12823          	sw	a5,1168(sp)
1c008236:	750b57b7          	lui	a5,0x750b5
1c00823a:	15878793          	addi	a5,a5,344 # 750b5158 <__l2_shared_end+0x590a5158>
1c00823e:	48f12a23          	sw	a5,1172(sp)
1c008242:	373267b7          	lui	a5,0x37326
1c008246:	95978793          	addi	a5,a5,-1703 # 37325959 <__l2_shared_end+0x1b315959>
1c00824a:	48f12c23          	sw	a5,1176(sp)
1c00824e:	8725e7b7          	lui	a5,0x8725e
1c008252:	7ad78793          	addi	a5,a5,1965 # 8725e7ad <__l2_shared_end+0x6b24e7ad>
1c008256:	48f12e23          	sw	a5,1180(sp)
1c00825a:	b70627b7          	lui	a5,0xb7062
1c00825e:	24678793          	addi	a5,a5,582 # b7062246 <__l2_shared_end+0x9b052246>
1c008262:	4af12023          	sw	a5,1184(sp)
1c008266:	8465f7b7          	lui	a5,0x8465f
1c00826a:	30978793          	addi	a5,a5,777 # 8465f309 <__l2_shared_end+0x6864f309>
1c00826e:	4af12223          	sw	a5,1188(sp)
1c008272:	935597b7          	lui	a5,0x93559
1c008276:	68c78793          	addi	a5,a5,1676 # 9355968c <__l2_shared_end+0x7754968c>
1c00827a:	4af12423          	sw	a5,1192(sp)
1c00827e:	6cfea7b7          	lui	a5,0x6cfea
1c008282:	52678793          	addi	a5,a5,1318 # 6cfea526 <__l2_shared_end+0x50fda526>
1c008286:	4af12623          	sw	a5,1196(sp)
1c00828a:	31f557b7          	lui	a5,0x31f55
1c00828e:	c6f78793          	addi	a5,a5,-913 # 31f54c6f <__l2_shared_end+0x15f44c6f>
1c008292:	4af12823          	sw	a5,1200(sp)
1c008296:	471827b7          	lui	a5,0x47182
1c00829a:	afd78793          	addi	a5,a5,-1283 # 47181afd <__l2_shared_end+0x2b171afd>
1c00829e:	4af12a23          	sw	a5,1204(sp)
1c0082a2:	6bf667b7          	lui	a5,0x6bf66
1c0082a6:	77278793          	addi	a5,a5,1906 # 6bf66772 <__l2_shared_end+0x4ff56772>
1c0082aa:	4af12c23          	sw	a5,1208(sp)
1c0082ae:	01f257b7          	lui	a5,0x1f25
1c0082b2:	aa178793          	addi	a5,a5,-1375 # 1f24aa1 <__CTOR_LIST__-0x1a0db563>
1c0082b6:	4af12e23          	sw	a5,1212(sp)
1c0082ba:	111fc7b7          	lui	a5,0x111fc
1c0082be:	46378793          	addi	a5,a5,1123 # 111fc463 <__CTOR_LIST__-0xae03ba1>
1c0082c2:	4cf12023          	sw	a5,1216(sp)
1c0082c6:	9519a7b7          	lui	a5,0x9519a
1c0082ca:	03878793          	addi	a5,a5,56 # 9519a038 <__l2_shared_end+0x7918a038>
1c0082ce:	4cf12223          	sw	a5,1220(sp)
1c0082d2:	1d2787b7          	lui	a5,0x1d278
1c0082d6:	f1478793          	addi	a5,a5,-236 # 1d277f14 <__l2_shared_end+0x1267f14>
1c0082da:	4cf12423          	sw	a5,1224(sp)
1c0082de:	53bec7b7          	lui	a5,0x53bec
1c0082e2:	2df78793          	addi	a5,a5,735 # 53bec2df <__l2_shared_end+0x37bdc2df>
1c0082e6:	4cf12623          	sw	a5,1228(sp)
1c0082ea:	e681b7b7          	lui	a5,0xe681b
1c0082ee:	26178793          	addi	a5,a5,609 # e681b261 <__l2_shared_end+0xca80b261>
1c0082f2:	4cf12823          	sw	a5,1232(sp)
1c0082f6:	0521a7b7          	lui	a5,0x521a
1c0082fa:	d0278793          	addi	a5,a5,-766 # 5219d02 <__CTOR_LIST__-0x16de6302>
1c0082fe:	4cf12a23          	sw	a5,1236(sp)
1c008302:	9b85b7b7          	lui	a5,0x9b85b
1c008306:	28478793          	addi	a5,a5,644 # 9b85b284 <__l2_shared_end+0x7f84b284>
1c00830a:	4cf12c23          	sw	a5,1240(sp)
1c00830e:	726687b7          	lui	a5,0x72668
1c008312:	37378793          	addi	a5,a5,883 # 72668373 <__l2_shared_end+0x56658373>
1c008316:	4cf12e23          	sw	a5,1244(sp)
1c00831a:	bb67f7b7          	lui	a5,0xbb67f
1c00831e:	78478793          	addi	a5,a5,1924 # bb67f784 <__l2_shared_end+0x9f66f784>
1c008322:	4ef12023          	sw	a5,1248(sp)
1c008326:	aa2b87b7          	lui	a5,0xaa2b8
1c00832a:	83278793          	addi	a5,a5,-1998 # aa2b7832 <__l2_shared_end+0x8e2a7832>
1c00832e:	4ef12223          	sw	a5,1252(sp)
1c008332:	da3317b7          	lui	a5,0xda331
1c008336:	9d178793          	addi	a5,a5,-1583 # da3309d1 <__l2_shared_end+0xbe3209d1>
1c00833a:	4ef12423          	sw	a5,1256(sp)
1c00833e:	a0a347b7          	lui	a5,0xa0a34
1c008342:	80178793          	addi	a5,a5,-2047 # a0a33801 <__l2_shared_end+0x84a23801>
1c008346:	4ef12623          	sw	a5,1260(sp)
1c00834a:	951417b7          	lui	a5,0x95141
1c00834e:	a6678793          	addi	a5,a5,-1434 # 95140a66 <__l2_shared_end+0x79130a66>
1c008352:	4ef12823          	sw	a5,1264(sp)
1c008356:	9c3fc7b7          	lui	a5,0x9c3fc
1c00835a:	03178793          	addi	a5,a5,49 # 9c3fc031 <__l2_shared_end+0x803ec031>
1c00835e:	4ef12a23          	sw	a5,1268(sp)
1c008362:	33cc07b7          	lui	a5,0x33cc0
1c008366:	c8f78793          	addi	a5,a5,-881 # 33cbfc8f <__l2_shared_end+0x17cafc8f>
1c00836a:	4ef12c23          	sw	a5,1272(sp)
1c00836e:	a7a5c7b7          	lui	a5,0xa7a5c
1c008372:	3e378793          	addi	a5,a5,995 # a7a5c3e3 <__l2_shared_end+0x8ba4c3e3>
1c008376:	4ef12e23          	sw	a5,1276(sp)
1c00837a:	fa2157b7          	lui	a5,0xfa215
1c00837e:	e9878793          	addi	a5,a5,-360 # fa214e98 <__l2_shared_end+0xde204e98>
1c008382:	50f12023          	sw	a5,1280(sp)
1c008386:	2aa777b7          	lui	a5,0x2aa77
1c00838a:	ab278793          	addi	a5,a5,-1358 # 2aa76ab2 <__l2_shared_end+0xea66ab2>
1c00838e:	50f12223          	sw	a5,1284(sp)
1c008392:	2f9477b7          	lui	a5,0x2f947
1c008396:	b8a78793          	addi	a5,a5,-1142 # 2f946b8a <__l2_shared_end+0x13936b8a>
1c00839a:	50f12423          	sw	a5,1288(sp)
1c00839e:	555267b7          	lui	a5,0x55526
1c0083a2:	e2678793          	addi	a5,a5,-474 # 55525e26 <__l2_shared_end+0x39515e26>
1c0083a6:	50f12623          	sw	a5,1292(sp)
1c0083aa:	0e80a7b7          	lui	a5,0xe80a
1c0083ae:	c1a78793          	addi	a5,a5,-998 # e809c1a <__CTOR_LIST__-0xd7f63ea>
1c0083b2:	50f12823          	sw	a5,1296(sp)
1c0083b6:	5f8047b7          	lui	a5,0x5f804
1c0083ba:	45a78793          	addi	a5,a5,1114 # 5f80445a <__l2_shared_end+0x437f445a>
1c0083be:	50f12a23          	sw	a5,1300(sp)
1c0083c2:	a04107b7          	lui	a5,0xa0410
1c0083c6:	10c78793          	addi	a5,a5,268 # a041010c <__l2_shared_end+0x8440010c>
1c0083ca:	50f12c23          	sw	a5,1304(sp)
1c0083ce:	332157b7          	lui	a5,0x33215
1c0083d2:	45578793          	addi	a5,a5,1109 # 33215455 <__l2_shared_end+0x17205455>
1c0083d6:	50f12e23          	sw	a5,1308(sp)
1c0083da:	df05f7b7          	lui	a5,0xdf05f
1c0083de:	18778793          	addi	a5,a5,391 # df05f187 <__l2_shared_end+0xc304f187>
1c0083e2:	52f12023          	sw	a5,1312(sp)
1c0083e6:	968447b7          	lui	a5,0x96844
1c0083ea:	55678793          	addi	a5,a5,1366 # 96844556 <__l2_shared_end+0x7a834556>
1c0083ee:	52f12223          	sw	a5,1316(sp)
1c0083f2:	904697b7          	lui	a5,0x90469
1c0083f6:	fbd78793          	addi	a5,a5,-67 # 90468fbd <__l2_shared_end+0x74458fbd>
1c0083fa:	52f12423          	sw	a5,1320(sp)
1c0083fe:	a26d97b7          	lui	a5,0xa26d9
1c008402:	85178793          	addi	a5,a5,-1967 # a26d8851 <__l2_shared_end+0x866c8851>
1c008406:	52f12623          	sw	a5,1324(sp)
1c00840a:	e79fd7b7          	lui	a5,0xe79fd
1c00840e:	b2378793          	addi	a5,a5,-1245 # e79fcb23 <__l2_shared_end+0xcb9ecb23>
1c008412:	52f12823          	sw	a5,1328(sp)
1c008416:	0b3987b7          	lui	a5,0xb398
1c00841a:	b8e78793          	addi	a5,a5,-1138 # b397b8e <__CTOR_LIST__-0x10c68476>
1c00841e:	52f12a23          	sw	a5,1332(sp)
1c008422:	930a57b7          	lui	a5,0x930a5
1c008426:	bf978793          	addi	a5,a5,-1031 # 930a4bf9 <__l2_shared_end+0x77094bf9>
1c00842a:	52f12c23          	sw	a5,1336(sp)
1c00842e:	95af97b7          	lui	a5,0x95af9
1c008432:	17678793          	addi	a5,a5,374 # 95af9176 <__l2_shared_end+0x79ae9176>
1c008436:	52f12e23          	sw	a5,1340(sp)
1c00843a:	762b17b7          	lui	a5,0x762b1
1c00843e:	85078793          	addi	a5,a5,-1968 # 762b0850 <__l2_shared_end+0x5a2a0850>
1c008442:	54f12023          	sw	a5,1344(sp)
1c008446:	4dcb47b7          	lui	a5,0x4dcb4
1c00844a:	5d078793          	addi	a5,a5,1488 # 4dcb45d0 <__l2_shared_end+0x31ca45d0>
1c00844e:	54f12223          	sw	a5,1348(sp)
1c008452:	673cc7b7          	lui	a5,0x673cc
1c008456:	22978793          	addi	a5,a5,553 # 673cc229 <__l2_shared_end+0x4b3bc229>
1c00845a:	54f12423          	sw	a5,1352(sp)
1c00845e:	d00827b7          	lui	a5,0xd0082
1c008462:	69478793          	addi	a5,a5,1684 # d0082694 <__l2_shared_end+0xb4072694>
1c008466:	54f12623          	sw	a5,1356(sp)
1c00846a:	0fc8a7b7          	lui	a5,0xfc8a
1c00846e:	17878793          	addi	a5,a5,376 # fc8a178 <__CTOR_LIST__-0xc375e8c>
1c008472:	54f12823          	sw	a5,1360(sp)
1c008476:	947a77b7          	lui	a5,0x947a7
1c00847a:	62478793          	addi	a5,a5,1572 # 947a7624 <__l2_shared_end+0x78797624>
1c00847e:	54f12a23          	sw	a5,1364(sp)
1c008482:	9b9b3737          	lui	a4,0x9b9b3
1c008486:	6789                	lui	a5,0x2
1c008488:	95d78793          	addi	a5,a5,-1699 # 195d <__CTOR_LIST__-0x1bffe6a7>
1c00848c:	cd870713          	addi	a4,a4,-808 # 9b9b2cd8 <__l2_shared_end+0x7f9a2cd8>
1c008490:	54f11c23          	sh	a5,1368(sp)
1c008494:	54e12e23          	sw	a4,1372(sp)
1c008498:	46737737          	lui	a4,0x46737
1c00849c:	0765                	addi	a4,a4,25
1c00849e:	56e12023          	sw	a4,1376(sp)
1c0084a2:	cf69c737          	lui	a4,0xcf69c
1c0084a6:	e4a70713          	addi	a4,a4,-438 # cf69be4a <__l2_shared_end+0xb368be4a>
1c0084aa:	56e12223          	sw	a4,1380(sp)
1c0084ae:	17265737          	lui	a4,0x17265
1c0084b2:	67c70713          	addi	a4,a4,1660 # 1726567c <__CTOR_LIST__-0x4d9a988>
1c0084b6:	56e12423          	sw	a4,1384(sp)
1c0084ba:	84f31737          	lui	a4,0x84f31
1c0084be:	87370713          	addi	a4,a4,-1933 # 84f30873 <__l2_shared_end+0x68f20873>
1c0084c2:	56e12623          	sw	a4,1388(sp)
1c0084c6:	63523737          	lui	a4,0x63523
1c0084ca:	d6770713          	addi	a4,a4,-665 # 63522d67 <__l2_shared_end+0x47512d67>
1c0084ce:	56e12823          	sw	a4,1392(sp)
1c0084d2:	6d82c737          	lui	a4,0x6d82c
1c0084d6:	4b070713          	addi	a4,a4,1200 # 6d82c4b0 <__l2_shared_end+0x5181c4b0>
1c0084da:	56e12a23          	sw	a4,1396(sp)
1c0084de:	1a0e4737          	lui	a4,0x1a0e4
1c0084e2:	7b470713          	addi	a4,a4,1972 # 1a0e47b4 <__CTOR_LIST__-0x1f1b850>
1c0084e6:	56e12c23          	sw	a4,1400(sp)
1c0084ea:	1e75e737          	lui	a4,0x1e75e
1c0084ee:	47070713          	addi	a4,a4,1136 # 1e75e470 <__l2_shared_end+0x274e470>
1c0084f2:	56e12e23          	sw	a4,1404(sp)
1c0084f6:	e8ab2737          	lui	a4,0xe8ab2
1c0084fa:	83970713          	addi	a4,a4,-1991 # e8ab1839 <__l2_shared_end+0xccaa1839>
1c0084fe:	58e12023          	sw	a4,1408(sp)
1c008502:	c03bc737          	lui	a4,0xc03bc
1c008506:	cfc70713          	addi	a4,a4,-772 # c03bbcfc <__l2_shared_end+0xa43abcfc>
1c00850a:	58e12223          	sw	a4,1412(sp)
1c00850e:	9ee82737          	lui	a4,0x9ee82
1c008512:	a5370713          	addi	a4,a4,-1453 # 9ee81a53 <__l2_shared_end+0x82e71a53>
1c008516:	58e12423          	sw	a4,1416(sp)
1c00851a:	4b211737          	lui	a4,0x4b211
1c00851e:	25570713          	addi	a4,a4,597 # 4b211255 <__l2_shared_end+0x2f201255>
1c008522:	58e12623          	sw	a4,1420(sp)
1c008526:	164ad737          	lui	a4,0x164ad
1c00852a:	95c70713          	addi	a4,a4,-1700 # 164ac95c <__CTOR_LIST__-0x5b536a8>
1c00852e:	58e12823          	sw	a4,1424(sp)
1c008532:	b3bc1737          	lui	a4,0xb3bc1
1c008536:	4a070713          	addi	a4,a4,1184 # b3bc14a0 <__l2_shared_end+0x97bb14a0>
1c00853a:	58e12a23          	sw	a4,1428(sp)
1c00853e:	fb797737          	lui	a4,0xfb797
1c008542:	c8270713          	addi	a4,a4,-894 # fb796c82 <__l2_shared_end+0xdf786c82>
1c008546:	58e12c23          	sw	a4,1432(sp)
1c00854a:	82d0b737          	lui	a4,0x82d0b
1c00854e:	df470713          	addi	a4,a4,-524 # 82d0adf4 <__l2_shared_end+0x66cfadf4>
1c008552:	58e12e23          	sw	a4,1436(sp)
1c008556:	abfbf737          	lui	a4,0xabfbf
1c00855a:	e5e70713          	addi	a4,a4,-418 # abfbee5e <__l2_shared_end+0x8ffaee5e>
1c00855e:	5ae12023          	sw	a4,1440(sp)
1c008562:	ff7cd737          	lui	a4,0xff7cd
1c008566:	b8870713          	addi	a4,a4,-1144 # ff7ccb88 <__l2_shared_end+0xe37bcb88>
1c00856a:	5ae12223          	sw	a4,1444(sp)
1c00856e:	498dc737          	lui	a4,0x498dc
1c008572:	b3770713          	addi	a4,a4,-1225 # 498dbb37 <__l2_shared_end+0x2d8cbb37>
1c008576:	5ae12423          	sw	a4,1448(sp)
1c00857a:	02e99737          	lui	a4,0x2e99
1c00857e:	d1f70713          	addi	a4,a4,-737 # 2e98d1f <__CTOR_LIST__-0x191672e5>
1c008582:	5ae12623          	sw	a4,1452(sp)
1c008586:	961e9737          	lui	a4,0x961e9
1c00858a:	a5770713          	addi	a4,a4,-1449 # 961e8a57 <__l2_shared_end+0x7a1d8a57>
1c00858e:	5ae12823          	sw	a4,1456(sp)
1c008592:	5b565737          	lui	a4,0x5b565
1c008596:	51670713          	addi	a4,a4,1302 # 5b565516 <__l2_shared_end+0x3f555516>
1c00859a:	5ae12a23          	sw	a4,1460(sp)
1c00859e:	2a782737          	lui	a4,0x2a782
1c0085a2:	87770713          	addi	a4,a4,-1929 # 2a781877 <__l2_shared_end+0xe771877>
1c0085a6:	5ae12c23          	sw	a4,1464(sp)
1c0085aa:	dc4f5737          	lui	a4,0xdc4f5
1c0085ae:	02370713          	addi	a4,a4,35 # dc4f5023 <__l2_shared_end+0xc04e5023>
1c0085b2:	5ae12e23          	sw	a4,1468(sp)
1c0085b6:	f183c737          	lui	a4,0xf183c
1c0085ba:	71370713          	addi	a4,a4,1811 # f183c713 <__l2_shared_end+0xd582c713>
1c0085be:	5ce12023          	sw	a4,1472(sp)
1c0085c2:	9277e737          	lui	a4,0x9277e
1c0085c6:	13070713          	addi	a4,a4,304 # 9277e130 <__l2_shared_end+0x7676e130>
1c0085ca:	5ce12223          	sw	a4,1476(sp)
1c0085ce:	1f5d3737          	lui	a4,0x1f5d3
1c0085d2:	05e70713          	addi	a4,a4,94 # 1f5d305e <__l2_shared_end+0x35c305e>
1c0085d6:	5ce12423          	sw	a4,1480(sp)
1c0085da:	8ccc6737          	lui	a4,0x8ccc6
1c0085de:	3bc70713          	addi	a4,a4,956 # 8ccc63bc <__l2_shared_end+0x70cb63bc>
1c0085e2:	5ce12623          	sw	a4,1484(sp)
1c0085e6:	7fc6c737          	lui	a4,0x7fc6c
1c0085ea:	57c1                	li	a5,-16
1c0085ec:	21570713          	addi	a4,a4,533 # 7fc6c215 <__l2_shared_end+0x63c5c215>
1c0085f0:	54f10d23          	sb	a5,1370(sp)
1c0085f4:	5ce12823          	sw	a4,1488(sp)
1c0085f8:	07700793          	li	a5,119
1c0085fc:	ca0c5737          	lui	a4,0xca0c5
1c008600:	54f10da3          	sb	a5,1371(sp)
1c008604:	08570713          	addi	a4,a4,133 # ca0c5085 <__l2_shared_end+0xae0b5085>
1c008608:	5ce12a23          	sw	a4,1492(sp)
1c00860c:	f4e96737          	lui	a4,0xf4e96
1c008610:	d7870713          	addi	a4,a4,-648 # f4e95d78 <__l2_shared_end+0xd8e85d78>
1c008614:	5ce12c23          	sw	a4,1496(sp)
1c008618:	58055737          	lui	a4,0x58055
1c00861c:	98070713          	addi	a4,a4,-1664 # 58054980 <__l2_shared_end+0x3c044980>
1c008620:	5ce12e23          	sw	a4,1500(sp)
1c008624:	f0aa7737          	lui	a4,0xf0aa7
1c008628:	1ef70713          	addi	a4,a4,495 # f0aa71ef <__l2_shared_end+0xd4a971ef>
1c00862c:	5ee12023          	sw	a4,1504(sp)
1c008630:	39516737          	lui	a4,0x39516
1c008634:	bfb70713          	addi	a4,a4,-1029 # 39515bfb <__l2_shared_end+0x1d505bfb>
1c008638:	5ee12223          	sw	a4,1508(sp)
1c00863c:	69124737          	lui	a4,0x69124
1c008640:	0751                	addi	a4,a4,20
1c008642:	5ee12423          	sw	a4,1512(sp)
1c008646:	c5c41737          	lui	a4,0xc5c41
1c00864a:	9b370713          	addi	a4,a4,-1613 # c5c409b3 <__l2_shared_end+0xa9c309b3>
1c00864e:	5ee12623          	sw	a4,1516(sp)
1c008652:	a7d26737          	lui	a4,0xa7d26
1c008656:	49c70713          	addi	a4,a4,1180 # a7d2649c <__l2_shared_end+0x8bd1649c>
1c00865a:	5ee12823          	sw	a4,1520(sp)
1c00865e:	5f85e737          	lui	a4,0x5f85e
1c008662:	85770713          	addi	a4,a4,-1961 # 5f85d857 <__l2_shared_end+0x4384d857>
1c008666:	5ee12a23          	sw	a4,1524(sp)
1c00866a:	15564737          	lui	a4,0x15564
1c00866e:	65870713          	addi	a4,a4,1624 # 15564658 <__CTOR_LIST__-0x6a9b9ac>
1c008672:	5ee12c23          	sw	a4,1528(sp)
1c008676:	a61e6737          	lui	a4,0xa61e6
1c00867a:	f9270713          	addi	a4,a4,-110 # a61e5f92 <__l2_shared_end+0x8a1d5f92>
1c00867e:	5ee12e23          	sw	a4,1532(sp)
1c008682:	43b13737          	lui	a4,0x43b13
1c008686:	c8170713          	addi	a4,a4,-895 # 43b12c81 <__l2_shared_end+0x27b02c81>
1c00868a:	60e12023          	sw	a4,1536(sp)
1c00868e:	e183f737          	lui	a4,0xe183f
1c008692:	3ff70713          	addi	a4,a4,1023 # e183f3ff <__l2_shared_end+0xc582f3ff>
1c008696:	60e12223          	sw	a4,1540(sp)
1c00869a:	51289737          	lui	a4,0x51289
1c00869e:	e0470713          	addi	a4,a4,-508 # 51288e04 <__l2_shared_end+0x35278e04>
1c0086a2:	60e12423          	sw	a4,1544(sp)
1c0086a6:	2993c737          	lui	a4,0x2993c
1c0086aa:	f1870713          	addi	a4,a4,-232 # 2993bf18 <__l2_shared_end+0xd92bf18>
1c0086ae:	60e12623          	sw	a4,1548(sp)
1c0086b2:	bd6fc737          	lui	a4,0xbd6fc
1c0086b6:	84470713          	addi	a4,a4,-1980 # bd6fb844 <__l2_shared_end+0xa16eb844>
1c0086ba:	60e12823          	sw	a4,1552(sp)
1c0086be:	e6b9b737          	lui	a4,0xe6b9b
1c0086c2:	1f470713          	addi	a4,a4,500 # e6b9b1f4 <__l2_shared_end+0xcab8b1f4>
1c0086c6:	60e12a23          	sw	a4,1556(sp)
1c0086ca:	4a668737          	lui	a4,0x4a668
1c0086ce:	55670713          	addi	a4,a4,1366 # 4a668556 <__l2_shared_end+0x2e658556>
1c0086d2:	60e12c23          	sw	a4,1560(sp)
1c0086d6:	465c7737          	lui	a4,0x465c7
1c0086da:	70770713          	addi	a4,a4,1799 # 465c7707 <__l2_shared_end+0x2a5b7707>
1c0086de:	60e12e23          	sw	a4,1564(sp)
1c0086e2:	daaa3737          	lui	a4,0xdaaa3
1c0086e6:	a9570713          	addi	a4,a4,-1387 # daaa2a95 <__l2_shared_end+0xbea92a95>
1c0086ea:	62e12023          	sw	a4,1568(sp)
1c0086ee:	4bf57737          	lui	a4,0x4bf57
1c0086f2:	81170713          	addi	a4,a4,-2031 # 4bf56811 <__l2_shared_end+0x2ff46811>
1c0086f6:	62e12223          	sw	a4,1572(sp)
1c0086fa:	31a2c737          	lui	a4,0x31a2c
1c0086fe:	74770713          	addi	a4,a4,1863 # 31a2c747 <__l2_shared_end+0x15a1c747>
1c008702:	62e12423          	sw	a4,1576(sp)
1c008706:	645c3737          	lui	a4,0x645c3
1c00870a:	5e770713          	addi	a4,a4,1511 # 645c35e7 <__l2_shared_end+0x485b35e7>
1c00870e:	62e12623          	sw	a4,1580(sp)
1c008712:	b5677737          	lui	a4,0xb5677
1c008716:	46370713          	addi	a4,a4,1123 # b5677463 <__l2_shared_end+0x99667463>
1c00871a:	62e12823          	sw	a4,1584(sp)
1c00871e:	ab9cc737          	lui	a4,0xab9cc
1c008722:	0a370713          	addi	a4,a4,163 # ab9cc0a3 <__l2_shared_end+0x8f9bc0a3>
1c008726:	62e12a23          	sw	a4,1588(sp)
1c00872a:	f535c737          	lui	a4,0xf535c
1c00872e:	b6770713          	addi	a4,a4,-1177 # f535bb67 <__l2_shared_end+0xd934bb67>
1c008732:	62e12c23          	sw	a4,1592(sp)
1c008736:	72c24737          	lui	a4,0x72c24
1c00873a:	08670713          	addi	a4,a4,134 # 72c24086 <__l2_shared_end+0x56c14086>
1c00873e:	62e12e23          	sw	a4,1596(sp)
1c008742:	63bb8737          	lui	a4,0x63bb8
1c008746:	36270713          	addi	a4,a4,866 # 63bb8362 <__l2_shared_end+0x47ba8362>
1c00874a:	64e12023          	sw	a4,1600(sp)
1c00874e:	f6151737          	lui	a4,0xf6151
1c008752:	a5370713          	addi	a4,a4,-1453 # f6150a53 <__l2_shared_end+0xda140a53>
1c008756:	64e12223          	sw	a4,1604(sp)
1c00875a:	a848d737          	lui	a4,0xa848d
1c00875e:	a6e70713          	addi	a4,a4,-1426 # a848ca6e <__l2_shared_end+0x8c47ca6e>
1c008762:	64e12423          	sw	a4,1608(sp)
1c008766:	a80cc737          	lui	a4,0xa80cc
1c00876a:	678d                	lui	a5,0x3
1c00876c:	04070713          	addi	a4,a4,64 # a80cc040 <__l2_shared_end+0x8c0bc040>
1c008770:	e8678693          	addi	a3,a5,-378 # 2e86 <__CTOR_LIST__-0x1bffd17e>
1c008774:	64e12623          	sw	a4,1612(sp)
1c008778:	02800713          	li	a4,40
1c00877c:	64d11823          	sh	a3,1616(sp)
1c008780:	64e10923          	sb	a4,1618(sp)
1c008784:	03c00713          	li	a4,60
1c008788:	64e109a3          	sb	a4,1619(sp)
1c00878c:	41bbc737          	lui	a4,0x41bbc
1c008790:	f7370713          	addi	a4,a4,-141 # 41bbbf73 <__l2_shared_end+0x25babf73>
1c008794:	64e12a23          	sw	a4,1620(sp)
1c008798:	b8153737          	lui	a4,0xb8153
1c00879c:	93a70713          	addi	a4,a4,-1734 # b815293a <__l2_shared_end+0x9c14293a>
1c0087a0:	64e12c23          	sw	a4,1624(sp)
1c0087a4:	049a1737          	lui	a4,0x49a1
1c0087a8:	5d170713          	addi	a4,a4,1489 # 49a15d1 <__CTOR_LIST__-0x1765ea33>
1c0087ac:	64e12e23          	sw	a4,1628(sp)
1c0087b0:	9bc51737          	lui	a4,0x9bc51
1c0087b4:	23f70713          	addi	a4,a4,575 # 9bc5123f <__l2_shared_end+0x7fc4123f>
1c0087b8:	66e12023          	sw	a4,1632(sp)
1c0087bc:	48828737          	lui	a4,0x48828
1c0087c0:	2fa70713          	addi	a4,a4,762 # 488282fa <__l2_shared_end+0x2c8182fa>
1c0087c4:	66e12223          	sw	a4,1636(sp)
1c0087c8:	1076a737          	lui	a4,0x1076a
1c0087cc:	b2470713          	addi	a4,a4,-1244 # 10769b24 <__CTOR_LIST__-0xb8964e0>
1c0087d0:	66e12423          	sw	a4,1640(sp)
1c0087d4:	a161b737          	lui	a4,0xa161b
1c0087d8:	a6f70713          	addi	a4,a4,-1425 # a161aa6f <__l2_shared_end+0x8560aa6f>
1c0087dc:	66e12623          	sw	a4,1644(sp)
1c0087e0:	0c28a737          	lui	a4,0xc28a
1c0087e4:	02770713          	addi	a4,a4,39 # c28a027 <__CTOR_LIST__-0xfd75fdd>
1c0087e8:	66e12823          	sw	a4,1648(sp)
1c0087ec:	e7506737          	lui	a4,0xe7506
1c0087f0:	35870713          	addi	a4,a4,856 # e7506358 <__l2_shared_end+0xcb4f6358>
1c0087f4:	66e12a23          	sw	a4,1652(sp)
1c0087f8:	4cb73737          	lui	a4,0x4cb73
1c0087fc:	ca470713          	addi	a4,a4,-860 # 4cb72ca4 <__l2_shared_end+0x30b62ca4>
1c008800:	66e12c23          	sw	a4,1656(sp)
1c008804:	d6aba737          	lui	a4,0xd6aba
1c008808:	ca470713          	addi	a4,a4,-860 # d6ab9ca4 <__l2_shared_end+0xbaaa9ca4>
1c00880c:	66e12e23          	sw	a4,1660(sp)
1c008810:	c71e9737          	lui	a4,0xc71e9
1c008814:	90670713          	addi	a4,a4,-1786 # c71e8906 <__l2_shared_end+0xab1d8906>
1c008818:	68e12023          	sw	a4,1664(sp)
1c00881c:	af849737          	lui	a4,0xaf849
1c008820:	ecb70713          	addi	a4,a4,-309 # af848ecb <__l2_shared_end+0x93838ecb>
1c008824:	68e12223          	sw	a4,1668(sp)
1c008828:	142e5737          	lui	a4,0x142e5
1c00882c:	bfe70713          	addi	a4,a4,-1026 # 142e4bfe <__CTOR_LIST__-0x7d1b406>
1c008830:	68e12423          	sw	a4,1672(sp)
1c008834:	33581737          	lui	a4,0x33581
1c008838:	6c770713          	addi	a4,a4,1735 # 335816c7 <__l2_shared_end+0x175716c7>
1c00883c:	68e12623          	sw	a4,1676(sp)
1c008840:	11567737          	lui	a4,0x11567
1c008844:	52b70713          	addi	a4,a4,1323 # 1156752b <__CTOR_LIST__-0xaa98ad9>
1c008848:	68e12823          	sw	a4,1680(sp)
1c00884c:	7f97b737          	lui	a4,0x7f97b
1c008850:	7ba70713          	addi	a4,a4,1978 # 7f97b7ba <__l2_shared_end+0x6396b7ba>
1c008854:	68e12a23          	sw	a4,1684(sp)
1c008858:	36e77737          	lui	a4,0x36e77
1c00885c:	ca770713          	addi	a4,a4,-857 # 36e76ca7 <__l2_shared_end+0x1ae66ca7>
1c008860:	68e12c23          	sw	a4,1688(sp)
1c008864:	4ad32737          	lui	a4,0x4ad32
1c008868:	eb270713          	addi	a4,a4,-334 # 4ad31eb2 <__l2_shared_end+0x2ed21eb2>
1c00886c:	68e12e23          	sw	a4,1692(sp)
1c008870:	c30eb737          	lui	a4,0xc30eb
1c008874:	c1770713          	addi	a4,a4,-1001 # c30eac17 <__l2_shared_end+0xa70dac17>
1c008878:	6ae12023          	sw	a4,1696(sp)
1c00887c:	b2a92737          	lui	a4,0xb2a92
1c008880:	c5670713          	addi	a4,a4,-938 # b2a91c56 <__l2_shared_end+0x96a81c56>
1c008884:	6ae12223          	sw	a4,1700(sp)
1c008888:	bca2d737          	lui	a4,0xbca2d
1c00888c:	48270713          	addi	a4,a4,1154 # bca2d482 <__l2_shared_end+0xa0a1d482>
1c008890:	6ae12423          	sw	a4,1704(sp)
1c008894:	92977737          	lui	a4,0x92977
1c008898:	64070713          	addi	a4,a4,1600 # 92977640 <__l2_shared_end+0x76967640>
1c00889c:	6ae12623          	sw	a4,1708(sp)
1c0088a0:	18f92737          	lui	a4,0x18f92
1c0088a4:	c4b70713          	addi	a4,a4,-949 # 18f91c4b <__CTOR_LIST__-0x306e3b9>
1c0088a8:	6ae12823          	sw	a4,1712(sp)
1c0088ac:	a4d38737          	lui	a4,0xa4d38
1c0088b0:	3ba70713          	addi	a4,a4,954 # a4d383ba <__l2_shared_end+0x88d283ba>
1c0088b4:	6ae12a23          	sw	a4,1716(sp)
1c0088b8:	6425d737          	lui	a4,0x6425d
1c0088bc:	8fd70713          	addi	a4,a4,-1795 # 6425c8fd <__l2_shared_end+0x4824c8fd>
1c0088c0:	6ae12c23          	sw	a4,1720(sp)
1c0088c4:	04d96737          	lui	a4,0x4d96
1c0088c8:	bc970713          	addi	a4,a4,-1079 # 4d95bc9 <__CTOR_LIST__-0x1726a43b>
1c0088cc:	6ae12e23          	sw	a4,1724(sp)
1c0088d0:	1ee9f737          	lui	a4,0x1ee9f
1c0088d4:	ebd70713          	addi	a4,a4,-323 # 1ee9eebd <__l2_shared_end+0x2e8eebd>
1c0088d8:	6ce12023          	sw	a4,1728(sp)
1c0088dc:	6bb3d737          	lui	a4,0x6bb3d
1c0088e0:	cd670713          	addi	a4,a4,-810 # 6bb3ccd6 <__l2_shared_end+0x4fb2ccd6>
1c0088e4:	6ce12223          	sw	a4,1732(sp)
1c0088e8:	5ca09737          	lui	a4,0x5ca09
1c0088ec:	8aa70713          	addi	a4,a4,-1878 # 5ca088aa <__l2_shared_end+0x409f88aa>
1c0088f0:	6ce12423          	sw	a4,1736(sp)
1c0088f4:	01297737          	lui	a4,0x1297
1c0088f8:	18070713          	addi	a4,a4,384 # 1297180 <__CTOR_LIST__-0x1ad68e84>
1c0088fc:	6ce12623          	sw	a4,1740(sp)
1c008900:	ee0a3737          	lui	a4,0xee0a3
1c008904:	8bf70713          	addi	a4,a4,-1857 # ee0a28bf <__l2_shared_end+0xd20928bf>
1c008908:	6ce12823          	sw	a4,1744(sp)
1c00890c:	20ec4737          	lui	a4,0x20ec4
1c008910:	86570713          	addi	a4,a4,-1947 # 20ec3865 <__l2_shared_end+0x4eb3865>
1c008914:	6ce12a23          	sw	a4,1748(sp)
1c008918:	4ea8c737          	lui	a4,0x4ea8c
1c00891c:	27870713          	addi	a4,a4,632 # 4ea8c278 <__l2_shared_end+0x32a7c278>
1c008920:	6ce12c23          	sw	a4,1752(sp)
1c008924:	c12f8737          	lui	a4,0xc12f8
1c008928:	6e570713          	addi	a4,a4,1765 # c12f86e5 <__l2_shared_end+0xa52e86e5>
1c00892c:	6ce12e23          	sw	a4,1756(sp)
1c008930:	e992d737          	lui	a4,0xe992d
1c008934:	d3770713          	addi	a4,a4,-713 # e992cd37 <__l2_shared_end+0xcd91cd37>
1c008938:	6ee12023          	sw	a4,1760(sp)
1c00893c:	9fd67737          	lui	a4,0x9fd67
1c008940:	87970713          	addi	a4,a4,-1927 # 9fd66879 <__l2_shared_end+0x83d56879>
1c008944:	6ee12223          	sw	a4,1764(sp)
1c008948:	1e3a4737          	lui	a4,0x1e3a4
1c00894c:	5c370713          	addi	a4,a4,1475 # 1e3a45c3 <__l2_shared_end+0x23945c3>
1c008950:	6ee12423          	sw	a4,1768(sp)
1c008954:	c561b737          	lui	a4,0xc561b
1c008958:	11c70713          	addi	a4,a4,284 # c561b11c <__l2_shared_end+0xa960b11c>
1c00895c:	6ee12623          	sw	a4,1772(sp)
1c008960:	7324a737          	lui	a4,0x7324a
1c008964:	f0c70713          	addi	a4,a4,-244 # 73249f0c <__l2_shared_end+0x57239f0c>
1c008968:	6ee12823          	sw	a4,1776(sp)
1c00896c:	3790d737          	lui	a4,0x3790d
1c008970:	0a070713          	addi	a4,a4,160 # 3790d0a0 <__l2_shared_end+0x1b8fd0a0>
1c008974:	6ee12a23          	sw	a4,1780(sp)
1c008978:	faa09737          	lui	a4,0xfaa09
1c00897c:	8b170713          	addi	a4,a4,-1871 # faa088b1 <__l2_shared_end+0xde9f88b1>
1c008980:	6ee12c23          	sw	a4,1784(sp)
1c008984:	44c3f737          	lui	a4,0x44c3f
1c008988:	f0170713          	addi	a4,a4,-255 # 44c3ef01 <__l2_shared_end+0x28c2ef01>
1c00898c:	6ee12e23          	sw	a4,1788(sp)
1c008990:	e88fb737          	lui	a4,0xe88fb
1c008994:	cc270713          	addi	a4,a4,-830 # e88facc2 <__l2_shared_end+0xcc8eacc2>
1c008998:	70e12023          	sw	a4,1792(sp)
1c00899c:	580a3737          	lui	a4,0x580a3
1c0089a0:	b5970713          	addi	a4,a4,-1191 # 580a2b59 <__l2_shared_end+0x3c092b59>
1c0089a4:	70e12223          	sw	a4,1796(sp)
1c0089a8:	a9626737          	lui	a4,0xa9626
1c0089ac:	64570713          	addi	a4,a4,1605 # a9626645 <__l2_shared_end+0x8d616645>
1c0089b0:	70e12423          	sw	a4,1800(sp)
1c0089b4:	9a653737          	lui	a4,0x9a653
1c0089b8:	35070713          	addi	a4,a4,848 # 9a653350 <__l2_shared_end+0x7e643350>
1c0089bc:	70e12623          	sw	a4,1804(sp)
1c0089c0:	902d9737          	lui	a4,0x902d9
1c0089c4:	a1570713          	addi	a4,a4,-1515 # 902d8a15 <__l2_shared_end+0x742c8a15>
1c0089c8:	70e12823          	sw	a4,1808(sp)
1c0089cc:	250ce737          	lui	a4,0x250ce
1c0089d0:	5a670713          	addi	a4,a4,1446 # 250ce5a6 <__l2_shared_end+0x90be5a6>
1c0089d4:	70e12a23          	sw	a4,1812(sp)
1c0089d8:	57978737          	lui	a4,0x57978
1c0089dc:	73a70713          	addi	a4,a4,1850 # 5797873a <__l2_shared_end+0x3b96873a>
1c0089e0:	70e12c23          	sw	a4,1816(sp)
1c0089e4:	c429d737          	lui	a4,0xc429d
1c0089e8:	e8570713          	addi	a4,a4,-379 # c429ce85 <__l2_shared_end+0xa828ce85>
1c0089ec:	70e12e23          	sw	a4,1820(sp)
1c0089f0:	a1000737          	lui	a4,0xa1000
1c0089f4:	05770713          	addi	a4,a4,87 # a1000057 <__l2_shared_end+0x84ff0057>
1c0089f8:	72e12023          	sw	a4,1824(sp)
1c0089fc:	b2b3d737          	lui	a4,0xb2b3d
1c008a00:	45470713          	addi	a4,a4,1108 # b2b3d454 <__l2_shared_end+0x96b2d454>
1c008a04:	72e12223          	sw	a4,1828(sp)
1c008a08:	5c204737          	lui	a4,0x5c204
1c008a0c:	2c670713          	addi	a4,a4,710 # 5c2042c6 <__l2_shared_end+0x401f42c6>
1c008a10:	72e12423          	sw	a4,1832(sp)
1c008a14:	acf98737          	lui	a4,0xacf98
1c008a18:	c8c70713          	addi	a4,a4,-884 # acf97c8c <__l2_shared_end+0x90f87c8c>
1c008a1c:	72e12623          	sw	a4,1836(sp)
1c008a20:	fb711737          	lui	a4,0xfb711
1c008a24:	06b70713          	addi	a4,a4,107 # fb71106b <__l2_shared_end+0xdf70106b>
1c008a28:	72e12823          	sw	a4,1840(sp)
1c008a2c:	95ab7737          	lui	a4,0x95ab7
1c008a30:	8b370713          	addi	a4,a4,-1869 # 95ab68b3 <__l2_shared_end+0x79aa68b3>
1c008a34:	72e12a23          	sw	a4,1844(sp)
1c008a38:	884b7737          	lui	a4,0x884b7
1c008a3c:	40a70713          	addi	a4,a4,1034 # 884b740a <__l2_shared_end+0x6c4a740a>
1c008a40:	72e12c23          	sw	a4,1848(sp)
1c008a44:	24a56737          	lui	a4,0x24a56
1c008a48:	bc970713          	addi	a4,a4,-1079 # 24a55bc9 <__l2_shared_end+0x8a45bc9>
1c008a4c:	72e12e23          	sw	a4,1852(sp)
1c008a50:	11831737          	lui	a4,0x11831
1c008a54:	73070713          	addi	a4,a4,1840 # 11831730 <__CTOR_LIST__-0xa7ce8d4>
1c008a58:	74e12023          	sw	a4,1856(sp)
1c008a5c:	8304b737          	lui	a4,0x8304b
1c008a60:	92070713          	addi	a4,a4,-1760 # 8304a920 <__l2_shared_end+0x6703a920>
1c008a64:	74e12223          	sw	a4,1860(sp)
1c008a68:	7775                	lui	a4,0xffffd
1c008a6a:	23870713          	addi	a4,a4,568 # ffffd238 <__l2_shared_end+0xe3fed238>
1c008a6e:	74e11423          	sh	a4,1864(sp)
1c008a72:	f9800713          	li	a4,-104
1c008a76:	74e10523          	sb	a4,1866(sp)
1c008a7a:	04700713          	li	a4,71
1c008a7e:	74e105a3          	sb	a4,1867(sp)
1c008a82:	a9121737          	lui	a4,0xa9121
1c008a86:	d8370713          	addi	a4,a4,-637 # a9120d83 <__l2_shared_end+0x8d110d83>
1c008a8a:	74e12623          	sw	a4,1868(sp)
1c008a8e:	bd9aa737          	lui	a4,0xbd9aa
1c008a92:	03370713          	addi	a4,a4,51 # bd9aa033 <__l2_shared_end+0xa199a033>
1c008a96:	74e12823          	sw	a4,1872(sp)
1c008a9a:	826ba737          	lui	a4,0x826ba
1c008a9e:	42170713          	addi	a4,a4,1057 # 826ba421 <__l2_shared_end+0x666aa421>
1c008aa2:	74e12a23          	sw	a4,1876(sp)
1c008aa6:	804eb737          	lui	a4,0x804eb
1c008aaa:	18c70713          	addi	a4,a4,396 # 804eb18c <__l2_shared_end+0x644db18c>
1c008aae:	74e12c23          	sw	a4,1880(sp)
1c008ab2:	2951d737          	lui	a4,0x2951d
1c008ab6:	38c70713          	addi	a4,a4,908 # 2951d38c <__l2_shared_end+0xd50d38c>
1c008aba:	74e12e23          	sw	a4,1884(sp)
1c008abe:	5b6ee737          	lui	a4,0x5b6ee
1c008ac2:	cc970713          	addi	a4,a4,-823 # 5b6edcc9 <__l2_shared_end+0x3f6ddcc9>
1c008ac6:	76e12023          	sw	a4,1888(sp)
1c008aca:	124a2737          	lui	a4,0x124a2
1c008ace:	d9370713          	addi	a4,a4,-621 # 124a1d93 <__CTOR_LIST__-0x9b5e271>
1c008ad2:	76e12223          	sw	a4,1892(sp)
1c008ad6:	79e0f737          	lui	a4,0x79e0f
1c008ada:	f6f70713          	addi	a4,a4,-145 # 79e0ef6f <__l2_shared_end+0x5ddfef6f>
1c008ade:	76e12423          	sw	a4,1896(sp)
1c008ae2:	2b8e6737          	lui	a4,0x2b8e6
1c008ae6:	10970713          	addi	a4,a4,265 # 2b8e6109 <__l2_shared_end+0xf8d6109>
1c008aea:	76e12623          	sw	a4,1900(sp)
1c008aee:	b6e78737          	lui	a4,0xb6e78
1c008af2:	64570713          	addi	a4,a4,1605 # b6e78645 <__l2_shared_end+0x9ae68645>
1c008af6:	76e12823          	sw	a4,1904(sp)
1c008afa:	3b962737          	lui	a4,0x3b962
1c008afe:	4b470713          	addi	a4,a4,1204 # 3b9624b4 <__l2_shared_end+0x1f9524b4>
1c008b02:	76e12a23          	sw	a4,1908(sp)
1c008b06:	50ba2737          	lui	a4,0x50ba2
1c008b0a:	37370713          	addi	a4,a4,883 # 50ba2373 <__l2_shared_end+0x34b92373>
1c008b0e:	76e12c23          	sw	a4,1912(sp)
1c008b12:	bb12a737          	lui	a4,0xbb12a
1c008b16:	15b70713          	addi	a4,a4,347 # bb12a15b <__l2_shared_end+0x9f11a15b>
1c008b1a:	76e12e23          	sw	a4,1916(sp)
1c008b1e:	7d4a8737          	lui	a4,0x7d4a8
1c008b22:	39b70713          	addi	a4,a4,923 # 7d4a839b <__l2_shared_end+0x6149839b>
1c008b26:	78e12023          	sw	a4,1920(sp)
1c008b2a:	0dad8737          	lui	a4,0xdad8
1c008b2e:	81b70713          	addi	a4,a4,-2021 # dad781b <__CTOR_LIST__-0xe5287e9>
1c008b32:	78e12223          	sw	a4,1924(sp)
1c008b36:	6a554737          	lui	a4,0x6a554
1c008b3a:	df570713          	addi	a4,a4,-523 # 6a553df5 <__l2_shared_end+0x4e543df5>
1c008b3e:	78e12423          	sw	a4,1928(sp)
1c008b42:	9f367737          	lui	a4,0x9f367
1c008b46:	91c70713          	addi	a4,a4,-1764 # 9f36691c <__l2_shared_end+0x8335691c>
1c008b4a:	78e12623          	sw	a4,1932(sp)
1c008b4e:	1d8b1737          	lui	a4,0x1d8b1
1c008b52:	40970713          	addi	a4,a4,1033 # 1d8b1409 <__l2_shared_end+0x18a1409>
1c008b56:	78e12823          	sw	a4,1936(sp)
1c008b5a:	f58d9737          	lui	a4,0xf58d9
1c008b5e:	3c970713          	addi	a4,a4,969 # f58d93c9 <__l2_shared_end+0xd98c93c9>
1c008b62:	78e12a23          	sw	a4,1940(sp)
1c008b66:	87f02737          	lui	a4,0x87f02
1c008b6a:	39270713          	addi	a4,a4,914 # 87f02392 <__l2_shared_end+0x6bef2392>
1c008b6e:	78e12c23          	sw	a4,1944(sp)
1c008b72:	be337737          	lui	a4,0xbe337
1c008b76:	8fd70713          	addi	a4,a4,-1795 # be3368fd <__l2_shared_end+0xa23268fd>
1c008b7a:	78e12e23          	sw	a4,1948(sp)
1c008b7e:	65c23737          	lui	a4,0x65c23
1c008b82:	b5b70713          	addi	a4,a4,-1189 # 65c22b5b <__l2_shared_end+0x49c12b5b>
1c008b86:	7ae12023          	sw	a4,1952(sp)
1c008b8a:	1189e737          	lui	a4,0x1189e
1c008b8e:	51f70713          	addi	a4,a4,1311 # 1189e51f <__CTOR_LIST__-0xa761ae5>
1c008b92:	7ae12223          	sw	a4,1956(sp)
1c008b96:	7f460737          	lui	a4,0x7f460
1c008b9a:	1ac70713          	addi	a4,a4,428 # 7f4601ac <__l2_shared_end+0x634501ac>
1c008b9e:	7ae12423          	sw	a4,1960(sp)
1c008ba2:	dcdf9737          	lui	a4,0xdcdf9
1c008ba6:	79270713          	addi	a4,a4,1938 # dcdf9792 <__l2_shared_end+0xc0de9792>
1c008baa:	7ae12623          	sw	a4,1964(sp)
1c008bae:	0f1ab737          	lui	a4,0xf1ab
1c008bb2:	42270713          	addi	a4,a4,1058 # f1ab422 <__CTOR_LIST__-0xce54be2>
1c008bb6:	7ae12823          	sw	a4,1968(sp)
1c008bba:	87710737          	lui	a4,0x87710
1c008bbe:	21770713          	addi	a4,a4,535 # 87710217 <__l2_shared_end+0x6b700217>
1c008bc2:	7ae12a23          	sw	a4,1972(sp)
1c008bc6:	f38cb737          	lui	a4,0xf38cb
1c008bca:	71070713          	addi	a4,a4,1808 # f38cb710 <__l2_shared_end+0xd78bb710>
1c008bce:	7ae12c23          	sw	a4,1976(sp)
1c008bd2:	81652737          	lui	a4,0x81652
1c008bd6:	85b70713          	addi	a4,a4,-1957 # 8165185b <__l2_shared_end+0x6564185b>
1c008bda:	7ae12e23          	sw	a4,1980(sp)
1c008bde:	456d9737          	lui	a4,0x456d9
1c008be2:	93a70713          	addi	a4,a4,-1734 # 456d893a <__l2_shared_end+0x296c893a>
1c008be6:	7ce12023          	sw	a4,1984(sp)
1c008bea:	81335737          	lui	a4,0x81335
1c008bee:	d2170713          	addi	a4,a4,-735 # 81334d21 <__l2_shared_end+0x65324d21>
1c008bf2:	7ce12223          	sw	a4,1988(sp)
1c008bf6:	43c0b737          	lui	a4,0x43c0b
1c008bfa:	65570713          	addi	a4,a4,1621 # 43c0b655 <__l2_shared_end+0x27bfb655>
1c008bfe:	7ce12423          	sw	a4,1992(sp)
1c008c02:	0c333737          	lui	a4,0xc333
1c008c06:	2c570713          	addi	a4,a4,709 # c3332c5 <__CTOR_LIST__-0xfcccd3f>
1c008c0a:	7ce12623          	sw	a4,1996(sp)
1c008c0e:	07523737          	lui	a4,0x7523
1c008c12:	d0070713          	addi	a4,a4,-768 # 7522d00 <__CTOR_LIST__-0x14add304>
1c008c16:	7ce12823          	sw	a4,2000(sp)
1c008c1a:	507a4737          	lui	a4,0x507a4
1c008c1e:	63970713          	addi	a4,a4,1593 # 507a4639 <__l2_shared_end+0x34794639>
1c008c22:	7ce12a23          	sw	a4,2004(sp)
1c008c26:	37668737          	lui	a4,0x37668
1c008c2a:	64a70713          	addi	a4,a4,1610 # 3766864a <__l2_shared_end+0x1b65864a>
1c008c2e:	7ce12c23          	sw	a4,2008(sp)
1c008c32:	c8513737          	lui	a4,0xc8513
1c008c36:	4fb70713          	addi	a4,a4,1275 # c85134fb <__l2_shared_end+0xac5034fb>
1c008c3a:	7ce12e23          	sw	a4,2012(sp)
1c008c3e:	3ef90737          	lui	a4,0x3ef90
1c008c42:	6685                	lui	a3,0x1
1c008c44:	84970713          	addi	a4,a4,-1975 # 3ef8f849 <__l2_shared_end+0x22f7f849>
1c008c48:	7ee12023          	sw	a4,2016(sp)
1c008c4c:	747d                	lui	s0,0xfffff
1c008c4e:	90068713          	addi	a4,a3,-1792 # 900 <__CTOR_LIST__-0x1bfff704>
1c008c52:	970a                	add	a4,a4,sp
1c008c54:	70040493          	addi	s1,s0,1792 # fffff700 <__l2_shared_end+0xe3fef700>
1c008c58:	94ba                	add	s1,s1,a4
1c008c5a:	90068713          	addi	a4,a3,-1792
1c008c5e:	970a                	add	a4,a4,sp
1c008c60:	72040413          	addi	s0,s0,1824
1c008c64:	943a                	add	s0,s0,a4
1c008c66:	7f149737          	lui	a4,0x7f149
1c008c6a:	46a70713          	addi	a4,a4,1130 # 7f14946a <__l2_shared_end+0x6313946a>
1c008c6e:	7ee12223          	sw	a4,2020(sp)
1c008c72:	3aa59737          	lui	a4,0x3aa59
1c008c76:	d1670713          	addi	a4,a4,-746 # 3aa58d16 <__l2_shared_end+0x1ea48d16>
1c008c7a:	7ee12423          	sw	a4,2024(sp)
1c008c7e:	afd90737          	lui	a4,0xafd90
1c008c82:	9cd70713          	addi	a4,a4,-1587 # afd8f9cd <__l2_shared_end+0x93d7f9cd>
1c008c86:	7ee12623          	sw	a4,2028(sp)
1c008c8a:	848a9737          	lui	a4,0x848a9
1c008c8e:	6fd70713          	addi	a4,a4,1789 # 848a96fd <__l2_shared_end+0x688996fd>
1c008c92:	7ee12823          	sw	a4,2032(sp)
1c008c96:	bc9a5737          	lui	a4,0xbc9a5
1c008c9a:	a1270713          	addi	a4,a4,-1518 # bc9a4a12 <__l2_shared_end+0xa0994a12>
1c008c9e:	7ee12a23          	sw	a4,2036(sp)
1c008ca2:	0c96b737          	lui	a4,0xc96b
1c008ca6:	f0970713          	addi	a4,a4,-247 # c96af09 <__CTOR_LIST__-0xf6950fb>
1c008caa:	7ee12c23          	sw	a4,2040(sp)
1c008cae:	239fb737          	lui	a4,0x239fb
1c008cb2:	2d370713          	addi	a4,a4,723 # 239fb2d3 <__l2_shared_end+0x79eb2d3>
1c008cb6:	7ee12e23          	sw	a4,2044(sp)
1c008cba:	80068613          	addi	a2,a3,-2048
1c008cbe:	b41b8737          	lui	a4,0xb41b8
1c008cc2:	960a                	add	a2,a2,sp
1c008cc4:	34470713          	addi	a4,a4,836 # b41b8344 <__l2_shared_end+0x981a8344>
1c008cc8:	c218                	sw	a4,0(a2)
1c008cca:	80468613          	addi	a2,a3,-2044
1c008cce:	5e606737          	lui	a4,0x5e606
1c008cd2:	960a                	add	a2,a2,sp
1c008cd4:	71e70713          	addi	a4,a4,1822 # 5e60671e <__l2_shared_end+0x425f671e>
1c008cd8:	c218                	sw	a4,0(a2)
1c008cda:	80868613          	addi	a2,a3,-2040
1c008cde:	f20df737          	lui	a4,0xf20df
1c008ce2:	960a                	add	a2,a2,sp
1c008ce4:	0eb70713          	addi	a4,a4,235 # f20df0eb <__l2_shared_end+0xd60cf0eb>
1c008ce8:	c218                	sw	a4,0(a2)
1c008cea:	80c68613          	addi	a2,a3,-2036
1c008cee:	17718737          	lui	a4,0x17718
1c008cf2:	960a                	add	a2,a2,sp
1c008cf4:	50270713          	addi	a4,a4,1282 # 17718502 <__CTOR_LIST__-0x48e7b02>
1c008cf8:	c218                	sw	a4,0(a2)
1c008cfa:	81068613          	addi	a2,a3,-2032
1c008cfe:	48d7a737          	lui	a4,0x48d7a
1c008d02:	960a                	add	a2,a2,sp
1c008d04:	d3970713          	addi	a4,a4,-711 # 48d79d39 <__l2_shared_end+0x2cd69d39>
1c008d08:	c218                	sw	a4,0(a2)
1c008d0a:	81468613          	addi	a2,a3,-2028
1c008d0e:	ed4a5737          	lui	a4,0xed4a5
1c008d12:	960a                	add	a2,a2,sp
1c008d14:	1b670713          	addi	a4,a4,438 # ed4a51b6 <__l2_shared_end+0xd14951b6>
1c008d18:	c218                	sw	a4,0(a2)
1c008d1a:	81868613          	addi	a2,a3,-2024
1c008d1e:	6c2fc737          	lui	a4,0x6c2fc
1c008d22:	960a                	add	a2,a2,sp
1c008d24:	b6170713          	addi	a4,a4,-1183 # 6c2fbb61 <__l2_shared_end+0x502ebb61>
1c008d28:	c218                	sw	a4,0(a2)
1c008d2a:	81c68613          	addi	a2,a3,-2020
1c008d2e:	68d14737          	lui	a4,0x68d14
1c008d32:	960a                	add	a2,a2,sp
1c008d34:	1b870713          	addi	a4,a4,440 # 68d141b8 <__l2_shared_end+0x4cd041b8>
1c008d38:	c218                	sw	a4,0(a2)
1c008d3a:	82068613          	addi	a2,a3,-2016
1c008d3e:	205ef737          	lui	a4,0x205ef
1c008d42:	960a                	add	a2,a2,sp
1c008d44:	3d570713          	addi	a4,a4,981 # 205ef3d5 <__l2_shared_end+0x45df3d5>
1c008d48:	c218                	sw	a4,0(a2)
1c008d4a:	82468613          	addi	a2,a3,-2012
1c008d4e:	a3734737          	lui	a4,0xa3734
1c008d52:	960a                	add	a2,a2,sp
1c008d54:	50570713          	addi	a4,a4,1285 # a3734505 <__l2_shared_end+0x87724505>
1c008d58:	c218                	sw	a4,0(a2)
1c008d5a:	82868613          	addi	a2,a3,-2008
1c008d5e:	8248d737          	lui	a4,0x8248d
1c008d62:	960a                	add	a2,a2,sp
1c008d64:	d3170713          	addi	a4,a4,-719 # 8248cd31 <__l2_shared_end+0x6647cd31>
1c008d68:	c218                	sw	a4,0(a2)
1c008d6a:	82c68613          	addi	a2,a3,-2004
1c008d6e:	2c075737          	lui	a4,0x2c075
1c008d72:	960a                	add	a2,a2,sp
1c008d74:	ba070713          	addi	a4,a4,-1120 # 2c074ba0 <__l2_shared_end+0x10064ba0>
1c008d78:	c218                	sw	a4,0(a2)
1c008d7a:	83068613          	addi	a2,a3,-2000
1c008d7e:	82589737          	lui	a4,0x82589
1c008d82:	960a                	add	a2,a2,sp
1c008d84:	11770713          	addi	a4,a4,279 # 82589117 <__l2_shared_end+0x66579117>
1c008d88:	c218                	sw	a4,0(a2)
1c008d8a:	83468613          	addi	a2,a3,-1996
1c008d8e:	1247d737          	lui	a4,0x1247d
1c008d92:	960a                	add	a2,a2,sp
1c008d94:	f5b70713          	addi	a4,a4,-165 # 1247cf5b <__CTOR_LIST__-0x9b830a9>
1c008d98:	c218                	sw	a4,0(a2)
1c008d9a:	83868613          	addi	a2,a3,-1992
1c008d9e:	cc0de737          	lui	a4,0xcc0de
1c008da2:	960a                	add	a2,a2,sp
1c008da4:	a6670713          	addi	a4,a4,-1434 # cc0dda66 <__l2_shared_end+0xb00cda66>
1c008da8:	c218                	sw	a4,0(a2)
1c008daa:	83c68613          	addi	a2,a3,-1988
1c008dae:	21a0b737          	lui	a4,0x21a0b
1c008db2:	960a                	add	a2,a2,sp
1c008db4:	1ea70713          	addi	a4,a4,490 # 21a0b1ea <__l2_shared_end+0x59fb1ea>
1c008db8:	c218                	sw	a4,0(a2)
1c008dba:	8736                	mv	a4,a3
1c008dbc:	84068693          	addi	a3,a3,-1984
1c008dc0:	968a                	add	a3,a3,sp
1c008dc2:	2c778793          	addi	a5,a5,711
1c008dc6:	00f69023          	sh	a5,0(a3)
1c008dca:	84270693          	addi	a3,a4,-1982
1c008dce:	968a                	add	a3,a3,sp
1c008dd0:	05400793          	li	a5,84
1c008dd4:	00f68023          	sb	a5,0(a3)
1c008dd8:	84370693          	addi	a3,a4,-1981
1c008ddc:	968a                	add	a3,a3,sp
1c008dde:	07500793          	li	a5,117
1c008de2:	00f68023          	sb	a5,0(a3)
1c008de6:	84470693          	addi	a3,a4,-1980
1c008dea:	1c1667b7          	lui	a5,0x1c166
1c008dee:	968a                	add	a3,a3,sp
1c008df0:	a1d78793          	addi	a5,a5,-1507 # 1c165a1d <__l2_shared_end+0x155a1d>
1c008df4:	c29c                	sw	a5,0(a3)
1c008df6:	84870693          	addi	a3,a4,-1976
1c008dfa:	2c0697b7          	lui	a5,0x2c069
1c008dfe:	968a                	add	a3,a3,sp
1c008e00:	21a78793          	addi	a5,a5,538 # 2c06921a <__l2_shared_end+0x1005921a>
1c008e04:	c29c                	sw	a5,0(a3)
1c008e06:	84c70693          	addi	a3,a4,-1972
1c008e0a:	7a2117b7          	lui	a5,0x7a211
1c008e0e:	968a                	add	a3,a3,sp
1c008e10:	a2278793          	addi	a5,a5,-1502 # 7a210a22 <__l2_shared_end+0x5e200a22>
1c008e14:	c29c                	sw	a5,0(a3)
1c008e16:	85070693          	addi	a3,a4,-1968
1c008e1a:	3382e7b7          	lui	a5,0x3382e
1c008e1e:	968a                	add	a3,a3,sp
1c008e20:	96978793          	addi	a5,a5,-1687 # 3382d969 <__l2_shared_end+0x1781d969>
1c008e24:	c29c                	sw	a5,0(a3)
1c008e26:	85470693          	addi	a3,a4,-1964
1c008e2a:	99deb7b7          	lui	a5,0x99deb
1c008e2e:	968a                	add	a3,a3,sp
1c008e30:	41478793          	addi	a5,a5,1044 # 99deb414 <__l2_shared_end+0x7dddb414>
1c008e34:	c29c                	sw	a5,0(a3)
1c008e36:	85870693          	addi	a3,a4,-1960
1c008e3a:	5fd4f7b7          	lui	a5,0x5fd4f
1c008e3e:	968a                	add	a3,a3,sp
1c008e40:	86f78793          	addi	a5,a5,-1937 # 5fd4e86f <__l2_shared_end+0x43d3e86f>
1c008e44:	c29c                	sw	a5,0(a3)
1c008e46:	85c70693          	addi	a3,a4,-1956
1c008e4a:	16afb7b7          	lui	a5,0x16afb
1c008e4e:	968a                	add	a3,a3,sp
1c008e50:	56d78793          	addi	a5,a5,1389 # 16afb56d <__CTOR_LIST__-0x5504a97>
1c008e54:	c29c                	sw	a5,0(a3)
1c008e56:	86070693          	addi	a3,a4,-1952
1c008e5a:	951457b7          	lui	a5,0x95145
1c008e5e:	968a                	add	a3,a3,sp
1c008e60:	6c178793          	addi	a5,a5,1729 # 951456c1 <__l2_shared_end+0x791356c1>
1c008e64:	c29c                	sw	a5,0(a3)
1c008e66:	86470693          	addi	a3,a4,-1948
1c008e6a:	9030c7b7          	lui	a5,0x9030c
1c008e6e:	968a                	add	a3,a3,sp
1c008e70:	4a478793          	addi	a5,a5,1188 # 9030c4a4 <__l2_shared_end+0x742fc4a4>
1c008e74:	c29c                	sw	a5,0(a3)
1c008e76:	86870693          	addi	a3,a4,-1944
1c008e7a:	944c47b7          	lui	a5,0x944c4
1c008e7e:	968a                	add	a3,a3,sp
1c008e80:	9bc78793          	addi	a5,a5,-1604 # 944c39bc <__l2_shared_end+0x784b39bc>
1c008e84:	c29c                	sw	a5,0(a3)
1c008e86:	86c70693          	addi	a3,a4,-1940
1c008e8a:	73ecb7b7          	lui	a5,0x73ecb
1c008e8e:	968a                	add	a3,a3,sp
1c008e90:	0e178793          	addi	a5,a5,225 # 73ecb0e1 <__l2_shared_end+0x57ebb0e1>
1c008e94:	c29c                	sw	a5,0(a3)
1c008e96:	87070693          	addi	a3,a4,-1936
1c008e9a:	6762b7b7          	lui	a5,0x6762b
1c008e9e:	968a                	add	a3,a3,sp
1c008ea0:	58e78793          	addi	a5,a5,1422 # 6762b58e <__l2_shared_end+0x4b61b58e>
1c008ea4:	c29c                	sw	a5,0(a3)
1c008ea6:	87470693          	addi	a3,a4,-1932
1c008eaa:	cd2e27b7          	lui	a5,0xcd2e2
1c008eae:	968a                	add	a3,a3,sp
1c008eb0:	c2078793          	addi	a5,a5,-992 # cd2e1c20 <__l2_shared_end+0xb12d1c20>
1c008eb4:	c29c                	sw	a5,0(a3)
1c008eb6:	87870693          	addi	a3,a4,-1928
1c008eba:	934987b7          	lui	a5,0x93498
1c008ebe:	968a                	add	a3,a3,sp
1c008ec0:	b1c78793          	addi	a5,a5,-1252 # 93497b1c <__l2_shared_end+0x77487b1c>
1c008ec4:	c29c                	sw	a5,0(a3)
1c008ec6:	87c70693          	addi	a3,a4,-1924
1c008eca:	28c0f7b7          	lui	a5,0x28c0f
1c008ece:	968a                	add	a3,a3,sp
1c008ed0:	fc078793          	addi	a5,a5,-64 # 28c0efc0 <__l2_shared_end+0xcbfefc0>
1c008ed4:	c29c                	sw	a5,0(a3)
1c008ed6:	88070693          	addi	a3,a4,-1920
1c008eda:	099ae7b7          	lui	a5,0x99ae
1c008ede:	968a                	add	a3,a3,sp
1c008ee0:	c4b78793          	addi	a5,a5,-949 # 99adc4b <__CTOR_LIST__-0x126523b9>
1c008ee4:	c29c                	sw	a5,0(a3)
1c008ee6:	88470693          	addi	a3,a4,-1916
1c008eea:	954f37b7          	lui	a5,0x954f3
1c008eee:	968a                	add	a3,a3,sp
1c008ef0:	91c78793          	addi	a5,a5,-1764 # 954f291c <__l2_shared_end+0x794e291c>
1c008ef4:	c29c                	sw	a5,0(a3)
1c008ef6:	88870693          	addi	a3,a4,-1912
1c008efa:	787147b7          	lui	a5,0x78714
1c008efe:	968a                	add	a3,a3,sp
1c008f00:	a7078793          	addi	a5,a5,-1424 # 78713a70 <__l2_shared_end+0x5c703a70>
1c008f04:	c29c                	sw	a5,0(a3)
1c008f06:	88c70693          	addi	a3,a4,-1908
1c008f0a:	958a37b7          	lui	a5,0x958a3
1c008f0e:	968a                	add	a3,a3,sp
1c008f10:	c8278793          	addi	a5,a5,-894 # 958a2c82 <__l2_shared_end+0x79892c82>
1c008f14:	c29c                	sw	a5,0(a3)
1c008f16:	89070693          	addi	a3,a4,-1904
1c008f1a:	451ea7b7          	lui	a5,0x451ea
1c008f1e:	968a                	add	a3,a3,sp
1c008f20:	bb778793          	addi	a5,a5,-1097 # 451e9bb7 <__l2_shared_end+0x291d9bb7>
1c008f24:	c29c                	sw	a5,0(a3)
1c008f26:	89470693          	addi	a3,a4,-1900
1c008f2a:	8d99e7b7          	lui	a5,0x8d99e
1c008f2e:	968a                	add	a3,a3,sp
1c008f30:	09178793          	addi	a5,a5,145 # 8d99e091 <__l2_shared_end+0x7198e091>
1c008f34:	c29c                	sw	a5,0(a3)
1c008f36:	89870693          	addi	a3,a4,-1896
1c008f3a:	c17547b7          	lui	a5,0xc1754
1c008f3e:	968a                	add	a3,a3,sp
1c008f40:	88978793          	addi	a5,a5,-1911 # c1753889 <__l2_shared_end+0xa5743889>
1c008f44:	c29c                	sw	a5,0(a3)
1c008f46:	89c70693          	addi	a3,a4,-1892
1c008f4a:	8ac087b7          	lui	a5,0x8ac08
1c008f4e:	968a                	add	a3,a3,sp
1c008f50:	9a878793          	addi	a5,a5,-1624 # 8ac079a8 <__l2_shared_end+0x6ebf79a8>
1c008f54:	c29c                	sw	a5,0(a3)
1c008f56:	8a070693          	addi	a3,a4,-1888
1c008f5a:	7dc647b7          	lui	a5,0x7dc64
1c008f5e:	968a                	add	a3,a3,sp
1c008f60:	c0778793          	addi	a5,a5,-1017 # 7dc63c07 <__l2_shared_end+0x61c53c07>
1c008f64:	c29c                	sw	a5,0(a3)
1c008f66:	8a470693          	addi	a3,a4,-1884
1c008f6a:	a7bb27b7          	lui	a5,0xa7bb2
1c008f6e:	968a                	add	a3,a3,sp
1c008f70:	6f478793          	addi	a5,a5,1780 # a7bb26f4 <__l2_shared_end+0x8bba26f4>
1c008f74:	c29c                	sw	a5,0(a3)
1c008f76:	8a870693          	addi	a3,a4,-1880
1c008f7a:	e68ac7b7          	lui	a5,0xe68ac
1c008f7e:	968a                	add	a3,a3,sp
1c008f80:	19278793          	addi	a5,a5,402 # e68ac192 <__l2_shared_end+0xca89c192>
1c008f84:	c29c                	sw	a5,0(a3)
1c008f86:	8ac70693          	addi	a3,a4,-1876
1c008f8a:	87bb07b7          	lui	a5,0x87bb0
1c008f8e:	968a                	add	a3,a3,sp
1c008f90:	ec178793          	addi	a5,a5,-319 # 87bafec1 <__l2_shared_end+0x6bb9fec1>
1c008f94:	c29c                	sw	a5,0(a3)
1c008f96:	8b070693          	addi	a3,a4,-1872
1c008f9a:	8154f7b7          	lui	a5,0x8154f
1c008f9e:	968a                	add	a3,a3,sp
1c008fa0:	c9b78793          	addi	a5,a5,-869 # 8154ec9b <__l2_shared_end+0x6553ec9b>
1c008fa4:	c29c                	sw	a5,0(a3)
1c008fa6:	8b470693          	addi	a3,a4,-1868
1c008faa:	a0ff37b7          	lui	a5,0xa0ff3
1c008fae:	968a                	add	a3,a3,sp
1c008fb0:	a2c78793          	addi	a5,a5,-1492 # a0ff2a2c <__l2_shared_end+0x84fe2a2c>
1c008fb4:	c29c                	sw	a5,0(a3)
1c008fb6:	8b870693          	addi	a3,a4,-1864
1c008fba:	703b97b7          	lui	a5,0x703b9
1c008fbe:	968a                	add	a3,a3,sp
1c008fc0:	71278793          	addi	a5,a5,1810 # 703b9712 <__l2_shared_end+0x543a9712>
1c008fc4:	c29c                	sw	a5,0(a3)
1c008fc6:	8bc70693          	addi	a3,a4,-1860
1c008fca:	278ed7b7          	lui	a5,0x278ed
1c008fce:	968a                	add	a3,a3,sp
1c008fd0:	40a78793          	addi	a5,a5,1034 # 278ed40a <__l2_shared_end+0xb8dd40a>
1c008fd4:	c29c                	sw	a5,0(a3)
1c008fd6:	8c070693          	addi	a3,a4,-1856
1c008fda:	082887b7          	lui	a5,0x8288
1c008fde:	968a                	add	a3,a3,sp
1c008fe0:	81078793          	addi	a5,a5,-2032 # 8287810 <__CTOR_LIST__-0x13d787f4>
1c008fe4:	c29c                	sw	a5,0(a3)
1c008fe6:	8c470693          	addi	a3,a4,-1852
1c008fea:	008627b7          	lui	a5,0x862
1c008fee:	968a                	add	a3,a3,sp
1c008ff0:	66478793          	addi	a5,a5,1636 # 862664 <__CTOR_LIST__-0x1b79d9a0>
1c008ff4:	c29c                	sw	a5,0(a3)
1c008ff6:	8c870693          	addi	a3,a4,-1848
1c008ffa:	9e30b7b7          	lui	a5,0x9e30b
1c008ffe:	968a                	add	a3,a3,sp
1c009000:	aa778793          	addi	a5,a5,-1369 # 9e30aaa7 <__l2_shared_end+0x822faaa7>
1c009004:	c29c                	sw	a5,0(a3)
1c009006:	8cc70693          	addi	a3,a4,-1844
1c00900a:	759817b7          	lui	a5,0x75981
1c00900e:	968a                	add	a3,a3,sp
1c009010:	0aa78793          	addi	a5,a5,170 # 759810aa <__l2_shared_end+0x599710aa>
1c009014:	c29c                	sw	a5,0(a3)
1c009016:	8d070693          	addi	a3,a4,-1840
1c00901a:	528a17b7          	lui	a5,0x528a1
1c00901e:	968a                	add	a3,a3,sp
1c009020:	f0a78793          	addi	a5,a5,-246 # 528a0f0a <__l2_shared_end+0x36890f0a>
1c009024:	c29c                	sw	a5,0(a3)
1c009026:	8d470693          	addi	a3,a4,-1836
1c00902a:	5729c7b7          	lui	a5,0x5729c
1c00902e:	968a                	add	a3,a3,sp
1c009030:	92e78793          	addi	a5,a5,-1746 # 5729b92e <__l2_shared_end+0x3b28b92e>
1c009034:	c29c                	sw	a5,0(a3)
1c009036:	8d870693          	addi	a3,a4,-1832
1c00903a:	782f47b7          	lui	a5,0x782f4
1c00903e:	968a                	add	a3,a3,sp
1c009040:	17b78793          	addi	a5,a5,379 # 782f417b <__l2_shared_end+0x5c2e417b>
1c009044:	c29c                	sw	a5,0(a3)
1c009046:	8dc70693          	addi	a3,a4,-1828
1c00904a:	883667b7          	lui	a5,0x88366
1c00904e:	968a                	add	a3,a3,sp
1c009050:	15578793          	addi	a5,a5,341 # 88366155 <__l2_shared_end+0x6c356155>
1c009054:	c29c                	sw	a5,0(a3)
1c009056:	8e070693          	addi	a3,a4,-1824
1c00905a:	c89b37b7          	lui	a5,0xc89b3
1c00905e:	968a                	add	a3,a3,sp
1c009060:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c009064:	c29c                	sw	a5,0(a3)
1c009066:	8e470693          	addi	a3,a4,-1820
1c00906a:	b91317b7          	lui	a5,0xb9131
1c00906e:	968a                	add	a3,a3,sp
1c009070:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c009074:	c29c                	sw	a5,0(a3)
1c009076:	8e870693          	addi	a3,a4,-1816
1c00907a:	6f5847b7          	lui	a5,0x6f584
1c00907e:	968a                	add	a3,a3,sp
1c009080:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c009084:	c29c                	sw	a5,0(a3)
1c009086:	8ec70693          	addi	a3,a4,-1812
1c00908a:	b1fe87b7          	lui	a5,0xb1fe8
1c00908e:	968a                	add	a3,a3,sp
1c009090:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c009094:	c29c                	sw	a5,0(a3)
1c009096:	8f070693          	addi	a3,a4,-1808
1c00909a:	405b07b7          	lui	a5,0x405b0
1c00909e:	968a                	add	a3,a3,sp
1c0090a0:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c0090a4:	c29c                	sw	a5,0(a3)
1c0090a6:	8f470693          	addi	a3,a4,-1804
1c0090aa:	433bd7b7          	lui	a5,0x433bd
1c0090ae:	968a                	add	a3,a3,sp
1c0090b0:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c0090b4:	c29c                	sw	a5,0(a3)
1c0090b6:	8f870693          	addi	a3,a4,-1800
1c0090ba:	a45f47b7          	lui	a5,0xa45f4
1c0090be:	968a                	add	a3,a3,sp
1c0090c0:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c0090c4:	c29c                	sw	a5,0(a3)
1c0090c6:	8fc70713          	addi	a4,a4,-1796
1c0090ca:	8d6c47b7          	lui	a5,0x8d6c4
1c0090ce:	970a                	add	a4,a4,sp
1c0090d0:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c0090d4:	46010613          	addi	a2,sp,1120
1c0090d8:	c31c                	sw	a5,0(a4)
1c0090da:	85a6                	mv	a1,s1
1c0090dc:	8522                	mv	a0,s0
1c0090de:	517010ef          	jal	ra,1c00adf4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>
1c0090e2:	1c000537          	lui	a0,0x1c000
1c0090e6:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0090ea:	754020ef          	jal	ra,1c00b83e <puts>
1c0090ee:	1c000537          	lui	a0,0x1c000
1c0090f2:	13850513          	addi	a0,a0,312 # 1c000138 <__clz_tab+0x11c>
1c0090f6:	748020ef          	jal	ra,1c00b83e <puts>
1c0090fa:	44000593          	li	a1,1088
1c0090fe:	8522                	mv	a0,s0
1c009100:	854ff0ef          	jal	ra,1c008154 <printbytes>
1c009104:	1c000537          	lui	a0,0x1c000
1c009108:	14050513          	addi	a0,a0,320 # 1c000140 <__clz_tab+0x124>
1c00910c:	732020ef          	jal	ra,1c00b83e <puts>
1c009110:	8526                	mv	a0,s1
1c009112:	02000593          	li	a1,32
1c009116:	83eff0ef          	jal	ra,1c008154 <printbytes>
1c00911a:	6115                	addi	sp,sp,288
1c00911c:	7ec12083          	lw	ra,2028(sp)
1c009120:	7e812403          	lw	s0,2024(sp)
1c009124:	7e412483          	lw	s1,2020(sp)
1c009128:	4501                	li	a0,0
1c00912a:	7f010113          	addi	sp,sp,2032
1c00912e:	8082                	ret

1c009130 <pos_fll_init>:
1c009130:	1101                	addi	sp,sp,-32
1c009132:	1a1005b7          	lui	a1,0x1a100
1c009136:	c64e                	sw	s3,12(sp)
1c009138:	00451613          	slli	a2,a0,0x4
1c00913c:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c009140:	99b2                	add	s3,s3,a2
1c009142:	0009a703          	lw	a4,0(s3)
1c009146:	ca26                	sw	s1,20(sp)
1c009148:	ce06                	sw	ra,28(sp)
1c00914a:	cc22                	sw	s0,24(sp)
1c00914c:	c84a                	sw	s2,16(sp)
1c00914e:	c452                	sw	s4,8(sp)
1c009150:	84aa                	mv	s1,a0
1c009152:	87ba                	mv	a5,a4
1c009154:	04074763          	bltz	a4,1c0091a2 <pos_fll_init+0x72>
1c009158:	00858693          	addi	a3,a1,8
1c00915c:	96b2                	add	a3,a3,a2
1c00915e:	429c                	lw	a5,0(a3)
1c009160:	f0000537          	lui	a0,0xf0000
1c009164:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c009168:	8fe9                	and	a5,a5,a0
1c00916a:	00502537          	lui	a0,0x502
1c00916e:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c009172:	8fc9                	or	a5,a5,a0
1c009174:	05b1                	addi	a1,a1,12
1c009176:	c29c                	sw	a5,0(a3)
1c009178:	962e                	add	a2,a2,a1
1c00917a:	4214                	lw	a3,0(a2)
1c00917c:	fc0107b7          	lui	a5,0xfc010
1c009180:	17fd                	addi	a5,a5,-1
1c009182:	01875593          	srli	a1,a4,0x18
1c009186:	8efd                	and	a3,a3,a5
1c009188:	0c05e593          	ori	a1,a1,192
1c00918c:	00871793          	slli	a5,a4,0x8
1c009190:	014c0537          	lui	a0,0x14c0
1c009194:	8ec9                	or	a3,a3,a0
1c009196:	05e2                	slli	a1,a1,0x18
1c009198:	83a1                	srli	a5,a5,0x8
1c00919a:	c214                	sw	a3,0(a2)
1c00919c:	8fcd                	or	a5,a5,a1
1c00919e:	00f9a023          	sw	a5,0(s3)
1c0091a2:	1c006437          	lui	s0,0x1c006
1c0091a6:	18440413          	addi	s0,s0,388 # 1c006184 <pos_fll_freq>
1c0091aa:	00249a13          	slli	s4,s1,0x2
1c0091ae:	014406b3          	add	a3,s0,s4
1c0091b2:	0006a903          	lw	s2,0(a3)
1c0091b6:	02091d63          	bnez	s2,1c0091f0 <pos_fll_init+0xc0>
1c0091ba:	83e9                	srli	a5,a5,0x1a
1c0091bc:	0742                	slli	a4,a4,0x10
1c0091be:	8341                	srli	a4,a4,0x10
1c0091c0:	8bbd                	andi	a5,a5,15
1c0091c2:	073e                	slli	a4,a4,0xf
1c0091c4:	17fd                	addi	a5,a5,-1
1c0091c6:	00f75933          	srl	s2,a4,a5
1c0091ca:	0126a023          	sw	s2,0(a3)
1c0091ce:	1c0066b7          	lui	a3,0x1c006
1c0091d2:	18068693          	addi	a3,a3,384 # 1c006180 <pos_fll_is_on>
1c0091d6:	96a6                	add	a3,a3,s1
1c0091d8:	4785                	li	a5,1
1c0091da:	00f68023          	sb	a5,0(a3)
1c0091de:	40f2                	lw	ra,28(sp)
1c0091e0:	4462                	lw	s0,24(sp)
1c0091e2:	44d2                	lw	s1,20(sp)
1c0091e4:	49b2                	lw	s3,12(sp)
1c0091e6:	4a22                	lw	s4,8(sp)
1c0091e8:	854a                	mv	a0,s2
1c0091ea:	4942                	lw	s2,16(sp)
1c0091ec:	6105                	addi	sp,sp,32
1c0091ee:	8082                	ret
1c0091f0:	854a                	mv	a0,s2
1c0091f2:	f17fe0ef          	jal	ra,1c008108 <__clzsi2>
1c0091f6:	1579                	addi	a0,a0,-2
1c0091f8:	8105                	srli	a0,a0,0x1
1c0091fa:	c939                	beqz	a0,1c009250 <pos_fll_init+0x120>
1c0091fc:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c009200:	1c0066b7          	lui	a3,0x1c006
1c009204:	4785                	li	a5,1
1c009206:	00c797b3          	sll	a5,a5,a2
1c00920a:	00a91733          	sll	a4,s2,a0
1c00920e:	18068693          	addi	a3,a3,384 # 1c006180 <pos_fll_is_on>
1c009212:	7661                	lui	a2,0xffff8
1c009214:	8e79                	and	a2,a2,a4
1c009216:	009685b3          	add	a1,a3,s1
1c00921a:	97b2                	add	a5,a5,a2
1c00921c:	0005c603          	lbu	a2,0(a1)
1c009220:	9452                	add	s0,s0,s4
1c009222:	00a7d7b3          	srl	a5,a5,a0
1c009226:	c01c                	sw	a5,0(s0)
1c009228:	d65d                	beqz	a2,1c0091d6 <pos_fll_init+0xa6>
1c00922a:	0009a783          	lw	a5,0(s3)
1c00922e:	833d                	srli	a4,a4,0xf
1c009230:	0742                	slli	a4,a4,0x10
1c009232:	7641                	lui	a2,0xffff0
1c009234:	8341                	srli	a4,a4,0x10
1c009236:	8ff1                	and	a5,a5,a2
1c009238:	8fd9                	or	a5,a5,a4
1c00923a:	0505                	addi	a0,a0,1
1c00923c:	c4000737          	lui	a4,0xc4000
1c009240:	893d                	andi	a0,a0,15
1c009242:	177d                	addi	a4,a4,-1
1c009244:	056a                	slli	a0,a0,0x1a
1c009246:	8ff9                	and	a5,a5,a4
1c009248:	8d5d                	or	a0,a0,a5
1c00924a:	00a9a023          	sw	a0,0(s3)
1c00924e:	b761                	j	1c0091d6 <pos_fll_init+0xa6>
1c009250:	4505                	li	a0,1
1c009252:	b76d                	j	1c0091fc <pos_fll_init+0xcc>

1c009254 <pos_fll_constructor>:
1c009254:	1c0067b7          	lui	a5,0x1c006
1c009258:	18478793          	addi	a5,a5,388 # 1c006184 <pos_fll_freq>
1c00925c:	0007a023          	sw	zero,0(a5)
1c009260:	0007a223          	sw	zero,4(a5)
1c009264:	1c0067b7          	lui	a5,0x1c006
1c009268:	18079023          	sh	zero,384(a5) # 1c006180 <pos_fll_is_on>
1c00926c:	8082                	ret

1c00926e <pos_soc_init>:
1c00926e:	1141                	addi	sp,sp,-16
1c009270:	c606                	sw	ra,12(sp)
1c009272:	c422                	sw	s0,8(sp)
1c009274:	37c5                	jal	1c009254 <pos_fll_constructor>
1c009276:	4501                	li	a0,0
1c009278:	3d65                	jal	1c009130 <pos_fll_init>
1c00927a:	1c006437          	lui	s0,0x1c006
1c00927e:	87aa                	mv	a5,a0
1c009280:	18c40413          	addi	s0,s0,396 # 1c00618c <pos_freq_domains>
1c009284:	4505                	li	a0,1
1c009286:	c01c                	sw	a5,0(s0)
1c009288:	3565                	jal	1c009130 <pos_fll_init>
1c00928a:	40b2                	lw	ra,12(sp)
1c00928c:	c408                	sw	a0,8(s0)
1c00928e:	4422                	lw	s0,8(sp)
1c009290:	0141                	addi	sp,sp,16
1c009292:	8082                	ret

1c009294 <KeccakF1600_StatePermute>:
1c009294:	1a400837          	lui	a6,0x1a400
1c009298:	87aa                	mv	a5,a0
1c00929a:	0c850613          	addi	a2,a0,200
1c00929e:	1141                	addi	sp,sp,-16
1c0092a0:	40a80533          	sub	a0,a6,a0
1c0092a4:	4394                	lw	a3,0(a5)
1c0092a6:	00f50733          	add	a4,a0,a5
1c0092aa:	0791                	addi	a5,a5,4
1c0092ac:	c314                	sw	a3,0(a4)
1c0092ae:	fec79be3          	bne	a5,a2,1c0092a4 <KeccakF1600_StatePermute+0x10>
1c0092b2:	4785                	li	a5,1
1c0092b4:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c0092b8:	1a400737          	lui	a4,0x1a400
1c0092bc:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0092c0:	8b85                	andi	a5,a5,1
1c0092c2:	dfed                	beqz	a5,1c0092bc <KeccakF1600_StatePermute+0x28>
1c0092c4:	c602                	sw	zero,12(sp)
1c0092c6:	4732                	lw	a4,12(sp)
1c0092c8:	03100793          	li	a5,49
1c0092cc:	02e7c663          	blt	a5,a4,1c0092f8 <KeccakF1600_StatePermute+0x64>
1c0092d0:	1a400637          	lui	a2,0x1a400
1c0092d4:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0092d8:	03100513          	li	a0,49
1c0092dc:	4732                	lw	a4,12(sp)
1c0092de:	47b2                	lw	a5,12(sp)
1c0092e0:	070a                	slli	a4,a4,0x2
1c0092e2:	9732                	add	a4,a4,a2
1c0092e4:	4314                	lw	a3,0(a4)
1c0092e6:	4732                	lw	a4,12(sp)
1c0092e8:	078a                	slli	a5,a5,0x2
1c0092ea:	97ae                	add	a5,a5,a1
1c0092ec:	0705                	addi	a4,a4,1
1c0092ee:	c63a                	sw	a4,12(sp)
1c0092f0:	4732                	lw	a4,12(sp)
1c0092f2:	c394                	sw	a3,0(a5)
1c0092f4:	fee554e3          	bge	a0,a4,1c0092dc <KeccakF1600_StatePermute+0x48>
1c0092f8:	0141                	addi	sp,sp,16
1c0092fa:	8082                	ret

1c0092fc <KYBER_poly_ntt>:
1c0092fc:	1a4007b7          	lui	a5,0x1a400
1c009300:	40000713          	li	a4,1024
1c009304:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009308:	3007a423          	sw	zero,776(a5)
1c00930c:	4705                	li	a4,1
1c00930e:	30e7a423          	sw	a4,776(a5)
1c009312:	3007a423          	sw	zero,776(a5)
1c009316:	20050693          	addi	a3,a0,512
1c00931a:	1a400737          	lui	a4,0x1a400
1c00931e:	411c                	lw	a5,0(a0)
1c009320:	0511                	addi	a0,a0,4
1c009322:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009326:	fed51ce3          	bne	a0,a3,1c00931e <KYBER_poly_ntt+0x22>
1c00932a:	08000793          	li	a5,128
1c00932e:	30f72423          	sw	a5,776(a4)
1c009332:	30072423          	sw	zero,776(a4)
1c009336:	1a400737          	lui	a4,0x1a400
1c00933a:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00933e:	8b85                	andi	a5,a5,1
1c009340:	dfed                	beqz	a5,1c00933a <KYBER_poly_ntt+0x3e>
1c009342:	47c1                	li	a5,16
1c009344:	30f72423          	sw	a5,776(a4)
1c009348:	30072423          	sw	zero,776(a4)
1c00934c:	20058693          	addi	a3,a1,512
1c009350:	1a400737          	lui	a4,0x1a400
1c009354:	0001                	nop
1c009356:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00935a:	0591                	addi	a1,a1,4
1c00935c:	fef5ae23          	sw	a5,-4(a1)
1c009360:	fed59ae3          	bne	a1,a3,1c009354 <KYBER_poly_ntt+0x58>
1c009364:	8082                	ret

1c009366 <KYBER_poly_intt>:
1c009366:	1a4007b7          	lui	a5,0x1a400
1c00936a:	40000713          	li	a4,1024
1c00936e:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009372:	3007a423          	sw	zero,776(a5)
1c009376:	4709                	li	a4,2
1c009378:	30e7a423          	sw	a4,776(a5)
1c00937c:	3007a423          	sw	zero,776(a5)
1c009380:	20050693          	addi	a3,a0,512
1c009384:	1a400737          	lui	a4,0x1a400
1c009388:	411c                	lw	a5,0(a0)
1c00938a:	0511                	addi	a0,a0,4
1c00938c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009390:	fed51ce3          	bne	a0,a3,1c009388 <KYBER_poly_intt+0x22>
1c009394:	20000793          	li	a5,512
1c009398:	30f72423          	sw	a5,776(a4)
1c00939c:	30072423          	sw	zero,776(a4)
1c0093a0:	1a400737          	lui	a4,0x1a400
1c0093a4:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c0093a8:	8b85                	andi	a5,a5,1
1c0093aa:	dfed                	beqz	a5,1c0093a4 <KYBER_poly_intt+0x3e>
1c0093ac:	47c1                	li	a5,16
1c0093ae:	30f72423          	sw	a5,776(a4)
1c0093b2:	30072423          	sw	zero,776(a4)
1c0093b6:	20058693          	addi	a3,a1,512
1c0093ba:	1a400737          	lui	a4,0x1a400
1c0093be:	0001                	nop
1c0093c0:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c0093c4:	0591                	addi	a1,a1,4
1c0093c6:	fef5ae23          	sw	a5,-4(a1)
1c0093ca:	fed59ae3          	bne	a1,a3,1c0093be <KYBER_poly_intt+0x58>
1c0093ce:	8082                	ret

1c0093d0 <KYBER_poly_pwm>:
1c0093d0:	1a4007b7          	lui	a5,0x1a400
1c0093d4:	40000713          	li	a4,1024
1c0093d8:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c0093dc:	3007a423          	sw	zero,776(a5)
1c0093e0:	4709                	li	a4,2
1c0093e2:	30e7a423          	sw	a4,776(a5)
1c0093e6:	3007a423          	sw	zero,776(a5)
1c0093ea:	20058693          	addi	a3,a1,512
1c0093ee:	1a400737          	lui	a4,0x1a400
1c0093f2:	419c                	lw	a5,0(a1)
1c0093f4:	0591                	addi	a1,a1,4
1c0093f6:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c0093fa:	fed59ce3          	bne	a1,a3,1c0093f2 <KYBER_poly_pwm+0x22>
1c0093fe:	47a1                	li	a5,8
1c009400:	30f72423          	sw	a5,776(a4)
1c009404:	30072423          	sw	zero,776(a4)
1c009408:	20060693          	addi	a3,a2,512
1c00940c:	1a400737          	lui	a4,0x1a400
1c009410:	421c                	lw	a5,0(a2)
1c009412:	0611                	addi	a2,a2,4
1c009414:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009418:	fec69ce3          	bne	a3,a2,1c009410 <KYBER_poly_pwm+0x40>
1c00941c:	10000793          	li	a5,256
1c009420:	30f72423          	sw	a5,776(a4)
1c009424:	30072423          	sw	zero,776(a4)
1c009428:	1a400737          	lui	a4,0x1a400
1c00942c:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009430:	8b85                	andi	a5,a5,1
1c009432:	dfed                	beqz	a5,1c00942c <KYBER_poly_pwm+0x5c>
1c009434:	47c1                	li	a5,16
1c009436:	30f72423          	sw	a5,776(a4)
1c00943a:	30072423          	sw	zero,776(a4)
1c00943e:	20050693          	addi	a3,a0,512
1c009442:	1a400737          	lui	a4,0x1a400
1c009446:	0001                	nop
1c009448:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00944c:	0511                	addi	a0,a0,4
1c00944e:	fef52e23          	sw	a5,-4(a0)
1c009452:	fed51ae3          	bne	a0,a3,1c009446 <KYBER_poly_pwm+0x76>
1c009456:	8082                	ret

1c009458 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c009458:	1101                	addi	sp,sp,-32
1c00945a:	55555f37          	lui	t5,0x55555
1c00945e:	ce22                	sw	s0,28(sp)
1c009460:	cc26                	sw	s1,24(sp)
1c009462:	ca4a                	sw	s2,20(sp)
1c009464:	c84e                	sw	s3,16(sp)
1c009466:	c652                	sw	s4,12(sp)
1c009468:	20050f93          	addi	t6,a0,512
1c00946c:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009470:	0015c683          	lbu	a3,1(a1)
1c009474:	0005c603          	lbu	a2,0(a1)
1c009478:	0025c783          	lbu	a5,2(a1)
1c00947c:	0035c703          	lbu	a4,3(a1)
1c009480:	06a2                	slli	a3,a3,0x8
1c009482:	8ed1                	or	a3,a3,a2
1c009484:	07c2                	slli	a5,a5,0x10
1c009486:	8fd5                	or	a5,a5,a3
1c009488:	0762                	slli	a4,a4,0x18
1c00948a:	8f5d                	or	a4,a4,a5
1c00948c:	00175793          	srli	a5,a4,0x1
1c009490:	01e7f7b3          	and	a5,a5,t5
1c009494:	01e77733          	and	a4,a4,t5
1c009498:	97ba                	add	a5,a5,a4
1c00949a:	0027da13          	srli	s4,a5,0x2
1c00949e:	0047d313          	srli	t1,a5,0x4
1c0094a2:	0067d993          	srli	s3,a5,0x6
1c0094a6:	0087d893          	srli	a7,a5,0x8
1c0094aa:	00a7d913          	srli	s2,a5,0xa
1c0094ae:	00c7d813          	srli	a6,a5,0xc
1c0094b2:	00e7d493          	srli	s1,a5,0xe
1c0094b6:	0107d613          	srli	a2,a5,0x10
1c0094ba:	0127d413          	srli	s0,a5,0x12
1c0094be:	0147d693          	srli	a3,a5,0x14
1c0094c2:	0167d393          	srli	t2,a5,0x16
1c0094c6:	0187d713          	srli	a4,a5,0x18
1c0094ca:	01a7d293          	srli	t0,a5,0x1a
1c0094ce:	01c7de93          	srli	t4,a5,0x1c
1c0094d2:	0037fe13          	andi	t3,a5,3
1c0094d6:	003a7a13          	andi	s4,s4,3
1c0094da:	00337313          	andi	t1,t1,3
1c0094de:	0039f993          	andi	s3,s3,3
1c0094e2:	0038f893          	andi	a7,a7,3
1c0094e6:	00397913          	andi	s2,s2,3
1c0094ea:	00387813          	andi	a6,a6,3
1c0094ee:	888d                	andi	s1,s1,3
1c0094f0:	8a0d                	andi	a2,a2,3
1c0094f2:	880d                	andi	s0,s0,3
1c0094f4:	8a8d                	andi	a3,a3,3
1c0094f6:	0033f393          	andi	t2,t2,3
1c0094fa:	8b0d                	andi	a4,a4,3
1c0094fc:	0032f293          	andi	t0,t0,3
1c009500:	003efe93          	andi	t4,t4,3
1c009504:	83f9                	srli	a5,a5,0x1e
1c009506:	414e0e33          	sub	t3,t3,s4
1c00950a:	41330333          	sub	t1,t1,s3
1c00950e:	412888b3          	sub	a7,a7,s2
1c009512:	40980833          	sub	a6,a6,s1
1c009516:	8e01                	sub	a2,a2,s0
1c009518:	407686b3          	sub	a3,a3,t2
1c00951c:	40570733          	sub	a4,a4,t0
1c009520:	40fe87b3          	sub	a5,t4,a5
1c009524:	01c51023          	sh	t3,0(a0)
1c009528:	00651123          	sh	t1,2(a0)
1c00952c:	01151223          	sh	a7,4(a0)
1c009530:	01051323          	sh	a6,6(a0)
1c009534:	00c51423          	sh	a2,8(a0)
1c009538:	00d51523          	sh	a3,10(a0)
1c00953c:	00e51623          	sh	a4,12(a0)
1c009540:	00f51723          	sh	a5,14(a0)
1c009544:	0541                	addi	a0,a0,16
1c009546:	0591                	addi	a1,a1,4
1c009548:	f3f514e3          	bne	a0,t6,1c009470 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c00954c:	4472                	lw	s0,28(sp)
1c00954e:	44e2                	lw	s1,24(sp)
1c009550:	4952                	lw	s2,20(sp)
1c009552:	49c2                	lw	s3,16(sp)
1c009554:	4a32                	lw	s4,12(sp)
1c009556:	6105                	addi	sp,sp,32
1c009558:	8082                	ret

1c00955a <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>:
1c00955a:	1101                	addi	sp,sp,-32
1c00955c:	55555f37          	lui	t5,0x55555
1c009560:	ce22                	sw	s0,28(sp)
1c009562:	cc26                	sw	s1,24(sp)
1c009564:	ca4a                	sw	s2,20(sp)
1c009566:	c84e                	sw	s3,16(sp)
1c009568:	c652                	sw	s4,12(sp)
1c00956a:	20050f93          	addi	t6,a0,512
1c00956e:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009572:	0015c683          	lbu	a3,1(a1)
1c009576:	0005c603          	lbu	a2,0(a1)
1c00957a:	0025c783          	lbu	a5,2(a1)
1c00957e:	0035c703          	lbu	a4,3(a1)
1c009582:	06a2                	slli	a3,a3,0x8
1c009584:	8ed1                	or	a3,a3,a2
1c009586:	07c2                	slli	a5,a5,0x10
1c009588:	8fd5                	or	a5,a5,a3
1c00958a:	0762                	slli	a4,a4,0x18
1c00958c:	8f5d                	or	a4,a4,a5
1c00958e:	00175793          	srli	a5,a4,0x1
1c009592:	01e7f7b3          	and	a5,a5,t5
1c009596:	01e77733          	and	a4,a4,t5
1c00959a:	97ba                	add	a5,a5,a4
1c00959c:	0027da13          	srli	s4,a5,0x2
1c0095a0:	0047d313          	srli	t1,a5,0x4
1c0095a4:	0067d993          	srli	s3,a5,0x6
1c0095a8:	0087d893          	srli	a7,a5,0x8
1c0095ac:	00a7d913          	srli	s2,a5,0xa
1c0095b0:	00c7d813          	srli	a6,a5,0xc
1c0095b4:	00e7d493          	srli	s1,a5,0xe
1c0095b8:	0107d613          	srli	a2,a5,0x10
1c0095bc:	0127d413          	srli	s0,a5,0x12
1c0095c0:	0147d693          	srli	a3,a5,0x14
1c0095c4:	0167d393          	srli	t2,a5,0x16
1c0095c8:	0187d713          	srli	a4,a5,0x18
1c0095cc:	01a7d293          	srli	t0,a5,0x1a
1c0095d0:	01c7de93          	srli	t4,a5,0x1c
1c0095d4:	0037fe13          	andi	t3,a5,3
1c0095d8:	003a7a13          	andi	s4,s4,3
1c0095dc:	00337313          	andi	t1,t1,3
1c0095e0:	0039f993          	andi	s3,s3,3
1c0095e4:	0038f893          	andi	a7,a7,3
1c0095e8:	00397913          	andi	s2,s2,3
1c0095ec:	00387813          	andi	a6,a6,3
1c0095f0:	888d                	andi	s1,s1,3
1c0095f2:	8a0d                	andi	a2,a2,3
1c0095f4:	880d                	andi	s0,s0,3
1c0095f6:	8a8d                	andi	a3,a3,3
1c0095f8:	0033f393          	andi	t2,t2,3
1c0095fc:	8b0d                	andi	a4,a4,3
1c0095fe:	0032f293          	andi	t0,t0,3
1c009602:	003efe93          	andi	t4,t4,3
1c009606:	83f9                	srli	a5,a5,0x1e
1c009608:	414e0e33          	sub	t3,t3,s4
1c00960c:	41330333          	sub	t1,t1,s3
1c009610:	412888b3          	sub	a7,a7,s2
1c009614:	40980833          	sub	a6,a6,s1
1c009618:	8e01                	sub	a2,a2,s0
1c00961a:	407686b3          	sub	a3,a3,t2
1c00961e:	40570733          	sub	a4,a4,t0
1c009622:	40fe87b3          	sub	a5,t4,a5
1c009626:	01c51023          	sh	t3,0(a0)
1c00962a:	00651123          	sh	t1,2(a0)
1c00962e:	01151223          	sh	a7,4(a0)
1c009632:	01051323          	sh	a6,6(a0)
1c009636:	00c51423          	sh	a2,8(a0)
1c00963a:	00d51523          	sh	a3,10(a0)
1c00963e:	00e51623          	sh	a4,12(a0)
1c009642:	00f51723          	sh	a5,14(a0)
1c009646:	0541                	addi	a0,a0,16
1c009648:	0591                	addi	a1,a1,4
1c00964a:	f3f514e3          	bne	a0,t6,1c009572 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2+0x18>
1c00964e:	4472                	lw	s0,28(sp)
1c009650:	44e2                	lw	s1,24(sp)
1c009652:	4952                	lw	s2,20(sp)
1c009654:	49c2                	lw	s3,16(sp)
1c009656:	4a32                	lw	s4,12(sp)
1c009658:	6105                	addi	sp,sp,32
1c00965a:	8082                	ret

1c00965c <keccak_absorb.constprop.1>:
1c00965c:	7151                	addi	sp,sp,-240
1c00965e:	d3a6                	sw	s1,228(sp)
1c009660:	cfce                	sw	s3,220(sp)
1c009662:	cdd2                	sw	s4,216(sp)
1c009664:	cbd6                	sw	s5,212(sp)
1c009666:	84b6                	mv	s1,a3
1c009668:	d786                	sw	ra,236(sp)
1c00966a:	d5a2                	sw	s0,232(sp)
1c00966c:	d1ca                	sw	s2,224(sp)
1c00966e:	c9da                	sw	s6,208(sp)
1c009670:	8a2a                	mv	s4,a0
1c009672:	87ae                	mv	a5,a1
1c009674:	8ab2                	mv	s5,a2
1c009676:	89aa                	mv	s3,a0
1c009678:	0c850693          	addi	a3,a0,200
1c00967c:	872a                	mv	a4,a0
1c00967e:	4581                	li	a1,0
1c009680:	4601                	li	a2,0
1c009682:	c30c                	sw	a1,0(a4)
1c009684:	c350                	sw	a2,4(a4)
1c009686:	0721                	addi	a4,a4,8
1c009688:	fee69be3          	bne	a3,a4,1c00967e <keccak_absorb.constprop.1+0x22>
1c00968c:	08700713          	li	a4,135
1c009690:	09577363          	bgeu	a4,s5,1c009716 <keccak_absorb.constprop.1+0xba>
1c009694:	08878b13          	addi	s6,a5,136
1c009698:	895a                	mv	s2,s6
1c00969a:	08700413          	li	s0,135
1c00969e:	86d2                	mv	a3,s4
1c0096a0:	0017c703          	lbu	a4,1(a5)
1c0096a4:	0027ce03          	lbu	t3,2(a5)
1c0096a8:	0057c803          	lbu	a6,5(a5)
1c0096ac:	0047cf03          	lbu	t5,4(a5)
1c0096b0:	0067c503          	lbu	a0,6(a5)
1c0096b4:	0007ce83          	lbu	t4,0(a5)
1c0096b8:	0037c583          	lbu	a1,3(a5)
1c0096bc:	0077c603          	lbu	a2,7(a5)
1c0096c0:	0722                	slli	a4,a4,0x8
1c0096c2:	0e42                	slli	t3,t3,0x10
1c0096c4:	0822                	slli	a6,a6,0x8
1c0096c6:	0006a303          	lw	t1,0(a3)
1c0096ca:	0046a883          	lw	a7,4(a3)
1c0096ce:	01c76733          	or	a4,a4,t3
1c0096d2:	01e86833          	or	a6,a6,t5
1c0096d6:	0542                	slli	a0,a0,0x10
1c0096d8:	01d76733          	or	a4,a4,t4
1c0096dc:	05e2                	slli	a1,a1,0x18
1c0096de:	01056533          	or	a0,a0,a6
1c0096e2:	0662                	slli	a2,a2,0x18
1c0096e4:	8f4d                	or	a4,a4,a1
1c0096e6:	8e49                	or	a2,a2,a0
1c0096e8:	00e34733          	xor	a4,t1,a4
1c0096ec:	00c8c633          	xor	a2,a7,a2
1c0096f0:	c298                	sw	a4,0(a3)
1c0096f2:	c2d0                	sw	a2,4(a3)
1c0096f4:	07a1                	addi	a5,a5,8
1c0096f6:	06a1                	addi	a3,a3,8
1c0096f8:	faf914e3          	bne	s2,a5,1c0096a0 <keccak_absorb.constprop.1+0x44>
1c0096fc:	85d2                	mv	a1,s4
1c0096fe:	8552                	mv	a0,s4
1c009700:	3e51                	jal	1c009294 <KeccakF1600_StatePermute>
1c009702:	f78a8a93          	addi	s5,s5,-136
1c009706:	08890913          	addi	s2,s2,136
1c00970a:	87da                	mv	a5,s6
1c00970c:	01547563          	bgeu	s0,s5,1c009716 <keccak_absorb.constprop.1+0xba>
1c009710:	088b0b13          	addi	s6,s6,136
1c009714:	b769                	j	1c00969e <keccak_absorb.constprop.1+0x42>
1c009716:	0038                	addi	a4,sp,8
1c009718:	09010e13          	addi	t3,sp,144
1c00971c:	86ba                	mv	a3,a4
1c00971e:	0006a023          	sw	zero,0(a3)
1c009722:	0691                	addi	a3,a3,4
1c009724:	fede1de3          	bne	t3,a3,1c00971e <keccak_absorb.constprop.1+0xc2>
1c009728:	080a8263          	beqz	s5,1c0097ac <keccak_absorb.constprop.1+0x150>
1c00972c:	fffa8693          	addi	a3,s5,-1
1c009730:	4609                	li	a2,2
1c009732:	10d67163          	bgeu	a2,a3,1c009834 <keccak_absorb.constprop.1+0x1d8>
1c009736:	ffcaf313          	andi	t1,s5,-4
1c00973a:	86be                	mv	a3,a5
1c00973c:	933e                	add	t1,t1,a5
1c00973e:	883a                	mv	a6,a4
1c009740:	0016c503          	lbu	a0,1(a3)
1c009744:	0006c883          	lbu	a7,0(a3)
1c009748:	0026c583          	lbu	a1,2(a3)
1c00974c:	0036c603          	lbu	a2,3(a3)
1c009750:	0522                	slli	a0,a0,0x8
1c009752:	01156533          	or	a0,a0,a7
1c009756:	05c2                	slli	a1,a1,0x10
1c009758:	8dc9                	or	a1,a1,a0
1c00975a:	0662                	slli	a2,a2,0x18
1c00975c:	8e4d                	or	a2,a2,a1
1c00975e:	00c82023          	sw	a2,0(a6)
1c009762:	0691                	addi	a3,a3,4
1c009764:	0811                	addi	a6,a6,4
1c009766:	fcd31de3          	bne	t1,a3,1c009740 <keccak_absorb.constprop.1+0xe4>
1c00976a:	ffcaf693          	andi	a3,s5,-4
1c00976e:	02da8f63          	beq	s5,a3,1c0097ac <keccak_absorb.constprop.1+0x150>
1c009772:	00d78633          	add	a2,a5,a3
1c009776:	00064503          	lbu	a0,0(a2)
1c00977a:	098c                	addi	a1,sp,208
1c00977c:	95b6                	add	a1,a1,a3
1c00977e:	00168613          	addi	a2,a3,1
1c009782:	f2a58c23          	sb	a0,-200(a1)
1c009786:	03567363          	bgeu	a2,s5,1c0097ac <keccak_absorb.constprop.1+0x150>
1c00978a:	00c785b3          	add	a1,a5,a2
1c00978e:	0005c583          	lbu	a1,0(a1)
1c009792:	0988                	addi	a0,sp,208
1c009794:	962a                	add	a2,a2,a0
1c009796:	0689                	addi	a3,a3,2
1c009798:	f2b60c23          	sb	a1,-200(a2)
1c00979c:	0156f863          	bgeu	a3,s5,1c0097ac <keccak_absorb.constprop.1+0x150>
1c0097a0:	97b6                	add	a5,a5,a3
1c0097a2:	0007c783          	lbu	a5,0(a5)
1c0097a6:	96aa                	add	a3,a3,a0
1c0097a8:	f2f68c23          	sb	a5,-200(a3)
1c0097ac:	099c                	addi	a5,sp,208
1c0097ae:	9abe                	add	s5,s5,a5
1c0097b0:	f29a8c23          	sb	s1,-200(s5)
1c0097b4:	08f14783          	lbu	a5,143(sp)
1c0097b8:	f807e793          	ori	a5,a5,-128
1c0097bc:	08f107a3          	sb	a5,143(sp)
1c0097c0:	00174783          	lbu	a5,1(a4)
1c0097c4:	00274303          	lbu	t1,2(a4)
1c0097c8:	00574503          	lbu	a0,5(a4)
1c0097cc:	00474f03          	lbu	t5,4(a4)
1c0097d0:	00674583          	lbu	a1,6(a4)
1c0097d4:	00074e83          	lbu	t4,0(a4)
1c0097d8:	00374603          	lbu	a2,3(a4)
1c0097dc:	00774683          	lbu	a3,7(a4)
1c0097e0:	07a2                	slli	a5,a5,0x8
1c0097e2:	0342                	slli	t1,t1,0x10
1c0097e4:	0522                	slli	a0,a0,0x8
1c0097e6:	0009a883          	lw	a7,0(s3)
1c0097ea:	0049a803          	lw	a6,4(s3)
1c0097ee:	0067e7b3          	or	a5,a5,t1
1c0097f2:	01e56533          	or	a0,a0,t5
1c0097f6:	05c2                	slli	a1,a1,0x10
1c0097f8:	01d7e7b3          	or	a5,a5,t4
1c0097fc:	0662                	slli	a2,a2,0x18
1c0097fe:	8dc9                	or	a1,a1,a0
1c009800:	06e2                	slli	a3,a3,0x18
1c009802:	8e5d                	or	a2,a2,a5
1c009804:	00b6e7b3          	or	a5,a3,a1
1c009808:	00c8c633          	xor	a2,a7,a2
1c00980c:	00f847b3          	xor	a5,a6,a5
1c009810:	00c9a023          	sw	a2,0(s3)
1c009814:	00f9a223          	sw	a5,4(s3)
1c009818:	0721                	addi	a4,a4,8
1c00981a:	09a1                	addi	s3,s3,8
1c00981c:	faee12e3          	bne	t3,a4,1c0097c0 <keccak_absorb.constprop.1+0x164>
1c009820:	50be                	lw	ra,236(sp)
1c009822:	542e                	lw	s0,232(sp)
1c009824:	549e                	lw	s1,228(sp)
1c009826:	590e                	lw	s2,224(sp)
1c009828:	49fe                	lw	s3,220(sp)
1c00982a:	4a6e                	lw	s4,216(sp)
1c00982c:	4ade                	lw	s5,212(sp)
1c00982e:	4b4e                	lw	s6,208(sp)
1c009830:	616d                	addi	sp,sp,240
1c009832:	8082                	ret
1c009834:	4681                	li	a3,0
1c009836:	bf35                	j	1c009772 <keccak_absorb.constprop.1+0x116>

1c009838 <shake128_absorb>:
1c009838:	7151                	addi	sp,sp,-240
1c00983a:	cfce                	sw	s3,220(sp)
1c00983c:	89aa                	mv	s3,a0
1c00983e:	0c800513          	li	a0,200
1c009842:	d5a2                	sw	s0,232(sp)
1c009844:	d3a6                	sw	s1,228(sp)
1c009846:	d786                	sw	ra,236(sp)
1c009848:	d1ca                	sw	s2,224(sp)
1c00984a:	842e                	mv	s0,a1
1c00984c:	84b2                	mv	s1,a2
1c00984e:	1ca030ef          	jal	ra,1c00ca18 <pi_l2_malloc>
1c009852:	00a9a023          	sw	a0,0(s3)
1c009856:	1c050363          	beqz	a0,1c009a1c <shake128_absorb+0x1e4>
1c00985a:	892a                	mv	s2,a0
1c00985c:	0c850713          	addi	a4,a0,200
1c009860:	87aa                	mv	a5,a0
1c009862:	4601                	li	a2,0
1c009864:	4681                	li	a3,0
1c009866:	c390                	sw	a2,0(a5)
1c009868:	c3d4                	sw	a3,4(a5)
1c00986a:	07a1                	addi	a5,a5,8
1c00986c:	fef71be3          	bne	a4,a5,1c009862 <shake128_absorb+0x2a>
1c009870:	0a700793          	li	a5,167
1c009874:	0897f063          	bgeu	a5,s1,1c0098f4 <shake128_absorb+0xbc>
1c009878:	0a700993          	li	s3,167
1c00987c:	87a2                	mv	a5,s0
1c00987e:	40890eb3          	sub	t4,s2,s0
1c009882:	0a840413          	addi	s0,s0,168
1c009886:	0017c703          	lbu	a4,1(a5)
1c00988a:	0027ce03          	lbu	t3,2(a5)
1c00988e:	0057c503          	lbu	a0,5(a5)
1c009892:	0047cf83          	lbu	t6,4(a5)
1c009896:	0067c583          	lbu	a1,6(a5)
1c00989a:	0007cf03          	lbu	t5,0(a5)
1c00989e:	0037c603          	lbu	a2,3(a5)
1c0098a2:	0077c683          	lbu	a3,7(a5)
1c0098a6:	00fe8833          	add	a6,t4,a5
1c0098aa:	0722                	slli	a4,a4,0x8
1c0098ac:	0e42                	slli	t3,t3,0x10
1c0098ae:	0522                	slli	a0,a0,0x8
1c0098b0:	00082303          	lw	t1,0(a6)
1c0098b4:	00482883          	lw	a7,4(a6)
1c0098b8:	01c76733          	or	a4,a4,t3
1c0098bc:	01f56533          	or	a0,a0,t6
1c0098c0:	05c2                	slli	a1,a1,0x10
1c0098c2:	01e76733          	or	a4,a4,t5
1c0098c6:	0662                	slli	a2,a2,0x18
1c0098c8:	8dc9                	or	a1,a1,a0
1c0098ca:	06e2                	slli	a3,a3,0x18
1c0098cc:	8f51                	or	a4,a4,a2
1c0098ce:	8ecd                	or	a3,a3,a1
1c0098d0:	00e34733          	xor	a4,t1,a4
1c0098d4:	00d8c6b3          	xor	a3,a7,a3
1c0098d8:	00e82023          	sw	a4,0(a6)
1c0098dc:	00d82223          	sw	a3,4(a6)
1c0098e0:	07a1                	addi	a5,a5,8
1c0098e2:	faf412e3          	bne	s0,a5,1c009886 <shake128_absorb+0x4e>
1c0098e6:	f5848493          	addi	s1,s1,-168
1c0098ea:	85ca                	mv	a1,s2
1c0098ec:	854a                	mv	a0,s2
1c0098ee:	325d                	jal	1c009294 <KeccakF1600_StatePermute>
1c0098f0:	f899e6e3          	bltu	s3,s1,1c00987c <shake128_absorb+0x44>
1c0098f4:	0b010313          	addi	t1,sp,176
1c0098f8:	003c                	addi	a5,sp,8
1c0098fa:	0007a023          	sw	zero,0(a5)
1c0098fe:	0791                	addi	a5,a5,4
1c009900:	fef31de3          	bne	t1,a5,1c0098fa <shake128_absorb+0xc2>
1c009904:	c0d9                	beqz	s1,1c00998a <shake128_absorb+0x152>
1c009906:	fff48793          	addi	a5,s1,-1
1c00990a:	4709                	li	a4,2
1c00990c:	10f77663          	bgeu	a4,a5,1c009a18 <shake128_absorb+0x1e0>
1c009910:	ffc4f593          	andi	a1,s1,-4
1c009914:	87a2                	mv	a5,s0
1c009916:	95a2                	add	a1,a1,s0
1c009918:	0028                	addi	a0,sp,8
1c00991a:	0017c603          	lbu	a2,1(a5)
1c00991e:	0007c803          	lbu	a6,0(a5)
1c009922:	0027c683          	lbu	a3,2(a5)
1c009926:	0037c703          	lbu	a4,3(a5)
1c00992a:	0622                	slli	a2,a2,0x8
1c00992c:	01066633          	or	a2,a2,a6
1c009930:	06c2                	slli	a3,a3,0x10
1c009932:	8ed1                	or	a3,a3,a2
1c009934:	0762                	slli	a4,a4,0x18
1c009936:	8f55                	or	a4,a4,a3
1c009938:	c118                	sw	a4,0(a0)
1c00993a:	0791                	addi	a5,a5,4
1c00993c:	0511                	addi	a0,a0,4
1c00993e:	fcf59ee3          	bne	a1,a5,1c00991a <shake128_absorb+0xe2>
1c009942:	ffc4f793          	andi	a5,s1,-4
1c009946:	04f48263          	beq	s1,a5,1c00998a <shake128_absorb+0x152>
1c00994a:	00f40733          	add	a4,s0,a5
1c00994e:	00074603          	lbu	a2,0(a4)
1c009952:	0994                	addi	a3,sp,208
1c009954:	96be                	add	a3,a3,a5
1c009956:	00178713          	addi	a4,a5,1
1c00995a:	f2c68c23          	sb	a2,-200(a3)
1c00995e:	02977663          	bgeu	a4,s1,1c00998a <shake128_absorb+0x152>
1c009962:	00e406b3          	add	a3,s0,a4
1c009966:	0006c603          	lbu	a2,0(a3)
1c00996a:	0994                	addi	a3,sp,208
1c00996c:	96ba                	add	a3,a3,a4
1c00996e:	f2c68c23          	sb	a2,-200(a3)
1c009972:	00278713          	addi	a4,a5,2
1c009976:	00977a63          	bgeu	a4,s1,1c00998a <shake128_absorb+0x152>
1c00997a:	00e407b3          	add	a5,s0,a4
1c00997e:	0007c683          	lbu	a3,0(a5)
1c009982:	099c                	addi	a5,sp,208
1c009984:	97ba                	add	a5,a5,a4
1c009986:	f2d78c23          	sb	a3,-200(a5)
1c00998a:	099c                	addi	a5,sp,208
1c00998c:	00978633          	add	a2,a5,s1
1c009990:	47fd                	li	a5,31
1c009992:	f2f60c23          	sb	a5,-200(a2)
1c009996:	0af14703          	lbu	a4,175(sp)
1c00999a:	003c                	addi	a5,sp,8
1c00999c:	40f90933          	sub	s2,s2,a5
1c0099a0:	f8076713          	ori	a4,a4,-128
1c0099a4:	0ae107a3          	sb	a4,175(sp)
1c0099a8:	0017c703          	lbu	a4,1(a5)
1c0099ac:	0027cf83          	lbu	t6,2(a5)
1c0099b0:	0057c883          	lbu	a7,5(a5)
1c0099b4:	0047c503          	lbu	a0,4(a5)
1c0099b8:	0067c803          	lbu	a6,6(a5)
1c0099bc:	0007c583          	lbu	a1,0(a5)
1c0099c0:	0037c603          	lbu	a2,3(a5)
1c0099c4:	0077c683          	lbu	a3,7(a5)
1c0099c8:	00f90e33          	add	t3,s2,a5
1c0099cc:	0722                	slli	a4,a4,0x8
1c0099ce:	0fc2                	slli	t6,t6,0x10
1c0099d0:	08a2                	slli	a7,a7,0x8
1c0099d2:	000e2f03          	lw	t5,0(t3)
1c0099d6:	004e2e83          	lw	t4,4(t3)
1c0099da:	01f76733          	or	a4,a4,t6
1c0099de:	00a8e8b3          	or	a7,a7,a0
1c0099e2:	0842                	slli	a6,a6,0x10
1c0099e4:	8f4d                	or	a4,a4,a1
1c0099e6:	0662                	slli	a2,a2,0x18
1c0099e8:	01186833          	or	a6,a6,a7
1c0099ec:	06e2                	slli	a3,a3,0x18
1c0099ee:	8f51                	or	a4,a4,a2
1c0099f0:	0106e6b3          	or	a3,a3,a6
1c0099f4:	00ef4733          	xor	a4,t5,a4
1c0099f8:	00dec6b3          	xor	a3,t4,a3
1c0099fc:	00ee2023          	sw	a4,0(t3)
1c009a00:	00de2223          	sw	a3,4(t3)
1c009a04:	07a1                	addi	a5,a5,8
1c009a06:	faf311e3          	bne	t1,a5,1c0099a8 <shake128_absorb+0x170>
1c009a0a:	50be                	lw	ra,236(sp)
1c009a0c:	542e                	lw	s0,232(sp)
1c009a0e:	549e                	lw	s1,228(sp)
1c009a10:	590e                	lw	s2,224(sp)
1c009a12:	49fe                	lw	s3,220(sp)
1c009a14:	616d                	addi	sp,sp,240
1c009a16:	8082                	ret
1c009a18:	4781                	li	a5,0
1c009a1a:	bf05                	j	1c00994a <shake128_absorb+0x112>
1c009a1c:	06f00513          	li	a0,111
1c009a20:	6c5010ef          	jal	ra,1c00b8e4 <exit>

1c009a24 <shake128_squeezeblocks>:
1c009a24:	1101                	addi	sp,sp,-32
1c009a26:	c05a                	sw	s6,0(sp)
1c009a28:	ce06                	sw	ra,28(sp)
1c009a2a:	cc22                	sw	s0,24(sp)
1c009a2c:	ca26                	sw	s1,20(sp)
1c009a2e:	c84a                	sw	s2,16(sp)
1c009a30:	c64e                	sw	s3,12(sp)
1c009a32:	c452                	sw	s4,8(sp)
1c009a34:	c256                	sw	s5,4(sp)
1c009a36:	00062b03          	lw	s6,0(a2)
1c009a3a:	c5f1                	beqz	a1,1c009b06 <shake128_squeezeblocks+0xe2>
1c009a3c:	7ac1                	lui	s5,0xffff0
1c009a3e:	ff010a37          	lui	s4,0xff010
1c009a42:	010009b7          	lui	s3,0x1000
1c009a46:	84ae                	mv	s1,a1
1c009a48:	892a                	mv	s2,a0
1c009a4a:	0a8b0413          	addi	s0,s6,168
1c009a4e:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009a52:	1a7d                	addi	s4,s4,-1
1c009a54:	19fd                	addi	s3,s3,-1
1c009a56:	85da                	mv	a1,s6
1c009a58:	855a                	mv	a0,s6
1c009a5a:	83bff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c009a5e:	85da                	mv	a1,s6
1c009a60:	00490813          	addi	a6,s2,4
1c009a64:	4198                	lw	a4,0(a1)
1c009a66:	41dc                	lw	a5,4(a1)
1c009a68:	05a1                	addi	a1,a1,8
1c009a6a:	00875893          	srli	a7,a4,0x8
1c009a6e:	0087d513          	srli	a0,a5,0x8
1c009a72:	0ff77613          	andi	a2,a4,255
1c009a76:	0ff7f693          	andi	a3,a5,255
1c009a7a:	0ff8f893          	andi	a7,a7,255
1c009a7e:	0ff57513          	andi	a0,a0,255
1c009a82:	08a2                	slli	a7,a7,0x8
1c009a84:	0522                	slli	a0,a0,0x8
1c009a86:	01567633          	and	a2,a2,s5
1c009a8a:	0156f6b3          	and	a3,a3,s5
1c009a8e:	01166633          	or	a2,a2,a7
1c009a92:	8ec9                	or	a3,a3,a0
1c009a94:	00ff08b7          	lui	a7,0xff0
1c009a98:	00ff0537          	lui	a0,0xff0
1c009a9c:	011778b3          	and	a7,a4,a7
1c009aa0:	8d7d                	and	a0,a0,a5
1c009aa2:	01467633          	and	a2,a2,s4
1c009aa6:	0146f6b3          	and	a3,a3,s4
1c009aaa:	01166633          	or	a2,a2,a7
1c009aae:	8ec9                	or	a3,a3,a0
1c009ab0:	8361                	srli	a4,a4,0x18
1c009ab2:	83e1                	srli	a5,a5,0x18
1c009ab4:	01367633          	and	a2,a2,s3
1c009ab8:	0136f6b3          	and	a3,a3,s3
1c009abc:	0762                	slli	a4,a4,0x18
1c009abe:	07e2                	slli	a5,a5,0x18
1c009ac0:	8f51                	or	a4,a4,a2
1c009ac2:	8fd5                	or	a5,a5,a3
1c009ac4:	00875e13          	srli	t3,a4,0x8
1c009ac8:	01075313          	srli	t1,a4,0x10
1c009acc:	0087d893          	srli	a7,a5,0x8
1c009ad0:	0107d513          	srli	a0,a5,0x10
1c009ad4:	8361                	srli	a4,a4,0x18
1c009ad6:	83e1                	srli	a5,a5,0x18
1c009ad8:	fec80e23          	sb	a2,-4(a6)
1c009adc:	ffc80ea3          	sb	t3,-3(a6)
1c009ae0:	fe680f23          	sb	t1,-2(a6)
1c009ae4:	fee80fa3          	sb	a4,-1(a6)
1c009ae8:	00d80023          	sb	a3,0(a6)
1c009aec:	011800a3          	sb	a7,1(a6)
1c009af0:	00a80123          	sb	a0,2(a6)
1c009af4:	00f801a3          	sb	a5,3(a6)
1c009af8:	0821                	addi	a6,a6,8
1c009afa:	f6b415e3          	bne	s0,a1,1c009a64 <shake128_squeezeblocks+0x40>
1c009afe:	14fd                	addi	s1,s1,-1
1c009b00:	0a890913          	addi	s2,s2,168
1c009b04:	f8a9                	bnez	s1,1c009a56 <shake128_squeezeblocks+0x32>
1c009b06:	40f2                	lw	ra,28(sp)
1c009b08:	4462                	lw	s0,24(sp)
1c009b0a:	44d2                	lw	s1,20(sp)
1c009b0c:	4942                	lw	s2,16(sp)
1c009b0e:	49b2                	lw	s3,12(sp)
1c009b10:	4a22                	lw	s4,8(sp)
1c009b12:	4a92                	lw	s5,4(sp)
1c009b14:	4b02                	lw	s6,0(sp)
1c009b16:	6105                	addi	sp,sp,32
1c009b18:	8082                	ret

1c009b1a <shake128_ctx_release>:
1c009b1a:	4108                	lw	a0,0(a0)
1c009b1c:	0c800593          	li	a1,200
1c009b20:	7050206f          	j	1c00ca24 <pi_l2_free>

1c009b24 <shake256>:
1c009b24:	7131                	addi	sp,sp,-192
1c009b26:	db26                	sw	s1,180(sp)
1c009b28:	d74e                	sw	s3,172(sp)
1c009b2a:	84aa                	mv	s1,a0
1c009b2c:	08800993          	li	s3,136
1c009b30:	0c800513          	li	a0,200
1c009b34:	dd22                	sw	s0,184(sp)
1c009b36:	d94a                	sw	s2,176(sp)
1c009b38:	d356                	sw	s5,164(sp)
1c009b3a:	df06                	sw	ra,188(sp)
1c009b3c:	d552                	sw	s4,168(sp)
1c009b3e:	d15a                	sw	s6,160(sp)
1c009b40:	cf5e                	sw	s7,156(sp)
1c009b42:	cd62                	sw	s8,152(sp)
1c009b44:	0335d9b3          	divu	s3,a1,s3
1c009b48:	892e                	mv	s2,a1
1c009b4a:	8432                	mv	s0,a2
1c009b4c:	8ab6                	mv	s5,a3
1c009b4e:	6cb020ef          	jal	ra,1c00ca18 <pi_l2_malloc>
1c009b52:	24050763          	beqz	a0,1c009da0 <shake256+0x27c>
1c009b56:	46fd                	li	a3,31
1c009b58:	8656                	mv	a2,s5
1c009b5a:	85a2                	mv	a1,s0
1c009b5c:	8a2a                	mv	s4,a0
1c009b5e:	3cfd                	jal	1c00965c <keccak_absorb.constprop.1>
1c009b60:	08700793          	li	a5,135
1c009b64:	0d27ff63          	bgeu	a5,s2,1c009c42 <shake256+0x11e>
1c009b68:	00499413          	slli	s0,s3,0x4
1c009b6c:	944e                	add	s0,s0,s3
1c009b6e:	040e                	slli	s0,s0,0x3
1c009b70:	7bc1                	lui	s7,0xffff0
1c009b72:	ff010b37          	lui	s6,0xff010
1c009b76:	01000ab7          	lui	s5,0x1000
1c009b7a:	9426                	add	s0,s0,s1
1c009b7c:	8c26                	mv	s8,s1
1c009b7e:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009b82:	1b7d                	addi	s6,s6,-1
1c009b84:	1afd                	addi	s5,s5,-1
1c009b86:	85d2                	mv	a1,s4
1c009b88:	8552                	mv	a0,s4
1c009b8a:	f0aff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c009b8e:	87e2                	mv	a5,s8
1c009b90:	418a0533          	sub	a0,s4,s8
1c009b94:	088c0593          	addi	a1,s8,136
1c009b98:	00f50733          	add	a4,a0,a5
1c009b9c:	4314                	lw	a3,0(a4)
1c009b9e:	4358                	lw	a4,4(a4)
1c009ba0:	07a1                	addi	a5,a5,8
1c009ba2:	0086d313          	srli	t1,a3,0x8
1c009ba6:	00875893          	srli	a7,a4,0x8
1c009baa:	0ff6f813          	andi	a6,a3,255
1c009bae:	0ff77613          	andi	a2,a4,255
1c009bb2:	0ff37313          	andi	t1,t1,255
1c009bb6:	0ff8f893          	andi	a7,a7,255
1c009bba:	0322                	slli	t1,t1,0x8
1c009bbc:	08a2                	slli	a7,a7,0x8
1c009bbe:	01787833          	and	a6,a6,s7
1c009bc2:	01767633          	and	a2,a2,s7
1c009bc6:	00686833          	or	a6,a6,t1
1c009bca:	01166633          	or	a2,a2,a7
1c009bce:	00ff0337          	lui	t1,0xff0
1c009bd2:	00ff08b7          	lui	a7,0xff0
1c009bd6:	0066f333          	and	t1,a3,t1
1c009bda:	011778b3          	and	a7,a4,a7
1c009bde:	01687833          	and	a6,a6,s6
1c009be2:	01667633          	and	a2,a2,s6
1c009be6:	00686833          	or	a6,a6,t1
1c009bea:	01166633          	or	a2,a2,a7
1c009bee:	82e1                	srli	a3,a3,0x18
1c009bf0:	8361                	srli	a4,a4,0x18
1c009bf2:	01587833          	and	a6,a6,s5
1c009bf6:	01567633          	and	a2,a2,s5
1c009bfa:	06e2                	slli	a3,a3,0x18
1c009bfc:	0762                	slli	a4,a4,0x18
1c009bfe:	00d866b3          	or	a3,a6,a3
1c009c02:	8f51                	or	a4,a4,a2
1c009c04:	0086de93          	srli	t4,a3,0x8
1c009c08:	0106de13          	srli	t3,a3,0x10
1c009c0c:	00875313          	srli	t1,a4,0x8
1c009c10:	01075893          	srli	a7,a4,0x10
1c009c14:	82e1                	srli	a3,a3,0x18
1c009c16:	8361                	srli	a4,a4,0x18
1c009c18:	ff078c23          	sb	a6,-8(a5)
1c009c1c:	ffd78ca3          	sb	t4,-7(a5)
1c009c20:	ffc78d23          	sb	t3,-6(a5)
1c009c24:	fed78da3          	sb	a3,-5(a5)
1c009c28:	fec78e23          	sb	a2,-4(a5)
1c009c2c:	fe678ea3          	sb	t1,-3(a5)
1c009c30:	ff178f23          	sb	a7,-2(a5)
1c009c34:	fee78fa3          	sb	a4,-1(a5)
1c009c38:	f6f590e3          	bne	a1,a5,1c009b98 <shake256+0x74>
1c009c3c:	8c2e                	mv	s8,a1
1c009c3e:	f48594e3          	bne	a1,s0,1c009b86 <shake256+0x62>
1c009c42:	08800593          	li	a1,136
1c009c46:	02b97933          	remu	s2,s2,a1
1c009c4a:	02091263          	bnez	s2,1c009c6e <shake256+0x14a>
1c009c4e:	546a                	lw	s0,184(sp)
1c009c50:	50fa                	lw	ra,188(sp)
1c009c52:	54da                	lw	s1,180(sp)
1c009c54:	594a                	lw	s2,176(sp)
1c009c56:	59ba                	lw	s3,172(sp)
1c009c58:	5a9a                	lw	s5,164(sp)
1c009c5a:	5b0a                	lw	s6,160(sp)
1c009c5c:	4bfa                	lw	s7,156(sp)
1c009c5e:	4c6a                	lw	s8,152(sp)
1c009c60:	8552                	mv	a0,s4
1c009c62:	5a2a                	lw	s4,168(sp)
1c009c64:	0c800593          	li	a1,200
1c009c68:	6129                	addi	sp,sp,192
1c009c6a:	5bb0206f          	j	1c00ca24 <pi_l2_free>
1c009c6e:	85d2                	mv	a1,s4
1c009c70:	8552                	mv	a0,s4
1c009c72:	e22ff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c009c76:	002c                	addi	a1,sp,8
1c009c78:	78c1                	lui	a7,0xffff0
1c009c7a:	ff010837          	lui	a6,0xff010
1c009c7e:	01000537          	lui	a0,0x1000
1c009c82:	09010e13          	addi	t3,sp,144
1c009c86:	862e                	mv	a2,a1
1c009c88:	40ba0333          	sub	t1,s4,a1
1c009c8c:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009c90:	187d                	addi	a6,a6,-1
1c009c92:	157d                	addi	a0,a0,-1
1c009c94:	00c307b3          	add	a5,t1,a2
1c009c98:	0007ae83          	lw	t4,0(a5)
1c009c9c:	43d4                	lw	a3,4(a5)
1c009c9e:	0621                	addi	a2,a2,8
1c009ca0:	008edf93          	srli	t6,t4,0x8
1c009ca4:	0086df13          	srli	t5,a3,0x8
1c009ca8:	0ffef713          	andi	a4,t4,255
1c009cac:	0ff6f793          	andi	a5,a3,255
1c009cb0:	0fffff93          	andi	t6,t6,255
1c009cb4:	0fff7f13          	andi	t5,t5,255
1c009cb8:	0fa2                	slli	t6,t6,0x8
1c009cba:	0f22                	slli	t5,t5,0x8
1c009cbc:	01177733          	and	a4,a4,a7
1c009cc0:	0117f7b3          	and	a5,a5,a7
1c009cc4:	01f76733          	or	a4,a4,t6
1c009cc8:	01e7e7b3          	or	a5,a5,t5
1c009ccc:	00ff0fb7          	lui	t6,0xff0
1c009cd0:	00ff0f37          	lui	t5,0xff0
1c009cd4:	01feffb3          	and	t6,t4,t6
1c009cd8:	01e6ff33          	and	t5,a3,t5
1c009cdc:	01077733          	and	a4,a4,a6
1c009ce0:	0107f7b3          	and	a5,a5,a6
1c009ce4:	01f76733          	or	a4,a4,t6
1c009ce8:	018ede93          	srli	t4,t4,0x18
1c009cec:	01e7e7b3          	or	a5,a5,t5
1c009cf0:	82e1                	srli	a3,a3,0x18
1c009cf2:	0ee2                	slli	t4,t4,0x18
1c009cf4:	8f69                	and	a4,a4,a0
1c009cf6:	06e2                	slli	a3,a3,0x18
1c009cf8:	8fe9                	and	a5,a5,a0
1c009cfa:	01d76733          	or	a4,a4,t4
1c009cfe:	8fd5                	or	a5,a5,a3
1c009d00:	fee62c23          	sw	a4,-8(a2)
1c009d04:	fef62e23          	sw	a5,-4(a2)
1c009d08:	f8ce16e3          	bne	t3,a2,1c009c94 <shake256+0x170>
1c009d0c:	fff90793          	addi	a5,s2,-1
1c009d10:	4709                	li	a4,2
1c009d12:	08f77363          	bgeu	a4,a5,1c009d98 <shake256+0x274>
1c009d16:	00499413          	slli	s0,s3,0x4
1c009d1a:	013407b3          	add	a5,s0,s3
1c009d1e:	078e                	slli	a5,a5,0x3
1c009d20:	97a6                	add	a5,a5,s1
1c009d22:	0fc97813          	andi	a6,s2,252
1c009d26:	983e                	add	a6,a6,a5
1c009d28:	4198                	lw	a4,0(a1)
1c009d2a:	0791                	addi	a5,a5,4
1c009d2c:	0591                	addi	a1,a1,4
1c009d2e:	00875513          	srli	a0,a4,0x8
1c009d32:	01075613          	srli	a2,a4,0x10
1c009d36:	01875693          	srli	a3,a4,0x18
1c009d3a:	fea78ea3          	sb	a0,-3(a5)
1c009d3e:	fec78f23          	sb	a2,-2(a5)
1c009d42:	fed78fa3          	sb	a3,-1(a5)
1c009d46:	fee78e23          	sb	a4,-4(a5)
1c009d4a:	fcf81fe3          	bne	a6,a5,1c009d28 <shake256+0x204>
1c009d4e:	ffc97793          	andi	a5,s2,-4
1c009d52:	eef90ee3          	beq	s2,a5,1c009c4e <shake256+0x12a>
1c009d56:	0918                	addi	a4,sp,144
1c009d58:	973e                	add	a4,a4,a5
1c009d5a:	99a2                	add	s3,s3,s0
1c009d5c:	f7874683          	lbu	a3,-136(a4)
1c009d60:	098e                	slli	s3,s3,0x3
1c009d62:	99a6                	add	s3,s3,s1
1c009d64:	00f98733          	add	a4,s3,a5
1c009d68:	00d70023          	sb	a3,0(a4)
1c009d6c:	00178713          	addi	a4,a5,1
1c009d70:	ed277fe3          	bgeu	a4,s2,1c009c4e <shake256+0x12a>
1c009d74:	0914                	addi	a3,sp,144
1c009d76:	96ba                	add	a3,a3,a4
1c009d78:	f786c683          	lbu	a3,-136(a3)
1c009d7c:	974e                	add	a4,a4,s3
1c009d7e:	0789                	addi	a5,a5,2
1c009d80:	00d70023          	sb	a3,0(a4)
1c009d84:	ed27f5e3          	bgeu	a5,s2,1c009c4e <shake256+0x12a>
1c009d88:	0918                	addi	a4,sp,144
1c009d8a:	973e                	add	a4,a4,a5
1c009d8c:	f7874703          	lbu	a4,-136(a4)
1c009d90:	99be                	add	s3,s3,a5
1c009d92:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c009d96:	bd65                	j	1c009c4e <shake256+0x12a>
1c009d98:	4781                	li	a5,0
1c009d9a:	00499413          	slli	s0,s3,0x4
1c009d9e:	bf65                	j	1c009d56 <shake256+0x232>
1c009da0:	06f00513          	li	a0,111
1c009da4:	341010ef          	jal	ra,1c00b8e4 <exit>

1c009da8 <sha3_256>:
1c009da8:	712d                	addi	sp,sp,-288
1c009daa:	10812c23          	sw	s0,280(sp)
1c009dae:	4699                	li	a3,6
1c009db0:	842a                	mv	s0,a0
1c009db2:	0828                	addi	a0,sp,24
1c009db4:	10112e23          	sw	ra,284(sp)
1c009db8:	10912a23          	sw	s1,276(sp)
1c009dbc:	11212823          	sw	s2,272(sp)
1c009dc0:	11312623          	sw	s3,268(sp)
1c009dc4:	11412423          	sw	s4,264(sp)
1c009dc8:	11512223          	sw	s5,260(sp)
1c009dcc:	11612023          	sw	s6,256(sp)
1c009dd0:	dfde                	sw	s7,252(sp)
1c009dd2:	dde2                	sw	s8,248(sp)
1c009dd4:	dbe6                	sw	s9,244(sp)
1c009dd6:	d9ea                	sw	s10,240(sp)
1c009dd8:	d7ee                	sw	s11,236(sp)
1c009dda:	3049                	jal	1c00965c <keccak_absorb.constprop.1>
1c009ddc:	082c                	addi	a1,sp,24
1c009dde:	852e                	mv	a0,a1
1c009de0:	cb4ff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c009de4:	4372                	lw	t1,28(sp)
1c009de6:	5612                	lw	a2,36(sp)
1c009de8:	5732                	lw	a4,44(sp)
1c009dea:	5582                	lw	a1,32(sp)
1c009dec:	56a2                	lw	a3,40(sp)
1c009dee:	59d2                	lw	s3,52(sp)
1c009df0:	4ae2                	lw	s5,24(sp)
1c009df2:	00835293          	srli	t0,t1,0x8
1c009df6:	00865f13          	srli	t5,a2,0x8
1c009dfa:	00875893          	srli	a7,a4,0x8
1c009dfe:	5a42                	lw	s4,48(sp)
1c009e00:	0085df93          	srli	t6,a1,0x8
1c009e04:	0086de93          	srli	t4,a3,0x8
1c009e08:	0ff2f293          	andi	t0,t0,255
1c009e0c:	0fff7f13          	andi	t5,t5,255
1c009e10:	0ff8f893          	andi	a7,a7,255
1c009e14:	0ff37b93          	andi	s7,t1,255
1c009e18:	0ff67913          	andi	s2,a2,255
1c009e1c:	0ff77e13          	andi	t3,a4,255
1c009e20:	008ad393          	srli	t2,s5,0x8
1c009e24:	0089d513          	srli	a0,s3,0x8
1c009e28:	0fffff93          	andi	t6,t6,255
1c009e2c:	0ffefe93          	andi	t4,t4,255
1c009e30:	02a2                	slli	t0,t0,0x8
1c009e32:	0f22                	slli	t5,t5,0x8
1c009e34:	08a2                	slli	a7,a7,0x8
1c009e36:	ff0107b7          	lui	a5,0xff010
1c009e3a:	17fd                	addi	a5,a5,-1
1c009e3c:	0ff5fb13          	andi	s6,a1,255
1c009e40:	0ff6f493          	andi	s1,a3,255
1c009e44:	005be2b3          	or	t0,s7,t0
1c009e48:	01e96f33          	or	t5,s2,t5
1c009e4c:	011e68b3          	or	a7,t3,a7
1c009e50:	0ff3f393          	andi	t2,t2,255
1c009e54:	0fa2                	slli	t6,t6,0x8
1c009e56:	0ea2                	slli	t4,t4,0x8
1c009e58:	0ff57513          	andi	a0,a0,255
1c009e5c:	00ff0bb7          	lui	s7,0xff0
1c009e60:	0ffafc13          	andi	s8,s5,255
1c009e64:	0ff9f913          	andi	s2,s3,255
1c009e68:	01767bb3          	and	s7,a2,s7
1c009e6c:	00f8fe33          	and	t3,a7,a5
1c009e70:	008a5813          	srli	a6,s4,0x8
1c009e74:	01fb6fb3          	or	t6,s6,t6
1c009e78:	01d4eeb3          	or	t4,s1,t4
1c009e7c:	00ff7f33          	and	t5,t5,a5
1c009e80:	010008b7          	lui	a7,0x1000
1c009e84:	03a2                	slli	t2,t2,0x8
1c009e86:	0522                	slli	a0,a0,0x8
1c009e88:	00ff04b7          	lui	s1,0xff0
1c009e8c:	00ff0b37          	lui	s6,0xff0
1c009e90:	8cf5                	and	s1,s1,a3
1c009e92:	01677b33          	and	s6,a4,s6
1c009e96:	00a96533          	or	a0,s2,a0
1c009e9a:	007c63b3          	or	t2,s8,t2
1c009e9e:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c009ea2:	00fefeb3          	and	t4,t4,a5
1c009ea6:	017f6f33          	or	t5,t5,s7
1c009eaa:	0ff87813          	andi	a6,a6,255
1c009eae:	00ff0c37          	lui	s8,0xff0
1c009eb2:	8261                	srli	a2,a2,0x18
1c009eb4:	0ffa7d93          	andi	s11,s4,255
1c009eb8:	0185fc33          	and	s8,a1,s8
1c009ebc:	012f7f33          	and	t5,t5,s2
1c009ec0:	00ffffb3          	and	t6,t6,a5
1c009ec4:	009eeeb3          	or	t4,t4,s1
1c009ec8:	016e6e33          	or	t3,t3,s6
1c009ecc:	8361                	srli	a4,a4,0x18
1c009ece:	0822                	slli	a6,a6,0x8
1c009ed0:	00ff0d37          	lui	s10,0xff0
1c009ed4:	82e1                	srli	a3,a3,0x18
1c009ed6:	0662                	slli	a2,a2,0x18
1c009ed8:	01aafd33          	and	s10,s5,s10
1c009edc:	010de833          	or	a6,s11,a6
1c009ee0:	012efeb3          	and	t4,t4,s2
1c009ee4:	012e7e33          	and	t3,t3,s2
1c009ee8:	00cf6633          	or	a2,t5,a2
1c009eec:	018ada93          	srli	s5,s5,0x18
1c009ef0:	018fefb3          	or	t6,t6,s8
1c009ef4:	06e2                	slli	a3,a3,0x18
1c009ef6:	01871c13          	slli	s8,a4,0x18
1c009efa:	00ff0bb7          	lui	s7,0xff0
1c009efe:	00f87b33          	and	s6,a6,a5
1c009f02:	00dee4b3          	or	s1,t4,a3
1c009f06:	017a7bb3          	and	s7,s4,s7
1c009f0a:	018e66b3          	or	a3,t3,s8
1c009f0e:	018a9813          	slli	a6,s5,0x18
1c009f12:	018a5713          	srli	a4,s4,0x18
1c009f16:	00865a93          	srli	s5,a2,0x8
1c009f1a:	01065a13          	srli	s4,a2,0x10
1c009f1e:	00ff0cb7          	lui	s9,0xff0
1c009f22:	8261                	srli	a2,a2,0x18
1c009f24:	c232                	sw	a2,4(sp)
1c009f26:	01937cb3          	and	s9,t1,s9
1c009f2a:	0086d613          	srli	a2,a3,0x8
1c009f2e:	00f3f3b3          	and	t2,t2,a5
1c009f32:	00f2f2b3          	and	t0,t0,a5
1c009f36:	c432                	sw	a2,8(sp)
1c009f38:	01a3e3b3          	or	t2,t2,s10
1c009f3c:	0106d613          	srli	a2,a3,0x10
1c009f40:	0192e2b3          	or	t0,t0,s9
1c009f44:	01835313          	srli	t1,t1,0x18
1c009f48:	81e1                	srli	a1,a1,0x18
1c009f4a:	00ff08b7          	lui	a7,0xff0
1c009f4e:	8fe9                	and	a5,a5,a0
1c009f50:	0123f3b3          	and	t2,t2,s2
1c009f54:	0122f2b3          	and	t0,t0,s2
1c009f58:	012fffb3          	and	t6,t6,s2
1c009f5c:	c632                	sw	a2,12(sp)
1c009f5e:	0119f8b3          	and	a7,s3,a7
1c009f62:	4612                	lw	a2,4(sp)
1c009f64:	01831513          	slli	a0,t1,0x18
1c009f68:	05e2                	slli	a1,a1,0x18
1c009f6a:	017b6333          	or	t1,s6,s7
1c009f6e:	0103e833          	or	a6,t2,a6
1c009f72:	00a2e533          	or	a0,t0,a0
1c009f76:	00bfe5b3          	or	a1,t6,a1
1c009f7a:	0117e8b3          	or	a7,a5,a7
1c009f7e:	01237333          	and	t1,t1,s2
1c009f82:	0128f8b3          	and	a7,a7,s2
1c009f86:	00885d93          	srli	s11,a6,0x8
1c009f8a:	01085d13          	srli	s10,a6,0x10
1c009f8e:	00855c93          	srli	s9,a0,0x8
1c009f92:	01055c13          	srli	s8,a0,0x10
1c009f96:	0085db93          	srli	s7,a1,0x8
1c009f9a:	0105db13          	srli	s6,a1,0x10
1c009f9e:	0104d913          	srli	s2,s1,0x10
1c009fa2:	0189d793          	srli	a5,s3,0x18
1c009fa6:	8161                	srli	a0,a0,0x18
1c009fa8:	0084d993          	srli	s3,s1,0x8
1c009fac:	81e1                	srli	a1,a1,0x18
1c009fae:	80e1                	srli	s1,s1,0x18
1c009fb0:	01885813          	srli	a6,a6,0x18
1c009fb4:	01b400a3          	sb	s11,1(s0)
1c009fb8:	01a40123          	sb	s10,2(s0)
1c009fbc:	019402a3          	sb	s9,5(s0)
1c009fc0:	01840323          	sb	s8,6(s0)
1c009fc4:	00a403a3          	sb	a0,7(s0)
1c009fc8:	017404a3          	sb	s7,9(s0)
1c009fcc:	01640523          	sb	s6,10(s0)
1c009fd0:	00b405a3          	sb	a1,11(s0)
1c009fd4:	015406a3          	sb	s5,13(s0)
1c009fd8:	01440723          	sb	s4,14(s0)
1c009fdc:	00c407a3          	sb	a2,15(s0)
1c009fe0:	013408a3          	sb	s3,17(s0)
1c009fe4:	01240923          	sb	s2,18(s0)
1c009fe8:	009409a3          	sb	s1,19(s0)
1c009fec:	00740023          	sb	t2,0(s0)
1c009ff0:	010401a3          	sb	a6,3(s0)
1c009ff4:	00540223          	sb	t0,4(s0)
1c009ff8:	01f40423          	sb	t6,8(s0)
1c009ffc:	01e40623          	sb	t5,12(s0)
1c00a000:	01d40823          	sb	t4,16(s0)
1c00a004:	01c40a23          	sb	t3,20(s0)
1c00a008:	4622                	lw	a2,8(sp)
1c00a00a:	0762                	slli	a4,a4,0x18
1c00a00c:	07e2                	slli	a5,a5,0x18
1c00a00e:	00c40aa3          	sb	a2,21(s0)
1c00a012:	4632                	lw	a2,12(sp)
1c00a014:	00e36733          	or	a4,t1,a4
1c00a018:	00f8e7b3          	or	a5,a7,a5
1c00a01c:	82e1                	srli	a3,a3,0x18
1c00a01e:	00c40b23          	sb	a2,22(s0)
1c00a022:	00d40ba3          	sb	a3,23(s0)
1c00a026:	00875513          	srli	a0,a4,0x8
1c00a02a:	01075593          	srli	a1,a4,0x10
1c00a02e:	0087d613          	srli	a2,a5,0x8
1c00a032:	0107d693          	srli	a3,a5,0x10
1c00a036:	8361                	srli	a4,a4,0x18
1c00a038:	83e1                	srli	a5,a5,0x18
1c00a03a:	00640c23          	sb	t1,24(s0)
1c00a03e:	00a40ca3          	sb	a0,25(s0)
1c00a042:	00b40d23          	sb	a1,26(s0)
1c00a046:	00e40da3          	sb	a4,27(s0)
1c00a04a:	01140e23          	sb	a7,28(s0)
1c00a04e:	00c40ea3          	sb	a2,29(s0)
1c00a052:	00d40f23          	sb	a3,30(s0)
1c00a056:	00f40fa3          	sb	a5,31(s0)
1c00a05a:	11c12083          	lw	ra,284(sp)
1c00a05e:	11812403          	lw	s0,280(sp)
1c00a062:	11412483          	lw	s1,276(sp)
1c00a066:	11012903          	lw	s2,272(sp)
1c00a06a:	10c12983          	lw	s3,268(sp)
1c00a06e:	10812a03          	lw	s4,264(sp)
1c00a072:	10412a83          	lw	s5,260(sp)
1c00a076:	10012b03          	lw	s6,256(sp)
1c00a07a:	5bfe                	lw	s7,252(sp)
1c00a07c:	5c6e                	lw	s8,248(sp)
1c00a07e:	5cde                	lw	s9,244(sp)
1c00a080:	5d4e                	lw	s10,240(sp)
1c00a082:	5dbe                	lw	s11,236(sp)
1c00a084:	6115                	addi	sp,sp,288
1c00a086:	8082                	ret

1c00a088 <sha3_512>:
1c00a088:	7105                	addi	sp,sp,-480
1c00a08a:	1c812c23          	sw	s0,472(sp)
1c00a08e:	1d312623          	sw	s3,460(sp)
1c00a092:	1d412423          	sw	s4,456(sp)
1c00a096:	1c112e23          	sw	ra,476(sp)
1c00a09a:	1c912a23          	sw	s1,468(sp)
1c00a09e:	1d212823          	sw	s2,464(sp)
1c00a0a2:	1d512223          	sw	s5,452(sp)
1c00a0a6:	1d612023          	sw	s6,448(sp)
1c00a0aa:	1b712e23          	sw	s7,444(sp)
1c00a0ae:	1b812c23          	sw	s8,440(sp)
1c00a0b2:	1b912a23          	sw	s9,436(sp)
1c00a0b6:	1ba12823          	sw	s10,432(sp)
1c00a0ba:	1bb12623          	sw	s11,428(sp)
1c00a0be:	842a                	mv	s0,a0
1c00a0c0:	8a32                	mv	s4,a2
1c00a0c2:	0d810993          	addi	s3,sp,216
1c00a0c6:	081c                	addi	a5,sp,16
1c00a0c8:	4681                	li	a3,0
1c00a0ca:	4701                	li	a4,0
1c00a0cc:	c394                	sw	a3,0(a5)
1c00a0ce:	c3d8                	sw	a4,4(a5)
1c00a0d0:	07a1                	addi	a5,a5,8
1c00a0d2:	ff379be3          	bne	a5,s3,1c00a0c8 <sha3_512+0x40>
1c00a0d6:	04700793          	li	a5,71
1c00a0da:	0947f463          	bgeu	a5,s4,1c00a162 <sha3_512+0xda>
1c00a0de:	04858a93          	addi	s5,a1,72
1c00a0e2:	8956                	mv	s2,s5
1c00a0e4:	04700493          	li	s1,71
1c00a0e8:	0818                	addi	a4,sp,16
1c00a0ea:	0015c783          	lbu	a5,1(a1)
1c00a0ee:	0025ce03          	lbu	t3,2(a1)
1c00a0f2:	0055c803          	lbu	a6,5(a1)
1c00a0f6:	0045cf03          	lbu	t5,4(a1)
1c00a0fa:	0065c503          	lbu	a0,6(a1)
1c00a0fe:	0005ce83          	lbu	t4,0(a1)
1c00a102:	0035c603          	lbu	a2,3(a1)
1c00a106:	0075c683          	lbu	a3,7(a1)
1c00a10a:	07a2                	slli	a5,a5,0x8
1c00a10c:	0e42                	slli	t3,t3,0x10
1c00a10e:	0822                	slli	a6,a6,0x8
1c00a110:	00072303          	lw	t1,0(a4)
1c00a114:	00472883          	lw	a7,4(a4)
1c00a118:	01c7e7b3          	or	a5,a5,t3
1c00a11c:	01e86833          	or	a6,a6,t5
1c00a120:	0542                	slli	a0,a0,0x10
1c00a122:	01d7e7b3          	or	a5,a5,t4
1c00a126:	0662                	slli	a2,a2,0x18
1c00a128:	01056533          	or	a0,a0,a6
1c00a12c:	06e2                	slli	a3,a3,0x18
1c00a12e:	8fd1                	or	a5,a5,a2
1c00a130:	8ec9                	or	a3,a3,a0
1c00a132:	00f347b3          	xor	a5,t1,a5
1c00a136:	00d8c6b3          	xor	a3,a7,a3
1c00a13a:	c31c                	sw	a5,0(a4)
1c00a13c:	c354                	sw	a3,4(a4)
1c00a13e:	05a1                	addi	a1,a1,8
1c00a140:	0721                	addi	a4,a4,8
1c00a142:	fb2594e3          	bne	a1,s2,1c00a0ea <sha3_512+0x62>
1c00a146:	080c                	addi	a1,sp,16
1c00a148:	852e                	mv	a0,a1
1c00a14a:	94aff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c00a14e:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00a152:	04890913          	addi	s2,s2,72
1c00a156:	85d6                	mv	a1,s5
1c00a158:	0144f563          	bgeu	s1,s4,1c00a162 <sha3_512+0xda>
1c00a15c:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00a160:	b761                	j	1c00a0e8 <sha3_512+0x60>
1c00a162:	1218                	addi	a4,sp,288
1c00a164:	87ce                	mv	a5,s3
1c00a166:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00a16a:	0791                	addi	a5,a5,4
1c00a16c:	fee79de3          	bne	a5,a4,1c00a166 <sha3_512+0xde>
1c00a170:	080a0063          	beqz	s4,1c00a1f0 <sha3_512+0x168>
1c00a174:	fffa0793          	addi	a5,s4,-1
1c00a178:	4709                	li	a4,2
1c00a17a:	68f77563          	bgeu	a4,a5,1c00a804 <sha3_512+0x77c>
1c00a17e:	ffca7813          	andi	a6,s4,-4
1c00a182:	87ae                	mv	a5,a1
1c00a184:	982e                	add	a6,a6,a1
1c00a186:	0017c603          	lbu	a2,1(a5)
1c00a18a:	0007c503          	lbu	a0,0(a5)
1c00a18e:	0027c683          	lbu	a3,2(a5)
1c00a192:	0037c703          	lbu	a4,3(a5)
1c00a196:	0622                	slli	a2,a2,0x8
1c00a198:	8e49                	or	a2,a2,a0
1c00a19a:	06c2                	slli	a3,a3,0x10
1c00a19c:	8ed1                	or	a3,a3,a2
1c00a19e:	0762                	slli	a4,a4,0x18
1c00a1a0:	8f55                	or	a4,a4,a3
1c00a1a2:	00e9a023          	sw	a4,0(s3)
1c00a1a6:	0791                	addi	a5,a5,4
1c00a1a8:	0991                	addi	s3,s3,4
1c00a1aa:	fd079ee3          	bne	a5,a6,1c00a186 <sha3_512+0xfe>
1c00a1ae:	ffca7793          	andi	a5,s4,-4
1c00a1b2:	03478f63          	beq	a5,s4,1c00a1f0 <sha3_512+0x168>
1c00a1b6:	00f58733          	add	a4,a1,a5
1c00a1ba:	00074603          	lbu	a2,0(a4)
1c00a1be:	1314                	addi	a3,sp,416
1c00a1c0:	96be                	add	a3,a3,a5
1c00a1c2:	00178713          	addi	a4,a5,1
1c00a1c6:	f2c68c23          	sb	a2,-200(a3)
1c00a1ca:	03477363          	bgeu	a4,s4,1c00a1f0 <sha3_512+0x168>
1c00a1ce:	00e586b3          	add	a3,a1,a4
1c00a1d2:	0006c683          	lbu	a3,0(a3)
1c00a1d6:	1310                	addi	a2,sp,416
1c00a1d8:	9732                	add	a4,a4,a2
1c00a1da:	0789                	addi	a5,a5,2
1c00a1dc:	f2d70c23          	sb	a3,-200(a4)
1c00a1e0:	0147f863          	bgeu	a5,s4,1c00a1f0 <sha3_512+0x168>
1c00a1e4:	95be                	add	a1,a1,a5
1c00a1e6:	0005c703          	lbu	a4,0(a1)
1c00a1ea:	97b2                	add	a5,a5,a2
1c00a1ec:	f2e78c23          	sb	a4,-200(a5)
1c00a1f0:	131c                	addi	a5,sp,416
1c00a1f2:	9a3e                	add	s4,s4,a5
1c00a1f4:	4799                	li	a5,6
1c00a1f6:	f2fa0c23          	sb	a5,-200(s4)
1c00a1fa:	0da14703          	lbu	a4,218(sp)
1c00a1fe:	0d914f83          	lbu	t6,217(sp)
1c00a202:	0e214783          	lbu	a5,226(sp)
1c00a206:	0e114e83          	lbu	t4,225(sp)
1c00a20a:	0e514303          	lbu	t1,229(sp)
1c00a20e:	0e414383          	lbu	t2,228(sp)
1c00a212:	0e614803          	lbu	a6,230(sp)
1c00a216:	0d814283          	lbu	t0,216(sp)
1c00a21a:	0e014f03          	lbu	t5,224(sp)
1c00a21e:	0db14503          	lbu	a0,219(sp)
1c00a222:	0e314603          	lbu	a2,227(sp)
1c00a226:	0e714683          	lbu	a3,231(sp)
1c00a22a:	0fa2                	slli	t6,t6,0x8
1c00a22c:	0ea2                	slli	t4,t4,0x8
1c00a22e:	0742                	slli	a4,a4,0x10
1c00a230:	07c2                	slli	a5,a5,0x10
1c00a232:	0322                	slli	t1,t1,0x8
1c00a234:	00736333          	or	t1,t1,t2
1c00a238:	01f76733          	or	a4,a4,t6
1c00a23c:	01d7e7b3          	or	a5,a5,t4
1c00a240:	0842                	slli	a6,a6,0x10
1c00a242:	0dd14e03          	lbu	t3,221(sp)
1c00a246:	00576733          	or	a4,a4,t0
1c00a24a:	01e7e7b3          	or	a5,a5,t5
1c00a24e:	00686833          	or	a6,a6,t1
1c00a252:	0662                	slli	a2,a2,0x18
1c00a254:	06e2                	slli	a3,a3,0x18
1c00a256:	0562                	slli	a0,a0,0x18
1c00a258:	0dc14483          	lbu	s1,220(sp)
1c00a25c:	0de14883          	lbu	a7,222(sp)
1c00a260:	8d59                	or	a0,a0,a4
1c00a262:	00f66733          	or	a4,a2,a5
1c00a266:	0106e7b3          	or	a5,a3,a6
1c00a26a:	46c2                	lw	a3,16(sp)
1c00a26c:	0df14583          	lbu	a1,223(sp)
1c00a270:	0e22                	slli	t3,t3,0x8
1c00a272:	009e6e33          	or	t3,t3,s1
1c00a276:	8d35                	xor	a0,a0,a3
1c00a278:	08c2                	slli	a7,a7,0x10
1c00a27a:	46d2                	lw	a3,20(sp)
1c00a27c:	01c8e8b3          	or	a7,a7,t3
1c00a280:	05e2                	slli	a1,a1,0x18
1c00a282:	0115e5b3          	or	a1,a1,a7
1c00a286:	8db5                	xor	a1,a1,a3
1c00a288:	46e2                	lw	a3,24(sp)
1c00a28a:	0ea14803          	lbu	a6,234(sp)
1c00a28e:	0e914483          	lbu	s1,233(sp)
1c00a292:	8eb9                	xor	a3,a3,a4
1c00a294:	4772                	lw	a4,28(sp)
1c00a296:	0e814a83          	lbu	s5,232(sp)
1c00a29a:	0eb14a03          	lbu	s4,235(sp)
1c00a29e:	8f3d                	xor	a4,a4,a5
1c00a2a0:	0ec14d03          	lbu	s10,236(sp)
1c00a2a4:	11f14783          	lbu	a5,287(sp)
1c00a2a8:	0ed14903          	lbu	s2,237(sp)
1c00a2ac:	c82a                	sw	a0,16(sp)
1c00a2ae:	ca2e                	sw	a1,20(sp)
1c00a2b0:	cc36                	sw	a3,24(sp)
1c00a2b2:	ce3a                	sw	a4,28(sp)
1c00a2b4:	0ee14f83          	lbu	t6,238(sp)
1c00a2b8:	0f214283          	lbu	t0,242(sp)
1c00a2bc:	0f114f03          	lbu	t5,241(sp)
1c00a2c0:	0fd14883          	lbu	a7,253(sp)
1c00a2c4:	0fc14b83          	lbu	s7,252(sp)
1c00a2c8:	04a2                	slli	s1,s1,0x8
1c00a2ca:	0842                	slli	a6,a6,0x10
1c00a2cc:	02c2                	slli	t0,t0,0x10
1c00a2ce:	08a2                	slli	a7,a7,0x8
1c00a2d0:	00986833          	or	a6,a6,s1
1c00a2d4:	0f22                	slli	t5,t5,0x8
1c00a2d6:	01e2ef33          	or	t5,t0,t5
1c00a2da:	01586833          	or	a6,a6,s5
1c00a2de:	0178e2b3          	or	t0,a7,s7
1c00a2e2:	018a1893          	slli	a7,s4,0x18
1c00a2e6:	0108e833          	or	a6,a7,a6
1c00a2ea:	5882                	lw	a7,32(sp)
1c00a2ec:	0ef14503          	lbu	a0,239(sp)
1c00a2f0:	0922                	slli	s2,s2,0x8
1c00a2f2:	01a96933          	or	s2,s2,s10
1c00a2f6:	0108c8b3          	xor	a7,a7,a6
1c00a2fa:	0fc2                	slli	t6,t6,0x10
1c00a2fc:	5812                	lw	a6,36(sp)
1c00a2fe:	0f014983          	lbu	s3,240(sp)
1c00a302:	0f314583          	lbu	a1,243(sp)
1c00a306:	012fefb3          	or	t6,t6,s2
1c00a30a:	0562                	slli	a0,a0,0x18
1c00a30c:	0f514e83          	lbu	t4,245(sp)
1c00a310:	01f56533          	or	a0,a0,t6
1c00a314:	0f414c83          	lbu	s9,244(sp)
1c00a318:	0f614c03          	lbu	s8,246(sp)
1c00a31c:	00a84833          	xor	a6,a6,a0
1c00a320:	5522                	lw	a0,40(sp)
1c00a322:	0f714603          	lbu	a2,247(sp)
1c00a326:	013f6f33          	or	t5,t5,s3
1c00a32a:	05e2                	slli	a1,a1,0x18
1c00a32c:	0f914e03          	lbu	t3,249(sp)
1c00a330:	0fa14303          	lbu	t1,250(sp)
1c00a334:	01e5e5b3          	or	a1,a1,t5
1c00a338:	0ea2                	slli	t4,t4,0x8
1c00a33a:	019ee4b3          	or	s1,t4,s9
1c00a33e:	8d2d                	xor	a0,a0,a1
1c00a340:	010c1e93          	slli	t4,s8,0x10
1c00a344:	55b2                	lw	a1,44(sp)
1c00a346:	0f814383          	lbu	t2,248(sp)
1c00a34a:	0fb14683          	lbu	a3,251(sp)
1c00a34e:	009eeeb3          	or	t4,t4,s1
1c00a352:	0662                	slli	a2,a2,0x18
1c00a354:	01d66633          	or	a2,a2,t4
1c00a358:	0342                	slli	t1,t1,0x10
1c00a35a:	0e22                	slli	t3,t3,0x8
1c00a35c:	0fe14b03          	lbu	s6,254(sp)
1c00a360:	8db1                	xor	a1,a1,a2
1c00a362:	006e6e33          	or	t3,t3,t1
1c00a366:	5642                	lw	a2,48(sp)
1c00a368:	0ff14703          	lbu	a4,255(sp)
1c00a36c:	007e6e33          	or	t3,t3,t2
1c00a370:	06e2                	slli	a3,a3,0x18
1c00a372:	01c6e6b3          	or	a3,a3,t3
1c00a376:	8e35                	xor	a2,a2,a3
1c00a378:	010b1313          	slli	t1,s6,0x10
1c00a37c:	56d2                	lw	a3,52(sp)
1c00a37e:	00536333          	or	t1,t1,t0
1c00a382:	0762                	slli	a4,a4,0x18
1c00a384:	00676733          	or	a4,a4,t1
1c00a388:	8f35                	xor	a4,a4,a3
1c00a38a:	10114e83          	lbu	t4,257(sp)
1c00a38e:	10214a83          	lbu	s5,258(sp)
1c00a392:	d046                	sw	a7,32(sp)
1c00a394:	d242                	sw	a6,36(sp)
1c00a396:	d42a                	sw	a0,40(sp)
1c00a398:	d62e                	sw	a1,44(sp)
1c00a39a:	d832                	sw	a2,48(sp)
1c00a39c:	da3a                	sw	a4,52(sp)
1c00a39e:	10014903          	lbu	s2,256(sp)
1c00a3a2:	10914303          	lbu	t1,265(sp)
1c00a3a6:	10a14983          	lbu	s3,266(sp)
1c00a3aa:	10814383          	lbu	t2,264(sp)
1c00a3ae:	10514f83          	lbu	t6,261(sp)
1c00a3b2:	10b14603          	lbu	a2,267(sp)
1c00a3b6:	10414b03          	lbu	s6,260(sp)
1c00a3ba:	10614e03          	lbu	t3,262(sp)
1c00a3be:	09c2                	slli	s3,s3,0x10
1c00a3c0:	0322                	slli	t1,t1,0x8
1c00a3c2:	10714583          	lbu	a1,263(sp)
1c00a3c6:	01336333          	or	t1,t1,s3
1c00a3ca:	00736333          	or	t1,t1,t2
1c00a3ce:	10d14f03          	lbu	t5,269(sp)
1c00a3d2:	0fa2                	slli	t6,t6,0x8
1c00a3d4:	0662                	slli	a2,a2,0x18
1c00a3d6:	10c14a03          	lbu	s4,268(sp)
1c00a3da:	016fefb3          	or	t6,t6,s6
1c00a3de:	11114803          	lbu	a6,273(sp)
1c00a3e2:	11214483          	lbu	s1,274(sp)
1c00a3e6:	10e14883          	lbu	a7,270(sp)
1c00a3ea:	00666633          	or	a2,a2,t1
1c00a3ee:	0e42                	slli	t3,t3,0x10
1c00a3f0:	5372                	lw	t1,60(sp)
1c00a3f2:	01fe6e33          	or	t3,t3,t6
1c00a3f6:	10f14683          	lbu	a3,271(sp)
1c00a3fa:	05e2                	slli	a1,a1,0x18
1c00a3fc:	11014283          	lbu	t0,272(sp)
1c00a400:	11314703          	lbu	a4,275(sp)
1c00a404:	01c5e5b3          	or	a1,a1,t3
1c00a408:	0f22                	slli	t5,t5,0x8
1c00a40a:	014f6f33          	or	t5,t5,s4
1c00a40e:	00b34333          	xor	t1,t1,a1
1c00a412:	04c2                	slli	s1,s1,0x10
1c00a414:	4596                	lw	a1,68(sp)
1c00a416:	0822                	slli	a6,a6,0x8
1c00a418:	08c2                	slli	a7,a7,0x10
1c00a41a:	10314503          	lbu	a0,259(sp)
1c00a41e:	01e8e8b3          	or	a7,a7,t5
1c00a422:	00986833          	or	a6,a6,s1
1c00a426:	06e2                	slli	a3,a3,0x18
1c00a428:	00586833          	or	a6,a6,t0
1c00a42c:	0116e6b3          	or	a3,a3,a7
1c00a430:	0ac2                	slli	s5,s5,0x10
1c00a432:	0ea2                	slli	t4,t4,0x8
1c00a434:	0762                	slli	a4,a4,0x18
1c00a436:	5e62                	lw	t3,56(sp)
1c00a438:	8db5                	xor	a1,a1,a3
1c00a43a:	015eeeb3          	or	t4,t4,s5
1c00a43e:	46a6                	lw	a3,72(sp)
1c00a440:	01076733          	or	a4,a4,a6
1c00a444:	4806                	lw	a6,64(sp)
1c00a446:	012eeeb3          	or	t4,t4,s2
1c00a44a:	0562                	slli	a0,a0,0x18
1c00a44c:	01d56533          	or	a0,a0,t4
1c00a450:	00ae4e33          	xor	t3,t3,a0
1c00a454:	00c84833          	xor	a6,a6,a2
1c00a458:	8f35                	xor	a4,a4,a3
1c00a45a:	11414f03          	lbu	t5,276(sp)
1c00a45e:	11514883          	lbu	a7,277(sp)
1c00a462:	11614503          	lbu	a0,278(sp)
1c00a466:	11714603          	lbu	a2,279(sp)
1c00a46a:	dc72                	sw	t3,56(sp)
1c00a46c:	de1a                	sw	t1,60(sp)
1c00a46e:	c0c2                	sw	a6,64(sp)
1c00a470:	c2ae                	sw	a1,68(sp)
1c00a472:	c4ba                	sw	a4,72(sp)
1c00a474:	11914703          	lbu	a4,281(sp)
1c00a478:	11a14303          	lbu	t1,282(sp)
1c00a47c:	11814e03          	lbu	t3,280(sp)
1c00a480:	11b14683          	lbu	a3,283(sp)
1c00a484:	0342                	slli	t1,t1,0x10
1c00a486:	0722                	slli	a4,a4,0x8
1c00a488:	00676733          	or	a4,a4,t1
1c00a48c:	01c76733          	or	a4,a4,t3
1c00a490:	06e2                	slli	a3,a3,0x18
1c00a492:	08a2                	slli	a7,a7,0x8
1c00a494:	01e8e8b3          	or	a7,a7,t5
1c00a498:	8f55                	or	a4,a4,a3
1c00a49a:	0542                	slli	a0,a0,0x10
1c00a49c:	46b6                	lw	a3,76(sp)
1c00a49e:	01156533          	or	a0,a0,a7
1c00a4a2:	0662                	slli	a2,a2,0x18
1c00a4a4:	11d14803          	lbu	a6,285(sp)
1c00a4a8:	8e49                	or	a2,a2,a0
1c00a4aa:	11c14e83          	lbu	t4,284(sp)
1c00a4ae:	8e35                	xor	a2,a2,a3
1c00a4b0:	11e14583          	lbu	a1,286(sp)
1c00a4b4:	46c6                	lw	a3,80(sp)
1c00a4b6:	0822                	slli	a6,a6,0x8
1c00a4b8:	01d86833          	or	a6,a6,t4
1c00a4bc:	8eb9                	xor	a3,a3,a4
1c00a4be:	0807e793          	ori	a5,a5,128
1c00a4c2:	4756                	lw	a4,84(sp)
1c00a4c4:	05c2                	slli	a1,a1,0x10
1c00a4c6:	0105e5b3          	or	a1,a1,a6
1c00a4ca:	07e2                	slli	a5,a5,0x18
1c00a4cc:	8fcd                	or	a5,a5,a1
1c00a4ce:	080c                	addi	a1,sp,16
1c00a4d0:	8fb9                	xor	a5,a5,a4
1c00a4d2:	852e                	mv	a0,a1
1c00a4d4:	c6b2                	sw	a2,76(sp)
1c00a4d6:	c8b6                	sw	a3,80(sp)
1c00a4d8:	cabe                	sw	a5,84(sp)
1c00a4da:	dbbfe0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c00a4de:	4552                	lw	a0,20(sp)
1c00a4e0:	45f2                	lw	a1,28(sp)
1c00a4e2:	5612                	lw	a2,36(sp)
1c00a4e4:	56b2                	lw	a3,44(sp)
1c00a4e6:	57d2                	lw	a5,52(sp)
1c00a4e8:	5772                	lw	a4,60(sp)
1c00a4ea:	00855b13          	srli	s6,a0,0x8
1c00a4ee:	01055a93          	srli	s5,a0,0x10
1c00a4f2:	01855a13          	srli	s4,a0,0x18
1c00a4f6:	0085d993          	srli	s3,a1,0x8
1c00a4fa:	0105d913          	srli	s2,a1,0x10
1c00a4fe:	0185d493          	srli	s1,a1,0x18
1c00a502:	0ca10e23          	sb	a0,220(sp)
1c00a506:	0d610ea3          	sb	s6,221(sp)
1c00a50a:	0d510f23          	sb	s5,222(sp)
1c00a50e:	0d410fa3          	sb	s4,223(sp)
1c00a512:	00865393          	srli	t2,a2,0x8
1c00a516:	01065293          	srli	t0,a2,0x10
1c00a51a:	01865f93          	srli	t6,a2,0x18
1c00a51e:	0086df13          	srli	t5,a3,0x8
1c00a522:	0106de93          	srli	t4,a3,0x10
1c00a526:	0186de13          	srli	t3,a3,0x18
1c00a52a:	0087d313          	srli	t1,a5,0x8
1c00a52e:	0107d893          	srli	a7,a5,0x10
1c00a532:	0187d813          	srli	a6,a5,0x18
1c00a536:	0eb10223          	sb	a1,228(sp)
1c00a53a:	0f3102a3          	sb	s3,229(sp)
1c00a53e:	0f210323          	sb	s2,230(sp)
1c00a542:	0e9103a3          	sb	s1,231(sp)
1c00a546:	45c2                	lw	a1,16(sp)
1c00a548:	4536                	lw	a0,76(sp)
1c00a54a:	0ec10623          	sb	a2,236(sp)
1c00a54e:	0e7106a3          	sb	t2,237(sp)
1c00a552:	467e                	lw	a2,220(sp)
1c00a554:	0e510723          	sb	t0,238(sp)
1c00a558:	0ff107a3          	sb	t6,239(sp)
1c00a55c:	0ed10a23          	sb	a3,244(sp)
1c00a560:	0fe10aa3          	sb	t5,245(sp)
1c00a564:	46e2                	lw	a3,24(sp)
1c00a566:	0fd10b23          	sb	t4,246(sp)
1c00a56a:	0fc10ba3          	sb	t3,247(sp)
1c00a56e:	0e610ea3          	sb	t1,253(sp)
1c00a572:	0f110f23          	sb	a7,254(sp)
1c00a576:	0f010fa3          	sb	a6,255(sp)
1c00a57a:	10e10223          	sb	a4,260(sp)
1c00a57e:	4816                	lw	a6,68(sp)
1c00a580:	0ef10e23          	sb	a5,252(sp)
1c00a584:	579e                	lw	a5,228(sp)
1c00a586:	00875d93          	srli	s11,a4,0x8
1c00a58a:	01075d13          	srli	s10,a4,0x10
1c00a58e:	00885c93          	srli	s9,a6,0x8
1c00a592:	01085c13          	srli	s8,a6,0x10
1c00a596:	01885b93          	srli	s7,a6,0x18
1c00a59a:	00855b13          	srli	s6,a0,0x8
1c00a59e:	01055a93          	srli	s5,a0,0x10
1c00a5a2:	01855a13          	srli	s4,a0,0x18
1c00a5a6:	0085d993          	srli	s3,a1,0x8
1c00a5aa:	0105d913          	srli	s2,a1,0x10
1c00a5ae:	0185d493          	srli	s1,a1,0x18
1c00a5b2:	00865393          	srli	t2,a2,0x8
1c00a5b6:	01065293          	srli	t0,a2,0x10
1c00a5ba:	01865f93          	srli	t6,a2,0x18
1c00a5be:	0086df13          	srli	t5,a3,0x8
1c00a5c2:	0106de93          	srli	t4,a3,0x10
1c00a5c6:	0186de13          	srli	t3,a3,0x18
1c00a5ca:	0087d313          	srli	t1,a5,0x8
1c00a5ce:	0107d893          	srli	a7,a5,0x10
1c00a5d2:	00f40623          	sb	a5,12(s0)
1c00a5d6:	8361                	srli	a4,a4,0x18
1c00a5d8:	83e1                	srli	a5,a5,0x18
1c00a5da:	11b102a3          	sb	s11,261(sp)
1c00a5de:	11a10323          	sb	s10,262(sp)
1c00a5e2:	10e103a3          	sb	a4,263(sp)
1c00a5e6:	11010623          	sb	a6,268(sp)
1c00a5ea:	4706                	lw	a4,64(sp)
1c00a5ec:	119106a3          	sb	s9,269(sp)
1c00a5f0:	11810723          	sb	s8,270(sp)
1c00a5f4:	117107a3          	sb	s7,271(sp)
1c00a5f8:	10a10a23          	sb	a0,276(sp)
1c00a5fc:	11610aa3          	sb	s6,277(sp)
1c00a600:	11510b23          	sb	s5,278(sp)
1c00a604:	11410ba3          	sb	s4,279(sp)
1c00a608:	00b40023          	sb	a1,0(s0)
1c00a60c:	4a26                	lw	s4,72(sp)
1c00a60e:	55be                	lw	a1,236(sp)
1c00a610:	013400a3          	sb	s3,1(s0)
1c00a614:	01240123          	sb	s2,2(s0)
1c00a618:	009401a3          	sb	s1,3(s0)
1c00a61c:	00c40223          	sb	a2,4(s0)
1c00a620:	007402a3          	sb	t2,5(s0)
1c00a624:	565e                	lw	a2,244(sp)
1c00a626:	00540323          	sb	t0,6(s0)
1c00a62a:	01f403a3          	sb	t6,7(s0)
1c00a62e:	01e404a3          	sb	t5,9(s0)
1c00a632:	01d40523          	sb	t4,10(s0)
1c00a636:	01c405a3          	sb	t3,11(s0)
1c00a63a:	006406a3          	sb	t1,13(s0)
1c00a63e:	01140723          	sb	a7,14(s0)
1c00a642:	00f407a3          	sb	a5,15(s0)
1c00a646:	00d40423          	sb	a3,8(s0)
1c00a64a:	56fe                	lw	a3,252(sp)
1c00a64c:	5502                	lw	a0,32(sp)
1c00a64e:	54a2                	lw	s1,40(sp)
1c00a650:	0185db13          	srli	s6,a1,0x18
1c00a654:	00855d93          	srli	s11,a0,0x8
1c00a658:	01055d13          	srli	s10,a0,0x10
1c00a65c:	01855c93          	srli	s9,a0,0x18
1c00a660:	5522                	lw	a0,40(sp)
1c00a662:	5842                	lw	a6,48(sp)
1c00a664:	0085dc13          	srli	s8,a1,0x8
1c00a668:	00855a93          	srli	s5,a0,0x8
1c00a66c:	8141                	srli	a0,a0,0x10
1c00a66e:	c42a                	sw	a0,8(sp)
1c00a670:	5562                	lw	a0,56(sp)
1c00a672:	0105db93          	srli	s7,a1,0x10
1c00a676:	00b40a23          	sb	a1,20(s0)
1c00a67a:	8161                	srli	a0,a0,0x18
1c00a67c:	c22a                	sw	a0,4(sp)
1c00a67e:	5502                	lw	a0,32(sp)
1c00a680:	45a2                	lw	a1,8(sp)
1c00a682:	01640ba3          	sb	s6,23(s0)
1c00a686:	c62a                	sw	a0,12(sp)
1c00a688:	00c14503          	lbu	a0,12(sp)
1c00a68c:	5b22                	lw	s6,40(sp)
1c00a68e:	0184d993          	srli	s3,s1,0x18
1c00a692:	00865913          	srli	s2,a2,0x8
1c00a696:	01065493          	srli	s1,a2,0x10
1c00a69a:	01865393          	srli	t2,a2,0x18
1c00a69e:	00a10623          	sb	a0,12(sp)
1c00a6a2:	0ff57513          	andi	a0,a0,255
1c00a6a6:	10412783          	lw	a5,260(sp)
1c00a6aa:	00885293          	srli	t0,a6,0x8
1c00a6ae:	01085f93          	srli	t6,a6,0x10
1c00a6b2:	01885f13          	srli	t5,a6,0x18
1c00a6b6:	0086de93          	srli	t4,a3,0x8
1c00a6ba:	5862                	lw	a6,56(sp)
1c00a6bc:	0106de13          	srli	t3,a3,0x10
1c00a6c0:	0186d313          	srli	t1,a3,0x18
1c00a6c4:	00a40823          	sb	a0,16(s0)
1c00a6c8:	01b408a3          	sb	s11,17(s0)
1c00a6cc:	01a40923          	sb	s10,18(s0)
1c00a6d0:	019409a3          	sb	s9,19(s0)
1c00a6d4:	01840aa3          	sb	s8,21(s0)
1c00a6d8:	01740b23          	sb	s7,22(s0)
1c00a6dc:	01640c23          	sb	s6,24(s0)
1c00a6e0:	01540ca3          	sb	s5,25(s0)
1c00a6e4:	00b40d23          	sb	a1,26(s0)
1c00a6e8:	01340da3          	sb	s3,27(s0)
1c00a6ec:	01240ea3          	sb	s2,29(s0)
1c00a6f0:	00940f23          	sb	s1,30(s0)
1c00a6f4:	00740fa3          	sb	t2,31(s0)
1c00a6f8:	00c40e23          	sb	a2,28(s0)
1c00a6fc:	5642                	lw	a2,48(sp)
1c00a6fe:	02d40223          	sb	a3,36(s0)
1c00a702:	56e2                	lw	a3,56(sp)
1c00a704:	02c40023          	sb	a2,32(s0)
1c00a708:	10c12603          	lw	a2,268(sp)
1c00a70c:	02d40423          	sb	a3,40(s0)
1c00a710:	4692                	lw	a3,4(sp)
1c00a712:	00885893          	srli	a7,a6,0x8
1c00a716:	025400a3          	sb	t0,33(s0)
1c00a71a:	02d405a3          	sb	a3,43(s0)
1c00a71e:	11412683          	lw	a3,276(sp)
1c00a722:	03f40123          	sb	t6,34(s0)
1c00a726:	03e401a3          	sb	t5,35(s0)
1c00a72a:	03d402a3          	sb	t4,37(s0)
1c00a72e:	03c40323          	sb	t3,38(s0)
1c00a732:	026403a3          	sb	t1,39(s0)
1c00a736:	02f40623          	sb	a5,44(s0)
1c00a73a:	0087d993          	srli	s3,a5,0x8
1c00a73e:	0107d913          	srli	s2,a5,0x10
1c00a742:	01085813          	srli	a6,a6,0x10
1c00a746:	00875493          	srli	s1,a4,0x8
1c00a74a:	008a5e13          	srli	t3,s4,0x8
1c00a74e:	010a5313          	srli	t1,s4,0x10
1c00a752:	83e1                	srli	a5,a5,0x18
1c00a754:	01075393          	srli	t2,a4,0x10
1c00a758:	01875293          	srli	t0,a4,0x18
1c00a75c:	00865f93          	srli	t6,a2,0x8
1c00a760:	01065f13          	srli	t5,a2,0x10
1c00a764:	01865e93          	srli	t4,a2,0x18
1c00a768:	031404a3          	sb	a7,41(s0)
1c00a76c:	03040523          	sb	a6,42(s0)
1c00a770:	033406a3          	sb	s3,45(s0)
1c00a774:	03240723          	sb	s2,46(s0)
1c00a778:	029408a3          	sb	s1,49(s0)
1c00a77c:	03440c23          	sb	s4,56(s0)
1c00a780:	018a5893          	srli	a7,s4,0x18
1c00a784:	02f407a3          	sb	a5,47(s0)
1c00a788:	02e40823          	sb	a4,48(s0)
1c00a78c:	02740923          	sb	t2,50(s0)
1c00a790:	025409a3          	sb	t0,51(s0)
1c00a794:	02c40a23          	sb	a2,52(s0)
1c00a798:	03f40aa3          	sb	t6,53(s0)
1c00a79c:	03e40b23          	sb	t5,54(s0)
1c00a7a0:	03d40ba3          	sb	t4,55(s0)
1c00a7a4:	03c40ca3          	sb	t3,57(s0)
1c00a7a8:	02640d23          	sb	t1,58(s0)
1c00a7ac:	0086d813          	srli	a6,a3,0x8
1c00a7b0:	0106d513          	srli	a0,a3,0x10
1c00a7b4:	0186d593          	srli	a1,a3,0x18
1c00a7b8:	03140da3          	sb	a7,59(s0)
1c00a7bc:	02d40e23          	sb	a3,60(s0)
1c00a7c0:	03040ea3          	sb	a6,61(s0)
1c00a7c4:	02a40f23          	sb	a0,62(s0)
1c00a7c8:	02b40fa3          	sb	a1,63(s0)
1c00a7cc:	1dc12083          	lw	ra,476(sp)
1c00a7d0:	1d812403          	lw	s0,472(sp)
1c00a7d4:	1d412483          	lw	s1,468(sp)
1c00a7d8:	1d012903          	lw	s2,464(sp)
1c00a7dc:	1cc12983          	lw	s3,460(sp)
1c00a7e0:	1c812a03          	lw	s4,456(sp)
1c00a7e4:	1c412a83          	lw	s5,452(sp)
1c00a7e8:	1c012b03          	lw	s6,448(sp)
1c00a7ec:	1bc12b83          	lw	s7,444(sp)
1c00a7f0:	1b812c03          	lw	s8,440(sp)
1c00a7f4:	1b412c83          	lw	s9,436(sp)
1c00a7f8:	1b012d03          	lw	s10,432(sp)
1c00a7fc:	1ac12d83          	lw	s11,428(sp)
1c00a800:	613d                	addi	sp,sp,480
1c00a802:	8082                	ret
1c00a804:	4781                	li	a5,0
1c00a806:	ba45                	j	1c00a1b6 <sha3_512+0x12e>

1c00a808 <PQCLEAN_KYBER768_CLEAN_gen_matrix>:
1c00a808:	db010113          	addi	sp,sp,-592
1c00a80c:	21b12e23          	sw	s11,540(sp)
1c00a810:	6d85                	lui	s11,0x1
1c00a812:	24912223          	sw	s1,580(sp)
1c00a816:	25212023          	sw	s2,576(sp)
1c00a81a:	23512a23          	sw	s5,564(sp)
1c00a81e:	23612823          	sw	s6,560(sp)
1c00a822:	23912223          	sw	s9,548(sp)
1c00a826:	23a12023          	sw	s10,544(sp)
1c00a82a:	24112623          	sw	ra,588(sp)
1c00a82e:	fffd8d13          	addi	s10,s11,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00a832:	24812423          	sw	s0,584(sp)
1c00a836:	23312e23          	sw	s3,572(sp)
1c00a83a:	23412c23          	sw	s4,568(sp)
1c00a83e:	23712623          	sw	s7,556(sp)
1c00a842:	23812423          	sw	s8,552(sp)
1c00a846:	8cae                	mv	s9,a1
1c00a848:	c432                	sw	a2,8(sp)
1c00a84a:	c62a                	sw	a0,12(sp)
1c00a84c:	4b01                	li	s6,0
1c00a84e:	20c10a93          	addi	s5,sp,524
1c00a852:	d00d8d93          	addi	s11,s11,-768
1c00a856:	10000913          	li	s2,256
1c00a85a:	1964                	addi	s1,sp,188
1c00a85c:	4432                	lw	s0,12(sp)
1c00a85e:	0ffb7c13          	andi	s8,s6,255
1c00a862:	4981                	li	s3,0
1c00a864:	a831                	j	1c00a880 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x78>
1c00a866:	00f69023          	sh	a5,0(a3)
1c00a86a:	15251763          	bne	a0,s2,1c00a9b8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1b0>
1c00a86e:	0808                	addi	a0,sp,16
1c00a870:	aaaff0ef          	jal	ra,1c009b1a <shake128_ctx_release>
1c00a874:	0985                	addi	s3,s3,1
1c00a876:	478d                	li	a5,3
1c00a878:	20040413          	addi	s0,s0,512
1c00a87c:	0ef98a63          	beq	s3,a5,1c00a970 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x168>
1c00a880:	47a2                	lw	a5,8(sp)
1c00a882:	0ff9f613          	andi	a2,s3,255
1c00a886:	cff9                	beqz	a5,1c00a964 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x15c>
1c00a888:	86b2                	mv	a3,a2
1c00a88a:	85e6                	mv	a1,s9
1c00a88c:	8662                	mv	a2,s8
1c00a88e:	0808                	addi	a0,sp,16
1c00a890:	54b000ef          	jal	ra,1c00b5da <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00a894:	0810                	addi	a2,sp,16
1c00a896:	458d                	li	a1,3
1c00a898:	0848                	addi	a0,sp,20
1c00a89a:	98aff0ef          	jal	ra,1c009a24 <shake128_squeezeblocks>
1c00a89e:	4b81                	li	s7,0
1c00a8a0:	0858                	addi	a4,sp,20
1c00a8a2:	00174583          	lbu	a1,1(a4)
1c00a8a6:	00074603          	lbu	a2,0(a4)
1c00a8aa:	001b9693          	slli	a3,s7,0x1
1c00a8ae:	00859793          	slli	a5,a1,0x8
1c00a8b2:	8fd1                	or	a5,a5,a2
1c00a8b4:	01a7f7b3          	and	a5,a5,s10
1c00a8b8:	07c2                	slli	a5,a5,0x10
1c00a8ba:	83c1                	srli	a5,a5,0x10
1c00a8bc:	00274603          	lbu	a2,2(a4)
1c00a8c0:	96a2                	add	a3,a3,s0
1c00a8c2:	0045d313          	srli	t1,a1,0x4
1c00a8c6:	001b8513          	addi	a0,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a8ca:	f8fdfee3          	bgeu	s11,a5,1c00a866 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x5e>
1c00a8ce:	0612                	slli	a2,a2,0x4
1c00a8d0:	00666633          	or	a2,a2,t1
1c00a8d4:	00cdc863          	blt	s11,a2,1c00a8e4 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xdc>
1c00a8d8:	001b9793          	slli	a5,s7,0x1
1c00a8dc:	97a2                	add	a5,a5,s0
1c00a8de:	00c79023          	sh	a2,0(a5)
1c00a8e2:	0b85                	addi	s7,s7,1
1c00a8e4:	f92b85e3          	beq	s7,s2,1c00a86e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00a8e8:	070d                	addi	a4,a4,3
1c00a8ea:	faea9ce3          	bne	s5,a4,1c00a8a2 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x9a>
1c00a8ee:	0ff00a13          	li	s4,255
1c00a8f2:	a821                	j	1c00a90a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x102>
1c00a8f4:	00171593          	slli	a1,a4,0x1
1c00a8f8:	95aa                	add	a1,a1,a0
1c00a8fa:	0705                	addi	a4,a4,1
1c00a8fc:	00f59023          	sh	a5,0(a1)
1c00a900:	0c676363          	bltu	a4,t1,1c00a9c6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1be>
1c00a904:	9bba                	add	s7,s7,a4
1c00a906:	f77a64e3          	bltu	s4,s7,1c00a86e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00a90a:	0810                	addi	a2,sp,16
1c00a90c:	0848                	addi	a0,sp,20
1c00a90e:	4585                	li	a1,1
1c00a910:	914ff0ef          	jal	ra,1c009a24 <shake128_squeezeblocks>
1c00a914:	001b9513          	slli	a0,s7,0x1
1c00a918:	9522                	add	a0,a0,s0
1c00a91a:	41790333          	sub	t1,s2,s7
1c00a91e:	0850                	addi	a2,sp,20
1c00a920:	4701                	li	a4,0
1c00a922:	00164583          	lbu	a1,1(a2)
1c00a926:	00064e03          	lbu	t3,0(a2)
1c00a92a:	00264683          	lbu	a3,2(a2)
1c00a92e:	00859793          	slli	a5,a1,0x8
1c00a932:	01c7e7b3          	or	a5,a5,t3
1c00a936:	01a7f7b3          	and	a5,a5,s10
1c00a93a:	07c2                	slli	a5,a5,0x10
1c00a93c:	0692                	slli	a3,a3,0x4
1c00a93e:	8191                	srli	a1,a1,0x4
1c00a940:	83c1                	srli	a5,a5,0x10
1c00a942:	8ecd                	or	a3,a3,a1
1c00a944:	fafdf8e3          	bgeu	s11,a5,1c00a8f4 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xec>
1c00a948:	00ddc863          	blt	s11,a3,1c00a958 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x150>
1c00a94c:	00171793          	slli	a5,a4,0x1
1c00a950:	97aa                	add	a5,a5,a0
1c00a952:	00d79023          	sh	a3,0(a5)
1c00a956:	0705                	addi	a4,a4,1
1c00a958:	fa6776e3          	bgeu	a4,t1,1c00a904 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00a95c:	060d                	addi	a2,a2,3
1c00a95e:	fcc492e3          	bne	s1,a2,1c00a922 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x11a>
1c00a962:	b74d                	j	1c00a904 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00a964:	86e2                	mv	a3,s8
1c00a966:	85e6                	mv	a1,s9
1c00a968:	0808                	addi	a0,sp,16
1c00a96a:	471000ef          	jal	ra,1c00b5da <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00a96e:	b71d                	j	1c00a894 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x8c>
1c00a970:	47b2                	lw	a5,12(sp)
1c00a972:	0b05                	addi	s6,s6,1
1c00a974:	60078793          	addi	a5,a5,1536
1c00a978:	c63e                	sw	a5,12(sp)
1c00a97a:	ef3b11e3          	bne	s6,s3,1c00a85c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x54>
1c00a97e:	24c12083          	lw	ra,588(sp)
1c00a982:	24812403          	lw	s0,584(sp)
1c00a986:	24412483          	lw	s1,580(sp)
1c00a98a:	24012903          	lw	s2,576(sp)
1c00a98e:	23c12983          	lw	s3,572(sp)
1c00a992:	23812a03          	lw	s4,568(sp)
1c00a996:	23412a83          	lw	s5,564(sp)
1c00a99a:	23012b03          	lw	s6,560(sp)
1c00a99e:	22c12b83          	lw	s7,556(sp)
1c00a9a2:	22812c03          	lw	s8,552(sp)
1c00a9a6:	22412c83          	lw	s9,548(sp)
1c00a9aa:	22012d03          	lw	s10,544(sp)
1c00a9ae:	21c12d83          	lw	s11,540(sp)
1c00a9b2:	25010113          	addi	sp,sp,592
1c00a9b6:	8082                	ret
1c00a9b8:	8191                	srli	a1,a1,0x4
1c00a9ba:	0612                	slli	a2,a2,0x4
1c00a9bc:	8e4d                	or	a2,a2,a1
1c00a9be:	8baa                	mv	s7,a0
1c00a9c0:	f0cddce3          	bge	s11,a2,1c00a8d8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xd0>
1c00a9c4:	b715                	j	1c00a8e8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xe0>
1c00a9c6:	f8ddd3e3          	bge	s11,a3,1c00a94c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x144>
1c00a9ca:	bf49                	j	1c00a95c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x154>

1c00a9cc <PQCLEAN_KYBER768_CLEAN_indcpa_enc>:
1c00a9cc:	97010113          	addi	sp,sp,-1680
1c00a9d0:	7375                	lui	t1,0xffffd
1c00a9d2:	68112623          	sw	ra,1676(sp)
1c00a9d6:	68812423          	sw	s0,1672(sp)
1c00a9da:	68912223          	sw	s1,1668(sp)
1c00a9de:	69212023          	sw	s2,1664(sp)
1c00a9e2:	67312e23          	sw	s3,1660(sp)
1c00a9e6:	67412c23          	sw	s4,1656(sp)
1c00a9ea:	67512a23          	sw	s5,1652(sp)
1c00a9ee:	67612823          	sw	s6,1648(sp)
1c00a9f2:	67712623          	sw	s7,1644(sp)
1c00a9f6:	67812423          	sw	s8,1640(sp)
1c00a9fa:	67912223          	sw	s9,1636(sp)
1c00a9fe:	67a12023          	sw	s10,1632(sp)
1c00aa02:	65b12e23          	sw	s11,1628(sp)
1c00aa06:	6c0d                	lui	s8,0x3
1c00aa08:	911a                	add	sp,sp,t1
1c00aa0a:	1818                	addi	a4,sp,48
1c00aa0c:	7979                	lui	s2,0xffffe
1c00aa0e:	620c0793          	addi	a5,s8,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00aa12:	97ba                	add	a5,a5,a4
1c00aa14:	c0090a13          	addi	s4,s2,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c00aa18:	9a3e                	add	s4,s4,a5
1c00aa1a:	8432                	mv	s0,a2
1c00aa1c:	8aae                	mv	s5,a1
1c00aa1e:	89aa                	mv	s3,a0
1c00aa20:	85b2                	mv	a1,a2
1c00aa22:	8552                	mv	a0,s4
1c00aa24:	84b6                	mv	s1,a3
1c00aa26:	125000ef          	jal	ra,1c00b34a <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00aa2a:	48244b03          	lbu	s6,1154(s0)
1c00aa2e:	49444783          	lbu	a5,1172(s0)
1c00aa32:	49844703          	lbu	a4,1176(s0)
1c00aa36:	d65a                	sw	s6,44(sp)
1c00aa38:	48b44b03          	lbu	s6,1163(s0)
1c00aa3c:	48044083          	lbu	ra,1152(s0)
1c00aa40:	ca3e                	sw	a5,20(sp)
1c00aa42:	c45a                	sw	s6,8(sp)
1c00aa44:	48f44b03          	lbu	s6,1167(s0)
1c00aa48:	ce3a                	sw	a4,28(sp)
1c00aa4a:	d406                	sw	ra,40(sp)
1c00aa4c:	48c44c03          	lbu	s8,1164(s0)
1c00aa50:	49044b83          	lbu	s7,1168(s0)
1c00aa54:	48544d83          	lbu	s11,1157(s0)
1c00aa58:	48944383          	lbu	t2,1161(s0)
1c00aa5c:	48d44283          	lbu	t0,1165(s0)
1c00aa60:	49144f83          	lbu	t6,1169(s0)
1c00aa64:	49544f03          	lbu	t5,1173(s0)
1c00aa68:	49944e83          	lbu	t4,1177(s0)
1c00aa6c:	49d44e03          	lbu	t3,1181(s0)
1c00aa70:	48144503          	lbu	a0,1153(s0)
1c00aa74:	48444d03          	lbu	s10,1156(s0)
1c00aa78:	48644303          	lbu	t1,1158(s0)
1c00aa7c:	48844c83          	lbu	s9,1160(s0)
1c00aa80:	48a44883          	lbu	a7,1162(s0)
1c00aa84:	48e44803          	lbu	a6,1166(s0)
1c00aa88:	49244603          	lbu	a2,1170(s0)
1c00aa8c:	49644683          	lbu	a3,1174(s0)
1c00aa90:	49a44703          	lbu	a4,1178(s0)
1c00aa94:	49c44583          	lbu	a1,1180(s0)
1c00aa98:	49e44783          	lbu	a5,1182(s0)
1c00aa9c:	48744083          	lbu	ra,1159(s0)
1c00aaa0:	c65a                	sw	s6,12(sp)
1c00aaa2:	49344b03          	lbu	s6,1171(s0)
1c00aaa6:	0fa2                	slli	t6,t6,0x8
1c00aaa8:	017fefb3          	or	t6,t6,s7
1c00aaac:	c85a                	sw	s6,16(sp)
1c00aaae:	49744b03          	lbu	s6,1175(s0)
1c00aab2:	4bd2                	lw	s7,20(sp)
1c00aab4:	0f22                	slli	t5,t5,0x8
1c00aab6:	cc5a                	sw	s6,24(sp)
1c00aab8:	49b44b03          	lbu	s6,1179(s0)
1c00aabc:	017f6f33          	or	t5,t5,s7
1c00aac0:	4bf2                	lw	s7,28(sp)
1c00aac2:	0e22                	slli	t3,t3,0x8
1c00aac4:	d05a                	sw	s6,32(sp)
1c00aac6:	00be65b3          	or	a1,t3,a1
1c00aaca:	49f44b03          	lbu	s6,1183(s0)
1c00aace:	5e22                	lw	t3,40(sp)
1c00aad0:	0ea2                	slli	t4,t4,0x8
1c00aad2:	017eeeb3          	or	t4,t4,s7
1c00aad6:	06c2                	slli	a3,a3,0x10
1c00aad8:	0742                	slli	a4,a4,0x10
1c00aada:	01e6e6b3          	or	a3,a3,t5
1c00aade:	01d76733          	or	a4,a4,t4
1c00aae2:	4f62                	lw	t5,24(sp)
1c00aae4:	5e82                	lw	t4,32(sp)
1c00aae6:	03a2                	slli	t2,t2,0x8
1c00aae8:	02a2                	slli	t0,t0,0x8
1c00aaea:	0522                	slli	a0,a0,0x8
1c00aaec:	d25a                	sw	s6,36(sp)
1c00aaee:	0182e2b3          	or	t0,t0,s8
1c00aaf2:	01c56533          	or	a0,a0,t3
1c00aaf6:	0193e3b3          	or	t2,t2,s9
1c00aafa:	5e32                	lw	t3,44(sp)
1c00aafc:	08c2                	slli	a7,a7,0x10
1c00aafe:	0842                	slli	a6,a6,0x10
1c00ab00:	0642                	slli	a2,a2,0x10
1c00ab02:	07c2                	slli	a5,a5,0x10
1c00ab04:	48344b03          	lbu	s6,1155(s0)
1c00ab08:	0078e8b3          	or	a7,a7,t2
1c00ab0c:	00586833          	or	a6,a6,t0
1c00ab10:	43a2                	lw	t2,8(sp)
1c00ab12:	42b2                	lw	t0,12(sp)
1c00ab14:	01f66633          	or	a2,a2,t6
1c00ab18:	8fcd                	or	a5,a5,a1
1c00ab1a:	4fc2                	lw	t6,16(sp)
1c00ab1c:	5592                	lw	a1,36(sp)
1c00ab1e:	6c0d                	lui	s8,0x3
1c00ab20:	0f62                	slli	t5,t5,0x18
1c00ab22:	0ee2                	slli	t4,t4,0x18
1c00ab24:	0da2                	slli	s11,s11,0x8
1c00ab26:	00df66b3          	or	a3,t5,a3
1c00ab2a:	7475                	lui	s0,0xffffd
1c00ab2c:	03010f13          	addi	t5,sp,48
1c00ab30:	00eee733          	or	a4,t4,a4
1c00ab34:	01aded33          	or	s10,s11,s10
1c00ab38:	0342                	slli	t1,t1,0x10
1c00ab3a:	0e42                	slli	t3,t3,0x10
1c00ab3c:	620c0e93          	addi	t4,s8,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00ab40:	00e2                	slli	ra,ra,0x18
1c00ab42:	03e2                	slli	t2,t2,0x18
1c00ab44:	02e2                	slli	t0,t0,0x18
1c00ab46:	0fe2                	slli	t6,t6,0x18
1c00ab48:	9efa                	add	t4,t4,t5
1c00ab4a:	05e2                	slli	a1,a1,0x18
1c00ab4c:	00ae6e33          	or	t3,t3,a0
1c00ab50:	0b62                	slli	s6,s6,0x18
1c00ab52:	01a36333          	or	t1,t1,s10
1c00ab56:	c0040513          	addi	a0,s0,-1024 # ffffcc00 <__l2_shared_end+0xe3fecc00>
1c00ab5a:	0102e833          	or	a6,t0,a6
1c00ab5e:	00cfe633          	or	a2,t6,a2
1c00ab62:	01cb6e33          	or	t3,s6,t3
1c00ab66:	0060e333          	or	t1,ra,t1
1c00ab6a:	0113e8b3          	or	a7,t2,a7
1c00ab6e:	9576                	add	a0,a0,t4
1c00ab70:	8fcd                	or	a5,a5,a1
1c00ab72:	85d6                	mv	a1,s5
1c00ab74:	de42                	sw	a6,60(sp)
1c00ab76:	d872                	sw	t3,48(sp)
1c00ab78:	da1a                	sw	t1,52(sp)
1c00ab7a:	dc46                	sw	a7,56(sp)
1c00ab7c:	c2b6                	sw	a3,68(sp)
1c00ab7e:	c0b2                	sw	a2,64(sp)
1c00ab80:	c4ba                	sw	a4,72(sp)
1c00ab82:	c6be                	sw	a5,76(sp)
1c00ab84:	21cd                	jal	1c00b066 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>
1c00ab86:	1818                	addi	a4,sp,48
1c00ab88:	7b7d                	lui	s6,0xfffff
1c00ab8a:	620c0793          	addi	a5,s8,1568
1c00ab8e:	97ba                	add	a5,a5,a4
1c00ab90:	e00b0b93          	addi	s7,s6,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00ab94:	9bbe                	add	s7,s7,a5
1c00ab96:	620c0793          	addi	a5,s8,1568
1c00ab9a:	97ba                	add	a5,a5,a4
1c00ab9c:	9e040593          	addi	a1,s0,-1568
1c00aba0:	95be                	add	a1,a1,a5
1c00aba2:	4605                	li	a2,1
1c00aba4:	855e                	mv	a0,s7
1c00aba6:	318d                	jal	1c00a808 <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c00aba8:	1818                	addi	a4,sp,48
1c00abaa:	620c0793          	addi	a5,s8,1568
1c00abae:	97ba                	add	a5,a5,a4
1c00abb0:	60040a93          	addi	s5,s0,1536
1c00abb4:	9abe                	add	s5,s5,a5
1c00abb6:	85a6                	mv	a1,s1
1c00abb8:	4601                	li	a2,0
1c00abba:	8556                	mv	a0,s5
1c00abbc:	2b35                	jal	1c00b0f8 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00abbe:	85a6                	mv	a1,s1
1c00abc0:	4605                	li	a2,1
1c00abc2:	200a8513          	addi	a0,s5,512
1c00abc6:	2b0d                	jal	1c00b0f8 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00abc8:	85a6                	mv	a1,s1
1c00abca:	4609                	li	a2,2
1c00abcc:	400a8513          	addi	a0,s5,1024
1c00abd0:	2325                	jal	1c00b0f8 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00abd2:	1818                	addi	a4,sp,48
1c00abd4:	620c0793          	addi	a5,s8,1568
1c00abd8:	97ba                	add	a5,a5,a4
1c00abda:	20090913          	addi	s2,s2,512
1c00abde:	993e                	add	s2,s2,a5
1c00abe0:	85a6                	mv	a1,s1
1c00abe2:	460d                	li	a2,3
1c00abe4:	854a                	mv	a0,s2
1c00abe6:	2b1d                	jal	1c00b11c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00abe8:	85a6                	mv	a1,s1
1c00abea:	4611                	li	a2,4
1c00abec:	20090513          	addi	a0,s2,512
1c00abf0:	2335                	jal	1c00b11c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00abf2:	85a6                	mv	a1,s1
1c00abf4:	4615                	li	a2,5
1c00abf6:	40090513          	addi	a0,s2,1024
1c00abfa:	230d                	jal	1c00b11c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00abfc:	1818                	addi	a4,sp,48
1c00abfe:	620c0793          	addi	a5,s8,1568
1c00ac02:	97ba                	add	a5,a5,a4
1c00ac04:	e0040513          	addi	a0,s0,-512
1c00ac08:	85a6                	mv	a1,s1
1c00ac0a:	953e                	add	a0,a0,a5
1c00ac0c:	4619                	li	a2,6
1c00ac0e:	2339                	jal	1c00b11c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00ac10:	8556                	mv	a0,s5
1c00ac12:	762000ef          	jal	ra,1c00b374 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00ac16:	1818                	addi	a4,sp,48
1c00ac18:	620c0793          	addi	a5,s8,1568
1c00ac1c:	97ba                	add	a5,a5,a4
1c00ac1e:	800b0493          	addi	s1,s6,-2048
1c00ac22:	94be                	add	s1,s1,a5
1c00ac24:	85de                	mv	a1,s7
1c00ac26:	8526                	mv	a0,s1
1c00ac28:	8656                	mv	a2,s5
1c00ac2a:	0d3000ef          	jal	ra,1c00b4fc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ac2e:	8656                	mv	a2,s5
1c00ac30:	600b8593          	addi	a1,s7,1536
1c00ac34:	20048513          	addi	a0,s1,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00ac38:	0c5000ef          	jal	ra,1c00b4fc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ac3c:	020c0793          	addi	a5,s8,32
1c00ac40:	1818                	addi	a4,sp,48
1c00ac42:	00f705b3          	add	a1,a4,a5
1c00ac46:	8656                	mv	a2,s5
1c00ac48:	40048513          	addi	a0,s1,1024
1c00ac4c:	0b1000ef          	jal	ra,1c00b4fc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ac50:	1818                	addi	a4,sp,48
1c00ac52:	620c0793          	addi	a5,s8,1568
1c00ac56:	97ba                	add	a5,a5,a4
1c00ac58:	a0040513          	addi	a0,s0,-1536
1c00ac5c:	953e                	add	a0,a0,a5
1c00ac5e:	8656                	mv	a2,s5
1c00ac60:	85d2                	mv	a1,s4
1c00ac62:	09b000ef          	jal	ra,1c00b4fc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ac66:	8526                	mv	a0,s1
1c00ac68:	7c4000ef          	jal	ra,1c00b42c <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>
1c00ac6c:	65010713          	addi	a4,sp,1616
1c00ac70:	a0070793          	addi	a5,a4,-1536
1c00ac74:	25010813          	addi	a6,sp,592
1c00ac78:	4388                	lw	a0,0(a5)
1c00ac7a:	43cc                	lw	a1,4(a5)
1c00ac7c:	4790                	lw	a2,8(a5)
1c00ac7e:	47d4                	lw	a3,12(a5)
1c00ac80:	c308                	sw	a0,0(a4)
1c00ac82:	c34c                	sw	a1,4(a4)
1c00ac84:	c710                	sw	a2,8(a4)
1c00ac86:	c754                	sw	a3,12(a4)
1c00ac88:	07c1                	addi	a5,a5,16
1c00ac8a:	0741                	addi	a4,a4,16
1c00ac8c:	ff0796e3          	bne	a5,a6,1c00ac78 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x2ac>
1c00ac90:	678d                	lui	a5,0x3
1c00ac92:	62078793          	addi	a5,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00ac96:	1814                	addi	a3,sp,48
1c00ac98:	7775                	lui	a4,0xffffd
1c00ac9a:	97b6                	add	a5,a5,a3
1c00ac9c:	973e                	add	a4,a4,a5
1c00ac9e:	6341                	lui	t1,0x10
1c00aca0:	4581                	li	a1,0
1c00aca2:	137d                	addi	t1,t1,-1
1c00aca4:	7475                	lui	s0,0xffffd
1c00aca6:	8e3a                	mv	t3,a4
1c00aca8:	10000e93          	li	t4,256
1c00acac:	00071603          	lh	a2,0(a4) # ffffd000 <__l2_shared_end+0xe3fed000>
1c00acb0:	00471883          	lh	a7,4(a4)
1c00acb4:	00271683          	lh	a3,2(a4)
1c00acb8:	00671803          	lh	a6,6(a4)
1c00acbc:	4015d793          	srai	a5,a1,0x1
1c00acc0:	00279513          	slli	a0,a5,0x2
1c00acc4:	0642                	slli	a2,a2,0x10
1c00acc6:	0068f8b3          	and	a7,a7,t1
1c00acca:	0785                	addi	a5,a5,1
1c00accc:	06c2                	slli	a3,a3,0x10
1c00acce:	00687833          	and	a6,a6,t1
1c00acd2:	9572                	add	a0,a0,t3
1c00acd4:	01166633          	or	a2,a2,a7
1c00acd8:	078a                	slli	a5,a5,0x2
1c00acda:	0106e6b3          	or	a3,a3,a6
1c00acde:	20c52023          	sw	a2,512(a0) # 1000200 <__CTOR_LIST__-0x1afffe04>
1c00ace2:	97f2                	add	a5,a5,t3
1c00ace4:	20d7a023          	sw	a3,512(a5)
1c00ace8:	0591                	addi	a1,a1,4
1c00acea:	0721                	addi	a4,a4,8
1c00acec:	fdd590e3          	bne	a1,t4,1c00acac <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x2e0>
1c00acf0:	690d                	lui	s2,0x3
1c00acf2:	1818                	addi	a4,sp,48
1c00acf4:	62090793          	addi	a5,s2,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00acf8:	97ba                	add	a5,a5,a4
1c00acfa:	40040593          	addi	a1,s0,1024 # ffffd400 <__l2_shared_end+0xe3fed400>
1c00acfe:	00b784b3          	add	s1,a5,a1
1c00ad02:	62090793          	addi	a5,s2,1568
1c00ad06:	97ba                	add	a5,a5,a4
1c00ad08:	20040513          	addi	a0,s0,512
1c00ad0c:	85a6                	mv	a1,s1
1c00ad0e:	953e                	add	a0,a0,a5
1c00ad10:	e56fe0ef          	jal	ra,1c009366 <KYBER_poly_intt>
1c00ad14:	62090713          	addi	a4,s2,1568
1c00ad18:	1814                	addi	a3,sp,48
1c00ad1a:	a0040793          	addi	a5,s0,-1536
1c00ad1e:	9736                	add	a4,a4,a3
1c00ad20:	97ba                	add	a5,a5,a4
1c00ad22:	85a6                	mv	a1,s1
1c00ad24:	10078613          	addi	a2,a5,256
1c00ad28:	4198                	lw	a4,0(a1)
1c00ad2a:	0789                	addi	a5,a5,2
1c00ad2c:	0591                	addi	a1,a1,4
1c00ad2e:	01075693          	srli	a3,a4,0x10
1c00ad32:	fed79f23          	sh	a3,-2(a5)
1c00ad36:	0ee79f23          	sh	a4,254(a5)
1c00ad3a:	fec797e3          	bne	a5,a2,1c00ad28 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x35c>
1c00ad3e:	678d                	lui	a5,0x3
1c00ad40:	1814                	addi	a3,sp,48
1c00ad42:	62078713          	addi	a4,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00ad46:	74fd                	lui	s1,0xfffff
1c00ad48:	9736                	add	a4,a4,a3
1c00ad4a:	8a3e                	mv	s4,a5
1c00ad4c:	80048493          	addi	s1,s1,-2048 # ffffe800 <__l2_shared_end+0xe3fee800>
1c00ad50:	7679                	lui	a2,0xffffe
1c00ad52:	62078793          	addi	a5,a5,1568
1c00ad56:	97b6                	add	a5,a5,a3
1c00ad58:	94ba                	add	s1,s1,a4
1c00ad5a:	20060613          	addi	a2,a2,512 # ffffe200 <__l2_shared_end+0xe3fee200>
1c00ad5e:	963e                	add	a2,a2,a5
1c00ad60:	85a6                	mv	a1,s1
1c00ad62:	8526                	mv	a0,s1
1c00ad64:	013000ef          	jal	ra,1c00b576 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c00ad68:	1818                	addi	a4,sp,48
1c00ad6a:	7975                	lui	s2,0xffffd
1c00ad6c:	620a0793          	addi	a5,s4,1568
1c00ad70:	97ba                	add	a5,a5,a4
1c00ad72:	a0090413          	addi	s0,s2,-1536 # ffffca00 <__l2_shared_end+0xe3feca00>
1c00ad76:	943e                	add	s0,s0,a5
1c00ad78:	620a0793          	addi	a5,s4,1568
1c00ad7c:	97ba                	add	a5,a5,a4
1c00ad7e:	e0090613          	addi	a2,s2,-512
1c00ad82:	963e                	add	a2,a2,a5
1c00ad84:	85a2                	mv	a1,s0
1c00ad86:	8522                	mv	a0,s0
1c00ad88:	295d                	jal	1c00b23e <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ad8a:	1818                	addi	a4,sp,48
1c00ad8c:	620a0793          	addi	a5,s4,1568
1c00ad90:	97ba                	add	a5,a5,a4
1c00ad92:	c0090613          	addi	a2,s2,-1024
1c00ad96:	963e                	add	a2,a2,a5
1c00ad98:	85a2                	mv	a1,s0
1c00ad9a:	8522                	mv	a0,s0
1c00ad9c:	214d                	jal	1c00b23e <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ad9e:	8526                	mv	a0,s1
1c00ada0:	7ba000ef          	jal	ra,1c00b55a <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00ada4:	8522                	mv	a0,s0
1c00ada6:	2985                	jal	1c00b216 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00ada8:	85a6                	mv	a1,s1
1c00adaa:	854e                	mv	a0,s3
1c00adac:	296d                	jal	1c00b266 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>
1c00adae:	85a2                	mv	a1,s0
1c00adb0:	3c098513          	addi	a0,s3,960
1c00adb4:	2235                	jal	1c00aee0 <PQCLEAN_KYBER768_CLEAN_poly_compress>
1c00adb6:	630d                	lui	t1,0x3
1c00adb8:	911a                	add	sp,sp,t1
1c00adba:	68c12083          	lw	ra,1676(sp)
1c00adbe:	68812403          	lw	s0,1672(sp)
1c00adc2:	68412483          	lw	s1,1668(sp)
1c00adc6:	68012903          	lw	s2,1664(sp)
1c00adca:	67c12983          	lw	s3,1660(sp)
1c00adce:	67812a03          	lw	s4,1656(sp)
1c00add2:	67412a83          	lw	s5,1652(sp)
1c00add6:	67012b03          	lw	s6,1648(sp)
1c00adda:	66c12b83          	lw	s7,1644(sp)
1c00adde:	66812c03          	lw	s8,1640(sp)
1c00ade2:	66412c83          	lw	s9,1636(sp)
1c00ade6:	66012d03          	lw	s10,1632(sp)
1c00adea:	65c12d83          	lw	s11,1628(sp)
1c00adee:	69010113          	addi	sp,sp,1680
1c00adf2:	8082                	ret

1c00adf4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>:
1c00adf4:	7135                	addi	sp,sp,-160
1c00adf6:	c74e                	sw	s3,140(sp)
1c00adf8:	89aa                	mv	s3,a0
1c00adfa:	1c000537          	lui	a0,0x1c000
1c00adfe:	c552                	sw	s4,136(sp)
1c00ae00:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c00ae04:	8a2e                	mv	s4,a1
1c00ae06:	02000593          	li	a1,32
1c00ae0a:	cf06                	sw	ra,156(sp)
1c00ae0c:	cd22                	sw	s0,152(sp)
1c00ae0e:	cb26                	sw	s1,148(sp)
1c00ae10:	8432                	mv	s0,a2
1c00ae12:	c94a                	sw	s2,144(sp)
1c00ae14:	2ed000ef          	jal	ra,1c00b900 <printf>
1c00ae18:	88bac7b7          	lui	a5,0x88bac
1c00ae1c:	5ba78793          	addi	a5,a5,1466 # 88bac5ba <__l2_shared_end+0x6cb9c5ba>
1c00ae20:	c03e                	sw	a5,0(sp)
1c00ae22:	595cd7b7          	lui	a5,0x595cd
1c00ae26:	31d78793          	addi	a5,a5,797 # 595cd31d <__l2_shared_end+0x3d5bd31d>
1c00ae2a:	c23e                	sw	a5,4(sp)
1c00ae2c:	007097b7          	lui	a5,0x709
1c00ae30:	67178793          	addi	a5,a5,1649 # 709671 <__CTOR_LIST__-0x1b8f6993>
1c00ae34:	c43e                	sw	a5,8(sp)
1c00ae36:	75d697b7          	lui	a5,0x75d69
1c00ae3a:	24678793          	addi	a5,a5,582 # 75d69246 <__l2_shared_end+0x59d59246>
1c00ae3e:	c63e                	sw	a5,12(sp)
1c00ae40:	db9847b7          	lui	a5,0xdb984
1c00ae44:	cb878793          	addi	a5,a5,-840 # db983cb8 <__l2_shared_end+0xbf973cb8>
1c00ae48:	c83e                	sw	a5,16(sp)
1c00ae4a:	805517b7          	lui	a5,0x80551
1c00ae4e:	e6a78793          	addi	a5,a5,-406 # 80550e6a <__l2_shared_end+0x64540e6a>
1c00ae52:	ca3e                	sw	a5,20(sp)
1c00ae54:	7eebb7b7          	lui	a5,0x7eebb
1c00ae58:	f0b78793          	addi	a5,a5,-245 # 7eebaf0b <__l2_shared_end+0x62eaaf0b>
1c00ae5c:	cc3e                	sw	a5,24(sp)
1c00ae5e:	f41b57b7          	lui	a5,0xf41b5
1c00ae62:	97078793          	addi	a5,a5,-1680 # f41b4970 <__l2_shared_end+0xd81a4970>
1c00ae66:	02000613          	li	a2,32
1c00ae6a:	858a                	mv	a1,sp
1c00ae6c:	850a                	mv	a0,sp
1c00ae6e:	ce3e                	sw	a5,28(sp)
1c00ae70:	f39fe0ef          	jal	ra,1c009da8 <sha3_256>
1c00ae74:	85a2                	mv	a1,s0
1c00ae76:	4a000613          	li	a2,1184
1c00ae7a:	1008                	addi	a0,sp,32
1c00ae7c:	f2dfe0ef          	jal	ra,1c009da8 <sha3_256>
1c00ae80:	04000613          	li	a2,64
1c00ae84:	858a                	mv	a1,sp
1c00ae86:	0088                	addi	a0,sp,64
1c00ae88:	a00ff0ef          	jal	ra,1c00a088 <sha3_512>
1c00ae8c:	8622                	mv	a2,s0
1c00ae8e:	1094                	addi	a3,sp,96
1c00ae90:	858a                	mv	a1,sp
1c00ae92:	854e                	mv	a0,s3
1c00ae94:	3e25                	jal	1c00a9cc <PQCLEAN_KYBER768_CLEAN_indcpa_enc>
1c00ae96:	844e                	mv	s0,s3
1c00ae98:	44098913          	addi	s2,s3,1088
1c00ae9c:	1c0004b7          	lui	s1,0x1c000
1c00aea0:	00044583          	lbu	a1,0(s0)
1c00aea4:	16048513          	addi	a0,s1,352 # 1c000160 <__clz_tab+0x144>
1c00aea8:	0405                	addi	s0,s0,1
1c00aeaa:	257000ef          	jal	ra,1c00b900 <printf>
1c00aeae:	fe8919e3          	bne	s2,s0,1c00aea0 <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc+0xac>
1c00aeb2:	85ce                	mv	a1,s3
1c00aeb4:	1088                	addi	a0,sp,96
1c00aeb6:	44000613          	li	a2,1088
1c00aeba:	eeffe0ef          	jal	ra,1c009da8 <sha3_256>
1c00aebe:	8552                	mv	a0,s4
1c00aec0:	0090                	addi	a2,sp,64
1c00aec2:	04000693          	li	a3,64
1c00aec6:	02000593          	li	a1,32
1c00aeca:	c5bfe0ef          	jal	ra,1c009b24 <shake256>
1c00aece:	40fa                	lw	ra,156(sp)
1c00aed0:	446a                	lw	s0,152(sp)
1c00aed2:	44da                	lw	s1,148(sp)
1c00aed4:	494a                	lw	s2,144(sp)
1c00aed6:	49ba                	lw	s3,140(sp)
1c00aed8:	4a2a                	lw	s4,136(sp)
1c00aeda:	4501                	li	a0,0
1c00aedc:	610d                	addi	sp,sp,160
1c00aede:	8082                	ret

1c00aee0 <PQCLEAN_KYBER768_CLEAN_poly_compress>:
1c00aee0:	1101                	addi	sp,sp,-32
1c00aee2:	6605                	lui	a2,0x1
1c00aee4:	ce22                	sw	s0,28(sp)
1c00aee6:	cc26                	sw	s1,24(sp)
1c00aee8:	ca4a                	sw	s2,20(sp)
1c00aeea:	c84e                	sw	s3,16(sp)
1c00aeec:	c652                	sw	s4,12(sp)
1c00aeee:	08050813          	addi	a6,a0,128
1c00aef2:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00aef6:	00259a03          	lh	s4,2(a1)
1c00aefa:	00059383          	lh	t2,0(a1)
1c00aefe:	00659983          	lh	s3,6(a1)
1c00af02:	00a59903          	lh	s2,10(a1)
1c00af06:	00e59483          	lh	s1,14(a1)
1c00af0a:	00459283          	lh	t0,4(a1)
1c00af0e:	00859e03          	lh	t3,8(a1)
1c00af12:	00c59f83          	lh	t6,12(a1)
1c00af16:	40fa5893          	srai	a7,s4,0xf
1c00af1a:	00c8f8b3          	and	a7,a7,a2
1c00af1e:	40f3df13          	srai	t5,t2,0xf
1c00af22:	40f9d693          	srai	a3,s3,0xf
1c00af26:	40f95713          	srai	a4,s2,0xf
1c00af2a:	40f4d793          	srai	a5,s1,0xf
1c00af2e:	98d2                	add	a7,a7,s4
1c00af30:	00cf7f33          	and	t5,t5,a2
1c00af34:	40fe5413          	srai	s0,t3,0xf
1c00af38:	8ef1                	and	a3,a3,a2
1c00af3a:	40f2de93          	srai	t4,t0,0xf
1c00af3e:	8f71                	and	a4,a4,a2
1c00af40:	8ff1                	and	a5,a5,a2
1c00af42:	40ffd313          	srai	t1,t6,0xf
1c00af46:	08c2                	slli	a7,a7,0x10
1c00af48:	9f1e                	add	t5,t5,t2
1c00af4a:	96ce                	add	a3,a3,s3
1c00af4c:	00cefeb3          	and	t4,t4,a2
1c00af50:	974a                	add	a4,a4,s2
1c00af52:	8c71                	and	s0,s0,a2
1c00af54:	97a6                	add	a5,a5,s1
1c00af56:	00c37333          	and	t1,t1,a2
1c00af5a:	0108d893          	srli	a7,a7,0x10
1c00af5e:	0f42                	slli	t5,t5,0x10
1c00af60:	06c2                	slli	a3,a3,0x10
1c00af62:	9e96                	add	t4,t4,t0
1c00af64:	0742                	slli	a4,a4,0x10
1c00af66:	9e22                	add	t3,t3,s0
1c00af68:	07c2                	slli	a5,a5,0x10
1c00af6a:	937e                	add	t1,t1,t6
1c00af6c:	0892                	slli	a7,a7,0x4
1c00af6e:	010f5f13          	srli	t5,t5,0x10
1c00af72:	82c1                	srli	a3,a3,0x10
1c00af74:	8341                	srli	a4,a4,0x10
1c00af76:	83c1                	srli	a5,a5,0x10
1c00af78:	0ec2                	slli	t4,t4,0x10
1c00af7a:	0e42                	slli	t3,t3,0x10
1c00af7c:	0342                	slli	t1,t1,0x10
1c00af7e:	68088893          	addi	a7,a7,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00af82:	0f12                	slli	t5,t5,0x4
1c00af84:	02c8c8b3          	div	a7,a7,a2
1c00af88:	0692                	slli	a3,a3,0x4
1c00af8a:	010ede93          	srli	t4,t4,0x10
1c00af8e:	0712                	slli	a4,a4,0x4
1c00af90:	010e5e13          	srli	t3,t3,0x10
1c00af94:	0792                	slli	a5,a5,0x4
1c00af96:	01035313          	srli	t1,t1,0x10
1c00af9a:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00af9e:	68068693          	addi	a3,a3,1664
1c00afa2:	0e92                	slli	t4,t4,0x4
1c00afa4:	68070713          	addi	a4,a4,1664
1c00afa8:	0e12                	slli	t3,t3,0x4
1c00afaa:	68078793          	addi	a5,a5,1664
1c00afae:	0312                	slli	t1,t1,0x4
1c00afb0:	680e8e93          	addi	t4,t4,1664
1c00afb4:	680e0e13          	addi	t3,t3,1664
1c00afb8:	68030313          	addi	t1,t1,1664 # 3680 <__CTOR_LIST__-0x1bffc984>
1c00afbc:	0511                	addi	a0,a0,4
1c00afbe:	05c1                	addi	a1,a1,16
1c00afc0:	02cf4f33          	div	t5,t5,a2
1c00afc4:	00f8f893          	andi	a7,a7,15
1c00afc8:	0892                	slli	a7,a7,0x4
1c00afca:	02c6c6b3          	div	a3,a3,a2
1c00afce:	00ff7f13          	andi	t5,t5,15
1c00afd2:	01e8e8b3          	or	a7,a7,t5
1c00afd6:	ff150e23          	sb	a7,-4(a0)
1c00afda:	02c74733          	div	a4,a4,a2
1c00afde:	8abd                	andi	a3,a3,15
1c00afe0:	0692                	slli	a3,a3,0x4
1c00afe2:	02c7c7b3          	div	a5,a5,a2
1c00afe6:	8b3d                	andi	a4,a4,15
1c00afe8:	0712                	slli	a4,a4,0x4
1c00afea:	02ceceb3          	div	t4,t4,a2
1c00afee:	8bbd                	andi	a5,a5,15
1c00aff0:	0792                	slli	a5,a5,0x4
1c00aff2:	02ce4e33          	div	t3,t3,a2
1c00aff6:	00fef893          	andi	a7,t4,15
1c00affa:	0116e6b3          	or	a3,a3,a7
1c00affe:	fed50ea3          	sb	a3,-3(a0)
1c00b002:	02c34333          	div	t1,t1,a2
1c00b006:	00fe7e13          	andi	t3,t3,15
1c00b00a:	01c76733          	or	a4,a4,t3
1c00b00e:	fee50f23          	sb	a4,-2(a0)
1c00b012:	00f37313          	andi	t1,t1,15
1c00b016:	0067e7b3          	or	a5,a5,t1
1c00b01a:	fef50fa3          	sb	a5,-1(a0)
1c00b01e:	ed051ce3          	bne	a0,a6,1c00aef6 <PQCLEAN_KYBER768_CLEAN_poly_compress+0x16>
1c00b022:	4472                	lw	s0,28(sp)
1c00b024:	44e2                	lw	s1,24(sp)
1c00b026:	4952                	lw	s2,20(sp)
1c00b028:	49c2                	lw	s3,16(sp)
1c00b02a:	4a32                	lw	s4,12(sp)
1c00b02c:	6105                	addi	sp,sp,32
1c00b02e:	8082                	ret

1c00b030 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>:
1c00b030:	6685                	lui	a3,0x1
1c00b032:	18058613          	addi	a2,a1,384
1c00b036:	16fd                	addi	a3,a3,-1
1c00b038:	0015c783          	lbu	a5,1(a1)
1c00b03c:	0005c703          	lbu	a4,0(a1)
1c00b040:	058d                	addi	a1,a1,3
1c00b042:	07a2                	slli	a5,a5,0x8
1c00b044:	8fd9                	or	a5,a5,a4
1c00b046:	8ff5                	and	a5,a5,a3
1c00b048:	00f51023          	sh	a5,0(a0)
1c00b04c:	ffe5c703          	lbu	a4,-2(a1)
1c00b050:	fff5c783          	lbu	a5,-1(a1)
1c00b054:	0511                	addi	a0,a0,4
1c00b056:	8311                	srli	a4,a4,0x4
1c00b058:	0792                	slli	a5,a5,0x4
1c00b05a:	8fd9                	or	a5,a5,a4
1c00b05c:	fef51f23          	sh	a5,-2(a0)
1c00b060:	fcb61ce3          	bne	a2,a1,1c00b038 <PQCLEAN_KYBER768_CLEAN_poly_frombytes+0x8>
1c00b064:	8082                	ret

1c00b066 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>:
1c00b066:	20050713          	addi	a4,a0,512
1c00b06a:	0005c783          	lbu	a5,0(a1)
1c00b06e:	0541                	addi	a0,a0,16
1c00b070:	0585                	addi	a1,a1,1
1c00b072:	8b85                	andi	a5,a5,1
1c00b074:	40f007b3          	neg	a5,a5
1c00b078:	6817f793          	andi	a5,a5,1665
1c00b07c:	fef51823          	sh	a5,-16(a0)
1c00b080:	fff5c783          	lbu	a5,-1(a1)
1c00b084:	07fa                	slli	a5,a5,0x1e
1c00b086:	87fd                	srai	a5,a5,0x1f
1c00b088:	6817f793          	andi	a5,a5,1665
1c00b08c:	fef51923          	sh	a5,-14(a0)
1c00b090:	fff5c783          	lbu	a5,-1(a1)
1c00b094:	07f6                	slli	a5,a5,0x1d
1c00b096:	87fd                	srai	a5,a5,0x1f
1c00b098:	6817f793          	andi	a5,a5,1665
1c00b09c:	fef51a23          	sh	a5,-12(a0)
1c00b0a0:	fff5c783          	lbu	a5,-1(a1)
1c00b0a4:	07f2                	slli	a5,a5,0x1c
1c00b0a6:	87fd                	srai	a5,a5,0x1f
1c00b0a8:	6817f793          	andi	a5,a5,1665
1c00b0ac:	fef51b23          	sh	a5,-10(a0)
1c00b0b0:	fff5c783          	lbu	a5,-1(a1)
1c00b0b4:	07ee                	slli	a5,a5,0x1b
1c00b0b6:	87fd                	srai	a5,a5,0x1f
1c00b0b8:	6817f793          	andi	a5,a5,1665
1c00b0bc:	fef51c23          	sh	a5,-8(a0)
1c00b0c0:	fff5c783          	lbu	a5,-1(a1)
1c00b0c4:	07ea                	slli	a5,a5,0x1a
1c00b0c6:	87fd                	srai	a5,a5,0x1f
1c00b0c8:	6817f793          	andi	a5,a5,1665
1c00b0cc:	fef51d23          	sh	a5,-6(a0)
1c00b0d0:	fff5c783          	lbu	a5,-1(a1)
1c00b0d4:	07e6                	slli	a5,a5,0x19
1c00b0d6:	87fd                	srai	a5,a5,0x1f
1c00b0d8:	6817f793          	andi	a5,a5,1665
1c00b0dc:	fef51e23          	sh	a5,-4(a0)
1c00b0e0:	fff5c783          	lbu	a5,-1(a1)
1c00b0e4:	879d                	srai	a5,a5,0x7
1c00b0e6:	40f007b3          	neg	a5,a5
1c00b0ea:	6817f793          	andi	a5,a5,1665
1c00b0ee:	fef51f23          	sh	a5,-2(a0)
1c00b0f2:	f6a71ce3          	bne	a4,a0,1c00b06a <PQCLEAN_KYBER768_CLEAN_poly_frommsg+0x4>
1c00b0f6:	8082                	ret

1c00b0f8 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00b0f8:	7175                	addi	sp,sp,-144
1c00b0fa:	c522                	sw	s0,136(sp)
1c00b0fc:	86b2                	mv	a3,a2
1c00b0fe:	842a                	mv	s0,a0
1c00b100:	862e                	mv	a2,a1
1c00b102:	850a                	mv	a0,sp
1c00b104:	08000593          	li	a1,128
1c00b108:	c706                	sw	ra,140(sp)
1c00b10a:	2321                	jal	1c00b612 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00b10c:	858a                	mv	a1,sp
1c00b10e:	8522                	mv	a0,s0
1c00b110:	b48fe0ef          	jal	ra,1c009458 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00b114:	40ba                	lw	ra,140(sp)
1c00b116:	442a                	lw	s0,136(sp)
1c00b118:	6149                	addi	sp,sp,144
1c00b11a:	8082                	ret

1c00b11c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>:
1c00b11c:	7175                	addi	sp,sp,-144
1c00b11e:	c522                	sw	s0,136(sp)
1c00b120:	86b2                	mv	a3,a2
1c00b122:	842a                	mv	s0,a0
1c00b124:	862e                	mv	a2,a1
1c00b126:	850a                	mv	a0,sp
1c00b128:	08000593          	li	a1,128
1c00b12c:	c706                	sw	ra,140(sp)
1c00b12e:	21d5                	jal	1c00b612 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00b130:	858a                	mv	a1,sp
1c00b132:	8522                	mv	a0,s0
1c00b134:	c26fe0ef          	jal	ra,1c00955a <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>
1c00b138:	40ba                	lw	ra,140(sp)
1c00b13a:	442a                	lw	s0,136(sp)
1c00b13c:	6149                	addi	sp,sp,144
1c00b13e:	8082                	ret

1c00b140 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c00b140:	9f010113          	addi	sp,sp,-1552
1c00b144:	6341                	lui	t1,0x10
1c00b146:	60812423          	sw	s0,1544(sp)
1c00b14a:	60112623          	sw	ra,1548(sp)
1c00b14e:	842a                	mv	s0,a0
1c00b150:	4e01                	li	t3,0
1c00b152:	137d                	addi	t1,t1,-1
1c00b154:	10000f93          	li	t6,256
1c00b158:	00061503          	lh	a0,0(a2)
1c00b15c:	00461383          	lh	t2,4(a2)
1c00b160:	00059803          	lh	a6,0(a1)
1c00b164:	00459283          	lh	t0,4(a1)
1c00b168:	00259683          	lh	a3,2(a1)
1c00b16c:	00659f03          	lh	t5,6(a1)
1c00b170:	00261703          	lh	a4,2(a2)
1c00b174:	00661e83          	lh	t4,6(a2)
1c00b178:	401e5793          	srai	a5,t3,0x1
1c00b17c:	00279893          	slli	a7,a5,0x2
1c00b180:	60010093          	addi	ra,sp,1536
1c00b184:	0542                	slli	a0,a0,0x10
1c00b186:	0063f3b3          	and	t2,t2,t1
1c00b18a:	0842                	slli	a6,a6,0x10
1c00b18c:	0062f2b3          	and	t0,t0,t1
1c00b190:	0785                	addi	a5,a5,1
1c00b192:	9886                	add	a7,a7,ra
1c00b194:	06c2                	slli	a3,a3,0x10
1c00b196:	006f7f33          	and	t5,t5,t1
1c00b19a:	00756533          	or	a0,a0,t2
1c00b19e:	0742                	slli	a4,a4,0x10
1c00b1a0:	006efeb3          	and	t4,t4,t1
1c00b1a4:	00586833          	or	a6,a6,t0
1c00b1a8:	078a                	slli	a5,a5,0x2
1c00b1aa:	9786                	add	a5,a5,ra
1c00b1ac:	01e6e6b3          	or	a3,a3,t5
1c00b1b0:	01d76733          	or	a4,a4,t4
1c00b1b4:	a108a023          	sw	a6,-1536(a7)
1c00b1b8:	c0a8a023          	sw	a0,-1024(a7)
1c00b1bc:	a0d7a023          	sw	a3,-1536(a5)
1c00b1c0:	c0e7a023          	sw	a4,-1024(a5)
1c00b1c4:	0e11                	addi	t3,t3,4
1c00b1c6:	05a1                	addi	a1,a1,8
1c00b1c8:	0621                	addi	a2,a2,8
1c00b1ca:	f9fe17e3          	bne	t3,t6,1c00b158 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x18>
1c00b1ce:	0410                	addi	a2,sp,512
1c00b1d0:	858a                	mv	a1,sp
1c00b1d2:	40010513          	addi	a0,sp,1024
1c00b1d6:	9fafe0ef          	jal	ra,1c0093d0 <KYBER_poly_pwm>
1c00b1da:	40010793          	addi	a5,sp,1024
1c00b1de:	8522                	mv	a0,s0
1c00b1e0:	60010813          	addi	a6,sp,1536
1c00b1e4:	4394                	lw	a3,0(a5)
1c00b1e6:	43d8                	lw	a4,4(a5)
1c00b1e8:	07a1                	addi	a5,a5,8
1c00b1ea:	0106d593          	srli	a1,a3,0x10
1c00b1ee:	01075613          	srli	a2,a4,0x10
1c00b1f2:	00b51023          	sh	a1,0(a0)
1c00b1f6:	00c51123          	sh	a2,2(a0)
1c00b1fa:	00d51223          	sh	a3,4(a0)
1c00b1fe:	00e51323          	sh	a4,6(a0)
1c00b202:	0521                	addi	a0,a0,8
1c00b204:	fef810e3          	bne	a6,a5,1c00b1e4 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0xa4>
1c00b208:	60c12083          	lw	ra,1548(sp)
1c00b20c:	60812403          	lw	s0,1544(sp)
1c00b210:	61010113          	addi	sp,sp,1552
1c00b214:	8082                	ret

1c00b216 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c00b216:	1141                	addi	sp,sp,-16
1c00b218:	c422                	sw	s0,8(sp)
1c00b21a:	c226                	sw	s1,4(sp)
1c00b21c:	c606                	sw	ra,12(sp)
1c00b21e:	842a                	mv	s0,a0
1c00b220:	20050493          	addi	s1,a0,512
1c00b224:	00041503          	lh	a0,0(s0)
1c00b228:	0409                	addi	s0,s0,2
1c00b22a:	2671                	jal	1c00b5b6 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00b22c:	fea41f23          	sh	a0,-2(s0)
1c00b230:	fe941ae3          	bne	s0,s1,1c00b224 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c00b234:	40b2                	lw	ra,12(sp)
1c00b236:	4422                	lw	s0,8(sp)
1c00b238:	4492                	lw	s1,4(sp)
1c00b23a:	0141                	addi	sp,sp,16
1c00b23c:	8082                	ret

1c00b23e <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c00b23e:	4781                	li	a5,0
1c00b240:	20000893          	li	a7,512
1c00b244:	00f606b3          	add	a3,a2,a5
1c00b248:	00f58733          	add	a4,a1,a5
1c00b24c:	0006d803          	lhu	a6,0(a3) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00b250:	00075703          	lhu	a4,0(a4)
1c00b254:	00f506b3          	add	a3,a0,a5
1c00b258:	0789                	addi	a5,a5,2
1c00b25a:	9742                	add	a4,a4,a6
1c00b25c:	00e69023          	sh	a4,0(a3)
1c00b260:	ff1792e3          	bne	a5,a7,1c00b244 <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c00b264:	8082                	ret

1c00b266 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>:
1c00b266:	88aa                	mv	a7,a0
1c00b268:	6605                	lui	a2,0x1
1c00b26a:	14050513          	addi	a0,a0,320
1c00b26e:	882e                	mv	a6,a1
1c00b270:	50088893          	addi	a7,a7,1280
1c00b274:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b278:	ec050693          	addi	a3,a0,-320
1c00b27c:	85c2                	mv	a1,a6
1c00b27e:	00059283          	lh	t0,0(a1)
1c00b282:	00259f83          	lh	t6,2(a1)
1c00b286:	00459f03          	lh	t5,4(a1)
1c00b28a:	40f2de13          	srai	t3,t0,0xf
1c00b28e:	40ffd713          	srai	a4,t6,0xf
1c00b292:	00ce7e33          	and	t3,t3,a2
1c00b296:	8f71                	and	a4,a4,a2
1c00b298:	00659e83          	lh	t4,6(a1)
1c00b29c:	40ff5793          	srai	a5,t5,0xf
1c00b2a0:	9e16                	add	t3,t3,t0
1c00b2a2:	977e                	add	a4,a4,t6
1c00b2a4:	8ff1                	and	a5,a5,a2
1c00b2a6:	0e42                	slli	t3,t3,0x10
1c00b2a8:	0742                	slli	a4,a4,0x10
1c00b2aa:	97fa                	add	a5,a5,t5
1c00b2ac:	010e5e13          	srli	t3,t3,0x10
1c00b2b0:	8341                	srli	a4,a4,0x10
1c00b2b2:	40fed313          	srai	t1,t4,0xf
1c00b2b6:	07c2                	slli	a5,a5,0x10
1c00b2b8:	0e2a                	slli	t3,t3,0xa
1c00b2ba:	072a                	slli	a4,a4,0xa
1c00b2bc:	00c37333          	and	t1,t1,a2
1c00b2c0:	83c1                	srli	a5,a5,0x10
1c00b2c2:	680e0e13          	addi	t3,t3,1664
1c00b2c6:	68070713          	addi	a4,a4,1664
1c00b2ca:	9376                	add	t1,t1,t4
1c00b2cc:	02ce5e33          	divu	t3,t3,a2
1c00b2d0:	07aa                	slli	a5,a5,0xa
1c00b2d2:	0342                	slli	t1,t1,0x10
1c00b2d4:	68078793          	addi	a5,a5,1664
1c00b2d8:	01035313          	srli	t1,t1,0x10
1c00b2dc:	032a                	slli	t1,t1,0xa
1c00b2de:	68030313          	addi	t1,t1,1664 # 10680 <__CTOR_LIST__-0x1bfef984>
1c00b2e2:	0695                	addi	a3,a3,5
1c00b2e4:	05a1                	addi	a1,a1,8
1c00b2e6:	02c75733          	divu	a4,a4,a2
1c00b2ea:	3ffe7e13          	andi	t3,t3,1023
1c00b2ee:	008e5e93          	srli	t4,t3,0x8
1c00b2f2:	ffc68da3          	sb	t3,-5(a3)
1c00b2f6:	02c7d7b3          	divu	a5,a5,a2
1c00b2fa:	3ff77713          	andi	a4,a4,1023
1c00b2fe:	00271e13          	slli	t3,a4,0x2
1c00b302:	01ceee33          	or	t3,t4,t3
1c00b306:	8319                	srli	a4,a4,0x6
1c00b308:	ffc68e23          	sb	t3,-4(a3)
1c00b30c:	02c35333          	divu	t1,t1,a2
1c00b310:	3ff7f793          	andi	a5,a5,1023
1c00b314:	00479e13          	slli	t3,a5,0x4
1c00b318:	01c76733          	or	a4,a4,t3
1c00b31c:	fee68ea3          	sb	a4,-3(a3)
1c00b320:	8391                	srli	a5,a5,0x4
1c00b322:	3ff37713          	andi	a4,t1,1023
1c00b326:	00671313          	slli	t1,a4,0x6
1c00b32a:	0067e7b3          	or	a5,a5,t1
1c00b32e:	8309                	srli	a4,a4,0x2
1c00b330:	fef68f23          	sb	a5,-2(a3)
1c00b334:	fee68fa3          	sb	a4,-1(a3)
1c00b338:	f4a693e3          	bne	a3,a0,1c00b27e <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x18>
1c00b33c:	14068513          	addi	a0,a3,320
1c00b340:	20080813          	addi	a6,a6,512 # ff010200 <__l2_shared_end+0xe3000200>
1c00b344:	f2a89ae3          	bne	a7,a0,1c00b278 <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x12>
1c00b348:	8082                	ret

1c00b34a <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>:
1c00b34a:	1141                	addi	sp,sp,-16
1c00b34c:	c606                	sw	ra,12(sp)
1c00b34e:	c422                	sw	s0,8(sp)
1c00b350:	c226                	sw	s1,4(sp)
1c00b352:	842a                	mv	s0,a0
1c00b354:	84ae                	mv	s1,a1
1c00b356:	39e9                	jal	1c00b030 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b358:	18048593          	addi	a1,s1,384
1c00b35c:	20040513          	addi	a0,s0,512
1c00b360:	39c1                	jal	1c00b030 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b362:	40040513          	addi	a0,s0,1024
1c00b366:	4422                	lw	s0,8(sp)
1c00b368:	40b2                	lw	ra,12(sp)
1c00b36a:	30048593          	addi	a1,s1,768
1c00b36e:	4492                	lw	s1,4(sp)
1c00b370:	0141                	addi	sp,sp,16
1c00b372:	b97d                	j	1c00b030 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>

1c00b374 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00b374:	9e010113          	addi	sp,sp,-1568
1c00b378:	60912a23          	sw	s1,1556(sp)
1c00b37c:	64c1                	lui	s1,0x10
1c00b37e:	60812c23          	sw	s0,1560(sp)
1c00b382:	61212823          	sw	s2,1552(sp)
1c00b386:	61312623          	sw	s3,1548(sp)
1c00b38a:	61412423          	sw	s4,1544(sp)
1c00b38e:	60112e23          	sw	ra,1564(sp)
1c00b392:	8a2a                	mv	s4,a0
1c00b394:	60050413          	addi	s0,a0,1536
1c00b398:	40010993          	addi	s3,sp,1024
1c00b39c:	14fd                	addi	s1,s1,-1
1c00b39e:	10000913          	li	s2,256
1c00b3a2:	20000613          	li	a2,512
1c00b3a6:	85d2                	mv	a1,s4
1c00b3a8:	854e                	mv	a0,s3
1c00b3aa:	24e1                	jal	1c00b672 <memcpy>
1c00b3ac:	864e                	mv	a2,s3
1c00b3ae:	4681                	li	a3,0
1c00b3b0:	00061703          	lh	a4,0(a2)
1c00b3b4:	00261583          	lh	a1,2(a2)
1c00b3b8:	4016d793          	srai	a5,a3,0x1
1c00b3bc:	078a                	slli	a5,a5,0x2
1c00b3be:	0742                	slli	a4,a4,0x10
1c00b3c0:	8de5                	and	a1,a1,s1
1c00b3c2:	60010513          	addi	a0,sp,1536
1c00b3c6:	97aa                	add	a5,a5,a0
1c00b3c8:	8f4d                	or	a4,a4,a1
1c00b3ca:	a0e7a023          	sw	a4,-1536(a5)
1c00b3ce:	0689                	addi	a3,a3,2
1c00b3d0:	0611                	addi	a2,a2,4
1c00b3d2:	fd269fe3          	bne	a3,s2,1c00b3b0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x3c>
1c00b3d6:	040c                	addi	a1,sp,512
1c00b3d8:	850a                	mv	a0,sp
1c00b3da:	f23fd0ef          	jal	ra,1c0092fc <KYBER_poly_ntt>
1c00b3de:	0418                	addi	a4,sp,512
1c00b3e0:	87d2                	mv	a5,s4
1c00b3e2:	4310                	lw	a2,0(a4)
1c00b3e4:	4354                	lw	a3,4(a4)
1c00b3e6:	0721                	addi	a4,a4,8
1c00b3e8:	01065813          	srli	a6,a2,0x10
1c00b3ec:	0106d593          	srli	a1,a3,0x10
1c00b3f0:	01079023          	sh	a6,0(a5)
1c00b3f4:	00b79123          	sh	a1,2(a5)
1c00b3f8:	00c79223          	sh	a2,4(a5)
1c00b3fc:	00d79323          	sh	a3,6(a5)
1c00b400:	07a1                	addi	a5,a5,8
1c00b402:	fee990e3          	bne	s3,a4,1c00b3e2 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x6e>
1c00b406:	200a0a13          	addi	s4,s4,512
1c00b40a:	f9441ce3          	bne	s0,s4,1c00b3a2 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c00b40e:	61c12083          	lw	ra,1564(sp)
1c00b412:	61812403          	lw	s0,1560(sp)
1c00b416:	61412483          	lw	s1,1556(sp)
1c00b41a:	61012903          	lw	s2,1552(sp)
1c00b41e:	60c12983          	lw	s3,1548(sp)
1c00b422:	60812a03          	lw	s4,1544(sp)
1c00b426:	62010113          	addi	sp,sp,1568
1c00b42a:	8082                	ret

1c00b42c <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>:
1c00b42c:	9e010113          	addi	sp,sp,-1568
1c00b430:	60912a23          	sw	s1,1556(sp)
1c00b434:	64c1                	lui	s1,0x10
1c00b436:	60812c23          	sw	s0,1560(sp)
1c00b43a:	61212823          	sw	s2,1552(sp)
1c00b43e:	61312623          	sw	s3,1548(sp)
1c00b442:	61412423          	sw	s4,1544(sp)
1c00b446:	60112e23          	sw	ra,1564(sp)
1c00b44a:	10050a13          	addi	s4,a0,256
1c00b44e:	70050413          	addi	s0,a0,1792
1c00b452:	40010913          	addi	s2,sp,1024
1c00b456:	14fd                	addi	s1,s1,-1
1c00b458:	10000993          	li	s3,256
1c00b45c:	f00a0593          	addi	a1,s4,-256
1c00b460:	20000613          	li	a2,512
1c00b464:	854a                	mv	a0,s2
1c00b466:	2431                	jal	1c00b672 <memcpy>
1c00b468:	874a                	mv	a4,s2
1c00b46a:	4581                	li	a1,0
1c00b46c:	00071603          	lh	a2,0(a4)
1c00b470:	00471883          	lh	a7,4(a4)
1c00b474:	00271683          	lh	a3,2(a4)
1c00b478:	00671803          	lh	a6,6(a4)
1c00b47c:	4015d793          	srai	a5,a1,0x1
1c00b480:	00279513          	slli	a0,a5,0x2
1c00b484:	60010313          	addi	t1,sp,1536
1c00b488:	0642                	slli	a2,a2,0x10
1c00b48a:	0098f8b3          	and	a7,a7,s1
1c00b48e:	0785                	addi	a5,a5,1
1c00b490:	06c2                	slli	a3,a3,0x10
1c00b492:	00987833          	and	a6,a6,s1
1c00b496:	951a                	add	a0,a0,t1
1c00b498:	01166633          	or	a2,a2,a7
1c00b49c:	078a                	slli	a5,a5,0x2
1c00b49e:	0106e6b3          	or	a3,a3,a6
1c00b4a2:	a0c52023          	sw	a2,-1536(a0)
1c00b4a6:	979a                	add	a5,a5,t1
1c00b4a8:	a0d7a023          	sw	a3,-1536(a5)
1c00b4ac:	0591                	addi	a1,a1,4
1c00b4ae:	0721                	addi	a4,a4,8
1c00b4b0:	fb359ee3          	bne	a1,s3,1c00b46c <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x40>
1c00b4b4:	040c                	addi	a1,sp,512
1c00b4b6:	850a                	mv	a0,sp
1c00b4b8:	eaffd0ef          	jal	ra,1c009366 <KYBER_poly_intt>
1c00b4bc:	0418                	addi	a4,sp,512
1c00b4be:	87d2                	mv	a5,s4
1c00b4c0:	4314                	lw	a3,0(a4)
1c00b4c2:	0711                	addi	a4,a4,4
1c00b4c4:	0789                	addi	a5,a5,2
1c00b4c6:	0106d613          	srli	a2,a3,0x10
1c00b4ca:	eec79f23          	sh	a2,-258(a5)
1c00b4ce:	fed79f23          	sh	a3,-2(a5)
1c00b4d2:	fee917e3          	bne	s2,a4,1c00b4c0 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x94>
1c00b4d6:	200a0a13          	addi	s4,s4,512
1c00b4da:	f94411e3          	bne	s0,s4,1c00b45c <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x30>
1c00b4de:	61c12083          	lw	ra,1564(sp)
1c00b4e2:	61812403          	lw	s0,1560(sp)
1c00b4e6:	61412483          	lw	s1,1556(sp)
1c00b4ea:	61012903          	lw	s2,1552(sp)
1c00b4ee:	60c12983          	lw	s3,1548(sp)
1c00b4f2:	60812a03          	lw	s4,1544(sp)
1c00b4f6:	62010113          	addi	sp,sp,1568
1c00b4fa:	8082                	ret

1c00b4fc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00b4fc:	df010113          	addi	sp,sp,-528
1c00b500:	20112623          	sw	ra,524(sp)
1c00b504:	20812423          	sw	s0,520(sp)
1c00b508:	20912223          	sw	s1,516(sp)
1c00b50c:	21212023          	sw	s2,512(sp)
1c00b510:	842a                	mv	s0,a0
1c00b512:	84ae                	mv	s1,a1
1c00b514:	8932                	mv	s2,a2
1c00b516:	312d                	jal	1c00b140 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b518:	20090613          	addi	a2,s2,512
1c00b51c:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c00b520:	850a                	mv	a0,sp
1c00b522:	3939                	jal	1c00b140 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b524:	860a                	mv	a2,sp
1c00b526:	85a2                	mv	a1,s0
1c00b528:	8522                	mv	a0,s0
1c00b52a:	3b11                	jal	1c00b23e <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b52c:	40090613          	addi	a2,s2,1024
1c00b530:	40048593          	addi	a1,s1,1024
1c00b534:	850a                	mv	a0,sp
1c00b536:	3129                	jal	1c00b140 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b538:	860a                	mv	a2,sp
1c00b53a:	85a2                	mv	a1,s0
1c00b53c:	8522                	mv	a0,s0
1c00b53e:	3301                	jal	1c00b23e <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b540:	8522                	mv	a0,s0
1c00b542:	39d1                	jal	1c00b216 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b544:	20c12083          	lw	ra,524(sp)
1c00b548:	20812403          	lw	s0,520(sp)
1c00b54c:	20412483          	lw	s1,516(sp)
1c00b550:	20012903          	lw	s2,512(sp)
1c00b554:	21010113          	addi	sp,sp,528
1c00b558:	8082                	ret

1c00b55a <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00b55a:	1141                	addi	sp,sp,-16
1c00b55c:	c606                	sw	ra,12(sp)
1c00b55e:	c422                	sw	s0,8(sp)
1c00b560:	842a                	mv	s0,a0
1c00b562:	3955                	jal	1c00b216 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b564:	20040513          	addi	a0,s0,512
1c00b568:	317d                	jal	1c00b216 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b56a:	40040513          	addi	a0,s0,1024
1c00b56e:	4422                	lw	s0,8(sp)
1c00b570:	40b2                	lw	ra,12(sp)
1c00b572:	0141                	addi	sp,sp,16
1c00b574:	b14d                	j	1c00b216 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00b576 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00b576:	1101                	addi	sp,sp,-32
1c00b578:	cc22                	sw	s0,24(sp)
1c00b57a:	ca26                	sw	s1,20(sp)
1c00b57c:	c84a                	sw	s2,16(sp)
1c00b57e:	c64e                	sw	s3,12(sp)
1c00b580:	c452                	sw	s4,8(sp)
1c00b582:	ce06                	sw	ra,28(sp)
1c00b584:	89aa                	mv	s3,a0
1c00b586:	892e                	mv	s2,a1
1c00b588:	84b2                	mv	s1,a2
1c00b58a:	4401                	li	s0,0
1c00b58c:	60000a13          	li	s4,1536
1c00b590:	00848633          	add	a2,s1,s0
1c00b594:	008905b3          	add	a1,s2,s0
1c00b598:	00898533          	add	a0,s3,s0
1c00b59c:	20040413          	addi	s0,s0,512
1c00b5a0:	3979                	jal	1c00b23e <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b5a2:	ff4417e3          	bne	s0,s4,1c00b590 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00b5a6:	40f2                	lw	ra,28(sp)
1c00b5a8:	4462                	lw	s0,24(sp)
1c00b5aa:	44d2                	lw	s1,20(sp)
1c00b5ac:	4942                	lw	s2,16(sp)
1c00b5ae:	49b2                	lw	s3,12(sp)
1c00b5b0:	4a22                	lw	s4,8(sp)
1c00b5b2:	6105                	addi	sp,sp,32
1c00b5b4:	8082                	ret

1c00b5b6 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00b5b6:	6795                	lui	a5,0x5
1c00b5b8:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00b5bc:	02f507b3          	mul	a5,a0,a5
1c00b5c0:	02000737          	lui	a4,0x2000
1c00b5c4:	97ba                	add	a5,a5,a4
1c00b5c6:	6705                	lui	a4,0x1
1c00b5c8:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b5cc:	87e9                	srai	a5,a5,0x1a
1c00b5ce:	02e787b3          	mul	a5,a5,a4
1c00b5d2:	8d1d                	sub	a0,a0,a5
1c00b5d4:	0542                	slli	a0,a0,0x10
1c00b5d6:	8541                	srai	a0,a0,0x10
1c00b5d8:	8082                	ret

1c00b5da <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00b5da:	7139                	addi	sp,sp,-64
1c00b5dc:	da26                	sw	s1,52(sp)
1c00b5de:	d84a                	sw	s2,48(sp)
1c00b5e0:	84b2                	mv	s1,a2
1c00b5e2:	892a                	mv	s2,a0
1c00b5e4:	02000613          	li	a2,32
1c00b5e8:	0068                	addi	a0,sp,12
1c00b5ea:	de06                	sw	ra,60(sp)
1c00b5ec:	dc22                	sw	s0,56(sp)
1c00b5ee:	8436                	mv	s0,a3
1c00b5f0:	2049                	jal	1c00b672 <memcpy>
1c00b5f2:	006c                	addi	a1,sp,12
1c00b5f4:	854a                	mv	a0,s2
1c00b5f6:	02200613          	li	a2,34
1c00b5fa:	02910623          	sb	s1,44(sp)
1c00b5fe:	028106a3          	sb	s0,45(sp)
1c00b602:	a36fe0ef          	jal	ra,1c009838 <shake128_absorb>
1c00b606:	50f2                	lw	ra,60(sp)
1c00b608:	5462                	lw	s0,56(sp)
1c00b60a:	54d2                	lw	s1,52(sp)
1c00b60c:	5942                	lw	s2,48(sp)
1c00b60e:	6121                	addi	sp,sp,64
1c00b610:	8082                	ret

1c00b612 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00b612:	7139                	addi	sp,sp,-64
1c00b614:	87b2                	mv	a5,a2
1c00b616:	da26                	sw	s1,52(sp)
1c00b618:	d84a                	sw	s2,48(sp)
1c00b61a:	84aa                	mv	s1,a0
1c00b61c:	892e                	mv	s2,a1
1c00b61e:	02000613          	li	a2,32
1c00b622:	85be                	mv	a1,a5
1c00b624:	0068                	addi	a0,sp,12
1c00b626:	de06                	sw	ra,60(sp)
1c00b628:	dc22                	sw	s0,56(sp)
1c00b62a:	8436                	mv	s0,a3
1c00b62c:	2099                	jal	1c00b672 <memcpy>
1c00b62e:	0070                	addi	a2,sp,12
1c00b630:	85ca                	mv	a1,s2
1c00b632:	8526                	mv	a0,s1
1c00b634:	02100693          	li	a3,33
1c00b638:	02810623          	sb	s0,44(sp)
1c00b63c:	ce8fe0ef          	jal	ra,1c009b24 <shake256>
1c00b640:	50f2                	lw	ra,60(sp)
1c00b642:	5462                	lw	s0,56(sp)
1c00b644:	54d2                	lw	s1,52(sp)
1c00b646:	5942                	lw	s2,48(sp)
1c00b648:	6121                	addi	sp,sp,64
1c00b64a:	8082                	ret

1c00b64c <pos_wait_forever>:
1c00b64c:	f14027f3          	csrr	a5,mhartid
1c00b650:	8795                	srai	a5,a5,0x5
1c00b652:	03f7f793          	andi	a5,a5,63
1c00b656:	477d                	li	a4,31
1c00b658:	00e78363          	beq	a5,a4,1c00b65e <pos_wait_forever+0x12>
1c00b65c:	a001                	j	1c00b65c <pos_wait_forever+0x10>
1c00b65e:	1a10a7b7          	lui	a5,0x1a10a
1c00b662:	577d                	li	a4,-1
1c00b664:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b668:	10500073          	wfi
1c00b66c:	10500073          	wfi
1c00b670:	bfe5                	j	1c00b668 <pos_wait_forever+0x1c>

1c00b672 <memcpy>:
1c00b672:	00c5e7b3          	or	a5,a1,a2
1c00b676:	8fc9                	or	a5,a5,a0
1c00b678:	8b8d                	andi	a5,a5,3
1c00b67a:	872e                	mv	a4,a1
1c00b67c:	882a                	mv	a6,a0
1c00b67e:	cbc5                	beqz	a5,1c00b72e <memcpy+0xbc>
1c00b680:	c279                	beqz	a2,1c00b746 <memcpy+0xd4>
1c00b682:	00350793          	addi	a5,a0,3
1c00b686:	8f8d                	sub	a5,a5,a1
1c00b688:	0077b793          	sltiu	a5,a5,7
1c00b68c:	e7d1                	bnez	a5,1c00b718 <memcpy+0xa6>
1c00b68e:	fff60793          	addi	a5,a2,-1
1c00b692:	0047b793          	sltiu	a5,a5,4
1c00b696:	e3c9                	bnez	a5,1c00b718 <memcpy+0xa6>
1c00b698:	ffc67e13          	andi	t3,a2,-4
1c00b69c:	9e2e                	add	t3,t3,a1
1c00b69e:	00174883          	lbu	a7,1(a4)
1c00b6a2:	00074303          	lbu	t1,0(a4)
1c00b6a6:	00274683          	lbu	a3,2(a4)
1c00b6aa:	00374783          	lbu	a5,3(a4)
1c00b6ae:	08a2                	slli	a7,a7,0x8
1c00b6b0:	0068e8b3          	or	a7,a7,t1
1c00b6b4:	06c2                	slli	a3,a3,0x10
1c00b6b6:	0116e6b3          	or	a3,a3,a7
1c00b6ba:	07e2                	slli	a5,a5,0x18
1c00b6bc:	8fd5                	or	a5,a5,a3
1c00b6be:	0087d313          	srli	t1,a5,0x8
1c00b6c2:	0107d893          	srli	a7,a5,0x10
1c00b6c6:	83e1                	srli	a5,a5,0x18
1c00b6c8:	00d80023          	sb	a3,0(a6)
1c00b6cc:	006800a3          	sb	t1,1(a6)
1c00b6d0:	01180123          	sb	a7,2(a6)
1c00b6d4:	00f801a3          	sb	a5,3(a6)
1c00b6d8:	0711                	addi	a4,a4,4
1c00b6da:	0811                	addi	a6,a6,4
1c00b6dc:	fdc711e3          	bne	a4,t3,1c00b69e <memcpy+0x2c>
1c00b6e0:	ffc67793          	andi	a5,a2,-4
1c00b6e4:	00367693          	andi	a3,a2,3
1c00b6e8:	00f50733          	add	a4,a0,a5
1c00b6ec:	95be                	add	a1,a1,a5
1c00b6ee:	02f60f63          	beq	a2,a5,1c00b72c <memcpy+0xba>
1c00b6f2:	0005c603          	lbu	a2,0(a1)
1c00b6f6:	fff68793          	addi	a5,a3,-1
1c00b6fa:	00c70023          	sb	a2,0(a4)
1c00b6fe:	c79d                	beqz	a5,1c00b72c <memcpy+0xba>
1c00b700:	0015c603          	lbu	a2,1(a1)
1c00b704:	4789                	li	a5,2
1c00b706:	00c700a3          	sb	a2,1(a4)
1c00b70a:	02f68163          	beq	a3,a5,1c00b72c <memcpy+0xba>
1c00b70e:	0025c783          	lbu	a5,2(a1)
1c00b712:	00f70123          	sb	a5,2(a4)
1c00b716:	8082                	ret
1c00b718:	962e                	add	a2,a2,a1
1c00b71a:	87aa                	mv	a5,a0
1c00b71c:	0005c703          	lbu	a4,0(a1)
1c00b720:	0585                	addi	a1,a1,1
1c00b722:	0785                	addi	a5,a5,1
1c00b724:	fee78fa3          	sb	a4,-1(a5)
1c00b728:	fec59ae3          	bne	a1,a2,1c00b71c <memcpy+0xaa>
1c00b72c:	8082                	ret
1c00b72e:	de7d                	beqz	a2,1c00b72c <memcpy+0xba>
1c00b730:	87aa                	mv	a5,a0
1c00b732:	4194                	lw	a3,0(a1)
1c00b734:	0791                	addi	a5,a5,4
1c00b736:	40c78733          	sub	a4,a5,a2
1c00b73a:	fed7ae23          	sw	a3,-4(a5)
1c00b73e:	0591                	addi	a1,a1,4
1c00b740:	fea719e3          	bne	a4,a0,1c00b732 <memcpy+0xc0>
1c00b744:	8082                	ret
1c00b746:	8082                	ret

1c00b748 <memmove>:
1c00b748:	40b507b3          	sub	a5,a0,a1
1c00b74c:	0ac7e063          	bltu	a5,a2,1c00b7ec <memmove+0xa4>
1c00b750:	c661                	beqz	a2,1c00b818 <memmove+0xd0>
1c00b752:	00350793          	addi	a5,a0,3
1c00b756:	8f8d                	sub	a5,a5,a1
1c00b758:	0077b793          	sltiu	a5,a5,7
1c00b75c:	e3dd                	bnez	a5,1c00b802 <memmove+0xba>
1c00b75e:	fff60793          	addi	a5,a2,-1
1c00b762:	0047b793          	sltiu	a5,a5,4
1c00b766:	efd1                	bnez	a5,1c00b802 <memmove+0xba>
1c00b768:	ffc67e13          	andi	t3,a2,-4
1c00b76c:	872e                	mv	a4,a1
1c00b76e:	882a                	mv	a6,a0
1c00b770:	9e2e                	add	t3,t3,a1
1c00b772:	00174883          	lbu	a7,1(a4)
1c00b776:	00074303          	lbu	t1,0(a4)
1c00b77a:	00274683          	lbu	a3,2(a4)
1c00b77e:	00374783          	lbu	a5,3(a4)
1c00b782:	08a2                	slli	a7,a7,0x8
1c00b784:	0068e8b3          	or	a7,a7,t1
1c00b788:	06c2                	slli	a3,a3,0x10
1c00b78a:	0116e6b3          	or	a3,a3,a7
1c00b78e:	07e2                	slli	a5,a5,0x18
1c00b790:	8fd5                	or	a5,a5,a3
1c00b792:	0087d313          	srli	t1,a5,0x8
1c00b796:	0107d893          	srli	a7,a5,0x10
1c00b79a:	83e1                	srli	a5,a5,0x18
1c00b79c:	00d80023          	sb	a3,0(a6)
1c00b7a0:	006800a3          	sb	t1,1(a6)
1c00b7a4:	01180123          	sb	a7,2(a6)
1c00b7a8:	00f801a3          	sb	a5,3(a6)
1c00b7ac:	0711                	addi	a4,a4,4
1c00b7ae:	0811                	addi	a6,a6,4
1c00b7b0:	fdc711e3          	bne	a4,t3,1c00b772 <memmove+0x2a>
1c00b7b4:	ffc67793          	andi	a5,a2,-4
1c00b7b8:	00367693          	andi	a3,a2,3
1c00b7bc:	00f50733          	add	a4,a0,a5
1c00b7c0:	95be                	add	a1,a1,a5
1c00b7c2:	04f60a63          	beq	a2,a5,1c00b816 <memmove+0xce>
1c00b7c6:	0005c603          	lbu	a2,0(a1)
1c00b7ca:	fff68793          	addi	a5,a3,-1
1c00b7ce:	00c70023          	sb	a2,0(a4)
1c00b7d2:	c3b1                	beqz	a5,1c00b816 <memmove+0xce>
1c00b7d4:	0015c603          	lbu	a2,1(a1)
1c00b7d8:	4789                	li	a5,2
1c00b7da:	00c700a3          	sb	a2,1(a4)
1c00b7de:	02f68c63          	beq	a3,a5,1c00b816 <memmove+0xce>
1c00b7e2:	0025c783          	lbu	a5,2(a1)
1c00b7e6:	00f70123          	sb	a5,2(a4)
1c00b7ea:	8082                	ret
1c00b7ec:	167d                	addi	a2,a2,-1
1c00b7ee:	00c587b3          	add	a5,a1,a2
1c00b7f2:	0007c703          	lbu	a4,0(a5)
1c00b7f6:	00c507b3          	add	a5,a0,a2
1c00b7fa:	00e78023          	sb	a4,0(a5)
1c00b7fe:	f67d                	bnez	a2,1c00b7ec <memmove+0xa4>
1c00b800:	8082                	ret
1c00b802:	962a                	add	a2,a2,a0
1c00b804:	87aa                	mv	a5,a0
1c00b806:	0005c703          	lbu	a4,0(a1)
1c00b80a:	0785                	addi	a5,a5,1
1c00b80c:	0585                	addi	a1,a1,1
1c00b80e:	fee78fa3          	sb	a4,-1(a5)
1c00b812:	fec79ae3          	bne	a5,a2,1c00b806 <memmove+0xbe>
1c00b816:	8082                	ret
1c00b818:	8082                	ret

1c00b81a <strchr>:
1c00b81a:	00054703          	lbu	a4,0(a0)
1c00b81e:	0ff5f593          	andi	a1,a1,255
1c00b822:	87aa                	mv	a5,a0
1c00b824:	00b70863          	beq	a4,a1,1c00b834 <strchr+0x1a>
1c00b828:	cb01                	beqz	a4,1c00b838 <strchr+0x1e>
1c00b82a:	0017c703          	lbu	a4,1(a5)
1c00b82e:	0785                	addi	a5,a5,1
1c00b830:	feb71ce3          	bne	a4,a1,1c00b828 <strchr+0xe>
1c00b834:	853e                	mv	a0,a5
1c00b836:	8082                	ret
1c00b838:	4501                	li	a0,0
1c00b83a:	dded                	beqz	a1,1c00b834 <strchr+0x1a>
1c00b83c:	8082                	ret

1c00b83e <puts>:
1c00b83e:	00054783          	lbu	a5,0(a0)
1c00b842:	c78d                	beqz	a5,1c00b86c <puts+0x2e>
1c00b844:	f14026f3          	csrr	a3,mhartid
1c00b848:	00369713          	slli	a4,a3,0x3
1c00b84c:	1a10f637          	lui	a2,0x1a10f
1c00b850:	0ff77713          	andi	a4,a4,255
1c00b854:	9732                	add	a4,a4,a2
1c00b856:	6609                	lui	a2,0x2
1c00b858:	068a                	slli	a3,a3,0x2
1c00b85a:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b85e:	8ef1                	and	a3,a3,a2
1c00b860:	9736                	add	a4,a4,a3
1c00b862:	c31c                	sw	a5,0(a4)
1c00b864:	00154783          	lbu	a5,1(a0)
1c00b868:	0505                	addi	a0,a0,1
1c00b86a:	ffe5                	bnez	a5,1c00b862 <puts+0x24>
1c00b86c:	f1402773          	csrr	a4,mhartid
1c00b870:	00371793          	slli	a5,a4,0x3
1c00b874:	1a10f6b7          	lui	a3,0x1a10f
1c00b878:	0ff7f793          	andi	a5,a5,255
1c00b87c:	97b6                	add	a5,a5,a3
1c00b87e:	6689                	lui	a3,0x2
1c00b880:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b884:	070a                	slli	a4,a4,0x2
1c00b886:	8f75                	and	a4,a4,a3
1c00b888:	97ba                	add	a5,a5,a4
1c00b88a:	4729                	li	a4,10
1c00b88c:	c398                	sw	a4,0(a5)
1c00b88e:	4501                	li	a0,0
1c00b890:	8082                	ret

1c00b892 <pos_libc_fputc_locked>:
1c00b892:	6689                	lui	a3,0x2
1c00b894:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b898:	f14027f3          	csrr	a5,mhartid
1c00b89c:	00379713          	slli	a4,a5,0x3
1c00b8a0:	078a                	slli	a5,a5,0x2
1c00b8a2:	8ff5                	and	a5,a5,a3
1c00b8a4:	0ff77713          	andi	a4,a4,255
1c00b8a8:	1a10f6b7          	lui	a3,0x1a10f
1c00b8ac:	9736                	add	a4,a4,a3
1c00b8ae:	97ba                	add	a5,a5,a4
1c00b8b0:	0ff57513          	andi	a0,a0,255
1c00b8b4:	c388                	sw	a0,0(a5)
1c00b8b6:	4501                	li	a0,0
1c00b8b8:	8082                	ret

1c00b8ba <putchar>:
1c00b8ba:	6689                	lui	a3,0x2
1c00b8bc:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b8c0:	f14027f3          	csrr	a5,mhartid
1c00b8c4:	00379713          	slli	a4,a5,0x3
1c00b8c8:	078a                	slli	a5,a5,0x2
1c00b8ca:	8ff5                	and	a5,a5,a3
1c00b8cc:	0ff77713          	andi	a4,a4,255
1c00b8d0:	1a10f6b7          	lui	a3,0x1a10f
1c00b8d4:	9736                	add	a4,a4,a3
1c00b8d6:	97ba                	add	a5,a5,a4
1c00b8d8:	0ff57513          	andi	a0,a0,255
1c00b8dc:	c388                	sw	a0,0(a5)
1c00b8de:	4501                	li	a0,0
1c00b8e0:	8082                	ret

1c00b8e2 <pos_libc_prf_locked>:
1c00b8e2:	a0b1                	j	1c00b92e <pos_libc_prf>

1c00b8e4 <exit>:
1c00b8e4:	800007b7          	lui	a5,0x80000
1c00b8e8:	1141                	addi	sp,sp,-16
1c00b8ea:	8d5d                	or	a0,a0,a5
1c00b8ec:	c606                	sw	ra,12(sp)
1c00b8ee:	1a1047b7          	lui	a5,0x1a104
1c00b8f2:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00b8f6:	3b99                	jal	1c00b64c <pos_wait_forever>

1c00b8f8 <pos_io_start>:
1c00b8f8:	4501                	li	a0,0
1c00b8fa:	8082                	ret

1c00b8fc <pos_io_stop>:
1c00b8fc:	4501                	li	a0,0
1c00b8fe:	8082                	ret

1c00b900 <printf>:
1c00b900:	7139                	addi	sp,sp,-64
1c00b902:	02410313          	addi	t1,sp,36
1c00b906:	d432                	sw	a2,40(sp)
1c00b908:	862a                	mv	a2,a0
1c00b90a:	1c00c537          	lui	a0,0x1c00c
1c00b90e:	d22e                	sw	a1,36(sp)
1c00b910:	d636                	sw	a3,44(sp)
1c00b912:	4589                	li	a1,2
1c00b914:	869a                	mv	a3,t1
1c00b916:	89250513          	addi	a0,a0,-1902 # 1c00b892 <pos_libc_fputc_locked>
1c00b91a:	ce06                	sw	ra,28(sp)
1c00b91c:	d83a                	sw	a4,48(sp)
1c00b91e:	da3e                	sw	a5,52(sp)
1c00b920:	dc42                	sw	a6,56(sp)
1c00b922:	de46                	sw	a7,60(sp)
1c00b924:	c61a                	sw	t1,12(sp)
1c00b926:	3f75                	jal	1c00b8e2 <pos_libc_prf_locked>
1c00b928:	40f2                	lw	ra,28(sp)
1c00b92a:	6121                	addi	sp,sp,64
1c00b92c:	8082                	ret

1c00b92e <pos_libc_prf>:
1c00b92e:	7169                	addi	sp,sp,-304
1c00b930:	12112623          	sw	ra,300(sp)
1c00b934:	12812423          	sw	s0,296(sp)
1c00b938:	12912223          	sw	s1,292(sp)
1c00b93c:	13212023          	sw	s2,288(sp)
1c00b940:	11312e23          	sw	s3,284(sp)
1c00b944:	11412c23          	sw	s4,280(sp)
1c00b948:	11512a23          	sw	s5,276(sp)
1c00b94c:	11612823          	sw	s6,272(sp)
1c00b950:	11712623          	sw	s7,268(sp)
1c00b954:	11812423          	sw	s8,264(sp)
1c00b958:	11912223          	sw	s9,260(sp)
1c00b95c:	11a12023          	sw	s10,256(sp)
1c00b960:	dfee                	sw	s11,252(sp)
1c00b962:	00064783          	lbu	a5,0(a2)
1c00b966:	c636                	sw	a3,12(sp)
1c00b968:	3c0781e3          	beqz	a5,1c00c52a <pos_libc_prf+0xbfc>
1c00b96c:	7741                	lui	a4,0xffff0
1c00b96e:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00b972:	cc3a                	sw	a4,24(sp)
1c00b974:	10000737          	lui	a4,0x10000
1c00b978:	177d                	addi	a4,a4,-1
1c00b97a:	8caa                	mv	s9,a0
1c00b97c:	84ae                	mv	s1,a1
1c00b97e:	00160c13          	addi	s8,a2,1
1c00b982:	4401                	li	s0,0
1c00b984:	1c000d37          	lui	s10,0x1c000
1c00b988:	ca3a                	sw	a4,20(sp)
1c00b98a:	853e                	mv	a0,a5
1c00b98c:	02500793          	li	a5,37
1c00b990:	04f50863          	beq	a0,a5,1c00b9e0 <pos_libc_prf+0xb2>
1c00b994:	85a6                	mv	a1,s1
1c00b996:	9c82                	jalr	s9
1c00b998:	57fd                	li	a5,-1
1c00b99a:	4cf50b63          	beq	a0,a5,1c00be70 <pos_libc_prf+0x542>
1c00b99e:	0405                	addi	s0,s0,1
1c00b9a0:	000c4503          	lbu	a0,0(s8)
1c00b9a4:	0c05                	addi	s8,s8,1
1c00b9a6:	f17d                	bnez	a0,1c00b98c <pos_libc_prf+0x5e>
1c00b9a8:	12c12083          	lw	ra,300(sp)
1c00b9ac:	8522                	mv	a0,s0
1c00b9ae:	12812403          	lw	s0,296(sp)
1c00b9b2:	12412483          	lw	s1,292(sp)
1c00b9b6:	12012903          	lw	s2,288(sp)
1c00b9ba:	11c12983          	lw	s3,284(sp)
1c00b9be:	11812a03          	lw	s4,280(sp)
1c00b9c2:	11412a83          	lw	s5,276(sp)
1c00b9c6:	11012b03          	lw	s6,272(sp)
1c00b9ca:	10c12b83          	lw	s7,268(sp)
1c00b9ce:	10812c03          	lw	s8,264(sp)
1c00b9d2:	10412c83          	lw	s9,260(sp)
1c00b9d6:	10012d03          	lw	s10,256(sp)
1c00b9da:	5dfe                	lw	s11,252(sp)
1c00b9dc:	6155                	addi	sp,sp,304
1c00b9de:	8082                	ret
1c00b9e0:	8de2                	mv	s11,s8
1c00b9e2:	000dcc03          	lbu	s8,0(s11)
1c00b9e6:	168d0513          	addi	a0,s10,360 # 1c000168 <__clz_tab+0x14c>
1c00b9ea:	c826                	sw	s1,16(sp)
1c00b9ec:	85e2                	mv	a1,s8
1c00b9ee:	c202                	sw	zero,4(sp)
1c00b9f0:	c402                	sw	zero,8(sp)
1c00b9f2:	c002                	sw	zero,0(sp)
1c00b9f4:	001d8493          	addi	s1,s11,1
1c00b9f8:	350d                	jal	1c00b81a <strchr>
1c00b9fa:	02000913          	li	s2,32
1c00b9fe:	4b81                	li	s7,0
1c00ba00:	02b00993          	li	s3,43
1c00ba04:	02d00b13          	li	s6,45
1c00ba08:	03000a93          	li	s5,48
1c00ba0c:	02000a13          	li	s4,32
1c00ba10:	8626                	mv	a2,s1
1c00ba12:	c51d                	beqz	a0,1c00ba40 <pos_libc_prf+0x112>
1c00ba14:	413c0e63          	beq	s8,s3,1c00be30 <pos_libc_prf+0x502>
1c00ba18:	3f89ec63          	bltu	s3,s8,1c00be10 <pos_libc_prf+0x4e2>
1c00ba1c:	414c0663          	beq	s8,s4,1c00be28 <pos_libc_prf+0x4fa>
1c00ba20:	02300793          	li	a5,35
1c00ba24:	3efc1363          	bne	s8,a5,1c00be0a <pos_libc_prf+0x4dc>
1c00ba28:	4b85                	li	s7,1
1c00ba2a:	8da6                	mv	s11,s1
1c00ba2c:	000dcc03          	lbu	s8,0(s11)
1c00ba30:	168d0513          	addi	a0,s10,360
1c00ba34:	001d8493          	addi	s1,s11,1
1c00ba38:	85e2                	mv	a1,s8
1c00ba3a:	33c5                	jal	1c00b81a <strchr>
1c00ba3c:	8626                	mv	a2,s1
1c00ba3e:	f979                	bnez	a0,1c00ba14 <pos_libc_prf+0xe6>
1c00ba40:	87e2                	mv	a5,s8
1c00ba42:	ce5e                	sw	s7,28(sp)
1c00ba44:	02a00693          	li	a3,42
1c00ba48:	8c6e                	mv	s8,s11
1c00ba4a:	8ba6                	mv	s7,s1
1c00ba4c:	8dbe                	mv	s11,a5
1c00ba4e:	44c2                	lw	s1,16(sp)
1c00ba50:	42d78263          	beq	a5,a3,1c00be74 <pos_libc_prf+0x546>
1c00ba54:	fd078693          	addi	a3,a5,-48
1c00ba58:	4525                	li	a0,9
1c00ba5a:	4a01                	li	s4,0
1c00ba5c:	3cd57f63          	bgeu	a0,a3,1c00be3a <pos_libc_prf+0x50c>
1c00ba60:	02e00793          	li	a5,46
1c00ba64:	5afd                	li	s5,-1
1c00ba66:	74fd8363          	beq	s11,a5,1c00c1ac <pos_libc_prf+0x87e>
1c00ba6a:	1c0007b7          	lui	a5,0x1c000
1c00ba6e:	85ee                	mv	a1,s11
1c00ba70:	17078513          	addi	a0,a5,368 # 1c000170 <__clz_tab+0x154>
1c00ba74:	c832                	sw	a2,16(sp)
1c00ba76:	3355                	jal	1c00b81a <strchr>
1c00ba78:	4642                	lw	a2,16(sp)
1c00ba7a:	8c32                	mv	s8,a2
1c00ba7c:	c509                	beqz	a0,1c00ba86 <pos_libc_prf+0x158>
1c00ba7e:	00064d83          	lbu	s11,0(a2)
1c00ba82:	00160c13          	addi	s8,a2,1
1c00ba86:	06900793          	li	a5,105
1c00ba8a:	0afd8ee3          	beq	s11,a5,1c00c346 <pos_libc_prf+0xa18>
1c00ba8e:	4db7c763          	blt	a5,s11,1c00bf5c <pos_libc_prf+0x62e>
1c00ba92:	05800793          	li	a5,88
1c00ba96:	4efd8163          	beq	s11,a5,1c00bf78 <pos_libc_prf+0x64a>
1c00ba9a:	41b7c163          	blt	a5,s11,1c00be9c <pos_libc_prf+0x56e>
1c00ba9e:	02500793          	li	a5,37
1c00baa2:	26fd8ae3          	beq	s11,a5,1c00c516 <pos_libc_prf+0xbe8>
1c00baa6:	3fb7d863          	bge	a5,s11,1c00be96 <pos_libc_prf+0x568>
1c00baaa:	fbbd8793          	addi	a5,s11,-69
1c00baae:	4689                	li	a3,2
1c00bab0:	eef6e8e3          	bltu	a3,a5,1c00b9a0 <pos_libc_prf+0x72>
1c00bab4:	47b2                	lw	a5,12(sp)
1c00bab6:	7ff00893          	li	a7,2047
1c00baba:	00778b13          	addi	s6,a5,7
1c00babe:	ff8b7b13          	andi	s6,s6,-8
1c00bac2:	004b2783          	lw	a5,4(s6)
1c00bac6:	000b2603          	lw	a2,0(s6)
1c00baca:	0b21                	addi	s6,s6,8
1c00bacc:	00b79693          	slli	a3,a5,0xb
1c00bad0:	01565513          	srli	a0,a2,0x15
1c00bad4:	8ec9                	or	a3,a3,a0
1c00bad6:	0147d813          	srli	a6,a5,0x14
1c00bada:	0686                	slli	a3,a3,0x1
1c00badc:	7ff87813          	andi	a6,a6,2047
1c00bae0:	0016d513          	srli	a0,a3,0x1
1c00bae4:	00b61313          	slli	t1,a2,0xb
1c00bae8:	86be                	mv	a3,a5
1c00baea:	41180263          	beq	a6,a7,1c00beee <pos_libc_prf+0x5c0>
1c00baee:	04600793          	li	a5,70
1c00baf2:	00fd9463          	bne	s11,a5,1c00bafa <pos_libc_prf+0x1cc>
1c00baf6:	06600d93          	li	s11,102
1c00bafa:	006867b3          	or	a5,a6,t1
1c00bafe:	00a7e8b3          	or	a7,a5,a0
1c00bb02:	862a                	mv	a2,a0
1c00bb04:	340885e3          	beqz	a7,1c00c64e <pos_libc_prf+0xd20>
1c00bb08:	80000637          	lui	a2,0x80000
1c00bb0c:	c0280813          	addi	a6,a6,-1022
1c00bb10:	879a                	mv	a5,t1
1c00bb12:	8e49                	or	a2,a2,a0
1c00bb14:	4606c7e3          	bltz	a3,1c00c782 <pos_libc_prf+0xe54>
1c00bb18:	4722                	lw	a4,8(sp)
1c00bb1a:	480708e3          	beqz	a4,1c00c7aa <pos_libc_prf+0xe7c>
1c00bb1e:	02b00693          	li	a3,43
1c00bb22:	02d10223          	sb	a3,36(sp)
1c00bb26:	02510f13          	addi	t5,sp,37
1c00bb2a:	56f9                	li	a3,-2
1c00bb2c:	4301                	li	t1,0
1c00bb2e:	06d85663          	bge	a6,a3,1c00bb9a <pos_libc_prf+0x26c>
1c00bb32:	333338b7          	lui	a7,0x33333
1c00bb36:	80000e37          	lui	t3,0x80000
1c00bb3a:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00bb3e:	fffe4e13          	not	t3,t3
1c00bb42:	5ef9                	li	t4,-2
1c00bb44:	01f61593          	slli	a1,a2,0x1f
1c00bb48:	0017d693          	srli	a3,a5,0x1
1c00bb4c:	0017f713          	andi	a4,a5,1
1c00bb50:	8ecd                	or	a3,a3,a1
1c00bb52:	00d707b3          	add	a5,a4,a3
1c00bb56:	00e7b733          	sltu	a4,a5,a4
1c00bb5a:	8205                	srli	a2,a2,0x1
1c00bb5c:	963a                	add	a2,a2,a4
1c00bb5e:	8742                	mv	a4,a6
1c00bb60:	0805                	addi	a6,a6,1
1c00bb62:	fec8e1e3          	bltu	a7,a2,1c00bb44 <pos_libc_prf+0x216>
1c00bb66:	00279593          	slli	a1,a5,0x2
1c00bb6a:	01e7d513          	srli	a0,a5,0x1e
1c00bb6e:	00261693          	slli	a3,a2,0x2
1c00bb72:	97ae                	add	a5,a5,a1
1c00bb74:	8ec9                	or	a3,a3,a0
1c00bb76:	9636                	add	a2,a2,a3
1c00bb78:	00b7b5b3          	sltu	a1,a5,a1
1c00bb7c:	962e                	add	a2,a2,a1
1c00bb7e:	01f7d693          	srli	a3,a5,0x1f
1c00bb82:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00bb86:	137d                	addi	t1,t1,-1
1c00bb88:	01c61763          	bne	a2,t3,1c00bb96 <pos_libc_prf+0x268>
1c00bb8c:	00170813          	addi	a6,a4,1
1c00bb90:	0786                	slli	a5,a5,0x1
1c00bb92:	ffe6e613          	ori	a2,a3,-2
1c00bb96:	fbd847e3          	blt	a6,t4,1c00bb44 <pos_libc_prf+0x216>
1c00bb9a:	07005363          	blez	a6,1c00bc00 <pos_libc_prf+0x2d2>
1c00bb9e:	800008b7          	lui	a7,0x80000
1c00bba2:	4e15                	li	t3,5
1c00bba4:	fff8c893          	not	a7,a7
1c00bba8:	00278693          	addi	a3,a5,2
1c00bbac:	00f6b7b3          	sltu	a5,a3,a5
1c00bbb0:	963e                	add	a2,a2,a5
1c00bbb2:	03c657b3          	divu	a5,a2,t3
1c00bbb6:	0036d713          	srli	a4,a3,0x3
1c00bbba:	187d                	addi	a6,a6,-1
1c00bbbc:	0305                	addi	t1,t1,1
1c00bbbe:	00279593          	slli	a1,a5,0x2
1c00bbc2:	95be                	add	a1,a1,a5
1c00bbc4:	8e0d                	sub	a2,a2,a1
1c00bbc6:	0676                	slli	a2,a2,0x1d
1c00bbc8:	8f51                	or	a4,a4,a2
1c00bbca:	03c75633          	divu	a2,a4,t3
1c00bbce:	00361713          	slli	a4,a2,0x3
1c00bbd2:	00561593          	slli	a1,a2,0x5
1c00bbd6:	95ba                	add	a1,a1,a4
1c00bbd8:	8e8d                	sub	a3,a3,a1
1c00bbda:	03c6d6b3          	divu	a3,a3,t3
1c00bbde:	8275                	srli	a2,a2,0x1d
1c00bbe0:	963e                	add	a2,a2,a5
1c00bbe2:	00e687b3          	add	a5,a3,a4
1c00bbe6:	00d7b6b3          	sltu	a3,a5,a3
1c00bbea:	9636                	add	a2,a2,a3
1c00bbec:	01f7d713          	srli	a4,a5,0x1f
1c00bbf0:	0606                	slli	a2,a2,0x1
1c00bbf2:	8e59                	or	a2,a2,a4
1c00bbf4:	0786                	slli	a5,a5,0x1
1c00bbf6:	187d                	addi	a6,a6,-1
1c00bbf8:	fec8fae3          	bgeu	a7,a2,1c00bbec <pos_libc_prf+0x2be>
1c00bbfc:	fb0046e3          	bgtz	a6,1c00bba8 <pos_libc_prf+0x27a>
1c00bc00:	4e11                	li	t3,4
1c00bc02:	01f61693          	slli	a3,a2,0x1f
1c00bc06:	0017d713          	srli	a4,a5,0x1
1c00bc0a:	8f55                	or	a4,a4,a3
1c00bc0c:	8b85                	andi	a5,a5,1
1c00bc0e:	00e78533          	add	a0,a5,a4
1c00bc12:	8205                	srli	a2,a2,0x1
1c00bc14:	00f537b3          	sltu	a5,a0,a5
1c00bc18:	00c788b3          	add	a7,a5,a2
1c00bc1c:	0805                	addi	a6,a6,1
1c00bc1e:	87aa                	mv	a5,a0
1c00bc20:	8646                	mv	a2,a7
1c00bc22:	ffc810e3          	bne	a6,t3,1c00bc02 <pos_libc_prf+0x2d4>
1c00bc26:	06700793          	li	a5,103
1c00bc2a:	2a0acee3          	bltz	s5,1c00c6e6 <pos_libc_prf+0xdb8>
1c00bc2e:	28fd83e3          	beq	s11,a5,1c00c6b4 <pos_libc_prf+0xd86>
1c00bc32:	04700793          	li	a5,71
1c00bc36:	26fd8fe3          	beq	s11,a5,1c00c6b4 <pos_libc_prf+0xd86>
1c00bc3a:	06600793          	li	a5,102
1c00bc3e:	2cfd85e3          	beq	s11,a5,1c00c708 <pos_libc_prf+0xdda>
1c00bc42:	001a8813          	addi	a6,s5,1
1c00bc46:	47c1                	li	a5,16
1c00bc48:	0107d363          	bge	a5,a6,1c00bc4e <pos_libc_prf+0x320>
1c00bc4c:	4841                	li	a6,16
1c00bc4e:	187d                	addi	a6,a6,-1
1c00bc50:	4601                	li	a2,0
1c00bc52:	4781                	li	a5,0
1c00bc54:	080006b7          	lui	a3,0x8000
1c00bc58:	4e15                	li	t3,5
1c00bc5a:	5efd                	li	t4,-1
1c00bc5c:	00278713          	addi	a4,a5,2
1c00bc60:	00f737b3          	sltu	a5,a4,a5
1c00bc64:	97b6                	add	a5,a5,a3
1c00bc66:	03c7dfb3          	divu	t6,a5,t3
1c00bc6a:	00375593          	srli	a1,a4,0x3
1c00bc6e:	187d                	addi	a6,a6,-1
1c00bc70:	002f9693          	slli	a3,t6,0x2
1c00bc74:	96fe                	add	a3,a3,t6
1c00bc76:	8f95                	sub	a5,a5,a3
1c00bc78:	07f6                	slli	a5,a5,0x1d
1c00bc7a:	8ddd                	or	a1,a1,a5
1c00bc7c:	03c5d5b3          	divu	a1,a1,t3
1c00bc80:	00359693          	slli	a3,a1,0x3
1c00bc84:	00559793          	slli	a5,a1,0x5
1c00bc88:	97b6                	add	a5,a5,a3
1c00bc8a:	8f1d                	sub	a4,a4,a5
1c00bc8c:	03c757b3          	divu	a5,a4,t3
1c00bc90:	81f5                	srli	a1,a1,0x1d
1c00bc92:	95fe                	add	a1,a1,t6
1c00bc94:	96be                	add	a3,a3,a5
1c00bc96:	00f6b733          	sltu	a4,a3,a5
1c00bc9a:	972e                	add	a4,a4,a1
1c00bc9c:	01f71593          	slli	a1,a4,0x1f
1c00bca0:	0016d793          	srli	a5,a3,0x1
1c00bca4:	8fcd                	or	a5,a5,a1
1c00bca6:	8a85                	andi	a3,a3,1
1c00bca8:	97b6                	add	a5,a5,a3
1c00bcaa:	8305                	srli	a4,a4,0x1
1c00bcac:	00d7b6b3          	sltu	a3,a5,a3
1c00bcb0:	96ba                	add	a3,a3,a4
1c00bcb2:	fbd815e3          	bne	a6,t4,1c00bc5c <pos_libc_prf+0x32e>
1c00bcb6:	97aa                	add	a5,a5,a0
1c00bcb8:	96c6                	add	a3,a3,a7
1c00bcba:	00a7b533          	sltu	a0,a5,a0
1c00bcbe:	00d508b3          	add	a7,a0,a3
1c00bcc2:	f00006b7          	lui	a3,0xf0000
1c00bcc6:	0116f6b3          	and	a3,a3,a7
1c00bcca:	c2b5                	beqz	a3,1c00bd2e <pos_libc_prf+0x400>
1c00bccc:	00278813          	addi	a6,a5,2
1c00bcd0:	00f836b3          	sltu	a3,a6,a5
1c00bcd4:	98b6                	add	a7,a7,a3
1c00bcd6:	4e95                	li	t4,5
1c00bcd8:	03d8de33          	divu	t3,a7,t4
1c00bcdc:	00385693          	srli	a3,a6,0x3
1c00bce0:	0305                	addi	t1,t1,1
1c00bce2:	002e1513          	slli	a0,t3,0x2
1c00bce6:	9572                	add	a0,a0,t3
1c00bce8:	40a888b3          	sub	a7,a7,a0
1c00bcec:	01d89513          	slli	a0,a7,0x1d
1c00bcf0:	8ec9                	or	a3,a3,a0
1c00bcf2:	03d6d6b3          	divu	a3,a3,t4
1c00bcf6:	00369513          	slli	a0,a3,0x3
1c00bcfa:	00569793          	slli	a5,a3,0x5
1c00bcfe:	97aa                	add	a5,a5,a0
1c00bd00:	40f807b3          	sub	a5,a6,a5
1c00bd04:	03d7d7b3          	divu	a5,a5,t4
1c00bd08:	82f5                	srli	a3,a3,0x1d
1c00bd0a:	96f2                	add	a3,a3,t3
1c00bd0c:	953e                	add	a0,a0,a5
1c00bd0e:	00f537b3          	sltu	a5,a0,a5
1c00bd12:	96be                	add	a3,a3,a5
1c00bd14:	01f69813          	slli	a6,a3,0x1f
1c00bd18:	00155793          	srli	a5,a0,0x1
1c00bd1c:	00f867b3          	or	a5,a6,a5
1c00bd20:	8905                	andi	a0,a0,1
1c00bd22:	97aa                	add	a5,a5,a0
1c00bd24:	8285                	srli	a3,a3,0x1
1c00bd26:	00a7b533          	sltu	a0,a5,a0
1c00bd2a:	00d508b3          	add	a7,a0,a3
1c00bd2e:	001f0993          	addi	s3,t5,1
1c00bd32:	06600693          	li	a3,102
1c00bd36:	884e                	mv	a6,s3
1c00bd38:	4edd8163          	beq	s11,a3,1c00c21a <pos_libc_prf+0x8ec>
1c00bd3c:	00279693          	slli	a3,a5,0x2
1c00bd40:	01e7d513          	srli	a0,a5,0x1e
1c00bd44:	00289e13          	slli	t3,a7,0x2
1c00bd48:	97b6                	add	a5,a5,a3
1c00bd4a:	01c56e33          	or	t3,a0,t3
1c00bd4e:	00d7b833          	sltu	a6,a5,a3
1c00bd52:	011e06b3          	add	a3,t3,a7
1c00bd56:	9836                	add	a6,a6,a3
1c00bd58:	0806                	slli	a6,a6,0x1
1c00bd5a:	01f7d693          	srli	a3,a5,0x1f
1c00bd5e:	0106e833          	or	a6,a3,a6
1c00bd62:	01c85693          	srli	a3,a6,0x1c
1c00bd66:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00bd6a:	4772                	lw	a4,28(sp)
1c00bd6c:	00af0023          	sb	a0,0(t5)
1c00bd70:	00179513          	slli	a0,a5,0x1
1c00bd74:	47d2                	lw	a5,20(sp)
1c00bd76:	00d036b3          	snez	a3,a3
1c00bd7a:	01576bb3          	or	s7,a4,s5
1c00bd7e:	00f87833          	and	a6,a6,a5
1c00bd82:	40d30333          	sub	t1,t1,a3
1c00bd86:	060b8463          	beqz	s7,1c00bdee <pos_libc_prf+0x4c0>
1c00bd8a:	02e00793          	li	a5,46
1c00bd8e:	00ff00a3          	sb	a5,1(t5)
1c00bd92:	002f0993          	addi	s3,t5,2
1c00bd96:	040a8c63          	beqz	s5,1c00bdee <pos_libc_prf+0x4c0>
1c00bd9a:	002a8793          	addi	a5,s5,2
1c00bd9e:	9f3e                	add	t5,t5,a5
1c00bda0:	88ce                	mv	a7,s3
1c00bda2:	4ebd                	li	t4,15
1c00bda4:	03000f93          	li	t6,48
1c00bda8:	00251793          	slli	a5,a0,0x2
1c00bdac:	01e55693          	srli	a3,a0,0x1e
1c00bdb0:	00281713          	slli	a4,a6,0x2
1c00bdb4:	00a785b3          	add	a1,a5,a0
1c00bdb8:	8f55                	or	a4,a4,a3
1c00bdba:	9742                	add	a4,a4,a6
1c00bdbc:	00f5b7b3          	sltu	a5,a1,a5
1c00bdc0:	97ba                	add	a5,a5,a4
1c00bdc2:	0786                	slli	a5,a5,0x1
1c00bdc4:	01f5d713          	srli	a4,a1,0x1f
1c00bdc8:	8fd9                	or	a5,a5,a4
1c00bdca:	01c7d713          	srli	a4,a5,0x1c
1c00bdce:	03070713          	addi	a4,a4,48
1c00bdd2:	0885                	addi	a7,a7,1
1c00bdd4:	53d05763          	blez	t4,1c00c302 <pos_libc_prf+0x9d4>
1c00bdd8:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00bddc:	4752                	lw	a4,20(sp)
1c00bdde:	1efd                	addi	t4,t4,-1
1c00bde0:	00159513          	slli	a0,a1,0x1
1c00bde4:	00e7f833          	and	a6,a5,a4
1c00bde8:	fd1f10e3          	bne	t5,a7,1c00bda8 <pos_libc_prf+0x47a>
1c00bdec:	99d6                	add	s3,s3,s5
1c00bdee:	4e061c63          	bnez	a2,1c00c2e6 <pos_libc_prf+0x9b8>
1c00bdf2:	fdfdf793          	andi	a5,s11,-33
1c00bdf6:	04500693          	li	a3,69
1c00bdfa:	00d781e3          	beq	a5,a3,1c00c5fc <pos_libc_prf+0xcce>
1c00bdfe:	105c                	addi	a5,sp,36
1c00be00:	00098023          	sb	zero,0(s3)
1c00be04:	40f989b3          	sub	s3,s3,a5
1c00be08:	aa05                	j	1c00bf38 <pos_libc_prf+0x60a>
1c00be0a:	b80c0fe3          	beqz	s8,1c00b9a8 <pos_libc_prf+0x7a>
1c00be0e:	b931                	j	1c00ba2a <pos_libc_prf+0xfc>
1c00be10:	016c0863          	beq	s8,s6,1c00be20 <pos_libc_prf+0x4f2>
1c00be14:	c15c1be3          	bne	s8,s5,1c00ba2a <pos_libc_prf+0xfc>
1c00be18:	03000913          	li	s2,48
1c00be1c:	8da6                	mv	s11,s1
1c00be1e:	b139                	j	1c00ba2c <pos_libc_prf+0xfe>
1c00be20:	4785                	li	a5,1
1c00be22:	c03e                	sw	a5,0(sp)
1c00be24:	8da6                	mv	s11,s1
1c00be26:	b119                	j	1c00ba2c <pos_libc_prf+0xfe>
1c00be28:	4785                	li	a5,1
1c00be2a:	c23e                	sw	a5,4(sp)
1c00be2c:	8da6                	mv	s11,s1
1c00be2e:	befd                	j	1c00ba2c <pos_libc_prf+0xfe>
1c00be30:	4785                	li	a5,1
1c00be32:	c43e                	sw	a5,8(sp)
1c00be34:	8da6                	mv	s11,s1
1c00be36:	bedd                	j	1c00ba2c <pos_libc_prf+0xfe>
1c00be38:	0b85                	addi	s7,s7,1
1c00be3a:	002a1793          	slli	a5,s4,0x2
1c00be3e:	97d2                	add	a5,a5,s4
1c00be40:	0786                	slli	a5,a5,0x1
1c00be42:	97ee                	add	a5,a5,s11
1c00be44:	000bcd83          	lbu	s11,0(s7)
1c00be48:	fd078a13          	addi	s4,a5,-48
1c00be4c:	8662                	mv	a2,s8
1c00be4e:	fd0d8793          	addi	a5,s11,-48
1c00be52:	8c5e                	mv	s8,s7
1c00be54:	fef572e3          	bgeu	a0,a5,1c00be38 <pos_libc_prf+0x50a>
1c00be58:	0609                	addi	a2,a2,2
1c00be5a:	0c800793          	li	a5,200
1c00be5e:	c147f1e3          	bgeu	a5,s4,1c00ba60 <pos_libc_prf+0x132>
1c00be62:	0c800a13          	li	s4,200
1c00be66:	beed                	j	1c00ba60 <pos_libc_prf+0x132>
1c00be68:	0c800793          	li	a5,200
1c00be6c:	b3b7dae3          	bge	a5,s11,1c00b9a0 <pos_libc_prf+0x72>
1c00be70:	547d                	li	s0,-1
1c00be72:	be1d                	j	1c00b9a8 <pos_libc_prf+0x7a>
1c00be74:	47b2                	lw	a5,12(sp)
1c00be76:	0007aa03          	lw	s4,0(a5)
1c00be7a:	00478693          	addi	a3,a5,4
1c00be7e:	000a5663          	bgez	s4,1c00be8a <pos_libc_prf+0x55c>
1c00be82:	4785                	li	a5,1
1c00be84:	41400a33          	neg	s4,s4
1c00be88:	c03e                	sw	a5,0(sp)
1c00be8a:	000bcd83          	lbu	s11,0(s7)
1c00be8e:	c636                	sw	a3,12(sp)
1c00be90:	002c0613          	addi	a2,s8,2
1c00be94:	b7d9                	j	1c00be5a <pos_libc_prf+0x52c>
1c00be96:	b00d89e3          	beqz	s11,1c00b9a8 <pos_libc_prf+0x7a>
1c00be9a:	b619                	j	1c00b9a0 <pos_libc_prf+0x72>
1c00be9c:	06400793          	li	a5,100
1c00bea0:	4afd8363          	beq	s11,a5,1c00c346 <pos_libc_prf+0xa18>
1c00bea4:	19b7d963          	bge	a5,s11,1c00c036 <pos_libc_prf+0x708>
1c00bea8:	f9bd8793          	addi	a5,s11,-101
1c00beac:	4689                	li	a3,2
1c00beae:	aef6e9e3          	bltu	a3,a5,1c00b9a0 <pos_libc_prf+0x72>
1c00beb2:	47b2                	lw	a5,12(sp)
1c00beb4:	7ff00893          	li	a7,2047
1c00beb8:	00778b13          	addi	s6,a5,7
1c00bebc:	ff8b7b13          	andi	s6,s6,-8
1c00bec0:	004b2783          	lw	a5,4(s6)
1c00bec4:	000b2603          	lw	a2,0(s6)
1c00bec8:	0b21                	addi	s6,s6,8
1c00beca:	00b79693          	slli	a3,a5,0xb
1c00bece:	01565813          	srli	a6,a2,0x15
1c00bed2:	0147d513          	srli	a0,a5,0x14
1c00bed6:	00d866b3          	or	a3,a6,a3
1c00beda:	0686                	slli	a3,a3,0x1
1c00bedc:	7ff57813          	andi	a6,a0,2047
1c00bee0:	00b61313          	slli	t1,a2,0xb
1c00bee4:	0016d513          	srli	a0,a3,0x1
1c00bee8:	86be                	mv	a3,a5
1c00beea:	c11818e3          	bne	a6,a7,1c00bafa <pos_libc_prf+0x1cc>
1c00beee:	105c                	addi	a5,sp,36
1c00bef0:	0006d863          	bgez	a3,1c00bf00 <pos_libc_prf+0x5d2>
1c00bef4:	02d00793          	li	a5,45
1c00bef8:	02f10223          	sb	a5,36(sp)
1c00befc:	02510793          	addi	a5,sp,37
1c00bf00:	00a36633          	or	a2,t1,a0
1c00bf04:	fbfd8593          	addi	a1,s11,-65
1c00bf08:	00378993          	addi	s3,a5,3
1c00bf0c:	46e5                	li	a3,25
1c00bf0e:	0c0612e3          	bnez	a2,1c00c7d2 <pos_libc_prf+0xea4>
1c00bf12:	10b6e5e3          	bltu	a3,a1,1c00c81c <pos_libc_prf+0xeee>
1c00bf16:	04900693          	li	a3,73
1c00bf1a:	00d78023          	sb	a3,0(a5)
1c00bf1e:	04e00693          	li	a3,78
1c00bf22:	00d780a3          	sb	a3,1(a5)
1c00bf26:	04600693          	li	a3,70
1c00bf2a:	00d78123          	sb	a3,2(a5)
1c00bf2e:	000781a3          	sb	zero,3(a5)
1c00bf32:	105c                	addi	a5,sp,36
1c00bf34:	40f989b3          	sub	s3,s3,a5
1c00bf38:	47a2                	lw	a5,8(sp)
1c00bf3a:	4712                	lw	a4,4(sp)
1c00bf3c:	8fd9                	or	a5,a5,a4
1c00bf3e:	ce3e                	sw	a5,28(sp)
1c00bf40:	5e079b63          	bnez	a5,1c00c536 <pos_libc_prf+0xc08>
1c00bf44:	02414683          	lbu	a3,36(sp)
1c00bf48:	02d00793          	li	a5,45
1c00bf4c:	5ef68563          	beq	a3,a5,1c00c536 <pos_libc_prf+0xc08>
1c00bf50:	0c800793          	li	a5,200
1c00bf54:	0d37d863          	bge	a5,s3,1c00c024 <pos_libc_prf+0x6f6>
1c00bf58:	547d                	li	s0,-1
1c00bf5a:	b4b9                	j	1c00b9a8 <pos_libc_prf+0x7a>
1c00bf5c:	07000793          	li	a5,112
1c00bf60:	46fd8f63          	beq	s11,a5,1c00c3de <pos_libc_prf+0xab0>
1c00bf64:	1bb7d663          	bge	a5,s11,1c00c110 <pos_libc_prf+0x7e2>
1c00bf68:	07500793          	li	a5,117
1c00bf6c:	52fd8763          	beq	s11,a5,1c00c49a <pos_libc_prf+0xb6c>
1c00bf70:	07800793          	li	a5,120
1c00bf74:	16fd9163          	bne	s11,a5,1c00c0d6 <pos_libc_prf+0x7a8>
1c00bf78:	47b2                	lw	a5,12(sp)
1c00bf7a:	1054                	addi	a3,sp,36
1c00bf7c:	4390                	lw	a2,0(a5)
1c00bf7e:	00478b13          	addi	s6,a5,4
1c00bf82:	47f2                	lw	a5,28(sp)
1c00bf84:	28079163          	bnez	a5,1c00c206 <pos_libc_prf+0x8d8>
1c00bf88:	87b6                	mv	a5,a3
1c00bf8a:	4ea5                	li	t4,9
1c00bf8c:	4e3d                	li	t3,15
1c00bf8e:	a039                	j	1c00bf9c <pos_libc_prf+0x66e>
1c00bf90:	ff098fa3          	sb	a6,-1(s3)
1c00bf94:	02ce7663          	bgeu	t3,a2,1c00bfc0 <pos_libc_prf+0x692>
1c00bf98:	862a                	mv	a2,a0
1c00bf9a:	87ce                	mv	a5,s3
1c00bf9c:	00f67593          	andi	a1,a2,15
1c00bfa0:	00178993          	addi	s3,a5,1
1c00bfa4:	05758813          	addi	a6,a1,87
1c00bfa8:	03058713          	addi	a4,a1,48
1c00bfac:	00465513          	srli	a0,a2,0x4
1c00bfb0:	febee0e3          	bltu	t4,a1,1c00bf90 <pos_libc_prf+0x662>
1c00bfb4:	00e78023          	sb	a4,0(a5)
1c00bfb8:	00178993          	addi	s3,a5,1
1c00bfbc:	fcce6ee3          	bltu	t3,a2,1c00bf98 <pos_libc_prf+0x66a>
1c00bfc0:	40d98633          	sub	a2,s3,a3
1c00bfc4:	01565c63          	bge	a2,s5,1c00bfdc <pos_libc_prf+0x6ae>
1c00bfc8:	03000513          	li	a0,48
1c00bfcc:	87ce                	mv	a5,s3
1c00bfce:	0985                	addi	s3,s3,1
1c00bfd0:	40d98733          	sub	a4,s3,a3
1c00bfd4:	fea98fa3          	sb	a0,-1(s3)
1c00bfd8:	ff574ae3          	blt	a4,s5,1c00bfcc <pos_libc_prf+0x69e>
1c00bfdc:	00098023          	sb	zero,0(s3)
1c00bfe0:	00f6fe63          	bgeu	a3,a5,1c00bffc <pos_libc_prf+0x6ce>
1c00bfe4:	0006c603          	lbu	a2,0(a3)
1c00bfe8:	0007c703          	lbu	a4,0(a5)
1c00bfec:	0685                	addi	a3,a3,1
1c00bfee:	00c78023          	sb	a2,0(a5)
1c00bff2:	fee68fa3          	sb	a4,-1(a3)
1c00bff6:	17fd                	addi	a5,a5,-1
1c00bff8:	fef6e6e3          	bltu	a3,a5,1c00bfe4 <pos_libc_prf+0x6b6>
1c00bffc:	05800793          	li	a5,88
1c00c000:	66fd8463          	beq	s11,a5,1c00c668 <pos_libc_prf+0xd3a>
1c00c004:	105c                	addi	a5,sp,36
1c00c006:	40f989b3          	sub	s3,s3,a5
1c00c00a:	47f2                	lw	a5,28(sp)
1c00c00c:	c399                	beqz	a5,1c00c012 <pos_libc_prf+0x6e4>
1c00c00e:	4789                	li	a5,2
1c00c010:	ce3e                	sw	a5,28(sp)
1c00c012:	57fd                	li	a5,-1
1c00c014:	f2fa8ee3          	beq	s5,a5,1c00bf50 <pos_libc_prf+0x622>
1c00c018:	0c800793          	li	a5,200
1c00c01c:	e537cae3          	blt	a5,s3,1c00be70 <pos_libc_prf+0x542>
1c00c020:	02000913          	li	s2,32
1c00c024:	00198613          	addi	a2,s3,1
1c00c028:	0349c963          	blt	s3,s4,1c00c05a <pos_libc_prf+0x72c>
1c00c02c:	c65a                	sw	s6,12(sp)
1c00c02e:	8a4e                	mv	s4,s3
1c00c030:	1a0a1663          	bnez	s4,1c00c1dc <pos_libc_prf+0x8ae>
1c00c034:	b2b5                	j	1c00b9a0 <pos_libc_prf+0x72>
1c00c036:	06300793          	li	a5,99
1c00c03a:	96fd93e3          	bne	s11,a5,1c00b9a0 <pos_libc_prf+0x72>
1c00c03e:	4732                	lw	a4,12(sp)
1c00c040:	020102a3          	sb	zero,37(sp)
1c00c044:	4785                	li	a5,1
1c00c046:	4314                	lw	a3,0(a4)
1c00c048:	00470b13          	addi	s6,a4,4
1c00c04c:	02d10223          	sb	a3,36(sp)
1c00c050:	1947d463          	bge	a5,s4,1c00c1d8 <pos_libc_prf+0x8aa>
1c00c054:	4609                	li	a2,2
1c00c056:	4985                	li	s3,1
1c00c058:	ce02                	sw	zero,28(sp)
1c00c05a:	4782                	lw	a5,0(sp)
1c00c05c:	4e078463          	beqz	a5,1c00c544 <pos_libc_prf+0xc16>
1c00c060:	413a07b3          	sub	a5,s4,s3
1c00c064:	4585                	li	a1,1
1c00c066:	0149d363          	bge	s3,s4,1c00c06c <pos_libc_prf+0x73e>
1c00c06a:	85be                	mv	a1,a5
1c00c06c:	17fd                	addi	a5,a5,-1
1c00c06e:	0037b793          	sltiu	a5,a5,3
1c00c072:	eb95                	bnez	a5,1c00c0a6 <pos_libc_prf+0x778>
1c00c074:	0349d963          	bge	s3,s4,1c00c0a6 <pos_libc_prf+0x778>
1c00c078:	105c                	addi	a5,sp,36
1c00c07a:	97ce                	add	a5,a5,s3
1c00c07c:	ffc5f613          	andi	a2,a1,-4
1c00c080:	963e                	add	a2,a2,a5
1c00c082:	02000693          	li	a3,32
1c00c086:	00d78023          	sb	a3,0(a5)
1c00c08a:	00d780a3          	sb	a3,1(a5)
1c00c08e:	00d78123          	sb	a3,2(a5)
1c00c092:	00d781a3          	sb	a3,3(a5)
1c00c096:	0791                	addi	a5,a5,4
1c00c098:	fef617e3          	bne	a2,a5,1c00c086 <pos_libc_prf+0x758>
1c00c09c:	ffc5f793          	andi	a5,a1,-4
1c00c0a0:	99be                	add	s3,s3,a5
1c00c0a2:	02b78663          	beq	a5,a1,1c00c0ce <pos_libc_prf+0x7a0>
1c00c0a6:	199c                	addi	a5,sp,240
1c00c0a8:	97ce                	add	a5,a5,s3
1c00c0aa:	02000693          	li	a3,32
1c00c0ae:	f2d78a23          	sb	a3,-204(a5)
1c00c0b2:	00198793          	addi	a5,s3,1
1c00c0b6:	0147dc63          	bge	a5,s4,1c00c0ce <pos_libc_prf+0x7a0>
1c00c0ba:	1998                	addi	a4,sp,240
1c00c0bc:	97ba                	add	a5,a5,a4
1c00c0be:	f2d78a23          	sb	a3,-204(a5)
1c00c0c2:	0989                	addi	s3,s3,2
1c00c0c4:	0149d563          	bge	s3,s4,1c00c0ce <pos_libc_prf+0x7a0>
1c00c0c8:	99ba                	add	s3,s3,a4
1c00c0ca:	f2d98a23          	sb	a3,-204(s3)
1c00c0ce:	c65a                	sw	s6,12(sp)
1c00c0d0:	100a1663          	bnez	s4,1c00c1dc <pos_libc_prf+0x8ae>
1c00c0d4:	b0f1                	j	1c00b9a0 <pos_libc_prf+0x72>
1c00c0d6:	07300793          	li	a5,115
1c00c0da:	d8fd97e3          	bne	s11,a5,1c00be68 <pos_libc_prf+0x53a>
1c00c0de:	47b2                	lw	a5,12(sp)
1c00c0e0:	4981                	li	s3,0
1c00c0e2:	0c800693          	li	a3,200
1c00c0e6:	438c                	lw	a1,0(a5)
1c00c0e8:	00478b13          	addi	s6,a5,4
1c00c0ec:	a021                	j	1c00c0f4 <pos_libc_prf+0x7c6>
1c00c0ee:	0985                	addi	s3,s3,1
1c00c0f0:	6ad98163          	beq	s3,a3,1c00c792 <pos_libc_prf+0xe64>
1c00c0f4:	013587b3          	add	a5,a1,s3
1c00c0f8:	0007c783          	lbu	a5,0(a5)
1c00c0fc:	fbed                	bnez	a5,1c00c0ee <pos_libc_prf+0x7c0>
1c00c0fe:	000ac563          	bltz	s5,1c00c108 <pos_libc_prf+0x7da>
1c00c102:	013ad363          	bge	s5,s3,1c00c108 <pos_libc_prf+0x7da>
1c00c106:	89d6                	mv	s3,s5
1c00c108:	5a099163          	bnez	s3,1c00c6aa <pos_libc_prf+0xd7c>
1c00c10c:	c65a                	sw	s6,12(sp)
1c00c10e:	b849                	j	1c00b9a0 <pos_libc_prf+0x72>
1c00c110:	06e00793          	li	a5,110
1c00c114:	36fd8c63          	beq	s11,a5,1c00c48c <pos_libc_prf+0xb5e>
1c00c118:	06f00793          	li	a5,111
1c00c11c:	88fd92e3          	bne	s11,a5,1c00b9a0 <pos_libc_prf+0x72>
1c00c120:	47b2                	lw	a5,12(sp)
1c00c122:	4390                	lw	a2,0(a5)
1c00c124:	00478b13          	addi	s6,a5,4
1c00c128:	47f2                	lw	a5,28(sp)
1c00c12a:	c7f5                	beqz	a5,1c00c216 <pos_libc_prf+0x8e8>
1c00c12c:	03000793          	li	a5,48
1c00c130:	02f10223          	sb	a5,36(sp)
1c00c134:	02510693          	addi	a3,sp,37
1c00c138:	60060b63          	beqz	a2,1c00c74e <pos_libc_prf+0xe20>
1c00c13c:	89b6                	mv	s3,a3
1c00c13e:	481d                	li	a6,7
1c00c140:	00767713          	andi	a4,a2,7
1c00c144:	03070713          	addi	a4,a4,48
1c00c148:	85b2                	mv	a1,a2
1c00c14a:	00e98023          	sb	a4,0(s3)
1c00c14e:	87ce                	mv	a5,s3
1c00c150:	820d                	srli	a2,a2,0x3
1c00c152:	0985                	addi	s3,s3,1
1c00c154:	feb866e3          	bltu	a6,a1,1c00c140 <pos_libc_prf+0x812>
1c00c158:	40d98633          	sub	a2,s3,a3
1c00c15c:	01565c63          	bge	a2,s5,1c00c174 <pos_libc_prf+0x846>
1c00c160:	03000593          	li	a1,48
1c00c164:	87ce                	mv	a5,s3
1c00c166:	0985                	addi	s3,s3,1
1c00c168:	40d98733          	sub	a4,s3,a3
1c00c16c:	feb98fa3          	sb	a1,-1(s3)
1c00c170:	ff574ae3          	blt	a4,s5,1c00c164 <pos_libc_prf+0x836>
1c00c174:	00098023          	sb	zero,0(s3)
1c00c178:	00f6fe63          	bgeu	a3,a5,1c00c194 <pos_libc_prf+0x866>
1c00c17c:	0006c603          	lbu	a2,0(a3)
1c00c180:	0007c703          	lbu	a4,0(a5)
1c00c184:	0685                	addi	a3,a3,1
1c00c186:	00c78023          	sb	a2,0(a5)
1c00c18a:	fee68fa3          	sb	a4,-1(a3)
1c00c18e:	17fd                	addi	a5,a5,-1
1c00c190:	fef6e6e3          	bltu	a3,a5,1c00c17c <pos_libc_prf+0x84e>
1c00c194:	1058                	addi	a4,sp,36
1c00c196:	57fd                	li	a5,-1
1c00c198:	40e989b3          	sub	s3,s3,a4
1c00c19c:	36fa8763          	beq	s5,a5,1c00c50a <pos_libc_prf+0xbdc>
1c00c1a0:	0c800793          	li	a5,200
1c00c1a4:	cd37c6e3          	blt	a5,s3,1c00be70 <pos_libc_prf+0x542>
1c00c1a8:	ce02                	sw	zero,28(sp)
1c00c1aa:	bd9d                	j	1c00c020 <pos_libc_prf+0x6f2>
1c00c1ac:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00c1b0:	02a00793          	li	a5,42
1c00c1b4:	00160693          	addi	a3,a2,1
1c00c1b8:	14f59b63          	bne	a1,a5,1c00c30e <pos_libc_prf+0x9e0>
1c00c1bc:	47b2                	lw	a5,12(sp)
1c00c1be:	00164d83          	lbu	s11,1(a2)
1c00c1c2:	0609                	addi	a2,a2,2
1c00c1c4:	0007aa83          	lw	s5,0(a5)
1c00c1c8:	0791                	addi	a5,a5,4
1c00c1ca:	c63e                	sw	a5,12(sp)
1c00c1cc:	0c800793          	li	a5,200
1c00c1d0:	8957dde3          	bge	a5,s5,1c00ba6a <pos_libc_prf+0x13c>
1c00c1d4:	5afd                	li	s5,-1
1c00c1d6:	b851                	j	1c00ba6a <pos_libc_prf+0x13c>
1c00c1d8:	c65a                	sw	s6,12(sp)
1c00c1da:	4a05                	li	s4,1
1c00c1dc:	02410913          	addi	s2,sp,36
1c00c1e0:	59fd                	li	s3,-1
1c00c1e2:	41240ab3          	sub	s5,s0,s2
1c00c1e6:	9a4a                	add	s4,s4,s2
1c00c1e8:	a029                	j	1c00c1f2 <pos_libc_prf+0x8c4>
1c00c1ea:	012a8433          	add	s0,s5,s2
1c00c1ee:	fb490963          	beq	s2,s4,1c00b9a0 <pos_libc_prf+0x72>
1c00c1f2:	00094503          	lbu	a0,0(s2)
1c00c1f6:	85a6                	mv	a1,s1
1c00c1f8:	0905                	addi	s2,s2,1
1c00c1fa:	9c82                	jalr	s9
1c00c1fc:	ff3517e3          	bne	a0,s3,1c00c1ea <pos_libc_prf+0x8bc>
1c00c200:	547d                	li	s0,-1
1c00c202:	fa6ff06f          	j	1c00b9a8 <pos_libc_prf+0x7a>
1c00c206:	77e1                	lui	a5,0xffff8
1c00c208:	8307c793          	xori	a5,a5,-2000
1c00c20c:	02f11223          	sh	a5,36(sp)
1c00c210:	02610693          	addi	a3,sp,38
1c00c214:	bb95                	j	1c00bf88 <pos_libc_prf+0x65a>
1c00c216:	1054                	addi	a3,sp,36
1c00c218:	b715                	j	1c00c13c <pos_libc_prf+0x80e>
1c00c21a:	5c605a63          	blez	t1,1c00c7ee <pos_libc_prf+0xec0>
1c00c21e:	006f09b3          	add	s3,t5,t1
1c00c222:	4541                	li	a0,16
1c00c224:	03000e13          	li	t3,48
1c00c228:	00279713          	slli	a4,a5,0x2
1c00c22c:	01e7d593          	srli	a1,a5,0x1e
1c00c230:	00289693          	slli	a3,a7,0x2
1c00c234:	00f70333          	add	t1,a4,a5
1c00c238:	8ecd                	or	a3,a3,a1
1c00c23a:	96c6                	add	a3,a3,a7
1c00c23c:	00e33733          	sltu	a4,t1,a4
1c00c240:	9736                	add	a4,a4,a3
1c00c242:	0706                	slli	a4,a4,0x1
1c00c244:	01f35693          	srli	a3,t1,0x1f
1c00c248:	8f55                	or	a4,a4,a3
1c00c24a:	01c75693          	srli	a3,a4,0x1c
1c00c24e:	03068693          	addi	a3,a3,48
1c00c252:	4ea05463          	blez	a0,1c00c73a <pos_libc_prf+0xe0c>
1c00c256:	fed80fa3          	sb	a3,-1(a6)
1c00c25a:	46d2                	lw	a3,20(sp)
1c00c25c:	157d                	addi	a0,a0,-1
1c00c25e:	00131793          	slli	a5,t1,0x1
1c00c262:	00d778b3          	and	a7,a4,a3
1c00c266:	4d099e63          	bne	s3,a6,1c00c742 <pos_libc_prf+0xe14>
1c00c26a:	4301                	li	t1,0
1c00c26c:	4772                	lw	a4,28(sp)
1c00c26e:	01576bb3          	or	s7,a4,s5
1c00c272:	060b8863          	beqz	s7,1c00c2e2 <pos_libc_prf+0x9b4>
1c00c276:	02e00693          	li	a3,46
1c00c27a:	00d98023          	sb	a3,0(s3)
1c00c27e:	00198e93          	addi	t4,s3,1
1c00c282:	5c0a8763          	beqz	s5,1c00c850 <pos_libc_prf+0xf22>
1c00c286:	001a8693          	addi	a3,s5,1
1c00c28a:	99b6                	add	s3,s3,a3
1c00c28c:	8876                	mv	a6,t4
1c00c28e:	03000f13          	li	t5,48
1c00c292:	0805                	addi	a6,a6,1
1c00c294:	4a031963          	bnez	t1,1c00c746 <pos_libc_prf+0xe18>
1c00c298:	00279713          	slli	a4,a5,0x2
1c00c29c:	01e7d593          	srli	a1,a5,0x1e
1c00c2a0:	00289693          	slli	a3,a7,0x2
1c00c2a4:	00f70e33          	add	t3,a4,a5
1c00c2a8:	8ecd                	or	a3,a3,a1
1c00c2aa:	96c6                	add	a3,a3,a7
1c00c2ac:	00ee3733          	sltu	a4,t3,a4
1c00c2b0:	9736                	add	a4,a4,a3
1c00c2b2:	0706                	slli	a4,a4,0x1
1c00c2b4:	01fe5693          	srli	a3,t3,0x1f
1c00c2b8:	8f55                	or	a4,a4,a3
1c00c2ba:	01c75593          	srli	a1,a4,0x1c
1c00c2be:	03000693          	li	a3,48
1c00c2c2:	00a05a63          	blez	a0,1c00c2d6 <pos_libc_prf+0x9a8>
1c00c2c6:	03058693          	addi	a3,a1,48
1c00c2ca:	45d2                	lw	a1,20(sp)
1c00c2cc:	157d                	addi	a0,a0,-1
1c00c2ce:	001e1793          	slli	a5,t3,0x1
1c00c2d2:	00b778b3          	and	a7,a4,a1
1c00c2d6:	fed80fa3          	sb	a3,-1(a6)
1c00c2da:	fb099ce3          	bne	s3,a6,1c00c292 <pos_libc_prf+0x964>
1c00c2de:	015e89b3          	add	s3,t4,s5
1c00c2e2:	b0060ee3          	beqz	a2,1c00bdfe <pos_libc_prf+0x4d0>
1c00c2e6:	03000613          	li	a2,48
1c00c2ea:	fff9c783          	lbu	a5,-1(s3)
1c00c2ee:	86ce                	mv	a3,s3
1c00c2f0:	19fd                	addi	s3,s3,-1
1c00c2f2:	fec78ce3          	beq	a5,a2,1c00c2ea <pos_libc_prf+0x9bc>
1c00c2f6:	02e00613          	li	a2,46
1c00c2fa:	aec78ce3          	beq	a5,a2,1c00bdf2 <pos_libc_prf+0x4c4>
1c00c2fe:	89b6                	mv	s3,a3
1c00c300:	bccd                	j	1c00bdf2 <pos_libc_prf+0x4c4>
1c00c302:	fff88fa3          	sb	t6,-1(a7)
1c00c306:	ab1f11e3          	bne	t5,a7,1c00bda8 <pos_libc_prf+0x47a>
1c00c30a:	99d6                	add	s3,s3,s5
1c00c30c:	b4cd                	j	1c00bdee <pos_libc_prf+0x4c0>
1c00c30e:	fd058713          	addi	a4,a1,-48
1c00c312:	47a5                	li	a5,9
1c00c314:	8dae                	mv	s11,a1
1c00c316:	4a81                	li	s5,0
1c00c318:	4525                	li	a0,9
1c00c31a:	00e7f463          	bgeu	a5,a4,1c00c322 <pos_libc_prf+0x9f4>
1c00c31e:	a199                	j	1c00c764 <pos_libc_prf+0xe36>
1c00c320:	0685                	addi	a3,a3,1
1c00c322:	002a9793          	slli	a5,s5,0x2
1c00c326:	97d6                	add	a5,a5,s5
1c00c328:	0786                	slli	a5,a5,0x1
1c00c32a:	97ee                	add	a5,a5,s11
1c00c32c:	0006cd83          	lbu	s11,0(a3)
1c00c330:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00c334:	8732                	mv	a4,a2
1c00c336:	fd0d8793          	addi	a5,s11,-48
1c00c33a:	8636                	mv	a2,a3
1c00c33c:	fef572e3          	bgeu	a0,a5,1c00c320 <pos_libc_prf+0x9f2>
1c00c340:	00270613          	addi	a2,a4,2
1c00c344:	b561                	j	1c00c1cc <pos_libc_prf+0x89e>
1c00c346:	47b2                	lw	a5,12(sp)
1c00c348:	0007a303          	lw	t1,0(a5)
1c00c34c:	00478b13          	addi	s6,a5,4
1c00c350:	2e034263          	bltz	t1,1c00c634 <pos_libc_prf+0xd06>
1c00c354:	47a2                	lw	a5,8(sp)
1c00c356:	861a                	mv	a2,t1
1c00c358:	3c078663          	beqz	a5,1c00c724 <pos_libc_prf+0xdf6>
1c00c35c:	02b00793          	li	a5,43
1c00c360:	02f10223          	sb	a5,36(sp)
1c00c364:	02510693          	addi	a3,sp,37
1c00c368:	89b6                	mv	s3,a3
1c00c36a:	4529                	li	a0,10
1c00c36c:	48a5                	li	a7,9
1c00c36e:	02a67733          	remu	a4,a2,a0
1c00c372:	87ce                	mv	a5,s3
1c00c374:	0985                	addi	s3,s3,1
1c00c376:	85b2                	mv	a1,a2
1c00c378:	03070713          	addi	a4,a4,48
1c00c37c:	fee98fa3          	sb	a4,-1(s3)
1c00c380:	02a65633          	divu	a2,a2,a0
1c00c384:	feb8e5e3          	bltu	a7,a1,1c00c36e <pos_libc_prf+0xa40>
1c00c388:	40d98633          	sub	a2,s3,a3
1c00c38c:	01565c63          	bge	a2,s5,1c00c3a4 <pos_libc_prf+0xa76>
1c00c390:	03000593          	li	a1,48
1c00c394:	87ce                	mv	a5,s3
1c00c396:	0985                	addi	s3,s3,1
1c00c398:	40d98733          	sub	a4,s3,a3
1c00c39c:	feb98fa3          	sb	a1,-1(s3)
1c00c3a0:	ff574ae3          	blt	a4,s5,1c00c394 <pos_libc_prf+0xa66>
1c00c3a4:	00098023          	sb	zero,0(s3)
1c00c3a8:	00f6fe63          	bgeu	a3,a5,1c00c3c4 <pos_libc_prf+0xa96>
1c00c3ac:	0006c603          	lbu	a2,0(a3)
1c00c3b0:	0007c703          	lbu	a4,0(a5)
1c00c3b4:	0685                	addi	a3,a3,1
1c00c3b6:	00c78023          	sb	a2,0(a5)
1c00c3ba:	fee68fa3          	sb	a4,-1(a3)
1c00c3be:	17fd                	addi	a5,a5,-1
1c00c3c0:	fef6e6e3          	bltu	a3,a5,1c00c3ac <pos_libc_prf+0xa7e>
1c00c3c4:	4712                	lw	a4,4(sp)
1c00c3c6:	47a2                	lw	a5,8(sp)
1c00c3c8:	8fd9                	or	a5,a5,a4
1c00c3ca:	ce3e                	sw	a5,28(sp)
1c00c3cc:	1058                	addi	a4,sp,36
1c00c3ce:	40e989b3          	sub	s3,s3,a4
1c00c3d2:	c40790e3          	bnez	a5,1c00c012 <pos_libc_prf+0x6e4>
1c00c3d6:	01f35793          	srli	a5,t1,0x1f
1c00c3da:	ce3e                	sw	a5,28(sp)
1c00c3dc:	b91d                	j	1c00c012 <pos_libc_prf+0x6e4>
1c00c3de:	47b2                	lw	a5,12(sp)
1c00c3e0:	02610613          	addi	a2,sp,38
1c00c3e4:	4ea5                	li	t4,9
1c00c3e6:	438c                	lw	a1,0(a5)
1c00c3e8:	00478b13          	addi	s6,a5,4
1c00c3ec:	77e1                	lui	a5,0xffff8
1c00c3ee:	8307c793          	xori	a5,a5,-2000
1c00c3f2:	02f11223          	sh	a5,36(sp)
1c00c3f6:	4e3d                	li	t3,15
1c00c3f8:	87b2                	mv	a5,a2
1c00c3fa:	a039                	j	1c00c408 <pos_libc_prf+0xada>
1c00c3fc:	ff168fa3          	sb	a7,-1(a3)
1c00c400:	02be7663          	bgeu	t3,a1,1c00c42c <pos_libc_prf+0xafe>
1c00c404:	85c2                	mv	a1,a6
1c00c406:	87b6                	mv	a5,a3
1c00c408:	00f5f513          	andi	a0,a1,15
1c00c40c:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00c410:	05750893          	addi	a7,a0,87
1c00c414:	03050713          	addi	a4,a0,48
1c00c418:	0045d813          	srli	a6,a1,0x4
1c00c41c:	feaee0e3          	bltu	t4,a0,1c00c3fc <pos_libc_prf+0xace>
1c00c420:	00e78023          	sb	a4,0(a5)
1c00c424:	00178693          	addi	a3,a5,1
1c00c428:	fcbe6ee3          	bltu	t3,a1,1c00c404 <pos_libc_prf+0xad6>
1c00c42c:	40c689b3          	sub	s3,a3,a2
1c00c430:	459d                	li	a1,7
1c00c432:	0135cc63          	blt	a1,s3,1c00c44a <pos_libc_prf+0xb1c>
1c00c436:	03000513          	li	a0,48
1c00c43a:	87b6                	mv	a5,a3
1c00c43c:	0685                	addi	a3,a3,1
1c00c43e:	40c689b3          	sub	s3,a3,a2
1c00c442:	fea68fa3          	sb	a0,-1(a3)
1c00c446:	ff35dae3          	bge	a1,s3,1c00c43a <pos_libc_prf+0xb0c>
1c00c44a:	00068023          	sb	zero,0(a3)
1c00c44e:	86b2                	mv	a3,a2
1c00c450:	00f67e63          	bgeu	a2,a5,1c00c46c <pos_libc_prf+0xb3e>
1c00c454:	0006c603          	lbu	a2,0(a3)
1c00c458:	0007c703          	lbu	a4,0(a5)
1c00c45c:	0685                	addi	a3,a3,1
1c00c45e:	00c78023          	sb	a2,0(a5)
1c00c462:	fee68fa3          	sb	a4,-1(a3)
1c00c466:	17fd                	addi	a5,a5,-1
1c00c468:	fef6e6e3          	bltu	a3,a5,1c00c454 <pos_libc_prf+0xb26>
1c00c46c:	57fd                	li	a5,-1
1c00c46e:	0989                	addi	s3,s3,2
1c00c470:	22fa8663          	beq	s5,a5,1c00c69c <pos_libc_prf+0xd6e>
1c00c474:	0c800793          	li	a5,200
1c00c478:	9f37cce3          	blt	a5,s3,1c00be70 <pos_libc_prf+0x542>
1c00c47c:	02000913          	li	s2,32
1c00c480:	0b49d863          	bge	s3,s4,1c00c530 <pos_libc_prf+0xc02>
1c00c484:	00198613          	addi	a2,s3,1
1c00c488:	ce02                	sw	zero,28(sp)
1c00c48a:	bec1                	j	1c00c05a <pos_libc_prf+0x72c>
1c00c48c:	4732                	lw	a4,12(sp)
1c00c48e:	431c                	lw	a5,0(a4)
1c00c490:	0711                	addi	a4,a4,4
1c00c492:	c63a                	sw	a4,12(sp)
1c00c494:	c380                	sw	s0,0(a5)
1c00c496:	d0aff06f          	j	1c00b9a0 <pos_libc_prf+0x72>
1c00c49a:	47b2                	lw	a5,12(sp)
1c00c49c:	4529                	li	a0,10
1c00c49e:	48a5                	li	a7,9
1c00c4a0:	4390                	lw	a2,0(a5)
1c00c4a2:	00478b13          	addi	s6,a5,4
1c00c4a6:	105c                	addi	a5,sp,36
1c00c4a8:	02a67733          	remu	a4,a2,a0
1c00c4ac:	86be                	mv	a3,a5
1c00c4ae:	0785                	addi	a5,a5,1
1c00c4b0:	85b2                	mv	a1,a2
1c00c4b2:	03070713          	addi	a4,a4,48
1c00c4b6:	fee78fa3          	sb	a4,-1(a5)
1c00c4ba:	02a65633          	divu	a2,a2,a0
1c00c4be:	feb8e5e3          	bltu	a7,a1,1c00c4a8 <pos_libc_prf+0xb7a>
1c00c4c2:	1058                	addi	a4,sp,36
1c00c4c4:	40e789b3          	sub	s3,a5,a4
1c00c4c8:	0159dd63          	bge	s3,s5,1c00c4e2 <pos_libc_prf+0xbb4>
1c00c4cc:	03000613          	li	a2,48
1c00c4d0:	86be                	mv	a3,a5
1c00c4d2:	1058                	addi	a4,sp,36
1c00c4d4:	0785                	addi	a5,a5,1
1c00c4d6:	40e789b3          	sub	s3,a5,a4
1c00c4da:	fec78fa3          	sb	a2,-1(a5)
1c00c4de:	ff59c9e3          	blt	s3,s5,1c00c4d0 <pos_libc_prf+0xba2>
1c00c4e2:	00078023          	sb	zero,0(a5)
1c00c4e6:	105c                	addi	a5,sp,36
1c00c4e8:	00d7fe63          	bgeu	a5,a3,1c00c504 <pos_libc_prf+0xbd6>
1c00c4ec:	0007c603          	lbu	a2,0(a5)
1c00c4f0:	0006c703          	lbu	a4,0(a3)
1c00c4f4:	0785                	addi	a5,a5,1
1c00c4f6:	00c68023          	sb	a2,0(a3)
1c00c4fa:	fee78fa3          	sb	a4,-1(a5)
1c00c4fe:	16fd                	addi	a3,a3,-1
1c00c500:	fed7e6e3          	bltu	a5,a3,1c00c4ec <pos_libc_prf+0xbbe>
1c00c504:	57fd                	li	a5,-1
1c00c506:	c8fa9de3          	bne	s5,a5,1c00c1a0 <pos_libc_prf+0x872>
1c00c50a:	0c800793          	li	a5,200
1c00c50e:	9737c1e3          	blt	a5,s3,1c00be70 <pos_libc_prf+0x542>
1c00c512:	ce02                	sw	zero,28(sp)
1c00c514:	be01                	j	1c00c024 <pos_libc_prf+0x6f6>
1c00c516:	85a6                	mv	a1,s1
1c00c518:	02500513          	li	a0,37
1c00c51c:	9c82                	jalr	s9
1c00c51e:	57fd                	li	a5,-1
1c00c520:	c6f51f63          	bne	a0,a5,1c00b99e <pos_libc_prf+0x70>
1c00c524:	547d                	li	s0,-1
1c00c526:	c82ff06f          	j	1c00b9a8 <pos_libc_prf+0x7a>
1c00c52a:	4401                	li	s0,0
1c00c52c:	c7cff06f          	j	1c00b9a8 <pos_libc_prf+0x7a>
1c00c530:	8a4e                	mv	s4,s3
1c00c532:	c65a                	sw	s6,12(sp)
1c00c534:	b165                	j	1c00c1dc <pos_libc_prf+0x8ae>
1c00c536:	0c800793          	li	a5,200
1c00c53a:	9337cbe3          	blt	a5,s3,1c00be70 <pos_libc_prf+0x542>
1c00c53e:	4785                	li	a5,1
1c00c540:	ce3e                	sw	a5,28(sp)
1c00c542:	b4cd                	j	1c00c024 <pos_libc_prf+0x6f6>
1c00c544:	104c                	addi	a1,sp,36
1c00c546:	413a09b3          	sub	s3,s4,s3
1c00c54a:	01358533          	add	a0,a1,s3
1c00c54e:	9faff0ef          	jal	ra,1c00b748 <memmove>
1c00c552:	02000793          	li	a5,32
1c00c556:	24f90863          	beq	s2,a5,1c00c7a6 <pos_libc_prf+0xe78>
1c00c55a:	47f2                	lw	a5,28(sp)
1c00c55c:	99be                	add	s3,s3,a5
1c00c55e:	47f2                	lw	a5,28(sp)
1c00c560:	b737d7e3          	bge	a5,s3,1c00c0ce <pos_libc_prf+0x7a0>
1c00c564:	4772                	lw	a4,28(sp)
1c00c566:	4789                	li	a5,2
1c00c568:	40e988b3          	sub	a7,s3,a4
1c00c56c:	fff88693          	addi	a3,a7,-1
1c00c570:	06d7f063          	bgeu	a5,a3,1c00c5d0 <pos_libc_prf+0xca2>
1c00c574:	47e2                	lw	a5,24(sp)
1c00c576:	00891613          	slli	a2,s2,0x8
1c00c57a:	ffc8f593          	andi	a1,a7,-4
1c00c57e:	00f976b3          	and	a3,s2,a5
1c00c582:	8ed1                	or	a3,a3,a2
1c00c584:	01091793          	slli	a5,s2,0x10
1c00c588:	8edd                	or	a3,a3,a5
1c00c58a:	01891613          	slli	a2,s2,0x18
1c00c58e:	8e55                	or	a2,a2,a3
1c00c590:	105c                	addi	a5,sp,36
1c00c592:	00865813          	srli	a6,a2,0x8
1c00c596:	01065513          	srli	a0,a2,0x10
1c00c59a:	97ba                	add	a5,a5,a4
1c00c59c:	95be                	add	a1,a1,a5
1c00c59e:	0306f693          	andi	a3,a3,48
1c00c5a2:	8261                	srli	a2,a2,0x18
1c00c5a4:	0ff87813          	andi	a6,a6,255
1c00c5a8:	0ff57513          	andi	a0,a0,255
1c00c5ac:	00d78023          	sb	a3,0(a5)
1c00c5b0:	010780a3          	sb	a6,1(a5)
1c00c5b4:	00a78123          	sb	a0,2(a5)
1c00c5b8:	00c781a3          	sb	a2,3(a5)
1c00c5bc:	0791                	addi	a5,a5,4
1c00c5be:	fef597e3          	bne	a1,a5,1c00c5ac <pos_libc_prf+0xc7e>
1c00c5c2:	4772                	lw	a4,28(sp)
1c00c5c4:	ffc8f793          	andi	a5,a7,-4
1c00c5c8:	973e                	add	a4,a4,a5
1c00c5ca:	ce3a                	sw	a4,28(sp)
1c00c5cc:	b11781e3          	beq	a5,a7,1c00c0ce <pos_libc_prf+0x7a0>
1c00c5d0:	4772                	lw	a4,28(sp)
1c00c5d2:	199c                	addi	a5,sp,240
1c00c5d4:	97ba                	add	a5,a5,a4
1c00c5d6:	f3278a23          	sb	s2,-204(a5)
1c00c5da:	00170793          	addi	a5,a4,1
1c00c5de:	af37d8e3          	bge	a5,s3,1c00c0ce <pos_libc_prf+0x7a0>
1c00c5e2:	1994                	addi	a3,sp,240
1c00c5e4:	97b6                	add	a5,a5,a3
1c00c5e6:	f3278a23          	sb	s2,-204(a5)
1c00c5ea:	00270b93          	addi	s7,a4,2
1c00c5ee:	af3bd0e3          	bge	s7,s3,1c00c0ce <pos_libc_prf+0x7a0>
1c00c5f2:	9bb6                	add	s7,s7,a3
1c00c5f4:	f32b8a23          	sb	s2,-204(s7)
1c00c5f8:	c65a                	sw	s6,12(sp)
1c00c5fa:	bcd9                	j	1c00c0d0 <pos_libc_prf+0x7a2>
1c00c5fc:	01b98023          	sb	s11,0(s3)
1c00c600:	02b00613          	li	a2,43
1c00c604:	00035663          	bgez	t1,1c00c610 <pos_libc_prf+0xce2>
1c00c608:	40600333          	neg	t1,t1
1c00c60c:	02d00613          	li	a2,45
1c00c610:	47a9                	li	a5,10
1c00c612:	02f346b3          	div	a3,t1,a5
1c00c616:	00c980a3          	sb	a2,1(s3)
1c00c61a:	0991                	addi	s3,s3,4
1c00c61c:	02f367b3          	rem	a5,t1,a5
1c00c620:	03068693          	addi	a3,a3,48
1c00c624:	fed98f23          	sb	a3,-2(s3)
1c00c628:	03078793          	addi	a5,a5,48
1c00c62c:	fef98fa3          	sb	a5,-1(s3)
1c00c630:	fceff06f          	j	1c00bdfe <pos_libc_prf+0x4d0>
1c00c634:	02d00793          	li	a5,45
1c00c638:	02f10223          	sb	a5,36(sp)
1c00c63c:	800007b7          	lui	a5,0x80000
1c00c640:	14f30e63          	beq	t1,a5,1c00c79c <pos_libc_prf+0xe6e>
1c00c644:	40600633          	neg	a2,t1
1c00c648:	02510693          	addi	a3,sp,37
1c00c64c:	bb31                	j	1c00c368 <pos_libc_prf+0xa3a>
1c00c64e:	4722                	lw	a4,8(sp)
1c00c650:	10070d63          	beqz	a4,1c00c76a <pos_libc_prf+0xe3c>
1c00c654:	02b00693          	li	a3,43
1c00c658:	02d10223          	sb	a3,36(sp)
1c00c65c:	02510f13          	addi	t5,sp,37
1c00c660:	4301                	li	t1,0
1c00c662:	4801                	li	a6,0
1c00c664:	d9cff06f          	j	1c00bc00 <pos_libc_prf+0x2d2>
1c00c668:	02414783          	lbu	a5,36(sp)
1c00c66c:	98078ce3          	beqz	a5,1c00c004 <pos_libc_prf+0x6d6>
1c00c670:	1054                	addi	a3,sp,36
1c00c672:	45e5                	li	a1,25
1c00c674:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00c678:	f9f78793          	addi	a5,a5,-97
1c00c67c:	0ff7f793          	andi	a5,a5,255
1c00c680:	00f5e963          	bltu	a1,a5,1c00c692 <pos_libc_prf+0xd64>
1c00c684:	0016c783          	lbu	a5,1(a3)
1c00c688:	00e68023          	sb	a4,0(a3)
1c00c68c:	0685                	addi	a3,a3,1
1c00c68e:	f3fd                	bnez	a5,1c00c674 <pos_libc_prf+0xd46>
1c00c690:	ba95                	j	1c00c004 <pos_libc_prf+0x6d6>
1c00c692:	0016c783          	lbu	a5,1(a3)
1c00c696:	0685                	addi	a3,a3,1
1c00c698:	fff1                	bnez	a5,1c00c674 <pos_libc_prf+0xd46>
1c00c69a:	b2ad                	j	1c00c004 <pos_libc_prf+0x6d6>
1c00c69c:	0c800793          	li	a5,200
1c00c6a0:	df37d0e3          	bge	a5,s3,1c00c480 <pos_libc_prf+0xb52>
1c00c6a4:	547d                	li	s0,-1
1c00c6a6:	b02ff06f          	j	1c00b9a8 <pos_libc_prf+0x7a>
1c00c6aa:	864e                	mv	a2,s3
1c00c6ac:	1048                	addi	a0,sp,36
1c00c6ae:	fc5fe0ef          	jal	ra,1c00b672 <memcpy>
1c00c6b2:	b3f9                	j	1c00c480 <pos_libc_prf+0xb52>
1c00c6b4:	47f2                	lw	a5,28(sp)
1c00c6b6:	4601                	li	a2,0
1c00c6b8:	e399                	bnez	a5,1c00c6be <pos_libc_prf+0xd90>
1c00c6ba:	01503633          	snez	a2,s5
1c00c6be:	57f5                	li	a5,-3
1c00c6c0:	001a8813          	addi	a6,s5,1
1c00c6c4:	00f34463          	blt	t1,a5,1c00c6cc <pos_libc_prf+0xd9e>
1c00c6c8:	04685163          	bge	a6,t1,1c00c70a <pos_libc_prf+0xddc>
1c00c6cc:	47c1                	li	a5,16
1c00c6ce:	0107d363          	bge	a5,a6,1c00c6d4 <pos_libc_prf+0xda6>
1c00c6d2:	4841                	li	a6,16
1c00c6d4:	06700793          	li	a5,103
1c00c6d8:	187d                	addi	a6,a6,-1
1c00c6da:	02fd8363          	beq	s11,a5,1c00c700 <pos_libc_prf+0xdd2>
1c00c6de:	04500d93          	li	s11,69
1c00c6e2:	d70ff06f          	j	1c00bc52 <pos_libc_prf+0x324>
1c00c6e6:	4a99                	li	s5,6
1c00c6e8:	d4fd9563          	bne	s11,a5,1c00bc32 <pos_libc_prf+0x304>
1c00c6ec:	4772                	lw	a4,28(sp)
1c00c6ee:	4605                	li	a2,1
1c00c6f0:	57f5                	li	a5,-3
1c00c6f2:	8e19                	sub	a2,a2,a4
1c00c6f4:	00f34563          	blt	t1,a5,1c00c6fe <pos_libc_prf+0xdd0>
1c00c6f8:	479d                	li	a5,7
1c00c6fa:	0067d863          	bge	a5,t1,1c00c70a <pos_libc_prf+0xddc>
1c00c6fe:	4819                	li	a6,6
1c00c700:	06500d93          	li	s11,101
1c00c704:	d4eff06f          	j	1c00bc52 <pos_libc_prf+0x324>
1c00c708:	4601                	li	a2,0
1c00c70a:	006a8833          	add	a6,s5,t1
1c00c70e:	0b005b63          	blez	a6,1c00c7c4 <pos_libc_prf+0xe96>
1c00c712:	47c1                	li	a5,16
1c00c714:	0107d363          	bge	a5,a6,1c00c71a <pos_libc_prf+0xdec>
1c00c718:	4841                	li	a6,16
1c00c71a:	187d                	addi	a6,a6,-1
1c00c71c:	06600d93          	li	s11,102
1c00c720:	d32ff06f          	j	1c00bc52 <pos_libc_prf+0x324>
1c00c724:	4792                	lw	a5,4(sp)
1c00c726:	1054                	addi	a3,sp,36
1c00c728:	c40780e3          	beqz	a5,1c00c368 <pos_libc_prf+0xa3a>
1c00c72c:	02000793          	li	a5,32
1c00c730:	02f10223          	sb	a5,36(sp)
1c00c734:	02510693          	addi	a3,sp,37
1c00c738:	b905                	j	1c00c368 <pos_libc_prf+0xa3a>
1c00c73a:	ffc80fa3          	sb	t3,-1(a6)
1c00c73e:	b30986e3          	beq	s3,a6,1c00c26a <pos_libc_prf+0x93c>
1c00c742:	0805                	addi	a6,a6,1
1c00c744:	b4d5                	j	1c00c228 <pos_libc_prf+0x8fa>
1c00c746:	ffe80fa3          	sb	t5,-1(a6)
1c00c74a:	0305                	addi	t1,t1,1
1c00c74c:	b679                	j	1c00c2da <pos_libc_prf+0x9ac>
1c00c74e:	020102a3          	sb	zero,37(sp)
1c00c752:	57fd                	li	a5,-1
1c00c754:	0cfa8263          	beq	s5,a5,1c00c818 <pos_libc_prf+0xeea>
1c00c758:	4785                	li	a5,1
1c00c75a:	0b47c063          	blt	a5,s4,1c00c7fa <pos_libc_prf+0xecc>
1c00c75e:	4a72                	lw	s4,28(sp)
1c00c760:	c65a                	sw	s6,12(sp)
1c00c762:	bcad                	j	1c00c1dc <pos_libc_prf+0x8ae>
1c00c764:	8636                	mv	a2,a3
1c00c766:	b04ff06f          	j	1c00ba6a <pos_libc_prf+0x13c>
1c00c76a:	4712                	lw	a4,4(sp)
1c00c76c:	c77d                	beqz	a4,1c00c85a <pos_libc_prf+0xf2c>
1c00c76e:	02000693          	li	a3,32
1c00c772:	02d10223          	sb	a3,36(sp)
1c00c776:	4301                	li	t1,0
1c00c778:	4801                	li	a6,0
1c00c77a:	02510f13          	addi	t5,sp,37
1c00c77e:	c82ff06f          	j	1c00bc00 <pos_libc_prf+0x2d2>
1c00c782:	02d00693          	li	a3,45
1c00c786:	02d10223          	sb	a3,36(sp)
1c00c78a:	02510f13          	addi	t5,sp,37
1c00c78e:	b9cff06f          	j	1c00bb2a <pos_libc_prf+0x1fc>
1c00c792:	0c800613          	li	a2,200
1c00c796:	960ad6e3          	bgez	s5,1c00c102 <pos_libc_prf+0x7d4>
1c00c79a:	bf09                	j	1c00c6ac <pos_libc_prf+0xd7e>
1c00c79c:	80000637          	lui	a2,0x80000
1c00c7a0:	02510693          	addi	a3,sp,37
1c00c7a4:	b6d1                	j	1c00c368 <pos_libc_prf+0xa3a>
1c00c7a6:	ce02                	sw	zero,28(sp)
1c00c7a8:	bb5d                	j	1c00c55e <pos_libc_prf+0xc30>
1c00c7aa:	4712                	lw	a4,4(sp)
1c00c7ac:	02410f13          	addi	t5,sp,36
1c00c7b0:	b6070d63          	beqz	a4,1c00bb2a <pos_libc_prf+0x1fc>
1c00c7b4:	02000693          	li	a3,32
1c00c7b8:	02d10223          	sb	a3,36(sp)
1c00c7bc:	02510f13          	addi	t5,sp,37
1c00c7c0:	b6aff06f          	j	1c00bb2a <pos_libc_prf+0x1fc>
1c00c7c4:	06600d93          	li	s11,102
1c00c7c8:	4781                	li	a5,0
1c00c7ca:	080006b7          	lui	a3,0x8000
1c00c7ce:	ce8ff06f          	j	1c00bcb6 <pos_libc_prf+0x388>
1c00c7d2:	06b6e363          	bltu	a3,a1,1c00c838 <pos_libc_prf+0xf0a>
1c00c7d6:	04e00693          	li	a3,78
1c00c7da:	04100613          	li	a2,65
1c00c7de:	00d78023          	sb	a3,0(a5)
1c00c7e2:	00c780a3          	sb	a2,1(a5)
1c00c7e6:	00d78123          	sb	a3,2(a5)
1c00c7ea:	f44ff06f          	j	1c00bf2e <pos_libc_prf+0x600>
1c00c7ee:	03000693          	li	a3,48
1c00c7f2:	00df0023          	sb	a3,0(t5)
1c00c7f6:	4541                	li	a0,16
1c00c7f8:	bc95                	j	1c00c26c <pos_libc_prf+0x93e>
1c00c7fa:	4982                	lw	s3,0(sp)
1c00c7fc:	860992e3          	bnez	s3,1c00c060 <pos_libc_prf+0x732>
1c00c800:	104c                	addi	a1,sp,36
1c00c802:	fffa0993          	addi	s3,s4,-1
1c00c806:	4609                	li	a2,2
1c00c808:	01358533          	add	a0,a1,s3
1c00c80c:	f3dfe0ef          	jal	ra,1c00b748 <memmove>
1c00c810:	02000913          	li	s2,32
1c00c814:	ce02                	sw	zero,28(sp)
1c00c816:	b3b9                	j	1c00c564 <pos_libc_prf+0xc36>
1c00c818:	49f2                	lw	s3,28(sp)
1c00c81a:	b19d                	j	1c00c480 <pos_libc_prf+0xb52>
1c00c81c:	06900693          	li	a3,105
1c00c820:	00d78023          	sb	a3,0(a5)
1c00c824:	06e00693          	li	a3,110
1c00c828:	00d780a3          	sb	a3,1(a5)
1c00c82c:	06600693          	li	a3,102
1c00c830:	00d78123          	sb	a3,2(a5)
1c00c834:	efaff06f          	j	1c00bf2e <pos_libc_prf+0x600>
1c00c838:	06e00693          	li	a3,110
1c00c83c:	06100613          	li	a2,97
1c00c840:	00d78023          	sb	a3,0(a5)
1c00c844:	00c780a3          	sb	a2,1(a5)
1c00c848:	00d78123          	sb	a3,2(a5)
1c00c84c:	ee2ff06f          	j	1c00bf2e <pos_libc_prf+0x600>
1c00c850:	89f6                	mv	s3,t4
1c00c852:	a8061ae3          	bnez	a2,1c00c2e6 <pos_libc_prf+0x9b8>
1c00c856:	da8ff06f          	j	1c00bdfe <pos_libc_prf+0x4d0>
1c00c85a:	4301                	li	t1,0
1c00c85c:	4801                	li	a6,0
1c00c85e:	02410f13          	addi	t5,sp,36
1c00c862:	b9eff06f          	j	1c00bc00 <pos_libc_prf+0x2d2>

1c00c866 <pos_init_start>:
1c00c866:	1141                	addi	sp,sp,-16
1c00c868:	c422                	sw	s0,8(sp)
1c00c86a:	1c000437          	lui	s0,0x1c000
1c00c86e:	c606                	sw	ra,12(sp)
1c00c870:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00c874:	9fbfc0ef          	jal	ra,1c00926e <pos_soc_init>
1c00c878:	2a75                	jal	1c00ca34 <pos_irq_init>
1c00c87a:	22e5                	jal	1c00ca62 <pos_soc_event_init>
1c00c87c:	2225                	jal	1c00c9a4 <pos_allocs_init>
1c00c87e:	405c                	lw	a5,4(s0)
1c00c880:	c791                	beqz	a5,1c00c88c <pos_init_start+0x26>
1c00c882:	0411                	addi	s0,s0,4
1c00c884:	0411                	addi	s0,s0,4
1c00c886:	9782                	jalr	a5
1c00c888:	401c                	lw	a5,0(s0)
1c00c88a:	ffed                	bnez	a5,1c00c884 <pos_init_start+0x1e>
1c00c88c:	86cff0ef          	jal	ra,1c00b8f8 <pos_io_start>
1c00c890:	300467f3          	csrrsi	a5,mstatus,8
1c00c894:	40b2                	lw	ra,12(sp)
1c00c896:	4422                	lw	s0,8(sp)
1c00c898:	0141                	addi	sp,sp,16
1c00c89a:	8082                	ret

1c00c89c <pos_init_stop>:
1c00c89c:	1141                	addi	sp,sp,-16
1c00c89e:	c422                	sw	s0,8(sp)
1c00c8a0:	1c000437          	lui	s0,0x1c000
1c00c8a4:	c606                	sw	ra,12(sp)
1c00c8a6:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00c8aa:	852ff0ef          	jal	ra,1c00b8fc <pos_io_stop>
1c00c8ae:	405c                	lw	a5,4(s0)
1c00c8b0:	c791                	beqz	a5,1c00c8bc <pos_init_stop+0x20>
1c00c8b2:	0411                	addi	s0,s0,4
1c00c8b4:	0411                	addi	s0,s0,4
1c00c8b6:	9782                	jalr	a5
1c00c8b8:	401c                	lw	a5,0(s0)
1c00c8ba:	ffed                	bnez	a5,1c00c8b4 <pos_init_stop+0x18>
1c00c8bc:	40b2                	lw	ra,12(sp)
1c00c8be:	4422                	lw	s0,8(sp)
1c00c8c0:	0141                	addi	sp,sp,16
1c00c8c2:	8082                	ret

1c00c8c4 <pos_alloc_init>:
1c00c8c4:	00758793          	addi	a5,a1,7
1c00c8c8:	9be1                	andi	a5,a5,-8
1c00c8ca:	40b785b3          	sub	a1,a5,a1
1c00c8ce:	c11c                	sw	a5,0(a0)
1c00c8d0:	40b605b3          	sub	a1,a2,a1
1c00c8d4:	00b05663          	blez	a1,1c00c8e0 <pos_alloc_init+0x1c>
1c00c8d8:	99e1                	andi	a1,a1,-8
1c00c8da:	c38c                	sw	a1,0(a5)
1c00c8dc:	0007a223          	sw	zero,4(a5)
1c00c8e0:	8082                	ret

1c00c8e2 <pos_alloc>:
1c00c8e2:	411c                	lw	a5,0(a0)
1c00c8e4:	00758713          	addi	a4,a1,7
1c00c8e8:	862a                	mv	a2,a0
1c00c8ea:	ff877593          	andi	a1,a4,-8
1c00c8ee:	4681                	li	a3,0
1c00c8f0:	e789                	bnez	a5,1c00c8fa <pos_alloc+0x18>
1c00c8f2:	a091                	j	1c00c936 <pos_alloc+0x54>
1c00c8f4:	86be                	mv	a3,a5
1c00c8f6:	c505                	beqz	a0,1c00c91e <pos_alloc+0x3c>
1c00c8f8:	87aa                	mv	a5,a0
1c00c8fa:	4398                	lw	a4,0(a5)
1c00c8fc:	43c8                	lw	a0,4(a5)
1c00c8fe:	feb74be3          	blt	a4,a1,1c00c8f4 <pos_alloc+0x12>
1c00c902:	00b70f63          	beq	a4,a1,1c00c920 <pos_alloc+0x3e>
1c00c906:	00b78833          	add	a6,a5,a1
1c00c90a:	8f0d                	sub	a4,a4,a1
1c00c90c:	00e82023          	sw	a4,0(a6)
1c00c910:	00a82223          	sw	a0,4(a6)
1c00c914:	ca91                	beqz	a3,1c00c928 <pos_alloc+0x46>
1c00c916:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00c91a:	853e                	mv	a0,a5
1c00c91c:	8082                	ret
1c00c91e:	8082                	ret
1c00c920:	ca81                	beqz	a3,1c00c930 <pos_alloc+0x4e>
1c00c922:	c2c8                	sw	a0,4(a3)
1c00c924:	853e                	mv	a0,a5
1c00c926:	8082                	ret
1c00c928:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00c92c:	853e                	mv	a0,a5
1c00c92e:	8082                	ret
1c00c930:	c208                	sw	a0,0(a2)
1c00c932:	853e                	mv	a0,a5
1c00c934:	8082                	ret
1c00c936:	4501                	li	a0,0
1c00c938:	8082                	ret

1c00c93a <pos_free>:
1c00c93a:	411c                	lw	a5,0(a0)
1c00c93c:	061d                	addi	a2,a2,7
1c00c93e:	9a61                	andi	a2,a2,-8
1c00c940:	c7a1                	beqz	a5,1c00c988 <pos_free+0x4e>
1c00c942:	00b7e563          	bltu	a5,a1,1c00c94c <pos_free+0x12>
1c00c946:	a089                	j	1c00c988 <pos_free+0x4e>
1c00c948:	00b7f563          	bgeu	a5,a1,1c00c952 <pos_free+0x18>
1c00c94c:	873e                	mv	a4,a5
1c00c94e:	43dc                	lw	a5,4(a5)
1c00c950:	ffe5                	bnez	a5,1c00c948 <pos_free+0xe>
1c00c952:	00c586b3          	add	a3,a1,a2
1c00c956:	00d78b63          	beq	a5,a3,1c00c96c <pos_free+0x32>
1c00c95a:	c190                	sw	a2,0(a1)
1c00c95c:	4314                	lw	a3,0(a4)
1c00c95e:	c1dc                	sw	a5,4(a1)
1c00c960:	00d70533          	add	a0,a4,a3
1c00c964:	00a58e63          	beq	a1,a0,1c00c980 <pos_free+0x46>
1c00c968:	c34c                	sw	a1,4(a4)
1c00c96a:	8082                	ret
1c00c96c:	4394                	lw	a3,0(a5)
1c00c96e:	43dc                	lw	a5,4(a5)
1c00c970:	9636                	add	a2,a2,a3
1c00c972:	c190                	sw	a2,0(a1)
1c00c974:	4314                	lw	a3,0(a4)
1c00c976:	c1dc                	sw	a5,4(a1)
1c00c978:	00d70533          	add	a0,a4,a3
1c00c97c:	fea596e3          	bne	a1,a0,1c00c968 <pos_free+0x2e>
1c00c980:	9636                	add	a2,a2,a3
1c00c982:	c310                	sw	a2,0(a4)
1c00c984:	c35c                	sw	a5,4(a4)
1c00c986:	8082                	ret
1c00c988:	00c58733          	add	a4,a1,a2
1c00c98c:	00e78663          	beq	a5,a4,1c00c998 <pos_free+0x5e>
1c00c990:	c1dc                	sw	a5,4(a1)
1c00c992:	c190                	sw	a2,0(a1)
1c00c994:	c10c                	sw	a1,0(a0)
1c00c996:	8082                	ret
1c00c998:	4398                	lw	a4,0(a5)
1c00c99a:	43dc                	lw	a5,4(a5)
1c00c99c:	963a                	add	a2,a2,a4
1c00c99e:	c1dc                	sw	a5,4(a1)
1c00c9a0:	c190                	sw	a2,0(a1)
1c00c9a2:	bfcd                	j	1c00c994 <pos_free+0x5a>

1c00c9a4 <pos_allocs_init>:
1c00c9a4:	1c0065b7          	lui	a1,0x1c006
1c00c9a8:	1141                	addi	sp,sp,-16
1c00c9aa:	1a458613          	addi	a2,a1,420 # 1c0061a4 <__l2_priv0_end>
1c00c9ae:	1c0087b7          	lui	a5,0x1c008
1c00c9b2:	c606                	sw	ra,12(sp)
1c00c9b4:	1a458593          	addi	a1,a1,420
1c00c9b8:	40c78633          	sub	a2,a5,a2
1c00c9bc:	04f5d863          	bge	a1,a5,1c00ca0c <pos_allocs_init+0x68>
1c00c9c0:	1c006537          	lui	a0,0x1c006
1c00c9c4:	19850513          	addi	a0,a0,408 # 1c006198 <pos_alloc_l2>
1c00c9c8:	3df5                	jal	1c00c8c4 <pos_alloc_init>
1c00c9ca:	1c00d5b7          	lui	a1,0x1c00d
1c00c9ce:	a7c58613          	addi	a2,a1,-1412 # 1c00ca7c <__l2_priv1_end>
1c00c9d2:	1c0107b7          	lui	a5,0x1c010
1c00c9d6:	a7c58593          	addi	a1,a1,-1412
1c00c9da:	40c78633          	sub	a2,a5,a2
1c00c9de:	02f5da63          	bge	a1,a5,1c00ca12 <pos_allocs_init+0x6e>
1c00c9e2:	1c006537          	lui	a0,0x1c006
1c00c9e6:	19c50513          	addi	a0,a0,412 # 1c00619c <pos_alloc_l2+0x4>
1c00c9ea:	3de9                	jal	1c00c8c4 <pos_alloc_init>
1c00c9ec:	40b2                	lw	ra,12(sp)
1c00c9ee:	1c0105b7          	lui	a1,0x1c010
1c00c9f2:	00058793          	mv	a5,a1
1c00c9f6:	1c080637          	lui	a2,0x1c080
1c00c9fa:	1c006537          	lui	a0,0x1c006
1c00c9fe:	8e1d                	sub	a2,a2,a5
1c00ca00:	00058593          	mv	a1,a1
1c00ca04:	1a050513          	addi	a0,a0,416 # 1c0061a0 <pos_alloc_l2+0x8>
1c00ca08:	0141                	addi	sp,sp,16
1c00ca0a:	bd6d                	j	1c00c8c4 <pos_alloc_init>
1c00ca0c:	4581                	li	a1,0
1c00ca0e:	4601                	li	a2,0
1c00ca10:	bf45                	j	1c00c9c0 <pos_allocs_init+0x1c>
1c00ca12:	4581                	li	a1,0
1c00ca14:	4601                	li	a2,0
1c00ca16:	b7f1                	j	1c00c9e2 <pos_allocs_init+0x3e>

1c00ca18 <pi_l2_malloc>:
1c00ca18:	85aa                	mv	a1,a0
1c00ca1a:	1c006537          	lui	a0,0x1c006
1c00ca1e:	19850513          	addi	a0,a0,408 # 1c006198 <pos_alloc_l2>
1c00ca22:	b5c1                	j	1c00c8e2 <pos_alloc>

1c00ca24 <pi_l2_free>:
1c00ca24:	862e                	mv	a2,a1
1c00ca26:	85aa                	mv	a1,a0
1c00ca28:	1c006537          	lui	a0,0x1c006
1c00ca2c:	19850513          	addi	a0,a0,408 # 1c006198 <pos_alloc_l2>
1c00ca30:	b729                	j	1c00c93a <pos_free>

1c00ca32 <__rt_handle_illegal_instr>:
1c00ca32:	8082                	ret

1c00ca34 <pos_irq_init>:
1c00ca34:	1a10a737          	lui	a4,0x1a10a
1c00ca38:	56fd                	li	a3,-1
1c00ca3a:	f14027f3          	csrr	a5,mhartid
1c00ca3e:	8795                	srai	a5,a5,0x5
1c00ca40:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00ca44:	03f7f793          	andi	a5,a5,63
1c00ca48:	477d                	li	a4,31
1c00ca4a:	00e78363          	beq	a5,a4,1c00ca50 <pos_irq_init+0x1c>
1c00ca4e:	8082                	ret
1c00ca50:	1c0087b7          	lui	a5,0x1c008
1c00ca54:	00078793          	mv	a5,a5
1c00ca58:	0017e793          	ori	a5,a5,1
1c00ca5c:	30579073          	csrw	mtvec,a5
1c00ca60:	8082                	ret

1c00ca62 <pos_soc_event_init>:
1c00ca62:	1a1067b7          	lui	a5,0x1a106
1c00ca66:	577d                	li	a4,-1
1c00ca68:	c3d8                	sw	a4,4(a5)
1c00ca6a:	c798                	sw	a4,8(a5)
1c00ca6c:	c7d8                	sw	a4,12(a5)
1c00ca6e:	cb98                	sw	a4,16(a5)
1c00ca70:	cbd8                	sw	a4,20(a5)
1c00ca72:	cf98                	sw	a4,24(a5)
1c00ca74:	cfd8                	sw	a4,28(a5)
1c00ca76:	d398                	sw	a4,32(a5)
1c00ca78:	8082                	ret

1c00ca7a <_endtext>:
	...
