import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import './widgets/customers_list.dart';
import '../../constants.dart';

class CustomerScreen extends StatelessWidget {
  static const routeName = '/customer';
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: kTextLigntColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text(
          'Our Customers',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: userData.users.length,
          itemBuilder: (ctx, i) => CustomerList(i),
        ),
      ),
    );
  }
}
