import '../../../../../core/config/classes/dio/api_response.dart';
import '../../data/model/login_model.dart';

abstract class LoginRepo {
  Future<ApiResponse> login(LoginModel loginModel);
}
