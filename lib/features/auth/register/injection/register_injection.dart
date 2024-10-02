




import '../../../../core/injection/app_injection.dart';
import '../presentation/block/register_bloc.dart';

Future<void> registerInjection() async {
//! Feature - register

// Bloc
  sl.registerFactory(() => RegisterBloc());

}
