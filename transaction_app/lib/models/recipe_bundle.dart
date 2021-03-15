import 'package:flutter/material.dart';

import '../screens/customer_screen/customer_screen.dart';

class GridBundle {
  final String id, title, description, imageSrc, btnText, onClick;
  final Color btnColor, backgroundColor;

  GridBundle({
    this.id,
    this.title,
    this.description,
    this.onClick,
    this.btnText,
    this.imageSrc,
    this.btnColor,
    this.backgroundColor,
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
    ),
    GridBundle(
      id: DateTime.now().toString(),
      title: 'Transaction',
      description: 'Make a transaction to our customers',
      btnText: 'Add Transaction',
      imageSrc: 'assets/images/transaction.png',
      backgroundColor: Color(0xFF09A99F),
      btnColor: Color(0xFF84AB5C),
      onClick: CustomerScreen.routeName,
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
    ),
  ];

  List<GridBundle> get gridItem {
    return [..._gridBundle];
  }
}
