import 'package:flutter/material.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/chat');
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}
