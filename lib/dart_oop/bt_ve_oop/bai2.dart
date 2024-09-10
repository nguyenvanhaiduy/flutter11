import 'package:flutter/material.dart';

class ScreenSize {
  final Size _designScreenSize;
  Size _deviceScreenSize;

  ScreenSize({required Size designScreenSize, required Size deviceScreenSize})
      : _designScreenSize = designScreenSize,
        _deviceScreenSize = deviceScreenSize;

  void init(Size deviceScreenSize) {
    _deviceScreenSize = deviceScreenSize;
  }

  double scaleWidth(num designNumber) {
    return designNumber * (_deviceScreenSize.width / _designScreenSize.width);
  }
}

void main() {
  Size designScreenSize = const Size(375, 812);
  Size deviceScreenSize = const Size(430, 932);

  ScreenSize screenSize = ScreenSize(
    designScreenSize: designScreenSize,
    deviceScreenSize: deviceScreenSize,
  );

  double scaleWidth = screenSize.scaleWidth(100);
  print(scaleWidth);
}
