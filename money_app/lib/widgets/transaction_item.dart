import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


import '../models/Transaction.dart';

class TransactionItem extends StatelessWidget {
  final int index;
  TransactionItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(3.0), //or 15.0
            child: Container(
              height: 20,
              width: 20,
              color: Color(0xffC0028B),
              child: Icon(Icons.shopping_bag_rounded, color: Colors.white, size: 12),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(child: Text(Transaction.transactions[index].name)),
          Text('${Transaction.transactions[index].amount}'),
        ],
      ),
    );
  }
}
