import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String senderEmail;
  final String receiverEmail;
  final double amount;

  Transaction({
    this.id,
    this.senderEmail,
    this.receiverEmail,
    this.amount,
  });
}

class TransactionList with ChangeNotifier {
  List<Transaction> _transactions = [
    Transaction(
      id: '1',
      senderEmail: 'senderEmail@service.com',
      receiverEmail: 'receiverEmail@service.com',
      amount: 6000.0,
    ),
    Transaction(
      id: '2',
      senderEmail: 'senderEmail@service.com',
      receiverEmail: 'receiverEmail@service.com',
      amount: 6000.0,
    )
  ];

  List<Transaction> get transactions {
    return [..._transactions];
  }

  void addTransaction() {
    // ...
  }
}
