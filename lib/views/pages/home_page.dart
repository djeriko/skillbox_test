import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillbox_test/blocs/tabs/tabs_bloc.dart';
import 'package:skillbox_test/views/components/components.dart';
import 'package:skillbox_test/views/tabs/tabs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ChatButton(),
        ],
        title: BlocBuilder<TabsBloc, TabsState>(builder: (context, state) {
          if (state is UsersPageLoaded) {
            return Text('Users');
          } else {
            return Text('Todos');
          }
          
        }),
      ),
      body: TabChooser(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
