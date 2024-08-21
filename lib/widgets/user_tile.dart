import 'package:flutter/material.dart';
import '../models/user.dart';
import '../screens/user_detail_screen.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile({required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetailScreen(user: user),
          ),
        );
      },
    );
  }
}
