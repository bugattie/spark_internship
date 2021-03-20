import 'package:flutter/material.dart';

import '../customer_detail_screen/widgets/app_bar.dart';
import './widgets/body.dart';
import '../../size_config.dart';

class TransactionScreen extends StatelessWidget {
  static const routeName = '/transaction';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Transaction',
      ),
      body: Body(),
    );
  }
}
