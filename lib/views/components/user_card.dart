import 'package:flutter/material.dart';
import 'package:skillbox_test/helpers/extract_name_letters.dart';
import 'package:skillbox_test/models/users.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: user.isSelected ? theme.indicatorColor : theme.accentColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    overflow: TextOverflow.ellipsis,
                    style: user.isSelected
                        ? theme.textTheme.subtitle1
                        : theme.textTheme.headline1,
                  ),
                  Text(
                    user.email,
                    style: user.isSelected
                        ? theme.textTheme.subtitle2
                        : theme.textTheme.headline2,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: theme.disabledColor,
              radius: 35,
              child: Text(
                ExtractNameLetters(user.name).getInitials(),
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
