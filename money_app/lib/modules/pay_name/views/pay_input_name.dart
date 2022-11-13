import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/name_controller.dart';
import '../../home/controllers/transactions_controller.dart';
import '../../pay_amount/controllers/amount_controller.dart';
import '../../home/views/transactions_screen.dart';
//testing

class PayInputName extends StatelessWidget {
  NameController c = Get.put(NameController());
  TransactionController t = Get.put(TransactionController());
  AmountController a = Get.put(AmountController());

  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context);
    final _text = TextEditingController();
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
              onPressed: () => Get.toNamed("/PayInputAmount"),
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
              'To whom?',
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
                  controller: c.textController,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  onSubmitted: (value) {},
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
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                  onPressed: () {
                    Get.toNamed("/");
                    t.addTransaction(
                      c.text.toString(),
                      a.amount.value
                    );
                  },
                  child: Text('Pay',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18))),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
