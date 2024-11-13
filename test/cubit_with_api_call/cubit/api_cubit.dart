import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/api/api_request.dart';
import 'package:ui_block/core/config/classes/dio/api_response.dart';
import 'package:ui_block/core/config/classes/status_request.dart';
part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
 final APIRequest apiCall;
  ApiCubit(this.apiCall) : super(const ApiInitial(statusRequest: StatusRequest.none));
  fetchData() async {
    emit(const ApiInitial(statusRequest: StatusRequest.loading));
    ApiResponse response = await apiCall.request();
    emit(ApiInitial(statusRequest: response.statusRequest));
    return response;
  }
}
