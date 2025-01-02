void main() {
  print(heightChecker([1, 1, 4, 2, 1, 3]));
}

int heightChecker(List<int> heights) {
  List<int> expected = List.from(heights);

  for (int i = 0; i < expected.length - 1; i++) {
    for (int j = 0; j < expected.length - 1 - i; j++) {
      if (expected[j] > expected[j + 1]) {
        int temp = expected[j];
        expected[j] = expected[j + 1];
        expected[j + 1] = temp;
      }
    }
  }

  int count = 0;
  for (int i = 0; i < heights.length; i++) {
    if (heights[i] != expected[i]) {
      count++;
    }
  }

  return count;
}
