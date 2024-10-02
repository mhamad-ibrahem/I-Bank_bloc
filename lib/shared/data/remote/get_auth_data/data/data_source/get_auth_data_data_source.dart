

import '../../../../../../core/api/api_provider.dart';
import '../../../../../../core/api/api_request.dart';
import '../../../../../../core/api/links/api_links.dart';
import '../../../../../../core/config/classes/dio/dio_response.dart';

enum GetAuthDataRequestType {
  getNations,
  getPrincedoms,
  getJopTypes,
  getQualifications
}

class GetNationsDataApi implements APIRequest {
  final GetAuthDataRequestType type;
  final int? id;
  GetNationsDataApi._({
    required this.type,
    required this.body,
    this.id,
  });

  GetNationsDataApi.getNationsData()
      : this._(
          type: GetAuthDataRequestType.getNations,
          body: null,
        );
  GetNationsDataApi.getPrincedoms(int id)
      : this._(type: GetAuthDataRequestType.getPrincedoms, body: null, id: id);
  GetNationsDataApi.getQualifications()
      : this._(
          type: GetAuthDataRequestType.getQualifications,
          body: null,
        );
  GetNationsDataApi.getJobsTypes()
      : this._(
          type: GetAuthDataRequestType.getJopTypes,
          body: null,
        );

  @override
  String get url {
    switch (type) {
      case GetAuthDataRequestType.getNations:
        return ApiLinks().getAllNationsLink;
      case GetAuthDataRequestType.getPrincedoms:
        return ApiLinks().getPrincedomsLink;
      case GetAuthDataRequestType.getQualifications:
        return ApiLinks().getQualificationsLink;
      case GetAuthDataRequestType.getJopTypes:
        return ApiLinks().getJobsTypesLink;
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  bool get isAuthorized => true;

  @override
  Map<String, String> get query {
    return {};
  }

  @override
  dynamic body;

  @override
  Future<DioResponse> request() {
    return APIProvider.instance.request(this);
  }
}
