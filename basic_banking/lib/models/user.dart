import 'package:flutter/foundation.dart';

import '../helpers/db_helper.dart';

class User {
  final int id;
  final String name, imageSrc, email;
  final double amount;

  User({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.imageSrc,
    @required this.amount,
  });
}

class UserData with ChangeNotifier {
  List<User> _users = [];

  List<User> get users {
    return [..._users];
  }

  User findById(int id) {
    return _users.firstWhere((data) => data.id == id);
  }

  Future<void> fetchAndSetUserData() async {
    final dataList = await DBHelper.getData('user_data');
    print('User data: $dataList');
    _users = dataList
        .map(
          (item) => User(
            id: item['id'],
            name: item['name'],
            email: item['email'],
            imageSrc: item['imageSrc'],
            amount: item['amount'],
          ),
        )
        .toList();
    notifyListeners();
  }
}
