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
            fontFamily: "Roboto",
            color: Colors.white,
          ),
          headline1: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25,
              fontFamily: "Roboto",
              color: Colors.black87),
          subtitle2: TextStyle(
            fontSize: 18,
            fontFamily: "Roboto",
            color: Colors.white70,
          ),
          headline2: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              fontFamily: "Roboto",
              color: Colors.black45),
          headline3: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 30,
              fontFamily: "Roboto",
              color: Colors.black54),
          headline4: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 30,
              fontFamily: "Roboto",
              color: Colors.white),
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
