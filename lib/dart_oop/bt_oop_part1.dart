import 'dart:math';

class LopHoc {
  final String tenLopHoc;
  final int soLuong;

  final List<HocVien> ds = [];

  LopHoc({required this.tenLopHoc, required this.soLuong});

  bool push(HocVien hv) {
    int a = 0; // dùng để kiểm tra xem hv thêm vào có bị trùng tên không
    for (var element in ds) {
      if (element.name.trim().toLowerCase() == hv.name.trim().toLowerCase()) {
        a++;
      }
    }
    if (a == 0) {
      ds.add(hv);
      hv.push(this);
      return true;
    }
    return false;
  }

  void showMember() {
    if (ds.isNotEmpty) {
      int i = 0; // biến đếm
      for (var hocVien in ds) {
        i++;
        print('Tên học viên $i lớp $tenLopHoc là: ${hocVien.name}');
      }
      print('Hết học viên\n');
    }
  }

  int remainMember() {
    return soLuong - ds.length;
  }
}

class Flutter extends LopHoc {
  Flutter({required super.tenLopHoc, required super.soLuong});
  void builDesktopApp() {}
  void buildAndroid() {}
  void buildIos() {}
  void buildWeb() {}
}

class Android extends LopHoc {
  Android({required super.tenLopHoc, required super.soLuong});
  void buildAndroid() {}
}

class Ios extends LopHoc {
  Ios({required super.tenLopHoc, required super.soLuong});
  void buildIos() {}
}

class Web extends LopHoc {
  Web({required super.tenLopHoc, required super.soLuong});
  void buildWeb() {}
}

class HocVien {
  String name;
  final List<LopHoc> lopHoc = [];

  HocVien({required this.name});

  bool push(LopHoc lh) {
    // dùng để kiểm tra xem học viên đã thêm lớp học lh chưa nếu có r sẽ không thêm nữa
    int a = 0;
    for (var element in lopHoc) {
      if (element.tenLopHoc == lh.tenLopHoc) a++;
    }
    if (a == 0) {
      lopHoc.add(lh);
      return true;
    }
    return false;
  }
}

void main() {
  LopHoc flutter = Flutter(tenLopHoc: 'Flutter', soLuong: 11);
  LopHoc android = Android(tenLopHoc: 'Android', soLuong: 12);
  LopHoc ios = Ios(tenLopHoc: 'Ios', soLuong: 13);
  LopHoc web = Web(tenLopHoc: 'Web', soLuong: 14);

  HocVien hvA = HocVien(name: 'A');
  HocVien hvB = HocVien(name: 'B');
  HocVien hvC = HocVien(name: 'C');
  HocVien hvD = HocVien(name: 'D');
  HocVien hvE = HocVien(name: 'E');
  HocVien hvF = HocVien(name: 'F');

  flutter.push(hvA);
  flutter.push(hvB);
  android.push(hvB);
  android.push(hvC);
  android.push(hvD);
  android.push(hvE);
  ios.push(hvD);
  ios.push(hvE);
  ios.push(hvF);
  web.push(hvF);

  print('Số lượng học viên của lớp Flutter: ${flutter.ds.length}');
  print('Số lượng học viên của lớp Android: ${android.ds.length}');
  print('Số lượng học viên của lớp Ios: ${ios.ds.length}');
  print('Số lượng học viên của lớp Web: ${web.ds.length}\n');

  // Hiển thị thông tin thành viên trước gọi hàm khởi tạo toàn bộ học viên
  flutter.showMember();
  // android.showMember();
  // ios.showMember();
  // web.showMember();

  // Hiển thị số lượng học viên còn thiếu của mỗi lớp học
  print('Số lượng hv còn thiếu của lớp flutter: ${flutter.remainMember()}');
  print('Số lượng hv còn thiếu của lớp Android: ${android.remainMember()}');
  print('Số lượng hv còn thiếu của lớp Ios: ${ios.remainMember()}');
  print('Số lượng hv còn thiếu của lớp Web: ${web.remainMember()}\n');

  themHv(flutter);
  themHv(android);
  themHv(ios);
  themHv(web);

  // Hiển thị sô lượng học viên sau khi gọi hàm khởi tạo toàn bộ học viên
  print('Số lượng học viên của lớp Flutter: ${flutter.ds.length}');
  print('Số lượng học viên của lớp Android: ${android.ds.length}');
  print('Số lượng học viên của lớp Ios: ${ios.ds.length}');
  print('Số lượng học viên của lớp Web: ${web.ds.length}\n');

  // Hiển thị thông tin thành viên sau gọi hàm khởi tạo toàn bộ học viên
  flutter.showMember();
  // android.showMember();
  // ios.showMember();
  // web.showMember();
}

// Hàm khởi tạo toàn bộ học viên còn thiếu
void themHv(LopHoc lopHoc) {
  final random = Random();
  const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  while (lopHoc.remainMember() > 0) {
    final tenHv = letters[random.nextInt(26)];
    HocVien a = HocVien(name: tenHv);
    lopHoc.push(a);
  }
}
