import 'package:flutter/material.dart';

class ScreenSize {
  final Size designScreenSize;
  final Size deviceScreenSize;

  ScreenSize({required this.designScreenSize, required this.deviceScreenSize});

  double scaleWith(num designNumber) {
    return (designNumber * (deviceScreenSize.width / designScreenSize.width));
  }

  double scaleHeight(num designNumber) {
    return (designNumber * (deviceScreenSize.height / designScreenSize.height));
  }
}

const designScreenSize = Size(375, 812);
const deviceScreenSize = Size(430, 932);

final ScreenSize screenSize = ScreenSize(
  designScreenSize: designScreenSize,
  deviceScreenSize: deviceScreenSize,
);

extension ExtensionScreenSize on num {
  w() => screenSize.scaleWith(this);
}

void main() {
  final h = 64.w();
  print(h);
}
