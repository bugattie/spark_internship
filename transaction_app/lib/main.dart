import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/home_screen/home_screen.dart';
import './screens/customer_screen/customer_screen.dart';
import './screens/customer_detail_screen/customer_detail_screen.dart';
import './screens/transaction_screen/transaction_screen.dart';
import './models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: UserData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
        ),
        home: HomeScreen(),
        routes: {
          CustomerScreen.routeName: (ctx) => CustomerScreen(),
          CustomerDetailScreen.routeName: (ctx) => CustomerDetailScreen(),
          TransactionScreen.routeName: (ctx) => TransactionScreen(),
        },
      ),
    );
  }
}
