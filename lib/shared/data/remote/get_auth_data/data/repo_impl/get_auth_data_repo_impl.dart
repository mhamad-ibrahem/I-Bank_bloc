import '../../../../../../core/config/classes/dio/dio_response.dart';
import '../../../../../../core/config/classes/status_request.dart';
import '../../../../../../core/helpers/log_helper/log_helper.dart';
import '../../../../../models/custom_basic_model.dart';
import '../../../../../widgets/toast/cherry_toast.dart';
import '../../domain/repo/get_auth_data_repo.dart';
import '../data_source/get_auth_data_data_source.dart';

class GetAuthDataRepoImpl extends GetAuthDataRepo {
  @override
  Future<DioResponse> getNations() async {
    DioResponse data = await GetNationsDataApi.getNationsData().request();
    LogHelper.logCyan("status code is ${data.statusCode}");
    if (data.statusRequest == StatusRequest.none) {
      List responseList = data.responseData['data'];
      List<CustomBasicModel> dataList =
          responseList.map((e) => CustomBasicModel.fromJson(e)).toList();
      return DioResponse(
        responseData: dataList,
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

  @override
  Future<DioResponse> getPrincedom(int nationId) async {
    DioResponse data =
        await GetNationsDataApi.getPrincedoms(nationId).request();
    LogHelper.logCyan("status code is ${data.statusCode}");
    if (data.statusRequest == StatusRequest.none) {
      List responseList = data.responseData['data'];
      List<CustomBasicModel> dataList =
          responseList.map((e) => CustomBasicModel.fromJson(e)).toList();
      return DioResponse(
        responseData: dataList,
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

  @override
  Future<DioResponse> getQualifications() async {
    DioResponse data = await GetNationsDataApi.getQualifications().request();
    LogHelper.logCyan("status code is ${data.statusCode}");
    if (data.statusRequest == StatusRequest.none) {
      List responseList = data.responseData['data'];
      List<CustomBasicModel> dataList =
          responseList.map((e) => CustomBasicModel.fromJson(e)).toList();
      return DioResponse(
        responseData: dataList,
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

  @override
  Future<DioResponse> geJobTypes() async {
    DioResponse data = await GetNationsDataApi.getJobsTypes().request();
    LogHelper.logCyan("status code is ${data.statusCode}");
    if (data.statusRequest == StatusRequest.none) {
      List responseList = data.responseData['data'];
      List<CustomBasicModel> dataList =
          responseList.map((e) => CustomBasicModel.fromJson(e)).toList();
      return DioResponse(
        responseData: dataList,
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
