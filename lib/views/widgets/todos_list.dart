import 'package:flutter/material.dart';
import 'package:skillbox_test/models/todo.dart';
import 'package:skillbox_test/views/components/todo_card.dart';

class TodosList extends StatelessWidget {
  final List<Todo>? todos;

  const TodosList({Key? key, this.todos}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos!.length,
      itemBuilder: (BuildContext context, int index) {
        return TodoCard(todo: todos![index]);
      },
    );
  }
}
