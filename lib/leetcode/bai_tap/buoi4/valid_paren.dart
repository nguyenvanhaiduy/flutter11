void main() {
  print(valid("()"));
}

bool valid(String s) {
  List<String> stack = [];
  Map<String, String> matching = {
    ')': '(',
    ']': '[',
    '}': '{',
  };
  for (int i = 0; i < s.length; i++) {
    if (matching.containsValue(s[i])) {
      stack.add(s[i]);
    } else if (matching.containsKey(s[i])) {
      if (stack.isEmpty || stack.removeLast() != matching[s[i]]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
