void main() {
  Dog dog = Dog('Dog', 1, 'black');
  Fish fish = Fish('Cá chép', 2, 'yellow');
  Bird bird = Bird('Chim vành khuyên', 1, 'black');
  Duck duck = Duck('Donald', 3, 'white');
  dog.sua();
  fish.boi();
  bird.bay();
  duck.keu();
}

class Animal {
  Animal(this._name, this._age, this._color);

  String _name;
  int _age;
  String _color;

  String get getName => _name;
  set setName(String name) {
    _name = name;
  }

  int get getAge => _age;
  set setAge(int age) {
    _age = age;
  }

  String get getColor => _color;
  set setColor(String color) {
    _name = color;
  }
}

class Dog extends Animal {
  Dog(super.name, super.age, super.color);
  void sua() {
    print('$_name wish $_name could fly');
  }
}

class Fish extends Animal {
  Fish(super._name, super._age, super._color);
  void boi() {
    print('$_name đang bơi');
  }
}

class Bird extends Animal {
  Bird(super.name, super.age, super.color);
  void bay() {
    print('$_name đang bay');
  }
}

class Duck extends Animal {
  Duck(super._name, super._age, super._color);
  void keu() {
    print('$_name kêu quạc quạc ');
  }
}
