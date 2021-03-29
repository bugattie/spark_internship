import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../size_config.dart';
import '../../constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: defaultSize * 28.7,
              child: TopBar(defaultSize: defaultSize),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultSize * 8),
                  ),
                ),
                child: LoginDetail(defaultSize: defaultSize),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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

class LoginDetail extends StatelessWidget {
  const LoginDetail({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'Login',
          style: TextStyle(
            color: kTextLightColor,
            fontWeight: FontWeight.bold,
            fontSize: defaultSize * 4,
          ),
        ),
        Spacer(),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFE95656),
            onPrimary: Colors.white,
            minimumSize: Size(defaultSize * 30, defaultSize * 6),
            textStyle: TextStyle(
              fontSize: defaultSize * 1.5,
            ),
          ),
          icon: FaIcon(FontAwesomeIcons.google),
          label: Text('Login With Google'),
          onPressed: () {},
        ),
        SizedBox(
          height: defaultSize * 2,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF496CA7),
            onPrimary: Colors.white,
            minimumSize: Size(defaultSize * 30, defaultSize * 6),
            textStyle: TextStyle(
              fontSize: defaultSize * 1.5,
            ),
          ),
          icon: FaIcon(FontAwesomeIcons.facebook),
          label: Text('Login With Facebook'),
          onPressed: () {},
        ),
        SizedBox(
          height: defaultSize * 5,
        ),
      ],
    );
  }
}
