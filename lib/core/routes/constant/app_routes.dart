



import 'sub_routes/auth_routes.dart';
import 'sub_routes/main_routes.dart';
import 'sub_routes/search_routes.dart';
import 'sub_routes/static_pages_route.dart';
import 'sub_routes/profile_routes.dart';

class AppRoutes with ProfileRoutes, AuthRoutes ,MainRoutes,PagesRoutes,SearchRoutes{
  static String splashScreen = "/";
  static String homeScreen = "/home";


  static String contactUs = "/contactUs";
  static String about = "/about";
  static String notificationsRoute = "/notifications";
  static String privacy = "/privacy";
 

}
