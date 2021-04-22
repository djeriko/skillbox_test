import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/models/models.dart';
import 'package:skillbox_test/views/widgets/widgets.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text("Chats"),
        ),
        body: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            if (state is UsersLoaded) {
              List<User> selectedUsers =
                  state.users.where((user) => user.isSelected).toList();

              if (selectedUsers.length == 0) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                          text: 'Please select users to chat with them 🦄',
                          style: Theme.of(context).textTheme.headline3),
                    ),
                  ),
                );
              }
              return FriendsList(
                key: PageStorageKey('friends_page_key'),
                users: selectedUsers,
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
      ),
    );
  }
}
