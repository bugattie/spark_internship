import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../providers/google_sign_in.dart';
import '../../../constants.dart';

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
          onPressed: () {
            final provider =
                Provider.of<GoogleSignInProvider>(context, listen: false);
            provider.login();
          },
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
