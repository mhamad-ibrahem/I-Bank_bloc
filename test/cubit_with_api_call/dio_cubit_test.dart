import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ui_block/core/api/api_provider.dart';
import 'package:ui_block/core/api/api_request.dart';
import 'package:ui_block/core/config/classes/dio/api_response.dart';
import 'package:ui_block/core/config/classes/status_request.dart';

import 'cubit/api_cubit.dart';

class MockApiService extends Mock implements APIRequest {}

void main() {
  group('Api test', () {
    late MockApiService mockApiService;
    late ApiCubit apiCubit;
    setUp(() {
      mockApiService = MockApiService();
      apiCubit = ApiCubit(mockApiService );
    });
    tearDown(() {
      apiCubit.close();
    });

    test("Init state ", () {
      expect(
          apiCubit.state, const ApiInitial(statusRequest: StatusRequest.none));
    });
    blocTest(
      'get data',
      build: () {
        when(() => mockApiService.request()).thenAnswer((_) async =>
            ApiResponse(responseData: [], statusRequest: StatusRequest.none));
        return apiCubit;
      },
      act: (bloc) => bloc.fetchData(),
      expect: () {
        return [
          const ApiInitial(statusRequest: StatusRequest.loading),
          const ApiInitial(statusRequest: StatusRequest.none)
        ];
      },
    );
    blocTest(
      'fail  state',
      build: () {
        when(() => mockApiService.request()).thenAnswer((_) async =>
            ApiResponse(responseData: [], statusRequest: StatusRequest.failure));
        return apiCubit;
      },
      act: (bloc) => bloc.fetchData(),
      expect: () {
        return [
          const ApiInitial(statusRequest: StatusRequest.loading),
          const ApiInitial(statusRequest: StatusRequest.failure)
        ];
      },
    );
  });
}

class ApiCall extends APIRequest {
  @override
  get body => {};

  @override
  bool get isAuthorized => false;

  @override
  HTTPMethod get method => HTTPMethod.get;

  @override
  Map<String, String>? get query => {};

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => '';
}