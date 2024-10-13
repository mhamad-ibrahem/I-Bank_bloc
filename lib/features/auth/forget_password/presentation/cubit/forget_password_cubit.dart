import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/routes/route_export.dart';

import '../../domain/use_case/check_number_use_case.dart';
import '../../domain/use_case/verify_code_use_case.dart';
import 'sub_cubit/check_phone_number_cubit.dart';
import 'sub_cubit/verify_code_cubit.dart';
part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState>
    with CheckPhoneNumberCubit, VerifyCodeCubit {
  ForgetPasswordCubit(this.checkNumberUseCase, this.verifyCodeUseCase)
      : super(ForgetPasswordInitial());
  final CheckNumberUseCase checkNumberUseCase;
  final VerifyCodeUseCase verifyCodeUseCase;
  sendForgetPasswordRequest(BuildContext context) {
    checkPhoneNumber(checkNumberUseCase: checkNumberUseCase, context: context);
  }

  verifyCode(BuildContext context) {
    verify(
        context: context,
        verifyCodeUseCase: verifyCodeUseCase,
        phoneNumber: phoneNumber.text,
        verificationId: '');
  }
}
