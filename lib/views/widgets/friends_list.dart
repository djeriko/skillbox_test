import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/models/users.dart';
import 'package:skillbox_test/views/components/user_card.dart';

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
