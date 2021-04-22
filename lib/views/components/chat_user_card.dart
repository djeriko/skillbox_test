import 'package:flutter/material.dart';
import 'package:skillbox_test/helpers/extract_name_letters.dart';
import 'package:skillbox_test/models/users.dart';

class ChatUserCard extends StatelessWidget {
  const ChatUserCard({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: theme.disabledColor,
              radius: 25,
              child: Text(
                ExtractNameLetters(user.name).getInitials(),
                style: theme.textTheme.subtitle1,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                user.name,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headline1,
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
