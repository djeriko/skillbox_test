part of 'users_bloc.dart';

abstract class UsersEvent extends Equatable {
  const UsersEvent();

  @override
  List<Object> get props => [];
}

class FetchUsers extends UsersEvent {}

class UpdateUsers extends UsersEvent {
  final List<User> currentUsers;
  final int userId;

  UpdateUsers({
    @required this.currentUsers,
    @required this.userId,
  });

  @override
  List<Object> get props => [currentUsers, userId];
}
