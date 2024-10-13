
import '../../data/model/forget_password_model.dart';

abstract class ForgetPasswordRepo {
  Future<void> checkPhoneNumber(ForgetPasswordModel model);
  Future<void> verifyCode(ForgetPasswordModel model);
}
