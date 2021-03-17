import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../size_config.dart';
import '../../../models/user.dart';
import '../../../constants.dart';
import './info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    final userId = ModalRoute.of(context).settings.arguments as String;
    final loadedUserData = Provider.of<UserData>(
      context,
      listen: false,
    ).findById(userId);
    return Column(
      children: [
        Info(
          defaultSize: defaultSize,
          image: loadedUserData.imageSrc,
          email: loadedUserData.email,
          name: loadedUserData.name,
          amount: loadedUserData.amount,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2,
            vertical: defaultSize * 2,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(
              color: kTextLigntColor,
            ),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
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
