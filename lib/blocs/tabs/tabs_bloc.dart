import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'tabs_event.dart';
part 'tabs_state.dart';

class TabsBloc extends Bloc<TabsEvent, TabsState> {
  TabsBloc() : super(PageLoading());
  int currentIndex = 0;

  @override
  Stream<TabsState> mapEventToState(
    TabsEvent event,
  ) async* {
    if (event is AppStarted){
      add(PageTapped(index: 0));
    }
    if (event is PageTapped) {
      print('Check');
      currentIndex = event.index;
      yield CurrentIndexChanged(currentIndex: currentIndex);
      yield PageLoading();

      if (currentIndex == 0) {
        yield UsersPageLoaded();
      } else {
        yield TodosPageLoaded();
      }
    }
  }
}
