import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/Transaction.dart';
import '../../../widgets/transaction_list.dart';
import '../../home/controllers/transactions_controller.dart';
import '../controllers/amount_controller.dart';
import '../../home/views/transactions_screen.dart';

class PayInputAmount extends StatelessWidget {
  //final TransactionsScreen tran = TransactionsScreen();
  final TransactionController tranController = TransactionController();
  final AmountController amoCon = AmountController.to;

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context);
    //final controller = TransactionController();
    final _text = TextEditingController();
    var value = 0.0;
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
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'How much?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: TextField(
                
                  controller: _text,
                  decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
                  onSubmitted: (value) {
                    double val = double.parse(value);
                    amoCon.valueCounter(val);
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            SizedBox(
                width: 200,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),),
                    onPressed: () {
                    Get.toNamed("/PayInputName");
                    amoCon.valueCounter(double.parse(_text.text));
                  },
                    child: Text('Next',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 18))),
              ),
            
          ],
        ),
      ),
    );
  }
}
