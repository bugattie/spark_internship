import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen/home_screen.dart';
import 'models/transaction_list.dart';
import './models/user.dart';
import './routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: UserData(),
        ),
        ChangeNotifierProvider.value(
          value: TransactionList(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomeScreen(),
        routes: routes,
      ),
    );
  }
}
