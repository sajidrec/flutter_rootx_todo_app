import 'package:flutter/material.dart';
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
            children: [_buildTask(taskDescription: "Task Description")],
          ),
        ),
        floatingActionButton: _buildFabIcon(),
      ),
    );
  }

  ListTile _buildTask({required String taskDescription}) {
    return ListTile(
      leading: Checkbox(value: true, onChanged: (value) => true),
      title: Text(
        taskDescription,
        style: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),

      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: AppColors.primaryWhite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit, color: AppColors.primaryWhite),
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
        onTap: () {},
        child: CircleAvatar(
          maxRadius: 40,
          backgroundColor: AppColors.primaryWhite,

          child: Icon(Icons.add, size: 35, color: AppColors.primaryDark),
        ),
      ),
    );
  }
}
