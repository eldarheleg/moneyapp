import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './screens/transactions_screen.dart';

void main() {
  runApp(MoneyApp());
}

class MoneyApp extends StatelessWidget {
  const MoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Transactions(),
    );
  }
}