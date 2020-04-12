String removeTildes(String str) {
  var conTildes = [
    'á',
    'é',
    'í',
    'ó',
    'ú',
    'ü',
    'ñ',
    'Á',
    'É',
    'Í',
    'Ó',
    'Ú',
    'Ü',
    'Ñ'
  ];
  var sinTildes = [
    'a',
    'e',
    'i',
    'o',
    'u',
    'u',
    'n',
    'A',
    'E',
    'I',
    'O',
    'U',
    'U',
    'N'
  ];

  for (var i = 0; i < conTildes.length; i++) {
    str = str.replaceAll(conTildes[i], sinTildes[i]);
  }

  return str;
}
