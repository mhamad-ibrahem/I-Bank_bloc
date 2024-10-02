


import '../../../config/app_config.dart';

mixin AdminMeetingLinks {
  String get getMeeting => '${AppConfig.baseUrlWithVersion}/AdministrationMeetings/GetAllPaged';

}
