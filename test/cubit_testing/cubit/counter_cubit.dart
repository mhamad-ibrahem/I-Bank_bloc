import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int cubitCounter = 0;
  CounterCubit() : super(const CounterInitial(counter: 0));
  increment() {
    cubitCounter++;
    emit(CounterInitial(counter: cubitCounter));
  }

  decrement() {
    cubitCounter--;
    emit(CounterInitial(counter: cubitCounter));
  }
}
