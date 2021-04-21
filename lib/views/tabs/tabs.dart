import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/tabs/tabs_bloc.dart';
import 'package:skillbox_test/views/pages/todos_page.dart';
import 'package:skillbox_test/views/pages/users_page.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TabsBloc>(context);

    return BlocBuilder<TabsBloc, TabsState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is PageLoading) {
          return const CircularProgressIndicator();
        } else if (state is UsersPageLoaded) {
          return UsersPage();
        } else if (state is TodosPageLoaded) {
          return TodosPage();
        }
        return const Center(
          child: Text('Empty'),
        );
      },
    );
  }
}
