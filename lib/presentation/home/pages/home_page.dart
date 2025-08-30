import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/presentation/home/controllers/checkbox_controller.dart';
import 'package:rootxsoftware_todo_app/routes/app_routes.dart';
import 'package:rootxsoftware_todo_app/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "RootXSoftware TODO",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildTask(taskDescription: "Description", taskTitle: 'Task 1'),
            ],
          ),
        ),
        floatingActionButton: _buildFabIcon(),
      ),
    );
  }

  ListTile _buildTask({
    String taskDescription = "",
    required String taskTitle,
  }) {
    return ListTile(
      leading: GetBuilder<CheckboxController>(
        builder: (controller) {
          return Checkbox(
            value: controller.isChecked,
            side: BorderSide(color: AppColors.primaryWhite, width: 2),
            onChanged: (value) => controller.toggleCheckbox(),
            checkColor: AppColors.primaryWhite,
            activeColor: AppColors.primaryOrange,
          );
        },
      ),
      title: GetBuilder<CheckboxController>(
        builder: (controller) {
          return Text(
            taskTitle,
            style: TextStyle(
              color: AppColors.primaryWhite,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              overflow: TextOverflow.ellipsis,
              decorationThickness: 2,
              decorationColor: AppColors.primaryOrange,
              decoration: controller.isChecked
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
            maxLines: 1,
          );
        },
      ),

      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: AppColors.primaryWhite),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(
                AppRoutes.createUpdateRoute,
                arguments: {
                  "appbarTitle": "Update Todo",
                  "buttonText": "Update",
                },
              );
            },
            icon: Icon(Icons.edit, color: AppColors.primaryWhite),
          ),
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                backgroundColor: AppColors.primaryWhite,
                middleText: taskDescription,
                title: "Full description",
                cancel: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryOrange,
                    foregroundColor: AppColors.primaryWhite,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Close"),
                ),
              );
            },
            icon: Icon(Icons.remove_red_eye, color: AppColors.primaryWhite),
          ),
        ],
      ),
    );
  }

  Padding _buildFabIcon() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        customBorder: CircleBorder(),
        onTap: () {
          Get.toNamed(
            AppRoutes.createUpdateRoute,
            arguments: {
              "appbarTitle": "Create New Todo",
              "buttonText": "Create",
            },
          );
        },
        child: CircleAvatar(
          maxRadius: 30,
          backgroundColor: AppColors.primaryWhite,

          child: Icon(Icons.add, size: 30, color: AppColors.primaryDark),
        ),
      ),
    );
  }
}
