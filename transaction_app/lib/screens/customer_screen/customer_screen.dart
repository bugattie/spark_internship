import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/user.dart';
import './widgets/customers_list.dart';

class CustomerScreen extends StatelessWidget {
  static const routeName = '/customer';
  @override
  Widget build(BuildContext context) {
    final userData = UserData().users;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu_icon.svg'),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Our Customers',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/search_icon.svg'),
            onPressed: () {},
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (ctx, i) => CustomerList(userData[i]),
        ),
      ),
    );
  }
}
