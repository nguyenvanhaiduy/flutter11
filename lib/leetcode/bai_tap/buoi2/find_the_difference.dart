void main() {
  print(findTheDifference('abc', 'ckba'));
}

String? findTheDifference(String s, String t) {
  RegExp regExp = RegExp(r'^[a-z A-Z]+[a-z A-Z]$');

  if (s.length <= 1000 && t.length == s.length + 1 && regExp.hasMatch(t)) {
    final sList = s.runes.map((e) => String.fromCharCode(e)).toList()..sort();
    final tList = t.runes.map((e) => String.fromCharCode(e)).toList()..sort();
    for (var i = 0; i < sList.length; i++) {
      if (sList[i] != tList[i]) {
        return tList[i];
      }
    }
    return tList.last;
  }
  return null;
}
