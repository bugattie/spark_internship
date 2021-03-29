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
              child: Container(
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
                  'assets/icons/person.svg',
                  color: kPrimaryColor,
                  height: defaultSize * 4,
                ),
              ),
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
