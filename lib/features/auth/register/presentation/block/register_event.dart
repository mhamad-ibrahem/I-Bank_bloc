part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory  RegisterEvent.changeObscure()= _ChangeObscure;
  const factory   RegisterEvent.acceptTerms()= _AcceptTermsEvent;
  const factory   RegisterEvent.createAccount({required BuildContext context})= _CreateAccount;
}