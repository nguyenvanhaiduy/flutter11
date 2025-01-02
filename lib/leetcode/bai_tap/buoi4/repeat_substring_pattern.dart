void main() {
  print(repeatSubString('abab'));
  print(repeatSubString("abcabcabcabc"));
  print(repeatSubString("abaababaab"));
}

bool repeatSubString(String s) {
  if (s.length < 2) return false;
  int cnt = 0;
  for (int i = 0; i < s.length - 1; i++) {
    if (s[i] != s[i + 1]) {
      cnt++;
    }
  }
  if (cnt == 0) return true;
  for (int len = s.length ~/ 2; len > 1; len--) {
    if (s.length % len == 0) {
      final sub = s.substring(0, len);
      final result = sub * (s.length ~/ len);
      if (result == s) {
        return true;
      }
    }
  }
  return false;
}
