import '../../../config/app_config.dart';

mixin HomeLinks {
  String get homeSliderImages => '${AppConfig.baseUrl}/Blocks';
  String get homeBlockLink => '${AppConfig.baseUrl}/Blocks';
  String get getMenuLinks =>
      '${AppConfig.baseUrlWithVersion}/Menus/GetMenuMaster?categoryId=1';
  String get getMemberNumber =>
      '${AppConfig.baseUrlWithVersion}/Members/GetAllPagedActive';
}
