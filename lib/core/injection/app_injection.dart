import 'package:get_it/get_it.dart';

import '../../features/auth/change_password/injection/change_password_injection.dart';
import '../../features/auth/forget_password/injection/forget_password_injection.dart';
import '../../features/auth/login/injection/login_injection.dart';
import '../../features/auth/register/injection/register_injection.dart';
import '../../features/main/injection/main_injection.dart';
import '../../features/splash/injection/splash_injection.dart';

final sl = GetIt.instance;

Future<void> injection() async {
  //splash
  splashInjection();
  //auth
  loginInjection();
  registerInjection();
  forgetPasswordInjection();
  changePasswordInjection();
  //main
  mainInjection();
}
