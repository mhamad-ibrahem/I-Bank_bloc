import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';
import '../../../../../../core/helpers/internet_functions/check_internet_connection.dart';
import '../../../../../../shared/widgets/toast/cherry_toast.dart';
import '../../model/forget_password_model.dart';

class VerifyCodeRepo {
  static Future<void> verify(
    ForgetPasswordModel model,
  ) async {
    LogHelper.logCyan("phone number is ${model.phoneNumber}");
    if (await checkInternetConnection()) {
      try {
        PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
            verificationId: model.verificationId!, smsCode: model.verifyCode!);
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithCredential(phoneAuthCredential);
        if (userCredential.user != null) {
          if (model.codeSentCallBack != null) {
            model.codeSentCallBack!();
          }
        }else{
           AppCherryToast.showErrorToast(
            errorMessage: 'wrong number', context: model.context);
        }
        model.context.pop();
      } catch (e) {
        model.context.pop();
        AppCherryToast.showErrorToast(
            errorMessage: '$e', context: model.context);
      }
    } else {
      AppCherryToast.showErrorToast(
          errorMessage: 'No internet connection', context: model.context);
      model.context.pop();
    }
  }
}
