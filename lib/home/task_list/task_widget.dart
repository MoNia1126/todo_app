import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/my_theme.dart';

import '../../model/task.dart';

class TaskWidget extends StatelessWidget {
  Task task;

  TaskWidget({required this.task});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: 0.25,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            backgroundColor: MyTheme.redColor,
            foregroundColor: MyTheme.whiteColor,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyTheme.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: 80,
              width: 4,
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                    task.title ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: MyTheme.primaryLight),
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(task.description ?? '',
                      style: Theme.of(context).textTheme.titleSmall),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).primaryColor,
              ),
              child: Icon(
                Icons.check,
                size: 30,
                color: MyTheme.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
