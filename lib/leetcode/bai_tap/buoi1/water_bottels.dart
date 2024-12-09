void main() {
  print(waterBottels(23, 4));
}

int waterBottels(int numBottles, int numExchange) {
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

  return result;
}
