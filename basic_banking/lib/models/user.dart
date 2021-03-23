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
}

// User(
//   id: '1',
//   name: 'John Doe',
//   email: 'johndoe@service.com',
//   imageSrc: 'assets/images/customer_male.png',
//   amount: 5000.0,
// ),
// User(
//   id: '2',
//   name: 'Jane Doe',
//   email: 'janedoe@service.com',
//   imageSrc: 'assets/images/customer_female.png',
//   amount: 7000.0,
// ),
// User(
//   id: '3',
//   name: 'James Mary',
//   email: 'jamesmary@service.com',
//   imageSrc: 'assets/images/customer_male.png',
//   amount: 8000.0,
// ),
// User(
//   id: '4',
//   name: 'Lisa Ann',
//   email: 'lisaann@service.com',
//   imageSrc: 'assets/images/customer_female.png',
//   amount: 8000.0,
// ),
// User(
//   id: '5',
//   name: 'Andrew Jane',
//   email: 'andrewjane@service.com',
//   imageSrc: 'assets/images/customer_male.png',
//   amount: 11000.0,
// ),
// User(
//   id: '6',
//   name: 'Sarah Thomas',
//   email: 'sarahthomas@service.com',
//   imageSrc: 'assets/images/customer_female.png',
//   amount: 13000.0,
// ),
// User(
//   id: '7',
//   name: 'Mark Paul',
//   email: 'markpaul@service.com',
//   imageSrc: 'assets/images/customer_male.png',
//   amount: 12000.0,
// ),
// User(
//   id: '8',
//   name: 'Lisa Daniel',
//   email: 'lisadaniel@service.com',
//   imageSrc: 'assets/images/customer_female.png',
//   amount: 14000.0,
// ),
// User(
//   id: '9',
//   name: 'Jason Ryan',
//   email: 'jasonryan@service.com',
//   imageSrc: 'assets/images/customer_male.png',
//   amount: 11000.0,
// ),
// User(
//   id: '10',
//   name: 'Anna Helen',
//   email: 'annahelen@service.com',
//   imageSrc: 'assets/images/customer_male.png',
//   amount: 13000.0,
// ),
