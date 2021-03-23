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

    return Scaffold(
      appBar: CustomAppBar('Our Customers'),
      body: Padding(
        padding: EdgeInsets.all(defaultSize * 0.8),
        child: FutureBuilder(
            future: Provider.of<UserData>(context, listen: false)
                .fetchAndSetUserData(),
            builder: (ctx, snapshot) => snapshot.connectionState ==
                    ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Consumer<UserData>(
                    child: Center(
                      child: Text('No transaction happened'),
                    ),
                    builder: (ctx, userData, ch) => userData.users.length <= 0
                        ? ch
                        : ListView.builder(
                            itemCount: userData.users.length,
                            itemBuilder: (ctx, i) => CustomerList(
                              id: userData.users[i].id,
                              name: userData.users[i].name,
                              amount: userData.users[i].amount,
                              imageSrc: userData.users[i].imageSrc,
                            ),
                          ),
                  )),
      ),
    );
  }
}
