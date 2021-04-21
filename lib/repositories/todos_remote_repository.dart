import 'dart:convert';

import 'package:skillbox_test/error/exceptions.dart';
import 'package:skillbox_test/models/todo.dart';
import 'package:http/http.dart' as http;

class TodosRemoteRepository {
  final http.Client client = http.Client();
  final String url = 'https://jsonplaceholder.typicode.com/todos/';

  Future<List<Todo>> getTodos() async {
    final response = await client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<Todo> result = parsed.map<Todo>((i) => Todo.fromJson(i)).toList();
      return result;
    } else {
      throw ServerExeption();
    }
  }
}
