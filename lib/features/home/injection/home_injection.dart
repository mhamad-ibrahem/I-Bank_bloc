




import '../../../../core/injection/app_injection.dart';
import '../presentation/bloc/home_bloc.dart';



Future<void> homeInjection() async {
//! Feature - home

// Bloc
  sl.registerFactory(() => HomeBloc());

}
