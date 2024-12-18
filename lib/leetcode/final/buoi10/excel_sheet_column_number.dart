void main() {
  print(excelNumber('FXSHRXW'));
}

const List<String> str = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];
int excelNumber(String s) {
  int result = 0;
  for (int i = 0; i < s.length; i++) {
    int value = str.indexOf(s[i]) + 1;
    result = result * 26 + value;
  }
  return result;
}
