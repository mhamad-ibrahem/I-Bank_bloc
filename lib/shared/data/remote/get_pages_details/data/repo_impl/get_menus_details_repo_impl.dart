
import '../../../../../../core/config/classes/dio/dio_response.dart';
import '../../../../../../core/config/classes/status_request.dart';
import '../../../../../../core/helpers/log_helper/log_helper.dart';
import '../../../../../models/pages_model.dart';
import '../../../../../widgets/toast/cherry_toast.dart';
import '../../domain/repo/get_menus_details_repo.dart';
import '../data_source/get_menus_details_data_source.dart';

class GetMenusDetailsRepoImpl extends GetMenusDetailsRepo {
  @override
  Future<DioResponse> getMenusDetails(int id) async {
    DioResponse data = await GetMenusDetailsApi.getData(id).request();
    LogHelper.logCyan("status code is ${data.statusCode} data is ${data.responseData}");
    if (data.statusRequest == StatusRequest.none) {
      PagesModel pagesModel = PagesModel.fromJson(data.responseData);
      return DioResponse(
        responseData: pagesModel,
        statusRequest: StatusRequest.none,
      );
    } else {
      AppCherryToast.showErrorToast(errorMessage: data.errorMessage ?? '');
      return DioResponse(
        responseData: null,
        statusRequest: StatusRequest.failure,
        errorMessage: data.errorMessage,
        statusCode: data.statusCode,
      );
    }
  }
}
