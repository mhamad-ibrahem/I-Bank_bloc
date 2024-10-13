part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeObscure() = _ChangeObscure;
  const factory LoginEvent.loginEventUseCase({required BuildContext context}) =
      _LoginUseCaseEvent;
}
