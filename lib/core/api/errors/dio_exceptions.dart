import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../config/classes/dio/dio_response.dart';
import '../../config/classes/status_request.dart';
import '../../helpers/log_helper/log_helper.dart';

class DioExceptions {
  static DioResponse showDioExceptionMessage({
    required DioException dioException,
  }) {
    DioResponse dioResponse =
        DioResponse(responseData: '', statusRequest: StatusRequest.failure);
    // if (dioException.message != null) {
    LogHelper.logError("error is ${dioException.response}");
    if (dioException.message!.contains("401")) {
      dioResponse = DioResponse(
          responseData: '',
          errorMessage: "Un authorized".tr,
          statusRequest: StatusRequest.failure);
    }
    // }
    else if (dioException.response != null) {
      dioResponse =
          showDioExceptionMessageByStatusCode(dioException: dioException);
    } else {
      log("exception is ${dioException.type}");
      switch (dioException.type) {
        case DioExceptionType.receiveTimeout:
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: 'Receive connection timeout'.tr,
              statusRequest: StatusRequest.offlineFailure);
          break;
        case DioExceptionType.connectionTimeout:
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: 'Request connection timeout'.tr,
              statusRequest: StatusRequest.offlineFailure);
          break;
        case DioExceptionType.sendTimeout:
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: 'Request connection timeout'.tr,
              statusRequest: StatusRequest.offlineFailure);
          break;
        case DioExceptionType.connectionError:
          LogHelper.logError(
              "check internet connections or check api end point");
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: 'No internet connection'.tr,
              statusRequest: StatusRequest.offlineFailure);
          break;
        case DioExceptionType.cancel:
          //error on body parameter
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: 'Something went wrong try again'.tr,
              statusRequest: StatusRequest.failure);
          break;
        case DioExceptionType.badResponse:
          //error on body parameter
          LogHelper.logError("error is ${dioException.response}");
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: dioException.response?.data,
              statusRequest: StatusRequest.failure);
          break;
        case DioExceptionType.unknown:
          //error on host end  point
          LogHelper.logError("error is ${dioException.response}");
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: "Un know error".tr,
              statusRequest: StatusRequest.failure);
          break;
        default:
          LogHelper.logError("error is ${dioException.response}");
          dioResponse = DioResponse(
              responseData: '',
              errorMessage: "Un know error".tr,
              statusRequest: StatusRequest.failure);
      }
    }
    return dioResponse;
  }

  static DioResponse showDioExceptionMessageByStatusCode(
      {required DioException dioException}) {
    if (dioException.response?.statusCode == 400) {
      return DioResponse(
          statusCode: 400,
          responseData: '',
          errorMessage: 'Bad response incorrect input'.tr,
          statusRequest: StatusRequest.failure);
    } else if (dioException.response?.statusCode == 401) {
      return DioResponse(
          statusCode: 401,
          responseData: '',
          errorMessage: "Un authorized".tr,
          statusRequest: StatusRequest.failure);
    } else if (dioException.response?.statusCode == 403) {
      return DioResponse(
          statusCode: 403,
          responseData: '',
          errorMessage: "Un authorized".tr,
          statusRequest: StatusRequest.failure);
    } else if (dioException.response?.statusCode == 500) {
      return DioResponse(
          statusCode: 500,
          responseData: '',
          errorMessage: 'Server error'.tr,
          statusRequest: StatusRequest.failure);
    } else if (dioException.response?.statusCode == 404) {
      return DioResponse(
          statusCode: 404,
          responseData: '',
          errorMessage: 'Server error'.tr,
          statusRequest: StatusRequest.failure);
    } else {
      LogHelper.logError("error is ${dioException.response?.data}");
      return DioResponse(
          responseData: '',
          errorMessage: dioException.response?.data != null
              ? dioException.response?.data['messages'] != null
                  ? dioException.response?.data['messages'].isNotEmpty
                      ? dioException.response?.data['messages'][0].toString().tr
                      : 'Bad response incorrect input'
                  : 'Bad response incorrect input'.tr
              : 'Bad response incorrect input'.tr,
          statusRequest: StatusRequest.failure);
    }
  }
}
