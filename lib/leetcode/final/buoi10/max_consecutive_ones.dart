void main() {
  print(maxConsecutiveOnes([1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1]));
}

int maxConsecutiveOnes(List<int> arr) {
  int cnt = 0;
  int max = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 0) {
      if (max < cnt) {
        max = cnt;
      }
      cnt = 0;
    }
    max = cnt;
    cnt++;
  }
  return max;
}
