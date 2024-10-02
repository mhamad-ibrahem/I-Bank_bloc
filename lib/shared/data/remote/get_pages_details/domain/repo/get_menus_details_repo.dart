


import '../../../../../../core/config/classes/dio/dio_response.dart';

abstract class GetMenusDetailsRepo{
  Future<DioResponse> getMenusDetails(int id);
}