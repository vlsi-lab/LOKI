#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "../api.h"
#include "../randombytes.h"

static void printbytes(const uint8_t *x, size_t xlen) {
    size_t i;
    for (i = 0; i < xlen; i++) {
        printf("%02x", x[i]);
    }
    printf("\n");
    }


int main(void) {

    uint8_t key_b[PQCLEAN_KYBER768_CLEAN_CRYPTO_BYTES];
    uint8_t sendb[PQCLEAN_KYBER768_CLEAN_CRYPTO_CIPHERTEXTBYTES];
    uint8_t pk[PQCLEAN_KYBER768_CLEAN_CRYPTO_PUBLICKEYBYTES];
    int j;

	
	pk[0] = 0x38;
	pk[1] = 0xd4;
	pk[2] = 0x85;
	pk[3] = 0x1e;
	pk[4] = 0x5c;
	pk[5] = 0x01;
	pk[6] = 0x0d;
	pk[7] = 0xa3;
	pk[8] = 0x9a;
	pk[9] = 0x74;
	pk[10] = 0x70;
	pk[11] = 0xbc;
	pk[12] = 0x1c;
	pk[13] = 0x80;
	pk[14] = 0x91;
	pk[15] = 0x6f;
	pk[16] = 0x78;
	pk[17] = 0xc7;
	pk[18] = 0xbd;
	pk[19] = 0x58;
	pk[20] = 0x91;
	pk[21] = 0xdc;
	pk[22] = 0xd3;
	pk[23] = 0xb1;
	pk[24] = 0xea;
	pk[25] = 0x84;
	pk[26] = 0xb6;
	pk[27] = 0xf0;
	pk[28] = 0x51;
	pk[29] = 0xb3;
	pk[30] = 0x46;
	pk[31] = 0xb8;
	pk[32] = 0x03;
	pk[33] = 0xc1;
	pk[34] = 0xb9;
	pk[35] = 0x7c;
	pk[36] = 0x94;
	pk[37] = 0x60;
	pk[38] = 0x40;
	pk[39] = 0x20;
	pk[40] = 0xb7;
	pk[41] = 0x27;
	pk[42] = 0x9b;
	pk[43] = 0x27;
	pk[44] = 0x83;
	pk[45] = 0x6c;
	pk[46] = 0x30;
	pk[47] = 0x49;
	pk[48] = 0xea;
	pk[49] = 0x0b;
	pk[50] = 0x9a;
	pk[51] = 0x37;
	pk[52] = 0x58;
	pk[53] = 0x51;
	pk[54] = 0x0b;
	pk[55] = 0x75;
	pk[56] = 0x59;
	pk[57] = 0x59;
	pk[58] = 0x32;
	pk[59] = 0x37;
	pk[60] = 0xad;
	pk[61] = 0xe7;
	pk[62] = 0x25;
	pk[63] = 0x87;
	pk[64] = 0x46;
	pk[65] = 0x22;
	pk[66] = 0x06;
	pk[67] = 0xb7;
	pk[68] = 0x09;
	pk[69] = 0xf3;
	pk[70] = 0x65;
	pk[71] = 0x84;
	pk[72] = 0x8c;
	pk[73] = 0x96;
	pk[74] = 0x55;
	pk[75] = 0x93;
	pk[76] = 0x26;
	pk[77] = 0xa5;
	pk[78] = 0xfe;
	pk[79] = 0x6c;
	pk[80] = 0x6f;
	pk[81] = 0x4c;
	pk[82] = 0xf5;
	pk[83] = 0x31;
	pk[84] = 0xfd;
	pk[85] = 0x1a;
	pk[86] = 0x18;
	pk[87] = 0x47;
	pk[88] = 0x72;
	pk[89] = 0x67;
	pk[90] = 0xf6;
	pk[91] = 0x6b;
	pk[92] = 0xa1;
	pk[93] = 0x4a;
	pk[94] = 0xf2;
	pk[95] = 0x01;
	pk[96] = 0x63;
	pk[97] = 0xc4;
	pk[98] = 0x1f;
	pk[99] = 0x11;
	pk[100] = 0x38;
	pk[101] = 0xa0;
	pk[102] = 0x19;
	pk[103] = 0x95;
	pk[104] = 0x14;
	pk[105] = 0x7f;
	pk[106] = 0x27;
	pk[107] = 0x1d;
	pk[108] = 0xdf;
	pk[109] = 0xc2;
	pk[110] = 0xbe;
	pk[111] = 0x53;
	pk[112] = 0x61;
	pk[113] = 0xb2;
	pk[114] = 0x81;
	pk[115] = 0xe6;
	pk[116] = 0x02;
	pk[117] = 0x9d;
	pk[118] = 0x21;
	pk[119] = 0x05;
	pk[120] = 0x84;
	pk[121] = 0xb2;
	pk[122] = 0x85;
	pk[123] = 0x9b;
	pk[124] = 0x73;
	pk[125] = 0x83;
	pk[126] = 0x66;
	pk[127] = 0x72;
	pk[128] = 0x84;
	pk[129] = 0xf7;
	pk[130] = 0x67;
	pk[131] = 0xbb;
	pk[132] = 0x32;
	pk[133] = 0x78;
	pk[134] = 0x2b;
	pk[135] = 0xaa;
	pk[136] = 0xd1;
	pk[137] = 0x09;
	pk[138] = 0x33;
	pk[139] = 0xda;
	pk[140] = 0x01;
	pk[141] = 0x38;
	pk[142] = 0xa3;
	pk[143] = 0xa0;
	pk[144] = 0x66;
	pk[145] = 0x0a;
	pk[146] = 0x14;
	pk[147] = 0x95;
	pk[148] = 0x31;
	pk[149] = 0xc0;
	pk[150] = 0x3f;
	pk[151] = 0x9c;
	pk[152] = 0x8f;
	pk[153] = 0xfc;
	pk[154] = 0xcb;
	pk[155] = 0x33;
	pk[156] = 0xe3;
	pk[157] = 0xc3;
	pk[158] = 0xa5;
	pk[159] = 0xa7;
	pk[160] = 0x98;
	pk[161] = 0x4e;
	pk[162] = 0x21;
	pk[163] = 0xfa;
	pk[164] = 0xb2;
	pk[165] = 0x6a;
	pk[166] = 0xa7;
	pk[167] = 0x2a;
	pk[168] = 0x8a;
	pk[169] = 0x6b;
	pk[170] = 0x94;
	pk[171] = 0x2f;
	pk[172] = 0x26;
	pk[173] = 0x5e;
	pk[174] = 0x52;
	pk[175] = 0x55;
	pk[176] = 0x1a;
	pk[177] = 0x9c;
	pk[178] = 0x80;
	pk[179] = 0x0e;
	pk[180] = 0x5a;
	pk[181] = 0x44;
	pk[182] = 0x80;
	pk[183] = 0x5f;
	pk[184] = 0x0c;
	pk[185] = 0x01;
	pk[186] = 0x41;
	pk[187] = 0xa0;
	pk[188] = 0x55;
	pk[189] = 0x54;
	pk[190] = 0x21;
	pk[191] = 0x33;
	pk[192] = 0x87;
	pk[193] = 0xf1;
	pk[194] = 0x05;
	pk[195] = 0xdf;
	pk[196] = 0x56;
	pk[197] = 0x45;
	pk[198] = 0x84;
	pk[199] = 0x96;
	pk[200] = 0xbd;
	pk[201] = 0x8f;
	pk[202] = 0x46;
	pk[203] = 0x90;
	pk[204] = 0x51;
	pk[205] = 0x88;
	pk[206] = 0x6d;
	pk[207] = 0xa2;
	pk[208] = 0x23;
	pk[209] = 0xcb;
	pk[210] = 0x9f;
	pk[211] = 0xe7;
	pk[212] = 0x8e;
	pk[213] = 0x7b;
	pk[214] = 0x39;
	pk[215] = 0x0b;
	pk[216] = 0xf9;
	pk[217] = 0x4b;
	pk[218] = 0x0a;
	pk[219] = 0x93;
	pk[220] = 0x76;
	pk[221] = 0x91;
	pk[222] = 0xaf;
	pk[223] = 0x95;
	pk[224] = 0x50;
	pk[225] = 0x08;
	pk[226] = 0x2b;
	pk[227] = 0x76;
	pk[228] = 0xd0;
	pk[229] = 0x45;
	pk[230] = 0xcb;
	pk[231] = 0x4d;
	pk[232] = 0x29;
	pk[233] = 0xc2;
	pk[234] = 0x3c;
	pk[235] = 0x67;
	pk[236] = 0x94;
	pk[237] = 0x26;
	pk[238] = 0x08;
	pk[239] = 0xd0;
	pk[240] = 0x78;
	pk[241] = 0xa1;
	pk[242] = 0xc8;
	pk[243] = 0x0f;
	pk[244] = 0x24;
	pk[245] = 0x76;
	pk[246] = 0x7a;
	pk[247] = 0x94;
	pk[248] = 0x5d;
	pk[249] = 0x19;
	pk[250] = 0xf0;
	pk[251] = 0x77;
	pk[252] = 0xd8;
	pk[253] = 0x2c;
	pk[254] = 0x9b;
	pk[255] = 0x9b;
	pk[256] = 0x19;
	pk[257] = 0x70;
	pk[258] = 0x73;
	pk[259] = 0x46;
	pk[260] = 0x4a;
	pk[261] = 0xbe;
	pk[262] = 0x69;
	pk[263] = 0xcf;
	pk[264] = 0x7c;
	pk[265] = 0x56;
	pk[266] = 0x26;
	pk[267] = 0x17;
	pk[268] = 0x73;
	pk[269] = 0x08;
	pk[270] = 0xf3;
	pk[271] = 0x84;
	pk[272] = 0x67;
	pk[273] = 0x2d;
	pk[274] = 0x52;
	pk[275] = 0x63;
	pk[276] = 0xb0;
	pk[277] = 0xc4;
	pk[278] = 0x82;
	pk[279] = 0x6d;
	pk[280] = 0xb4;
	pk[281] = 0x47;
	pk[282] = 0x0e;
	pk[283] = 0x1a;
	pk[284] = 0x70;
	pk[285] = 0xe4;
	pk[286] = 0x75;
	pk[287] = 0x1e;
	pk[288] = 0x39;
	pk[289] = 0x18;
	pk[290] = 0xab;
	pk[291] = 0xe8;
	pk[292] = 0xfc;
	pk[293] = 0xbc;
	pk[294] = 0x3b;
	pk[295] = 0xc0;
	pk[296] = 0x53;
	pk[297] = 0x1a;
	pk[298] = 0xe8;
	pk[299] = 0x9e;
	pk[300] = 0x55;
	pk[301] = 0x12;
	pk[302] = 0x21;
	pk[303] = 0x4b;
	pk[304] = 0x5c;
	pk[305] = 0xc9;
	pk[306] = 0x4a;
	pk[307] = 0x16;
	pk[308] = 0xa0;
	pk[309] = 0x14;
	pk[310] = 0xbc;
	pk[311] = 0xb3;
	pk[312] = 0x82;
	pk[313] = 0x6c;
	pk[314] = 0x79;
	pk[315] = 0xfb;
	pk[316] = 0xf4;
	pk[317] = 0xad;
	pk[318] = 0xd0;
	pk[319] = 0x82;
	pk[320] = 0x5e;
	pk[321] = 0xee;
	pk[322] = 0xfb;
	pk[323] = 0xab;
	pk[324] = 0x88;
	pk[325] = 0xcb;
	pk[326] = 0x7c;
	pk[327] = 0xff;
	pk[328] = 0x37;
	pk[329] = 0xbb;
	pk[330] = 0x8d;
	pk[331] = 0x49;
	pk[332] = 0x1f;
	pk[333] = 0x8d;
	pk[334] = 0xe9;
	pk[335] = 0x02;
	pk[336] = 0x57;
	pk[337] = 0x8a;
	pk[338] = 0x1e;
	pk[339] = 0x96;
	pk[340] = 0x16;
	pk[341] = 0x55;
	pk[342] = 0x56;
	pk[343] = 0x5b;
	pk[344] = 0x77;
	pk[345] = 0x18;
	pk[346] = 0x78;
	pk[347] = 0x2a;
	pk[348] = 0x23;
	pk[349] = 0x50;
	pk[350] = 0x4f;
	pk[351] = 0xdc;
	pk[352] = 0x13;
	pk[353] = 0xc7;
	pk[354] = 0x83;
	pk[355] = 0xf1;
	pk[356] = 0x30;
	pk[357] = 0xe1;
	pk[358] = 0x77;
	pk[359] = 0x92;
	pk[360] = 0x5e;
	pk[361] = 0x30;
	pk[362] = 0x5d;
	pk[363] = 0x1f;
	pk[364] = 0xbc;
	pk[365] = 0x63;
	pk[366] = 0xcc;
	pk[367] = 0x8c;
	pk[368] = 0x15;
	pk[369] = 0xc2;
	pk[370] = 0xc6;
	pk[371] = 0x7f;
	pk[372] = 0x85;
	pk[373] = 0x50;
	pk[374] = 0x0c;
	pk[375] = 0xca;
	pk[376] = 0x78;
	pk[377] = 0x5d;
	pk[378] = 0xe9;
	pk[379] = 0xf4;
	pk[380] = 0x80;
	pk[381] = 0x49;
	pk[382] = 0x05;
	pk[383] = 0x58;
	pk[384] = 0xef;
	pk[385] = 0x71;
	pk[386] = 0xaa;
	pk[387] = 0xf0;
	pk[388] = 0xfb;
	pk[389] = 0x5b;
	pk[390] = 0x51;
	pk[391] = 0x39;
	pk[392] = 0x14;
	pk[393] = 0x40;
	pk[394] = 0x12;
	pk[395] = 0x69;
	pk[396] = 0xb3;
	pk[397] = 0x09;
	pk[398] = 0xc4;
	pk[399] = 0xc5;
	pk[400] = 0x9c;
	pk[401] = 0x64;
	pk[402] = 0xd2;
	pk[403] = 0xa7;
	pk[404] = 0x57;
	pk[405] = 0xd8;
	pk[406] = 0x85;
	pk[407] = 0x5f;
	pk[408] = 0x58;
	pk[409] = 0x46;
	pk[410] = 0x56;
	pk[411] = 0x15;
	pk[412] = 0x92;
	pk[413] = 0x5f;
	pk[414] = 0x1e;
	pk[415] = 0xa6;
	pk[416] = 0x81;
	pk[417] = 0x2c;
	pk[418] = 0xb1;
	pk[419] = 0x43;
	pk[420] = 0xff;
	pk[421] = 0xf3;
	pk[422] = 0x83;
	pk[423] = 0xe1;
	pk[424] = 0x04;
	pk[425] = 0x8e;
	pk[426] = 0x28;
	pk[427] = 0x51;
	pk[428] = 0x18;
	pk[429] = 0xbf;
	pk[430] = 0x93;
	pk[431] = 0x29;
	pk[432] = 0x44;
	pk[433] = 0xb8;
	pk[434] = 0x6f;
	pk[435] = 0xbd;
	pk[436] = 0xf4;
	pk[437] = 0xb1;
	pk[438] = 0xb9;
	pk[439] = 0xe6;
	pk[440] = 0x56;
	pk[441] = 0x85;
	pk[442] = 0x66;
	pk[443] = 0x4a;
	pk[444] = 0x07;
	pk[445] = 0x77;
	pk[446] = 0x5c;
	pk[447] = 0x46;
	pk[448] = 0x95;
	pk[449] = 0x2a;
	pk[450] = 0xaa;
	pk[451] = 0xda;
	pk[452] = 0x11;
	pk[453] = 0x68;
	pk[454] = 0xf5;
	pk[455] = 0x4b;
	pk[456] = 0x47;
	pk[457] = 0xc7;
	pk[458] = 0xa2;
	pk[459] = 0x31;
	pk[460] = 0xe7;
	pk[461] = 0x35;
	pk[462] = 0x5c;
	pk[463] = 0x64;
	pk[464] = 0x63;
	pk[465] = 0x74;
	pk[466] = 0x67;
	pk[467] = 0xb5;
	pk[468] = 0xa3;
	pk[469] = 0xc0;
	pk[470] = 0x9c;
	pk[471] = 0xab;
	pk[472] = 0x67;
	pk[473] = 0xbb;
	pk[474] = 0x35;
	pk[475] = 0xf5;
	pk[476] = 0x86;
	pk[477] = 0x40;
	pk[478] = 0xc2;
	pk[479] = 0x72;
	pk[480] = 0x62;
	pk[481] = 0x83;
	pk[482] = 0xbb;
	pk[483] = 0x63;
	pk[484] = 0x53;
	pk[485] = 0x0a;
	pk[486] = 0x15;
	pk[487] = 0xf6;
	pk[488] = 0x6e;
	pk[489] = 0xca;
	pk[490] = 0x48;
	pk[491] = 0xa8;
	pk[492] = 0x40;
	pk[493] = 0xc0;
	pk[494] = 0x0c;
	pk[495] = 0xa8;
	pk[496] = 0x86;
	pk[497] = 0x2e;
	pk[498] = 0x28;
	pk[499] = 0x3c;
	pk[500] = 0x73;
	pk[501] = 0xbf;
	pk[502] = 0xbb;
	pk[503] = 0x41;
	pk[504] = 0x3a;
	pk[505] = 0x29;
	pk[506] = 0x15;
	pk[507] = 0xb8;
	pk[508] = 0xd1;
	pk[509] = 0x15;
	pk[510] = 0x9a;
	pk[511] = 0x04;
	pk[512] = 0x3f;
	pk[513] = 0x12;
	pk[514] = 0xc5;
	pk[515] = 0x9b;
	pk[516] = 0xfa;
	pk[517] = 0x82;
	pk[518] = 0x82;
	pk[519] = 0x48;
	pk[520] = 0x24;
	pk[521] = 0x9b;
	pk[522] = 0x76;
	pk[523] = 0x10;
	pk[524] = 0x6f;
	pk[525] = 0xaa;
	pk[526] = 0x61;
	pk[527] = 0xa1;
	pk[528] = 0x27;
	pk[529] = 0xa0;
	pk[530] = 0x28;
	pk[531] = 0x0c;
	pk[532] = 0x58;
	pk[533] = 0x63;
	pk[534] = 0x50;
	pk[535] = 0xe7;
	pk[536] = 0xa4;
	pk[537] = 0x2c;
	pk[538] = 0xb7;
	pk[539] = 0x4c;
	pk[540] = 0xa4;
	pk[541] = 0x9c;
	pk[542] = 0xab;
	pk[543] = 0xd6;
	pk[544] = 0x06;
	pk[545] = 0x89;
	pk[546] = 0x1e;
	pk[547] = 0xc7;
	pk[548] = 0xcb;
	pk[549] = 0x8e;
	pk[550] = 0x84;
	pk[551] = 0xaf;
	pk[552] = 0xfe;
	pk[553] = 0x4b;
	pk[554] = 0x2e;
	pk[555] = 0x14;
	pk[556] = 0xc7;
	pk[557] = 0x16;
	pk[558] = 0x58;
	pk[559] = 0x33;
	pk[560] = 0x2b;
	pk[561] = 0x75;
	pk[562] = 0x56;
	pk[563] = 0x11;
	pk[564] = 0xba;
	pk[565] = 0xb7;
	pk[566] = 0x97;
	pk[567] = 0x7f;
	pk[568] = 0xa7;
	pk[569] = 0x6c;
	pk[570] = 0xe7;
	pk[571] = 0x36;
	pk[572] = 0xb2;
	pk[573] = 0x1e;
	pk[574] = 0xd3;
	pk[575] = 0x4a;
	pk[576] = 0x17;
	pk[577] = 0xac;
	pk[578] = 0x0e;
	pk[579] = 0xc3;
	pk[580] = 0x56;
	pk[581] = 0x1c;
	pk[582] = 0xa9;
	pk[583] = 0xb2;
	pk[584] = 0x82;
	pk[585] = 0xd4;
	pk[586] = 0xa2;
	pk[587] = 0xbc;
	pk[588] = 0x40;
	pk[589] = 0x76;
	pk[590] = 0x97;
	pk[591] = 0x92;
	pk[592] = 0x4b;
	pk[593] = 0x1c;
	pk[594] = 0xf9;
	pk[595] = 0x18;
	pk[596] = 0xba;
	pk[597] = 0x83;
	pk[598] = 0xd3;
	pk[599] = 0xa4;
	pk[600] = 0xfd;
	pk[601] = 0xc8;
	pk[602] = 0x25;
	pk[603] = 0x64;
	pk[604] = 0xc9;
	pk[605] = 0x5b;
	pk[606] = 0xd9;
	pk[607] = 0x04;
	pk[608] = 0xbd;
	pk[609] = 0xee;
	pk[610] = 0xe9;
	pk[611] = 0x1e;
	pk[612] = 0xd6;
	pk[613] = 0xcc;
	pk[614] = 0xb3;
	pk[615] = 0x6b;
	pk[616] = 0xaa;
	pk[617] = 0x88;
	pk[618] = 0xa0;
	pk[619] = 0x5c;
	pk[620] = 0x80;
	pk[621] = 0x71;
	pk[622] = 0x29;
	pk[623] = 0x01;
	pk[624] = 0xbf;
	pk[625] = 0x28;
	pk[626] = 0x0a;
	pk[627] = 0xee;
	pk[628] = 0x65;
	pk[629] = 0x38;
	pk[630] = 0xec;
	pk[631] = 0x20;
	pk[632] = 0x78;
	pk[633] = 0xc2;
	pk[634] = 0xa8;
	pk[635] = 0x4e;
	pk[636] = 0xe5;
	pk[637] = 0x86;
	pk[638] = 0x2f;
	pk[639] = 0xc1;
	pk[640] = 0x37;
	pk[641] = 0xcd;
	pk[642] = 0x92;
	pk[643] = 0xe9;
	pk[644] = 0x79;
	pk[645] = 0x68;
	pk[646] = 0xd6;
	pk[647] = 0x9f;
	pk[648] = 0xc3;
	pk[649] = 0x45;
	pk[650] = 0x3a;
	pk[651] = 0x1e;
	pk[652] = 0x1c;
	pk[653] = 0xb1;
	pk[654] = 0x61;
	pk[655] = 0xc5;
	pk[656] = 0x0c;
	pk[657] = 0x9f;
	pk[658] = 0x24;
	pk[659] = 0x73;
	pk[660] = 0xa0;
	pk[661] = 0xd0;
	pk[662] = 0x90;
	pk[663] = 0x37;
	pk[664] = 0xb1;
	pk[665] = 0x88;
	pk[666] = 0xa0;
	pk[667] = 0xfa;
	pk[668] = 0x01;
	pk[669] = 0xef;
	pk[670] = 0xc3;
	pk[671] = 0x44;
	pk[672] = 0xc2;
	pk[673] = 0xac;
	pk[674] = 0x8f;
	pk[675] = 0xe8;
	pk[676] = 0x59;
	pk[677] = 0x2b;
	pk[678] = 0x0a;
	pk[679] = 0x58;
	pk[680] = 0x45;
	pk[681] = 0x66;
	pk[682] = 0x62;
	pk[683] = 0xa9;
	pk[684] = 0x50;
	pk[685] = 0x33;
	pk[686] = 0x65;
	pk[687] = 0x9a;
	pk[688] = 0x15;
	pk[689] = 0x8a;
	pk[690] = 0x2d;
	pk[691] = 0x90;
	pk[692] = 0xa6;
	pk[693] = 0xe5;
	pk[694] = 0x0c;
	pk[695] = 0x25;
	pk[696] = 0x3a;
	pk[697] = 0x87;
	pk[698] = 0x97;
	pk[699] = 0x57;
	pk[700] = 0x85;
	pk[701] = 0xce;
	pk[702] = 0x29;
	pk[703] = 0xc4;
	pk[704] = 0x57;
	pk[705] = 0x00;
	pk[706] = 0x00;
	pk[707] = 0xa1;
	pk[708] = 0x54;
	pk[709] = 0xd4;
	pk[710] = 0xb3;
	pk[711] = 0xb2;
	pk[712] = 0xc6;
	pk[713] = 0x42;
	pk[714] = 0x20;
	pk[715] = 0x5c;
	pk[716] = 0x8c;
	pk[717] = 0x7c;
	pk[718] = 0xf9;
	pk[719] = 0xac;
	pk[720] = 0x6b;
	pk[721] = 0x10;
	pk[722] = 0x71;
	pk[723] = 0xfb;
	pk[724] = 0xb3;
	pk[725] = 0x68;
	pk[726] = 0xab;
	pk[727] = 0x95;
	pk[728] = 0x0a;
	pk[729] = 0x74;
	pk[730] = 0x4b;
	pk[731] = 0x88;
	pk[732] = 0xc9;
	pk[733] = 0x5b;
	pk[734] = 0xa5;
	pk[735] = 0x24;
	pk[736] = 0x30;
	pk[737] = 0x17;
	pk[738] = 0x83;
	pk[739] = 0x11;
	pk[740] = 0x20;
	pk[741] = 0xa9;
	pk[742] = 0x04;
	pk[743] = 0x83;
	pk[744] = 0x38;
	pk[745] = 0xd2;
	pk[746] = 0x98;
	pk[747] = 0x47;
	pk[748] = 0x83;
	pk[749] = 0x0d;
	pk[750] = 0x12;
	pk[751] = 0xa9;
	pk[752] = 0x33;
	pk[753] = 0xa0;
	pk[754] = 0x9a;
	pk[755] = 0xbd;
	pk[756] = 0x21;
	pk[757] = 0xa4;
	pk[758] = 0x6b;
	pk[759] = 0x82;
	pk[760] = 0x8c;
	pk[761] = 0xb1;
	pk[762] = 0x4e;
	pk[763] = 0x80;
	pk[764] = 0x8c;
	pk[765] = 0xd3;
	pk[766] = 0x51;
	pk[767] = 0x29;
	pk[768] = 0xc9;
	pk[769] = 0xdc;
	pk[770] = 0x6e;
	pk[771] = 0x5b;
	pk[772] = 0x93;
	pk[773] = 0x1d;
	pk[774] = 0x4a;
	pk[775] = 0x12;
	pk[776] = 0x6f;
	pk[777] = 0xef;
	pk[778] = 0xe0;
	pk[779] = 0x79;
	pk[780] = 0x09;
	pk[781] = 0x61;
	pk[782] = 0x8e;
	pk[783] = 0x2b;
	pk[784] = 0x45;
	pk[785] = 0x86;
	pk[786] = 0xe7;
	pk[787] = 0xb6;
	pk[788] = 0xb4;
	pk[789] = 0x24;
	pk[790] = 0x96;
	pk[791] = 0x3b;
	pk[792] = 0x73;
	pk[793] = 0x23;
	pk[794] = 0xba;
	pk[795] = 0x50;
	pk[796] = 0x5b;
	pk[797] = 0xa1;
	pk[798] = 0x12;
	pk[799] = 0xbb;
	pk[800] = 0x9b;
	pk[801] = 0x83;
	pk[802] = 0x4a;
	pk[803] = 0x7d;
	pk[804] = 0x1b;
	pk[805] = 0x78;
	pk[806] = 0xad;
	pk[807] = 0x0d;
	pk[808] = 0xf5;
	pk[809] = 0x3d;
	pk[810] = 0x55;
	pk[811] = 0x6a;
	pk[812] = 0x1c;
	pk[813] = 0x69;
	pk[814] = 0x36;
	pk[815] = 0x9f;
	pk[816] = 0x09;
	pk[817] = 0x14;
	pk[818] = 0x8b;
	pk[819] = 0x1d;
	pk[820] = 0xc9;
	pk[821] = 0x93;
	pk[822] = 0x8d;
	pk[823] = 0xf5;
	pk[824] = 0x92;
	pk[825] = 0x23;
	pk[826] = 0xf0;
	pk[827] = 0x87;
	pk[828] = 0xfd;
	pk[829] = 0x68;
	pk[830] = 0x33;
	pk[831] = 0xbe;
	pk[832] = 0x5b;
	pk[833] = 0x2b;
	pk[834] = 0xc2;
	pk[835] = 0x65;
	pk[836] = 0x1f;
	pk[837] = 0xe5;
	pk[838] = 0x89;
	pk[839] = 0x11;
	pk[840] = 0xac;
	pk[841] = 0x01;
	pk[842] = 0x46;
	pk[843] = 0x7f;
	pk[844] = 0x92;
	pk[845] = 0x97;
	pk[846] = 0xdf;
	pk[847] = 0xdc;
	pk[848] = 0x22;
	pk[849] = 0xb4;
	pk[850] = 0x1a;
	pk[851] = 0x0f;
	pk[852] = 0x17;
	pk[853] = 0x02;
	pk[854] = 0x71;
	pk[855] = 0x87;
	pk[856] = 0x10;
	pk[857] = 0xb7;
	pk[858] = 0x8c;
	pk[859] = 0xf3;
	pk[860] = 0x5b;
	pk[861] = 0x18;
	pk[862] = 0x65;
	pk[863] = 0x81;
	pk[864] = 0x3a;
	pk[865] = 0x89;
	pk[866] = 0x6d;
	pk[867] = 0x45;
	pk[868] = 0x21;
	pk[869] = 0x4d;
	pk[870] = 0x33;
	pk[871] = 0x81;
	pk[872] = 0x55;
	pk[873] = 0xb6;
	pk[874] = 0xc0;
	pk[875] = 0x43;
	pk[876] = 0xc5;
	pk[877] = 0x32;
	pk[878] = 0x33;
	pk[879] = 0x0c;
	pk[880] = 0x00;
	pk[881] = 0x2d;
	pk[882] = 0x52;
	pk[883] = 0x07;
	pk[884] = 0x39;
	pk[885] = 0x46;
	pk[886] = 0x7a;
	pk[887] = 0x50;
	pk[888] = 0x4a;
	pk[889] = 0x86;
	pk[890] = 0x66;
	pk[891] = 0x37;
	pk[892] = 0xfb;
	pk[893] = 0x34;
	pk[894] = 0x51;
	pk[895] = 0xc8;
	pk[896] = 0x49;
	pk[897] = 0xf8;
	pk[898] = 0xf8;
	pk[899] = 0x3e;
	pk[900] = 0x6a;
	pk[901] = 0x94;
	pk[902] = 0x14;
	pk[903] = 0x7f;
	pk[904] = 0x16;
	pk[905] = 0x8d;
	pk[906] = 0xa5;
	pk[907] = 0x3a;
	pk[908] = 0xcd;
	pk[909] = 0xf9;
	pk[910] = 0xd8;
	pk[911] = 0xaf;
	pk[912] = 0xfd;
	pk[913] = 0x96;
	pk[914] = 0x8a;
	pk[915] = 0x84;
	pk[916] = 0x12;
	pk[917] = 0x4a;
	pk[918] = 0x9a;
	pk[919] = 0xbc;
	pk[920] = 0x09;
	pk[921] = 0xaf;
	pk[922] = 0x96;
	pk[923] = 0x0c;
	pk[924] = 0xd3;
	pk[925] = 0xb2;
	pk[926] = 0x9f;
	pk[927] = 0x23;
	pk[928] = 0x44;
	pk[929] = 0x83;
	pk[930] = 0x1b;
	pk[931] = 0xb4;
	pk[932] = 0x1e;
	pk[933] = 0x67;
	pk[934] = 0x60;
	pk[935] = 0x5e;
	pk[936] = 0xeb;
	pk[937] = 0xf0;
	pk[938] = 0x0d;
	pk[939] = 0xf2;
	pk[940] = 0x02;
	pk[941] = 0x85;
	pk[942] = 0x71;
	pk[943] = 0x17;
	pk[944] = 0x39;
	pk[945] = 0x9d;
	pk[946] = 0xd7;
	pk[947] = 0x48;
	pk[948] = 0xb6;
	pk[949] = 0x51;
	pk[950] = 0x4a;
	pk[951] = 0xed;
	pk[952] = 0x61;
	pk[953] = 0xbb;
	pk[954] = 0x2f;
	pk[955] = 0x6c;
	pk[956] = 0xb8;
	pk[957] = 0x41;
	pk[958] = 0xd1;
	pk[959] = 0x68;
	pk[960] = 0xd5;
	pk[961] = 0xf3;
	pk[962] = 0x5e;
	pk[963] = 0x20;
	pk[964] = 0x05;
	pk[965] = 0x45;
	pk[966] = 0x73;
	pk[967] = 0xa3;
	pk[968] = 0x31;
	pk[969] = 0xcd;
	pk[970] = 0x48;
	pk[971] = 0x82;
	pk[972] = 0xa0;
	pk[973] = 0x4b;
	pk[974] = 0x07;
	pk[975] = 0x2c;
	pk[976] = 0x17;
	pk[977] = 0x91;
	pk[978] = 0x58;
	pk[979] = 0x82;
	pk[980] = 0x5b;
	pk[981] = 0xcf;
	pk[982] = 0x47;
	pk[983] = 0x12;
	pk[984] = 0x66;
	pk[985] = 0xda;
	pk[986] = 0x0d;
	pk[987] = 0xcc;
	pk[988] = 0xea;
	pk[989] = 0xb1;
	pk[990] = 0xa0;
	pk[991] = 0x21;
	pk[992] = 0xc7;
	pk[993] = 0x32;
	pk[994] = 0x54;
	pk[995] = 0x75;
	pk[996] = 0x1d;
	pk[997] = 0x5a;
	pk[998] = 0x16;
	pk[999] = 0x1c;
	pk[1000] = 0x1a;
	pk[1001] = 0x92;
	pk[1002] = 0x06;
	pk[1003] = 0x2c;
	pk[1004] = 0x22;
	pk[1005] = 0x0a;
	pk[1006] = 0x21;
	pk[1007] = 0x7a;
	pk[1008] = 0x69;
	pk[1009] = 0xd9;
	pk[1010] = 0x82;
	pk[1011] = 0x33;
	pk[1012] = 0x14;
	pk[1013] = 0xb4;
	pk[1014] = 0xde;
	pk[1015] = 0x99;
	pk[1016] = 0x6f;
	pk[1017] = 0xe8;
	pk[1018] = 0xd4;
	pk[1019] = 0x5f;
	pk[1020] = 0x6d;
	pk[1021] = 0xb5;
	pk[1022] = 0xaf;
	pk[1023] = 0x16;
	pk[1024] = 0xc1;
	pk[1025] = 0x56;
	pk[1026] = 0x14;
	pk[1027] = 0x95;
	pk[1028] = 0xa4;
	pk[1029] = 0xc4;
	pk[1030] = 0x30;
	pk[1031] = 0x90;
	pk[1032] = 0xbc;
	pk[1033] = 0x39;
	pk[1034] = 0x4c;
	pk[1035] = 0x94;
	pk[1036] = 0xe1;
	pk[1037] = 0xb0;
	pk[1038] = 0xec;
	pk[1039] = 0x73;
	pk[1040] = 0x8e;
	pk[1041] = 0xb5;
	pk[1042] = 0x62;
	pk[1043] = 0x67;
	pk[1044] = 0x20;
	pk[1045] = 0x1c;
	pk[1046] = 0x2e;
	pk[1047] = 0xcd;
	pk[1048] = 0x1c;
	pk[1049] = 0x7b;
	pk[1050] = 0x49;
	pk[1051] = 0x93;
	pk[1052] = 0xc0;
	pk[1053] = 0xef;
	pk[1054] = 0xc0;
	pk[1055] = 0x28;
	pk[1056] = 0x4b;
	pk[1057] = 0xdc;
	pk[1058] = 0x9a;
	pk[1059] = 0x09;
	pk[1060] = 0x1c;
	pk[1061] = 0x29;
	pk[1062] = 0x4f;
	pk[1063] = 0x95;
	pk[1064] = 0x70;
	pk[1065] = 0x3a;
	pk[1066] = 0x71;
	pk[1067] = 0x78;
	pk[1068] = 0x82;
	pk[1069] = 0x2c;
	pk[1070] = 0x8a;
	pk[1071] = 0x95;
	pk[1072] = 0xb7;
	pk[1073] = 0x9b;
	pk[1074] = 0x1e;
	pk[1075] = 0x45;
	pk[1076] = 0x91;
	pk[1077] = 0xe0;
	pk[1078] = 0x99;
	pk[1079] = 0x8d;
	pk[1080] = 0x89;
	pk[1081] = 0x38;
	pk[1082] = 0x75;
	pk[1083] = 0xc1;
	pk[1084] = 0xa8;
	pk[1085] = 0x79;
	pk[1086] = 0xc0;
	pk[1087] = 0x8a;
	pk[1088] = 0x07;
	pk[1089] = 0x3c;
	pk[1090] = 0xc6;
	pk[1091] = 0x7d;
	pk[1092] = 0xf4;
	pk[1093] = 0x26;
	pk[1094] = 0xbb;
	pk[1095] = 0xa7;
	pk[1096] = 0x92;
	pk[1097] = 0xc1;
	pk[1098] = 0x8a;
	pk[1099] = 0xe6;
	pk[1100] = 0xc1;
	pk[1101] = 0xfe;
	pk[1102] = 0xba;
	pk[1103] = 0x87;
	pk[1104] = 0x9b;
	pk[1105] = 0xec;
	pk[1106] = 0x54;
	pk[1107] = 0x81;
	pk[1108] = 0x2c;
	pk[1109] = 0x2a;
	pk[1110] = 0xff;
	pk[1111] = 0xa0;
	pk[1112] = 0x12;
	pk[1113] = 0x97;
	pk[1114] = 0x3b;
	pk[1115] = 0x70;
	pk[1116] = 0x0a;
	pk[1117] = 0xd4;
	pk[1118] = 0x8e;
	pk[1119] = 0x27;
	pk[1120] = 0x10;
	pk[1121] = 0x78;
	pk[1122] = 0x28;
	pk[1123] = 0x08;
	pk[1124] = 0x64;
	pk[1125] = 0x26;
	pk[1126] = 0x86;
	pk[1127] = 0x00;
	pk[1128] = 0xa7;
	pk[1129] = 0xaa;
	pk[1130] = 0x30;
	pk[1131] = 0x9e;
	pk[1132] = 0xaa;
	pk[1133] = 0x10;
	pk[1134] = 0x98;
	pk[1135] = 0x75;
	pk[1136] = 0x0a;
	pk[1137] = 0x0f;
	pk[1138] = 0x8a;
	pk[1139] = 0x52;
	pk[1140] = 0x2e;
	pk[1141] = 0xb9;
	pk[1142] = 0x29;
	pk[1143] = 0x57;
	pk[1144] = 0x7b;
	pk[1145] = 0x41;
	pk[1146] = 0x2f;
	pk[1147] = 0x78;
	pk[1148] = 0x55;
	pk[1149] = 0x61;
	pk[1150] = 0x36;
	pk[1151] = 0x88;
	pk[1152] = 0xb7;
	pk[1153] = 0x2f;
	pk[1154] = 0x9b;
	pk[1155] = 0xc8;
	pk[1156] = 0x5c;
	pk[1157] = 0x0a;
	pk[1158] = 0x13;
	pk[1159] = 0xb9;
	pk[1160] = 0xd0;
	pk[1161] = 0x41;
	pk[1162] = 0x58;
	pk[1163] = 0x6f;
	pk[1164] = 0xd5;
	pk[1165] = 0x83;
	pk[1166] = 0xfe;
	pk[1167] = 0xb1;
	pk[1168] = 0x2a;
	pk[1169] = 0xfd;
	pk[1170] = 0x5a;
	pk[1171] = 0x40;
	pk[1172] = 0x2d;
	pk[1173] = 0xd3;
	pk[1174] = 0x3b;
	pk[1175] = 0x43;
	pk[1176] = 0x54;
	pk[1177] = 0x3f;
	pk[1178] = 0x5f;
	pk[1179] = 0xa4;
	pk[1180] = 0xeb;
	pk[1181] = 0x43;
	pk[1182] = 0x6c;
	pk[1183] = 0x8d;
	
	//printf("pk:\n");
	//printbytes(pk, PQCLEAN_KYBER768_CLEAN_CRYPTO_PUBLICKEYBYTES);

  // Encapsulation
  PQCLEAN_KYBER768_CLEAN_crypto_kem_enc(sendb, key_b, pk);
  printf("Encapsulation done!\n");

	printf("sendb:\n");
	printbytes(sendb, PQCLEAN_KYBER768_CLEAN_CRYPTO_CIPHERTEXTBYTES);
	printf("key_b:\n");
  printbytes(key_b, PQCLEAN_KYBER768_CLEAN_CRYPTO_BYTES);
	    

    return 0;
}
