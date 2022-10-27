import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/views/transactions_screen.dart';
import '../modules/loan_application/views/loan_input_screen.dart';
import '../modules/pay_amount/views/pay_input_amount.dart';
import '../modules/pay_name/views/pay_input_name.dart';
import '../modules/trans_details/views/transaction_details.dart';

class AppPages {
  static const INITIAL = '/';

  static final pages = [
    GetPage(name: "/", page: () => TransactionsScreen()),
    GetPage(name: "/PayInputAmount", page: () => PayInputAmount()),
    GetPage(name: "/PayInputName", page: () => PayInputName()),
    GetPage(name: "/LoanInput", page: () => LoanInput()),
    GetPage(
      name: "/TransactionDetails",
      page: () => TransactionDetails(),
    )
  ];
}
