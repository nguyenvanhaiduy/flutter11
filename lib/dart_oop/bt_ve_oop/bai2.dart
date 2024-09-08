import 'package:flutter/material.dart';

class ScreenSize {
  final Size _designScreenSize;
  late Size _deviceScreenSize;

  ScreenSize({required Size designScreenSize})
      : _designScreenSize = designScreenSize;

  void init(Size deviceScreenSize) {
    _deviceScreenSize = deviceScreenSize;
  }

  double scaleWidth(num designNumber) {
    return designNumber * (_deviceScreenSize.width / _designScreenSize.width);
  }
}

void main() {
  Size designScreenSize = const Size(375, 812);
  ScreenSize screenSize = ScreenSize(designScreenSize: designScreenSize);
  screenSize.init(const Size(430, 932));

  double scaleWidth = screenSize.scaleWidth(100);
  print(scaleWidth);
}
