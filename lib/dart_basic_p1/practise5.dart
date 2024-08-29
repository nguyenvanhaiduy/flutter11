import 'dart:developer';

void main() {
  List<int> arr = [0, 1, 2, 3, 4, 23, 45, 69, 80];
  List<int> arrLe = [];
  List<int> arrChan = [];

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      arrChan.add(arr[i]);
    } else {
      arrLe.add(arr[i]);
    }
  }
  log('Mảng số chẵn: $arrChan');
  log('Mảng số lẻ: $arrLe');

  if (0 % 2 == 0) {
    log('0 là số chẵn');
  } else {
    log('0 là số lẻ');
  }
}
