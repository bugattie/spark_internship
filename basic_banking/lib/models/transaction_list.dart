import 'package:flutter/foundation.dart';

import '../helpers/db_helper.dart';
import './transaction.dart';

class TransactionList with ChangeNotifier {
  List<Transaction> _transactions = [];

  List<Transaction> get transactions {
    return [..._transactions.reversed];
  }

  Future<void> addTransaction(
      int id, String senderEmail, String receiverEmail, double amount) async {
    final newTransaction = Transaction(
      id: id,
      senderEmail: senderEmail,
      receiverEmail: receiverEmail,
      amount: amount,
    );
    _transactions.add(newTransaction);

    DBHelper.insert('transactionHistory', {
      'senderEmail': newTransaction.senderEmail,
      'receiverEmail': newTransaction.receiverEmail,
      'amount': newTransaction.amount
    });
    notifyListeners();
  }

  Future<void> fetchAndSetData() async {
    final dataList = await DBHelper.getData('transactionHistory');

    _transactions = Transaction.parseTransactionList(dataList);
    notifyListeners();
  }
}
