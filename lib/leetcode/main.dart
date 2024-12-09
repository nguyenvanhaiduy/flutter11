import 'dart:math';

class Modul1 {
  final int value;
  Modul1({this.value = 4});

  bool soChinhPhuong() {
    int a = sqrt(value).toInt();
    double b = sqrt(value);
    return a.toDouble() == b;
  }

  bool c2() {
    for (int i = 1; i <= sqrt(value); i++) {
      if ((i * i) == value) {
        return true;
      }
    }
    return false;
  }
}

int test(int a) {
  int sum = 0;
  while (a > 0) {
    int b = a % 10;
    sum = sum + b;
    a = a ~/ 10;
  }
  return sum;
}

main() {
  print(test(03));
}
