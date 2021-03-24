class Transaction {
  int id;
  final String senderEmail;
  final String receiverEmail;
  final double amount;

  Transaction({
    this.id,
    this.senderEmail,
    this.receiverEmail,
    this.amount,
  });

  factory Transaction.fromMap(Map<String, dynamic> map) {
    var trans = Transaction(
      id: map['id'],
      senderEmail: map['senderEmail'],
      receiverEmail: map['receiverEmail'],
      amount: map['amount'],
    );
    return trans;
  }

  static List<Transaction> parseTransactionList(List<dynamic> list) {
    if (list == null) return null;

    final transactionList = <Transaction>[];
    for (final item in list) {
      transactionList.insert(0, Transaction.fromMap(item));
    }

    return transactionList;
  }
}
