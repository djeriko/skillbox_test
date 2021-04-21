import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/views/widgets/friends_list.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          if (state is UsersLoaded) {
            return FriendsList(
              key: PageStorageKey('friends_page_key'),
              users: state.users.where((user) => user.isSelected).toList(),
            );
          } else if (state is UsersFailure) {
            return Center(
              child: Text('Failure'),
            );
          } else if (state is UsersLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text('Default'),
            );
          }
        },
      ),
    );
  }
}
