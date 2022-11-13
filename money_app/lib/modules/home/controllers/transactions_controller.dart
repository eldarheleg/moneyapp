import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/Transaction.dart';

class TransactionController extends GetxController {
  RxInt id = 1.obs;
  // Types type;
  // String name;
  // double amount;
  final DateTime now = DateTime.now();
  //Types _types;
  final _listOfTransactions = <Transaction>[].obs;
  //final textController = TextEditingController();
  //final amountController = TextEditingController();

  List<Transaction> get listOfTransactions => _listOfTransactions;

  addTransaction(String text, double amount) {
    if (text.isEmpty || amount == 0.0) {
      Get.snackbar("opss", "that cannot be approved");
    } else {
      _listOfTransactions.add(Transaction(
          id: id.value,
          type: Types.payment,
          name: text,
          amount: amount,
          createdAt: DateFormat().format(now)));
    }
    id++;
  }
}
