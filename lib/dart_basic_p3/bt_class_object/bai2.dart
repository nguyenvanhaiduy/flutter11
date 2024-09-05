import 'dart:developer';

class Queue {
  final int capacity;
  final List<String> list = <String>[];

  Queue(this.capacity);
  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  String? dequeue() {
    if (isEmpty()) {
      return null;
    }
    return list.removeAt(0);
  }

  bool enqueue(value) {
    if (isFull()) {
      return false;
    }
    list.add(value);
    return true;
  }
}

void main() {
  Queue queue = Queue(5);

  if (queue.isEmpty()) {
    log('queue is empty');
  } else {
    log('queue is not empty');
  }

  log('first element is: ${queue.dequeue()}');

  for (int i = 0; i < queue.capacity; i++) {
    queue.enqueue(i.toString());
  }
  log('${queue.list}');
  log('first element is: ${queue.dequeue()}');
  queue.enqueue('f');
  queue.enqueue('g');
  log('${queue.list}');
}
