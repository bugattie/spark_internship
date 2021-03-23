import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../transaction_screen/transaction_screen.dart';
import '../../../size_config.dart';
import '../../../constants.dart';
import '../../../models/user.dart';
import './info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context).settings.arguments as String;
    final currentUser = Provider.of<UserData>(context, listen: false)
        .findById(userId == null ? 1 : userId);
    double defaultSize = SizeConfig.defaultSize;

    return Column(
      children: [
        Info(
          defaultSize: defaultSize,
          image: currentUser.imageSrc,
          email: currentUser.email,
          name: currentUser.name,
          amount: currentUser.amount,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: defaultSize * 2.0,
            right: defaultSize * 2.0,
            bottom: defaultSize * 3.0,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(
              color: kTextLigntColor,
            ),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed(
              TransactionScreen.routeName,
              arguments: currentUser,
            );
          },
          icon: Icon(Icons.attach_money),
          label: Text('Make a transaction'),
          style: ElevatedButton.styleFrom(
            primary: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
