import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/light_theme.dart';
import '../controllers/loan_input_controller.dart';

class LoanInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var c = Get.put(LoanInputController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightTheme.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Get.toNamed("/"),
              icon: Icon(Icons.backspace_outlined))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 7,
          ),
          const Text(
            'Terms and Conditions',
            style: TextStyle(fontSize: 24),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Accept Terms & Conditions',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
            child: Text('ABOUT YOU',style: TextStyle(fontSize: 14),),
          ),
          Container(
            width: double.maxFinite,
            height: 50,
            color: Color(0xffffffff),
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text('Monthly Salary',style: TextStyle(color: Color(0xff9E9E9E),fontSize: 12,fontFamily: 'Montserrat'),),
                  ), Text('\$1001',style: TextStyle(fontSize: 16,fontFamily: 'Montserrat'))],
                )),
          ),
          Container(
            width: double.maxFinite,
            height: 50,
            color: Color(0xffffffff),
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text('Monthly Expenses',style: TextStyle(color: Color(0xff9E9E9E),fontSize: 12,fontFamily: 'Montserrat'),),
                  ), Text('\$250',style: TextStyle(fontSize: 16,fontFamily: 'Montserrat'))],
                )),
          ),
          const SizedBox(
            height: 11,
          ),
          Container(

            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20),
            child: Text('LOAN',style: TextStyle(fontSize: 14),),
          ),
          Container(
            width: double.maxFinite,
            height: 50,
            color: Color(0xffffffff),
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text('Monthly Salary',style: TextStyle(color: Color(0xff9E9E9E),fontSize: 12,fontFamily: 'Montserrat'),),
                  ), Text('\$1001',style: TextStyle(fontSize: 16,fontFamily: 'Montserrat'))],
                )),
          ),
          Container(
            width: double.maxFinite,
            height: 50,
            color: Color(0xffffffff),
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text('Monthly Expenses',style: TextStyle(color: Color(0xff9E9E9E),fontSize: 12,fontFamily: 'Montserrat'),),
                  ), Text('\$250',style: TextStyle(fontSize: 16,fontFamily: 'Montserrat'))],
                )),
          ),
        ],
      ),
    );
  }
}
