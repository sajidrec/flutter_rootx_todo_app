import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/presentation/home/pages/home_page.dart';
import 'package:rootxsoftware_todo_app/presentation/splash/pages/splash_page.dart';
import 'package:rootxsoftware_todo_app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.splashRoute, page: () => SplashPage()),
    GetPage(name: AppRoutes.homeRoute, page: () => HomePage()),
  ];
}
