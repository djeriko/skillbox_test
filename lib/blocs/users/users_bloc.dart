import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:skillbox_test/error/exceptions.dart';
import 'package:skillbox_test/models/users.dart';
import 'package:skillbox_test/repositories/users_remote_repository.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc({@required this.repository}) : super(UsersInitial());

  final UsersRemoteRepository repository;

  @override
  Stream<UsersState> mapEventToState(
    UsersEvent event,
  ) async* {
    if (event is FetchUsers) {
      yield UsersLoading();
      try {
        var users = await repository.getUsers();
        print(users);
        yield UsersLoaded(users: users);
      } on ServerExeption {
        yield UsersFailure();
      }
    }
  }
}
