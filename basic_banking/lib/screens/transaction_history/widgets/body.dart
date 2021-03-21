import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/transaction.dart';
import './transaction_list_build.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    final transactionItems =
        Provider.of<TransactionList>(context, listen: false);

    return Padding(
      padding: EdgeInsets.all(defaultSize * 2.0),
      child: ListView.builder(
        itemCount: transactionItems.transactions.length,
        itemBuilder: (ctx, i) => TransactionListBuild(
          id: transactionItems.transactions[i].id,
          senderEmail: transactionItems.transactions[i].senderEmail,
          receiverEmail: transactionItems.transactions[i].receiverEmail,
          amount: transactionItems.transactions[i].amount,
        ),
      ),
    );
  }
}
