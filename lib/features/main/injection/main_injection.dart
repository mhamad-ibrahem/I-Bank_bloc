import '../../../../core/injection/app_injection.dart';
import '../../home/injection/home_injection.dart';
import '../presentation/bloc/main_bloc.dart';

Future<void> mainInjection() async {
//! Feature - main

// Bloc
  sl.registerFactory(() => MainBloc());

//sub injection
  homeInjection();
}
