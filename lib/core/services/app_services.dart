import 'package:easy_localization/easy_localization.dart';

import '../../features/splash/data/model/local_user_data_model.dart';
import '../local_storage/get_storage.dart';

class AppServices {
  // static LocalizationController? localizationController;
  static String fcmToken = '';
  static String token = '';
  static LocalUserData? localUserData;
  Future<AppServices> init() async {
    await LocalStorageService.init();
    await EasyLocalization.ensureInitialized();
    return this;
  }
}

initialServices() async {
  await AppServices().init();
}
