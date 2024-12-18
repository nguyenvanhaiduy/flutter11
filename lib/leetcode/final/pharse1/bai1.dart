void main() {
  List<List<int>> arr1 = [
    [1, 2, 3],
    [1, 2, 3],
  ];

  List<List<int>> arr2 = [
    [3, 2, 3],
    [3, 2, 3],
  ];

  print(sumMa(arr1, arr2));
}

List<List<int>> sumMa(List<List<int>> arr1, List<List<int>> arr2) {
  List<List<int>> result = [];
  int m = arr1.length;
  int n = arr1[0].length;
  for (int i = 0; i < m; i++) {
    List<int> tmp = [];
    for (int j = 0; j < n; j++) {
      tmp.add(arr1[i][j] + arr2[i][j]);
    }
    result.add(tmp);
  }
  return result;
}
