import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:rootxsoftware_todo_app/models/todo_model.dart';

class CreateUpdateController extends GetxController {
  Future<void> addTodo({required TodoModel todo}) async {
    final box = await Hive.openBox("todo");

    await box.add({
      "title": todo.title,
      "description": todo.description,
      "isDone": todo.isDone,
    });
  }

  Future<void> toggleTodoDone({required int index}) async {
    final box = await Hive.openBox("todo");
    final todo = Map<String, dynamic>.from(box.getAt(index));
    todo['isDone'] = !todo['isDone'];
    await box.putAt(index, todo);
  }

  Future<void> updateTodo({
    required int index,
    required String newTitle,
    required String newDescription,
  }) async {
    final box = await Hive.openBox("todo");
    final todo = Map<String, dynamic>.from(box.getAt(index));
    todo['title'] = newTitle;
    todo['description'] = newDescription;
    await box.putAt(index, todo);
  }

  Future<void> delete({required int index}) async {
    final box = await Hive.openBox("todo");
    await box.deleteAt(index);
  }
}
