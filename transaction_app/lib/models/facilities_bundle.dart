import 'package:flutter/material.dart';

import '../screens/customer_screen/customer_screen.dart';
import '../screens/transaction_screen/transaction_screen.dart';

class GridBundle {
  final String id, title, description, imageSrc, btnText, onClick;
  final Color btnColor, backgroundColor;
  final Icon btnIcon;

  GridBundle({
    this.id,
    this.title,
    this.description,
    this.onClick,
    this.btnText,
    this.imageSrc,
    this.btnColor,
    this.backgroundColor,
    this.btnIcon,
  });
}

class GridItem {
  List<GridBundle> _gridBundle = [
    GridBundle(
      id: DateTime.now().toString(),
      title: 'Customer Info',
      description: 'You can view our customers',
      btnText: 'View Customers',
      imageSrc: 'assets/images/customers1.png',
      backgroundColor: Color(0xFFD82D40),
      btnColor: Color(0xFF84AB5C),
      onClick: CustomerScreen.routeName,
      btnIcon: Icon(Icons.person_outline_sharp),
    ),
    GridBundle(
      id: DateTime.now().toString(),
      title: 'Transaction',
      description: 'Make a transaction to our customers',
      btnText: 'Add Transaction',
      imageSrc: 'assets/images/transaction_check_two.png',
      backgroundColor: Color(0xFF1976D3),
      btnColor: Color(0xFF84AB5C),
      onClick: TransactionScreen.routeName,
      btnIcon: Icon(Icons.attach_money),
    ),
    GridBundle(
      id: DateTime.now().toString(),
      title: 'Transaction History',
      description: 'Take a look at all transaction happened',
      btnText: 'View History',
      imageSrc: 'assets/images/transaction_history.png',
      backgroundColor: Color(0xFF473080),
      btnColor: Color(0xFF84AB5C),
      onClick: CustomerScreen.routeName,
      btnIcon: Icon(Icons.history_sharp),
    ),
  ];

  List<GridBundle> get gridItem {
    return [..._gridBundle];
  }
}
