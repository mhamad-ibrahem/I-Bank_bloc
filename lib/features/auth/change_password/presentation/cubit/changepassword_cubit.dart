import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'changepassword_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit() : super(ChangePasswordInitial());
  bool passwordObscure = false;
  bool confirmPasswordObscure = false;
  changePasswordObscure() {
    passwordObscure = !passwordObscure;
    emit(ChangePasswordObscure(obscure: passwordObscure));
  }

  changeConfirmPasswordObscure() {
    confirmPasswordObscure = !confirmPasswordObscure;
    emit(ChangeConfirmPasswordObscure(obscure: confirmPasswordObscure));
  }
}
