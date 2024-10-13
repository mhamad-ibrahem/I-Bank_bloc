




import '../../../../core/injection/app_injection.dart';
import '../presentation/bloc/search_bloc.dart';




Future<void> searchInjection() async {
//! Feature - search

// Bloc
  sl.registerFactory(() => SearchBloc());

}
