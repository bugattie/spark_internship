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

  User findByEmail(String email) {
    return _users.firstWhere((data) => data.email == email);
  }

  Future<void> fetchAndSetUserData() async {
    final dataList = await DBHelper.getData('user_data');
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

  Future<void> fetchAndUpdateData(
    String senderEmail,
    double senderCurrentAmount,
    String receiverEmail,
    double receiverCurrentAmount,
    double amount,
  ) async {
    var senderUpdatedAmount = senderCurrentAmount - amount;
    var receiverUpdatedAmount = receiverCurrentAmount + amount;

    print({
      senderEmail,
      senderUpdatedAmount,
      receiverEmail,
      receiverUpdatedAmount,
      amount,
    });

    await DBHelper.update('user_data', senderEmail, senderUpdatedAmount);
    await DBHelper.update('user_data', receiverEmail, receiverUpdatedAmount);
    notifyListeners();
  }
}
