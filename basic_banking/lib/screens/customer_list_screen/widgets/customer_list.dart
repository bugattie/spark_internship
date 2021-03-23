import 'package:flutter/material.dart';

import '../../customer_detail_screen/customer_detail_screen.dart';

class CustomerList extends StatelessWidget {
  final int id;
  final String name, imageSrc;
  final double amount;

  CustomerList({
    this.id,
    this.name,
    this.amount,
    this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFF1976D3),
          child: Image.asset(
            imageSrc,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          name,
        ),
        subtitle: Text('\$$amount'),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF6BBFB0),
            onPrimary: Colors.white,
            textStyle: TextStyle(
              fontSize: 10,
            ),
          ),
          child: Text('View Me'),
          onPressed: () {
            Navigator.of(context).pushNamed(
              CustomerDetailScreen.routeName,
              arguments: id == null ? 1 : id,
            );
          },
        ),
      ),
    );
  }
}
