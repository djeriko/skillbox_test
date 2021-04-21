import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/tabs/tabs_bloc.dart';
import 'package:skillbox_test/blocs/todos_bloc/todos_bloc.dart';
import 'package:skillbox_test/blocs/users/users_bloc.dart';
import 'package:skillbox_test/views/tabs/bottom_tabs.dart';
import 'package:skillbox_test/views/tabs/tabs.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TabsBloc>(context).add(AppStarted());
    BlocProvider.of<UsersBloc>(context).add(FetchUsers());
    BlocProvider.of<TodosBloc>(context).add(FetchTodos());
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline5: TextStyle(
            fontSize: 30,
            fontFamily: "Hind",
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Tabs(),
        bottomNavigationBar: BottomTabs(),
      ),
    );
  }
}
