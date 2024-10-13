
import '../../domain/repo/forget_password_repo.dart';
import '../model/forget_password_model.dart';
import 'sup_repo/check_phone_number_repo.dart';


class ForgetPasswordRepoImpl implements ForgetPasswordRepo {
  @override
  Future<void> checkPhoneNumber(ForgetPasswordModel model) async {
 return await CheckPhoneNumberRepo.checkNumber(model);
  }
  
  @override
  Future<void> verifyCode(ForgetPasswordModel model) {
    // TODO: implement verifyCode
    throw UnimplementedError();
  }
 
}
