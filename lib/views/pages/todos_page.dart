import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/todos_bloc/todos_bloc.dart';
import 'package:skillbox_test/views/widgets/todos_list.dart';

class TodosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TodosBloc>(context).add(FetchTodos());
    return BlocBuilder<TodosBloc, TodosState>(
      builder: (context, state) {
        if (state is TodosLoaded) {
          return TodosList(
            todos: state.todos,
          );
        } else if (state is TodosError) {
          return Center(
            child: Text('Failure'),
          );
        } else if (state is TodosLoading) {
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
