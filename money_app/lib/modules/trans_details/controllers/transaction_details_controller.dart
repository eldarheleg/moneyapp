import 'package:get/get.dart';

class TransactionDetailsController extends GetxController {
  final RxBool isOn = false.obs;

  void toggleSwitch(bool val) {
    isOn.value = val;
  }
}
