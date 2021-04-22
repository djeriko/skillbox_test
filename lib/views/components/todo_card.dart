import 'package:flutter/material.dart';
import 'package:skillbox_test/models/todo.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key, this.todo}) : super(key: key);

  final Todo? todo;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: todo!.completed! ? theme.disabledColor : theme.accentColor,
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
                  RichText(
                    maxLines: 3,
                    text: TextSpan(
                      text: todo!.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
