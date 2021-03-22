import 'package:flutter/material.dart';

import './widgets/app_bar.dart';
import './widgets/body.dart';
// import '../../../size_config.dart';
import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
    );
  }
}
