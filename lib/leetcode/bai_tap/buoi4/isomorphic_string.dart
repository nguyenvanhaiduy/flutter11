void main() {
  print(isomorphic("egg", "add"));
}

bool isomorphic(String s, String c) {
  if (s.length != c.length) return false;

  Map<String, String> mapSC = {};
  Map<String, String> mapCS = {};

  for (int i = 0; i < s.length; i++) {
    String charS = s[i]; // lay s lam key
    String charC = c[
        i]; // lay c lam key can 2 map vi key 1 co the khong trung nhung key 2 thi sao?

    if (mapSC.containsKey(charS)) {
      if (mapSC[charS] != charC) return false;
    } else {
      mapSC[charS] = charC;
    }

    if (mapCS.containsKey(charC)) {
      if (mapCS[charC] != charS) return false;
    } else {
      mapCS[charC] = charS;
    }
  }
  return true;
}
