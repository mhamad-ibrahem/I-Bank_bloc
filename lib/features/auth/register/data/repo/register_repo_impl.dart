import 'package:firebase_auth/firebase_auth.dart';
import 'package:ui_block/core/config/classes/dio/api_response.dart';
import 'package:ui_block/core/config/classes/status_request.dart';
import 'package:ui_block/core/helpers/internet_functions/check_internet_connection.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';
import 'package:ui_block/shared/widgets/toast/cherry_toast.dart';
import '../../domain/repo/register_repo.dart';
import '../model/register_model.dart';

class RegisterRepoImpl implements RegisterRepo {
  @override
  Future<ApiResponse> register(
    RegisterModel model,
  ) async {
    if (await checkInternetConnection()) {
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: model.email, password: model.password);
        return ApiResponse(
            responseData: credential, statusRequest: StatusRequest.none);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AppCherryToast.showErrorToast(
              errorMessage: 'The password provided is too weak',
              context: model.context);
          return ApiResponse(
              responseData: '', statusRequest: StatusRequest.failure);
        } else if (e.code == 'email-already-in-use') {
          AppCherryToast.showErrorToast(
              errorMessage: 'The account already exists for that email',
              context: model.context);
          return ApiResponse(
              responseData: '', statusRequest: StatusRequest.failure);
        } else {
          AppCherryToast.showErrorToast(
              errorMessage: e.code, context: model.context);
          return ApiResponse(
              responseData: '', statusRequest: StatusRequest.failure);
        }
      } catch (e) {
        LogHelper.logError('error catch $e');
        AppCherryToast.showErrorToast(
            errorMessage: "$e", context: model.context);
        return ApiResponse(
            responseData: '', statusRequest: StatusRequest.failure);
      }
    } else {
      AppCherryToast.showErrorToast(
          errorMessage: 'No internet connection', context: model.context);
      return ApiResponse(
          responseData: '', statusRequest: StatusRequest.offlineFailure);
    }
  }
}
