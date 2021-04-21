import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/views/widgets/users_list.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UsersBloc>(context).add(FetchUsers());
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        if (state is UsersLoaded) {
          return UsersList(
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
