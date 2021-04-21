import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/tabs/tabs_bloc.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TabsBloc>(context);

    void onTapItem(int index) {
      bloc.add(PageTapped(index: index));
    }

    return BlocBuilder<TabsBloc, TabsState>(
      bloc: bloc,
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: onTapItem,
          currentIndex: bloc.currentIndex,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Users',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.segment),
              label: 'Todos',
            ),
          ],
        );
      },
    );
  }
}
