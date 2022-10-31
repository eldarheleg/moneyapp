import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './numpad.dart';
import '../controllers/amount_controller.dart';
import '../../trans_details/controllers/transaction_details_controller.dart';

class PayInputAmount extends StatelessWidget {
  AmountController c = Get.put(AmountController());
  TransactionDetailsController t = Get.put(TransactionDetailsController());
  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context);
    TextEditingController _text = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffC0028B),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display the entered numbers
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 70,
                child: Center(
                    child: TextField(
                  controller: _text,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: const TextStyle(fontSize: 40),
                  // Disable the default soft keybaord
                  keyboardType: TextInputType.none,
                )),
              ),
            ),
            // implement the custom NumPad
            NumPad(
              buttonSize: 75,
              buttonColor: Colors.purple,
              iconColor: Colors.deepOrange,
              controller: _text,
              delete: () {
                _text.text = _text.text.substring(0, _text.text.length - 1);
              },
              // do something with the input numbers
              onSubmit: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
