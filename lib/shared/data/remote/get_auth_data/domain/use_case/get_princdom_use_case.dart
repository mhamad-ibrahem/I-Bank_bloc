
import '../../../../../../core/api/useCases/params_use_case.dart';
import '../../../../../../core/config/classes/dio/dio_response.dart';
import '../repo/get_auth_data_repo.dart';

class GetPrincedomUseCase extends ParamUseCase<DioResponse ,int> {
  final GetAuthDataRepo _repo;
  GetPrincedomUseCase(this._repo);

  @override
  Future<DioResponse> execute(int nationId) {
    return _repo.getPrincedom(nationId);
  }
}
