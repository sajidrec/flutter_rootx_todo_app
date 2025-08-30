import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../models/todo_model.dart';

class SplashScreenController extends GetxController {
  List<TodoModel> todoList = [];

  Future<void> fetchData() async {
    final box = Hive.box("todo");

    var temp = box.values.map((e) => Map<String, dynamic>.from(e)).toList();

    todoList = [];

    for (var element in temp) {
      todoList.add(
        TodoModel(
          title: element['title'],
          description: element['description'],
          isDone: element['isDone'],
        ),
      );
    }

    update();
  }


  Future<void> delete({required int index}) async {
    final box = Hive.box("todo");

    await box.deleteAt(index);
    todoList.removeAt(index);

    update();
  }
}
