import 'package:get/get.dart';

class CheckboxController extends GetxController {
  bool isChecked = false;

  void toggleCheckbox() {
    isChecked = !isChecked;
    update();
  }
}
