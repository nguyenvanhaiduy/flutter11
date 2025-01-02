void main() {
  print(backspaceStringCompare("ab##", "c#d#"));
}

bool backspaceStringCompare(String s, String t) {
  String newS = deleteString(s);
  String newT = deleteString(t);

  print(newS + newT);
  if (newS == newT) {
    return true;
  }
  return false;
}

String deleteString(String s) {
  final newS = [];
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '#') {
      if (newS.isNotEmpty) {
        newS.removeLast();
      }
    } else {
      newS.add(s[i]);
    }
  }
  return newS.join('');
}
