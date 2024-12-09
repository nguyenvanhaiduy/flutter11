void main() {
  // print(sdx(11111));

  // print(niceNum(12211));

  print(greater(8));
}

bool sdx(int n) {
  List<String> results = n.toString().split('');
  for (int i = 0; i < results.length / 2; i++) {
    int j = results.length - 1 - i;
    if (results[i] != results[j]) {
      return false;
    }
  }
  return true;
}

String niceNum(int n) {
  int soChan = 0;
  int soLe = 0;
  while (n > 0) {
    if (n % 2 == 0) {
      soChan++;
    } else {
      soLe++;
    }
    n = n ~/ 10;
  }
  if (soLe == soChan) {
    return 'YES';
  }
  return 'NO';
}

bool greater(int n) {
  if (n <= 0) {
    return false;
  }

  while (true) {
    if (n % 2 == 0) {
      n = n ~/ 2;
    } else if (n % 3 == 0) {
      n = n ~/ 3;
    } else if (n % 5 == 0) {
      n = n ~/ 5;
    } else if (n % 7 == 0) {
      n = n ~/ 7;
    } else {
      return false;
    }

    if (n == 1) {
      return true;
    }
  }
}
