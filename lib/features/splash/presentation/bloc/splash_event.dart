part of 'splash_bloc.dart';

sealed class SplashEvent extends Equatable {
  const SplashEvent();

  @override
  List<Object> get props => [];
}

//events
class InitEvent extends SplashEvent {
  final BuildContext context;
  const InitEvent({required this.context});
  @override
  List<Object> get props => [context];
}
