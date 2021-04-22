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
        primaryColor: Color(0xff28abb9),
        accentColor: Color(0xffeaffd0),
        indicatorColor: Color(0xFF2d6187),
        disabledColor: Color(0xffa8dda8),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontSize: 25,
            fontFamily: "Hind",
            color: Colors.white,
          ),
          headline1: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25,
              fontFamily: "Hind",
              color: Colors.black87),
          subtitle2: TextStyle(
            fontSize: 18,
            fontFamily: "Hind",
            color: Colors.white,
          ),
          headline2: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              fontFamily: "Hind",
              color: Colors.black87),
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
