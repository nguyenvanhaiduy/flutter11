void main() {
  print(heightChecker([1, 1, 4, 2, 1, 3]));
}

int heightChecker(List<int> arr) {
  int count = 0;
  List<int> tmp = List.from(arr);
  tmp.sort((a, b) => a.compareTo(b));
  int i = 0;
  for (var element in tmp) {
    if (element != arr[i]) {
      count++;
    }
    i++;
  }
  return count;
}
