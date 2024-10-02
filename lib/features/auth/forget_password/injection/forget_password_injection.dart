




import '../../../../core/injection/app_injection.dart';
import '../presentation/cubit/forget_password_cubit.dart';

Future<void> forgetPasswordInjection() async {
//! Feature - forget_password

// Cubit
  sl.registerFactory(() => ForgetPasswordCubit());

}
