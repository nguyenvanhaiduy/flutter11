import 'dart:developer';

String result = '';

void textField({required String text, Function(String)? onChanged}) {
  if (onChanged != null) {
    result = 'Hello $text';
    onChanged(text);
  }
}

void main() {
  textField(
    text: 'world',
    onChanged: (text) {
      log('Ký tự người dùng nhập vào: $text');
    },
  );
  log(result);
}
/* 
  nhập dữ liệu vào textField -> hàm nhận dữ liệu và kiểm tra xem onChanged có được truyền vào không 
  -> onchanged != null thì dữ liệu được cập nhật -> in ra dữ liệu
 */