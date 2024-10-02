import '../../../../../../core/api/useCases/params_use_case.dart';
import '../../../../../../core/config/classes/dio/dio_response.dart';
import '../repo/get_menus_details_repo.dart';

class GetMenusDetailsUseCase extends ParamUseCase<DioResponse, int > {
  final GetMenusDetailsRepo _repo;
  GetMenusDetailsUseCase(this._repo);

  @override
  Future<DioResponse> execute(int id) {
    return _repo.getMenusDetails(id);
  }
}
