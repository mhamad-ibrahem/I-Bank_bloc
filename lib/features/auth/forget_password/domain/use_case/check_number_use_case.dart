import '../../../../../core/api/useCases/params_use_case.dart';
import '../../data/model/forget_password_model.dart';
import '../repo/forget_password_repo.dart';

class CheckNumberUseCase extends ParamUseCase<void, ForgetPasswordModel> {
  final ForgetPasswordRepo _repo;
  CheckNumberUseCase(this._repo);

  @override
  Future<void> execute(ForgetPasswordModel req) {
    return _repo.checkPhoneNumber(req);
  }
}
