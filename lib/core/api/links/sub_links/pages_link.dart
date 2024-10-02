import '../../../config/app_config.dart';

mixin PagesLink {
  String get getPages => "${AppConfig.baseUrl}/Pages";
  String get sendEmail => '${AppConfig.baseUrl}/Mail/SendMail';
}
