// import 'package:flutter/foundation.dart';

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
