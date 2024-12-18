import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';
import 'core/injection/app_injection.dart' as di;
import 'core/common/colors/app_colors.dart';
import 'core/routes/app_router.dart';
import 'core/services/app_services.dart';
import 'core/theme/theme.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  LogHelper.logSuccess("Handling a background message: ${message.messageId}");
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColors().black));
  await di.injection();
  await initialServices();
  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('ar'),
          Locale('en'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('ar'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(410, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightThemeArLang,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
