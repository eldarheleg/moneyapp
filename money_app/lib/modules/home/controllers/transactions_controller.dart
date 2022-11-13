import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/Transaction.dart';

class TransactionController extends GetxController {
  RxInt id = 1.obs;
  RxDouble sum = 0.0.obs;
  final DateTime now = DateTime.now();

  final _listOfTransactions = <Transaction>[
    Transaction(
        id: 2,
        type: Types.topUp,
        name: "Top up",
        amount: 150,
        createdAt: DateTime.now().toString())
  ].obs;

  List<Transaction> get listOfTransactions => _listOfTransactions;

  double totalAmount() {
    double total = 0.0;
    for (var tx in listOfTransactions) {
      total += tx.amount;
    }
    sum.value = total;
    return sum.value;
  }

  void addSame(Transaction t) {
    listOfTransactions.add(t);
  }

  void addTransaction(String text, double amount, int a) {
    if (a == 0) {
      _listOfTransactions.add(Transaction(
          id: id.value,
          type: Types.payment,
          name: text,
          amount: amount * -1,
          createdAt: DateFormat().format(now)));

      id.value++;
    } else {
      _listOfTransactions.add(Transaction(
          id: id.value,
          type: Types.topUp,
          name: text,
          amount: amount,
          createdAt: DateFormat().format(now)));

      id.value++;
    }
  }
}
