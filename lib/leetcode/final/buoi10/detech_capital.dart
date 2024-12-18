void main() {
  print(detectCapital('USA'));
}

bool detectCapital(String word) {
  if (word.length < 0 || word.length > 100) {
    return false;
  }
  for (int i = 0; i < word.length; i++) {
    if (word[i] != word[i].toUpperCase()) {
      return false;
    }
    if ((word[i].codeUnits[0] < 65 || word[i].codeUnits[0] > 90) &&
        (word.codeUnits[0] < 97 || word.codeUnits[0] > 122)) {
      return false;
    }
  }
  return true;
}
