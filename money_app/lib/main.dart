import 'package:flutter/material.dart';
import 'package:get/get.dart';



import 'modules/home/views/transactions_screen.dart';
import './routes/pages.dart';
import './theme/light_theme.dart';

void main() {
  
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
        getPages: AppPages.pages
    );

  }
}
