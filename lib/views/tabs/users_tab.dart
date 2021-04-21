import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/views/widgets/widgets.dart';

class UsersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        if (state is UsersLoaded) {
          return UsersList(
            key: PageStorageKey('users_page_key'),
            users: state.users,
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
    );
  }
}
