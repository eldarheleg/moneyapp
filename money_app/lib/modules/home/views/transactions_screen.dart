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
  //final AmountController aa = Get.put(AmountController());
  final a = Get.find<AmountController>();

  @override
  Widget build(BuildContext context) {
    double am = a.amount.value;
    int x = int.parse(am.toStringAsFixed(2).split('.')[0]);
    int y = int.parse(am.toStringAsFixed(2).split('.')[1]);

    final th = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: th.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  color: const Color(0xffC0028B),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Obx(() => 
                        Text(
                          '@' + x.toString(),
                          style: TextStyle(
                              fontSize: 48,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        '.' + y.toString(),
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 500,
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
                TransactionList(),
              ],
            ),
          ),
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
    );
  }
}
