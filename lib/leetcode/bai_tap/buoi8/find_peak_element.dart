void main() {
  print(findPeakElement([1, 2, 3, 1]));
}

int findPeakElement(List<int> arr) {
  int cnt = 0;

  for (int i = 1; i < arr.length - 1; i++) {
    if (arr[i] >= arr[i - 1] && arr[i] >= arr[i + 1]) {
      cnt++;
    } else {
      cnt = 0;
    }
    if (cnt == 1) {
      return i;
    }
  }
  return 1;
}
