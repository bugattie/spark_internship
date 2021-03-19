import 'package:flutter/material.dart';

import '../../../size_config.dart';
import './bar_details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return ListView(
      children: [
        BarDetails(
          defaultSize: defaultSize,
          image: 'assets/images/transaction_new.png',
          heading: 'Make a Transaction',
        ),
      ],
    );
  }
}
