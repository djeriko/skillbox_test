import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/tabs/tabs_bloc.dart';
import 'package:skillbox_test/views/tabs/tabs.dart';

class TabChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TabsBloc>(context);

    return BlocBuilder<TabsBloc, TabsState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is PageLoading) {
          return const CircularProgressIndicator();
        } else if (state is UsersPageLoaded) {
          return UsersTab();
        } else if (state is TodosPageLoaded) {
          return TodosTab();
        }
        return const Center(
          child: Text('Empty'),
        );
      },
    );
  }
}
