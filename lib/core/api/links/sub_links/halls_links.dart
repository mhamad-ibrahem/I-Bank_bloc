import '../../../config/app_config.dart';

mixin HallsLinks {
  String get getHalls => '${AppConfig.baseUrlWithVersion}/Halls/GetAllPaged';
  String get reserveHalls => '${AppConfig.baseUrlWithVersion}/Reservations';
  String get subscribe => '${AppConfig.baseUrlWithVersion}/Subscribes';
  String get getExhibitions =>
      '${AppConfig.baseUrlWithVersion}/Exhibitions/GetAllPaged';
}
