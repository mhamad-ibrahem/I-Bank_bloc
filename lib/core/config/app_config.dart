

import '../services/app_services.dart';

class AppConfig {
  static Map<String, String> header = {
    'Content-Type': 'application/json',
  };
  static Map<String, String> authorizedHeaders = {
    'Content-Type': 'application/json',
    'Authorization': "Bearer ${AppServices.localUserData?.token}",
  };
  static const String baseUrl = "https://admin.uaeja.online/api";
  static const String baseImageUrl = "https://admin.uaeja.online";
  static const String version = "v1";
  static const String baseUrlWithVersion = "$baseUrl/$version";
  static const String baseUrlWithOutVersion = baseUrl;
  static const String googleMapsKey = "AIzaSyDuuMp_q2HijskSPUzTcB3_wOiSubL1LV0";
  static const String placeHolderImage = "https://img.freepik.com/premium-vector/default-image-icon-vector-missing-picture-page-website-design-mobile-app-no-photo-available_87543-11093.jpg";
}


