import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart';
import '../../customer_detail_screen/customer_detail_screen.dart';

class CustomerList extends StatelessWidget {
  final int index;

  CustomerList(this.index);

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context, listen: false);
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(
            userData.users[index].imageSrc,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          userData.users[index].name,
        ),
        subtitle: Text(userData.users[index].amount.toString()),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF84AB5C),
            onPrimary: Colors.white,
            textStyle: TextStyle(
              fontSize: 10,
            ),
          ),
          child: Text('View Me'),
          onPressed: () {
            Navigator.of(context).pushNamed(
              CustomerDetailScreen.routeName,
              arguments: userData.users[index].id,
            );
          },
        ),
      ),
    );
  }
}
