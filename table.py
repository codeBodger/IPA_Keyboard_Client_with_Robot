TABLE = [None] * 164
  
# Pulmonic Consonats
# Plosives
TABLE[127] = 'p' # p
TABLE[126] = 'b' # b
TABLE[125] = 't' # t
TABLE[124] = 'd' # d
TABLE[123] = 'ʈ' # t.
TABLE[122] = 'ɖ' # d.
TABLE[121] = 'c' # c
TABLE[120] = 'ɟ' # J-
TABLE[119] = 'k' # k
TABLE[118] = 'ɡ' # g
TABLE[117] = 'q' # q
TABLE[116] = 'ɢ' # G
TABLE[115] = 'ʔ' # ?

# Nasals
TABLE[114] = 'm' # m
TABLE[113] = 'ɱ' # m,
TABLE[112] = 'n' # n
TABLE[111] = 'ɳ' # n.
TABLE[110] = 'ɲ' # ,n
TABLE[109] = 'ŋ' # n,
TABLE[108] = 'ɴ' # N

# Trills
TABLE[107] = 'ʙ' # B
TABLE[106] = 'r' # r
TABLE[105] = 'ʀ' # R

# Taps/Flaps
TABLE[104] = 'ⱱ' # v'
TABLE[103] = 'ɾ' # /r
TABLE[102] = 'ɽ' # .r

# Fricatives
TABLE[101] = 'ɸ' # phi
TABLE[100] = 'β' # beta
TABLE[ 99] = 'f' # f
TABLE[ 98] = 'v' # v
TABLE[ 97] = 'θ' # theta
TABLE[ 96] = 'ð' # eth
TABLE[ 95] = 's' # s
TABLE[ 94] = 'z' # z
TABLE[ 93] = 'ʃ' # esh
TABLE[ 92] = 'ʒ' # ezh
TABLE[ 91] = 'ʂ' # .s
TABLE[ 90] = 'ʐ' # z.
TABLE[ 89] = 'ç' # c,
TABLE[ 88] = 'ʝ' # j,
TABLE[ 87] = 'x' # x
TABLE[ 86] = 'ɣ' # .y
TABLE[ 85] = 'χ' # X
TABLE[ 84] = 'ʁ' # R|
TABLE[ 83] = 'ħ' # h-
TABLE[ 82] = 'ʕ' # ?|
TABLE[ 81] = 'h' # h
TABLE[ 80] = 'ɦ' # h'

# Lateral Fricatives
TABLE[ 79] = 'ɬ' # l-
TABLE[ 78] = 'ɮ' # lezh

TABLE[ 77] = '\u0361'  # tie above (should have been by Other Symbols)

# Approximants
TABLE[ 76] = 'ʋ' # vu
TABLE[ 75] = 'ɹ' # r|
TABLE[ 74] = 'ɻ' # r|.
TABLE[ 73] = 'j' # j
TABLE[ 72] = 'ɰ' # m|.

# Lateral Approximants
TABLE[ 71] = 'l' # l
TABLE[ 70] = 'ɭ' # l.
TABLE[ 69] = 'ʎ' # y|
TABLE[ 68] = 'ʟ' # L


# Non-Pulmonic Consonants
# Clicks
TABLE[ 67] = 'ʘ' # O.
TABLE[ 66] = 'ǀ' # |
TABLE[ 65] = 'ǃ' # !
TABLE[ 64] = 'ǂ' # |=
TABLE[ 63] = 'ǁ' # ||

# Voiced implosives
TABLE[ 62] = 'ɓ' # b'
TABLE[ 61] = 'ɗ' # d'
TABLE[ 60] = 'ʄ' # ,f'
TABLE[ 59] = 'ɠ' # g'
TABLE[ 58] = 'ʛ' # G'

# Ejectives
TABLE[ 57] = 'ʼ' # '


# Other Symbols
TABLE[ 56] = 'ʍ' # w|
TABLE[ 55] = 'w' # w
TABLE[ 54] = 'ɥ' # h|
TABLE[ 53] = 'ʜ' # H
TABLE[ 52] = 'ʢ' # '?|-
TABLE[ 51] = 'ʡ' # ?-
TABLE[ 50] = 'ɕ' # .c
TABLE[ 49] = 'ʑ' # .z
TABLE[ 48] = 'ɺ' # |r|
TABLE[ 47] = 'ɧ' # 'h,


