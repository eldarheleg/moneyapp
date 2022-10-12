import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../models/Transaction.dart';

class TransactionController extends GetxController {
  RxList transactions = [].obs;
  TextEditingController amountController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  late Transaction transaction;
  var count = 0.obs;
  RxBool isOn = false.obs;

  void increment() {
    count++;
  }

  void toggleSwitcha() {
    if (isOn.value) {
      isOn.value = false;
    } else {
      isOn.value = true  ;
    }
    print(isOn.value);
  }
}
