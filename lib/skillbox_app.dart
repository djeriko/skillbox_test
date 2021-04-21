import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/tabs/tabs_bloc.dart';
import 'package:skillbox_test/blocs/todos_bloc/todos_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/views/pages/pages.dart';

class SkillboxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TabsBloc>(context).add(AppStarted());
    BlocProvider.of<UsersBloc>(context).add(FetchUsers());
    BlocProvider.of<TodosBloc>(context).add(FetchTodos());

    return MaterialApp(
      title: 'Skillbox Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 30,
            fontFamily: "Hind",
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/chat': (BuildContext context) => ChatPage(),
      },
      initialRoute: '/',
    );
  }
}

