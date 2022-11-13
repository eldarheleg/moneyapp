import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmountController extends GetxController {
  final amountController = TextEditingController();
  RxDouble amount = 0.0.obs;
  RxInt isPay = 0.obs;

  void submitData() {
    amount.value = double.parse(amountController.text);
  }
}
