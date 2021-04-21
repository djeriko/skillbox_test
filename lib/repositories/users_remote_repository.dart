import 'dart:convert';

import 'package:skillbox_test/error/exceptions.dart';
import 'package:skillbox_test/models/users.dart';
import 'package:http/http.dart' as http;

class UsersRemoteRepository {
  final http.Client client = http.Client();
  final String url = 'https://jsonplaceholder.typicode.com/users/';

  Future<List<User>> getUsers() async {
    final response = await client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      List<User> result = parsed.map<User>((i) => User.fromJson(i)).toList();
      return result;
    } else {
      throw ServerExeption();
    }
  }
}
