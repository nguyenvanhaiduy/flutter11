import 'dart:developer';

void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  log('$phones');
  log('${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  // viết code ở đây, đổi vị trí Xiaomi và iPhone
  String tmp = phones[1];
  phones[1] = phones[2];
  phones[2] = tmp;

  log('$phones');
  log('${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
