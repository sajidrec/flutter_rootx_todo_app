import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/routes/app_routes.dart';
import 'package:rootxsoftware_todo_app/theme/app_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initialPageSetup();
  }

  Future<void> _initialPageSetup() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offAllNamed(AppRoutes.homeRoute);
  }

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
              _buildLogo(),
              const SizedBox(height: 14),
              _buildSplashText(),
              const SizedBox(height: 16),
              _buildLoadingIndecator(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildLoadingIndecator() {
    return SizedBox(
      width: Get.width / 1.5,
      child: LinearProgressIndicator(
        color: AppColors.primaryOrange,
        borderRadius: BorderRadius.circular(25),
        minHeight: 5,
        backgroundColor: AppColors.primaryWhite,
      ),
    );
  }

  Shimmer _buildSplashText() {
    return Shimmer(
      color: AppColors.primaryOrange,
      duration: Duration(seconds: 1),
      child: Text(
        "RootX Software Todo App",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryWhite,
        ),
      ),
    );
  }

  ClipRRect _buildLogo() {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(50),
      child: Shimmer(
        color: AppColors.primaryOrange,
        duration: Duration(seconds: 2),
        child: Image.asset("lib/assets/images/rootx_logo.jpg"),
      ),
    );
  }
}
