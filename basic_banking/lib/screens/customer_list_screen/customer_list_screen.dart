import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './widgets/customer_list.dart';
import './widgets/app_bar.dart';
import '../../models/user.dart';
import '../../size_config.dart';

class CustomerListScreen extends StatelessWidget {
  static const routeName = '/customer-list';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    final userData = Provider.of<UserData>(context, listen: false).users;

    return Scaffold(
      appBar: CustomAppBar('Our Customers'),
      body: Padding(
        padding: EdgeInsets.all(defaultSize * 0.8),
        child: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (ctx, i) => CustomerList(
            id: userData[i].id,
            name: userData[i].name,
            amount: userData[i].amount,
            imageSrc: userData[i].imageSrc,
          ),
        ),
      ),
    );
  }
}
