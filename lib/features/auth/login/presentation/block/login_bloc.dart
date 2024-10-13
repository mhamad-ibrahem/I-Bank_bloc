import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_block/core/config/classes/dio/api_response.dart';
import 'package:ui_block/core/config/classes/status_request.dart';
import 'package:ui_block/core/services/app_services.dart';
import 'package:ui_block/features/auth/login/domain/use_case/login_use_case.dart';
import 'package:ui_block/features/splash/data/model/local_user_data_model.dart';
import 'package:ui_block/shared/widgets/loading/loading_dialog.dart';
import 'package:ui_block/shared/widgets/toast/cherry_toast.dart';
import '../../../../../core/helpers/log_helper/log_helper.dart';
import '../../../../../core/helpers/user_local_data.dart';
import '../../../../../core/routes/constant/app_routes.dart';
import '../../data/model/login_model.dart';
part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  bool obscureForm = false;
  final LoginUseCase loginUseCase;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  LoginBloc(this.loginUseCase) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) {
      event.when(
        changeObscure: () {
          obscureForm = !obscureForm;
          LogHelper.logSuccess("obscure is $obscureForm");
          emit(LoginState.obscureForm(obscure: obscureForm));
        },
        loginEventUseCase: (context) {
          login(
            context: context,
          );
        },
      );
    });
  }
  
  login({
    required BuildContext context,
  }) async {
    if (formKey.currentState!.validate()) {
      showLoadingDialog(context: context);
      ApiResponse response = await loginUseCase.execute(LoginModel(
          email: email.text.trim(),
          password: password.text.trim(),
          context: context));
      context.pop();
      if (response.statusRequest == StatusRequest.none) {
        UserCredential userCredential = response.responseData;
        AppServices.localUserData = LocalUserData(
            token: userCredential.credential?.accessToken,
            id: userCredential.user!.uid,
            email: userCredential.user!.email,
            nameEn: userCredential.user!.email);
        UserLocalData.setUserLocalData(value: AppServices.localUserData);
        context.go(AppRoutes().mainRoute);
        AppCherryToast.showSuccessToast(
            message: 'Login successfully', context: context);
      }
    }
  }

  @override
  Future<void> close() {
    email.dispose();
    password.dispose();
    return super.close();
  }
}
