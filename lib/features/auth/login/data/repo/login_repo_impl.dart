import 'package:firebase_auth/firebase_auth.dart';
import 'package:ui_block/core/config/classes/dio/api_response.dart';
import 'package:ui_block/core/config/classes/status_request.dart';
import 'package:ui_block/core/helpers/internet_functions/check_internet_connection.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';
import 'package:ui_block/features/auth/login/data/model/login_model.dart';
import 'package:ui_block/shared/widgets/toast/cherry_toast.dart';
import '../../domain/repo/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  @override
  Future<ApiResponse> login(
    LoginModel loginModel,
  ) async {
    if (await checkInternetConnection()) {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: loginModel.email, password: loginModel.password);
        if (credential.user!.emailVerified == false) {
          AppCherryToast.showErrorToast(
              errorMessage: 'PLease check your email and verify it to login',
              context: loginModel.context);
          User? user = FirebaseAuth.instance.currentUser;
          await user!.sendEmailVerification();
          return ApiResponse(
              responseData: '', statusRequest: StatusRequest.failure);
        } else {
          return ApiResponse(
              responseData: credential, statusRequest: StatusRequest.none);
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          AppCherryToast.showErrorToast(
              errorMessage: 'No user found for that email',
              context: loginModel.context);
          return ApiResponse(
              responseData: '', statusRequest: StatusRequest.failure);
        } else if (e.code == 'wrong-password') {
          AppCherryToast.showErrorToast(
              errorMessage: 'Wrong password provided for that user',
              context: loginModel.context);
          return ApiResponse(
              responseData: '', statusRequest: StatusRequest.failure);
        } else {
          AppCherryToast.showErrorToast(
              errorMessage: e.code, context: loginModel.context);
          return ApiResponse(
              responseData: '', statusRequest: StatusRequest.failure);
        }
      } catch (e) {
        LogHelper.logError('error catch $e');
        AppCherryToast.showErrorToast(
            errorMessage: "$e",
            context: loginModel.context);
        return ApiResponse(
            responseData: '', statusRequest: StatusRequest.failure);
      }
    } else {
      AppCherryToast.showErrorToast(
          errorMessage: 'No internet connection', context: loginModel.context);
      return ApiResponse(
          responseData: '', statusRequest: StatusRequest.offlineFailure);
    }
  }
}
