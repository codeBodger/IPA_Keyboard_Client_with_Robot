static class MyTable {
  static String[] table = new String[164];
  
  static void tableInit() {
    //Pulmonic Consonats
    //Plosives
    table[127] = "p"; //p
    table[126] = "b"; //b
    table[125] = "t"; //t
    table[124] = "d"; //d
    table[123] = "ʈ"; //t.
    table[122] = "ɖ"; //d.
    table[121] = "c"; //c
    table[120] = "ɟ"; //J-
    table[119] = "k"; //k
    table[118] = "ɡ"; //g
    table[117] = "q"; //q
    table[116] = "ɢ"; //G
    table[115] = "ʔ"; //?
    
    //Nasals
    table[114] = "m"; //m
    table[113] = "ɱ"; //m,
    table[112] = "n"; //n
    table[111] = "ɳ"; //n.
    table[110] = "ɲ"; //,n
    table[109] = "ŋ"; //n,
    table[108] = "ɴ"; //N
    
    //Trills
    table[107] = "ʙ"; //B
    table[106] = "r"; //r
    table[105] = "ʀ"; //R
    
    //Taps/Flaps
    table[104] = "ⱱ"; //v'
    table[103] = "ɾ"; ///r
    table[102] = "ɽ"; //.r
    
    //Fricatives
    table[101] = "ɸ"; //phi
    table[100] = "β"; //beta
    table[ 99] = "f"; //f
    table[ 98] = "v"; //v
    table[ 97] = "θ"; //theta
    table[ 96] = "ð"; //eth
    table[ 95] = "s"; //s
    table[ 94] = "z"; //z
    table[ 93] = "ʃ"; //esh
    table[ 92] = "ʒ"; //ezh
    table[ 91] = "ʂ"; //.s
    table[ 90] = "ʐ"; //z.
    table[ 89] = "ç"; //c,
    table[ 88] = "ʝ"; //j,
    table[ 87] = "x"; //x
    table[ 86] = "ɣ"; //.y
    table[ 85] = "χ"; //X
    table[ 84] = "ʁ"; //R|
    table[ 83] = "ħ"; //h-
    table[ 82] = "ʕ"; //?|
    table[ 81] = "h"; //h
    table[ 80] = "ɦ"; //h'
    
    //Lateral Fricatives
    table[ 79] = "ɬ"; //l-
    table[ 78] = "ɮ"; //lezh
    
    table[ 77] = "\u0361" ; //tie above (should have been by Other Symbols)
    
    //Approximants
    table[ 76] = "ʋ"; //vu
    table[ 75] = "ɹ"; //r|
    table[ 74] = "ɻ"; //r|.
    table[ 73] = "j"; //j
    table[ 72] = "ɰ"; //m|.
    
    //Lateral Approximants
    table[ 71] = "l"; //l
    table[ 70] = "ɭ"; //l.
    table[ 69] = "ʎ"; //y|
    table[ 68] = "ʟ"; //L
    
    
    //Non-Pulmonic Consonants
    //Clicks
    table[ 67] = "ʘ"; //O.
    table[ 66] = "ǀ"; //|
    table[ 65] = "ǃ"; //!
    table[ 64] = "ǂ"; //|=
    table[ 63] = "ǁ"; //||
    
    //Voiced implosives
    table[ 62] = "ɓ"; //b'
    table[ 61] = "ɗ"; //d'
    table[ 60] = "ʄ"; //,f'
    table[ 59] = "ɠ"; //g'
    table[ 58] = "ʛ"; //G'
    
    //Ejectives
    table[ 57] = "ʼ"; //'
    
    
    //Other Symbols
    table[ 56] = "ʍ"; //w|
    table[ 55] = "w"; //w
    table[ 54] = "ɥ"; //h|
    table[ 53] = "ʜ"; //H
    table[ 52] = "ʢ"; //'?|-
    table[ 51] = "ʡ"; //?-
    table[ 50] = "ɕ"; //.c
    table[ 49] = "ʑ"; //.z
    table[ 48] = "ɺ"; //|r|
    table[ 47] = "ɧ"; //'h,
    
    
    //Vowels
    table[ 46] = "i"; //i
    table[ 45] = "y"; //y
    table[ 44] = "ɨ"; //i-
    table[ 43] = "ʉ"; //u-
    table[ 42] = "ɯ"; //m|
    table[ 41] = "u"; //u
    
    table[ 40] = "ɪ"; //I
    table[ 39] = "ʏ"; //Y
    table[ 38] = "ʊ"; //omega|
    
    table[ 37] = "e"; //e
    table[ 36] = "ø"; //o/
    table[ 35] = "ɘ"; //e|
    table[ 34] = "ɵ"; //o-
    table[ 33] = "ɤ"; //
    table[ 32] = "o"; //o
    
    table[ 31] = "ə"; //e||
    
    table[ 30] = "ɛ"; //epselon
    table[ 29] = "œ"; //oe
    table[ 28] = "ɜ"; //epselon|
    table[ 27] = "ɞ"; //(epselon
    table[ 26] = "ʌ"; //v|
    table[ 25] = "ɔ"; //c|
    
    table[ 24] = "æ"; //ae
    table[ 23] = "ɐ"; //a|
    
    table[ 22] = "a"; //a
    table[ 21] = "ɶ"; //OE
    table[ 20] = "ɑ"; //A
    table[ 19] = "ɒ"; //A|
    
    
    //Suprasegmentals
    table[ 18] = "ˈ"; //'
    table[ 17] = "ˌ"; //,
    table[ 16] = "ː"; //:
    table[ 15] = "ˑ"; //;
    table[ 14] = "\u0306"; //`'
    table[ 13] = "|"; //|
    table[ 12] = "‖"; //||
    table[ 11] = "."; //.
    table[ 10] = "\u035C"; //tie below
    
    
    //Tones and Word Accents
    table[  9] = "\u030B"; //''
    table[  8] = "\u0301"; //'
    table[  7] = "\u0304"; //-
    table[  6] = "\u0300"; //`
    table[  5] = "\u030F"; //``
    table[  4] = "\uA71C"; //\/
    table[  3] = "\uA71B"; //^
    
    table[  2] = "\u030C"; ///|
    table[  1] = "\u0302"; //\|
    table[  0] = "\u1DC4"; //-|
    table[128] = "\u1DC5"; //_|
    table[129] = "\u1DC8"; ///\|
    table[130] = "↗"; ///
    table[131] = "↘"; //\
    
    
    //Diacritics
    table[132] = "\u0325"; //o
    table[133] = "\u032C"; //\/
    table[134] = "\u02B0"; //h
    table[135] = "\u0339"; //,
    table[136] = "\u031C"; //.
    table[137] = "\u031F"; //+
    table[138] = "\u0320"; //_
    table[139] = "\u0308"; //..
    table[140] = "\u033D"; //x
    table[141] = "\u0329"; //,
    table[142] = "\u032F"; //,.
    table[143] = "\u02DE"; ///'
    
    table[144] = "\u0324"; //..
    table[145] = "\u0330"; //~
    table[146] = "\u033C"; //,..
    table[147] = "\u02B7"; //w
    table[148] = "\u02B2"; //j
    table[149] = "\u02E0"; //.y
    table[150] = "\u02E4"; //?|
    table[151] = "\u0334"; //~
    
    table[152] = "\u031D"; //_,
    table[153] = "\u031E"; //-,
    table[154] = "\u0318"; //-|
    table[155] = "\u0319"; //|-
    
    table[156] = "\u032A"; //|-|
    table[157] = "\u033A"; //|_|
    table[158] = "\u033B"; //|-_|
    table[159] = "\u0303"; //~
    table[160] = "\u207F"; //n
    table[161] = "\u02E1"; //l
    table[162] = "\u031A"; //-|
    table[163] = "ɫ"; //l~
  }
}
