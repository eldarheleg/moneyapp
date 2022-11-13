import 'package:get/get.dart';
import 'package:flutter/material.dart';

import './transaction_item.dart';
import '../models/Transaction.dart';
import '../modules/home/controllers/transactions_controller.dart';

class TransactionList extends StatelessWidget {
  TransactionController c = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        
        shrinkWrap: true,
        itemCount: c.listOfTransactions.length,
            itemBuilder: (context, index) => TransactionItem(index: index)
      
    );
  }
}
