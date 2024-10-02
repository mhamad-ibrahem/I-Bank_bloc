
import '../../../../../../core/api/api_provider.dart';
import '../../../../../../core/api/api_request.dart';
import '../../../../../../core/api/links/api_links.dart';
import '../../../../../../core/config/classes/dio/dio_response.dart';

enum GetMenusDetailsRequestType { getMenusDetails }

class GetMenusDetailsApi implements APIRequest {
  final GetMenusDetailsRequestType type;
  final int id;
  GetMenusDetailsApi._({
    required this.type,
    required this.body,
    required this.id,
  });

  GetMenusDetailsApi.getData(int id)
      : this._(
            type: GetMenusDetailsRequestType.getMenusDetails,
            body: null,
            id: id);

  @override
  String get url {
    switch (type) {
      case GetMenusDetailsRequestType.getMenusDetails:
        return "${ApiLinks().getPages}/$id";
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
