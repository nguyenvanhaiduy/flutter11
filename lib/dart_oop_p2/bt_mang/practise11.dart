import 'dart:developer';

// abstract: là một lớp trừu tượng, nó không thể khởi tạo trực tiếp mà phải kế thừa lại nó mới có thể khởi tạo
// dùng để tạo ra lớp cơ sở chung để cho các lớp con có cùng hành vi
abstract class Animal {
  void run();
}

class Dog extends Animal {
  @override
  void run() {
    log('Dog is running');
  }
}

// base: là lớp cơ sở. Lớp cơ sở không thể được kế thừa bởi các lớp bên ngoài thư viện.
// dùng để kiểm soát chặt chẽ quá trình kế thừa,
//ngăn chặn các lớp bên ngoài thay đổi hành vi của lớp base
base class Cat {}

final class B extends Cat {
  void test() {
    log('test b');
  }
}

// ERROR: The type 'A' must be 'base', 'final' or 'sealed' because the supertype 'Cat' is 'base'.dartsubtype_of_base_or_final_is_not_base_final_or_sealed
//class A extends Cat {}

// final: để kết thúc quá trình phân cấp. dùng trong các trường hợp như
// muốn tạo ra một số lớp không thể thay đổi,
//đảm bảo tính toàn vẹn của dữ liệu, ngăn chặn vc tạo các lớp con không mong muốn
// ERROR:
// class C extends B {}

// interface: chỉ chứa các thành viên trưu tượng và có thể khởi tạo ngay tại đó
// và khi cta muốn sửa đổi pthuc thi vẫn có thể override như abstract
interface class Vehicle {
  void startEngine(String type) {
    print('startEngine');
  }
}

// sealed: Hạn chế việc mở rộng class. Một lớp áp dụng sealed chỉ có thể được
// mở rộng bởi các lớp trong cùng một thư viện
sealed class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() {}
}

// mixin: rất thuật tiện cho việc tái sử dụng code
class Flutter with BuildIos, BuidAndroid {}

class Android with BuidAndroid {}

mixin BuidAndroid {
  String printBuildAndoid() {
    return "Build Android";
  }
}

mixin BuildIos {
  String printBuildIos() {
    return "Build Ios";
  }
}

void main() {
  B cat = B();
  cat.test();
}
