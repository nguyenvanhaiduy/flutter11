typedef FunctionTest = String Function(String input, int d, int e, double c);

void test(FunctionTest a) {
  String reuslt = a('aaa', 1, 2, 3);
  print('result -> $reuslt');
}

void main() {
  test((input, d, e, c) => '100');
}

// void main() {
//   // for (int i = 0; i < 10; i++) {
//   //   if (i == 2 || i == 3) {
//   //     continue;
//   //   }
//   //   print('i = $i');

//   //   if (i == 3) break;
//   // }
//   // final arrs = [0, 1, 2, 3, 4, 5];
//   // arrs.forEach((element) {
//   //   print('foreach item = $element');
//   // });

//   // for (var element in arrs) {
//   //   print('foreach item = $element');
//   // }

//   // List<DayOfWeeks> dayOfWeeks = DayOfWeeks.values;
//   // dayOfWeeks.forEach((element) {
//   //   print(
//   //       'Day is: ${element.getVnName()}, ${element.displayName}, ${element.value}');
//   // });

//   // int a = 10;
//   // try {
//   //   a = int.parse('hello');
//   //   print('a = $a');
//   // } catch (ex) {
//   //   print('Exception: ${ex.toString()}');
//   // } finally {
//   //   print('finally');
//   // }

//   // try {
//   //   a = int.parse('source');
//   // } on FormatException {
//   //   print('FormatException');
//   // } on SocketException {
//   //   print('SocketException');
//   // }

//   // try {
//   //   checkANumber(10);
//   // } catch (ex) {
//   //   print(ex);
//   // }
//   checkANumberWithAssert(19);

//   (int, int) swap((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }

//   (int, int) addValue((int, int) record, int value) {
//     var (a, b) = record;
//     return (b + value, a + value);
//   }

//   print(swap((10, 2)));
//   print(addValue((10, 2), 10));

//   // ((int a, int b))

// }

void checkANumberWithAssert(int number) {
  assert(number > 10, 'number must > 10');
}

enum DayOfWeeks {
  Monday(1, 'Monday'),
  Tuesday(2, 'Tuesday'),
  Wednesday(3, 'Wednesday'),
  Thirday(4, 'Thirday'),
  Friday(5, 'Friday'),
  Saturday(6, 'Saturday'),
  Sunday(0, 'Sunday'),
  ;

  const DayOfWeeks(this.value, this.displayName);

  final int value;
  final String displayName;
}

extension DayOfWeekExt on DayOfWeeks {
  String getVnName() {
    switch (this) {
      case DayOfWeeks.Monday:
        return 'Thứ 2';
      case DayOfWeeks.Tuesday:
        return 'Thứ 3';
      case DayOfWeeks.Wednesday:
        return 'Thứ 4';
      case DayOfWeeks.Thirday:
        return 'Thứ 5';
      case DayOfWeeks.Friday:
        return 'Thứ 6';
      case DayOfWeeks.Saturday:
        return 'Thứ 7';
      case DayOfWeeks.Sunday:
        return 'Chủ nhật';
      default:
        return 'Không xác định';
    }
  }
}

// void checkANumber({int? number}) {
// if (number = null || number <= 0){
// throw Exception ("number must >= 0");
// print ("number is $number");
// ｝
// try checkANumber ();
// ｝
// catch (ex) 1}
// print( 'object');

void checkANumber(int? number) {
  if (number == null || number <= 0) {
    throw Exception('number must >= 0');
  }
  print('number of is: $number');
}
