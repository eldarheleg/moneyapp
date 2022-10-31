import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../../../models/Transaction.dart';

class TransactionController extends GetxController {
var PayTransactions = <Transaction> [
    Transaction(
        id: 1,
        type: Types.payment,
        name: 'narudzba',
        amount: 23.00,
        createdAt: DateTime.now()),
    Transaction(
        id: 2,
        type: Types.payment,
        name: 'narudzba2',
        amount: 55.00,
        createdAt: DateTime.now()),
  ].obs;
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
