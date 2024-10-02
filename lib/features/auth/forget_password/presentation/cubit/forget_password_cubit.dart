import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/routes/route_export.dart';
part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());

  sendForgetPasswordRequest(BuildContext context) {
    context.push(AppRoutes().verifyRoute);
  }

  verifyCode(BuildContext context) {
    context.push(AppRoutes().changePasswordRoute);
  }
}
