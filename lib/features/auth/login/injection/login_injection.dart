import 'package:ui_block/features/auth/login/domain/use_case/login_use_case.dart';

import '../../../../core/injection/app_injection.dart';
import '../data/repo/login_repo_impl.dart';
import '../domain/repo/login_repo.dart';
import '../presentation/block/login_bloc.dart';

Future<void> loginInjection() async {
//! Feature - login

// Bloc
  sl.registerFactory(() => LoginBloc(sl()));
// UseCases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
// Repository
  sl.registerLazySingleton<LoginRepo>(() => LoginRepoImpl());
}
