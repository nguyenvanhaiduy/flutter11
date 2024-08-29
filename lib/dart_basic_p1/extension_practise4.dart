extension extensionPractise4 on num {
  add(num other) {
    if (other <= 0) {
      throw ArgumentError('Số phải lớn hơn 0');
    }
    return this + other;
  }

  subtract(num other) {
    if (other <= 0) {
      throw ArgumentError('Số phải lớn hơn 0');
    }
    return this - other;
  }

  divide(num other) {
    if (other <= 0) {
      throw ArgumentError('Số phải lớn hơn 0');
    }
    return this / other;
  }

  multiple(num other) {
    if (other <= 0) {
      throw ArgumentError('Số phải lớn hơn 0');
    }
    return this * other;
  }
}
