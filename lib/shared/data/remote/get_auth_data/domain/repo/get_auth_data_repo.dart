import '../../../../../../core/config/classes/dio/dio_response.dart';

abstract class GetAuthDataRepo {
  Future<DioResponse> getNations();
  Future<DioResponse> getPrincedom(int nationId);
  Future<DioResponse> getQualifications();
  Future<DioResponse> geJobTypes();
}
