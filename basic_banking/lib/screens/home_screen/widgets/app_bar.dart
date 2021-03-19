import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu_icon.svg',
          width: 15,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        'Banking App',
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search_icon.svg',
            width: 15,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
