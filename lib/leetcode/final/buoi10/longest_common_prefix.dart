void main() {
  print(longestCm(['str', 'str', 'str']));
}

String longestCm(List<String> str) {
  String result = '';
  int minlength = 200;

  for (var i = 0; i < str.length; i++) {
    if (str[i].length < minlength) {
      minlength = str[i].length;
    }
  }
  // print(minlength);
  for (int i = 0; i < minlength; i++) {
    String tmp1 = str[0][i];
    int count = 0;
    for (int j = 0; j < str.length; j++) {
      if (tmp1 == str[j][i]) {
        count++;
      }
    }
    if (count == str.length) {
      result += tmp1;
    }
  }
  return result;
}
