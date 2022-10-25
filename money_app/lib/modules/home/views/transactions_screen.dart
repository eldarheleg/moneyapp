import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../pay_amount/views/pay_input_amount.dart';
import '../../../models/Transaction.dart';
import '../../../widgets/transaction_list.dart';
import '../controllers/transactions_controller.dart';
import '../../pay_amount/controllers/amount_controller.dart';

class TransactionsScreen extends StatelessWidget {
  //void addNewTransaction( )
  final TransactionController transController =
      Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    final AmountController amoc = AmountController();
    final th = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: th.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
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
                  child:  GetX<AmountController>(
                      init: amoc,
                      builder: (c) => Text('amount : ${c.amount.value}'),
                    ),
                  ),
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
            ],
          ),
          Align(
            alignment: const Alignment(0, -0.5),
            child: Container(
              width: 335,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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

class Loan extends StatelessWidget {
  const Loan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TransactionsScreen tran = TransactionsScreen();
    return GestureDetector(
      onTap: () {
        Get.toNamed("/LoanInput");
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('lib/assets/images/loan_icon.png'),
          const Text(
            'Loan',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class TopUp extends StatelessWidget {
  const TopUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => PayInputAmount()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('lib/assets/images/wallet_icon.png'),
          const Text(
            'Top Up',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class Pay extends StatelessWidget {
  const Pay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(PayInputAmount()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('lib/assets/images/phone_icon.png'),
          const Text(
            'Pay',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
