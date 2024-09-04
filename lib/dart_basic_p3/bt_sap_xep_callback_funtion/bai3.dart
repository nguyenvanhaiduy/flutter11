import 'dart:developer';

var number = 0;
void main() {
  buttonCount(number);
  log('number is $number');
}

void buttonCount(int number1) {
  number = number1 + 1;
}
