import 'package:uuid/uuid.dart';

enum Types { payment, top_up }

class Transaction {
  final int id;
  final Types type;
  String name;
  double amount;
  final DateTime createdAt;

  Transaction(
      {required this.id,
      required this.type,
      required this.name,
      required this.amount,
      required this.createdAt});


}
