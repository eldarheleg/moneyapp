import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money App'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('trenutno stanje'),
          )
        ],
      ),
    );
  }
}