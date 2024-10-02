


import '../../../core/injection/app_injection.dart';
import '../data/repo/splash_repo_impl.dart';
import '../domain/repo/splash_repo.dart';
import '../domain/use_case/get_local_user_data_use_case.dart';
import '../presentation/bloc/splash_bloc.dart';

Future<void> splashInjection() async {
//! Feature - splash

// Bloc

  sl.registerFactory(() => SplashBloc(getUserLocalDataUseCase: sl()));
// UseCases
  sl.registerLazySingleton(() => GetUserLocalDataUseCase(sl()));
// Repository
  sl.registerLazySingleton<SplashRepo>(
      () => SplashRepoImpl());
}
