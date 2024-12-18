void main() {
  print(happyNumber(19));
}

bool happyNumber(int n) {
  int sum = 0;

  while (n > 0) {
    sum += (n % 10) * (n % 10);
    n ~/= 10;
    if (n <= 0) {
      if (sum >= 10) {
        n = sum;
        sum = 0;
      }
    }
  }
  if (sum == 1) return true;
  return false;
}
