import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../trans_details/controllers/transaction_details_controller.dart';

class TransactionDetails extends StatelessWidget {
  TextEditingController _text = TextEditingController();
  TransactionDetailsController c = Get.put(TransactionDetailsController());

  @override
  Widget build(BuildContext context) {
    var th = Theme.of(context);
    double am = 32.20;
    int x = int.parse(am.toStringAsFixed(2).split('.')[0]);
    int y = int.parse(am.toStringAsFixed(2).split('.')[1]);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: th.primaryColor,
        title: const Text(
          'Money App',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3.0), //or 15.0
                        child: Container(
                          height: 64,
                          width: 64,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      x.toString(),
                      style: TextStyle(
                          fontSize: 48,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '.' + y.toString(),
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            color: Color(0xffffffff),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3.0), //or 15.0
                    child: Container(
                      height: 20,
                      width: 20,
                      color: Color(0xffC0028B),
                      child: Icon(Icons.library_books,
                          color: Colors.white, size: 12),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add receipt',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20.0),
            child: Text(
              'SHARE THE COST',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: 'Montserrat'),
            ),
          ),
          Container(
            color: Color(0xffffffff),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3.0), //or 15.0
                    child: Container(
                      height: 20,
                      width: 20,
                      color: Color(0xffC0028B),
                      child: Icon(Icons.network_ping,
                          color: Colors.white, size: 12),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Split this bill',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20.0),
            child: Text(
              'SUBSCRIPTION',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontFamily: 'Montserrat'),
            ),
          ),
          Container(
            color: Color(0xffffffff),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Repeating payment'),
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
        ],
      ),
    );
  }
}
