import 'package:get/get.dart';
import 'package:rootxsoftware_todo_app/presentation/home/controllers/checkbox_controller.dart';

class ControllerBinders extends Bindings {
  @override
  void dependencies() {
    Get.put(CheckboxController());
  }
}
