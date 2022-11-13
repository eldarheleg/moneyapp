import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../models/Loan.dart';

class LoanInputController extends GetxController {
  RxBool isOn = false.obs;
  int isFirstTime = 0;
  TextEditingController mSalary = TextEditingController();
  TextEditingController mExpenses = TextEditingController();
  TextEditingController lAmount = TextEditingController();
  TextEditingController lTerm = TextEditingController();

  final _listOfLoanApplication = <Loan>[];

  List<Loan> get listOfLoans => _listOfLoanApplication;

  toggleSwitch(bool val) {
    isOn.value = val;
  }

  void applyForLoan(int mSalary,int mExpenses, int lAmount,int lTerm){

  }
}
