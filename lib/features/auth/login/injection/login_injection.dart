




import '../../../../core/injection/app_injection.dart';
import '../presentation/block/login_bloc.dart';

Future<void> loginInjection() async {
//! Feature - login

// Bloc
  sl.registerFactory(() => LoginBloc());

}
