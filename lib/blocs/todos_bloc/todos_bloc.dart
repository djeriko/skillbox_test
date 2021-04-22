import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:skillbox_test/error/exceptions.dart';
import 'package:skillbox_test/models/models.dart';
import 'package:skillbox_test/repositories/todos_remote_repository.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc({required this.repository}) : super(TodosInitial());

  final TodosRemoteRepository repository;

  @override
  Stream<TodosState> mapEventToState(
    TodosEvent event,
  ) async* {
    yield TodosLoading();
    try {
      List<Todo>? todos = await repository.getTodos();
      yield TodosLoaded(todos: todos);
    } on ServerExeption {
      yield TodosError();
    }
  }
}
