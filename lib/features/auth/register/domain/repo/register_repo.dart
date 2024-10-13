import '../../../../../core/config/classes/dio/api_response.dart';
import '../../data/model/register_model.dart';


abstract class RegisterRepo {
  Future<ApiResponse> register(RegisterModel model);
}
