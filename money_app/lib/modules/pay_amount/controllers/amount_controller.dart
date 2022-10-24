import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmountController extends GetxController {
  var amount = 0.0.obs;
  static AmountController get to => Get.find<AmountController>();

  valueCounter(double newValue) {
    amount.value += newValue;
  }
}
