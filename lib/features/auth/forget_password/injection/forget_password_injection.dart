import '../../../../core/injection/app_injection.dart';
import '../data/repo/login_repo_impl.dart';
import '../domain/repo/forget_password_repo.dart';
import '../domain/use_case/check_number_use_case.dart';
import '../domain/use_case/verify_code_use_case.dart';
import '../presentation/cubit/forget_password_cubit.dart';

Future<void> forgetPasswordInjection() async {
//! Feature - forget_password

// Cubit
  sl.registerFactory(() => ForgetPasswordCubit(sl(),sl()));
// UseCases
  sl.registerLazySingleton(() => CheckNumberUseCase(sl()));
  sl.registerLazySingleton(() => VerifyCodeUseCase(sl()));
// Repository
  sl.registerLazySingleton<ForgetPasswordRepo>(() => ForgetPasswordRepoImpl());
}
