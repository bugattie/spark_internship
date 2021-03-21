import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/customer_detail_screen/customer_detail_screen.dart';
import './screens/customer_list_screen/customer_list_screen.dart';
import './screens/transaction_history/transaction_history.dart';
import './screens/transaction_screen/transaction_screen.dart';
import 'screens/home_screen/home_screen.dart';
import './models/user.dart';
import './models/transaction.dart';

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
        routes: {
          CustomerListScreen.routeName: (ctx) => CustomerListScreen(),
          CustomerDetailScreen.routeName: (ctx) => CustomerDetailScreen(),
          TransactionScreen.routeName: (ctx) => TransactionScreen(),
          TransactionHistory.routeName: (ctx) => TransactionHistory(),
        },
      ),
    );
  }
}
