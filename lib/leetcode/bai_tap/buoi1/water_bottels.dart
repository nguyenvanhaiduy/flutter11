void main() {
  print(waterBottels(23, 4));
}

int waterBottels(int numBottles, int numExchange) {
  int result = numBottles;
  int count = numBottles ~/ numExchange;

  result += count;
  count += numBottles % numExchange;

  while (count >= numExchange) {
    count ~/= numExchange;
    result += count;

    if (count > numExchange) {
      count += (count % numExchange);
    }
  }

  return result;
}
