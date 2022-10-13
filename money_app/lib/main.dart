import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './screens/transactions_screen.dart';
import './screens/pay_input_amount.dart';
import './screens/pay_input_name.dart';
import './screens/loan_input_screen.dart';

void main() {
  runApp(MoneyApp());
}

class MoneyApp extends StatelessWidget {
  const MoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(
              0xffC0028B), //instead of hash # put 0xff to get the wanted color
          colorScheme:
              ColorScheme.light().copyWith(secondary: Color(0xffC0028B)),
          fontFamily: 'Montserrat',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            //headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        home: TransactionsScreen(),
        getPages: [
          GetPage(name: "/", page:() =>  TransactionsScreen()),
          GetPage(name: "/PayInputAmount", page:() =>  PayInputAmount()),
          GetPage(name: "/PayInputName", page:() =>  PayInputName()),
          GetPage(name: "/LoanInput", page:() =>  LoanInputScreen()),
        ],
      ),
      designSize: const Size(375, 812),
    );
  }
}
