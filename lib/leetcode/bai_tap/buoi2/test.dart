import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class DefaultController extends GetxController {
  RxInt selectedIndex = (-1).obs;

  void select(int index) {
    if (selectedIndex.value == index) {
      selectedIndex.value = -1;
    } else {
      selectedIndex.value = index;
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
          child: listTitleCustomize(['Wash', 'Cutting'], (value) {
            print("Selected: $value");
          }),
        ),
      ),
    );
  }
}

Widget listTitleCustomize(List<String> titles, Function(String value) onTap) {
  final DefaultController defaultController = Get.put(DefaultController());

  return Obx(
    () => Container(
      color: Colors.green,
      width: 200,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(titles.length, (index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(titles[index]),
              Spacer(),
              Checkbox(
                value: defaultController.selectedIndex.value == index,
                onChanged: (value) {
                  defaultController.select(index);
                  if (value == true) {
                    onTap(titles[index]);
                  } else {
                    onTap("None");
                  }
                },
              ),
            ],
          );
        }),
      ),
    ),
  );
}



// import 'dart:math';

// void main() {
//   List<int> tiens = [500, 200, 100, 50, 20, 10, 5, 2, 1];
//   // print(tongToTien(1008, tiens));

//   print(tongToTienTest(1008, tiens));
// }

// String tongToTien(int tien, List<int> tiens) {
//   int count = 0;
//   for (int i = 0; i < tiens.length; i++) {
//     while (tien >= tiens[i]) {
//       tien -= tiens[i];
//       count++;
//     }
//   }

//   if (tien == 0) {
//     return count.toString();
//   }

//   return 'Khong thoa man y/c';
// }

// Map<String, int>? tongToTienTest(int tien, List<int> tiens) {
//   int count = 0;
//   Map<String, int> results = {};
//   for (int i = 0; i < tiens.length; i++) {
//     while (tien >= tiens[i]) {
//       tien -= tiens[i];
//       count++;
//       results['${tiens[i]}k'] = count;
//     }
//     count = 0;
//   }

//   if (tien == 0) {
//     return results;
//   }

//   return null;
// }

// int? tongTich(int n) {
//   if (n >= 1 && n <= pow(10, 6)) {
//     int tong = 0;
//     int tich = 1;
//     int tmp;
//     while (n > 0) {
//       tmp = n % 10;
//       tong += tmp;
//       tich *= tmp;
//       n = n ~/ 10;
//     }
//     return tich - tong;
//   }
//   return null;
// }
