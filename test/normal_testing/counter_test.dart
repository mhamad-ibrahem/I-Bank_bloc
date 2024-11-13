import 'package:flutter_test/flutter_test.dart';

void main() {
  Counter counter = Counter();
  group("Test counter", () {
    test('initial value should be 0', () {
      expect(counter.count, 0);
    });

    test('increment counter test', () {
      counter.increment();
      expect(counter.count, 1);
    });
    test('decrement counter test', () {
      counter.decrement();
      expect(counter.count, 0);
    });
    // test('fail test', () {
    //   counter.decrement();
    //   expect(counter.count, 0);
    // });
  });
}

class Counter {
  int count = 0;
  increment() {
    count++;
  }

  decrement() {
    count--;
  }
}
