import 'package:flutter/material.dart';
import 'package:skillbox_test/models/models.dart';
import 'package:skillbox_test/views/components/components.dart';

class FriendsList extends StatelessWidget {
  final List<User> users;

  const FriendsList({Key key, this.users}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return UserCard(
          user: users[index],
        );
      },
    );
  }
}
