void main() {
  print(lengthOfLastWord('helloa w'));
}

int? lengthOfLastWord(String s) {
  if (s.length <= 104) {
    List<String> sList = s.split(' ');
    return sList.last.length;
  }
  return null;
}
