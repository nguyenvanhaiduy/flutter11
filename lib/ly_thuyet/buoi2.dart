//                                String

import 'dart:developer';

void hocString() {
  String s = 'hello world';

  String s2 = '''
    hello world
    hello world
    hello world  ad
    ''';

  String s3 = 'Hello world';
  List<String> splittedStrs = s3.split(' ');

  print('splittedStrs -> $splittedStrs');

  bool hasWorldStr = s3.contains('world');
  print("hasWorldStr -> $hasWorldStr");

  // cach dat ten
  String bienHomNayToiDiHoc = "Hom nay toi di hoc";
  print(bienHomNayToiDiHoc);

  // toUpperCase(), toLowerCase(), indexOf()
  String sUppderCase = s.toUpperCase();
  String sToLowerCase = s.toLowerCase();
  int sIndexOf = s.indexOf('o');

  print('sUppderCase -> $sUppderCase');
  print('sToLowerCase -> $sToLowerCase');
  print('sIndexOf -> $sIndexOf');

  // startWith(), replaceAll(), trim()
  String s1 = "  hello world ";
  bool sStartWith = s1.startsWith('h');
  String sReplaceAll = s1.replaceAll('world', 'everyone');
  String sTrimed = s1.trim();
  print('sStartWith -> $sStartWith');
  print('sReplaceAll -> $sReplaceAll');
  print('sTrimed -> $sTrimed');

  // option + chuot tao nhieu con tro
}

//                                int, double
void hocIntDouble() {
  int a = 10;
  int b = -10;

  double c = 10;
  double d = -10.0;

  String _aStr = a.toString();
  double aDouble = a.toDouble();

  int _resultInt = (a + b + c + d + 0.8).toInt();
  double _resultDouble = (a + b + c + d + 10);
  int dInt = d.toInt();

  print('_resultInt = $_resultInt');
  print('_resultDouble = $_resultDouble');
  print('_aStr -> $_aStr');
  print('a -> $a');
  print('aDouble -> $aDouble');
  print('dInt -> $dInt');

  String k = '20';
  int cInt = int.parse(k);
  double cDouble = double.parse(k);

  print('Parse String c to int $cInt');
  print('Parse String c to double $cDouble');
}

void hocBool() {
  bool a = true;
  bool b = false;
  if (a) {
    /// các viết tắt khi so sánh bool == true
    print("a is $a"); // sẽ in ra: a is true
  }
  if (a == true) {
    /// viết kiểu này rõ nghĩa hơn
    print("a == true"); // sẽ in ra: a == true
  }
  if (!b) {
    /// cách viết tắt khi so sánh bool == false
    print("b is $b"); // sẽ in ra: b is false
  }
}

void hocArray() {
  List strs = [
    'a',
    'b',
    'c',
    0,
    true,
    [
      1,
      2,
      3,
      [true, false]
    ]
  ];
  List<String> strs_1 = <String>['a', 'b', 'c'];

  print(strs[5][3][0]);
  strs.add('d');
  print(strs);
  strs.addAll([10, 2, 4]);
  print(strs);
  strs.remove('d'); // remove theo gia tr
  print(strs);
  strs.removeAt(strs.indexOf(10)); // remove theo vi tri
  print(strs);
  strs.removeRange(2, 5);
  print(strs);

  List newList = strs.sublist(1); // lay tu phan tu so 1 tro di
  log('$newList');

  // strs.removeWhere((a) =);
}

void hocMap() {
  Map map = {"key": "value", "key1": "value123"};
  log('$map');

  Map map12 = {"homnay": "troimuaratto"};

  Map newMap = map12
    ..addAll({
      'other': 'alkdf'
    }); // can phai dung 2 cham vi de no lay du lieu giong phan dau
  Map map123 = {
    [1, 3, 4]: "abc"
  };
  log('$map123');

  map.addAll({'abc': "123"});
  log('$map');
  log(' tra ve tat ca key = ${map.keys}');
  log(' tra ve tat ca value = ${map.values}');
  log('$newMap');
}

void main() {
  // hocString();
  // hocIntDouble();
  // hocBool();
  // hocArray();
  hocMap();
}
