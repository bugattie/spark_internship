import 'package:flutter/material.dart';
import './widgets/app_bar.dart';
import '../../size_config.dart';
import './widgets/body.dart';

class CustomerDetailScreen extends StatelessWidget {
  static const routeName = '/customer-detail';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile',
      ),
      body: Body(),
    );
  }
}
