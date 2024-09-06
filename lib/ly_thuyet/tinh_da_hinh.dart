void main(List<String> args) {}

class Parent {
  final String name;
  final int? age, numberOfBullets, dob;

  Parent({
    required this.name,
    required this.age,
    required this.numberOfBullets,
    required this.dob,
  });
}

class Child extends Parent{
  Child({required super.name, required super.age, required super.numberOfBullets, required super.dob}); 

}
