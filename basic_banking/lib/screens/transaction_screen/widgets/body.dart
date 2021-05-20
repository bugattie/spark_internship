import 'package:flutter/material.dart';

import '../../../size_config.dart';
import './build_form.dart';
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultSize * 4.0),
          child: BuildAppForm(defaultSize: defaultSize),
        ),
      ],
    );
  }
}
