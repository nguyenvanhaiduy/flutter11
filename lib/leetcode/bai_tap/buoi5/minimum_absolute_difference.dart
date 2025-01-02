void main() {
  print(minimumAbsolute([4, 2, 1, 3]));
  print(minimumAbsolute([1, 3, 6, 10, 15]));
}

List<List<int>> minimumAbsolute(List<int> arr) {
  arr.sort();
  int min = (arr[1] - arr[0]).abs();
  List<List<int>> results = [[]];
  for (int i = 0; i < arr.length - 1; i++) {
    if (min > (arr[i + 1] - arr[i]).abs()) {
      min = (arr[i + 1] - arr[i]).abs();
    }
  }
  for (int i = 0; i < arr.length - 1; i++) {
    if (min == (arr[i + 1] - arr[i]).abs()) {
      results.add(([arr[i], arr[i + 1]]));
    }
  }
  results.removeAt(0);
  return results;
}
