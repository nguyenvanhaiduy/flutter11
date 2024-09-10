import 'dart:developer';

class Stack {
  Stack(this.capacity);

  final int capacity;
  final List<String> list = <String>[];

  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  String? pop() {
    if (isEmpty()) return null;
    return list.removeAt(list.length - 1);
  }

  bool push(String value) {
    if (isFull()) return false;
    list.add(value);
    return true;
  }
}

void main() {
  Stack stack = Stack(5);

  if (stack.isEmpty()) {
    log('stack is empty');
  } else {
    log('stack is not empty');
  }

  log('first element is: ${stack.pop()}');

  for (int i = 0; i < stack.capacity; i++) {
    stack.push(i.toString());
  }
  log('${stack.list}');
  log('first element is: ${stack.pop()}');
  stack.push('f');
  stack.push('g');
  log('${stack.list}');
}
