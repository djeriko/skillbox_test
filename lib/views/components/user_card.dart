import 'package:flutter/material.dart';
import 'package:skillbox_test/models/users.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key key, this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
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
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    user.email,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 35,
              child: Text(
                'MG',
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
