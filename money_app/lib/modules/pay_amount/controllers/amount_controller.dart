import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmountController extends GetxController {
  RxDouble amount = 0.0.obs;
  

  void valueCounter(double newValue) {
    amount.value += newValue;
  }
}
