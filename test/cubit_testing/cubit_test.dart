import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'cubit/counter_cubit.dart';

void main() {
  group("Cubit testing", () {
    late CounterCubit counterCubit;
    //init cubit
    setUp(() {
      counterCubit = CounterCubit();
    });
    //close cubit
    tearDown(() {
      counterCubit.close();
    });
    test('init cubit', () {
      expect(counterCubit.cubitCounter, 0);
    });
    blocTest<CounterCubit, CounterState>(
      "emit counter ",
      build: () {
        return counterCubit;
      },
      act: (bloc) {
        //change
        bloc.increment();
        bloc.increment();
        bloc.increment();
        bloc.increment();
        //change
        bloc.decrement();
        bloc.decrement();
        //change
        bloc.increment();
      },
      expect: () => [
        const CounterInitial(counter: 1),
        const CounterInitial(counter: 2),
        const CounterInitial(counter: 3),
        const CounterInitial(counter: 4),
        const CounterInitial(counter: 3),
        const CounterInitial(counter: 2),
        const CounterInitial(counter: 3)
      ], //counter is a stream of events
    );
  });
}
