import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pay_amount/views/pay_input_amount.dart';
import '../../../models/Transaction.dart' as Tr;
import '../../../widgets/transaction_list.dart';
import '../controllers/transactions_controller.dart';
import '../../pay_amount/controllers/amount_controller.dart';
import '../../../widgets/loan.dart';
import '../../../widgets/pay.dart';
import '../../../widgets/top_up.dart';

class TransactionsScreen extends StatelessWidget {
  AmountController aa = Get.put(AmountController());

  @override
  Widget build(BuildContext context) {
    double am = aa.amount.value;
    int x = int.parse(am.toStringAsFixed(2).split('.')[0]);
    int y = int.parse(am.toStringAsFixed(2).split('.')[1]);

    final th = Theme.of(context);
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: th.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: mq.height * 0.25,
                  color: Color(0xffC0028B),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '£',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffffffff),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        x.toString(),
                        style: TextStyle(
                            fontSize: 50,
                            color: Color(0xffffffff),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '.' + y.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffffffff),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    //height: mq.height * 0.65,
                    //width: double.infinity,
                    color: const Color(0xfffffff),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              const Text(
                                'Recent activity',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text('TODAY',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        TransactionList()
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //card ----------------
            Align(
              alignment: const Alignment(0, -0.5),
              child: Container(
                width: 335,
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Pay(),
                        const TopUp(),
                        const Loan(),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
