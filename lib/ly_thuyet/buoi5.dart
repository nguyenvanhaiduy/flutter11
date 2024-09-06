// void main() {
//   var m1 = Mercenary(
//     weapon: Gun(name: 'm1', numberOfBullets: 1),
//     name: 'm1',
//     age: 18,
//   );
//   var m2 = Mercenary(
//     weapon: Knife(name: 'm2'),
//     name: 'm1',
//     age: 18,
//   );
// }

// class Person {
//   final String name;
//   final int age;

//   Person({required this.name, required this.age});
// }

// class Mercenary extends Person {
//   final Weapon weapon;
//   Mercenary({required this.weapon, required super.name, required super.age});
// }

// class Weapon {
//   final String name;

//   Weapon({required this.name});
// }

// class Gun extends Weapon {
//   final int numberOfBullets;
//   Gun({required this.numberOfBullets, required super.name});

//   void shot() {}
// }

// class Knife extends Weapon {
//   Knife({required super.name});
// }

abstract class Person {
  late final String name;
  late final int age;
  void test();
}

class PersonA extends Person {
  @override
  String name = 'k';
  @override
  int age = 0;
  @override
  void test() {
    print('test');
  }
}

void main(List<String> args) {
  var person = PersonA();
  person.test();
}
