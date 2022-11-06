import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/light_theme.dart';
import '../controllers/amount_controller.dart';
import '../../trans_details/controllers/transaction_details_controller.dart';
import './custom_numpad.dart';

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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // display the entered numbers
            SizedBox(
              height: 70,
            ),
            Obx(() => Text.rich(TextSpan())),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 50,
                child: Center(
                    child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: lightTheme.primaryColor))),
                  controller: _text,
                  
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: const TextStyle(fontSize: 40),
                  // Disable the default soft keybaord
                  keyboardType: TextInputType.none,
                )),
              ),
            ),

            SizedBox(
              height: 50,
            ),
            CustomNumpad(
              buttonSize: 40,
              text: _text,
              delete: () =>
                  _text.text = _text.text.substring(0, _text.text.length - 1),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 200,
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                  onPressed: () {
                    Get.toNamed("/PayInputName");
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
  }
}
