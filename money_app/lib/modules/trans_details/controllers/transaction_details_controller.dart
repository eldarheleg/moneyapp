import 'package:get/get.dart';

import '../../../models/Transaction.dart';
import '../../home/controllers/transactions_controller.dart';

class TransactionDetailsController extends GetxController {
  final RxBool isOn = false.obs;
  final RxDouble current = 0.0.obs;
  TransactionController t = Get.find();

  void toggleSwitch(bool val) {
    isOn.value = val;
  }

  void splitAmount() {
    current.value = current.value / 2;
  }

  void repeatingPayment(int index) {
    t.addSame(Transaction(
        id: t.listOfTransactions[index].id,
        type: t.listOfTransactions[index].type,
        name: t.listOfTransactions[index].name,
        amount: t.listOfTransactions[index].amount,
        createdAt: t.listOfTransactions[index].createdAt));
    
  }
}
