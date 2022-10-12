import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/transactions_controller.dart';

class PayInputName extends StatelessWidget {
  const PayInputName({super.key});

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
          IconButton(onPressed:() => Get.toNamed("/PayInputAmount"), icon: Icon(Icons.backspace_outlined))
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
                Get.back(result: _text.text);
              },
              child: Text('posalji na glavni screen')),
        ],
      ),
    );;
  }
}