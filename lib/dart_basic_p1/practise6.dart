import 'dart:developer';

bool isCheck(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int n = 20;
  List<int> arr = [];
  for (int i = 2; i <= n; i++) {
    if (isCheck(i)) {
      arr.add(i);
    }
  }
  log("Các số nguyên tố nhỏ hơn hoặc bằng $n là: $arr");
}
