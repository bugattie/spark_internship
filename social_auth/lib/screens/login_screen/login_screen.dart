// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../providers/google_sign_in.dart';
import './widgets/login_detail.dart';
import '../../size_config.dart';
import './widgets/top_bar.dart';
import '../../constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);

            if (provider.isSigningIn)
              return buildLoading();
            else
              return SignUpWidget(defaultSize: defaultSize);
          },
        ),
      ),
    );
  }

  Widget buildLoading() => Center(child: CircularProgressIndicator());
}

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
