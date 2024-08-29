// import 'dart:developer';

// void main() {
//   // int a = 10;
//   // int b = 10;
//   // log('$a + $b = ${result(a, b)}');

//   // diToiCua(
//   //   () {
//   //     log('re trai  thanh cong');
//   //   },
//   //   (a) => log('re phai  thanh cong = $a'),
//   // );

//   // funtionWithOptionPara(b: 'day khong phai b', a: 'day khong phai a');
//   const con = 10; // mac dinh la 10 khong the thay doi
//   final fin = 'b'; // co san khong can khoi tao moi co
// }

// int result(int a, int b) {
//   return a + b;
// }

// void diToiCua(Function reTrai, Function(int a) rePhai) {
//   reTrai();
//   rePhai(10);
// }

// // void reTrai() {
// //   print('re trai  thanh cong');
// // }

// // void rephai(int a) {
// //   print('re phai  thanh cong = $a');
// // }

// void funtionWithOptionPara({String a = 'a', String b = 'b'}) {
//   log('params a = $a, b=$b');
// }

void test({String? param}) {
  print(param);
  param?.toUpperCase(); // nếu khác nulll thì chạy
  //  param!.toUpperCase(); // m sẽ phải khác nulll , nếu băng nulll thì lỗi;
}

void test1({required String param}) {
  print(param);
}

void test2({String param = 'default'}) {
  print(param);
}

void main() {
  test();
  test1(param: '');
}
