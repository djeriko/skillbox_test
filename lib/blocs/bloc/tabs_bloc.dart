import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tabs_event.dart';
part 'tabs_state.dart';

class TabsBloc extends Bloc<TabsEvent, TabsState> {
  TabsBloc() : super(TabsInitial());

  @override
  Stream<TabsState> mapEventToState(
    TabsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
