import 'package:flutter/material.dart';

import './screens/home_screen/home_screen.dart';
import './screens/customer_screen/customer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
      ),
      home: HomeScreen(),
      routes: {
        CustomerScreen.routeName: (ctx) => CustomerScreen(),
      },
    );
  }
}
