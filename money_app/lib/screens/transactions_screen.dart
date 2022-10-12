import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import './pay_input_amount.dart';
import '../models/Transaction.dart';
import '../widgets/transaction_list.dart';
import '../controllers/transactions_controller.dart';

class TransactionsScreen extends StatelessWidget {
  //void addNewTransaction( )
  final TransactionController transController =
      Get.put(TransactionController());

  

  @override
  Widget build(BuildContext context) {
    //final List<Transaction> transactions = [];

    final th = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: th.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Column(children: [Text('amounttt')]),
              ElevatedButton(
                onPressed: () => Get.find<TransactionController>().increment(),
                child: Text('data'),
              ),
              GetX<TransactionController>(
                  //init: transController,
                  builder: (_) => Text('this is observe : ${_.count}')),
              Container(
                height: 500.h,
                color: const Color(0xffF7F7F7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100.h,
                          ),
                          const Text(
                            'Recent activity',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10.h,
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
            height: 16.h,
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
            height: 16.h,
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
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
