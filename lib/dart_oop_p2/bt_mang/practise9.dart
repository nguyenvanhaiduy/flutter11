import 'dart:math';
import 'dart:developer' as developer;

void findMinMax(List<int> arr, {int k = 3}) {
  if (arr.length < k) {
    developer.log('Mảng phải có tối thiểu $k phần tử');
    return;
  }
  List<int> arrMin = [2147483647, 2147483647, 2147483647];
  List<int> arrMax = [-2147483648, -2147483648, -2147483648];
  for (var number in arr) {
    for (int i = 0; i < k; i++) {
      if (arrMin[i] > number) {
        arrMin.insert(i, number);
        arrMin.removeLast();
        break;
      }
    }

    for (int i = 0; i < k; i++) {
      if (arrMax[i] < number) {
        arrMax.insert(i, number);
        arrMax.removeLast();
        break;
      }
    }
  }
  for (int i = 0; i < k; i++) {
    developer.log('GTNN top ${i + 1}: ${arrMin[i]}');
  }
  developer.log('------------------');
  for (int i = 0; i < k; i++) {
    developer.log('GTLN top ${i + 1}: ${arrMax[i]}');
  }
}

void main() {
  List<int> arr = List.generate(10, (index) => Random().nextInt(100));
  developer.log('$arr');
  findMinMax(arr);
}
