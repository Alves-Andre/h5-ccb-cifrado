var listaHinos = [
  {"number":1,"title":"1 - Cristo, meu Mestre..."},
  {"number": 249, "title": "249 - A Caridade"},
  {"number": 221, "title": "221 - A descida do Espirito Santo"},
  {"number": 69, "title": "69 - A familia de Jesus"},
  {"number": 36, "title": "36 - A fiel proteção"},
  {"number": 166, "title": "166 - A graça inefável de Deus"},
  {"number": 226, "title": "226 - A história do Evangelho"},
  {"number": 350, "title": "350 - A jornada farei"},
  {"number": 241, "title": "241 - A Justiça divina"},
  {"number": 130, "title": "130 - A minha alma"},
  {"number": 61, "title": "61 - A minha alma deseja ver-Te"},
  {"number": 168, "title": "168 - A Palavra do Senhor"},
  {"number": 51, "title": "51 - A Palavra do Senhor é Pão celestial"},
  {"number": 178, "title": "178 - A Palavra preciosa"},
  {"number": 375, "title": "375 - \"A paz, Eu vos deixo\""},
  {"number": 5, "title": "5 - A Rocha celestial"},
  {"number": 355, "title": "355 - A Ti, Deus, eu consagrei-me"},
  {"number": 230, "title": "230 - A Ti rendemos graças (Encerramento)"},
  {"number": 429, "title": "429 - A trombeta soará (Funeral)"},
  {"number": 81, "title": "81 - A vida deu por ti"},
  {"number": 144, "title": "144 - A vida eterna"},
  {"number": 406, "title": "406 - A voz de Cristo te convida: Vem!"},
  {"number": 167, "title": "167 - Água viva"},
  {"number": 298, "title": "298 - Aleluia! Aleluia! Bendiremos"},
  {"number": 190, "title": "190 - Amados, não temamos"},
  {"number": 116, "title": "116 - Amo ao Senhor"},
  {"number": 85, "title": "85 - Anunciai o santo Evangelho (Batismo)"},
  {"number": 330, "title": "330 - Ao findar a jornada"},
  {"number": 169, "title": "169 - Aos pés de Deus estamos"},
  {"number": 363, "title": "363 - Aos Teus pés estou, Senhor"},
  {"number": 371, "title": "371 - Aos Teus pés me apresento"},
  {"number": 313, "title": "313 - Arrebatado aos céus"},
  {"number": 294, "title": "294 - Avante! Coragem! Marchemos"},
  {"number": 275, "title": "275 - Avante eu vou"},
  {"number": 233, "title": "233 - Avante, santos e fiéis de Deus"},
  {"number": 289, "title": "289 - Avante, sempre avante"},
  {"number": 298, "title": "298 - Avante sempre, sem temer!"},
  {"number": 430, "title": "430 - Bem-aventurado quem dorme... (Funeral)"},
  {"number": 265, "title": "265 - Bênçãos dos céus prometidas"},
  {"number": 135, "title": "135 - Bendito o Rei que veio do céu!"},
  {"number": 321, "title": "321 - Bendito seja o Deus vivente"},
  {"number": 103, "title": "103 - Bendize, ó minha alma"},
  {"number": 306, "title": "306 - Bendize' ao Altíssimo Deus"},
  {"number": 136, "title": "136 - Benignidade eterna é a de Deus"},
  {"number": 79, "title": "79 - Bom é estarmos nós aqui"},
  {"number": 409, "title": "409 - Breve voltará Jesus Cristo"},
  {"number": 182, "title": "182 - Brevemente retornará Jesus Cristo"},
  {"number": 222, "title": "222 - Brevemente virá o Senhor Jesus"},
  {"number": 66, "title": "66 - Cansado estás? Vem a Jesus"},
  {"number": 101, "title": "101 - Cantemos, juntos, louvores a Deus"},
  {"number": 114, "title": "114 - Clama ao Mestre, Crista Jesus"},
  {"number": 329, "title": "329 - Com fé combate"},
  {"number": 341, "title": "341 - Com fé espera no Senhor"},
  {"number": 392, "title": "392 - Com Jesus, a Esperança"},
  {"number": 380, "title": "380 - Com Jesus, eternamente viverei"},
  {"number": 250, "title": "250 - Com meu Redentor viverei nos céus"},
  {"number": 214, "title": "214 - Como foi para os céus, assim virá"},
  {"number": 30, "title": "30 - Confiarei sempre no Senhor"},
  {"number": 13, "title": "13 - Confiemos em Deus"},
  {"number": 208, "title": "208 - Conserva a paz, ó minha alma"},
  {"number": 282, "title": "282 - Constantemente oremos a Deus"},
  {"number": 315, "title": "315 - Contempla do céu"},
  {"number": 365, "title": "365 - Contrito, venho a Ti"},
  {"number": 382, "title": "382 - Creio nas fiéis promessas do meu Deus"},
  {"number": 48, "title": "48 - Creio no Senhor"},
  {"number": 304, "title": "304 - Cristo é a Esperança"},
  {"number": 383, "title": "383 - Cristo é a Estrela"},
  {"number": 207, "title": "207 - Cristo é fiel"},
  {"number": 263, "title": "263 - Cristo é Luz resplandecente"},
  {"number": 156, "title": "156 - Cristo entrou nos céus primeiro"},
  {"number": 244, "title": "244 - Cristo intercede por ti"},
  {"number": 389, "title": "389 - Cristo Jesus chama os Seus"},
  {"number": 183, "title": "183 - Cristo Jesus é a Porta dos céus"},
  {"number": 97, "title": "97 - Cristo Jesus, nosso bom Pastor"},
  {"number": 373, "title": "373 - Cristo Jesus, o Redentor"},
  {"number": 76, "title": "76 - Cristo Jesus Sua mão me dá"},
  {"number": 98, "title": "98 - Cristo Jesus tudo pode"},
  {"number": 186, "title": "186 - Cristo, Luz do mundo"},
  {"number": 307, "title": "307 - Cristo nos dará da Sua plenitude"},
  {"number": 141, "title": "141 - Cristo, o Verbo"},
  {"number": 161, "title": "161 - Cristo quer salvar"},
  {"number": 162, "title": "162 - Cristo salvou-me"},
  {"number": 425, "title": "425 - Crista Supremo"},
  {"number": 220, "title": "220 - Cristo voltará"},
  {"number": 372, "title": "372 - Da igreja, fiel Fundamento é Jesus"},
  {"number": 24, "title": "24 - Dá-me graça, Senhor"},
  {"number": 280, "title": "280 - De Deus a armadura"},
  {"number": 2, "title": "2 - De Deus tu és eleita"},
  {"number": 146, "title": "146 - De Deus veio a Luz"},
  {"number": 254, "title": "254 - De Jesus a graça divina"},
  {"number": 274, "title": "274 - Desejo ser, ó meu Senhor „"},
  {"number": 270, "title": "270 - Deste mundo mais nada esperarei"},
  {"number": 159, "title": "159 - Deus amou o mundo"},
  {"number": 237, "title": "237 - Deus é por mim"},
  {"number": 185, "title": "185 - Deus mandou Sua Luz"},
  {"number": 368, "title": "368 - Deus nos elegeu para Si"},
  {"number": 400, "title": "400 - Divina Fonte é Jesus"},
  {"number": 360, "title": "360 - Do mal apartados devemos estar"},
  {"number": 324, "title": "324 - Do mal o Salvador veio me tirar"},
  {"number": 111, "title": "111 - Do sepulcro ressurgiu triunfante"},
  {"number": 147, "title": "147 - É bom louvar ao Criador"},
  {"number": 332, "title": "332 - É Cristo Quem cuida de ti"},
  {"number": 57, "title": "57 - É estreita a porta para a salvação"},
  {"number": 108, "title": "108 - É Jesus a Fonte de riqueza"},
  {"number": 18, "title": "18 - É Jesus meu Refúgio"},
  {"number": 243, "title": "243 - É Jesus o nosso Intercessor"},
  {"number": 239, "title": "239 - Eis que a noite é passada"},
  {"number": 35, "title": "35 - Eis que multidão mui grande"},
  {"number": 87, "title": "87 - Eis que vem Jesus"},
  {"number": 390, "title": "390 - Eis que vem o Verdadeiro"},
  {"number": 395, "title": "395 - \"Eis-Me aqui\", dirá o Criador"},
  {"number": 132, "title": "132 - Eis-me, Senhor, aos Teus pés"},
  {"number": 353, "title": "353 - Eleitos nós somos"},
  {"number": 215, "title": "215 - Em breve ao céu irei"},
  {"number": 348, "title": "348 - Em Cristo espera, sem vacilar"},
  {"number": 299, "title": "299 - Em nome de Jesus"},
  {"number": 106, "title": "106 - Em nome do nosso Redentor"},
  {"number": 202, "title": "202 - Em Ti me alegro, Senhor"},
  {"number": 278, "title": "278 - Éramos mortos nas obras más"},
  {"number": 407, "title": "407 - És bendito eternamente!"},
  {"number": 426, "title": "426 - Este mundo enganador... (Funeral)"},
  {"number": 335, "title": "335 - Eu almejo nessa pátria entrar"},
  {"number": 39, "title": "39 - Eu desejo, Senhor"},
  {"number": 32, "title": "32 - Eu me escondo em Ti, Senhor"},
  {"number": 177, "title": "177 - Eu necessito achegar-me"},
  {"number": 229, "title": "229 - Eu vivia no pecado"},
  {"number": 252, "title": "252 - Exaltação ao Deus Onipotente!"},
  {"number": 357, "title": "357 - Face a face O verei"},
  {
    "number": 419,
    "title": "419 - \"Fazei isto em memória de Mim\" (Santa Ceia)"
  },
  {"number": 59, "title": "59 - Faz-me mais perseverante"},
  {"number": 3, "title": "3 - Faz-nos ouvir Tua voz"},
  {"number": 118, "title": "118 - Fiel Salvador é Jesus"},
  {"number": 251, "title": "251 - Firme nas mãos de Cristo"},
  {"number": 253, "title": "253 - Foi alegre, ditoso o dia"},
  {"number": 319, "title": "319 - Foi Jesus Quem me salvou"},
  {"number": 165, "title": "165 - Foi o Senhor Jesus"},
  {"number": 413, "title": "413 - Foi por mim que morreste"},
  {"number": 31, "title": "31 - Forte Rocha"},
  {"number": 295, "title": "295 - Fui, Senhor, por Ti remido"},
  {"number": 309, "title": "309 - Galardão nos espera"},
  {"number": 50, "title": "50 - Glória a Jesus! Aleluia!"},
  {"number": 78, "title": "78 - Glória a Jesus! Glória a Jesus!"},
  {"number": 248, "title": "248 - Glória! Aleluia! Sinto Jesus"},
  {"number": 6, "title": "6 - Glória ao Justo, fiel Cordeiro!"},
  {"number": 285, "title": "285 - Glória e louvor a Jesus darei"},
  {"number": 50, "title": "50 - Glória, glória a Jesus, o meu Pastor"},
  {"number": 339, "title": "339 - Glória sem par"},
  {"number": 267, "title": "267 - Graça maravilhosa"},
  {"number": 271, "title": "271 - Graças dou a Ti, ó bom Deus"},
  {"number": 328, "title": "328 - Grande é o Teu poder, Senhor"},
  {"number": 379, "title": "379 - Grande festa haverá nos céus"},
  {"number": 86, "title": "86 - Grande Tu és, ó Pai"},
  {"number": 210, "title": "210 - Grandes promessas"},
  {"number": 46, "title": "46 - Grandioso é o nosso Deus"},
  {"number": 378, "title": "378 - Grandioso és Tu"},
  {"number": 7, "title": "7 - Granjeai, granjeai os talentos"},
  {"number": 22, "title": "22 - Guia-me, ó Senhor"},
  {"number": 236, "title": "236 - Há um lugar de eterna paz"},
  {"number": 422, "title": "422 - Humilhou-se assim Jesus.-"},
  {"number": 85, "title": "85 - Ide, anunciai o santo Evangelho... (Batismo)"},
  {"number": 65, "title": "65 - Igual ao Mestre!"},
  {"number": 349, "title": "349 - Irmãos amados"},
  {"number": 287, "title": "287 - Irmãos amados, sempre avante"},
  {"number": 216, "title": "216 - Irmãos, amemos ao Senhor"},
  {"number": 291, "title": "291 - Irmãos, avante, avante!"},
  {"number": 246, "title": "246 - Irmãos, já resgatados"},
  {"number": 354, "title": "354 - Jerusalém celestial!"},
  {"number": 99, "title": "99 - Jesus Cristo é o Amigo celestial"},
  {"number": 408, "title": "408 - Jesus Cristo é o Pão celeste (Santa Ceia)"},
  {"number": 422, "title": "422 - Jesus Cristo, fiel Cordeiro"},
  {"number": 187, "title": "187 - Jesus Cristo habita em nós"},
  {"number": 150, "title": "150 - Jesus Cristo, meu Senhor"},

  {"number": 255, "title": "255 - Jesus é a nossa Rocha"},
  {"number": 33, "title": "33 - Jesus é o nosso Guia"},
  {"number": 117, "title": "117 - Jesus habita em meu coração"},
  {"number": 273, "title": "273 - Jesus me deu celeste hino"},
  {"number": 26, "title": "26 - Julga-me, Senhor"},
  {"number": 343, "title": "343 - Lá no céu cantaremos"},
  {"number": 426, "title": "426 - Lá no céu, o lar de amor (Funeral)"},
  {"number": 126, "title": "126 - Levemos a mensagem de amor"},
  {"number": 346, "title": "346 - Longe do mal e perto de Ti"},
  {"number": 272, "title": "272 - Louvarei ao bom Jesus"},
  {"number": 138, "title": "138 - Louvemos ao bom Jesus"},
  {"number": 258, "title": "258 - Louvemos ao nosso Senhor"},
  {"number": 325, "title": "325 - Louvemos ao Rei dos reis"},
  {"number": 164, "title": "164 - Louvemos sempre alegres"},
  {"number": 148, "title": "148 - Louvor a Deus, o Criador"},
  {"number": 284, "title": "284 - Louvor nos céus altíssimos"},
  {"number": 9, "title": "9 - Luminosa é a senda"},
  {"number": 119, "title": "119 - Luz aos meus pés é a Tua Palavra"},
  {"number": 52, "title": "52 - Luz eternal é Jesus"},
  {"number": 125, "title": "125 - Mais grato a Ti"},
  {"number": 14, "title": "14 - Manda os Teus dons celestes"},
  {"number": 19, "title": "19 - Manda-nos Teu Poder"},
  {"number": 127, "title": "127 - Meu bom Jesus, Contigo almejo estar"},
  {"number": 158, "title": "158 - Meu lar está no céu"},
  {"number": 88, "title": "88 - Minha oração"},
  {"number": 381, "title": "381 - Mui breve virá, mui breve virá"},
  {"number": 223, "title": "223 - Muitos, por fé, aceitaram Jesus"},
  {"number": 388, "title": "388 - Na cidade santa"},
  {"number": 415, "title": "415 - Na cruz morreu o Cordeiro"},
  {"number": 274, "title": "274 - Na plenitude estarei"},
  {"number": 193, "title": "193 - Nada jamais me faltará"},
  {"number": 21, "title": "21 - Não mais oprimidos seremos"},
  {"number": 240, "title": "240 - Não me cansarei de cantar"},
  {"number": 245, "title": "245 - Não pode entender o mundo"},
  {"number": 200, "title": "200 - \"Não se turbe o vosso coração\""},
  {"number": 398, "title": "398 - Não tardará a volta do Senhor"},
  {"number": 394, "title": "394 - Nas moradas do Senhor"},
  {"number": 163, "title": "163 - Neste mundo de ilusão"},
  {"number": 377, "title": "377 - No céu, Senhor, no céu"},
  {"number": 91, "title": "91 - No esconderijo do Onipotente"},
  {"number": 340, "title": "340 - No mundo sou peregrino"},
  {"number": 72, "title": "72 - Nome glorioso, o de Jesus!"},
  {"number": 286, "title": "286 - Nome precioso para mim"},
  {"number": 384, "title": "384 - Nos resgatou e nos lavou"},
  {"number": 427, "title": "427 - Nós nos reencontraremos... (Funeral)"},
  {"number": 53, "title": "53 - Nós somos luz do mundo"},
  {"number": 310, "title": "310 - Nós Te louvamos, ó Rei dos reis"},
  {"number": 184, "title": "184 - Nós Te louvamos, por fé, grande Deus"},
  {"number": 120, "title": "120 - Nossa cruz tomemos"},
  {"number": 301, "title": "301 - Nossa Esperança é Jesus"},
  {"number": 198, "title": "198 - Nosso Pai celeste sabe e provê"},
  {"number": 219, "title": "219 - Novos céus nós aguardamos"},
  {"number": 428, "title": "428 - O dia de Cristo bem perto está (Funeral)"},
  {"number": 153, "title": "153 - O divinal Cordeiro"},
  {"number": 161, "title": "161 - O Evangelho vamos anunciar.."},
  {"number": 107, "title": "107 - O fim de tudo chegará"},
  {"number": 188, "title": "188 - O Mestre habita em mim"},
  {"number": 34, "title": "34 - O Mestre que desceu dos céus"},
  {"number": 234, "title": "234 - O meu ser entrego a Cristo"},
  {"number": 121, "title": "121 - O meu socorro vem do Senhor"},
  {"number": 203, "title": "203 - O meu vero Amigo é Jesus"},
  {"number": 410, "title": "410 - O sangue precioso"},
  {"number": 92, "title": "92 - O santo Evangelho"},
  {"number": 27, "title": "27 - O Senhor é minha Luz"},
  {"number": 23, "title": "23 - O Senhor é o meu Pastor"},
  {"number": 338, "title": "338 - O Senhor é sempiterno"},
  {"number": 175, "title": "175 - O Senhor Jesus te chama"},
  {"number": 303, "title": "303 - O Senhor não mudará"},
  {"number": 113, "title": "113 - O Senhor seja louvado"},
  {"number": 41, "title": "41 - O teu coração vem a Cristo entregar"},
  {"number": 314, "title": "314 - O Teu poder supremo"},
  {"number": 358, "title": "358 - O Teu precioso sangue"},
  {"number": 141, "title": "141 - O Verbo estava com Deus, Criador.."},
  {"number": 411, "title": "411 - O vitupério de Jesus"},
  {"number": 15, "title": "15 - Ó alma que choras"},
  {"number": 393, "title": "393 - O bom Jesus, meu caro Jesus"},
  {"number": 62, "title": "62 - Ó Criador, forte Rocha és"},
  {"number": 268, "title": "268 - Ó Deus bendito"},
  {"number": 11, "title": "11 - Ó igreja de Deus, resplandece"},
  {"number": 288, "title": "288 - Ó irmãos, com Cristo avante"},
  {"number": 359, "title": "359 - Ó irmãos, de Deus diletos"},
  {"number": 120, "title": "120 - ó irmãos, devemos nos renunciar.."},
  {"number": 149, "title": "149 - Ó irmãos, por fé, louvemos a Jesus"},
  {"number": 123, "title": "123 - Ó Jesus, és meu Guardião"},
  {"number": 424, "title": "424 - Ó Jesus, por nós morreste"},
  {"number": 42, "title": "42 - Ó minha alma, por que te abates?"},
  {"number": 142, "title": "142 - O Pai celestial"},
  {"number": 387, "title": "387 - Ó Salvador, que recebeste poder"},
  {"number": 318, "title": "318 - Ó Salvador, vem converter o pecador"},
  {"number": 276, "title": "276 - Ó Senhor da glória"},
  {"number": 38, "title": "38 - Ó Senhor, és minha. Vida"},
  {"number": 131, "title": "131 - Ó Senhor glorioso, Deus da perfeição"},
  {"number": 71, "title": "71 - Ó Senhor Jesus, eu recorro a Ti"},
  {"number": 139, "title": "139 - Ó Senhor, Tu me conheces"},
  {"number": 17, "title": "17 - Ó Senhor, vem visitar-me"},
  {"number": 89, "title": "89 - Oh! Grande Deus"},
  {"number": 218, "title": "218 - Oh! Jubilemos, devotos de Cristo"},
  {"number": 209, "title": "209 - Oh! Marchai, soldados"},
  {"number": 323, "title": "323 - Oh! Não busques, ansioso"},
  {"number": 279, "title": "279 - Oh! Não temas, igreja de Jesus"},
  {"number": 277, "title": "277 - Oh! Quanto é bom louvarmos"},
  {"number": 292, "title": "292 - Oh! Quanto é bom o Redentor!"},
  {"number": 45, "title": "45 - Oh! Quanto nos amaste!"},
  {"number": 162, "title": "162 - Oh! Que doçura, sinto a virtude„."},
  {"number": 305, "title": "305 - Oh! Que fundamento"},
  {"number": 82, "title": "82 - Oh! Que grande amor!"},
  {"number": 189, "title": "189 - Oh! Que preciosa paz"},
  {"number": 145, "title": "145 - Oh! Vai a Deus e clama._"},
  {"number": 60, "title": "60 - Oh! Vem a Jesus"},
  {"number": 8, "title": "8 - Oh! Vem, sim, vem"},
  {"number": 155, "title": "155 - Olha a Cristo, o Redentor"},
  {"number": 347, "title": "347 - Ontem, hoje e eternamente"},
  {"number": 427, "title": "427 - Os que no Senhor dormiram (Funeral)"},
  {"number": 4, "title": "4 - Ouve a nossa oração"},
  {"number": 28, "title": "28 - Para o céu marchemos"},
  {"number": 173, "title": "173 - Para ouvir aqui estamos"},
  {"number": 55, "title": "55 - Paz seja em vós"},
  {"number": 397, "title": "397 - Paz, sublime paz"},
  {"number": 366, "title": "366 - Pela fé tereis vitória"},
  {"number": 386, "title": "386 - Pela morte de Jesus"},
  {"number": 420, "title": "420 - Pela morte na cruz, nos resgatou_"},
  {"number": 333, "title": "333 - Peregrino sou no mundo"},
  {"number": 56, "title": "56 - Põe em Deus a confiança"},
  {"number": 80, "title": "80 - Por Cristo, resgatado"},
  {"number": 404, "title": "404 - Por fé, recebe o grande Mestre"},
  {"number": 337, "title": "337 - Por fé seguimos ao Senhor"},
  {"number": 356, "title": "356 - Por preço elevado Jesus resgatou-me"},
  {"number": 176, "title": "176 - Por Ti vivo, ó Deus potente"},
  {"number": 143, "title": "143 - Porfiemos, irmãos, por entrar nos céus"},
  {
    "number": 430,
    "title": "430 - Preciosa é, aos olhos do Criador... (Funeral)"
  },
  {"number": 227, "title": "227 - Procuras tu ao Salvador?"},
  {"number": 145, "title": "145 - Pródigo filho, vai!"},
  {"number": 242, "title": "242 - Profundo é o saber de Deus, Criador"},
  {"number": 16, "title": "16 - Promessa excelente"},
  {"number": 10, "title": "10 - Prossegui vitoriosos em Cristo"},
  {"number": 231, "title": "231 - Provemos, irmãos, do amor do Senhor"},
  {"number": 244, "title": "244 - Quando te faltam forças contra o mal_"},
  {"number": 213, "title": "213 - Quando vier do céu"},
  {"number": 40, "title": "40 - Quanto em mim Tu operaste"},
  {"number": 84, "title": "84 - Quão amável é a Tua casa"},
  {"number": 192, "title": "192 - Quão fiel promessa Jesus nos fez"},

  {"number": 362, "title": "362 - Que bela herança!"},
  {"number": 302, "title": "302 - Que gloriosa Esperança é Jesus!"},
  {"number": 320, "title": "320 - Que prazer é andar com Cristo"},
  {"number": 94, "title": "94 - Quem sustenta a nossa vida"},
  {"number": 283, "title": "283 - Quero, ó Senhor, ir Contigo ao céu"},
  {"number": 421, "title": "421 - Recorda, por fé, minha alma"},
  {"number": 417, "title": "417 - Recordemo-nos sempre do Mestre"},
  {"number": 264, "title": "264 - Redentor celeste e santo"},
  {"number": 345, "title": "345 - Regozijo-me em falar do Salvador"},
  {"number": 257, "title": "257 - Remiu-nos por graça"},
  {"number": 269, "title": "269 - Ressuscitados, por graça, fomos"},
  {"number": 401, "title": "401 - Revela Teu querer"},
  {"number": 228, "title": "228 - Salvação! Salvação!"},
  {"number": 129, "title": "129 - Salvo estou por Jesus"},
  {"number": 205, "title": "205 - Salvo por Seu poder"},
  {"number": 104, "title": "104 - Santo, Santo és, Senhor"},
  {"number": 374, "title": "374 - Santo! Santo! Santo!"},
  {"number": 37, "title": "37 - Se a nossa vida entregarmos a Jesus"},
  {"number": 151, "title": "151 - Se, de Cristo, o Nome amares"},
  {"number": 247, "title": "247 - Se fores tentado"},
  {"number": 63, "title": "63 - Se vós baterdes, Ele vos abre"},
  {"number": 196, "title": "196 - Sem Deus Pai"},
  {"number": 256, "title": "256 - Sem Deus Pai, vivi no mundo"},
  {"number": 68, "title": "68 - Sem tardar, vai a Cristo"},
  {"number": 73, "title": "73 - Semearei, semearei"},
  {"number": 326, "title": "326 - Sempre a Cristo fiéis"},
  {"number": 290, "title": "290 - Sempre avante!"},
  {"number": 336, "title": "336 - Sempre brilhar devemos"},
  {"number": 12, "title": "12 - Sempre em Jesus confiarei"},
  {
    "number": 419,
    "title": "419 - Sempre lembremo-nos da morte... (Santa Ceia)"
  },
  {"number": 262, "title": "262 - Senhor, a Tua igreja"},
  {"number": 351, "title": "351 - Senhor, à Tua presença"},
  {"number": 225, "title": "225 - Senhor, com Tua voz me chamas"},
  {"number": 297, "title": "297 - Senhor, conforta meu coração"},
  {"number": 195, "title": "195 - Senhor, estou disposto"},
  {"number": 29, "title": "29 - Senhor Jesus, Tu és o meu Rochedo"},
  {"number": 197, "title": "197 - Senhor, por Teu poder"},
  {"number": 412, "title": "412 - Senhor, recordamos aqui... (Santa Ceia)"},
  {"number": 70, "title": "70 - Senhor, Tu és a minha Esperança"},
  {"number": 199, "title": "199 - Senhor, Tu és a minha Porção"},
  {"number": 137, "title": "137 - Senhor, vem selar-nos"},
  {"number": 369, "title": "369 - Sentes bater em teu coração?"},
  {"number": 342, "title": "342 - Sião celestial"},
  {"number": 112, "title": "112 - Sigamos sempre ao Senhor"},
  {"number": 102, "title": "102 - Sinto a voz divina do meu fiel Pastor"},
  {"number": 317, "title": "317 - Sinto o Senhor, por fé, em mim"},
  {"number": 352, "title": "352 - Sinto viva esperança"},
  {"number": 181, "title": "181 - Só em Cristo, só em Cristo"},
  {"number": 224, "title": "224 - Só Jesus concede paz e salvação"},
  {"number": 418, "title": "418 - Só Jesus Cristo, santo Cordeiro"},
  {"number": 204, "title": "204 - Só Jesus é Amigo verdadeiro"},
  {"number": 423, "title": "423 - Só o sangue precioso e expiador"},
  {"number": 405, "title": "405 - Só por Cristo temos salvação"},
  {"number": 259, "title": "259 - Só triunfará o de sincero coração"},
  {"number": 308, "title": "308 - Soa a trombeta"},
  {"number": 44, "title": "44 - Sol da justiça"},
  {"number": 327, "title": "327 - Soldados somos do Senhor"},
  {"number": 281, "title": "281 - Soldados valorosos nós somos"},
  {"number": 399, "title": "399 - \"Sou a Videira\""},
  {"number": 58, "title": "58 - Sou crente em Jesus"},
  {"number": 140, "title": "140 - Sou feliz"},
  {"number": 160, "title": "160 - \"Sou o Caminho, a Verdade e a Vida\""},
  {"number": 260, "title": "260 - Sou servo inútil, ó Deus piedoso"},
  {"number": 47, "title": "47 - Sublime é o perdão!"},
  {"number": 370, "title": "370 - Têm os santos do Senhor"},
  {"number": 154, "title": "154 - Terá que renascer"},
  {"number": 212, "title": "212 - Testemunhas verazes nós somos"},
  {"number": 134, "title": "134 - Teu amor, ó Cordeiro divinal"},
  {"number": 90, "title": "90 - Teu destino é a glória"},
  {"number": 20, "title": "20 - Teu Espírito derrama"},
  {"number": 128, "title": "128 - Teu filho sou, ó Criador"},
  {"number": 296, "title": "296 - Teu Nome é soberano, ó Redentor"},
  {"number": 414, "title": "414 - Teu sangue imaculado"},
  {"number": 238, "title": "238 - Teu servo ouve fala, Senhor"},
  {"number": 311, "title": "311 - Teus tesouros revelaste"},
  {"number": 100, "title": "100 - Todos juntos, jubilemos"},
  {"number": 179, "title": "179 - Trabalhai! Trabalhai!"},
  {"number": 43, "title": "43 - Trema o céu, a terra, o mar"},
  {"number": 312, "title": "312 - Tributos de louvor"},
  {"number": 206, "title": "206 - Tu és o Amigo"},
  {"number": 293, "title": "293 - Tu és Oleiro"},
  {"number": 64, "title": "64 - Tu, que vives sem destino"},
  {"number": 316, "title": "316 - Tua vida é triste?"},
  {"number": 361, "title": "361 - Tudo entende o Salvador"},
  {"number": 300, "title": "300 - Tudo o que nos falta"},
  {"number": 235, "title": "235 - Um amor imenso"},
  {"number": 172, "title": "172 - Um culto santo ao Senhor (Encerramento)"},
  {"number": 25, "title": "25 - Um grande bem, precioso bem"},
  {"number": 391, "title": "391 - Um peregrino sou aqui"},
  {"number": 54, "title": "54 - Um tesouro glorioso achei"},
  {"number": 77, "title": "77 - Vamos lançar a semente"},
  {"number": 74, "title": "74 - Vamos produzir frutos de louvor"},
  {"number": 396, "title": "396 - Vamos, ó irmãos, marchar"},
  {"number": 217, "title": "217 - Vamos, unidos, a Deus louvar"},
  {"number": 331, "title": "331 - Vem a Cristo sem tardar"},
  {"number": 75, "title": "75 - Vem a Jesus, ó alma errante"},
  {"number": 174, "title": "174 - Vem atender ao Seu chamado"},
  {"number": 297, "title": "297 - Vem, Jesus, meu Consolador.."},
  {"number": 109, "title": "109 - Vem, ó Senhor, ajudar-me"},
  {"number": 322, "title": "322 - Vem, Rei eterno"},
  {"number": 191, "title": "191 - Vem, vem consolar-me"},
  {"number": 152, "title": "152 - Venho à casa do Senhor"},
  {"number": 49, "title": "49 - Venho adorar-Te, santo Criador"},
  {"number": 171, "title": "171 - Vida eterna! Vida eterna!"},
  {"number": 110, "title": "110 - Vigiai, irmãos"},
  {"number": 67, "title": "67 - \"Vinde a Mim!\""},
  {"number": 96, "title": "96 - Vinde, adoremos a Deus"},
  {"number": 385, "title": "385 - \"Vinde após Mim\""},
  {"number": 83, "title": "83 - Vinde às bodas"},
  {"number": 266, "title": "266 - Vinde às fileiras"},
  {"number": 95, "title": "95 - \"Vinde, ó benditos de Meu Pai\""},
  {"number": 124, "title": "124 - Vivo na graça"},
  {"number": 261, "title": "261 - Vivo por Cristo"},
  {"number": 105, "title": "105 - Volta ao teu lar Paternal!"},
  {"number": 194, "title": "194 - \"Vós chorareis e vos lamentareis\""},
  {"number": 344, "title": "344 - Vou encontrar meu Deus"},
  {"number": 466, "title": "466 - A criança consagrada"},
  {"number": 461, "title": "461 - A Jesus, meu Senhor, minha vida consagrei.."},
  {"number": 434, "title": "434 - A minha alma sente paz no Senhor"},
  {"number": 461, "title": "461 - Abrigado em Jesus"},
  {"number": 445, "title": "445 - Ajuntemos um tesouro eterno"},
  {"number": 436, "title": "436 - Alegria sinto em servir Jesus"},
  {"number": 442, "title": "442 - Bênçãos, bênçãos Deus derramará"},
  {"number": 447, "title": "447 - Brilha mais e mais"},
  {"number": 478, "title": "478 - Cedo retorna o Senhor"},
  {"number": 454, "title": "454 - Cidadão dos céus"},
  {"number": 457, "title": "457 - Comigo está Jesus"},
  {"number": 453, "title": "453 - Consagrados sejamos a Deus"},
  {"number": 458, "title": "458 - Cristo me ama"},
  {"number": 476, "title": "476 - \"Deixai a Mim vir os pequeninos...\""},
  {"number": 472, "title": "472 - Desde pequenino, Deus, o Criador."},
  {"number": 465, "title": "465 - Deus tem por nós imenso amor"},
  {"number": 447, "title": "447 - Estás na senda divinal que te faz brilhar.."},
  {"number": 441, "title": "441 - Eu sou um cordeirinho"},
  {"number": 473, "title": "473 - Forasteiro sou no mundo"},
  {"number": 472, "title": "472 - Glorificarei, glorificarei"},
  {"number": 462, "title": "462 - Gloriosa é a história"},
  {"number": 451, "title": "451 - Jamais esquecerei Tua mercê"},
  {"number": 470, "title": "470 - Jesus Cristo, Seus fiéis, ensina"},
  {"number": 452, "title": "452 - Jesus, ã divinal Pastor"},
  {"number": 480, "title": "480 - Jovens, amai o conselho"},
  {"number": 440, "title": "440 - Lembra-te do teu Criador!"},
  {"number": 463, "title": "463 - Mocidade! Vamos combater?"},
  {"number": 433, "title": "433 - Na santa escola"},
  {"number": 440, "title": "440 - Nos dias da tua peregrinação."},
  {"number": 449, "title": "449 - O meu nome no céu escreveste, Senhor"},
  {"number": 435, "title": "435 - Ó Jesus, quanto és piedoso!"},
  {"number": 443, "title": "443 - Ó meninos, Deus vos convida"},
  {"number": 431, "title": "431 - Ó meninos, estamos reunidos"},
  {"number": 444, "title": "444 - Ó meninos, exaltemos"},
  {"number": 474, "title": "474 - Oh! Glória! Bendito é o Senhor!"},
  {"number": 438, "title": "438 - Oh! Que amor celeste!"},
  {"number": 437, "title": "437 - Os meninos viram Jesus passar"},
  {"number": 469, "title": "469 - Pai nosso, que estás nos céus"},
  {"number": 455, "title": "455 - Quão ditoso é caminhar com Jesus!"},
  {"number": 471, "title": "471 - Que grande bem é andar com Cristo!"},
  {"number": 464, "title": "464 - Reunidos nós estamos"},
  {"number": 475, "title": "475 - Se eu for aqui provado"},
  {"number": 456, "title": "456 - Somos joias preciosas"},
  {"number": 439, "title": "439 - Somos jovens"},
  {"number": 479, "title": "479 - Somos jovens consagrados"},
  {"number": 448, "title": "448 - Sou criança, Senhor"},
  {"number": 467, "title": "467 - Vamos com Jesus"},
  {"number": 459, "title": "459 - Vamos nos preparar!"},
  {"number": 450, "title": "450 - Vamos, queridos, escolher a boa parte"},
  {"number": 460, "title": "460 - Vamos todos juntos cantar"},
  {"number": 432, "title": "432 - Vem, ó divino Mestre"},
  {"number": 477, "title": "477 - Vinde, crianças"},
  {"number": 446, "title": "446 - Vós, ó jovens do Senhor"}
];