import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TransactionListBuild extends StatelessWidget {
  final int id;
  final String senderEmail;
  final String receiverEmail;
  final double amount;

  TransactionListBuild({
    this.id,
    this.senderEmail,
    this.receiverEmail,
    this.amount,
  });

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Card(
      margin: EdgeInsets.only(bottom: defaultSize),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(id.toString()),
        ),
        subtitle: Text(
          'Sender: $senderEmail \nReceiver: $receiverEmail \nAmount: $amount',
        ),
      ),
    );
  }
}
