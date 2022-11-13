import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmountController extends GetxController {
  final amountController = TextEditingController();
  RxDouble amount = 0.0.obs;

  void submitData() {
    if (amountController.text.isEmpty) {
      return;
    } else {
      double enteredAmount = double.parse(amountController.text);
      if (amountController.text.isEmpty || enteredAmount == 0.0) {
        return;
      } else {
        amount.value = enteredAmount;
      }
      amountController.clear();
    }
  }
}
