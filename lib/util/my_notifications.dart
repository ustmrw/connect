import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyNotifications extends StatelessWidget {
  const MyNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '\nNOTIFICATIONS\n',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: Colors.blue,
                icon: Icons.archive,
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: Colors.red,
                icon: Icons.delete,
              ),
            ],
          ),
          child: Container(
            color: Colors.transparent,
            child: ListTile(
              title: Text('Test Notification'),
              subtitle: Text('Test'),
              leading: Icon(
                Icons.notifications,
                size: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
