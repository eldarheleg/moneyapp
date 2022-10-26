import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../modules/home/views/transactions_screen.dart';


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