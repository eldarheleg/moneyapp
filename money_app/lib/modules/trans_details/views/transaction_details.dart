import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controllers/transactions_controller.dart';

class TransactionDetails extends StatelessWidget {
  TextEditingController _text = TextEditingController();

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
            padding: EdgeInsets.symmetric(horizontal: 10),
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(x.toString(),style: TextStyle(fontSize: 48, fontFamily: 'Montserrat',fontWeight: FontWeight.w300),),
                    Text('.' + y.toString(),style: TextStyle(fontSize: 32, fontFamily: 'Montserrat',fontWeight: FontWeight.w300),)
                  ],
                ),
                
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            color: Colors.grey,
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
                  Text('Add receipt'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text('Share the cost'),
          Container(
            color: Colors.grey,
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
                  Text('split this bill'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Repeating payment'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
