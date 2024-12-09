void main() {
  print(largestOddNum('4206'));
}

String largestOddNum(String n) {
  int nString = int.parse(n);

  while (nString > 0) {
    if (nString % 2 != 0) {
      return nString.toString();
    }
    nString ~/= 10;
  }
  return '';
}
