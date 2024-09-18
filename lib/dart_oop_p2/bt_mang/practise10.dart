import 'dart:developer';

void main() {
  List<int> sums = [];
  var lable = StringBuffer();
  for (int i = 0; i < 9; i++) {
    lable.write('--- $i ---     ');
  }
  log('$lable');
  for (int i = 1; i < 10; i++) {
    String a = '';
    int sum = 0;
    for (int j = 1; j < 10; j++) {
      if ((i * j) >= 10) {
        a += '$j x $i = ${j * i}    ';
      } else {
        a += '$j x $i = ${j * i}     ';
      }
      sum += (j * i);
    }
    log(a);
    sums.add(sum);
  }
  var result = StringBuffer();
  for (int i = 0; i < sums.length; i++) {
    if (i == 0) {
      result.write(' ----- ${sums[i]}      ');
    } else {
      result.write(' ----- ${sums[i]}    ');
    }
  }
  log('$result');
}

  // a.write(' ----- ${sums[0]}      ');
  // a.write(' ----- ${sums[1]}    ');
  // a.write(' ----- ${sums[2]}    ');
  // a.write(' ----- ${sums[3]}    ');
  // a.write(' ----- ${sums[4]}    ');
  // a.write(' ----- ${sums[5]}    ');
  // a.write(' ----- ${sums[6]}    ');
  // a.write(' ----- ${sums[7]}    ');
  // a.write(' ----- ${sums[8]}    ');