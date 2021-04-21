part of 'tabs_bloc.dart';

abstract class TabsEvent extends Equatable {
  const TabsEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends TabsEvent {}

class PageTapped extends TabsEvent {
  PageTapped({@required this.index});

  final int index;

  @override
  List<Object> get props => [index];
}
