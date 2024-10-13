import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';
import '../../../../../../core/helpers/internet_functions/check_internet_connection.dart';
import '../../../../../../shared/widgets/toast/cherry_toast.dart';
import '../../model/forget_password_model.dart';

class CheckPhoneNumberRepo {
  static Future<void> checkNumber(
    ForgetPasswordModel model,
  ) async {
    LogHelper.logCyan("phone number is ${model.phoneNumber}");
    if (await checkInternetConnection()) {
      try {
        await FirebaseAuth.instance.verifyPhoneNumber(
            phoneNumber: model.phoneNumber,
            verificationCompleted: (PhoneAuthCredential credential) {},
            verificationFailed: (FirebaseAuthException error) {
              AppCherryToast.showErrorToast(
                  errorMessage: '$error', context: model.context);
            },
            codeSent: (String verificationId, int? forceResendingToken) {
              AppCherryToast.showSuccessToast(
                  message: 'PLease check your email and verify it to login',
                  context: model.context);
              if (model.codeSentCallBack != null) {
                model.codeSentCallBack!();
              }
            },
            codeAutoRetrievalTimeout: (String verificationId) {
              AppCherryToast.showErrorToast(
                  errorMessage: 'Time out', context: model.context);
            });
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
