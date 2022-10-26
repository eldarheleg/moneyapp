enum Types { payment, top_up }

class Transaction {
  final int id;
  final Types type;
  final String name;
  final double amount;
  final DateTime createdAt;

  const Transaction(
      {required this.id,
      required this.type,
      required this.name,
      required this.amount,
      required this.createdAt});

  static List<Transaction> transactions = [
    Transaction(
        id: 1,
        type: Types.payment,
        name: 'narudzba',
        amount: 23.00,
        createdAt: DateTime.now()),
    Transaction(
        id: 2,
        type: Types.top_up,
        name: 'narudzba2',
        amount: 55.00,
        createdAt: DateTime.now()),
  ];

  static Transaction fromJson(Map<String, dynamic> json) {
    return Transaction(
        id: json['id'],
        type: json['type'],
        name: json['name'],
        amount: json['amount'],
        createdAt: DateTime.parse(json['createdAt'].toString()));
  }
}
