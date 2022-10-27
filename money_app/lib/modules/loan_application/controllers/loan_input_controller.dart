import 'package:get/get.dart';

class LoanInputController extends GetxController {
  RxBool isOn = false.obs;

  toggleSwitch(bool val) {
    isOn.value = val;
  }
}
