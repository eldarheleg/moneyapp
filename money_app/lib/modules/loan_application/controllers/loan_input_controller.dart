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
  RxInt mSalaryValue = 0.obs;
  RxInt mExpensesValue = 0.obs;
  RxInt lAmountValue = 0.obs;
  RxInt lTermValue = 0.obs;

  void onSubmit() {
    mSalaryValue.value = int.parse(mSalary.text);
    mExpensesValue.value = int.parse(mExpenses.text);
    lAmountValue.value = int.parse(lAmount.text);
    lTermValue.value = int.parse(lTerm.text);
    mSalary.clear();
    mExpenses.clear();
    lAmount.clear();
    lTerm.clear();
  }

  final _listOfLoanApplication = <Loan>[];

  List<Loan> get listOfLoans => _listOfLoanApplication;

  toggleSwitch(bool val) {
    isOn.value = val;
  }

  void applyForLoan(int mSalary, int mExpenses, int lAmount, int lTerm) {}
}
