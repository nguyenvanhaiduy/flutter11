import 'dart:async';
import 'dart:developer';

void timePeriodic({required int second, required Function(int) callback}) {
  int countSecond = 0;
  Timer.periodic(Duration(seconds: second), (timer) {
    callback(countSecond);
    countSecond++;
  });
}

void main() {
  timePeriodic(
    second: 1,
    callback: (second) {
      log('Đã trôi qua $second giây');
    },
  );
}
