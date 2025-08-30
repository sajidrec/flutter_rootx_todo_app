import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/theme/app_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(50),
                child: Shimmer(
                  color: AppColors.primaryOrange,
                  duration: Duration(seconds: 2),
                  child: Image.asset("lib/assets/images/rootx_logo.jpg"),
                ),
              ),
              const SizedBox(height: 14),
              Shimmer(
                color: AppColors.primaryWhite,
                duration: Duration(seconds: 1),
                child: Text(
                  "RootX Software Todo App",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryOrange,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: Get.width / 1.5,
                child: LinearProgressIndicator(
                  color: AppColors.primaryOrange,
                  borderRadius: BorderRadius.circular(25),
                  minHeight: 5,
                  backgroundColor: AppColors.primaryWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
