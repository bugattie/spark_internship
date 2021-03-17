import 'package:flutter/material.dart';

import '../customer_detail_screen/customer_detail_screen.dart';
import './widgets/body.dart';

class TransactionScreen extends StatelessWidget {
  static const routeName = '/transaction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        title: 'Transaction',
      ),
      body: Body(),
    );
  }
}
