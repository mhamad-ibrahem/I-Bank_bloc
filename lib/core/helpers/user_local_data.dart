import 'dart:convert';
import '../../features/splash/data/model/local_user_data_model.dart';
import '../local_storage/get_storage.dart';
import '../local_storage/local_storage_box/local_storage_box.dart';

class UserLocalData {
 static LocalStorageService localStorageService =LocalStorageService();
 static setUserLocalData({LocalUserData? value}) {
    if (value != null) {
      localStorageService.setString(
          key: LocalStorageBox.userModelKey,
          value: json.encode(value.toJson()));
    }
  }
}
