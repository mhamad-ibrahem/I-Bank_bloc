
import '../../../../../../core/api/useCases/no_params_use_case.dart';
import '../../../../../../core/config/classes/dio/dio_response.dart';
import '../repo/get_auth_data_repo.dart';

class GetQualificationsUseCase extends NoParamUseCase<DioResponse > {
  final GetAuthDataRepo _repo;
  GetQualificationsUseCase(this._repo);

  @override
  Future<DioResponse> execute() {
    return _repo.getQualifications();
  }
}
