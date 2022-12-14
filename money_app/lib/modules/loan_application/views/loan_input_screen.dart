import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/light_theme.dart';
import '../controllers/loan_input_controller.dart';

class LoanInput extends StatelessWidget {
  LoanInputController c = Get.put(LoanInputController());
  @override
  Widget build(BuildContext context) {
    int isFirst = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightTheme.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'Terms and Conditions',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum enim non neque luctus, nec blandit ipsum sagittis. Sed fringilla blandit nibh, sit amet suscipit massa sollicitudin lacinia. Donec cursus, odio sit amet tincidunt sodales, odio nisl hendrerit sem, tempor tincidunt ligula nisl nec ante. Nulla aliquet aliquam justo, ac bibendum orci rhoncus non. Nullam quis ex elementum, pharetra ligula eleifend, convallis nulla. Nulla sit amet nisi viverra, semper nunc eu, posuere dui. Donec at metus ut eros rhoncus vestibulum vitae at lacus. Etiam imperdiet, nulla ac condimentum aliquam, enim lacus fringilla leo, vel hendrerit mi ipsum et ante. Vivamus finibus mauris eget diam sodales, eget efficitur orci laoreet. Sed feugiat odio quis mattis tristique. Mauris sit amet sem mauris.',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                color: Color(0xffffffff),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Accept Terms & Conditions',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Switch(
                            value: c.isOn.value,
                            onChanged: (value) {
                              c.toggleSwitch(value);
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'ABOUT YOU',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Monthly Salary"),
                      content: TextField(
                        keyboardType: TextInputType.number,
                        controller: c.mSalary,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                              c.onSubmit();
                            },
                            child: Text("Submit"))
                      ],
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  color: Color(0xffffffff),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              'Monthly Salary',
                              style: TextStyle(
                                  color: Color(0xff9E9E9E),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          Obx(
                            () => Text('\$${c.mSalaryValue.value}',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserrat')),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Monthly Expenses"),
                      content: TextField(
                        keyboardType: TextInputType.number,
                        controller: c.mExpenses,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                              c.onSubmit();
                            },
                            child: Text("Submit"))
                      ],
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  color: Color(0xffffffff),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              'Monthly Expenses',
                              style: TextStyle(
                                  color: Color(0xff9E9E9E),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          Obx(
                            () => Text('\$${c.mExpensesValue.value}',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserrat')),
                          ),
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'LOAN',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Amount"),
                      content: TextField(
                        keyboardType: TextInputType.number,
                        controller: c.lAmount,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                              c.onSubmit();
                            },
                            child: Text("Submit"))
                      ],
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  color: Color(0xffffffff),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              'Amount',
                              style: TextStyle(
                                  color: Color(0xff9E9E9E),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          Obx(
                            () => Text('\$${c.lAmountValue.value}',
                                style: TextStyle(
                                    fontSize: 16, fontFamily: 'Montserrat')),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text("Term"),
                      content: TextField(
                        keyboardType: TextInputType.number,
                        controller: c.lTerm,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                              c.onSubmit();
                            },
                            child: Text("Submit"))
                      ],
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  color: Color(0xffffffff),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text(
                            'Term',
                            style: TextStyle(
                                color: Color(0xff9E9E9E),
                                fontSize: 12,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        Obx(
                          () => Text('\$${c.lTermValue.value}',
                              style: TextStyle(
                                  fontSize: 16, fontFamily: 'Montserrat')),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 280,
          ),
          SizedBox(
            width: 200,
            height: 60,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffC0028B),
                ),
                onPressed: () {
                  if (c.mSalary.text.isEmpty ||
                      c.mExpenses.text.isEmpty ||
                      c.lAmount.text.isEmpty ||
                      c.lTerm.text.isEmpty) {
                    Get.snackbar("Oooppps", "One of the fields is empty");
                  } else {
                    if (c.isFirstTime == 0) {
                      Get.snackbar("Congratss",
                          "Yeeeyyy !! Congrats. Your application has been approved. Don't tell your friends you have money!");
                      c.isFirstTime++;
                    }else{
                      Get.snackbar("Ooopsss.","Your application has been declined. It's not your fault, it's a financial crisis.");
                    }
                  }
                },
                child: Text('Apply for loan',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 18))),
          ),
        ]),
      ),
    );
  }
}
