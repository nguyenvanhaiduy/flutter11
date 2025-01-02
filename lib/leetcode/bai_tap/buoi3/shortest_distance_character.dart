void main() {
  print(shortestDistanceCharacter('loveleetcode', 'e'));
}

List<int> shortestDistanceCharacter(String str, String c) {
  int tmp;
  List<int> tmpIndex = [];
  for (int i = 0; i < str.length; i++) {
    if (c == str[i]) {
      tmpIndex.add(i);
    }
  }
  List<int> indexArr = [];
  for (int i = 0; i < str.length; i++) {
    tmp = (i - tmpIndex[0]);
    for (var element in tmpIndex) {
      if ((i - element).abs() < tmp) {
        tmp = (i - element).abs();
      }
    }
    indexArr.add(tmp.abs());
  }
  return indexArr;
}
