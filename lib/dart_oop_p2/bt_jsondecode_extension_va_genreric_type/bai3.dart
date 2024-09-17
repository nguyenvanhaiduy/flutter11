import 'dart:developer';

class Queue<T> {
  final List<T> arr;

  Queue({required this.arr});

  T dequeue() {
    if (arr.isEmpty) {
      throw Exception('Queue is empty');
    }
    return arr.removeAt(0);
  }

  void enqueue(T value) {
    arr.add(value);
  }
}

void main() {
  Queue<int> queue = Queue(arr: []);

  // log('first element is: ${queue.dequeue()}');

  for (int i = 0; i < 5; i++) {
    queue.enqueue(i);
  }
  log('${queue.arr}');
  log('first element is: ${queue.dequeue()}');
  // queue.enqueue('f');
  // queue.enqueue('g');
  log('${queue.arr}');
}
