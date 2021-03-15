import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import './widgets/body.dart';
import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu_icon.svg'),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          'Banking App',
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
      body: Body(),
    );
  }
}
