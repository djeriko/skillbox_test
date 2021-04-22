import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/models/users.dart';
import 'package:skillbox_test/views/components/components.dart';

class UsersList extends StatelessWidget {
  final List<User>? users;

  const UsersList({Key? key, this.users}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void onTap(int? index) {
      print('tap $index');
      BlocProvider.of<UsersBloc>(context).add(
        UpdateUsers(
          userId: index,
          currentUsers: users,
        ),
      );
    }

    return ListView.builder(
      itemCount: users!.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => onTap(users![index].id),
          child: UserCard(
            user: users![index],
          ),
        );
      },
    );
  }
}
