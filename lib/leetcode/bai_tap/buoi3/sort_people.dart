void main() {
  final names = ["Mary", "John", "Emma"];
  final heights = [180, 165, 170];
  print(sortPeople(names, heights));
}

List<String> sortPeople(List<String> names, List<int> heights) {
  for (int i = 0; i < names.length - 1; i++) {
    for (int j = i + 1; j < names.length; j++) {
      if (heights[i] < heights[j]) {
        int tmp = heights[i];
        heights[i] = heights[j];
        heights[j] = tmp;
        String s = names[i];
        names[i] = names[j];
        names[j] = s;
      }
    }
  }
  return names;
}
