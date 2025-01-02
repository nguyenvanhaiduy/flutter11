void main() {
  print(mostCommon(
      "Bob hit a ball, the hit BALL flew far after it was hit.", 'hit'));
}

String mostCommon(String s, String banned) {
  s = s.replaceAll(RegExp(r'[^a-zA-Z\s]'), '').toLowerCase();
  List<String> words = s.split(' ');

  Map<String, int> results = {};
  for (String word in words) {
    if (word.isNotEmpty && word != banned) {
      if (results.containsKey(word)) {
        results[word] = results[word]! + 1;
      } else {
        results[word] = 1;
      }
    }
  }

  String mostCommonWord = '';
  int maxCount = 0;
  results.forEach((word, count) {
    if (count > maxCount) {
      maxCount = count;
      mostCommonWord = word;
    }
  });

  return mostCommonWord;
}
