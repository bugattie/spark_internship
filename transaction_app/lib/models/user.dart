import 'package:flutter/foundation.dart';

class User {
  final String id, name, description, imageSrc;
  final double amount;

  User({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageSrc,
    @required this.amount,
  });
}

class UserData {
  List<User> _users = [
    User(
      id: DateTime.now().toString(),
      name: 'John Doe',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_male.png',
      amount: 5000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Jane Doe',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_female.png',
      amount: 7000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'James Mary',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_male.png',
      amount: 8000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Lisa Ann',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_female.png',
      amount: 8000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Andrew Jane',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_male.png',
      amount: 11000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Sarah Thomas',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_female.png',
      amount: 13000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Mark Paul',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_male.png',
      amount: 12000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Lisa Daniel',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_female.png',
      amount: 14000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Jason Ryan',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_male.png',
      amount: 11000.0,
    ),
    User(
      id: DateTime.now().toString(),
      name: 'Anna Helen',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      imageSrc: 'assets/images/customer_male.png',
      amount: 13000.0,
    ),
  ];

  List<User> get users {
    return [..._users];
  }
}
