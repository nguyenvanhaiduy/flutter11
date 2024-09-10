import 'dart:math';

final List<LopHoc> dsLopHoc = [];
// test

class LopHoc {
  final String tenLopHoc;
  final int soLuong;
  late int soBuoiHoc = 0;
  final Set<HocVien> dsHocVien = {};

  LopHoc({
    required this.tenLopHoc,
    required this.soLuong,
  }) {
    dsLopHoc.add(this);
  }
  int remainMembers() => soLuong - dsHocVien.length;

  bool push(HocVien hv) {
    int a = 0; // dùng để kiểm tra xem hv thêm vào có bị trùng tên không
    for (var element in dsHocVien) {
      if (element.name.trim().toLowerCase() == hv.name.trim().toLowerCase()) {
        a++;
      }
    }
    if (a == 0) {
      dsHocVien.add(hv);
      hv.push(this);
      return true;
    }
    return false;
  }

  void updateSoBuoiHoc(int baseSoBuoiHoc) {
    late int tmp;
    if (this is Flutter) {
      if (baseSoBuoiHoc < 12) {
        throw Exception('số buổi học phải lớn hoặc bằng 12');
      }
      tmp = baseSoBuoiHoc;
    } else if (this is Android) {
      if (baseSoBuoiHoc < 17) {
        throw Exception('số buổi học phải lớn học bằng 17');
      }
      tmp = baseSoBuoiHoc - 5;
    } else if (this is Ios) {
      if (baseSoBuoiHoc < 20) {
        throw Exception('số buổi học phải lớn học bằng 20');
      }
      tmp = baseSoBuoiHoc - 8;
    } else if (this is Web) {
      if (baseSoBuoiHoc < 10) {
        throw Exception('số buổi học phải lớn học bằng 10');
      }
      tmp = baseSoBuoiHoc + 2;
    }

    for (var lopHoc in dsLopHoc) {
      if (lopHoc is Flutter) {
        lopHoc.soBuoiHoc = tmp;
      } else if (lopHoc is Android) {
        lopHoc.soBuoiHoc = tmp + 5;
      } else if (lopHoc is Ios) {
        lopHoc.soBuoiHoc = tmp + 8;
      } else if (lopHoc is Web) {
        lopHoc.soBuoiHoc = tmp - 2;
      }
    }
  }
}

class Flutter extends LopHoc
    with BuildDestopApp, BuildIos, BuidAndroid, BuildWeb {
  Flutter({
    required super.tenLopHoc,
    required super.soLuong,
  });
}

class Android extends LopHoc with BuidAndroid {
  Android({required super.tenLopHoc, required super.soLuong});
}

class Ios extends LopHoc with BuildIos {
  Ios({required super.tenLopHoc, required super.soLuong});
}

class Web extends LopHoc with BuildWeb {
  Web({required super.tenLopHoc, required super.soLuong});
}

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

mixin BuildWeb {
  String printBuildWeb() {
    return "Build Web";
  }
}

mixin BuildDestopApp {
  String printBuildDestopApp() {
    return "Build Destop App";
  }
}

class HocVien {
  final String name;
  final List<LopHoc> dsLopHoc = [];

  HocVien({required this.name});
  bool push(LopHoc lopHoc) {
    // dùng để kiểm tra xem học viên đã thêm lớp học lh chưa nếu có r sẽ không thêm nữa
    int a = 0;
    for (var element in dsLopHoc) {
      if (element.tenLopHoc == lopHoc.tenLopHoc) a++;
    }
    if (a == 0) {
      dsLopHoc.add(lopHoc);
      return true;
    }
    return false;
  }
}

// Hàm khởi tạo toàn bộ học viên còn thiếu
void themHv(LopHoc lopHoc) {
  final random = Random();
  String letter;
  const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  List<String> arrLetters = [];
  for (int i = 0; i < letters.length; i++) {
    letter = letters[i].trim();
    if (letter.isNotEmpty) {
      arrLetters.add(letters[i].trim());
    }
  }

  while (lopHoc.remainMembers() > 0) {
    int index = random.nextInt(arrLetters.length);
    final tenHv = letters[index];
    HocVien a = HocVien(name: tenHv);
    bool check = lopHoc.push(a);
    if (check) arrLetters.removeAt(index);
  }
}

void main() {
  Flutter flutter = Flutter(tenLopHoc: 'Flutter', soLuong: 11);
  Android android = Android(tenLopHoc: 'Android', soLuong: 12);
  Ios ios = Ios(tenLopHoc: 'Ios', soLuong: 13);
  Web web = Web(tenLopHoc: 'Web', soLuong: 14);

  flutter.updateSoBuoiHoc(12);
  displayNumberOfLessons(dsLopHoc);

  android.updateSoBuoiHoc(18);
  displayNumberOfLessons(dsLopHoc);

  ios.updateSoBuoiHoc(23);
  displayNumberOfLessons(dsLopHoc);
  web.updateSoBuoiHoc(15);
  displayNumberOfLessons(dsLopHoc);
}

void displayNumberOfLessons(List<LopHoc> dsLopHoc) {
  for (var lopHoc in dsLopHoc) {
    print('Số buổi học của lóp ${lopHoc.tenLopHoc} là: ${lopHoc.soBuoiHoc}');
  }
  print('end\n');
}
