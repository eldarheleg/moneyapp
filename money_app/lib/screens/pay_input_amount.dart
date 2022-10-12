import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/Transaction.dart';
import '../widgets/transaction_list.dart';
import '../controllers/transactions_controller.dart';
import './transactions_screen.dart';

class PayInputAmount extends StatelessWidget {
  final TransactionsScreen tran = TransactionsScreen();
  final TransactionController tranController = TransactionController();

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context);
    final controller = TransactionController();
    final TextEditingController _text = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: th.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Get.toNamed("/"),
              icon: Icon(Icons.backspace_outlined))
        ],
      ),
      body: Column(
        children: [
          Text('How much?'),
          Center(
            child: TextField(
              controller: _text,
              decoration: InputDecoration(labelText: 'amount'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Get.find<TransactionController>().increment();
              },
              child: Text('posalji na glavni screen')),
        ],
      ),
    );
  }
}
