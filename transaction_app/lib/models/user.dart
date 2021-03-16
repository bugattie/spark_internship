import 'package:flutter/foundation.dart';

class User {
  final String id, name, imageSrc, email;
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
  List<User> _users = [
    User(
      id: DateTime.now().toString(),
      name: 'John Doe',
      email: 'johndoe@domain.com',
      imageSrc: 'assets/images/customer_male.png',
      amount: 5000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Jane Doe',
      email: 'janedoe@domain.com',
      imageSrc: 'assets/images/customer_female.png',
      amount: 7000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'James Mary',
      email: 'jamesmary@domain.com',
      imageSrc: 'assets/images/customer_male.png',
      amount: 8000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Lisa Ann',
      email: 'lisaann@domain.com',
      imageSrc: 'assets/images/customer_female.png',
      amount: 8000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Andrew Jane',
      email: 'andrewjane@domain.com',
      imageSrc: 'assets/images/customer_male.png',
      amount: 11000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Sarah Thomas',
      email: 'sarahthomas@domain.com',
      imageSrc: 'assets/images/customer_female.png',
      amount: 13000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Mark Paul',
      email: 'markpaul@domain.com',
      imageSrc: 'assets/images/customer_male.png',
      amount: 12000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Lisa Daniel',
      email: 'lisadaniel@domain.com',
      imageSrc: 'assets/images/customer_female.png',
      amount: 14000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Jason Ryan',
      email: 'jasonryan@domain.com',
      imageSrc: 'assets/images/customer_male.png',
      amount: 11000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Anna Helen',
      email: 'annahelen@domain.com',
      imageSrc: 'assets/images/customer_male.png',
      amount: 13000.0,
    ),
  ];

  List<User> get users {
    return [..._users];
  }

  User findById(String id) {
    return _users.firstWhere((data) => data.id == id);
  }
}
