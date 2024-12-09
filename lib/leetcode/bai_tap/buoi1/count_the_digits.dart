void main() {
  print(countTheDigits(123));
}

int countTheDigits(int n) {
  int tmp = n;
  int result = 0;
  while (n > 0) {
    int x = n % 10;
    if (tmp % x == 0) {
      result++;
    }
    n ~/= 10;
  }

  return result;
}
