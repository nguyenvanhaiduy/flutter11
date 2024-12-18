void main() {
  print(waterBottels(10, 3));
}

String waterBottels(int numBottles, int numExchange) {
  if (numBottles >= 1 &&
      numBottles <= 100 &&
      numExchange >= 1 &&
      numExchange <= 100) {
    int result = numBottles;
    int count = numBottles ~/ numExchange;

    result += count;
    count += numBottles % numExchange;

    while (count >= numExchange) {
      int tmp = count ~/ numExchange;
      result += tmp;
      count = (count % numExchange + tmp);
      if (count < numExchange) {
        break;
      }
    }

    return result.toString();
  }
  return 'null';
}
