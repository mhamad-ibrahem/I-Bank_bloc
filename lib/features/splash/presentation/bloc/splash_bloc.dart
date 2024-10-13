import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/routes/route_export.dart';
import '../../../../core/config/classes/status_request.dart';
import '../../../../core/helpers/log_helper/log_helper.dart';
import '../../../../core/helpers/observer/app_block_observer.dart';
import '../../../../core/helpers/observer/app_cubit_observer.dart';
import '../../../../core/services/app_services.dart';
import '../../../../core/services/sub_services/notification_service/notifications_service_impl.dart';
import '../../../auth/shared/data/fire_base_auth_init.dart';
import '../../domain/use_case/get_local_user_data_use_case.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetUserLocalDataUseCase getUserLocalDataUseCase;
  StatusRequest statusRequest = StatusRequest.none;

  SplashBloc({required this.getUserLocalDataUseCase})
      : super(const SplashInitial(statusRequest: StatusRequest.none)) {
    //bloc & cubit observer
    Bloc.observer = AppBlocObserver();
    AppCubitObserver();
    ////
    on<SplashEvent>((event, emit) {
      if (event is InitEvent) {
        initialServices(event.context);
      }
    });
  }
  initialServices(BuildContext context) async {
    statusRequest = StatusRequest.loading;
    emit(SplashInitial(statusRequest: statusRequest));
    Future.delayed(const Duration(seconds: 2), () async {
      try {
      FirebaseApp app =  await Firebase.initializeApp();
        await NotificationsServiceImpl().init();
        AppServices.localUserData = await getUserLocalDataUseCase.execute();
        FireBaseAuthInit.initializeAuth(app);
        statusRequest = StatusRequest.none;
        LogHelper.logSuccess("token is :  ${AppServices.localUserData?.token}");
        LogHelper.logMagenta(
            "user id is ${AppServices.localUserData?.id}");

        context.go(
          AppServices.localUserData!=null? AppRoutes().mainRoute:
         AppRoutes().login);
      } catch (exception) {
        LogHelper.logError(exception.toString());
        statusRequest = StatusRequest.failure;
        emit(SplashInitial(statusRequest: statusRequest));
      }
    });
  }
}
