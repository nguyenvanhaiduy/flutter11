void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  // c1
  print('Dùng biến tạm');
  dungBienTam(1, 2, phones);

  //c2
  // print('Không dùng biến tạm');
  // var (newPhone1, newPhone2) = khongDungBienTam((phones[1], phones[2]));
  // phones[1] = newPhone1;
  // phones[2] = newPhone2;

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}

void dungBienTam(int a, int b, phones) {
  String tmp = phones[a];
  phones[a] = phones[b];
  phones[b] = tmp;
}

(String, String) khongDungBienTam((String, String) record) {
  var (a1, a2) = record;
  return (a2, a1);
}
