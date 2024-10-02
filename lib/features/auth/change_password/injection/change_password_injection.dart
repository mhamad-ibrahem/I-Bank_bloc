




import '../../../../core/injection/app_injection.dart';
import '../presentation/cubit/changepassword_cubit.dart';


Future<void> changePasswordInjection() async {
//! Feature - change_password

// Cubit
  sl.registerFactory(() => ChangePasswordCubit());

}
