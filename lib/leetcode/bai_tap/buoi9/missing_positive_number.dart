void main() {
  print(missingPositive([1, 3, 4, 5, 8], 3)); // 6
}

int missingPositive(List<int> arr, int k) {
  Set<int> set = arr.toSet();
  int count = 0;
  int current = 1;
  while (true) {
    if (!set.contains(current)) {
      count++;
      if (count == k) {
        return current;
      }
    }
    current++;
  }
}
