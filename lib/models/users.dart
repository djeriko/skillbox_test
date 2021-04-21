import 'package:equatable/equatable.dart';

class User extends Equatable {
  User({
    this.id,
    this.name,
    this.email,
    this.isSelected,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      isSelected: false,
    );
  }

  User copyWith({int id, String name, String email, bool isSelected}) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  final int id;
  final String name;
  final String email;
  final bool isSelected;

  @override
  List<Object> get props => [id, name, email, isSelected];
}
