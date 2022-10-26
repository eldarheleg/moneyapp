import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';


import 'modules/home/views/transactions_screen.dart';
import 'modules/pay_amount/views/pay_input_amount.dart';
import 'modules/pay_name/views/pay_input_name.dart';
import 'modules/loan_application/views/loan_input_screen.dart';
import './theme/light_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MoneyApp());
}

class MoneyApp extends StatelessWidget {
  const MoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: TransactionsScreen(),
        getPages: [
          GetPage(name: "/", page: () => TransactionsScreen()),
          GetPage(name: "/PayInputAmount", page: () => PayInputAmount()),
          GetPage(name: "/PayInputName", page: () => PayInputName()),
          GetPage(name: "/LoanInput", page: () => LoanInputScreen()),
        ],
    );

  }
}
