void main() {
  print(sortArrayParity([1, 3, 5, 2]));
}

List<int> sortArrayParity(List<int> arr) {
  List<int> sochan = arr.where((e) => e % 2 == 0).toList();
  List<int> sole = arr.where((e) => e % 2 != 0).toList();

  return sochan + sole;
}
