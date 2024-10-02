import 'dart:developer';

import '../log_helper/log_helper.dart';

class LocationHelper {
  static String getLong(String location) {
    LogHelper.logCyan("LOCATION IS $location");
    String long = '';
    location = location.split('LNG:').last;
    long = location;
    log("long $long");
    return long;
  }

  static String getLat(String location) {
    LogHelper.logCyan("LOCATION IS $location");
    String lat = '';
    location = location.split('LAT:').last.split(',LNG:').first;
    lat = location;
    log("lat $lat");
    return lat;
  }
}
