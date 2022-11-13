import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../../../models/Transaction.dart';

class TransactionController extends GetxController {
  // int id;
  // Types type;
  // String name;
  // double amount;
  // final DateTime createdAt;
  //Types _types;
  final _listOfTransactions = <Transaction>[].obs;

  List<Transaction> get listOfTransactions => _listOfTransactions;

  addTransaction() {
    
  }

  var TopUpTransactions = <Transaction>[
    Transaction(
        id: 1,
        type: Types.top_up,
        name: 'narudzba',
        amount: 23.00,
        createdAt: DateTime.now()),
    Transaction(
        id: 2,
        type: Types.top_up,
        name: 'narudzba2',
        amount: 55.00,
        createdAt: DateTime.now()),
  ].obs;
}
