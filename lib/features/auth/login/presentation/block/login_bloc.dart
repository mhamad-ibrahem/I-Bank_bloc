import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/helpers/log_helper/log_helper.dart';
part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  bool obscureForm = false;
  LoginBloc() : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) {
      event.when(
        changeObscure: () {
          obscureForm = !obscureForm;
          LogHelper.logSuccess("obscure is $obscureForm");
          emit(LoginState.obscureForm(obscure: obscureForm));
        },
      );
    });
  }
}
