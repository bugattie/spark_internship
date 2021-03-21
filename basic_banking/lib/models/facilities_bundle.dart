import 'package:flutter/material.dart';

import '../screens/customer_list_screen/customer_list_screen.dart';
import '../screens/transaction_history/transaction_history.dart';

class GridItem {
  final String id, title, description, imageSrc, btnText, onClick;
  final Color backgroundColor;
  final Icon btnIcon;

  GridItem({
    this.id,
    this.title,
    this.description,
    this.onClick,
    this.btnText,
    this.imageSrc,
    this.backgroundColor,
    this.btnIcon,
  });
}

class GridBundle {
  List<GridItem> _gridBundle = [
    GridItem(
      id: '1x',
      title: 'Customer Info',
      description: 'You can view our customers',
      btnText: 'View Customers',
      imageSrc: 'assets/images/customer.png',
      backgroundColor: Color(0xFF00A656),
      onClick: CustomerListScreen.routeName,
      btnIcon: Icon(Icons.person_outline_sharp),
    ),
    GridItem(
      id: '2x',
      title: 'Transaction History',
      description: 'Take a look at all transaction happened',
      btnText: 'View History',
      imageSrc: 'assets/images/history.png',
      backgroundColor: Color(0xFF316792),
      onClick: TransactionHistory.routeName,
      btnIcon: Icon(Icons.history_sharp),
    ),
  ];

  List<GridItem> get gridItem {
    return [..._gridBundle];
  }
}


    // GridItem(
    //   id: DateTime.now().toString(),
    //   title: 'Transaction',
    //   description: 'Make a transaction to our customers',
    //   btnText: 'Add Transaction',
    //   imageSrc: 'assets/images/transaction_new.png',
    //   backgroundColor: Color(0xFF1976D3),
    //   btnColor: Color(0xFF84AB5C),
    //   // onClick: TransactionScreen.routeName,
    //   btnIcon: Icon(Icons.attach_money),
    // ),