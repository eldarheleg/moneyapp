import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import './transaction_item.dart';
import '../models/Transaction.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(
          itemCount: Transaction.transactions.length,
          itemBuilder: ((context, index) => TransactionItem(index: index))));
    }
}
