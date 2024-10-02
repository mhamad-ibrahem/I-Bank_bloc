

import '../../../config/app_config.dart';


mixin StaticPages{
   String get webDataLink => '${AppConfig.baseUrl}/Pages';
   String get sendMailLink => '${AppConfig.baseUrl}/Mail/SendMail';
}