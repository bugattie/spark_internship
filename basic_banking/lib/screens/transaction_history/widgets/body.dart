import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/transaction_list.dart';
import './transaction_list_build.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Padding(
      padding: EdgeInsets.all(defaultSize * 2.0),
      child: FutureBuilder(
        future: Provider.of<TransactionList>(context, listen: false)
            .fetchAndSetData(),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Consumer<TransactionList>(
                    child: Center(
                      child: Text('No transaction happened'),
                    ),
                    builder: (ctx, data, ch) => data.transactions.length <= 0
                        ? ch
                        : ListView.builder(
                            itemCount: data.transactions.length,
                            itemBuilder: (ctx, i) => TransactionListBuild(
                              id: data.transactions[i].id,
                              senderEmail: data.transactions[i].senderEmail,
                              receiverEmail: data.transactions[i].receiverEmail,
                              amount: data.transactions[i].amount,
                            ),
                          ),
                  ),
      ),
    );
  }
}

// builder: (ctx, data, ch) => data.transactions.length <= 0
//                         ? ch
//                         : ListView.builder(
//                             itemCount: transactionItems.transactions.length,
//                             itemBuilder: (ctx, i) => TransactionListBuild(
//                               id: transactionItems.transactions[i].id,
//                               senderEmail:
//                                   transactionItems.transactions[i].senderEmail,
//                               receiverEmail: transactionItems
//                                   .transactions[i].receiverEmail,
//                               amount: transactionItems.transactions[i].amount,
//                             ),
//                           ),