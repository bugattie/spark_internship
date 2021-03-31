import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.5),
          bottomRight: Radius.circular(defaultSize * 1.5),
          bottomLeft: Radius.circular(defaultSize * 1.5),
        ),
      ),
      child: SvgPicture.asset(
        'assets/icons/user.svg',
        color: kTextLightColor,
        height: 40,
      ),
    );
  }
}
