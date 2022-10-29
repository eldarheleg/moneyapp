import 'package:get/get.dart';

class TransactionDetailsController extends GetxController {
  final RxBool isOn = false.obs;
  final RxDouble current = 0.0.obs;

  void toggleSwitch(bool val) {
    isOn.value = val;
  }

  void halfAmount() {
    current.value = current.value / 2;
  }
}
