part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.obscureForm({required bool obscure}) =
      _ObscureForm;
}
