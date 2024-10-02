part of 'splash_bloc.dart';

sealed class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

final class SplashInitial extends SplashState {
  final StatusRequest statusRequest;
  const SplashInitial({required this.statusRequest});
  @override
  List<Object> get props => [statusRequest];
}
