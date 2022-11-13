import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/Transaction.dart';
import '../modules/trans_details/views/transaction_details.dart';
import '../modules/home/controllers/transactions_controller.dart';

class TransactionItem extends StatelessWidget {
  TransactionController c = Get.put(TransactionController());
  final int index;
  TransactionItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: InkWell(
        onTap: () => Get.to(TransactionDetails()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(3.0), //or 15.0
              child: Container(
                height: 20,
                width: 20,
                color: Color(0xffC0028B),
                child: Icon(Icons.shopping_bag_rounded,
                    color: Colors.white, size: 12),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(child: Text(c.listOfTransactions[index].name)),
            c.listOfTransactions[index].type.index == 0
                ? Text('${c.listOfTransactions[index].amount}')
                : Text('+${c.listOfTransactions[index].amount}')
          ],
        ),
      ),
    );
  }
}
