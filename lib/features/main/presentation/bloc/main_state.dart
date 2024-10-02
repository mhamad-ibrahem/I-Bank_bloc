part of 'main_bloc.dart';

sealed class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

final class MainInitial extends MainState {
  final int currentIndex;
  const MainInitial({this.currentIndex = 0});
  @override
  List<Object> get props => [currentIndex];
}
