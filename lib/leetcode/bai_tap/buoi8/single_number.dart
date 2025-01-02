void main() {
  print(singleNumber([1, 1, 2]));
}

int singleNumber(List<int> arr) {
  Map<int, int> results = {};
  for (int i = 0; i < arr.length; i++) {
    if (results.containsKey(arr[i])) {
      results[arr[i]] = (results[arr[i]] ?? 0) + 1;
    } else {
      results[arr[i]] = 1;
    }
  }
  for (var element in results.entries) {
    if (element.value == 1) {
      return element.key;
    }
  }
  return -1;
}
