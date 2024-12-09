import 'dart:math';

bool isValidNumber(int number) {
  for (int i = 1; i <= sqrt(number); i++) {
    if (i * i == number) {
      return true;
    }
  }
  return false;
}

void main() {
  List<int> arr = [1, 2, 3, 4];
  int sum = 0;
  arr.map((e) {
    if (isValidNumber(e)) {
      sum += e;
    }
  });
  print(sum);
}
