
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CheckboxController extends GetxController {
  bool isChecked = false;

  void toggleCheckbox() {
    isChecked = !isChecked;
    update();
  }
}
