import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  Todo({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'] ?? 0,
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      completed: json['completed'] ?? false,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  List<Object> get props => [
        userId,
        id,
        title,
        completed,
      ];
}
