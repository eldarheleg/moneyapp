import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/transactions_controller.dart';
import '../screens/transactions_screen.dart';
import '../controllers/amount_controller.dart'; //testing

class PayInputName extends StatelessWidget {
  final TransactionController tranController = TransactionController();
  final AmountController amoCon = AmountController.to;

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
              height: 100.h,
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
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Center(
                child: TextField(
                  controller: _text,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  onSubmitted: (value) {
                    double val = double.parse(value);
                    amoCon.valueCounter(val);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 300.h,
            ),
            SizedBox(
              width: 200.w,
              height: 60.h,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                  onPressed: () {
                    amoCon.valueCounter(double.parse(_text.text));
                    Get.toNamed("/");
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
