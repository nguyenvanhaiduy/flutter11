import 'dart:developer';

void main() {
  List<int> sums = [];
  var lable = StringBuffer();
  var result = StringBuffer();
  var result1 = StringBuffer();

  for (int i = 0; i < 9; i++) {
    lable.write('--- $i ---     ');
  }
  log('$lable');

  for (int i = 1; i < 10; i++) {
    var hori = StringBuffer();
    int sum = 0;
    for (int j = 1; j < 10; j++) {
      // horizontal
      if ((i * j) >= 10) {
        hori.write('$j x $i = ${j * i}    ');
      } else {
        hori.write('$j x $i = ${j * i}     ');
      }
      sum += (j * i);
      // vertical
      if (j == 9) {
        result1.write('$i x $j = ${i * j}\n\n\n');
        break;
      }
      result1.write('$i x $j = ${i * j}\n');
    }
    log('$hori');
    sums.add(sum);
  }

  for (int i = 0; i < sums.length; i++) {
    if (i == 0) {
      result.write(' ----- ${sums[i]}      ');
    } else {
      result.write(' ----- ${sums[i]}    ');
    }
  }

  log('$result');
  log('$result1');
}
