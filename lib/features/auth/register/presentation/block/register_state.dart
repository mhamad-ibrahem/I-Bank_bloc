part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
   const factory RegisterState.obscureForm({required bool obscure}) = _ObscureForm;
  const factory RegisterState.acceptTerms({required bool accept}) =
      _AcceptTerms;
}