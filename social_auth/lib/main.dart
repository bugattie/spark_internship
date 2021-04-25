import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './screens/login_screen/login_screen.dart';
import './providers/google_sign_in.dart';
import './screens/login_user_detail_screen/login_user_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);

            if (provider.isSigningIn)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasData) {
              final user = FirebaseAuth.instance.currentUser;
              return LoginUserDetailScreen(
                user.photoURL,
                user.displayName,
                user.email,
              );
            } else
              return SignUpWidget();
          },
        ),
      ),
    );
  }
}
