part of 'changepassword_cubit.dart';

sealed class ChangePasswordState extends Equatable {
  const ChangePasswordState();

  @override
  List<Object> get props => [];
}

final class ChangePasswordInitial extends ChangePasswordState {}

final class ChangePasswordObscure extends ChangePasswordState {
  final bool obscure;

  const ChangePasswordObscure({required this.obscure});
  @override
  List<Object> get props => [obscure];
}

final class ChangeConfirmPasswordObscure extends ChangePasswordState {
  final bool obscure;

  const ChangeConfirmPasswordObscure({required this.obscure});
  @override
  List<Object> get props => [obscure];
}