# Vowels
TABLE[ 46] = 'i' # i
TABLE[ 45] = 'y' # y
TABLE[ 44] = 'ɨ' # i-
TABLE[ 43] = 'ʉ' # u-
TABLE[ 42] = 'ɯ' # m|
TABLE[ 41] = 'u' # u

TABLE[ 40] = 'ɪ' # I
TABLE[ 39] = 'ʏ' # Y
TABLE[ 38] = 'ʊ' # omega|

TABLE[ 37] = 'e' # e
TABLE[ 36] = 'ø' # o/
TABLE[ 35] = 'ɘ' # e|
TABLE[ 34] = 'ɵ' # o-
TABLE[ 33] = 'ɤ' # 
TABLE[ 32] = 'o' # o

TABLE[ 31] = 'ə' # e||

TABLE[ 30] = 'ɛ' # epselon
TABLE[ 29] = 'œ' # oe
TABLE[ 28] = 'ɜ' # epselon|
TABLE[ 27] = 'ɞ' # (epselon
TABLE[ 26] = 'ʌ' # v|
TABLE[ 25] = 'ɔ' # c|  

TABLE[ 24] = 'æ' # ae
TABLE[ 23] = 'ɐ' # a|

TABLE[ 22] = 'a' # a
TABLE[ 21] = 'ɶ' # OE
TABLE[ 20] = 'ɑ' # A
TABLE[ 19] = 'ɒ' # A|


# Suprasegmentals
TABLE[ 18] = 'ˈ' # '
TABLE[ 17] = 'ˌ' # ,
TABLE[ 16] = 'ː' # :
TABLE[ 15] = 'ˑ' # 
TABLE[ 14] = '\u0306' # `'
TABLE[ 13] = '|' # |
TABLE[ 12] = '‖' # ||
TABLE[ 11] = '.' # .
TABLE[ 10] = '\u035C' # tie below


# Tones and Word Accents
TABLE[  9] = '\u030B' # ''
TABLE[  8] = '\u0301' # '
TABLE[  7] = '\u0304' # -
TABLE[  6] = '\u0300' # `
TABLE[  5] = '\u030F' # ``
TABLE[  4] = '\uA71C' # \/
TABLE[  3] = '\uA71B' # ^

TABLE[  2] = '\u030C' # /|
TABLE[  1] = '\u0302' # \|
TABLE[  0] = '\u1DC4' # -|
TABLE[128] = '\u1DC5' # _|
TABLE[129] = '\u1DC8' # /\|
TABLE[130] = '↗' # /
TABLE[131] = '↘' # \

# Diacritics
TABLE[132] = '\u0325' # o
TABLE[133] = '\u032C' # \/
TABLE[134] = '\u02B0' # h
TABLE[135] = '\u0339' # ,
TABLE[136] = '\u031C' # .
TABLE[137] = '\u031F' # +
TABLE[138] = '\u0320' # _
TABLE[139] = '\u0308' # ..
TABLE[140] = '\u033D' # x
TABLE[141] = '\u0329' # ,
TABLE[142] = '\u032F' # ,.
TABLE[143] = '\u02DE' # /'

TABLE[144] = '\u0324' # ..
TABLE[145] = '\u0330' # ~
TABLE[146] = '\u033C' # ,..
TABLE[147] = '\u02B7' # w
TABLE[148] = '\u02B2' # j
TABLE[149] = '\u02E0' # .y
TABLE[150] = '\u02E4' # ?|
TABLE[151] = '\u0334' # ~

TABLE[152] = '\u031D' # _,
TABLE[153] = '\u031E' # -,
TABLE[154] = '\u0318' # -|
TABLE[155] = '\u0319' # |-

TABLE[156] = '\u032A' # |-|
TABLE[157] = '\u033A' # |_|
TABLE[158] = '\u033B' # |-_|
TABLE[159] = '\u0303' # ~
TABLE[160] = '\u207F' # n
TABLE[161] = '\u02E1' # l
TABLE[162] = '\u031A' # -|
TABLE[163] = 'ɫ' # l~
