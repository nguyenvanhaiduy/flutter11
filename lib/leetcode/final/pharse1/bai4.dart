import 'dart:developer';

void main() {
  List<int> input = [10, 2, 10];
  log(catGetMouse(input));
}

String catGetMouse(List<int> input) {
  if (input[0] == input[1]) {
    return 'CAT_A';
  }
  if (input[2] == input[1]) {
    return 'CAT_B';
  }
  int distanceaCat = input[0].abs() - input[1].abs();
  int distancebCat = input[2].abs() - input[1].abs();

  if (distanceaCat.abs() > distancebCat.abs()) {
    return 'CAT_B';
  }

  if (distanceaCat.abs() < distancebCat.abs()) {
    return 'CAT_A';
  }

  return 'The mouse has escaped';
}
