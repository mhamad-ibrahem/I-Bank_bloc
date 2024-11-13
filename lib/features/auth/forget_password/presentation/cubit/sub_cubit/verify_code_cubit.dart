import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/routes/route_export.dart';
import 'package:ui_block/features/auth/forget_password/data/model/forget_password_model.dart';
import 'package:ui_block/features/auth/forget_password/domain/use_case/verify_code_use_case.dart';
import 'package:ui_block/shared/widgets/loading/loading_dialog.dart';
import '../forget_password_cubit.dart';

mixin VerifyCodeCubit on Cubit<ForgetPasswordState> {
  final TextEditingController otpCode = TextEditingController();
  final GlobalKey<FormState> codeFormKey = GlobalKey<FormState>();
  verify(
      {required BuildContext context,
      required VerifyCodeUseCase verifyCodeUseCase,
      required String phoneNumber,
      required String verificationId}) async {
    if (codeFormKey.currentState!.validate()) {
      showLoadingDialog(context: context);
      await verifyCodeUseCase.execute(ForgetPasswordModel(
        phoneNumber: "+970$phoneNumber",
        context: context,
        verificationId: verificationId,
        verifyCode: otpCode.text,
        codeSentCallBack: () {
          context.push(AppRoutes().changePasswordRoute);
        },
      ));
    }
  }
}
