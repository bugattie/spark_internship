import 'package:flutter/material.dart';

// import './screens/login_screen/login_screen.dart';
import './screens/login_user_detail_screen/login_user_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginUserDetailScreen(),
    );
  }
}
