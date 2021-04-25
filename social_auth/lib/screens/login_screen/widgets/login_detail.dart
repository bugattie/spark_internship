import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

import '../../../screens/login_user_detail_screen/login_user_detail_screen.dart';
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
          onPressed: () async {
            final facebookLogin = FacebookLogin();
            final result = await facebookLogin.logIn(['email']);

            switch (result.status) {
              case FacebookLoginStatus.loggedIn:
                // _sendTokenToServer(result.accessToken.token);

                final graphResponse = await http.get(Uri.parse(
                    'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${result.accessToken.token}'));
                final profile = jsonDecode(graphResponse.body);
                return LoginUserDetailScreen(
                  profile['picture']['data']['url'],
                  profile['name'],
                  profile['email'],
                );
              case FacebookLoginStatus.cancelledByUser:
                print('Cancelled by user');
                break;
              case FacebookLoginStatus.error:
                print(result.errorMessage);
                break;
            }
          },
        ),
        SizedBox(
          height: defaultSize * 5,
        ),
      ],
    );
  }
}
