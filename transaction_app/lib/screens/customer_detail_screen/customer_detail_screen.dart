import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import './widgets/body.dart';

class CustomerDetailScreen extends StatelessWidget {
  static const routeName = '/customer-detail';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: BuildAppBar(title: 'Profile'),
      body: Body(),
    );
  }
}

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70);

  final String title;
  BuildAppBar({this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_backspace_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      title: Text(title),
    );
  }
}
