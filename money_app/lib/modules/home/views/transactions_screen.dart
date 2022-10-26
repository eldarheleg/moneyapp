import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  //void addNewTransaction( )
  final TransactionController transController =
      Get.put(TransactionController());

  List<String> transIDs = [];

  Future getTransIDs() async {
    await FirebaseFirestore.instance
        .collection('transactions')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);
            }));
  }

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
                  child: GetX<AmountController>(
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

Widget buildTransaction(Tr.Transaction trans) {
  return ListTile(
    leading: CircleAvatar(child: Text('${trans.id}')),
    title: Text(trans.name),
    subtitle: Text(trans.createdAt.toString()),
  );
}

Stream<List<Tr.Transaction>> readTransaction() {
  return FirebaseFirestore.instance.collection('transactions').snapshots().map(
      (event) => event.docs
          .map((doc) => Tr.Transaction.fromJson(doc.data()))
          .toList());
}
