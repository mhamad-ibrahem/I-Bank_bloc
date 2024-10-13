import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_block/features/auth/register/domain/use_case/register_use_case.dart';
import '../../../../../../core/config/classes/dio/api_response.dart';
import '../../../../../../core/config/classes/status_request.dart';
import '../../../../../../core/routes/constant/app_routes.dart';
import '../../../../../../shared/widgets/loading/loading_dialog.dart';
import '../../../../../../shared/widgets/toast/cherry_toast.dart';
import '../../../data/model/register_model.dart';
import '../register_bloc.dart';

mixin CreateUserBloc on Bloc<RegisterEvent, RegisterState> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool acceptTermsAndConditions = false;
  register({
    required BuildContext context,
    required RegisterUseCase registerUseCase,
  }) async {
    if (acceptTermsAndConditions) {
      if (formKey.currentState!.validate()) {
        showLoadingDialog(context: context);
        ApiResponse response = await registerUseCase.execute(RegisterModel(
            email: email.text.trim(),
            password: password.text.trim(),
            context: context));
        context.pop();
        if (response.statusRequest == StatusRequest.none) {
          context.go(AppRoutes().login);
          AppCherryToast.showSuccessToast(
              message: 'created successfully', context: context);
        }
      }
    } else {
      AppCherryToast.showErrorToast(errorMessage: 'Accept terms and conditions first', context: context);
    }
  }

  @override
  Future<void> close() {
    email.dispose();
    password.dispose();
    return super.close();
  }
}
