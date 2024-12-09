void main() {
  print(countOfMatch(14));
}

int countOfMatch(int n) {
  if (n <= 1) {
    return 0;
  }
  if (n % 2 == 0) {
    return n ~/ 2 + countOfMatch(n ~/ 2);
  } else {
    return n ~/ 2 + 1 + countOfMatch(n ~/ 2);
  }
}
