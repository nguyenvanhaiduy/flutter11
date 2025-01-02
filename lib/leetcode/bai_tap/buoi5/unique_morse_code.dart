void main() {
  print(toMorse(["gin", "zen", "gig", "msg"]));
}

int toMorse(List<String> str) {
  Map<String, String> morseCode = {
    'a': '.-',
    'b': '-...',
    'c': '-.-.',
    'd': '-..',
    'e': '.',
    'f': '..-.',
    'g': '--.',
    'h': '....',
    'i': '..',
    'j': '.---',
    'k': '-.-',
    'l': '.-..',
    'm': '--',
    'n': '-.',
    'o': '---',
    'p': '.--.',
    'q': '--.-',
    'r': '.-.',
    's': '...',
    't': '-',
    'u': '..-',
    'v': '...-',
    'w': '.--',
    'x': '-..-',
    'y': '-.--',
    'z': '--..',
  };
  Set<String> results = {};
  for (int i = 0; i < str.length; i++) {
    String s = str[i];
    String result = '';
    for (int i = 0; i < s.length; i++) {
      String char = s[i].toLowerCase();
      if (morseCode.containsKey(char)) {
        result += morseCode[char]!;
      }
    }
    results.add(result);
  }
  return results.length;
}
