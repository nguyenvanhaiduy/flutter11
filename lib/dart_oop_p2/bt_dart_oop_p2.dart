import 'dart:math';

final List<LopHoc> dsLopHoc = [];

abstract class LopHocS {
  late int soBuoiHoc;
  void updateSoBuoiHoc();
}

class LopHoc implements LopHocS {
  final String tenLopHoc;
  final int soLuong;
  final List<HocVien> dsHocVien = [];

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

  @override
  late int soBuoiHoc;

  @override
  void updateSoBuoiHoc() {}
}

class Flutter extends LopHoc {
  @override
  int soBuoiHoc = 12;

  Flutter({
    required super.tenLopHoc,
    required super.soLuong,
  });
  void builDesktopApp() {}
  void buildAndroid() {}
  void buildIos() {}
  void buildWeb() {}

  set setSoBuoiHoc(int value) {
    if (value < 12) {
      throw Exception('số buổi học phải lớn hoặc bằng 12');
    }
    soBuoiHoc = value;
    updateSoBuoiHoc();
  }

  @override
  void updateSoBuoiHoc() {
    for (var lopHoc in dsLopHoc) {
      if (lopHoc is Android) {
        lopHoc.soBuoiHoc = soBuoiHoc + 5;
      } else if (lopHoc is Ios) {
        lopHoc.soBuoiHoc = soBuoiHoc + 8;
      } else if (lopHoc is Web) {
        lopHoc.soBuoiHoc = soBuoiHoc - 2;
      }
    }
  }
}

class Android extends LopHoc {
  @override
  int soBuoiHoc = 17;

  Android({required super.tenLopHoc, required super.soLuong});
  void buildAndroid() {}

  set setSoBuoiHoc(int value) {
    if (value < 17) {
      throw Exception('số buổi học phải lớn học bằng 17');
    }
    soBuoiHoc = value;
    updateSoBuoiHoc();
  }

  @override
  void updateSoBuoiHoc() {
    for (var lopHoc in dsLopHoc) {
      if (lopHoc is Flutter) {
        lopHoc.soBuoiHoc = soBuoiHoc - 5;
      } else if (lopHoc is Ios) {
        lopHoc.soBuoiHoc = soBuoiHoc + 3;
      } else if (lopHoc is Web) {
        lopHoc.soBuoiHoc = soBuoiHoc - 7;
      }
    }
  }
}

class Ios extends LopHoc {
  @override
  int soBuoiHoc = 20;

  Ios({required super.tenLopHoc, required super.soLuong});
  void buildIos() {}

  set setSoBuoiHoc(int value) {
    if (value < 20) {
      throw Exception('số buổi học phải lớn học bằng 20');
    }
    soBuoiHoc = value;
    updateSoBuoiHoc();
  }

  @override
  void updateSoBuoiHoc() {
    for (var lopHoc in dsLopHoc) {
      if (lopHoc is Flutter) {
        lopHoc.soBuoiHoc = soBuoiHoc - 8;
      } else if (lopHoc is Android) {
        lopHoc.soBuoiHoc = soBuoiHoc - 3;
      } else if (lopHoc is Web) {
        lopHoc.soBuoiHoc = soBuoiHoc - 10;
      }
    }
  }
}

class Web extends LopHoc {
  @override
  int soBuoiHoc = 10;

  Web({required super.tenLopHoc, required super.soLuong});
  void buildWeb() {}

  set setSoBuoiHoc(int value) {
    if (value < 10) {
      throw Exception('số buổi học phải lớn học bằng 10');
    }
    soBuoiHoc = value;
    updateSoBuoiHoc();
  }

  @override
  void updateSoBuoiHoc() {
    for (var lopHoc in dsLopHoc) {
      if (lopHoc is Flutter) {
        lopHoc.soBuoiHoc = soBuoiHoc + 2;
      } else if (lopHoc is Android) {
        lopHoc.soBuoiHoc = soBuoiHoc + 7;
      } else if (lopHoc is Ios) {
        lopHoc.soBuoiHoc = soBuoiHoc + 10;
      }
    }
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

  displayNumberOfLessons(dsLopHoc);

  android.setSoBuoiHoc = 18;
  displayNumberOfLessons(dsLopHoc);

  // ios.setSoBuoiHoc = 23;
  // displayNumberOfLessons(dsLopHoc);
  // web.setSoBuoiHoc = 15;
  // displayNumberOfLessons(dsLopHoc);
}

void displayNumberOfLessons(List<LopHoc> dsLopHoc) {
  for (var lopHoc in dsLopHoc) {
    print('Số buổi học của lóp ${lopHoc.tenLopHoc} là: ${lopHoc.soBuoiHoc}');
  }
  print('end\n');
}
