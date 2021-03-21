import 'package:flutter/material.dart';

import '../customer_list_screen/widgets/app_bar.dart';
import '../../size_config.dart';
import './widgets/body.dart';

class TransactionHistory extends StatelessWidget {
  static const routeName = '/history';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar('Transaction History'),
      body: Body(),
    );
  }
}
