import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/presentation/create_update_task/controllers/create_update_controller.dart';
import 'package:rootxsoftware_todo_app/presentation/home/controllers/checkbox_controller.dart';

class ControllerBinders extends Bindings {
  @override
  void dependencies() {
    Get.put(CheckboxController());
    Get.put(CreateUpdateController());
  }
}
