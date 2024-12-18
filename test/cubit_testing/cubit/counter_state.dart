part of 'counter_cubit.dart';

sealed class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {
  final int counter;

  const CounterInitial({required this.counter});
  @override
  List<Object> get props => [counter];
}
