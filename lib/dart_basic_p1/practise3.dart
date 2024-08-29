import 'dart:developer';

void main() {
  // Non-Nullable Types
  int age = 21;
  String name = 'Duy';
  double height = 1.7;
  bool isStudent = true;
  log('________________________________Non-Nullable Types________________________________');
  log(kieuDuLieu(age));
  log(kieuDuLieu(name));
  log(kieuDuLieu(height));
  log(kieuDuLieu(isStudent));

  // Nullable Type
  log('__________________________________Nullable Types__________________________________');
  int? nullableAge;
  String? nullableName;
  double? nullableHeight;
  log(kieuDuLieu(nullableAge));
  log(kieuDuLieu(nullableName));
  log(kieuDuLieu(nullableHeight));

  // dynamic type
  log('___________________________________Dynamic Types__________________________________');
  dynamic d = 2003;
  log(kieuDuLieu(d));
  d = '2003';
  log(kieuDuLieu(d));

  // var type
  log('____________________________________Var Types____________________________________');
  var test = 'hdi';
  log(kieuDuLieu(test));

  // static int staticCount = 0;//Can't have modifier 'static' here.
  // staticCount++;

  final int a = 5;

  late int b;
  b = 10;

  const double pi = 3.14;

  log('____________________________________Giai Thừa____________________________________');
  log('Giai thừa của $a = ${practice3Ba(a)}');
  log('Giai thừa của $b = ${practice3BaDeQuy(b)}');

  log('___________________Chuyển đổi qua lại giữa string, int, double___________________');
  String t1 = '1.7a';
  log('Chuyển $age từ int qua String: ${tuIntQuaString(age)}');
  log('Chuyển $height từ double qua String: ${tuDoubleQuaString(height)}');

  double? test2 = tuStringQuaDouble(t1);
  if (test2 != null) {
    log('Chuyển $t1 từ String qua double: ${tuStringQuaDouble(t1)}');
  } else {
    log('Gia tri chuyen doi khong hop le');
  }

  String t = '1';
  int? test1 = tuStringQuaInt(t);
  if (test1 != null) {
    log('Chuyển $t từ String qua int: ${tuStringQuaInt(t)}');
  } else {
    log('Gia tri chuyen doi khong hop le');
  }

  double number = 5.2;
  log('Chuyển $number từ double qua int: ${tuDoubleQuaInt(number)}');

  int number1 = 5;
  log('Chuyển $number1 từ int qua double: ${tuIntQuaDouble(number1)}');
}

// 3: Viết 1 hàm tính giai thừa của 6.
int practice3Ba(int a) {
  int result = 1;
  for (int i = 1; i <= a; i++) result *= i;
  return result;
}

int practice3BaDeQuy(int a) {
  if (a <= 1) return 1;
  return a * practice3BaDeQuy(a - 1);
}

// 4: Viết các hàm chuyển đổi qua lại giữa string, int, double.
String tuIntQuaString(int input) => input.toString();
String tuDoubleQuaString(double input) => input.toString();

double? tuStringQuaDouble(String input) => double.tryParse(input);
int? tuStringQuaInt(String input) => int.tryParse(input);

int tuDoubleQuaInt(double input) => input.toInt();
double tuIntQuaDouble(int input) => input.toDouble(); //=)))

dynamic kieuDuLieu(dynamic a) => '$a la kieu du lieu ${a.runtimeType}';
