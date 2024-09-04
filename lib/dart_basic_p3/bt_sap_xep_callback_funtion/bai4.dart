import 'dart:math';

void main() {
  final numbers = List.generate(
    10,
    (index) => {Random().nextInt(100)},
  );
  List<int> arr = [];
  for (var element in numbers) {
    arr.addAll(element);
  }

  print(arr);
  sapXepTangDan(arr, arr.length);

  print(arr);
}

void sapXepTangDan(List<int> arr, int n) {
  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (arr[i] > arr[j]) {
        int a = arr[i];
        arr[i] = arr[j];
        arr[j] = a;
      }
    }
  }
}
