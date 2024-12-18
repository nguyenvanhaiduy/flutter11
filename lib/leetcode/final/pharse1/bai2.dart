void main() {
  List<List<int>> arr1 = [
    [1, 2],
    [1, 2],
  ];

  List<List<int>> arr2 = [
    [3, 2, 2, 2],
    [3, 2, 2, 2],
    [3, 2, 2, 2],
    [3, 2, 2, 2],
  ];

  List<List<int>> arr3 = [
    [3, 2, 2],
    [3, 9, 2],
    [3, 2, 2],
  ];

  print(timPt(arr3));
}

int? timPt(List<List<int>> arr) {
  int m = arr.length;
  int n = arr[0].length;
  if (m == n && m > 2 && m % 2 != 0) {
    return arr[m ~/ 2][n ~/ 2];
  }
  return null;
}
