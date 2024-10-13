import '../../../../core/injection/app_injection.dart';
import '../data/repo/register_repo_impl.dart';
import '../domain/repo/register_repo.dart';
import '../domain/use_case/register_use_case.dart';
import '../presentation/block/register_bloc.dart';

Future<void> registerInjection() async {
//! Feature - register

// Bloc
  sl.registerFactory(() => RegisterBloc(sl()));
// UseCases
  sl.registerLazySingleton(() => RegisterUseCase(sl()));
// Repository
  sl.registerLazySingleton<RegisterRepo>(() => RegisterRepoImpl());
}
