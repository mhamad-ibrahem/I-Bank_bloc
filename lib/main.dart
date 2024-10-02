import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/injection/app_injection.dart' as di;
import 'core/common/colors/app_colors.dart';
import 'core/routes/app_router.dart';
import 'core/services/app_services.dart';
import 'core/theme/theme.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColors().black));
  await di.injection();
  await initialServices();
  runApp(const MyApp());
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
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightThemeArLang,
          routerConfig: AppRouter.router,
          // translations: Localization(),
          // locale: AppServices.localizationController?.language,
          // getPages: AppRouter.getPages,
        );
      },
    );
  }
}
