import '../../../config/app_config.dart';

mixin AuthLinks {
  String get login => '${AppConfig.baseUrl}/identity/token';
  String get registerLink => '${AppConfig.baseUrl}/identity/user';
  String get forgetPasswordLink =>
      '${AppConfig.baseUrl}/identity/user/forgot-password';
  String get changePasswordLink =>
      '${AppConfig.baseUrl}/identity/account/ChangePassword';

  //profile data

  String get getMemberProfile => '${AppConfig.baseUrlWithVersion}/Members';
  String get getGuestProfile => '${AppConfig.baseUrlWithVersion}/Guests';
  String get memberShipRenewalLink =>
      '${AppConfig.baseUrlWithVersion}/Members/SaveRequestNewMember';

  static String changePassword =
      '${AppConfig.baseUrlWithVersion}/identity/account/ChangePassword';
  String get updatePersonProfile => '${AppConfig.baseUrlWithVersion}/Drivers';

  String get getAllNationsLink => '${AppConfig.baseUrlWithVersion}/Nations';
  String get getPrincedomsLink => '${AppConfig.baseUrlWithVersion}/Princedoms';
  String get getQualificationsLink =>
      '${AppConfig.baseUrlWithVersion}/Qualifications';
  String get getJobsTypesLink => '${AppConfig.baseUrlWithVersion}/jobstypes';

  String get deleteMemberAccountLink =>
      '${AppConfig.baseUrlWithVersion}/Members/RequestDeleteMemberAccount';
  String get deleteGuestAccountLink =>
      '${AppConfig.baseUrlWithVersion}/Guests/RequestDeleteGuestAccount';
  //roles
  String get registerMemberLink => '${AppConfig.baseUrlWithVersion}/Members';
  String get registerGuestsLink => '${AppConfig.baseUrlWithVersion}/Guests';
}
