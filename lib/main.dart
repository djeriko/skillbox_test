import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/my_app.dart';
import 'package:skillbox_test/repositories/users_remote_repository.dart';

import 'blocs/tabs/tabs_bloc.dart';
import 'blocs/users/users_bloc.dart';

void main() {
  final UsersRemoteRepository usersRemoteRepository = UsersRemoteRepository();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => TabsBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => UsersBloc(repository: usersRemoteRepository),
        )
      ],
      child: MyApp(),
    ),
  );
}
