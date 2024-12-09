import 'dart:math';

void main() {
  print(powerOfFour(16));
}

bool powerOfFour(int n) {
  for (int i = 1; i <= sqrt(n); i++) {
    if ((i * i * i * i) == n) {
      return true;
    }
  }
  return false;
}
