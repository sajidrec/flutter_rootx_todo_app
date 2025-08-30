import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/presentation/create_update_task/pages/create_update_task_page.dart';
import 'package:rootxsoftware_todo_app/presentation/home/pages/home_page.dart';
import 'package:rootxsoftware_todo_app/presentation/splash/pages/splash_page.dart';
import 'package:rootxsoftware_todo_app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.splashRoute, page: () => SplashPage()),
    GetPage(
      name: AppRoutes.homeRoute,
      page: () => HomePage(todoList: Get.arguments["todoList"]),
    ),
    GetPage(
      name: AppRoutes.createUpdateRoute,
      page: () => CreateUpdateTaskPage(
        appbarTitle: Get.arguments['appbarTitle'],
        buttonText: Get.arguments['buttonText'],
        titleText: Get.arguments['titleText'],
        descriptionText: Get.arguments['descriptionText'],
        index: Get.arguments['index'],
      ),
    ),
  ];
}
