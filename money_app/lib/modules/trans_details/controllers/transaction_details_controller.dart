import 'package:get/get.dart';
import '../../../models/Transaction.dart';

class TransactionDetailsController extends GetxController {
  final RxBool isOn = false.obs;
  final RxDouble current = 0.0.obs;

  void toggleSwitch(bool val) {
    isOn.value = val;
  }

  void splitAmount() {
    current.value = current.value / 2;
  }

  void repeatingPayment(double amount, String name) {
    
    
  }
}
