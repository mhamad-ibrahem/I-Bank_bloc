import '../../../../../core/api/useCases/params_use_case.dart';
import '../../../../../core/config/classes/dio/api_response.dart';
import '../../data/model/register_model.dart';
import '../repo/register_repo.dart';

class RegisterUseCase extends ParamUseCase<ApiResponse, RegisterModel> {
  final RegisterRepo _repo;
  RegisterUseCase(this._repo);

  @override
  Future<ApiResponse> execute(RegisterModel req) {
    return _repo.register(req);
  }
}
