

import '../../features/main/presentation/view/pages/main_page.dart';
import 'route_export.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.splashScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
      ),
      //auth
      GoRoute(
        path: AppRoutes().login,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: AppRoutes().register,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterPage();
        },
      ),
      GoRoute(
        path: AppRoutes().forgetPasswordRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPasswordPage();
        },
      ),
      GoRoute(
        path: AppRoutes().verifyRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const VerifyCodePage();
        },
      ),
      GoRoute(
        path: AppRoutes().changePasswordRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const ChangePasswordPage();
        },
      ),
      GoRoute(
        path: AppRoutes().successChangePasswordRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SuccessAuthPage();
        },
      ),
      //main
       GoRoute(
        path: AppRoutes().mainRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const MainPage();
        },
      ),
    ],
  );
}
