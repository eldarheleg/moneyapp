import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/transactions_controller.dart';

class LoanInputScreen extends StatelessWidget {
  TextEditingController _text = TextEditingController();
  TransactionController tran = TransactionController();
  //bool isOn = true;
  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: th.primaryColor,
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3.0), //or 15.0
                      child: Container(
                        height: 64.h,
                        width: 64.w,
                        color: Color(0xffC0028B),
                        child: Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    Text('eBay'),
                    Text('date of transaction')
                  ],
                ),
              ),
              Text('amount')
            ],
          ),
          SizedBox(
            height: 70.h,
          ),
          Container(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3.0), //or 15.0
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      color: Color(0xffC0028B),
                      child: Icon(Icons.library_books,
                          color: Colors.white, size: 12),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Text('Add receipt'),
                  
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
          Text('Share the cost'),
          Container(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3.0), //or 15.0
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      color: Color(0xffC0028B),
                      child: Icon(Icons.network_ping,
                          color: Colors.white, size: 12),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Text('split this bill'),
                  
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Repeating payment'),
                  GetX<TransactionController>(builder: (c) => Switch(value: c.isOn.value, onChanged: ((value) => c.toggleSwitcha()),))
                  
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
