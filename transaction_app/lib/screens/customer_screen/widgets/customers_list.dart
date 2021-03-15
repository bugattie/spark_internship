import 'package:flutter/material.dart';

import '../../../models/user.dart';

class CustomerList extends StatelessWidget {
  final User currentUser;

  CustomerList(this.currentUser);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(
            currentUser.imageSrc,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          currentUser.name,
        ),
        subtitle: Text(currentUser.amount.toString()),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF84AB5C),
            onPrimary: Colors.white,
            textStyle: TextStyle(
              fontSize: 10,
            ),
          ),
          child: Text('View Me'),
          onPressed: () {},
        ),
      ),
    );
  }
}
