import 'package:equatable/equatable.dart';

class User extends Equatable {
  User({
    this.id,
    this.name,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
    );
  }

  final int id;
  final String name;
  final String email;

  @override
  List<Object> get props => [id, name, email];
}
