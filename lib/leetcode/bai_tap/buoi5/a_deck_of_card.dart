void main() {
  // print(deckOfCard([1, 2, 3, 4, 4, 3, 2, 1]));
  // print(deckOfCard([1, 1, 1, 2, 2, 2, 3, 3]));
  print(deckOfCard([1, 1, 1, 2, 2, 2, 3, 3]));
  // print(deckOfCard([0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 3, 3, 4, 5, 6]));
}

bool deckOfCard(List<int> arr) {
  Map<int, List<int>> results = {};
  for (int i = 0; i < arr.length; i++) {
    if (results.containsKey(arr[i])) {
      results[arr[i]]!.add(arr[i]);
    } else {
      results[arr[i]] = [arr[i]];
    }
  }
  if (results.length == 1) {
    if (results[arr[0]]!.length > 1) {
      return true;
    }
    return false;
  }
  List<int> r = arr.toSet().toList();
  int count = 0;
  int len = results[r[0]]!.length;
  for (int i = 0; i < results.keys.length; i++) {
    if (len == results[r[i]]!.length || results[r[i]]!.length % 2 == 0) {
      count++;
    }
  }
  print(results);
  return count == results.length;
}
