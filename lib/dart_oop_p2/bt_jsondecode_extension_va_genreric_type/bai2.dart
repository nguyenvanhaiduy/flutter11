import 'dart:developer';

void swap(List arr, int index1, int index2) {
  if (index1 >= arr.length ||
      index2 >= arr.length ||
      index1 < 0 ||
      index2 < 0) {
    log('vị trí không hợp lệ');
  } else {
    var tmp = arr[index1];
    arr[index1] = arr[index2];
    arr[index2] = tmp;
  }
}

void main(List<String> args) {
  List<String> arr = ['a', 'b', 'c', 'd', 'e'];
  // List<int> arr = [1, 2, 3, 4, 5];
  log('$arr');
  swap(arr, 0, 10);
  log('$arr');
}
