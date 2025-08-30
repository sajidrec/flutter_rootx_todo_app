import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/controller_binders.dart';
import 'package:rootxsoftware_todo_app/routes/app_pages.dart';
import 'package:rootxsoftware_todo_app/routes/app_routes.dart';

import 'theme/app_colors.dart';

class RootXSoftwareTODO extends StatelessWidget {
  const RootXSoftwareTODO({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinders(),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splashRoute,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.primaryDark),
    );
  }
}
