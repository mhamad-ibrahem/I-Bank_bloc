import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';

class AppCubitObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
     LogHelper.logSuccess('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
     LogHelper.logCyan('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
     LogHelper.logError('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
     LogHelper.logError('onClose -- ${bloc.runtimeType}');
  }
}