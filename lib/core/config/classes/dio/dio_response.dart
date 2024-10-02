



import '../status_request.dart';

class DioResponse {
  final dynamic responseData;
  final String? errorMessage;
  final StatusRequest statusRequest;
  final int? statusCode;
  final int finalPage;

  DioResponse(
      {required this.responseData,
      this.errorMessage,
      required this.statusRequest,
      this.finalPage = 100,
      this.statusCode});
}
