import 'package:flutter/widgets.dart';

import './screens/customer_detail_screen/customer_detail_screen.dart';
import './screens/customer_list_screen/customer_list_screen.dart';
import './screens/transaction_history/transaction_history.dart';
import './screens/transaction_screen/transaction_screen.dart';

final Map<String, WidgetBuilder> routes = {
  CustomerListScreen.routeName: (ctx) => CustomerListScreen(),
  CustomerDetailScreen.routeName: (ctx) => CustomerDetailScreen(),
  TransactionScreen.routeName: (ctx) => TransactionScreen(),
  TransactionHistory.routeName: (ctx) => TransactionHistory(),
};
