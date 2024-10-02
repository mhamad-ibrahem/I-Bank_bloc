import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';

part 'register_state.dart';
part 'register_event.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  bool obscureForm = false;
  bool acceptTermsAndConditions = false;
  RegisterBloc() : super(const RegisterState.initial()) {
    on<RegisterEvent>((event, emit) {
      event.when(
        changeObscure: () {
          obscureForm = !obscureForm;
          LogHelper.logSuccess("obscure is $obscureForm");
          emit(RegisterState.obscureForm(obscure: obscureForm));
        },
        acceptTerms: () {
          acceptTermsAndConditions = !acceptTermsAndConditions;
          LogHelper.logSuccess(
              "acceptTermsAndConditions is $acceptTermsAndConditions");
          emit(RegisterState.acceptTerms(accept: acceptTermsAndConditions));
        },
      );
    });
  }
}
