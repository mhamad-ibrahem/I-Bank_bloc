part of 'main_bloc.dart';

sealed class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

//events
class ChangeCurrentIndex extends MainEvent {
  final BuildContext context;
  final int currentIndex;
  const ChangeCurrentIndex(this.currentIndex, {required this.context});
  @override
  List<Object> get props => [context, currentIndex];
}
