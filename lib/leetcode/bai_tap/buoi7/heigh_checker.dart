void main() {
  print(heightChecker([1, 1, 4, 2, 1, 3]));
}

void merge(List<int> list, int left, int middle, int right) {
  int n1 = middle - left + 1;
  int n2 = right - middle;

  List<int> leftArray = List.filled(n1, 0);
  List<int> rightArray = List.filled(n2, 0);

  for (int i = 0; i < n1; i++) {
    leftArray[i] = list[left + i];
  }
  for (int j = 0; j < n2; j++) {
    rightArray[j] = list[middle + 1 + j];
  }

  int i = 0, j = 0, k = left;
  while (i < n1 && j < n2) {
    if (leftArray[i] <= rightArray[j]) {
      list[k] = leftArray[i];
      i++;
    } else {
      list[k] = rightArray[j];
      j++;
    }
    k++;
  }

  while (i < n1) {
    list[k] = leftArray[i];
    i++;
    k++;
  }

  while (j < n2) {
    list[k] = rightArray[j];
    j++;
    k++;
  }
}

void mergeSort(List<int> list, int left, int right) {
  if (left < right) {
    int middle = (left + right) ~/ 2;
    mergeSort(list, left, middle);
    mergeSort(list, middle + 1, right);
    merge(list, left, middle, right);
  }
}

int heightChecker(List<int> heights) {
  List<int> expected = List.from(heights);

  mergeSort(expected, 0, expected.length - 1);

  int count = 0;
  for (int i = 0; i < heights.length; i++) {
    if (heights[i] != expected[i]) {
      count++;
    }
  }

  return count;
}
