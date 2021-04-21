import 'package:flutter/material.dart';
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
      ),
      body: TabChooser(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
