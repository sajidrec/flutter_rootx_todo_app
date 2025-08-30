import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/presentation/create_update_task/controllers/create_update_controller.dart';
import 'package:rootxsoftware_todo_app/routes/app_routes.dart';
import 'package:rootxsoftware_todo_app/theme/app_colors.dart';

import '../../../models/todo_model.dart';

class CreateUpdateTaskPage extends StatefulWidget {
  const CreateUpdateTaskPage({
    super.key,
    required this.appbarTitle,
    required this.buttonText,
    required this.titleText,
    required this.descriptionText,

    required this.index,
  });

  final int index;

  final String appbarTitle;
  final String buttonText;
  final String titleText;
  final String descriptionText;

  @override
  State<CreateUpdateTaskPage> createState() => _CreateUpdateTaskPageState();
}

class _CreateUpdateTaskPageState extends State<CreateUpdateTaskPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleTEC = TextEditingController();
  final TextEditingController _descriptionTEC = TextEditingController();

  @override
  void dispose() {
    _titleTEC.dispose();
    _descriptionTEC.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _titleTEC.text = widget.titleText;
    _descriptionTEC.text = widget.descriptionText;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.appbarTitle), centerTitle: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(color: AppColors.primaryWhite),
                        controller: _titleTEC,
                        cursorColor: AppColors.primaryWhite,
                        decoration: InputDecoration(
                          hintText: "Title",
                          counterStyle: TextStyle(
                            color: AppColors.primaryWhite,
                          ),
                        ),
                        maxLength: 20,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _descriptionTEC,
                        style: TextStyle(color: AppColors.primaryWhite),
                        cursorColor: AppColors.primaryWhite,
                        decoration: InputDecoration(
                          hintText: "Description",
                          counterStyle: TextStyle(
                            color: AppColors.primaryWhite,
                          ),
                        ),
                        maxLines: 6,
                        maxLength: 300,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: GetBuilder<CreateUpdateController>(
                          builder: (controller) {
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryOrange,
                                foregroundColor: AppColors.primaryWhite,
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  if (widget.buttonText == "Create") {
                                    await controller.addTodo(
                                      todo: TodoModel(
                                        title: _titleTEC.text,
                                        description: _descriptionTEC.text,
                                        isDone: false,
                                      ),
                                    );

                                    Get.offAllNamed(AppRoutes.homeRoute);
                                  } else {
                                    await controller.updateTodo(
                                      index: widget.index,
                                      newTitle: _titleTEC.text,
                                      newDescription: _descriptionTEC.text,
                                    );

                                    Get.offAllNamed(AppRoutes.homeRoute);
                                  }
                                }
                              },
                              child: Text(
                                widget.buttonText,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
