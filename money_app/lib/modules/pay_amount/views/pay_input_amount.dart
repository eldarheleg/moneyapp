import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/light_theme.dart';
import '../controllers/amount_controller.dart';
import '../../home/controllers/transactions_controller.dart';
import '../../pay_name/controllers/name_controller.dart';
import '../../../widgets/custom_numpad.dart';

class PayInputAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final th = Theme.of(context);
    AmountController c = Get.put(AmountController());
    TransactionController t = Get.put(TransactionController());
    NameController n = Get.put(NameController());

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
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
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
                  controller: c.amountController,

                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: const TextStyle(fontSize: 40),
                  // Disable the default soft keybaord
                  keyboardType: TextInputType.number,
                )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // CustomNumpad(
            //   buttonSize: 40,
            //   text: _text,
            //   delete: () =>
            //       _text.text = _text.text.substring(0, _text.text.length - 1),
            // ),
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
                    if (c.isPay.value == 0) {
                      if (c.amountController.text.isEmpty) {
                        Get.snackbar("OPS", "textfield is empty");
                      } else {
                        c.submitData();
                        c.amountController.clear();
                        Get.toNamed("/PayInputName");
                      }
                    } else {
                      c.submitData();
                      c.amountController.clear();
                      t.addTransaction("Top Up", c.amount.value, c.isPay.value);
                      n.text.value = "";
                      c.amount.value = 0.0;
                      c.isPay.value = 0;
                      Get.toNamed("/");
                    }
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
