import 'package:flutter/material.dart';

import './bar_details.dart';
import './build_form.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BarDetails(
          defaultSize: defaultSize,
          image: 'assets/images/transaction_check_two.png',
          heading: 'Make a Transaction',
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultSize * 4.0),
          child: BuildForm(),
        ),
      ],
    );
  }
}
