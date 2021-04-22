part of 'tabs_bloc.dart';

abstract class TabsState extends Equatable {
  const TabsState();
  
  @override
  List<Object> get props => [];
}

class CurrentIndexChanged extends TabsState{
  CurrentIndexChanged({required this.currentIndex});

  final int currentIndex;

  @override
  List<Object> get props => [currentIndex];
}

class PageLoading extends TabsState {}

class UsersPageLoaded extends TabsState {}

class TodosPageLoaded extends TabsState {}
