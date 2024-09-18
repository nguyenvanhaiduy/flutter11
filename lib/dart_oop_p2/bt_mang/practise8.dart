// import 'dart:math';
import 'dart:math';
import 'dart:developer' as developer;

void main() {
  // p1
  final random = Random();
  final List<int> arr = List.generate(10, (_) => random.nextInt(100));
  developer.log('$arr');
  developer.log('Giá trị trung bình của mảng trên là: ${averageOfList(arr)}');
  // p2
  findMinMax(arr);
  // p3
  final List<int> arr1 = [1, 2, 3, 1, 2];
  final counts = countOccurrences(arr1);
  counts.forEach((key, value) {
    developer.log('$key: $value lần');
  });
  // p3
  countOddEven(arr);
}

double averageOfList(List<int> arr) {
  int length = arr.length;
  return arr.reduce((sum, element) => (sum + element)) / length;
}

void findMinMax(List<int> arr) {
  if (arr.isEmpty) {
    developer.log('arr is empty');
    return;
  }
  int min = arr[0];
  int max = arr[0];
  for (var number in arr) {
    if (number < min) min = number;
    if (number > max) max = number;
  }
  developer.log('Giá trị lớn nhất của mảng trên là: $max');
  developer.log('Giá trị nhỏ nhất của mảng trên là: $min');
}

Map<int, int> countOccurrences(List<int> arr) {
  Map<int, int> counts = {};
  for (var number in arr) {
    counts[number] = (counts[number] ?? 0) + 1;
  }
  return counts;
}

void countOddEven(List<int> arr) {
  Map<String, int> oddEven = {'Số chẵn': 0, 'Số lẻ': 0};
  int even = 0;
  for (var element in arr) {
    if (element % 2 == 0) oddEven['Số chẵn'] = ++even;
  }
  oddEven['Số lẻ'] = arr.length - oddEven['Số chẵn']!;
  oddEven.forEach((key, value) {
    developer.log('$key : $value');
  });
}
