import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import '../config/app_config.dart';
import '../config/classes/dio/api_response.dart';
import '../config/classes/status_request.dart';
import '../helpers/internet_functions/check_internet_connection.dart';
import '../helpers/log_helper/log_helper.dart';
import 'api_request.dart';
import 'errors/dio_exceptions.dart';

class APIProvider {
  static const requestTimeOut = Duration(seconds: 30);
  final _client = Dio(BaseOptions(connectTimeout: requestTimeOut));
  static final _singleton = APIProvider();
  static APIProvider get instance => _singleton;

  Future<ApiResponse> request(APIRequest request) async {
    LogHelper.logCyan("Link is ${request.url}");
    LogHelper.logMagenta("method is ${request.method}");
    LogHelper.logCyan("body is ${request.body}");
    try {
      if (await checkInternetConnection()) {
        final response = await _client.request(
          request.url,
          options: Options(
            headers: request.isAuthorized == true
                ? AppConfig.authorizedHeaders
                : AppConfig.header,
            method: request.method.string,
            receiveTimeout: const Duration(seconds: 30),
            sendTimeout: const Duration(seconds: 30),
          ),
          queryParameters: request.query,
          data: request.body,
        );
        LogHelper.logCyan("status code is ${response.statusCode}");

        if (response.statusCode == 200 || response.statusCode == 201) {
          return ApiResponse(
              responseData: response.data,
              statusRequest: StatusRequest.none,
              statusCode: 200);
        } else {
          return ApiResponse(
              statusCode: 400,
              responseData: [],
              statusRequest: StatusRequest.failure,
              errorMessage: "Incorrect input");
        }
      } else {
        return ApiResponse(
          responseData: [],
          errorMessage: 'No internet connection',
          statusRequest: StatusRequest.offlineFailure,
        );
      }
    } on TimeoutException catch (_) {
      return ApiResponse(
        responseData: [],
        errorMessage: 'Receive connection timeout',
        statusRequest: StatusRequest.offlineFailure,
      );
    } on SocketException {
      return ApiResponse(
        responseData: [],
        errorMessage: 'No internet connection',
        statusRequest: StatusRequest.offlineFailure,
      );
    } on DioException catch (e) {
      LogHelper.logError("Dio exception error $e");
      return DioExceptions.showDioExceptionMessage(dioException: e);
    } on Exception catch (e) {
      LogHelper.logError("Catch error $e");
      return ApiResponse(
        responseData: [],
        errorMessage: "An Error Occurred ",
        statusRequest: StatusRequest.failure,
      );
    }
  }
}
